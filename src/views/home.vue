<template>
	<div>
        <nav class="navbar navbar-expand-lg navbar-light bg-light content">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <a class="navbar-brand size-larger" href="#" @click="back" title="点击返回登录界面">返回</a>
        <div class="collapse navbar-collapse " id="navbarTogglerDemo03">
            <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item active pad-lr-max">
                <a class="nav-link btn btn-success size-large" data-toggle="collapse" href="#user"  aria-expanded="true" aria-controls="user" @click="queryGrade">排名 <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active" >
               <a class="nav-link btn btn-success size-large" data-toggle="modal" data-target="#practice" type=“button” title="点击选择">练习 <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active pad-lr-max">
                <a class="nav-link btn btn-success size-large" data-toggle="modal" data-target="#query"  type=“button” title="" @click="clearsearchLis();selectObj()" >搜索 <span class="sr-only">(current)</span></a>
            </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
            <!-- <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"> -->
            <img src="./img/真实.jpg" style="height: 40px;width: 40px;border-radius: 25px;" alt="">
            <button class="btn btn-outline-success my-2 my-sm-0" type="" @click="back" title="点击返回登录界面" ><div  v-for="user in userLis" :key="user.id">{{user.username}}</div></button>
            </form>
        </div>
        </nav>
        <!-- 内容 -->
        <div class="content">
            <div>
                <div class="dropdown-divider mar-tb-big" style="border-top:1px solid #CCCCCC;"></div>
                <!-- 排名 -->
                <div class="row list-group list-group-horizontal">
                    <div class="col-md-1 list-group-item list-group-item-action list-group-item-dark " @click="queryGrade" title="点击按照编号从高到底排序">编号</div>
                    <div class="col-md-3 list-group-item list-group-item-action list-group-item-dark">用户名</div>
                    <div class="col-md-3 list-group-item list-group-item-action list-group-item-dark">账号</div>
                    <div class="col-md-2 list-group-item list-group-item-action list-group-item-dark" @click="sortGrade" title="点击按照正确率从高到底排序" >正确率</div>
                    <div class="col-md-3 list-group-item list-group-item-action list-group-item-dark">完成时间</div>
                </div>
                <div class="dropdown-divider "></div>
                
                <div class="row list-group list-group-horizontal" v-for="gra in graLis" :key="gra.gra_id">
                    <div class="col-md-1 list-group-item list-group-item-action list-group-item-secondary">{{gra.gra_id}}</div>
                    <div class="col-md-3 list-group-item list-group-item-action list-group-item-secondary">{{gra.user_name}}</div>
                    <div class="col-md-3 list-group-item list-group-item-action list-group-item-secondary">{{gra.user_count}}</div>
                    <div class="col-md-2 list-group-item list-group-item-action list-group-item-secondary" v-if="gra.user_grade >= 60">{{gra.user_grade}}%</div>
                    <div class="col-md-2 list-group-item list-group-item-action list-group-item-secondary" v-else style="color:red;">{{gra.user_grade}}%</div>
                    <div class="col-md-3 list-group-item list-group-item-action list-group-item-secondary">{{$moment(gra.end_time).format('YYYY-MM-DD HH:mm:ss')}}</div>
                </div>
                <div class="dropdown-divider mar-tb-big" style="border-top:1px solid #CCCCCC;"></div>
            </div>
            <!-- 练习模态框 -->
            <div class="modal fade " id="practice" tabindex="-1" aria-labelledby="practice" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="practice">选择练习的课本、章节(可多选)和难度</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <!-- JAVA -->
                        <div class="panel-group" id="accordion"  >
                        <div class="panel panel-default" @click="bookJava">
                            <div class="panel-heading">
                            <h4 class="panel-title"><a class="badge badge-success" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">JAVA</a></h4>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse in">
                            <div class="panel-body ">
                                <ul class="list-group size-weight-big">
                                    <li class="list-group-item ">第一章 Java语言概述 
                                        <ul class="float-r">
                                            <input type="checkbox" id="" value="1" v-model="checkedChapter" style="width: 15px;height: 15px;"/>
                                        </ul>
                                    </li>
                                    
                                    <li class="list-group-item ">第二章 Java语法基础
                                        <ul class="float-r">
                                            <input type="checkbox" id="" value="2" v-model="checkedChapter" style="width: 15px;height: 15px;"/>
                                        </ul>
                                    </li>
                                    <li class="list-group-item ">第三章 面向对象编程
                                        <ul class="float-r">
                                            <input type="checkbox" id="" value="3" v-model="checkedChapter" style="width: 15px;height: 15px;"/>
                                        </ul>
                                    </li>
                                    
                                </ul>
                                
                                <br>
                                <!-- <span>Checked names: {{ checkedChapter }}</span> -->
                            </div>
                            </div>
                        </div>
                        <!-- 数据库 -->
                        <div class="panel panel-default"  @click="bookDatabase">
                            <div class="panel-heading">
                            <h4 class="panel-title"><a class="badge badge-success" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">数据库</a></h4>
                            </div>
                            <div id="collapseTwo" class="panel-collapse collapse">
                            <div class="panel-body">
                                <ul class="list-group size-weight-big">
                                    <li class="list-group-item " >第一章 数据库概述 
                                        <ul class="float-r">
                                            <input type="checkbox" id="" value="1" v-model="checkedChapter" style="width: 15px;height: 15px;"/>
                                        </ul>
                                    </li>
                                    
                                    <li class="list-group-item ">第二章 MySQL安装和配置
                                        <ul class="float-r">
                                            <input type="checkbox" id="" value="2" v-model="checkedChapter" style="width: 15px;height: 15px;"/>
                                        </ul>
                                    </li>
                                    <li class="list-group-item ">第三章 MySQL数据库基本操作
                                        <ul class="float-r">
                                            <input type="checkbox" id="" value="3" v-model="checkedChapter" style="width: 15px;height: 15px;"/>
                                        </ul>
                                    </li>
                                    
                                </ul>
                            </div>
                            </div>
                        </div>
                        <!-- 软件工程 -->
                        <div class="panel panel-default"  @click="bookSoftware">
                            <div class="panel-heading">
                            <h4 class="panel-title"><a class="badge badge-success" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">软件工程</a></h4>
                            </div>
                            <div id="collapseThree" class="panel-collapse collapse">
                            <div class="panel-body">
                                <ul class="list-group size-weight-big">
                                    <li class="list-group-item " >第一章 软件工程概述 
                                        <ul class="float-r">
                                            <input type="checkbox" id="" value="1" v-model="checkedChapter" style="width: 15px;height: 15px;"/>
                                        </ul>
                                    </li>
                                    <li class="list-group-item ">第二章 软件过程
                                        <ul class="float-r">
                                            <input type="checkbox" id="" value="2" v-model="checkedChapter" style="width: 15px;height: 15px;"/>
                                        </ul>
                                    </li>
                                    <li class="list-group-item ">第三章 可行性研究及需求分析
                                        <ul class="float-r">
                                            <input type="checkbox" id="" value="3" v-model="checkedChapter" style="width: 15px;height: 15px;"/>
                                        </ul>
                                    </li>
                                    
                                </ul>
                            </div>
                            </div>
                        </div>
                        <!--操作系统 -->
                        <div class="panel panel-default"  @click="booksystem">
                            <div class="panel-heading">
                            <h4 class="panel-title"><a class="badge badge-success" data-toggle="collapse" data-parent="#accordion" href="#collapseFour">操作系统</a></h4>
                            </div>
                            <div id="collapseFour" class="panel-collapse collapse">
                            <div class="panel-body">
                                <ul class="list-group size-weight-big">
                                    <li class="list-group-item " >第一章 
                                        <ul class="float-r">
                                            <input type="checkbox" id="" value="1" v-model="checkedChapter" style="width: 15px;height: 15px;"/>
                                        </ul>
                                    </li>
                                    
                                    
                                </ul>
                            </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div class="modal-footer ">
                        <!-- 下拉框 -->
                        <select class=" btn btn-success size-middle size-weight-big" id="select" v-model="selected">
                            <option disabled value="">难度</option>
                            <option  value ="1">简单</option>
                            <option  value ="2">容易</option>
                            <option  value ="3">困难</option>
                        </select>
                        <h3>{{book}}</h3>
                        <!-- <span>Selected: {{ selected }}</span> -->
                        <!-- data-dismiss="modal" aria-label="Close" 关闭模态框，否则跳转后会出问题 -->
                        <button  type="submit" class="btn btn-success" @click="startPractice" data-dismiss="modal" aria-label="Close">开始练习</button>
                    </div>
                    </div>
                </div>
            </div>
            <!-- 搜索模态框 -->
            <div class="modal fade " id="query" tabindex="-1" aria-labelledby="query" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="query">搜索</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <!-- {{obj_lists}} -->
                        <input type="text" placeholder="请输入题目关键字" v-model="searchTitle">
                        
                        <div  v-for="(obj, index) in searchLis"  :key="obj.id">
                            <div >{{index + 1}}、{{obj.obj_title}}</div>
                             <div style="color:green;">
                                答案为：{{obj.obj_answer}}  
                            </div>
                            <div style="color:green;">
                                本题难度等级(数字越大难度越高)： {{obj.obj_difficuly}}
                            </div>
                            <div style="color:#E88710;">
                                试题编号：{{obj.obj_id}}
                            </div>
                            <div class="row">
                            <div class="col">A、{{obj.obj_a}}</div>
                            <div class="col">B、{{obj.obj_b}}</div>
                            </div>
                            <div class="row">
                            <div class="col"> C、{{obj.obj_c}}</div>
                            <div class="col">D、{{obj.obj_d}}</div>
                            </div>
                            <br>
                        </div>
                        <div v-if="searchPan" style="color:red;">你想要查啥啊？你想要查啥你就输入嘛。
                            你不输入我怎么知道你要查啥呢？虽然你很有诚意地点击了搜索，可是你要输入我有的呀。
                            你真的想要查吗？那你就输入吧！你不是真的想要查题目吧？难道你真的想要查题目吗？.............</div>
                    </div>
                    <div class="modal-footer ">
                        <button @click="clearsearchLis();selectObj()" type="button" class="btn btn-secondary" >清空</button>
                        <button  type="submit" class="btn btn-success" @click="search" >搜索</button>
                    </div>
                    </div>
                </div>
            </div>
        </div>
        
	</div>
	
</template>
<script>
export default {
  name: 'home',
  data () {
    return {
        searchPan:false,
        searchLis:[],
        searchTitle:'',
        obj_lists:[],
        graLis:[],
        userLis: [],
        useremail: '',
        selected: '',
        checkedChapter: [],
        book: 'Java', 
    }
  },
  mounted() {
      this.getParams();
      this.queryUser();
      this.queryGrade();
    },
  methods:{
  	back(){
  		this.$router.push('/')
    },
    clearsearchLis(){
        this.searchLis=[];
        this.searchTitle = '';
    },
    search(){//
        const self = this;
        var len = self.obj_lists.length;
        if(self.searchTitle == ''){
            self.searchPan = true
        }else{
            for(var i = 0;i < len;i++){
            var str = self.obj_lists[i].obj_title;
            if(str.includes(self.searchTitle)){
                self.searchLis.push(self.obj_lists[i]);
            }
        }
        }
        
        if(this.searchLis == ''){
            self.searchPan = true
        }else{
            self.searchPan = false
        }
    },
    selectObj(){
        const self = this;
        self.$axios({
            method:'post',
            url: 'http://127.0.0.1:10520/api/title/select',
            
        })
        .then( res => {
            // let data = res.data[0];
            // console.log(res.data);
            self.obj_lists = res.data;
        })
        .catch( err => {
            console.log(err);
        })
    },
    getParams() {
        // 取到路由带过来的参数   将数据放在当前组件的数据内 
        // this.username = this.$route.params.username;
        this.useremail = this.$route.params.useremail;
    },
    queryUser(){
        const self = this;
        self.$axios({
            method:'post',
            url: 'http://127.0.0.1:10520/api/user/query',
            data: {
                email: self.useremail,
                // password: self.form.userpwd
            }
        })
        .then( res => {
            self.userLis = res.data;
        })
        .catch( err => {
            console.log(err);
        })
    },
    queryGrade(){//
        const self = this;
        self.$axios({
            method:'post',
            url: 'http://127.0.0.1:10520/api/title/selectGra',
        })
        .then( res => {
            self.graLis = res.data;
            // self.graLis.sort(self.sortMethods('user_grade'));
        })
        .catch( err => {
            console.log(err);
        })
    },
    sortGrade(){
        const self = this;
        self.graLis.sort(self.sortMethods('user_grade'));
    },
    sortMethods (property) {
        return function(a,b){
            var value1 = a[property]
            var value2 = b[property]
            return value2 - value1
        }
    },
    practice(){
    this.$router.push('/src/views/practice.vue')
    },
    test(){
        this.$router.push('/src/views/test.vue')
    },
    bookJava(){
        this.book = 'Java';
    },
    bookDatabase(){
        this.book = 'Mysql数据库';
    },
    bookSoftware(){
        this.book = '软工';
    },
    booksystem(){
        this.book = '操作系统';
    },
    //传参函数，传递课本，难度，章节参数
    startPractice(){
        const self = this;
        if (self.selected != '' && self.checkedChapter != '') {
            self.$router.push({  
            path: '/src/views/practice.vue',   
            name: 'practice',  
            params: {   //传参
                selected: self.selected,
                checkedChapter: self.checkedChapter,
                book: self.book,
                userLis: self.userLis,
            }  
        })  
        } else {
            alert('请选择难度和章节！')
        }
    }
  }
}
</script>
<style scoped = "scoped">
/* 更改列表颜色 */
.list-group-item-dark {
  color: #fff;
  background-color: #01b199;
}

.list-group-item-dark.list-group-item-action:hover, .list-group-item-dark.list-group-item-action:focus {
  color: #1b1e21;
  background-color: #05d3b7;
}

.list-group-item-dark.list-group-item-action.active {
  color: #fff;
  background-color: #1b1e21;
  border-color: #1b1e21;
}
.list-group-item-secondary {
  color: #000000;
  background-color: #bffff2;
}

.list-group-item-secondary.list-group-item-action:hover, .list-group-item-secondary.list-group-item-action:focus {
  color: #000000;
  background-color: #50fcd9;
}

.list-group-item-secondary.list-group-item-action.active {
  color: #fff;
  background-color: #383d41;
  border-color: #383d41;
}
.collapsing{
    overflow: hidden;
}
/* 模态框重写，bootstrap问题 */
.modal-open .modal {
  opacity: 1!important;
}
.modal-open .modal-backdrop{
  opacity: 1!important;
  z-index: 9999;
}
.collapse.in {
  display: block;
}
/* 导航栏 */
.btn-outline-success {
  color: #ffffff;
  border-color: #01b199;
}
.bg-light {
  background-color: #01b199 !important;
}
.content{
    padding-left: 10%;
    padding-right: 10%;
}

.navbar-light .navbar-brand {
  color: rgb(255, 255, 255);
}

.navbar-light .navbar-brand:hover, .navbar-light .navbar-brand:focus {
  color: rgba(253, 253, 253, 0.9);
}

.navbar-light .navbar-nav .nav-link {
  color: rgba(255, 255, 255, 0.5);
}

.navbar-light .navbar-nav .nav-link:hover, .navbar-light .navbar-nav .nav-link:focus {
  color: rgba(255, 255, 255, 0.7);
}

.navbar-light .navbar-nav .nav-link.disabled {
  color: rgba(255, 255, 255, 0.3);
}

.navbar-light .navbar-nav .show > .nav-link,
.navbar-light .navbar-nav .active > .nav-link,
.navbar-light .navbar-nav .nav-link.show,
.navbar-light .navbar-nav .nav-link.active {
  color: rgba(255, 255, 255, 0.9);
}

.navbar-light .navbar-toggler {
  color: rgba(255, 255, 255, 0.5);
  border-color: rgba(252, 252, 252, 0.1);
}

.navbar-light .navbar-toggler-icon {
  background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' width='30' height='30' viewBox='0 0 30 30'%3e%3cpath stroke='rgba%280, 0, 0, 0.5%29' stroke-linecap='round' stroke-miterlimit='10' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e");
}

.navbar-light .navbar-text {
  color: rgba(255, 255, 255, 0.5);
}

.navbar-light .navbar-text a {
  color: rgba(255, 255, 255, 0.9);
}

.navbar-light .navbar-text a:hover, .navbar-light .navbar-text a:focus {
  color: rgba(255, 255, 255, 0.9);
}

.btn-success {
  color: #fff;
  background-color: #01b199;
  border-color: #01b199;
}

.btn-success:hover {
  color: #fff;
  background-color: #03927f;
  border-color: #03927f;
}

.btn-success:focus, .btn-success.focus {
  color: #fff;
  background-color: #01b199;
  border-color: #01b199;
  box-shadow: 0 0 0 0.2rem rgba(72, 180, 97, 0);
}

.btn-success.disabled, .btn-success:disabled {
  color: #fff;
  background-color: #03927f;
  border-color: #03927f;
}

.btn-success:not(:disabled):not(.disabled):active, .btn-success:not(:disabled):not(.disabled).active,
.show > .btn-success.dropdown-toggle {
  color: #fff;
  background-color: #01b199;
  border-color: #01b199;
}

.btn-success:not(:disabled):not(.disabled):active:focus, .btn-success:not(:disabled):not(.disabled).active:focus,
.show > .btn-success.dropdown-toggle:focus {
  box-shadow: 0 0 0 0.2rem rgba(72, 180, 97, 0);
}
.modal-footer{
    justify-content: space-between;
    
}
/* 通用标签 */
/* 文字 */
.text-white{
    color: #ffffff;
}
/* 字体 */
.size-smaller{
	font-size: smaller;
}
.size-small{
	font-size: small;
}
.size-middle{
	font-size: medium;
}
.size-large{
	font-size: large;
}
.size-larger{
	font-size: larger;
}
/* 加粗 */
.size-weight-small{
	font-weight: 100;
}
.size-weight-middle{
	font-weight: 500;
}
.size-weight-big{
	font-weight: 900;
}
/* float right left */
.float-r{
	float: right;
}
.float-l{
	float: left;
}
/* justify-content */
.justify-c-s{
    justify-content:flex-start;
}
/* background-color */
.bg-color-1{
	background-color: #ffdbdc;
}
.bg-color-2{
	background-color: #ffbec5;
}
.bg-color-3{
	background-color: #ffa4b0;
}
.bg-color-4{
	background-color: #ff7e87;
}

/* margin left right */
.mar-lr-min{
	margin-left: 1px;
	margin-right: 1px;
}
.mar-lr-small{
	margin-left: 5px;
	margin-right: 5px;
}
.mar-lr-middle{
	margin-left: 10px;
	margin-right: 10px;
}
.mar-lr-big{
	margin-left: 20px;
	margin-right: 20px;	
}
.mar-lr-max{
	margin-left: 50px;
	margin-right: 50px;
}

/* margin top bottom */
.mar-tb-min{
	margin-top: 1px;
	margin-bottom: 1px;
}
.mar-tb-small{
	margin-top: 5px;
	margin-bottom: 5px;
}
.mar-tb-middle{
	margin-top: 10px;
	margin-bottom: 10px;
}
.mar-tb-big{
	margin-top: 20px;
	margin-bottom: 20px;
}
.mar-tb-max{
	margin-top: 50px;
	margin-bottom: 50px;
}

/* pdding left right */
.pad-lr-min{
	padding-left: 1px;
	padding-right: 1px;
}
.pad-lr-small{
	padding-left: 5px;
	padding-right: 5px;
}
.pad-lr-maddle{
	padding-left: 10px;
	padding-right: 10px;
}
.pad-lr-big{
	padding-left: 20px;
	padding-right: 20px;
}
.pad-lr-max{
	padding-left: 50px;
	padding-right: 50px;
}

/* padding top bottom */
.pad-tb-min{
	padding-top: 1px;
	padding-bottom: 1px;
}
.pad-tb-small{
	padding-top: 5px;
	padding-bottom: 5px;
}
.pad-tb-middle{
	padding-top: 10px;
	padding-bottom: 10px;
}
.pad-tb-big{
	padding-top: 20px;
	padding-bottom: 20px;
}
.pad-tb-max{
	padding-top: 50px;
	padding-bottom: 50px;
}


</style>