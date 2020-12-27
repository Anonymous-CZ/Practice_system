<template>
	<!-- <div>我是test
	<button @click="back">点我返回</button>
  <div>{{book}}</div>
  <div>{{userLis}}</div>
	</div> -->
  <div>
    <div class="background">
      <img :src="imgSrc" width="100%" height="100%" alt="" />
    </div>
    <div class="front">
      <h1 style="color:white;">丁骁</h1>
      
    </div>
  </div>
	 
</template>
 
<script>
export default {
  name: 'aaa',
  data () {
    return {
      // userLis: [],
      // selected: '',
      // checkedChapter: [],
      // book: 'JAVA',
      imgSrc: require('../views/img/真实.jpg'),
    }
  },
  // mounted() {
  //   this.getParams();
  // },
  // methods:{
  //   getParams() {
  //       // 取到路由带过来的参数   将数据放在当前组件的数据内 
  //       this.selected = this.$route.params.selected;
  //       this.book = this.$route.params.book;
  //       this.checkedChapter = this.$route.params.checkedChapter;
  //       this.userLis = this.$route.params.userLis;
  //    },
  // 	back(){
  // 		this.$router.push('/')
  // 	}
  // }
}
</script>
<style scoped = "scoped">
.background{
    width:100%;  
    height:100%;  /**宽高100%是为了图片铺满屏幕 */
    z-index:-1;
    position: absolute;
}
 
.front{
    z-index:1;
    position: absolute;
}
</style>