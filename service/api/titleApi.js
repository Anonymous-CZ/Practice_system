const models = require('../db/db');
const express = require('express');
const router = express.Router();
const mysql = require('mysql');
const $sql = require('../db/sqlMap');

const conn = mysql.createConnection(models.mysql);
conn.connect();
//排名查询接口
router.post('/selectGra',(req,res)=>{
	// const user = req.body;
	const sel_all = $sql.grade.select;
	//console.log(sel_all);
	conn.query(sel_all, (error, results)=>{
		if (error) {
			throw error;
		}else{
			res.json(results);
		}
		//console.log(results)
	})
});
// 排名添加接口
router.post('/addGrade', (req, res) => {
	const params = req.body;
    const add_sql = $sql.grade.add;
    conn.query(add_sql, [params.username, params.usercount, params.grade], (err, rst) => {
        if (err) {
            console.log(err);
        } else{
            //console.log(rst);
            res.send("0"); // 0 表示用户创建成功
        }
    });
});
//主观题删除接口
router.post('/deleteSub', (req, res) => {
	const params = req.body;
	const sel_sql = $sql.sub.select + " where sub_id = '" + params.sub_id + "'";
	const del_sql = $sql.sub.delete;
	conn.query(sel_sql, params.sub_id, (error, results) => {
		if(error) {
			console.log(err);
		}
		if (results[0] === undefined) {
			res.send("-1");   // -1 表示不存在
		} else {
			conn.query(del_sql, params.sub_id, (err, rst) => {
				if (err) {
					console.log(err);
				} else{
					// console.log(rst);
					res.send("0"); // 0 表示删除成功
				}
			});
		}
	});
});
//主观题修改接口
router.post('/updateSub', (req, res) => {
	const params = req.body;
	const sel_sql = $sql.sub.select + " where sub_id = '" + params.sub_id + "'";
	const upd_sql = $sql.sub.update;
	// const add_sql = $sql.user.add;
	// console.log(sel_sql);
	conn.query(sel_sql, params.sub_id, (error, results) => {
		if(error) {
			console.log(err);
		}
		if (results[0] === undefined) {
			res.send("-1");   // -1 表示用户不存在
		} else {
			conn.query(upd_sql, [params.sub_difficuly, params.sub_chapter, params.sub_title, params.sub_answer,params.sub_book, params.sub_grade,params.sub_id], (err, rst) => {
				if (err) {
					console.log(err);
				} else{
					// console.log(rst);
					res.send("0"); // 0 表示修改成功
				}
			});
		}
	});
});
// 主观题添加接口
router.post('/addSub', (req, res) => {
	const params = req.body;
    const add_sql = $sql.sub.add;
    conn.query(add_sql, [params.sub_difficuly, params.sub_chapter, params.sub_title, params.sub_answer, params.sub_book, params.sub_grade], (err, rst) => {
        if (err) {
            console.log(err);
        } else{
            //console.log(rst);
            res.send("0"); // 0 表示添加成功
        }
    });
});
//主观题查询接口
router.post('/selectSub',(req,res)=>{
	// const user = req.body;
	const sel_all = $sql.sub.select;
	//console.log(sel_all);
	conn.query(sel_all, (error, results)=>{
		if (error) {
			throw error;
		}else{
			res.json(results);
		}
		//console.log(results)
	})
});
//删除接口
router.post('/delete', (req, res) => {
	const params = req.body;
	const sel_sql = $sql.obj.select + " where obj_id = '" + params.obj_id + "'";
	const del_sql = $sql.obj.delete;
	conn.query(sel_sql, params.obj_id, (error, results) => {
		if(error) {
			console.log(err);
		}
		if (results[0] === undefined) {
			res.send("-1");   // -1 表示不存在
		} else {
			conn.query(del_sql, params.obj_id, (err, rst) => {
				if (err) {
					console.log(err);
				} else{
					console.log(rst);
					res.send("0"); // 0 表示删除成功
				}
			});
		}
	});
});
//修改接口
router.post('/update', (req, res) => {
	const params = req.body;
	const sel_sql = $sql.obj.select + " where obj_id = '" + params.obj_id + "'";
	const upd_sql = $sql.obj.update;
	// const add_sql = $sql.user.add;
	// console.log(sel_sql);
	conn.query(sel_sql, params.obj_id, (error, results) => {
		if(error) {
			console.log(err);
		}
		if (results[0] === undefined) {
			res.send("-1");   // -1 表示用户不存在
		} else {
			conn.query(upd_sql, [params.obj_difficuly, params.obj_chapter, params.obj_title, params.obj_answer, params.obj_a, params.obj_b, params.obj_c, params.obj_d, params.obj_book, params.obj_grade,params.obj_id], (err, rst) => {
				if (err) {
					console.log(err);
				} else{
					// console.log(rst);
					res.send("0"); // 0 表示修改成功
				}
			});
		}
	});
});
//查询接口
router.post('/select',(req,res)=>{
	// const user = req.body;
	const sel_all = $sql.obj.select;
	//console.log(sel_all);
	conn.query(sel_all, (error, results)=>{
		if (error) {
			throw error;
		}else{
			res.json(results);
		}
		//console.log(results)
	})
});
// 客观题添加接口
router.post('/add', (req, res) => {
	const params = req.body;
	const add_sql = $sql.obj.add;
	const sel_sql = $sql.obj.select + " where obj_title = '" + params.obj_title + "'";
	// const add_sql = $sql.user.add;
	// console.log(sel_sql);
	conn.query(sel_sql, params.obj_title, (error, results) => {
		if(error) {
			console.log(err);
		}
		if (results[0] === undefined) {//表示查不到题目
			// res.send("-1");   // -1 表示用户不存在
			conn.query(add_sql, [params.obj_difficuly, params.obj_chapter, params.obj_title, params.obj_answer, params.obj_a, params.obj_b, params.obj_c, params.obj_d, params.obj_book, params.obj_grade], (err, rst) => {
				if (err) {
					console.log(err);
				} else{
					//console.log(rst);
					res.send("0"); // 0 表示添加成功
				}
			});
		} else {
			res.send("-1");
		}
	});
    
});

module.exports = router;