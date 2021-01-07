<<<<<<< HEAD
# Practice system

## 实现功能

简单的练习系统，管理员可以管理用户/试题，用户可以查看成绩，搜索题目，进行练习，练习可以根据课本，章节，难度筛选题目，筛选出10个题目，题目随机且有难度梯度。

------

## 项目部署
语雀：
		https://www.yuque.com/docs/share/a7f9dd64-a10d-44fd-bdcc-7c4932af2d1e?# 《练习系统（移植教程）》
### 数据库
文件里面的sql文件包含建表语句和相关数据


### 项目初始化
```
npm install

```
可能会出现缺少modules错误，
可以把node_modules删除重新`npm install`
也可以看少了什么组件单独下载

### 后端部署和运行
```
cd service
npm install
node app.js
```

### 运行前端项目
```
npm run serve
```
-------

## 使用到的技术

### 前端：

- html
- css
- vue.js
- vue-cli
- vue-router

### 后端：

- node.js
- express
- mysql
--------  

#### 使用说明

1.  没加密
2.  没cookies/session（暂时）
3.  练习界面没有主观题，因为没想好怎么自动批改

#### 参考学习

1.  https://github.com/Asaki-M/login-register-simple-case



