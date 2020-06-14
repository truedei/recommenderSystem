package com.recommender;

import com.db.DBHelp;
import com.entity.MemberUser;
import com.entity.ProductOrder;
import com.entity.ProductTable;
import com.entity.UserR;
import com.util.MapSortUtil;
import com.util.QJ;

import java.util.*;

/**
 * @Auther: truedei
 * @Date: 2020 /20-6-13 20:19
 * @Description: 推荐系统
 */
public class RecommenderS {


    RecommenderS(){
        login(2);
    }


    //推荐算法开始

    /**
     * 登录后推荐接口
     * @param userId 模拟登录的用户Id
     */
    public void login(Integer userId){

        //1，使用该用户的名字获取订单信息
        System.out.println("----------------");
        //查询登录用户的订单信息
        List<ProductOrder> productOrderList = DBHelp.getProductOrderList(userId);

        //存储个人 购买的所有的商品id
        Integer[] ints = new Integer[productOrderList.size()];

        //存储个人信息，封装成对象，方便计算
        UserR userR = new UserR();

        //筛选出来个人订单中的商品的id
        for (int i = 0; i < productOrderList.size(); i++) {
            ints[i] = productOrderList.get(i).getProduct_id();
        }
        userR.setUserId(productOrderList.get(0).getUser_id());
        userR.setProductIds(ints);


        //2,拿到所有用户的订单信息
        List<ProductOrder> productOrderLists = DBHelp.getProductOrderList(null);

        //存储所有人的订单信息
        List<UserR> userRS = new ArrayList<>();

        //利用map的机制，计算出来其余用户的所有的购买商品的id  Map<用户id，商品ID拼接的字符串(1,2,3,4)>
        Map<Integer,String> map = new HashMap<>();


        //筛选出来订单中的商品的id
        for (int i = 0; i < productOrderLists.size(); i++) {
            map.put(productOrderLists.get(i).getUser_id(),
                    map.containsKey(productOrderLists.get(i).getUser_id())?
                            map.get(productOrderLists.get(i).getUser_id())+","+productOrderLists.get(i).getProduct_id():
                            productOrderLists.get(i).getProduct_id()+"");
        }

        //开始封装每个人的数据
        for (Integer key:map.keySet() ) {

            //new出来一个新的个人的对象，后面要塞到list中
            UserR userR2 = new UserR();

            //把其他每个人购买的商品的id 分割成数组
            String[] split = map.get(key).split(",");

            //转换成int数组 进行存储，方便后期计算
            Integer[] ints1 = new Integer[split.length];
            for (int i = 0; i < split.length; i++) {
                ints1[i] = Integer.valueOf(split[i]);
            }

            //用户id 就是key
            userR2.setUserId(key);
            //用户购买的商品id的数组
            userR2.setProductIds(ints1);

            //塞到list中
            userRS.add(userR2);
        }

        //二值化 处理数据
        List<UserR> userRList = jisuan(userR, userRS);

        //过滤处理
        String sqlId = chuli(userRList, userR);

        System.out.println("推荐的商品：");
        //通过拿到的拼接的被推荐商品的id，去查数据库
        List<ProductTable> productList = DBHelp.getProductList(sqlId);
        //最终拿到被推荐商品的信息
        for (int i = 0; i < productList.size(); i++) {
            System.out.println(productList.get(i).toString());
        }

    }



    /**
     * 过滤处理
     * @param userRList 所有用户的订单数据
     * @param userR 当前登录用户的订单数据
     * @return
     */
    private String chuli(List<UserR> userRList,UserR userR) {

        //为了方便下面过滤数据，预先把登录用户的订单购物的商品的id做一个map，在过滤的时候，只需要查一下map中是否存在key就ok
        Map<Integer,Integer> map1 = new HashMap<>();
        for (int i = 0; i < userR.getProductIds().length; i++) {
            map1.put(userR.getProductIds()[i],userR.getProductIds()[i]);
        }


        //盛放最终过滤出来的数据 Map<商品id,出现的次数>
        Map<Integer,Integer> map = new HashMap<>();

        for (int i = 0; i < userRList.size(); i++) {
            //userRList.get(i).getCos_th()>0：过滤掉相似度等于0，也就是完全不匹配的
            //userRList.get(i).getUserId()!=userR.getUserId()：过滤掉当前用户的订单信息
            if(userRList.get(i).getCos_th()>0 && userRList.get(i).getUserId()!=userR.getUserId()){
                //求当前登录用户的购买商品的id和其他用户的所购买商品的差集，例如：A=[1, 2],B=[1, 2, 3]  那么这个3就是最终想要的结果
                Integer[] j = QJ.getC(userRList.get(i).getProductIds(), userR.getProductIds());

                //遍历求差集之后的结果
                for (int i1 = 0; i1 < j.length; i1++) {
                    //如果其余的用户所购买撒谎那个品的id不在当前用的所购买商品的id，那么就存起来
                    if(!map1.containsKey(j[i1])){
                        //存储时，数量每次都+1，方便后面排序，出现的次数多，说明被推荐的机会越高
                        map.put(j[i1],map.containsKey(j[i1])?(map.get(j[i1])+1):1);
                    }
                }
            }
        }
        //把map进行降序排序
        Map<Integer, Integer> map2 = MapSortUtil.sortByKeyDesc(map);

        //拼接成一个sql，方便去查数据库
        String sqlId = "";
        for (Integer key:map2.keySet()) {
            sqlId = sqlId+key +",";
        }

        sqlId = sqlId.substring(0,sqlId.length()-1);

        return sqlId;
    }

    /**
     * 二值化 处理数据
     * @param userR 当前登录用户的订单信息
     * @param userRS 其他用户的订单信息
     * @return 二值化处理之后的结果
     */
    private List<UserR> jisuan(UserR userR, List<UserR> userRS) {

        //对个人做二值化处理，为了好计算 [0,0,0,0,0,1,1,0,1]这种
        //个人的
        int userErzhihua[] = new int[10];
        for (int i = 0; i < userR.getProductIds().length; i++) {
            userErzhihua[userR.getProductIds()[i]]=1;
        }


        //库里所有人的
        int erzhihua[] = new int[10];
        //对其他人，做二值化处理，为了好计算 [0,0,0,0,0,1,1,0,1]这种
        for (int i = 0; i < userRS.size(); i++) {
            UserR product = userRS.get(i);
            for (int j = 0; j < product.getProductIds().length; j++) {
                erzhihua[product.getProductIds()[j]]=1;
            }
            //计算当前登录用户与其余每个人的余弦值 cos_th
            Double compare = compare( erzhihua,userErzhihua);
            product.setCos_th(compare);

            //把计算好的值，重新塞到原来的位置，替换到旧的数据
            userRS.set(i,product);

            //防止数组中的值重复，起到清空的作用
            erzhihua = new int[10];
        }

        return userRS;

    }

    /**
     * 代码核心内容
     * @param o1 当前登录用户的
     * @param o2 其他用户的 n1 n2 n3 n4 n....
     * @return
     */
    private static Double compare(int[] o1, int[] o2) {
        //分子求和
        Double fenzi = 0.0 ;

        for (int i = 0; i < o1.length; i++) {
            fenzi += o1[i]*o2[i];
        }
        //分母第一部分
        Double fenmu1 = 0.0;
        for (int i = 0; i < o1.length; i++) {
            fenmu1 += o1[i] * o1[i];
        }
        fenmu1 = Math.sqrt(fenmu1);
        //分母第二部分
        Double fenmu2 = 0.0;
        for (int i = 0; i < o2.length; i++) {
            fenmu2 += o2[i] * o2[i];
        }
        fenmu2 = Math.sqrt(fenmu2);
        return fenzi / (fenmu1 * fenmu2);
    }





    public static void main(String[] args) {
        new RecommenderS();
    }




}
