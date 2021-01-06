const models = require('../db/db');
const express = require('express');
const router = express.Router();
const mysql = require('mysql');
// 语句来源
const $sql = require('../db/sqlMap');
const conn = mysql.createConnection(models.mysql);
conn.connect();
// 删除接口
router.post('/delete', (req, res) => {
	const params = req.body;
	const sel_sql = $sql.user.select + " where id = '" + params.id + "'";
	const del_sql = $sql.user.delete;
	conn.query(sel_sql, params.id, (error, results) => {
		if(error) {
			console.log(err);
		}
		if (results[0] === undefined) {
			res.send("-1");   // -1 表示用户不存在
		} else {
			conn.query(del_sql, params.id, (err, rst) => {
				if (err) {
					console.log(err);
				} else{
					//console.log(rst);
					res.send("0"); // 0 表示删除成功
				}
			});
		}
	});
});
// 修改接口
router.post('/update', (req, res) => {
	const params = req.body;
	const sel_sql = $sql.user.select + " where id = '" + params.id + "'";
	const upd_sql = $sql.user.update;
	// const add_sql = $sql.user.add;
	// console.log(sel_sql);
	conn.query(sel_sql, params.id, (error, results) => {
		if(error) {
			console.log(err);
		}
		if (results[0] === undefined) {
			res.send("-1");   // -1 表示用户不存在
		} else {
			conn.query(upd_sql, [params.username, params.email, params.password,params.id], (err, rst) => {
				if (err) {
					console.log(err);
				} else{
					//console.log(rst);
					res.send("0"); // 0 表示用户修改成功
				}
			});
		}
	});
});
// 查询接口
router.post('/select',(req,res)=>{
	const user = req.body;
	const sel_all = $sql.user.select;
	// console.log(sel_all);
	conn.query(sel_all, (error, results)=>{
		if (error) {
			throw error;
		}else{
			res.json(results);
		}
		//console.log(results)
	})
});
// 主页查询用户数据
router.post('/query',(req,res)=>{
	const user = req.body;
	const sel_email = $sql.user.select + " where email = '" + user.email + "'";
	// console.log(sel_email);
	conn.query(sel_email, user.email, (error, results)=>{
		if (error) {
			throw error;
		}
		//console.log(results)
		if (results[0] === undefined) {
			res.send("-1");  // -1 表示查询不到，用户不存在，即邮箱填写错误
		} else{
			res.json(results);
		}
	})
});
// 登录接口
router.post('/login',(req,res)=>{
	const user = req.body;
	const sel_email = $sql.user.select + " where email = '" + user.email + "'";
	// console.log(sel_email);
	conn.query(sel_email, user.email, (error, results)=>{
		if (error) {
			throw error;
		}
		//console.log(results)
		if (results[0] === undefined) {
			res.send("-1");  // -1 表示查询不到，用户不存在，即邮箱填写错误
		} else{
			if (results[0].email == user.email && results[0].password == user.password) {
				res.send("0");  // 0 表示用户存在并且邮箱密码正确
			} else{
				res.send("1");  // 1 表示用户存在，但密码不正确
			}
		}
	})
});
// 注册接口
router.post('/add', (req, res) => {
	const params = req.body;
	const sel_sql = $sql.user.select + " where username = '" + params.username + "'";
	const sel_email = $sql.user.select + " where email = '" + params.email + "'";
	const add_sql = $sql.user.add;
	// console.log(sel_sql);
	
	conn.query(sel_sql, params.username, (error, results) => {
		if(error) {
			console.log(err);
		}
		if (results.length != 0 && params.username == results[0].username) {
			res.send("-1");   // -1 表示用户名已经存在
		} else {
			conn.query(sel_email, params.email, (error, results) => {
				if(results.length != 0 && params.email == results[0].email){
					res.send("1");   // 1 表示邮箱已经存在
				}else{
					conn.query(add_sql, [params.username, params.email, params.password], (err, rst) => {
						if (err) {
							console.log(err);
						} else{
							//console.log(rst);
							res.send("0"); // 0 表示用户创建成功
						}
					});
				}
		});
		}
	});
});

module.exports = router;