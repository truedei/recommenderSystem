package com.db;

import com.entity.MemberUser;
import com.entity.ProductOrder;
import com.entity.ProductTable;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DBHelp {



	static String url = "jdbc:mysql://127.0.0.1:3306/testdb";
	static String user= "root";
	static String password= "123456";



	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public static Connection getConnection() {
		try {
			return DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}


	static Connection conn = DBHelp.getConnection();
	static Statement st = null;
	static ResultSet rs = null;


	/**
	 * 获取所有的商品信息
	 * @return
	 * @param sqlId
	 */
	public static List<ProductTable> getProductList(String sqlId){

		List<ProductTable> productTables = new ArrayList<>();

		try {
			st = conn.createStatement();
			rs = st.executeQuery("select * from product_table where productID in ("+sqlId+")");

			while (rs.next()){
				productTables.add(new ProductTable(
						rs.getInt("productID"),
						rs.getString("product_name"),
						rs.getDouble("price"),
						rs.getInt("volume"),
						rs.getString("shopp_name"),
						rs.getString("location"),
						rs.getInt("evaluate"),
						rs.getInt("collect")));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return productTables;
	}

	//获取用户订单信息
	public static List<ProductOrder> getProductOrderList(Integer userId){
		List<ProductOrder> productTables = new ArrayList<>();

//		String sql = "select * from product_order where USER_ID=(select USER_ID from member_user where USER_NAME=\""+name+"\")";

		String sql = "select * from product_order "+(userId==null?"":"where USER_ID="+userId);
//		System.out.println("执行的 sql: "+sql);
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);

			while (rs.next()){
				productTables.add(new ProductOrder(
						rs.getInt("order_id"),
						rs.getInt("user_id"),
						rs.getInt("product_id"),
						rs.getInt("gwcount")));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return productTables;
	}

	//获取用户信息
	public static List<MemberUser> getMemberUserList(){
		List<MemberUser> productTables = new ArrayList<>();

		try {
			st = conn.createStatement();
			rs = st.executeQuery("select * from member_user");

			while (rs.next()){
				productTables.add(new MemberUser(
						rs.getInt("user_id"),
						rs.getString("user_name")));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return productTables;
	}
	
	
}
