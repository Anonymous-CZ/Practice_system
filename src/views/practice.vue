<template>
<div class="">
  <nav class="navbar navbar-expand-lg navbar-light bg-light content">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <a class="navbar-brand" href="#">剩余时间:<span>{{hour? hourString+':'+minuteString+':'+secondString : minuteString+':'+secondString}}</span></a>
        <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
            <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <!-- <li class="nav-item active pad-lr-max">
                <a class="nav-link btn btn-success" data-toggle="collapse" href="#user"  aria-expanded="true" aria-controls="user">排名 <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active" >
               <a class="nav-link btn btn-success" data-toggle="modal" data-target="#practice" type=“button” title="点击选择">练习 <span class="sr-only">(current)</span></a>
            </li> -->
            </ul>
            <form class="form-inline my-2 my-lg-0">
            <!-- <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"> -->
            <img src="./img/真实.jpg" style="height: 40px;width: 40px;border-radius: 25px;" alt="">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit" ><div  v-for="user in userLis" :key="user.id">{{user.username}}</div></button>
            </form>
        </div>
        </nav>
	<div class="content">
    <div v-if="!showAnswer">
      <div  v-for="(obj, index) in objTitle"  :key="obj.id">
        <div >
          {{index + 1}}、{{obj.obj_title}} 
         
          </div>
          <div>
             <!-- 难度为：{{obj.obj_difficuly}} -->
          </div>
        <div class="row">
        
        <div class="col"><input type="radio" id="" value="A" v-model="userAnswerObj[index]">A、{{obj.obj_a}}</div>
        
        <div class="col"><input type="radio" id="" value="B" v-model="userAnswerObj[index]">B、{{obj.obj_b}}</div>
        </div>
        <div class="row">
       
        <div class="col"> <input type="radio" id="" value="C" v-model="userAnswerObj[index]">C、{{obj.obj_c}}</div>
        
        <div class="col"><input type="radio" id="" value="D" v-model="userAnswerObj[index]">D、{{obj.obj_d}}</div>
      </div>
      <br>
      </div>
    </div>
    <button v-if="show" class="btn btn-outline-dark" @click="createdTitle">开始考试</button>
    <button v-if="!show && !showAnswer" class="btn btn-outline-dark" @click="endTest">结束考试并查看答案</button>
    <!-- <button v-if="showAnswer" class="btn btn-outline-dark" @click="showAnswer" >查看答案</button> -->
    <!-- 展示答案组件 -->
    <div v-if="showAnswer">
      <div v-for="(obj, index) in objTitle"  :key="obj.id" >
        <div  v-if="userAnswerObj[index] == obj.obj_answer">
          <div >{{index + 1}}、{{obj.obj_title}}</div>
          <div style="color:green;">
              答案为：{{obj.obj_answer}}  
              
          </div>
          <br>
          <div class="row">
          
          <div class="col"><input type="radio" id="" value="A" v-model="userAnswerObj[index]">A、{{obj.obj_a}}</div>
          
          <div class="col"><input type="radio" id="" value="B" v-model="userAnswerObj[index]">B、{{obj.obj_b}}</div>
          </div>
          <div class="row">
          
          <div class="col"><input type="radio" id="" value="C" v-model="userAnswerObj[index]">C、{{obj.obj_c}}</div>
          
          <div class="col"><input type="radio" id="" value="D" v-model="userAnswerObj[index]">D、{{obj.obj_d}}</div>
          </div>
        
        </div>
        <div v-else>
          <div >{{index + 1}}、{{obj.obj_title}}</div>
          <div style="color:red;">
              答案为：{{obj.obj_answer}}  
          </div>
          <br>
          <div class="row">
          
          <div class="col"><input type="radio" id="" value="A" v-model="userAnswerObj[index]">A、{{obj.obj_a}}</div>
          
          <div class="col"><input type="radio" id="" value="B" v-model="userAnswerObj[index]">B、{{obj.obj_b}}</div>
          </div>
          <div class="row">
          
          <div class="col"><input type="radio" id="" value="C" v-model="userAnswerObj[index]">C、{{obj.obj_c}}</div>
          
          <div class="col"><input type="radio" id="" value="D" v-model="userAnswerObj[index]">D、{{obj.obj_d}}</div>
          </div>
        </div>
      <br>
      </div>
    </div>
    <div v-if="showAnswer" >
      <div v-if="sumGrade > 60" style="color:green;">
        得分：{{sumGrade}}
      </div>
      <div v-else style="color:red;">
        得分：{{sumGrade}}
      </div>
      <div class="dropdown-divider mar-tb-big" style="border-top:1px solid #CCCCCC;"></div>
    </div>
    
    <button v-if="showAnswer" class="btn btn-outline-dark" @click="userInformation">返回</button>
  </div>
  <div class="dropdown-divider mar-tb-big" style="border-top:1px solid #CCCCCC;"></div>
</div>
</template>
 
<script>
export default {
  name: 'home',
   data () {
      return {
        temLis:[],//暂存题目列表
        Totalscore: 0,//分数
        showAnswer:false,//是否展示答案
        useremail:'',//用户账号
        sumGrade: 0,//分数和
        show:true,//是否显示
        remainTime:300,//时间 单位s 默认值 createdTitle函数中会修改
        objTitle:[],//按照要求筛选后的题目
        userAnswerObj:[],//用户回答
        userLis:[],//信息
        obj_lists:[],//题目
        hour: '',//时
        minute: '',//分
        second: '',//秒
        promiseTimer: '',
        selected: '1',//选择的难度
        checkedChapter: [],//选择的章节
        book:'JAVA',//课本
        obj_title:{
            obj_id:'',//题目编号
            obj_difficuly:'',//题目难度
            obj_chapter:'',//题目章节
            obj_title:'',//题目
            obj_answer:'',//题目答案
            obj_a:'',//选项内容
            obj_b:'',
            obj_c:'',
            obj_d:'',
            obj_book:'',//课本
            obj_grade:''//题目分数
        },
      }
    },
    mounted () {
      this.getParams();
      this.selectObj();
      // this.createdTitle();
    },
    methods: {
      endTest(){//时间清零，
        this.remainTime = 0;
        this.startTiming();
        // clearInterval(self.promiseTimer);
      },
      addGrade(){//添加成绩
        const self = this;
        self.$axios({
            method:'post',
            url: 'http://127.0.0.1:10520/api/title/addGrade',
            data: {
                username: self.userLis[0].username,
                usercount: self.userLis[0].email,
                grade: self.sumGrade,
                // password: self.form.userpwd
            }
        })
        .then( res => {
            switch(res.data){
                    case 0:
                        alert("考试结束！！！");//数据添加成功
                        break;
                }
        })
        .catch( err => {
            console.log(err);
        })
      },      
			userInformation(){//用户信息
				const self = this;
				self.$router.push({  
						path: '/src/views/home.vue',   
						name: 'home',  
						params: {   //传参
							// username: self.form.username,
							useremail: self.userLis[0].email,
						}  
					}) 
			},
      endResults(){//计算分数
        this.showAnswer = true;
        //计算分数
        for(var i = 0;i < this.userAnswerObj.length;i++){
          this.Totalscore = this.Totalscore + (this.objTitle[i].obj_grade - 0);
          if(this.userAnswerObj[i] == this.objTitle[i].obj_answer){ 
            this.sumGrade = this.sumGrade + (this.objTitle[i].obj_grade - 0);
          }
        }
        this.sumGrade = this.sumGrade / this.Totalscore * 100;
        this.sumGrade = Math.round(this.sumGrade);
      },
      startTiming(){//time
        // var remainTime = 20;
        this.hour = Math.floor((this.remainTime / 3600) % 24);
        this.minute = Math.floor((this.remainTime / 60) % 60);
        this.second = Math.floor(this.remainTime % 60);
        this.countDowm();
      },
      createdTitle(){//根据选择的课本、章节和难度筛选题目
        const self = this;
        self.show = false;
        var len = self.obj_lists.length;//数据库中数据长度
        // console.log(len);
        if(self.selected == 1){//难度为1时
          this.remainTime = 300;//简单题时间
          this.startTiming();//开始计时
          var difficulty_1 = 6;
          var difficulty_2 = 4;
          // self.temLis.splice(0,self.temLis.length);//清空暂存列表
          for(var i = 0;i < len;i++){
            // console.log(self.obj_lists[i].obj_id);
            if(self.book == self.obj_lists[i].obj_book){//判断书籍
              if(self.selected == self.obj_lists[i].obj_difficuly){//难度为1
                for(var j = 0;j < self.checkedChapter.length;j++){//循环判断章节
                  if(self.checkedChapter[j] == self.obj_lists[i].obj_chapter)
                    self.objTitle.push(self.obj_lists[i]);
                }
              }
              if(self.obj_lists[i].obj_difficuly == '2'){//难度为2
                for(var j = 0;j < self.checkedChapter.length;j++){//循环判断章节
                  if(self.checkedChapter[j] == self.obj_lists[i].obj_chapter)
                    self.temLis.push(self.obj_lists[i]);//暂存难度为2的题目
                }
              }
              
              // console.log(self.objTitle[i]);
            }
          }
          var objLen = Math.max(self.objTitle.length,self.temLis.length);
          for(var k = 0 ;k < objLen;k++){
            if(self.objTitle.length > difficulty_1 || self.temLis.length > difficulty_2){
              if(self.objTitle.length > difficulty_1){
                self.objTitle.splice(Math.floor(Math.random() * (self.objTitle.length)),1);//随机删除难度为1
              }
              
              // console.log(Math.floor(Math.random() * (self.objTitle.length)));
              if(self.temLis.length > difficulty_2){
                self.temLis.splice(Math.floor(Math.random() * (self.temLis.length)),1);//随机删除难度为2
              }
              
            }else{
              break;
            }
          }
          // console.log(self.temLis);
          for(var l = 0;l < self.temLis.length;l++){
            self.objTitle.push(self.temLis[l]);
          }
        }else if(self.selected == 2){//难度为2
          this.remainTime = 600;//简单题时间
          this.startTiming();//开始计时
          var difficulty_1 = 2;
          var difficulty_2 = 6;
          var difficulty_3 = 2;
          var temLis_3 = new Array();//暂存难度为3的题目
          // self.temLis.splice(0,self.temLis.length);//清空暂存列表
          for(var i = 0;i < len;i++){
            // console.log(self.obj_lists[i].obj_id);
            if(self.book == self.obj_lists[i].obj_book){//判断书籍
              if(self.obj_lists[i].obj_difficuly == '1'){//难度为1
                for(var j = 0;j < self.checkedChapter.length;j++){//循环判断章节
                  if(self.checkedChapter[j] == self.obj_lists[i].obj_chapter)
                    self.objTitle.push(self.obj_lists[i]);
                }
              }
              if(self.obj_lists[i].obj_difficuly == '2'){//难度为2
                for(var j = 0;j < self.checkedChapter.length;j++){//循环判断章节
                  if(self.checkedChapter[j] == self.obj_lists[i].obj_chapter)
                    self.temLis.push(self.obj_lists[i]);//暂存难度为2的题目
                }
              }
              if(self.obj_lists[i].obj_difficuly == '3'){//难度为3
                for(var j = 0;j < self.checkedChapter.length;j++){//循环判断章节
                  if(self.checkedChapter[j] == self.obj_lists[i].obj_chapter)
                    temLis_3.push(self.obj_lists[i]);//暂存难度为3的题目
                }
              }
              // console.log(self.objTitle[i]);
            }
          }
          var objLen = Math.max(self.objTitle.length,self.temLis.length,temLis_3.length);
          for(var k = 0 ;k < objLen;k++){
            if(self.objTitle.length > difficulty_1 || self.temLis.length > difficulty_2 || temLis_3.length > difficulty_3){
              if(self.objTitle.length > difficulty_1){
                self.objTitle.splice(Math.floor(Math.random() * (self.objTitle.length)),1);//随机删除难度为1
              }
              // console.log(Math.floor(Math.random() * (self.objTitle.length)));
              if(self.temLis.length > difficulty_2){
                self.temLis.splice(Math.floor(Math.random() * (self.temLis.length)),1);//随机删除难度为2
              }
              if(temLis_3.length > difficulty_3){
                temLis_3.splice(Math.floor(Math.random() * (temLis_3.length)),1);//随机删除难度为3
              }
              
            }else{
              break;
            }
          }
          console.log(temLis_3);
          for(var l = 0;l < self.temLis.length;l++){
            self.objTitle.push(self.temLis[l]);
          }
          for(var l = 0;l < temLis_3.length;l++){
            self.objTitle.push(temLis_3[l]);
          }
        }else{//最高难度
          this.remainTime = 900;//简单题时间
          this.startTiming();//开始计时
          var difficulty_1 = 2;
          var difficulty_2 = 2;
          var difficulty_3 = 6;
          var temLis_3 = new Array();//暂存难度为3的题目
          // self.temLis.splice(0,self.temLis.length);//清空暂存列表
          for(var i = 0;i < len;i++){
            // console.log(self.obj_lists[i].obj_id);
            if(self.book == self.obj_lists[i].obj_book){//判断书籍
              if(self.obj_lists[i].obj_difficuly == '1'){//难度为1
                for(var j = 0;j < self.checkedChapter.length;j++){//循环判断章节
                  if(self.checkedChapter[j] == self.obj_lists[i].obj_chapter)
                    self.objTitle.push(self.obj_lists[i]);
                }
              }
              if(self.obj_lists[i].obj_difficuly == '2'){//难度为2
                for(var j = 0;j < self.checkedChapter.length;j++){//循环判断章节
                  if(self.checkedChapter[j] == self.obj_lists[i].obj_chapter)
                    self.temLis.push(self.obj_lists[i]);//暂存难度为2的题目
                }
              }
              if(self.obj_lists[i].obj_difficuly == '3'){//难度为3
                for(var j = 0;j < self.checkedChapter.length;j++){//循环判断章节
                  if(self.checkedChapter[j] == self.obj_lists[i].obj_chapter)
                    temLis_3.push(self.obj_lists[i]);//暂存难度为3的题目
                }
              }
              // console.log(self.objTitle[i]);
            }
          }
          var objLen = Math.max(self.objTitle.length,self.temLis.length,temLis_3.length);
          for(var k = 0 ;k < objLen;k++){
            if(self.objTitle.length > difficulty_1 || self.temLis.length > difficulty_2 || temLis_3.length > difficulty_3){
              if(self.objTitle.length > difficulty_1){
                self.objTitle.splice(Math.floor(Math.random() * (self.objTitle.length)),1);//随机删除难度为1
              }
              // console.log(Math.floor(Math.random() * (self.objTitle.length)));
              if(self.temLis.length > difficulty_2){
                self.temLis.splice(Math.floor(Math.random() * (self.temLis.length)),1);//随机删除难度为2
              }
              if(temLis_3.length > difficulty_3){
                temLis_3.splice(Math.floor(Math.random() * (temLis_3.length)),1);//随机删除难度为3
              }
              
            }else{
              break;
            }
          }
          console.log(temLis_3);
          for(var l = 0;l < self.temLis.length;l++){
            self.objTitle.push(self.temLis[l]);
          }
          for(var l = 0;l < temLis_3.length;l++){
            self.objTitle.push(temLis_3[l]);
          }
        }
        
        
        
      },
      getParams() {
        // 取到路由带过来的参数   将数据放在当前组件的数据内 
        this.selected = this.$route.params.selected;
        this.book = this.$route.params.book;
        this.checkedChapter = this.$route.params.checkedChapter;
        this.userLis = this.$route.params.userLis;
     },
      countDowm () {
        var self = this
        clearInterval(this.promiseTimer)
        this.promiseTimer = setInterval(function () {
          if (self.hour === 0) {
            if (self.minute !== 0 && self.second === 0) {
              self.second = 59
              self.minute -= 1
            } else if (self.minute === 0 && self.second === 0) {
              self.second = 0
              self.$emit('countDowmEnd', true)
              clearInterval(self.promiseTimer)
              self.endResults()//时间为0后执行
              self.addGrade()
            } else {
              self.second -= 1
            }
          } else {
            if (self.minute !== 0 && self.second === 0) {
              self.second = 59
              self.minute -= 1
            } else if (self.minute === 0 && self.second === 0) {
              self.hour -= 1
              self.minute = 59
              self.second = 59
            } else {
              self.second -= 1
            }
          }
        }, 1000)
      },
      formatNum (num) {
        return num < 10 ? '0' + num : '' + num
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
    },
    computed: {
      hourString () {
        return this.formatNum(this.hour)
      },
      minuteString () {
        return this.formatNum(this.minute)
      },
      secondString () {
        return this.formatNum(this.second)
      }
    }
}
</script>
<style scoped = "scoped">
/* 导航栏 */
.btn-outline-success {
  color: #ffffff;
  border-color: #01b199;
}
.bg-light {
  background-color: #01b199 !important;
}
.content{
    padding-left: 20%;
    padding-right: 20%;
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

/* 通用标签 */

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