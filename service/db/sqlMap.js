//数据库操作语句
var sqlMap = {
    user: {//用户表
        add: 'insert into user (username, email, password) values (?,?,?)',
        select: 'select * from user',
        update: 'update user set username=?,email=?,password=? where id=?',
        delete: 'delete from user where id=?'
    },
    obj: {//客观题表
        add: 'insert into objective (obj_difficuly, obj_chapter, obj_title,obj_answer,obj_a,obj_b,obj_c,obj_d,obj_book,obj_grade) values (?,?,?,?,?,?,?,?,?,?)',
        select: 'select * from objective',
        update: 'update objective set obj_difficuly=?,obj_chapter=?,obj_title=? ,obj_answer=?,obj_a=?,obj_b=?,obj_c=?,obj_d=?,obj_book=?,obj_grade=?where obj_id=?',
        delete: 'delete from objective where obj_id=?'
    },
    sub: {//主观题表
        add: 'insert into subjective (sub_difficuly, sub_chapter, sub_title,sub_answer,sub_book,sub_grade) values (?,?,?,?,?,?)',
        select: 'select * from subjective',
        update: 'update subjective set sub_difficuly=?,sub_chapter=?,sub_title=? ,sub_answer=?,sub_book=?,sub_grade=? where sub_id=?',
        delete: 'delete from subjective where sub_id=?'
    },
    grade: {//分数
        add: 'insert into grade (user_name, user_count, user_grade) values (?,?,?)',
        select: 'select * from grade',
    }
}
//出
module.exports = sqlMap;