const bodyParser = require('body-parser');
const express = require('express');
const cors = require('cors')
const app = express();
//定义api路径
//用户api文件
const userApi = require('./api/userApi.js');
//题目api文件
const titleApi = require('./api/titleApi.js');
// 解析 application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }));
// 解析 application/json
app.use(bodyParser.json());
app.use(cors());
//设置跨域请求
app.all('*', function (req, res, next) {
	res.header("Access-Control-Allow-Origin", "*");
	res.header('Access-Control-Allow-Headers', 'Content-Type, Content-Length, Authorization, Accept, X-Requested-With , yourHeaderFeild');
	res.header("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS");
	res.header("X-Powered-By", ' 3.2.1')
	res.header("Content-Type", "application/json;charset=utf-8");
	next();
});

app.use("/api/user",userApi);
app.use("/api/title",titleApi);
app.listen(10520);//监听端口
console.log("success");