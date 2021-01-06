<template>

	<div id = "content">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">管理员界面</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mr-auto">
                <li class="nav-item active pad-lr-max">
                    <a class="nav-link btn btn-dark" data-toggle="collapse" href="#user"  aria-expanded="true" aria-controls="user" >用户 </a>
                </li>
                <li class="nav-item active">
                    <a @click="selectObj" class="nav-link btn btn-dark" data-toggle="collapse" href="#objective"  aria-expanded="flase" aria-controls=" objective">客观题</a>
                </li>
                <li class="active nav-item pad-lr-max">
                    <a @click="selectSub" class="nav-link btn btn-dark" data-toggle="collapse" href="#subjective"  aria-expanded="flase" aria-controls=" subjective">主观题</a>
                </li>
                </ul>
                <div class="navbar-nav float-r active">
                    <a class="nav-link" href="#" @click="back">返回登录界面</a>
                </div>
            </div>
        </nav>
        <div class="content ">
            <!-- 用户界面 -->
            <div class="collapse in" id="user">
                <div class="card card-body" >
                    <div class="btn-group" role="group" aria-label="Basic example">
                        
                        <button class="btn btn-outline-dark offset-md-8" data-toggle="modal" data-target="#deleteModal" type=“button” title="点击删除用户">删除用户</button>
                        <button class="btn btn-outline-dark " data-toggle="modal" data-target="#updateModal" type=“button” title="点击修改用户信息">修改用户</button>
                        <button class="btn btn-outline-dark "  @click="selectAll" title="点击查看所有用户">刷新</button>
                        
                    </div>
                    <div class="dropdown-divider mar-tb-big" style="border-top:1px solid #CCCCCC;"></div>
                    <div class="row list-group list-group-horizontal">
                        <div class="col-md-3 list-group-item list-group-item-action list-group-item-dark">编号</div>
                        <div class="col-md-3 list-group-item list-group-item-action list-group-item-dark">用户名</div>
                        <div class="col-md-3 list-group-item list-group-item-action list-group-item-dark">账号</div>
                        <div class="col-md-3 list-group-item list-group-item-action list-group-item-dark">密码</div>
                        
                    </div>
                    <div class="dropdown-divider "></div>
                    <div class="row list-group list-group-horizontal" v-for="user in lists" :key="user.id">
                        <div class="col-md-3 list-group-item list-group-item-action list-group-item-secondary">{{user.id}}</div>
                        <div class="col-md-3 list-group-item list-group-item-action list-group-item-secondary">{{user.username}}</div>
                        <div class="col-md-3 list-group-item list-group-item-action list-group-item-secondary">{{user.email}}</div>
                        <div class="col-md-3 list-group-item list-group-item-action list-group-item-secondary">{{user.password}}</div>
                        
                    </div>
                    <div class="dropdown-divider "></div>
                    <!-- 修改模态框 -->
                    <div class="modal fade " id="updateModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">修改用户信息</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <input type="text" placeholder="编号" v-model="user.user_id">
                                <input type="text" placeholder="用户名" v-model="user.username">
                                <input type="email" placeholder="账号" v-model="user.useremail">
                                <input type="password" placeholder="密码" v-model="user.userpwd">
                            </div>
                            <div class="modal-footer">
                                <button @click="clearAll" type="button" class="btn btn-secondary" >清空</button>
                                <button @click="updateUser" type="button" class="btn btn-primary" >修改</button>
                            </div>
                            </div>
                        </div>
                    </div>
                     <!-- 删除模态框 -->
                    <div class="modal fade " id="deleteModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">删除用户</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <input type="text" placeholder="请输入编号" v-model="user.user_id">
                            </div>
                            <div class="modal-footer">
                                <button @click="clearAll" type="button" class="btn btn-secondary" >清空</button>
                                <button @click="deleteUser" type="button" class="btn btn-primary" >删除</button>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 客观题界面 -->
            <div class="collapsing" id="objective">
                <div class="card card-body" >
                    <div class="btn-group" role="group" aria-label="Basic example">
                        <button class="btn btn-outline-dark offset-md-8" data-toggle="modal" data-target="#objAdd" type=“button” title="点击添加试题">添加</button>
                        <button class="btn btn-outline-dark " data-toggle="modal" data-target="#objDelete" type=“button” title="点击删除试题">删除</button>
                        
                        <button class="btn btn-outline-dark " data-toggle="modal" data-target="#objUpdate" type=“button” title="点击修改试题">修改</button>
                        <button class="btn btn-outline-dark "  @click="selectObj" title="点击刷新">客观题</button>
                        
                    </div>
                    <div class="dropdown-divider mar-tb-big" style="border-top:1px solid #CCCCCC;"></div>
                    <div class="row  list-group list-group-horizontal">
                        <div class="col-md-1 list-group-item list-group-item-action list-group-item-dark">编号</div>
                        <div class="col-md-1 list-group-item list-group-item-action list-group-item-dark">难度</div>
                        <div class="col-md-1 list-group-item list-group-item-action list-group-item-dark">章节</div>
                        <div class="col-md-2 list-group-item list-group-item-action list-group-item-dark">题目</div>
                        <div class="col-md-1 list-group-item list-group-item-action list-group-item-dark">答案</div>
                        <div class="col-md-1 list-group-item list-group-item-action list-group-item-dark">选项A</div>
                        <div class="col-md-1 list-group-item list-group-item-action list-group-item-dark">选项B</div>
                        <div class="col-md-1 list-group-item list-group-item-action list-group-item-dark">选项C</div>
                        <div class="col-md-1 list-group-item list-group-item-action list-group-item-dark">选项D</div>
                        <div class="col-md-1 list-group-item list-group-item-action list-group-item-dark">课本</div>
                        <div class="col-md-1 list-group-item list-group-item-action list-group-item-dark">分数</div>
                        
                    </div>
                    <div class="dropdown-divider "></div>
                    <div class="row" v-for="obj in obj_lists" :key="obj.id">
                        <div class="col-md-1 list-group-item list-group-item-action list-group-item-secondary">{{obj.obj_id}}</div>
                        <div class="col-md-1 list-group-item list-group-item-action list-group-item-secondary">{{obj.obj_difficuly}}</div>
                        <div class="col-md-1 list-group-item list-group-item-action list-group-item-secondary">{{obj.obj_chapter}}</div>
                        <div class="col-md-2 list-group-item list-group-item-action list-group-item-secondary">{{obj.obj_title}}</div>
                        <div class="col-md-1 list-group-item list-group-item-action list-group-item-secondary">{{obj.obj_answer}}</div>
                        <div class="col-md-1 list-group-item list-group-item-action list-group-item-secondary">{{obj.obj_a}}</div>
                        <div class="col-md-1 list-group-item list-group-item-action list-group-item-secondary">{{obj.obj_b}}</div>
                        <div class="col-md-1 list-group-item list-group-item-action list-group-item-secondary">{{obj.obj_c}}</div>
                        <div class="col-md-1 list-group-item list-group-item-action list-group-item-secondary">{{obj.obj_d}}</div>
                        <div class="col-md-1 list-group-item list-group-item-action list-group-item-secondary">{{obj.obj_book}}</div>
                        <div class="col-md-1 list-group-item list-group-item-action list-group-item-secondary">{{obj.obj_grade}}</div>
                    </div>
                    <div class="dropdown-divider "></div>
                    <!--客观题 删除模态框 -->
                    <div class="modal fade " id="objDelete" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">删除试题</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <input type="text" placeholder="编号" v-model="obj_title.obj_id">
                            </div>
                            <div class="modal-footer">
                                <button @click="clearObj" type="button" class="btn btn-secondary" >清空</button>
                                <button @click="deleteObj" type="button" class="btn btn-primary" >删除</button>
                            </div>
                            </div>
                        </div>
                    </div>
                    <!--客观题 修改模态框 -->
                    <div class="modal fade " id="objUpdate" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">修改试题</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <input type="text" placeholder="编号" v-model="obj_title.obj_id">
                                <input type="text" placeholder="难度" v-model="obj_title.obj_difficuly">
                                <input type="text" placeholder="章节" v-model="obj_title.obj_chapter">
                                <input type="text" placeholder="题目" v-model="obj_title.obj_title">
                                <input type="text" placeholder="答案" v-model="obj_title.obj_answer">
                                <input type="text" placeholder="A" v-model="obj_title.obj_a">
                                <input type="text" placeholder="B" v-model="obj_title.obj_b">
                                <input type="text" placeholder="C" v-model="obj_title.obj_c">
                                <input type="text" placeholder="D" v-model="obj_title.obj_d">
                                <input type="text" placeholder="课本" v-model="obj_title.obj_book">
                                <input type="text" placeholder="分数" v-model="obj_title.obj_grade">
                            </div>
                            <div class="modal-footer">
                                <button @click="clearObj" type="button" class="btn btn-secondary" >清空</button>
                                <button @click="updateObj" type="button" class="btn btn-primary" >修改</button>
                            </div>
                            </div>
                        </div>
                    </div>
                    <!--客观题 添加模态框 -->
                    <div class="modal fade " id="objAdd" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">添加试题</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div style="color:#E88710;">
                                    难度:<input type="text" placeholder="难度（1~3）" v-model="obj_title.obj_difficuly">
                                    章节:<input type="text" placeholder="章节" v-model="obj_title.obj_chapter">
                                </div>
                                <div style="color:#E88710;">
                                    课本:<input type="text" placeholder="课本" v-model="obj_title.obj_book">
                                    分数:<input type="text" placeholder="分数" v-model="obj_title.obj_grade">
                                </div>
                                <div style="color:#E88710;">题目:</div>
                                <textarea type="text" placeholder="题目(200字以内)" v-model="obj_title.obj_title" cols="60" rows="3"></textarea>
                                <div style="color:#E88710;">答案 :<input type="text" placeholder="答案" v-model="obj_title.obj_answer"></div>
                                
                                <div style="color:#E88710;">
                                    选项A:<input type="text" placeholder="A" v-model="obj_title.obj_a" style="width:180px;">
                                    选项B:<input type="text" placeholder="B" v-model="obj_title.obj_b" style="width:180px;">
                                </div>
                                <div style="color:#E88710;">
                                    选项C:<input type="text" placeholder="C" v-model="obj_title.obj_c" style="width:180px;">
                                    选项D:<input type="text" placeholder="D" v-model="obj_title.obj_d" style="width:180px;">
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button @click="clearObj" type="button" class="btn btn-secondary" >清空</button>
                                <button @click="addObj" type="button" class="btn btn-primary" >添加</button>
                            </div>
                            </div>
                        </div>
                    </div>
                    <!--用户 修改模态框 -->
                    <div class="modal fade " id="updateModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">修改用户信息</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <input type="text" placeholder="编号" v-model="user.user_id">
                                <input type="text" placeholder="用户名" v-model="user.username">
                                <input type="email" placeholder="账号" v-model="user.useremail">
                                <input type="password" placeholder="密码" v-model="user.userpwd">
                            </div>
                            <div class="modal-footer">
                                <button @click="clearAll" type="button" class="btn btn-secondary" >清空</button>
                                <button @click="updateUser" type="button" class="btn btn-primary" >修改</button>
                            </div>
                            </div>
                        </div>
                    </div>
                     <!--用户 删除模态框 -->
                    <div class="modal fade " id="deleteModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">删除用户</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <input type="text" placeholder="请输入编号" v-model="user.user_id">
                            </div>
                            <div class="modal-footer">
                                <button @click="clearAll" type="button" class="btn btn-secondary" >清空</button>
                                <button @click="deleteUser" type="button" class="btn btn-primary" >删除</button>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 主观题界面 -->
            <div class="collapsing" id="subjective">
                <div class="card card-body" >
                    <div class="btn-group" role="group" aria-label="Basic example">
                        <button class="btn btn-outline-dark offset-md-8" data-toggle="modal" data-target="#subAdd" type=“button” title="点击添加试题">添加</button>
                        <button class="btn btn-outline-dark " data-toggle="modal" data-target="#subDelete" type=“button” title="点击删除试题">删除</button>
                        
                        <button class="btn btn-outline-dark " data-toggle="modal" data-target="#subUpdate" type=“button” title="点击修改试题">修改</button>
                        <button class="btn btn-outline-dark "  @click="selectSub" title="点击刷新">主观题</button>
                        
                    </div>
                    <div class="dropdown-divider mar-tb-big" style="border-top:1px solid #CCCCCC;"></div>
                    <div class="row list-group list-group-horizontal">
                        <div class="col-md-1 list-group-item list-group-item-action list-group-item-dark">编号</div>
                        <div class="col-md-1 list-group-item list-group-item-action list-group-item-dark">难度</div>
                        <div class="col-md-1 list-group-item list-group-item-action list-group-item-dark">章节</div>
                        <div class="col-md-4 list-group-item list-group-item-action list-group-item-dark">题目</div>
                        <div class="col-md-3 list-group-item list-group-item-action list-group-item-dark">答案</div>
                        <div class="col-md-1 list-group-item list-group-item-action list-group-item-dark">课本</div>
                        <div class="col-md-1 list-group-item list-group-item-action list-group-item-dark">分数</div>
                        
                    </div>
                    <div class="dropdown-divider "></div>
                    <div class="row" v-for="sub in sub_lists" :key="sub.id">
                        <div class="col-md-1 list-group-item list-group-item-action list-group-item-secondary">{{sub.sub_id}}</div>
                        <div class="col-md-1 list-group-item list-group-item-action list-group-item-secondary">{{sub.sub_difficuly}}</div>
                        <div class="col-md-1 list-group-item list-group-item-action list-group-item-secondary">{{sub.sub_chapter}}</div>
                        <div class="col-md-4 list-group-item list-group-item-action list-group-item-secondary">{{sub.sub_title}}</div>
                        <div class="col-md-3 list-group-item list-group-item-action list-group-item-secondary">{{sub.sub_answer}}</div>
                        <div class="col-md-1 list-group-item list-group-item-action list-group-item-secondary">{{sub.sub_book}}</div>
                        <div class="col-md-1 list-group-item list-group-item-action list-group-item-secondary">{{sub.sub_grade}}</div>
                    </div>
                    <div class="dropdown-divider "></div>
                    <!--主观题 删除模态框 -->
                    <div class="modal fade " id="subDelete" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">删除试题</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <input type="text" placeholder="编号" v-model="sub_title.sub_id">
                            </div>
                            <div class="modal-footer">
                                <button @click="clearSub" type="button" class="btn btn-secondary" >清空</button>
                                <button @click="deleteSub" type="button" class="btn btn-primary" >删除</button>
                            </div>
                            </div>
                        </div>
                    </div>
                    <!--主观题 修改模态框 -->
                    <div class="modal fade " id="subUpdate" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">修改试题</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <input type="text" placeholder="编号" v-model="sub_title.sub_id">
                                <input type="text" placeholder="难度" v-model="sub_title.sub_difficuly">
                                <input type="text" placeholder="章节" v-model="sub_title.sub_chapter">
                                <input type="text" placeholder="题目" v-model="sub_title.sub_title">
                                <input type="text" placeholder="答案" v-model="sub_title.sub_answer">
                                <input type="text" placeholder="课本" v-model="sub_title.sub_book">
                                <input type="text" placeholder="分数" v-model="sub_title.sub_grade">
                            </div>
                            <div class="modal-footer">
                                <button @click="clearSub" type="button" class="btn btn-secondary" >清空</button>
                                <button @click="updateSub" type="button" class="btn btn-primary" >修改</button>
                            </div>
                            </div>
                        </div>
                    </div>
                    <!--主观题 添加模态框 -->
                    <div class="modal fade " id="subAdd" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">添加试题</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <input type="text" placeholder="难度" v-model="sub_title.sub_difficuly">
                                <input type="text" placeholder="章节" v-model="sub_title.sub_chapter">
                                <input type="text" placeholder="题目" v-model="sub_title.sub_title">
                                <input type="text" placeholder="答案" v-model="sub_title.sub_answer">
                                <input type="text" placeholder="课本" v-model="sub_title.sub_book">
                                <input type="text" placeholder="分数" v-model="sub_title.sub_grade">
                            </div>
                            <div class="modal-footer">
                                <button @click="clearSub" type="button" class="btn btn-secondary" >清空</button>
                                <button @click="addSub" type="button" class="btn btn-primary" >添加</button>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
	</div>
</template>
 
<script>
export default {
  name: 'admin',
  data () {
    return {
        sub_lists:[],
        obj_lists:[],
        lists:[],
        user:{
            user_id:'',
            username:'',
            useremail:'',
            userpwd:''
        },
        obj_title:{
            obj_id:'',
            obj_difficuly:'',
            obj_chapter:'',
            obj_title:'',
            obj_answer:'',
            obj_a:'',
            obj_b:'',
            obj_c:'',
            obj_d:'',
            obj_book:'',
            obj_grade:''
        },
        sub_title:{
            sub_id:'',
            sub_difficuly:'',
            sub_chapter:'',
            sub_title:'',
            sub_answer:'',
            sub_book:'',
            sub_grade:''
        }
    }
  },
  mounted (){//页面加载后立即执行
    const self = this;
    self.selectAll();
  },
  methods:{
    deleteSub(){
         const self = this;
        if(self.sub_title.sub_id != ""){
            self.$axios({
                method:'post',
                url: 'http://127.0.0.1:10520/api/title/deleteSub',
                data:{
                    sub_id:self.sub_title.sub_id,
                }
            })
            .then( res => {
                switch(res.data){
                    case 0:
                        alert("删除成功！");
                        break;
                    case -1:
                        alert("题目不存在");
                        break;
                }
            })
            .catch( err => {
                console.log(err);
            })
        } else {
            alert("题目编号不能为空！");
        }
    },
    updateSub(){
        const self = this;
        if(self.sub_title.sub_id != "" && self.sub_title.sub_difficuly != "" && self.sub_title.sub_chapter != "" && self.sub_title.sub_title != ""
        && self.sub_title.sub_answer != "" && self.sub_title.sub_book != "" && self.sub_title.sub_grade != ""){
            self.$axios({
                method:'post',
                url: 'http://127.0.0.1:10520/api/title/updateSub',
                data: {
                    sub_id:self.sub_title.sub_id,
                    sub_difficuly:self.sub_title.sub_difficuly,
                    sub_chapter:self.sub_title.sub_chapter,
                    sub_title:self.sub_title.sub_title,
                    sub_answer:self.sub_title.sub_answer,
                    sub_a:self.sub_title.sub_a,
                    sub_b:self.sub_title.sub_b,
                    sub_c:self.sub_title.sub_c,
                    sub_d:self.sub_title.sub_d,
                    sub_book:self.sub_title.sub_book,
                    sub_grade:self.sub_title.sub_grade
                }
            })
            .then( res => {
                switch(res.data){
                    case 0:
                        alert("修改成功！");
                        break;
                }
            })
            .catch( err => {
                console.log(err);
            })
        } else {
            alert("填写不能为空！");
        }
    },
    clearSub(){
        this.sub_title.sub_id = '',
        this.sub_title.sub_difficuly='',
        this.sub_title.sub_chapter='',
        this.sub_title.sub_title='',
        this.sub_title.sub_answer='',
        this.sub_title.sub_book='',
        this.sub_title.sub_grade=''
    },
    addSub(){
        const self = this;
        if(self.sub_title.sub_difficuly != "" && self.sub_title.sub_chapter != "" && self.sub_title.sub_title != ""
        && self.sub_title.sub_answer != "" && self.sub_title.sub_book != "" && self.sub_title.sub_grade != ""){
            self.$axios({
                method:'post',
                url: 'http://127.0.0.1:10520/api/title/addSub',
                data: {
                    sub_difficuly:self.sub_title.sub_difficuly,
                    sub_chapter:self.sub_title.sub_chapter,
                    sub_title:self.sub_title.sub_title,
                    sub_answer:self.sub_title.sub_answer,
                    sub_book:self.sub_title.sub_book,
                    sub_grade:self.sub_title.sub_grade
                }
            })
            .then( res => {
                switch(res.data){
                    case 0:
                        alert("添加成功！");
                        break;
                }
            })
            .catch( err => {
                console.log(err);
            })
        } else {
            alert("填写不能为空！");
        }
    },
    selectSub(){
        const self = this;
        self.$axios({
            method:'post',
            url: 'http://127.0.0.1:10520/api/title/selectSub',
            
        })
        .then( res => {
            // let data = res.data[0];
            // console.log(res.data);
            self.sub_lists = res.data;
        })
        .catch( err => {
            console.log(err);
        })
    },
    deleteObj(){
         const self = this;
        if(self.obj_title.obj_id != ""){
            self.$axios({
                method:'post',
                url: 'http://127.0.0.1:10520/api/title/delete',
                data:{
                    obj_id:self.obj_title.obj_id,
                }
            })
            .then( res => {
                switch(res.data){
                    case 0:
                        alert("删除成功！");
                        break;
                    case -1:
                        alert("题目不存在");
                        break;
                }
            })
            .catch( err => {
                console.log(err);
            })
        } else {
            alert("题目编号不能为空！");
        }
    },
    updateObj(){
        const self = this;
        if(self.obj_title.obj_id != "" && self.obj_title.obj_difficuly != "" && self.obj_title.obj_chapter != "" && self.obj_title.obj_title != ""
        && self.obj_title.obj_answer != "" && self.obj_title.obj_a != "" && self.obj_title.obj_b != ""
         && self.obj_title.obj_c != ""  && self.obj_title.obj_d != ""&& self.obj_title.obj_book != "" && self.obj_title.obj_grade != ""){
            self.$axios({
                method:'post',
                url: 'http://127.0.0.1:10520/api/title/update',
                data: {
                    obj_id:self.obj_title.obj_id,
                    obj_difficuly:self.obj_title.obj_difficuly,
                    obj_chapter:self.obj_title.obj_chapter,
                    obj_title:self.obj_title.obj_title,
                    obj_answer:self.obj_title.obj_answer,
                    obj_a:self.obj_title.obj_a,
                    obj_b:self.obj_title.obj_b,
                    obj_c:self.obj_title.obj_c,
                    obj_d:self.obj_title.obj_d,
                    obj_book:self.obj_title.obj_book,
                    obj_grade:self.obj_title.obj_grade
                }
            })
            .then( res => {
                switch(res.data){
                    case 0:
                        alert("修改成功！");
                        break;
                }
            })
            .catch( err => {
                console.log(err);
            })
        } else {
            alert("填写不能为空！");
        }
    },
    clearObj(){
        this.obj_title.obj_id = '',
        this.obj_title.obj_difficuly='',
        this.obj_title.obj_chapter='',
        this.obj_title.obj_title='',
        this.obj_title.obj_answer='',
        this.obj_title.obj_a='',
        this.obj_title.obj_b='',
        this.obj_title.obj_c='',
        this.obj_title.obj_d='',
        this.obj_title.obj_book='',
        this.obj_title.obj_grade=''
    },
    addObj(){
        const self = this;
        
        if(self.obj_title.obj_difficuly != "" && self.obj_title.obj_chapter != "" && self.obj_title.obj_title != ""
        && self.obj_title.obj_answer != "" && self.obj_title.obj_a != "" && self.obj_title.obj_b != ""
         && self.obj_title.obj_c != ""  && self.obj_title.obj_d != ""&& self.obj_title.obj_book != "" && self.obj_title.obj_grade != ""){
            self.$axios({
                method:'post',
                url: 'http://127.0.0.1:10520/api/title/add',
                data: {
                    obj_difficuly:self.obj_title.obj_difficuly,
                    obj_chapter:self.obj_title.obj_chapter,
                    obj_title:self.obj_title.obj_title,
                    obj_answer:self.obj_title.obj_answer,
                    obj_a:self.obj_title.obj_a,
                    obj_b:self.obj_title.obj_b,
                    obj_c:self.obj_title.obj_c,
                    obj_d:self.obj_title.obj_d,
                    obj_book:self.obj_title.obj_book,
                    obj_grade:self.obj_title.obj_grade
                }
            })
            .then( res => {
                switch(res.data){
                    case 0:
                        alert("添加成功！");
                        break;
                    case -1:
                        alert("题目已存在！！！");
                        break;
                }
            })
            .catch( err => {
                console.log(err);
            })
        } else {
            alert("填写不能为空！");
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
    clearAll() {
        this.user.user_id = ''
        this.user.username = ''
        this.user.useremail = ''
        this.user.userpwd = ''
    },
    selectAll(){
        const self = this;
        self.$axios({
            method:'post',
            url: 'http://127.0.0.1:10520/api/user/select',
            
        })
        .then( res => {
            // let data = res.data[0];
            //console.log(res.data);
            self.lists = res.data;
            // console.log(this.lists);
            // self.user.user_id = data.id;
            // self.user.username = data.username;
            // self.user.useremail = data.email;
            // self.user.userpwd = data.password
            
        })
        .catch( err => {
            console.log(err);
        })
    },
    updateUser(){
        const self = this;
        if(self.user.user_id != "" && self.user.username != "" && self.user.useremail != "" && self.user.userpwd != ""){
					self.$axios({
						method:'post',
						url: 'http://127.0.0.1:10520/api/user/update',
						data:{
                            id:self.user.user_id,
                            username: self.user.username,
							email: self.user.useremail,
							password: self.user.userpwd
                        }
					})
					.then( res => {
						switch(res.data){
							case 0:
								alert("修改成功！");
								break;
							case -1:
								alert("用户不存在");
								break;
						}
					})
					.catch( err => {
						console.log(err);
					})
				} else {
					alert("填写不能为空！");
				}
    },
    deleteUser(){
        const self = this;
        if(self.user.user_id != ""){
					self.$axios({
						method:'post',
						url: 'http://127.0.0.1:10520/api/user/delete',
						data:{
                            id:self.user.user_id
                        }
					})
					.then( res => {
						switch(res.data){
							case 0:
								alert("删除成功！");
								break;
							case -1:
								alert("用户不存在");
								break;
						}
					})
					.catch( err => {
						console.log(err);
					})
				} else {
					alert("用户编号不能为空！");
				}
    },
  	back(){
  		this.$router.push('/')
    }
  }
}

</script>
<style scoped="scoped">
/* .collapsing{
    overflow: hidden;
} */
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
.navbar{
    padding-left: 10%;
    padding-right: 10%;
}
.content{
    padding-left: 10%;
    padding-right: 10%;
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