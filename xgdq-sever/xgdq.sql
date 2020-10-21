SET NAMES UTF8;
DROP DATABASE IF EXISTS xgdq;
CREATE DATABASE xgdq CHARSET=UTF8;
USE xgdq;


-- 轮播图
CREATE TABLE carousel(
    id INT PRIMARY KEY AUTO_INCREMENT,
    src VARCHAR(128)
);
INSERT INTO carousel VALUES
(NULL,"https://www.xgdq.com/public/images/b6/b1/8d/c044aeee4d726f6af8d8cbbf513c9b5b9dd9ceb6.jpg?1596161112#w"),
(NULL,"https://www.xgdq.com/public/images/97/2f/34/849318f576b1a0e8cdb9387753a077f99d04cedb.jpg?1596108542#w");


-- 首页热卖1-1
CREATE TABLE indexhot_more1(
    id INT PRIMARY KEY AUTO_INCREMENT,
    family_id int(11) default NULL,
    title1 VARCHAR(32),
    title2 VARCHAR(32),
    lunbo1 VARCHAR(128),
    lunbo2 VARCHAR(128),
    lunbo3 VARCHAR(128),
    title3 VARCHAR(32),
    title4 VARCHAR(32),
    title5 VARCHAR(32),
    price1 DECIMAL(6,2),
    src1 VARCHAR(128),
    title6 VARCHAR(32),
    title7 VARCHAR(32),
    price2 DECIMAL(6,2),
    src2 VARCHAR(128),
    title8 VARCHAR(32),
    title9 VARCHAR(32),
    price3 DECIMAL(6,2)
);
INSERT INTO indexhot_more1 VALUES
(NULL,"1","推杆热卖","STICK VACUUMS","https://www.xgdq.com/public/images/03/a5/31/c4845e720c2e2f3567495c69de61c2bdae10a668.png?1589120869#w","https://www.xgdq.com/public/images/b1/61/b5/a5479bebe6869410f34cdad4c80988e3e9343b70.png?1589120847#w","https://www.xgdq.com/public/images/f7/e2/0e/4bd5b6b0ebab0e5092ef774994a551716480cdbf.png?1589120886#w","爆款","2020小狗最强动力T12 Plus","170AW强劲吸力 智能人机交互","2999","https://www.xgdq.com/public/images/34/e2/49/c220848081124f75d2d93bb5556f3aa74bbd56e8.png?1589120947#w","新品手持推杆吸尘器T11 Cyclone","强劲吸力,5款刷头,适用多种除尘环境","1699","https://www.xgdq.com/public/images/f6/f6/23/3e4810739f0768d9efde58b9f31a9ebc9b459083.png?1589121062#w","热销爆款T10 Cyclone","直线风轨设计 超凡吸力","1399");
-- 首页热卖1-2
CREATE TABLE indexhot_more2(
    id INT PRIMARY KEY AUTO_INCREMENT,
    family_id int(11) default NULL,
    title1 VARCHAR(32),
    title2 VARCHAR(32),
    lunbo1 VARCHAR(128),
    lunbo2 VARCHAR(128),
    lunbo3 VARCHAR(128),
    title3 VARCHAR(32),
    title4 VARCHAR(32),
    title5 VARCHAR(32),
    price1 DECIMAL(6,2),
    src1 VARCHAR(128),
    title6 VARCHAR(32),
    title7 VARCHAR(32),
    price2 DECIMAL(6,2),
    src2 VARCHAR(128),
    title8 VARCHAR(32),
    title9 VARCHAR(32),
    price3 DECIMAL(6,2)
);
INSERT INTO indexhot_more2 VALUES
(NULL,"4","扫地机热卖","SWEEPING ROBOT","https://www.xgdq.com/public/images/e0/f8/52/8f90b77163b5d7348f0238f14c9531520df4e8a5.png?1589121225#w","https://www.xgdq.com/public/images/5f/98/a0/733621d8ec9b7ff2b4c4a55c031c8e87320ea3be.png?1589121244#w","https://www.xgdq.com/public/images/a5/3e/91/68cc284ea6175eb26d15fd7826688374c8940ad9.png?1589121260#w","爆款","新款智能扫地机R60 pro","LDS激光导航+视觉巡航 超大吸力","3790","https://www.xgdq.com/public/images/b8/f0/72/e0dedb62e051ebbea6428717b31b7e14d60d0ec1.jpg?1566915678#h","新一代扫地机 R55 Cyclone","精确智扫 智能除尘","2399","https://www.xgdq.com/public/images/01/1b/7d/78a56399a5d0d5ca74301acd4658cf02684222a3.png?1589121388#w","智能扫地机R35 Cyclone","6.1cm超薄机身 吸拖一体","1499");


-- 首页热卖2-1
CREATE TABLE indexhot_solo1(
    id INT PRIMARY KEY AUTO_INCREMENT,
    family_id int(11) default NULL,
    title1 VARCHAR(32),
    title2 VARCHAR(32),
    src VARCHAR(128),
    title3 VARCHAR(32),
    title4 VARCHAR(32),
    title5 VARCHAR(32),
    price DECIMAL(6,2)
);
INSERT INTO indexhot_solo1 VALUES
(NULL,"2","除螨仪热卖","Dust Mite Controller","https://www.xgdq.com/public/images/3d/89/35/c42d6302379d5566734db22018bdf60fd531135a.jpg?1590660376#w","爆款","新品无线除螨仪D-620 Air","7500PA大吸力，30分钟长效续航","899");
-- 首页热卖2-2
CREATE TABLE indexhot_solo2(
    id INT PRIMARY KEY AUTO_INCREMENT,
    family_id int(11) default NULL,
    title1 VARCHAR(32),
    title2 VARCHAR(32),
    src VARCHAR(128),
    title3 VARCHAR(32),
    title4 VARCHAR(32),
    title5 VARCHAR(32),
    price DECIMAL(6,2)
);
INSERT INTO indexhot_solo2 VALUES
(NULL,"0","随手吸热卖","HAND VACUUM CLEANER","https://www.xgdq.com/public/images/97/51/ac/0bc8f672a6fc42049c9ae5e8612b2fbf9d9d27ff.jpg?1590660789#w","爆款","小狗无线随手吸A10 Mate","【新品上市】随吸随拿，无线设计，小巧轻便，超强吸力！","699");


-- 首页配件热卖
CREATE TABLE indexhot_peijian(
    id INT PRIMARY KEY AUTO_INCREMENT,
    family_id int(11) default NULL,
    src VARCHAR(128),
    title VARCHAR(32),
    price DECIMAL(6,2)
);
INSERT INTO indexhot_peijian VALUES
(NULL,"6","https://www.xgdq.com/public/images/28/0d/03/e4742e4f22c7c6eb4f46c309596f24ab384f7b73.jpg?1566917058#h","电动除螨 T10 pro","130"),
(NULL,"6","https://www.xgdq.com/public/images/5f/cc/93/bd9baffdd796e6ba8094aa9a8040e61534d5e95d.jpg?1566912072#h","电源适配器 D-531","65"),
(NULL,"6","https://www.xgdq.com/public/images/26/8d/30/700a99425c82c79921d2dde8d838374b79b5b894.jpg?1566912192#h","电动地刷 D-531","260"),
(NULL,"6","https://www.xgdq.com/public/images/69/18/4a/94ab52e46ce3c4507b93b8e44403b0abd9cece40.jpg?1566912242#h","通用UV灯管","29");

-- 注册
CREATE TABLE reg(
    id INT PRIMARY KEY AUTO_INCREMENT,
    phone VARCHAR(16),
    upwd   VARCHAR(32)
);

-- 分类数据
CREATE TABLE classifydetails_a(
    id INT PRIMARY KEY AUTO_INCREMENT,
    family_id int(11) default NULL,
    src VARCHAR(128),
    title VARCHAR(32),
    price DECIMAL(8,2)
);
INSERT INTO classifydetails_a VALUES
(NULL,"0","https://www.xgdq.com/public/images/64/59/4f/74561459edf404300e99d08444c5b0bf6e4717c7.jpg?1582873122#h","小狗无线车载吸尘器A10 Mix","499.00"),
(NULL,"0","https://www.xgdq.com/public/images/d1/ca/fa/7328375bbd1869e01ffcb09f055cfcea01618340.jpg?1582878891#h","小狗无线车载吸尘器A10 Turbo","499.00"),
(NULL,"0","https://www.xgdq.com/public/images/e3/32/6c/7909999b74717533e75412905f86de3df4aeca38.jpg?1582872294#h","小狗无线手持吸尘器A10 Earl","699.00"),
(NULL,"0","https://www.xgdq.com/public/images/5f/52/fa/9e6af094068afe599c29cc67d0fe4f8534de3ec2.jpg?1571140864#h","小狗无线桌面吸尘器A10 Mate","699.00"),
(NULL,"0","https://www.xgdq.com/public/images/1c/75/ed/ed87769fe5ecd8727b907fca4d229dce254403de.jpg?1571140375#h","小狗无线桌面吸尘器A10 Pro","499.00"),
(NULL,"0","https://www.xgdq.com/public/images/3d/b2/0c/5983bd2ef6069bb55807c08e3d2bdd949d7d4f04.jpg?1573038715#h","小狗无线桌面吸尘器A10 Cyclone","499.00");

CREATE TABLE classifydetails_b(
    id INT PRIMARY KEY AUTO_INCREMENT,
    family_id int(11) default NULL,
    src VARCHAR(128),
    title VARCHAR(32),
    price DECIMAL(8,2)
);
INSERT INTO classifydetails_b VALUES
(NULL,"1","https://www.xgdq.com/public/images/bc/4f/76/44cf43f96426a28d209496810c604aa9808131a2.jpg?1586827334#h","小狗无线手持吸尘器T12 Duke","2999.00"),
(NULL,"1","https://www.xgdq.com/public/images/74/41/d2/d69c674393e5b8155727199a43d3ac7f251bffdc.jpg?1585876631#h","小狗无线手持吸尘器T12 Plus","2999.00"),
(NULL,"1","https://www.xgdq.com/public/images/e1/c5/4f/48fd0398b9c7b2d024f4f2531119223fe5225d33.jpg?1588038358#h","小狗手持推杆吸尘器T12 Storm","2999.00"),
(NULL,"1","https://www.xgdq.com/public/images/fd/c7/a3/2f9ee131128ff9542008adf7c4431b5c981f4711.jpg?1585046129#h","小狗无线手持吸尘器T11 Cyclone","1699.00"),
(NULL,"1","https://www.xgdq.com/public/images/00/23/a4/d5e9c706696e04c1687e2ce7ede7b62808bcfcbf.jpg?1587972435#h","小狗无线手持吸尘器T11 Pro","1699.00"),
(NULL,"1","https://www.xgdq.com/public/images/da/fe/03/c42c316f47452739f5c78b3faa5d49a6d1b545b1.jpg?1573725921#h","小狗扫拖一体吸尘器T10 Plushy","2199.00"),
(NULL,"1","https://www.xgdq.com/public/images/ae/a9/a2/c0dcfc35027528cae88bd4292037f21832281f4c.jpg?1577844308#h","小狗推杆吸尘器T10 VIP","1599.00"),
(NULL,"1","https://www.xgdq.com/public/images/22/8d/c4/d64093d555e29fbde6f19d6bda3c71432ba3b62f.jpg?1542276931#h","小狗推杆吸尘器T10 Pro","1399.00"),
(NULL,"1","https://www.xgdq.com/public/images/8f/dc/fb/8b5ac4f5877e4cfefb79417c01960a48aceaaa87.jpg?1542277258#h","小狗推杆吸尘器T10 Plus","2299.00"),
(NULL,"1","https://www.xgdq.com/public/images/3a/6e/3a/32dc79e675d7826ddc9ade469b3081b322f59cba.jpg?1557826594#h","小狗推杆吸尘器T10 Young","1199.00");

CREATE TABLE classifydetails_c(
    id INT PRIMARY KEY AUTO_INCREMENT,
    family_id int(11) default NULL,
    src VARCHAR(128),
    title VARCHAR(32),
    price DECIMAL(8,2)
);
INSERT INTO classifydetails_c VALUES
(NULL,"2","https://www.xgdq.com/public/images/23/14/96/0f40506256f77a4e97c497e473d897050007d598.jpg?1599121928#h","小狗无线除螨吸尘器T11 Mattress","999.00"),
(NULL,"2","https://www.xgdq.com/public/images/3e/f5/46/a63e422bf5efd098d3dcf552eb3851deddf1d762.jpg?1537522054#h","小狗无线除螨仪D-620 Air","899.00"),
(NULL,"2","https://www.xgdq.com/public/images/54/7c/e7/15ec7d7a9f3b4b673949c962375a0e8e553cf0d0.jpg?1544151154#h","小狗无线除螨仪X8 Mattress","899.00"),
(NULL,"2","https://www.xgdq.com/public/images/50/1c/f0/4040d78af24db78ca82593c4e5283a647f88986e.jpg?1524045027#h","小狗无线除螨仪D-610","999.00"),
(NULL,"2","https://www.xgdq.com/public/images/37/4b/0b/b78f2bcb40168ee19e9788b5694aa4c1b35aebe8.jpg?1562577708#h","小狗无线除螨仪D-650","1599.00"),
(NULL,"2","https://www.xgdq.com/public/images/f2/71/76/7f4faaf949c8eb037e332cf9a614caf1ec6396de.jpg?1585041812#h","小狗小型床褥除螨仪D-608","599.00");

CREATE TABLE classifydetails_d(
    id INT PRIMARY KEY AUTO_INCREMENT,
    family_id int(11) default NULL,
    src VARCHAR(128),
    title VARCHAR(32),
    price DECIMAL(8,2)
);
INSERT INTO classifydetails_d VALUES
(NULL,"3","https://www.xgdq.com/public/images/d8/cf/02/8d50f3e532e39ecb84b8d29ce3bcb34c9047c9ff.jpg?1586844178#h","车载吸尘器D-708B","399.00"),
(NULL,"3","https://www.xgdq.com/public/images/7e/09/31/9b21476dfd39aab8c73599ec21c6c40c694772d7.jpg?1558089850#h","小狗家用卧式吸尘器S9 Pro 白色","799.00"),
(NULL,"3","https://www.xgdq.com/public/images/35/57/21/3fefbde362d46df44ff7dd85e30278efd99fc95f.jpg?1572265528#h","小狗家用卧式吸尘器S9 Mate 白色","999.00"),
(NULL,"3","https://www.xgdq.com/public/images/bb/b4/c6/e0e57931b314260b4707e24a7d99cef0211b6d8a.jpg?1524046190#h","小狗家用卧式吸尘器D-9005","699.00"),
(NULL,"3","https://www.xgdq.com/public/images/07/65/1d/433ce53d635427978b3c1ae5d7bcabd78ea04293.jpg?1524046270#h","小狗家用卧式吸尘器D-9002","599.00"),
(NULL,"3","https://www.xgdq.com/public/images/5e/2d/4c/92f127475ab5102d870f9623ed15e9feabaff2c5.jpg?1585535499#h","小狗家用卧式吸尘器S9 Cyclone 白色","799.00");

CREATE TABLE classifydetails_e(
    id INT PRIMARY KEY AUTO_INCREMENT,
    family_id int(11) default NULL,
    src VARCHAR(128),
    title VARCHAR(32),
    price DECIMAL(8,2)
);
INSERT INTO classifydetails_e VALUES
(NULL,"4","https://www.xgdq.com/public/images/a3/b1/f0/14215a8946a1676196981776fc6a622887b76c55.jpg?1587973259#h","小狗智能扫地机器人R60 Pro","3790.00"),
(NULL,"4","https://www.xgdq.com/public/images/4c/c4/f4/90aa255243b84e0e2ebf8958a229aff6e1d050e2.jpg?1583137421#h","小狗智能扫地机器人R35 Cyclone","1699.00"),
(NULL,"4","https://www.xgdq.com/public/images/0e/d7/b9/7f2845d2640a176b1b5a7e3c25b9b7c1f1fda2c7.jpg?1558088015#h","小狗智能扫地机器人R30 Pro","999.00"),
(NULL,"4","https://www.xgdq.com/public/images/17/d2/55/1c362ac1d6d376750fad9e9c047fb7d136cd2bf1.jpg?1560139218#h","小狗智能扫地机器人R30 Cyclone","1199.00"),
(NULL,"4","https://www.xgdq.com/public/images/1a/e4/e7/c28741127badd9fd7d55efd1247b77e5c580108d.jpg?1559188062#h","小狗智能扫地机器人R30 Mate","1199.00"),
(NULL,"4","https://www.xgdq.com/public/images/f3/96/c9/bde6174191bafbcc0c9ec26cdf59d6c6bdf66de9.jpg?1552354319#h","小狗智能扫地机器人R55 Cyclone","2399.00");

CREATE TABLE classifydetails_f(
    id INT PRIMARY KEY AUTO_INCREMENT,
    family_id int(11) default NULL,
    src VARCHAR(128),
    title VARCHAR(32),
    price DECIMAL(8,2)
);
INSERT INTO classifydetails_f VALUES
(NULL,"5","https://www.xgdq.com/public/images/d0/5d/1a/57dc9b21fdcd79f9d8051b8298e634ed9f5d8ea3.jpg?1567159162#h","小狗干湿吹多用吸尘器Q1 White","399.00"),
(NULL,"5","https://www.xgdq.com/public/images/22/1a/0d/4324a210691ca94f825fa258b9215f4d7e1b2d1f.jpg?1530585923#h","小狗干湿吹多用吸尘器D-809","499.00"),
(NULL,"5","https://www.xgdq.com/public/images/2c/3f/71/11ddfff08475c8c3c15cbf20e69abe093858a516.jpg?1524054204#h","小狗干湿吹多用吸尘器D-807","499.00"),
(NULL,"5","https://www.xgdq.com/public/images/64/1a/eb/7472a213fcdb89716d228f765fbafded0da5c2d8.jpg?1595576611#h","小狗干湿吹多用吸尘器D-805","899.00"),
(NULL,"5","https://www.xgdq.com/public/images/bc/b5/ee/299be77cf591afba7323642a27ca200cdfa1d2f9.jpg?1524054269#h","小狗多用工业大型吸尘器D-806","1599.00");

CREATE TABLE classifydetails_g(
    id INT PRIMARY KEY AUTO_INCREMENT,
    family_id int(11) default NULL,
    src VARCHAR(128),
    title VARCHAR(32),
    price DECIMAL(8,2)
);
INSERT INTO classifydetails_g VALUES
(NULL,"6","https://www.xgdq.com/public/images/61/15/87/5718bbb7e81741345226679fcc7d59a25c2aea4a.jpg?1597734141#h","海帕提手组件 T11 Cyclone","45.00"),
(NULL,"6","https://www.xgdq.com/public/images/12/4e/31/5ef5e23a1c1aa3425ca69f100df443e57f41d09b.jpg?1597733967#h","挂架组件 T11 Cyclone","40.00"),
(NULL,"6","https://www.xgdq.com/public/images/05/82/d9/1f51163fa0805a5d031722df773aa853569ede32.jpg?1597733707#h","电动除螨刷 T11 Cyclone","130.00"),
(NULL,"6","https://www.xgdq.com/public/images/11/92/75/9c9a52e57ad9a746639130ae33509c14d8fbfbb5.jpg?1597733089#h","长扁吸 T11 Cyclone","40.00"),
(NULL,"6","https://www.xgdq.com/public/images/81/78/ae/9eb75d2febbbbb61cf0f7653e40580c654edc1f8.jpg?1597645953#h","小狗配件收纳包","99.00"),
(NULL,"6","https://www.xgdq.com/public/images/9f/9d/53/5629862500ff6c6a2cdc8c130967adf880791a60.jpg?1589540939#h","主轴电机 E10 Cyclone","110.00");


-- 详情
CREATE TABLE details(
    id INT PRIMARY KEY AUTO_INCREMENT,
    family_id int(11) default NULL,
    lunbo1 VARCHAR(128),
    lunbo2 VARCHAR(128),
    lunbo3 VARCHAR(128),
    title1 VARCHAR(32),
    title2 VARCHAR(32),
    price DECIMAL(18,2),
    sales VARCHAR(32),
    search VARCHAR(128)
);
INSERT INTO details VALUES
(NULL,"0","https://www.xgdq.com/public/images/ef/ac/8f/ae644e7d1ee1f0fc29884b38092581857045e5e4.jpg?1582873048#h","https://www.xgdq.com/public/images/7f/0f/3d/9fb35311cf52b1edb0ec8d060ac974070cff6b2d.jpg?1582873049#h","https://www.xgdq.com/public/images/fe/4c/27/76499a63b5c24714075c40ade20da4c513d7fcbc.jpg?1582873049#h","【小狗无线车载吸尘器A10 Mix】","网红款高颜值大功率随手吸，轻巧灵便，吸力强劲！","499.00","55件","桌面吸尘器"),
(NULL,"1","https://www.xgdq.com/public/images/ba/e9/a8/a5b7a40d1c69c95c5db78d9aaa4777cb2189f6aa.jpg?1588038299#h","https://www.xgdq.com/public/images/7a/1e/02/d9a61d95bc708228b8ab9d99749ee8be78ded897.jpg?1588038299#h","https://www.xgdq.com/public/images/e2/78/40/0c5df85c9b9efc77358348a2a7bacd62a7a7af76.jpg?1588038300#h","【小狗手持推杆吸尘器T12 Storm】"," 新品上市，170AW强劲吸力，智能人机交互，双滚电动地刷","2999.00","91件","手持推杆"),
(NULL,"2","https://www.xgdq.com/public/images/ec/9e/3f/f9af40fa140a51097ca1fefdd09a620944f9676a.jpg?1599115814#h","https://www.xgdq.com/public/images/84/8c/82/b97e74295b75923e7f9416958a0fba0e48077e46.jpg?1599115815#h","https://www.xgdq.com/public/images/a1/91/bd/eefb8f7b33374815ba58dc30adce31e51f645650.jpg?1599115816#h","【小狗无线除螨吸尘器T11 Mattress】","除螨新品，处处更胜一筹！","999.00","0件","除螨仪"),
(NULL,"3","https://www.xgdq.com/public/images/57/d5/37/9e35b9defff3229318165848ae7b00a9c1c1c95a.jpg?1557970309#h","https://www.xgdq.com/public/images/02/2c/8d/baf3f5f2aafa142216cbf6ea3601cc6ff715c84d.jpg?1557970310#h","https://www.xgdq.com/public/images/46/26/9c/ae08f7a4d7d21f054870723b7747f03f9f071381.jpg?1557970310#h","【车载吸尘器D-708B】","120W超大功率，长扁吸，简单易用，车载吸尘神器！","399.00","186件","卧式吸尘器"),
(NULL,"4","https://www.xgdq.com/public/images/b9/5f/85/b8bb69d4f66f9a362a88a39ffa3bab5ef2a8bf29.jpg?1587973235#h","https://www.xgdq.com/public/images/5d/30/6e/fd819e23e57beceec6aef8adc52c2dcbec638eee.jpg?1587973235#h","https://www.xgdq.com/public/images/57/7a/66/4a24de52335a5f43bba593288143353782377e2a.jpg?1587973236#h","【小狗智能扫地机器人R60 Pro】","LDS激光导航+视觉巡航，5000Pa强劲吸力","12999.00","8件","扫地机"),
(NULL,"5","https://www.xgdq.com/public/images/16/ad/a4/29882ce88c9f393487ee35e540105e2797977069.jpg?1567159107#h","https://www.xgdq.com/public/images/aa/c7/46/49f874b3efb7520c7e70e212eefdb5402680cdc8.jpg?1567159108#h","https://www.xgdq.com/public/images/0f/10/a5/dbbf44375ee4037b63a34852b815fd727e773c43.jpg?1567159109#h","【小狗干湿吹多用吸尘器Q1 White】"," 17米操作半径 16L大容量 3分钟打扫全屋 装修废料一样搞定！","2099.00","103件","桶式"),
(NULL,"6","https://www.xgdq.com/public/images/a6/fc/ca/3288a1a4b8d9d0b83aabe7df7d23ecf8c3efe40e.jpg?1597733670#h","https://www.xgdq.com/public/images/b0/9d/40/238b092795eb8d6aae0d583bcd2630a8cb0151c3.jpg?1597733671#h","https://www.xgdq.com/public/images/00/54/d7/59d950cfa5372b44f3e16e89f0fa51412bff89ed.jpg?1597733671#h","【电动除螨刷 T11 Cyclone】","","130.00","0件","配件");


-- 购物车
CREATE TABLE cart(
    id INT PRIMARY KEY,
    count varchar(255) DEFAULT NULL,
    src VARCHAR(128),
    title VARCHAR(32),
    price DECIMAL(18,2),
    checked Boolean
);
-- INSERT INTO cart VALUES
-- (NULL,1,"https://www.xgdq.com/public/images/65/02/44/0cfbdd7dd6ac8649844346aae374f58a4bdd58ca.jpg?1537522556#h","小狗无线车载吸尘器A10 Mix","499.00"),
-- (NULL,1,"https://www.xgdq.com/public/images/64/06/f0/76a2e614d41d927e9e1e1576ba82ccb334500b56.jpg?1539585669#h","小狗智能扫地机器人R55 Cyclone","2399.00");