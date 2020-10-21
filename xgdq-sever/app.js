const express = require("express");
const mysql = require("mysql");
const pool = mysql.createPool({
  //数据库服务器地址
  host: "127.0.0.1",
  //数据库用户名
  user: "root",
  //数据库用户密码
  password: "",
  //数据库服务器端口号
  port: 3306,
  //数据库名称
  database: "xgdq",
  //编码方式
  charset: "utf8",
  //连接限制
  connectionLimit: 15,
});
//创建服务器
const app = express();
//引入body-parser中间件 解决post请求
const bodyparser = require("body-parser");
//将body作为服务器的中间件使用
app.use(
  bodyparser.urlencoded({
    extended: false,
  })
);
//引入cors模块 解决跨域
const cors = require("cors");
app.use(
  cors({
    origin: ["http://127.0.0.1:8080", "http://localhost:8080"],
  })
);
//轮播图
app.get("/carousel", (req, res) => {
  let sql = "select * from carousel";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send({ result: result });
  });
});
//首页热卖多的--1
app.get("/more1", (req, res) => {
  let sql = "select * from indexhot_more1";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send({ result: result });
  });
});
//首页热卖多的--2
app.get("/more2", (req, res) => {
  let sql = "select * from indexhot_more2";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send({ result: result });
  });
});
//首页热卖单一的--1
app.get("/solo1", (req, res) => {
  let sql = "select * from indexhot_solo1";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send({ result: result });
  });
});
//首页热卖单一的--2
app.get("/solo2", (req, res) => {
  let sql = "select * from indexhot_solo2";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send({ result: result });
  });
});
//首页配件热卖
app.get("/peijian", (req, res) => {
  let sql = "select * from indexhot_peijian";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send({ result: result });
  });
});
//注册
app.post("/register", (req, res) => {
  //获取用户提交的用户名等信息
  let phone = req.body.phone;
  // console.log(phone)
  let upwd = req.body.upwd;
  // console.log(upwd)
  let obj = req.body;
  // console.log(obj)
  let sql = "select * from reg  where phone = ?";
  pool.query(sql, [phone], (err, result) => {
    if (err) throw err;
    // console.log(result)
    if (result.length !== 0) {
      res.send({ message: "注册失败", code: 0 });
    } else {
      let sql = "insert into reg set ?";
      pool.query(sql, [obj], (err, result) => {
        if (err) throw err;
        res.send({ message: "注册成功", code: 1 });
      });
    }
  });
});
//手机验证码登录
app.post("/login1", (req, res) => {
  let phone = req.body.phone;
  // console.log(phone)
  let upwd = req.body.upwd;
  // console.log(upwd)
  let sql = "select * from reg where phone=?";
  pool.query(sql, [phone], (err, result) => {
    if (err) throw err;
    if (result.length == 0) {
      res.send({ message: "失败", code: 0 });
    } else {
      res.send({ message: "成功", code: 1, result: result[0] });
    }
  });
});
//账号密码登录
app.post("/login2", (req, res) => {
  let phone = req.body.phone;
  // console.log(phone)
  let upwd = req.body.upwd;
  // console.log(upwd)
  let sql = "select * from reg where phone=? and upwd=?";
  pool.query(sql, [phone, upwd], (err, result) => {
    if (err) throw err;
    if (result.length == 0) {
      res.send({ message: "失败", code: 0 });
    } else {
      res.send({ message: "成功", code: 1, result: result[0] });
    }
  });
});
//分类第一个的
app.get("/classifya", (req, res) => {
  let sql = "select * from classifydetails_a";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send({ result: result });
  });
});
//分类第二个的
app.get("/classifyb", (req, res) => {
  let sql = "select * from classifydetails_b";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send({ result: result });
  });
});
//分类第三个的
app.get("/classifyc", (req, res) => {
  let sql = "select * from classifydetails_c";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send({ result: result });
  });
});
//分类第四个的
app.get("/classifyd", (req, res) => {
  let sql = "select * from classifydetails_d";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send({ result: result });
  });
});
//分类第五个的
app.get("/classifye", (req, res) => {
  let sql = "select * from classifydetails_e";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send({ result: result });
  });
});
//分类第六个的
app.get("/classifyf", (req, res) => {
  let sql = "select * from classifydetails_f";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send({ result: result });
  });
});
//分类第七个的
app.get("/classifyg", (req, res) => {
  let sql = "select * from classifydetails_g";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send({ result: result });
  });
});
// 详情
app.get("/details", (req, res) => {
  let fid = req.query.fid;
  let sql = "select * from details where family_id=?";
  pool.query(sql, [fid], (err, result) => {
    if (err) throw err;
    res.send({ result: result[0] });
  });
});
// 搜索
app.get("/search", (req, res) => {
  //获取地址栏参数
  let value = req.query.value;
  // console.log(value)
  //模糊查询
  let sql = "select * from details where search like ? ";
  pool.query(sql, ["%" + value + "%"], (err, result) => {
    if (err) throw err;
    // console.log(result)
    res.send({ result: result });
  });
});
//购物车
app.get("/cart", (req, res) => {
  let sql = "select * from cart";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send(result);
  });
});
//加入到购物车
app.get("/addcart", (req, res) => {
  let id = req.query.id;
  let img = req.query.img;
  let title = req.query.title;
  let price = req.query.price;
  let count = req.query.count;
  let checked = req.query.checked;
  let sql1 = "select * from cart where id=?";
  let sql2 =
    "insert into cart(id,src,title,price,count,checked) VALUES (?,?,?,?,?,?)";
  //如果购物车中有了,就更改数量+1
  let sql3 = "update cart set count=count+1 where id=?";
  pool.query(sql1, [id], (err, result) => {
    if (err) throw err;
    if (result.length == 0) {
      pool.query(
        sql2,
        [id, img, title, price, count, checked],
        (err, result) => {
          if (err) throw err;
          res.send(result);
        }
      );
    } else {
      pool.query(sql3, [id], (err, result) => {
        if (err) throw err;
        res.send(result);
      });
    }
  });
});
//删除
app.get("/delete", (req, res) => {
  let id = req.query.id;
  let sql = "delete from cart where id=?";
  pool.query(sql, [id], (err, result) => {
    if (err) throw err;
    res.send("删除成功");
  });
});

app.listen(3997);
