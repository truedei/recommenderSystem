create table product_table
(
    productID    int auto_increment comment '商品ID'
        primary key,
    product_name varchar(200) charset utf8 null comment '商品名字',
    price        double                    null comment '商品金额',
    volume       int                       null comment '成交数量',
    shopp_name   varchar(100) charset utf8 null comment '商店名称',
    location     varchar(100) charset utf8 null comment '生产地',
    evaluate     int                       null comment '好评数量',
    collect      int default 0             null comment '收藏数量'
)
    engine = MyISAM
    collate = utf8_unicode_ci;

INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (1, '杨梅新鲜现摘现发正宗仙居东魁大杨梅孕妇农家时令水果6斤装包邮', 198, 1328, '浙仙旗舰店', '浙江 台州', 240, 1397);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (2, '正宗仙居东魁杨梅新鲜现摘特级大东魁现摘现发农家时令水5斤精选', 268, 497, '浙仙旗舰店', '浙江 台州', 159, 619);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (3, '新鲜洋葱10斤紫皮红皮农家2020年葱头应季蔬菜圆头整箱批发包邮', 18.8, 64, '悠鲜源旗舰店', '云南 昆明', 7, 51);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (4, '轩农谷仙居东魁杨梅新鲜水果浙江现摘现发大杨梅礼盒预定7A6斤', 358, 222, '轩农谷旗舰店', '浙江 台州', 553, 1163);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (5, '轩农谷正宗仙居杨梅新鲜当季水果特级东魁大杨梅5A级6斤高山现摘', 258, 2939, '轩农谷旗舰店', '浙江 台州', 4270, 8737);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (6, '水果小黄瓜新鲜6斤当季山东小青瓜生吃农家蔬菜助白玉女瓜10批发5', 23.8, 4, '喜人喜食品旗舰店', '山东 潍坊', 21685, 10511);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (7, '王小二 新鲜马蹄荸荠地梨孛荠当季马蹄莲5斤饽荠农家自种蔬菜包邮', 19.9, 1780, '王小二旗舰店', '湖北 宜昌', 1428, 858);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (8, '王小二 云南新鲜蚕豆农家罗汉豆带壳生兰花豆胡豆豌豆蔬菜包邮5斤', 29.9, 54, '王小二旗舰店', '云南 昆明', 72, 68);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (9, '王小二 小米椒新鲜红辣椒蔬菜包邮红尖椒灯笼椒朝天包邮农家5斤', 29.9, 601, '王小二旗舰店', '山东 潍坊', 435, 686);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (10, '王小二 湖北土辣椒新鲜青椒农家长辣椒蔬菜包邮尖椒批发特产5斤', 29.9, 86, '王小二旗舰店', '湖北 襄阳', 33, 25);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (11, '小黄瓜水果黄瓜新鲜5斤小青瓜东北旱海阳白玉生吃10山东农家蔬菜', 13.8, 7500, '田园茂旗舰店', '山东 烟台', 80081, 79562);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (12, '圣女果千禧小番茄新鲜西红柿千禧长果5斤农家时令蔬菜包邮水果', 18.8, 10000, '时卉源旗舰店', '河南 郑州', 3014, 2682);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (13, '高端货!新疆沙瓤西红柿新鲜自然熟番茄水果普罗旺斯农家顺丰包邮', 58.8, 232, '奇迹汇食品旗舰店', '新疆 吐鲁番', 91, 63);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (14, '绿宝石甜瓜小香瓜新鲜水果应季10东北瓜果包邮5斤助农当季整箱', 24.8, 15000, '梦强旗舰店', '山东 临沂', 34173, 37618);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (15, '5斤新西兰贝贝南瓜板栗小南瓜板栗味老瓜栗子板粟10农家新鲜带箱', 14.8, 10000, '刘小牛旗舰店', '山东 日照', 18590, 6991);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (16, '【5A特大】仙居杨梅新鲜孕妇水果现摘现发正宗农家东魁杨梅6斤装', 238, 260, '巨浪食品专营店', '浙江 台州', 3775, 8498);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (17, '宜兴新鲜百合2500g包邮宜兴特产百合纯农家食用大白合5斤30个左右', 52, 975, '镓荣旗舰店', '江苏 无锡', 2767, 2348);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (18, '杨梅新鲜正宗仙居东魁孕妇现摘现发农家时令水果6斤装东魁杨梅', 95, 5000, '集果邦旗舰店', '浙江 台州', 385, 10413);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (19, '新鲜自然熟黄金籽西红柿农家水果老品种5斤非铁皮博士番茄沙瓤', 49, 2164, '黄金籽旗舰店', '山东 潍坊', 4250, 13763);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (20, '云南小土豆新鲜10斤马铃薯农产品蔬菜红皮洋芋批发迷你小黄心土豆', 19.8, 10000, '红高粱食品旗舰店', '云南 昆明', 51861, 40936);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (21, '现挖云南紫皮洋葱5斤新鲜红皮大圆葱洋葱头农家自种特产蔬菜包邮', 9.9, 249, '红高粱食品旗舰店', '云南 红河', 268, 212);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (22, '新鲜芋头10斤芋艿小芋头香芋免邮包邮农家粉糯荔浦毛芋头整箱紫', 29.8, 7500, '红高粱食品旗舰店', '山东 潍坊', 49152, 45661);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (23, '云南紫皮洋葱新鲜10斤包邮洋葱头农家自种当季蔬菜红皮大圆葱整箱', 19.8, 8500, '红高粱食品旗舰店', '云南 红河', 5733, 2604);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (24, '盒马河南焦作铁棍山药净重5斤当季农家蔬菜温县新鲜山药包邮', 39.9, 1645, '盒马鲜生旗舰店', '河南 焦作', 1185, 1476);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (25, '盒马山东大葱净重5斤新鲜长葱当季时令蔬菜去叶白香葱产地农产品', 24.9, 49, '盒马鲜生旗舰店', '上海', 36, 47);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (26, '盒马山东玉菇甜瓜2粒装单粒1kg起当季时令水果新鲜甜瓜蜜瓜', 24.9, 566, '盒马鲜生旗舰店', '山东 潍坊', 97, 69);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (27, '【芭芭农场】新疆普罗旺斯西红柿净重5斤当季番茄自然熟水果蔬菜', 39.9, 7500, '盒马鲜生旗舰店', '陕西 西安', 2262, 1697);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (28, '芋头新鲜蔬菜小芋头毛芋头香芋农家自种芋头芋艿非荔浦芋头5斤10', 18.5, 4888, '果鲜萌旗舰店', '山东 潍坊', 14571, 13733);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (29, '农家自种新鲜小米辣椒5斤红辣椒朝天椒蔬菜泡椒特辣小米椒鲜辣椒', 28.8, 4867, '果品康旗舰店', '海南 海口', 9453, 9562);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (30, '2020年新鲜现挖小洋葱带箱10斤 红皮紫皮洋葱头圆葱农家自种蔬菜', 10.8, 15000, '果恋韵旗舰店', '云南 红河', 23575, 15821);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (31, '海南新鲜辣椒小米椒5斤朝天小米辣红辣椒农家土蔬菜可剁泡椒包邮', 29.9, 1936, '果绰旗舰店', '海南 海口', 2413, 2962);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (32, '甘福园 现挖新鲜甜菜根11斤紫甜菜红菜头大萝卜农家蔬菜5整箱包邮', 29.9, 1195, '甘福园旗舰店', '江苏 徐州', 4815, 6574);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (33, '山东新鲜小米椒5斤红辣椒朝天椒指天七星椒尖椒泡椒农家蔬菜包邮', 29.8, 1789, '甘福园旗舰店', '山东 潍坊', 338, 443);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (34, '山东章丘大葱5斤 新鲜铁杆长葱农家香葱去叶葱白甜葱特产蔬菜包邮', 12.9, 2032, '甘福园旗舰店', '山东 济南', 1411, 695);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (35, '现挖新鲜芦笋3斤当季农家蔬菜福建特产绿芦笋青笋春笋龙须菜包邮', 29.9, 637, '甘福园旗舰店', '福建 漳州', 1225, 907);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (36, '丰县紫皮洋葱10斤新鲜洋葱应季农家自种蔬菜圆红皮洋葱头整箱包邮', 19.8, 10000, '福瑞达旗舰店', '江苏 徐州', 4296, 2422);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (37, '云南小土豆新鲜10斤马铃薯农产品蔬菜洋芋批发迷你小黄心红皮土豆', 19.8, 10000, '福瑞达旗舰店', '云南 昆明', 4412, 3528);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (38, '云南黄皮洋葱10斤新鲜蔬菜 当季农家自种圆葱头整箱批发包邮5', 9.9, 1042, '福瑞达旗舰店', '云南 昆明', 225, 230);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (39, '特辣小米辣椒新鲜5斤 朝天椒应季农家蔬菜指天椒泡尖椒红辣椒包邮', 29.9, 122, '福瑞达旗舰店', '贵州 贵阳', 447, 449);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (40, '云南小土豆新鲜10斤马铃薯农产品蔬菜洋芋批发迷你小黄心红皮土豆', 19.8, 1830, '福瑞达旗舰店', '云南 昆明', 448, 323);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (41, '新鲜小米辣椒朝天椒特辣小米椒土红辣椒5农家蔬菜鲜尖椒4斤菜椒10', 19.9, 10000, '芳泰食品旗舰店', '广东 茂名', 35707, 49750);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (42, '水果黄瓜新鲜5斤生吃脆嫩旱黄瓜山东农家蔬菜凉拌小青瓜当季包邮', 13.9, 176, '馋尚皇旗舰店', '山东 潍坊', 16, 73);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (43, '西红柿陕西农家生吃新鲜沙瓤自然熟蔬菜水果番茄5/10斤带箱包邮', 24.9, 947, '璨掌柜旗舰店', '陕西 咸阳', 364, 223);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (44, '正宗广西荔浦芋头新鲜香芋10斤整箱农家当季槟榔芋大芋艿毛芋免邮', 35.9, 2774, '百泰源旗舰店', '广西 桂林', 682, 1015);
INSERT INTO testdb.product_table (productID, product_name, price, volume, shopp_name, location, evaluate, collect) VALUES (45, '云南土豆新鲜10斤大号红皮黄心农家自种小蔬菜产品包邮马铃薯洋芋', 19.8, 3597, '阿朴食品旗舰店', '云南 曲靖', 772, 805);