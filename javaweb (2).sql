/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : javaweb

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 22/12/2020 23:50:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade`  (
  `gra_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_count` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_grade` int(11) NULL DEFAULT NULL,
  `end_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`gra_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES (1, '小华', '123', 20, '2020-12-01 22:59:46');
INSERT INTO `grade` VALUES (2, '小华', '123', 20, '2020-12-02 17:33:35');
INSERT INTO `grade` VALUES (3, '小华', '123', 40, '2020-12-02 17:53:43');
INSERT INTO `grade` VALUES (4, '小华', '123', 40, '2020-12-02 17:58:25');
INSERT INTO `grade` VALUES (5, '小华', '123', 60, '2020-12-02 17:59:52');
INSERT INTO `grade` VALUES (6, '小华', '123', 60, '2020-12-02 18:13:04');
INSERT INTO `grade` VALUES (7, '小华', '123', 40, '2020-12-02 18:20:00');
INSERT INTO `grade` VALUES (8, '小华', '123', 60, '2020-12-02 18:20:35');
INSERT INTO `grade` VALUES (9, '小明', '1234', 60, '2020-12-02 18:22:17');
INSERT INTO `grade` VALUES (10, '小华', '123', 40, '2020-12-02 19:07:13');
INSERT INTO `grade` VALUES (11, '小明', '1234', 40, '2020-12-03 19:55:14');
INSERT INTO `grade` VALUES (12, '小明', '1234', 60, '2020-12-03 20:19:50');
INSERT INTO `grade` VALUES (13, '小明', '1234', 100, '2020-12-03 20:20:08');
INSERT INTO `grade` VALUES (14, '小明', '1234', 100, '2020-12-03 20:25:02');
INSERT INTO `grade` VALUES (15, '小明', '1234', 100, '2020-12-03 20:29:41');
INSERT INTO `grade` VALUES (16, '小明', '1234', 67, '2020-12-03 20:33:35');
INSERT INTO `grade` VALUES (17, '小明', '1234', 100, '2020-12-03 20:33:50');
INSERT INTO `grade` VALUES (18, '小明', '1234', 67, '2020-12-03 20:39:22');
INSERT INTO `grade` VALUES (19, '小明', '1234', 67, '2020-12-03 20:39:58');
INSERT INTO `grade` VALUES (20, '小明', '1234', 67, '2020-12-03 20:41:11');
INSERT INTO `grade` VALUES (21, '小明', '1234', 67, '2020-12-03 20:42:33');
INSERT INTO `grade` VALUES (22, '小明', '1234', 67, '2020-12-03 20:42:58');
INSERT INTO `grade` VALUES (23, '小明', '1234', 67, '2020-12-03 20:47:02');
INSERT INTO `grade` VALUES (24, '小明', '1234', 67, '2020-12-03 20:52:42');
INSERT INTO `grade` VALUES (25, '小明', '1234', 67, '2020-12-03 20:58:10');
INSERT INTO `grade` VALUES (26, '小明', '1234', 67, '2020-12-03 20:59:59');
INSERT INTO `grade` VALUES (27, '小明', '1234', 67, '2020-12-03 21:05:19');
INSERT INTO `grade` VALUES (28, '小明', '1234', 67, '2020-12-03 21:07:59');
INSERT INTO `grade` VALUES (29, '小明', '1234', 80, '2020-12-03 21:11:35');
INSERT INTO `grade` VALUES (30, '小华', '123', 100, '2020-12-03 21:14:22');
INSERT INTO `grade` VALUES (31, '小华', '123', 100, '2020-12-03 21:35:27');
INSERT INTO `grade` VALUES (32, '小华', '123', 100, '2020-12-03 21:36:21');
INSERT INTO `grade` VALUES (33, '小华', '123', 100, '2020-12-03 21:39:17');
INSERT INTO `grade` VALUES (34, '小华', '123', 100, '2020-12-03 21:41:23');
INSERT INTO `grade` VALUES (35, '小华', '123', 100, '2020-12-03 21:43:26');
INSERT INTO `grade` VALUES (36, '小华', '123', 67, '2020-12-03 22:02:33');
INSERT INTO `grade` VALUES (37, '小明', '1234', 0, '2020-12-06 16:24:33');
INSERT INTO `grade` VALUES (38, '小明', '1234', 46, '2020-12-06 16:37:56');
INSERT INTO `grade` VALUES (39, '小明', '1234', 33, '2020-12-06 16:39:04');
INSERT INTO `grade` VALUES (40, '小明', '1234', 33, '2020-12-06 16:41:03');
INSERT INTO `grade` VALUES (41, '小华', '123', 58, '2020-12-06 16:47:20');
INSERT INTO `grade` VALUES (42, '小华', '123', 70, '2020-12-06 17:07:16');
INSERT INTO `grade` VALUES (43, '小明', '1234', 40, '2020-12-06 17:10:07');
INSERT INTO `grade` VALUES (44, '小明', '1234', 80, '2020-12-06 17:14:26');
INSERT INTO `grade` VALUES (45, '小华', '123', 80, '2020-12-06 17:18:36');
INSERT INTO `grade` VALUES (46, '小明', '1234', 40, '2020-12-06 17:20:22');
INSERT INTO `grade` VALUES (47, '小华', '123', 0, '2020-12-06 17:44:33');
INSERT INTO `grade` VALUES (48, '小李子', '123456', 33, '2020-12-09 19:09:19');
INSERT INTO `grade` VALUES (49, '小张', '12345', 0, '2020-12-11 19:49:16');
INSERT INTO `grade` VALUES (50, '小李子', '123456', 0, '2020-12-16 19:48:29');
INSERT INTO `grade` VALUES (51, '小张', '12345', 90, '2020-12-16 20:58:22');
INSERT INTO `grade` VALUES (52, '小李子', '123456', 17, '2020-12-16 20:59:49');
INSERT INTO `grade` VALUES (53, '小华', '123', 33, '2020-12-16 21:04:20');
INSERT INTO `grade` VALUES (54, '小明', '1234', 33, '2020-12-16 21:05:06');
INSERT INTO `grade` VALUES (55, '小张', '12345', 89, '2020-12-16 21:12:04');
INSERT INTO `grade` VALUES (56, '小李子', '123456', 50, '2020-12-16 21:13:35');
INSERT INTO `grade` VALUES (57, '小明', '1234', 20, '2020-12-16 21:14:47');
INSERT INTO `grade` VALUES (58, '小张', '12345', 33, '2020-12-16 21:22:07');
INSERT INTO `grade` VALUES (59, '小华', '123', 21, '2020-12-16 21:39:41');
INSERT INTO `grade` VALUES (60, '小张', '12345', 38, '2020-12-16 21:44:10');
INSERT INTO `grade` VALUES (61, '小明', '1234', 32, '2020-12-16 21:47:31');
INSERT INTO `grade` VALUES (62, '小华', '123', 23, '2020-12-16 21:55:39');
INSERT INTO `grade` VALUES (63, '小张', '12345', 40, '2020-12-16 22:02:40');
INSERT INTO `grade` VALUES (64, '小张', '12345', 40, '2020-12-16 22:05:16');
INSERT INTO `grade` VALUES (65, '小张', '12345', 39, '2020-12-16 22:04:57');
INSERT INTO `grade` VALUES (66, '小华', '123', 75, '2020-12-17 00:05:01');
INSERT INTO `grade` VALUES (67, '小华', '123', 70, '2020-12-17 00:07:14');
INSERT INTO `grade` VALUES (68, '小张', '12345', 58, '2020-12-17 00:09:39');
INSERT INTO `grade` VALUES (69, '小李子', '123456', 22, '2020-12-18 11:16:21');
INSERT INTO `grade` VALUES (70, '小明', '1234', 39, '2020-12-18 18:10:47');
INSERT INTO `grade` VALUES (71, '小张', '12345', 88, '2020-12-20 16:03:28');
INSERT INTO `grade` VALUES (72, '小张', '12345', 92, '2020-12-20 16:08:11');
INSERT INTO `grade` VALUES (73, '小张', '12345', 78, '2020-12-20 16:11:52');
INSERT INTO `grade` VALUES (74, '小李子', '123456', NULL, '2020-12-21 10:55:06');
INSERT INTO `grade` VALUES (75, '小明', '1234', 33, '2020-12-21 11:00:48');
INSERT INTO `grade` VALUES (76, '小华', '123', 70, '2020-12-22 23:42:51');
INSERT INTO `grade` VALUES (77, '小华', '123', 41, '2020-12-22 23:49:29');

-- ----------------------------
-- Table structure for objective
-- ----------------------------
DROP TABLE IF EXISTS `objective`;
CREATE TABLE `objective`  (
  `obj_id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_difficuly` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `obj_chapter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `obj_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `obj_answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `obj_a` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `obj_b` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `obj_c` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `obj_d` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `obj_book` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `obj_grade` int(5) NULL DEFAULT NULL,
  PRIMARY KEY (`obj_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 190 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of objective
-- ----------------------------
INSERT INTO `objective` VALUES (6, '1', '1', 'Java应用程序源文件的扩展名为()', 'A', 'java', ' class', ' exe', ' html', 'Java', 2);
INSERT INTO `objective` VALUES (10, '2', '3', '在Java编程中,以下()命令用来执行java类文件', 'B', ' javac', 'java', 'appletviewer', '以上所有选项都不正确', 'Java', 3);
INSERT INTO `objective` VALUES (11, '2', '3', 'Java语言中数值数据的类型能自动转换,按照从左到右的转换次序为()', 'B', 'byte-int-short- long- float-double', 'byte-short-int-long- float-double', 'byte-short- int float- long-double', 'short- byte-int- long float-double', 'Java', 3);
INSERT INTO `objective` VALUES (12, '3', '1', '以下说法错误的是()', 'B', '静态方法可以直接访问本类的静态变量和静态方法', '静态方法可以直接访问本类的非静态变量和非静态方法', '非静态方法可以直接访问本类的静态变量和静态方法', '非静态方法可以直接访问本类的非静态变量和非静态方法', 'Java', 2);
INSERT INTO `objective` VALUES (13, '3', '2', '下列代码的执行结果是() public class Testl { public static void main (String args[]) { int a=2,b=8,c=6;  String s=\"abc\"; System. out.println(a+b+s+c) ; System.out.println() ;', 'D', 'ababcc', '282866', '28abc6', '10abc6', 'Java', 3);
INSERT INTO `objective` VALUES (14, '3', '3', '下面()修饰符修饰的变量是所有同一个类生成的对象共享的。', 'C', ' public', 'private', 'static', 'final', 'Java', 2);
INSERT INTO `objective` VALUES (15, '2', '2', '对于构造方法，下列叙述不正确的是( )', 'B', '构造方法是类的一种特殊方法,它的方法名必须与类名相同', '构造方法的返回类型只能是void型，即在方法名前加void', '构造方法的主要作用是完成对类的对象的初始化工作', '一般在创建新对象时，系统会自动调用构造方法', 'Java', 2);
INSERT INTO `objective` VALUES (17, '1', '1', '用abstract修饰的类称为抽象类，它们（）。', 'A', '只能用于派生新类，不能用于创建对象', '只能用于创建对象，不能用于派生新类', '既可用于创建对象，也可用于派生新类', '既不能用于创建对象，也不可用于派生新类', 'Java', 2);
INSERT INTO `objective` VALUES (18, '3', '3', '下列描述中,正确的是( )', 'A', '在Serializable接口中定义了抽象方法', '在Serializable接口中定义了常量', '在Serializable接口中没有定义抽象方法，也没有定义常量', '在Serializable接口中定义了成员方法', 'Java', 2);
INSERT INTO `objective` VALUES (19, '1', '1', '在数据库中存储的是(   )', 'D', '数据', '数据模型', '信息', '数据以及数据之间的联系', 'Mysql数据库', 2);
INSERT INTO `objective` VALUES (20, '1', '1', '规范化过程主要为克服数据库逻辑结构中的插入异常，删除异常以及(  )的缺陷。', 'D', '数据的不一致性', '结构不合理', '数据丢失', '冗余度大', 'Mysql数据库', 2);
INSERT INTO `objective` VALUES (21, '2', '2', '若有关系R(A,B,C,D,E)，有多值依赖A®®B, B®®D，无函数依赖。以下选项中可能出现在最终4NF分解中的关系模式是：(   )', 'A', '(A,D)', '(A,B,C,E)', '(B,C,E)', '(A,C)', 'Mysql数据库', 2);
INSERT INTO `objective` VALUES (22, '2', '2', 'SQL语言具有两种使用方式，分别称为交互式SQL和(   )', 'C', '提示式 SQL', '多用户 SQL', '嵌入式 SQL', '解释式 SQL', 'Mysql数据库', 2);
INSERT INTO `objective` VALUES (23, '3', '3', '若关系R(A,B)中有r个元组, S(B,C) 中有s个元组， R¥S的结果中有t个元组。 则对于三元组(r,s,t)，以下哪个值是有可能的？(   )', 'B', '(5,10,500)', '(2,3,6)', '(5,0,5)', '(2,3,9)', 'Mysql数据库', 3);
INSERT INTO `objective` VALUES (24, '3', '3', '假定学生关系是S( S# , SNAME , SEX , AGE )，课程关系是C( C# , CNAME , TEACHER )，学生选课关系是SC( S# , C# , GRADE )。 要查找选修“COMPUTER”课程的“女”学生姓名，将涉及到关系(   )。', 'D', 'S', 'SC,C', 'S,SC', 'S,C,SC', 'Mysql数据库', 3);
INSERT INTO `objective` VALUES (25, '1', '1', '数据库是长期存储在计算机内、有组织的、 (  )的数据集合。', 'A', '可共享', '私有', '无结构', '独立', 'Mysql数据库', 2);
INSERT INTO `objective` VALUES (26, '1', '1', '现有一个关系模式R(A,B,C)，其上的函数依赖集F={A→B,C→B}，下述分解中，(  )是否为R的无损联接分解？    ⑴(A,B),(A,C)          ⑵(A,B),(B,C)    供选择的解答：', 'B', '都不是', '⑴', '⑵', '都是', 'Mysql数据库', 2);
INSERT INTO `objective` VALUES (27, '2', '2', '事务的ACID性质是指事务具有原子性、一致性和(  )', 'A', '隔离性、透明性', '独立性、透明性', '共享性、持久性', '隔离性、持久性', 'Mysql数据库', 2);
INSERT INTO `objective` VALUES (28, '2', '2', '关系R(A,B,C,D) 有函数依赖集S:{ AB→C，BC→D，CD→A和AD→B }，则关系R最高属于( )', 'B', 'BCNF', '3NF', '2NF', '1NF', 'Mysql数据库', 2);
INSERT INTO `objective` VALUES (29, '3', '3', '软件工程学的目的应该是最终解决软件生产的（  ）问题。', 'B', '提高软件的开发效率', '使软件生产工程化', '消除软件的生产危机', '加强软件的质量保证', '软工', 3);
INSERT INTO `objective` VALUES (30, '3', '3', '软件工程方法中普遍应用的方法之一是结构化生命周期方法【SLC方法】，下述（  ）论述不具有SLC方法的主要特征。', 'D', '严格定义需求', '规范文档格式', '划分开发阶段', '分析控制流程', '软工', 3);
INSERT INTO `objective` VALUES (31, '1', '1', '软件需求分析阶段的工作，可以分成以下4个方面：对问题的识别、分析与综合、制定规格说明以及（  ）。', 'C', '总结', '实践性报告', '需求分析评审', '以上答案都不正确', '软工', 2);
INSERT INTO `objective` VALUES (32, '1', '1', '人们将在软件运行/维护阶段对软件产品所进行的修改称为“维护”。（  ）是由于开发时测试的不彻底、不完全造成的。', 'A', '校正性维护', '适应性维护', '完善性维护', '预防性维护', '软工', 2);
INSERT INTO `objective` VALUES (33, '2', '2', '模块内的某成分的输出是另一成分的输入，该模块的内聚度是（  ）的。', 'B', '功能性', '顺序性', '逻辑性', '瞬时性', '软工', 2);
INSERT INTO `objective` VALUES (34, '2', '2', 'Jackson方法主要适用于规模适中的（  ）系统的开发。', 'A', '数据处理', '文字处理', '实时控制', '科学计算', '软工', 2);
INSERT INTO `objective` VALUES (35, '3', '3', '软件测试的目的是()', 'B', '评价软件质量', '发现软件的错误', '找出软件中的所有错误', '证明软件是正确的', '软工', 3);
INSERT INTO `objective` VALUES (36, '3', '3', '与测试数据无关的文档是()', 'D', '该软件的设计人员', '程序的复杂度', '源程序', '项目开发计划', '软工', 3);
INSERT INTO `objective` VALUES (37, '1', '1', '将以下3种耦合性按由弱到强的顺序排列，正确的是()', 'D', '控制偶合 数据偶合 公共偶合', '数据偶合 公共偶合 控制偶合', '公共偶合 数据偶合 控制偶合', '数据偶合 控制偶合 公共偶合', '软工', 2);
INSERT INTO `objective` VALUES (38, '2', '2', '软件设计中的概要设计过程其主要描述的是()', 'A', '模块间关系', '模块操作细节', '模块控制方法', '模块类型', '软工', 2);
INSERT INTO `objective` VALUES (40, '1', '1', 'Jawa应用程序经过编译后会产生一个以（）为扩展名的字节码文件', 'B', 'java', 'class', 'exe', 'html', 'Java', 2);
INSERT INTO `objective` VALUES (41, '1', '1', 'main方法是Java桌面应用程序执行的入口点,关于main方法首部定义，以下（）是合法的', 'B', 'public static void main()', 'public static void main(String args[])', 'public static int main(String [] arg)', 'public void main(String arg[])', 'Java', 2);
INSERT INTO `objective` VALUES (42, '1', '1', '在Java中,负责对,class中间字节码解释执行的是（）。', 'B', '垃圾回收器', '虚拟机', '编译器', '多线程机制', 'Java', 2);
INSERT INTO `objective` VALUES (43, '1', '1', 'Java语言有许多优点和特点,下列选项中,（）反映了Java程序并行机制的 特点。', 'B', '安全性', '多线程', '跨平台', '可移植', 'Java', 2);
INSERT INTO `objective` VALUES (44, '1', '1', 'Java为移动设备提供的平台是()', 'A', 'Java ME', 'Java SE', 'Java EE', 'JDK 5.0', 'Java', 2);
INSERT INTO `objective` VALUES (45, '1', '1', '以下属于正确的Java注释是()', 'A', '//This is comment', '/*This is comment', '*This is comment*', '/**This is comment', 'Java', 2);
INSERT INTO `objective` VALUES (46, '1', '2', '下列有关Java语言的叙述中,正确的是()。', 'B', 'Java是不区分大小写的', '源文件名与public类型的类名必须相同', '源文件名的扩展名为. jar', '源文件中public类的数目不限', 'Java', 2);
INSERT INTO `objective` VALUES (47, '1', '2', '下面( )不是Java 的关键字。', 'C', 'interface', 'super', 'sizeof', ' throws', 'Java', 2);
INSERT INTO `objective` VALUES (48, '1', '2', '()是Java中合法的标识符。', 'A', 'fieldname', 'super', '3number', '井number', 'Java', 2);
INSERT INTO `objective` VALUES (49, '1', '2', 'int型public成员变量MAX_LENGTH,该值保持为常数100,则定义这个变量 的语句是( )。', 'D', ' public int MAX_LENGTH= 100', 'final int MAX_LEN', ' public const int MAX_LENGTH=100', 'public final int MAX_LENGTH=100', 'Java', 2);
INSERT INTO `objective` VALUES (50, '1', '2', 'Java语言中数值数据的类型能自动转换,按照从左到右的转换次序为()', 'B', 'byte-int-short- long- float-double', ' byte-short-int-long- float-double', 'byte-short- int float- long-double', ' short- byte-int- long float-double', 'Java', 2);
INSERT INTO `objective` VALUES (51, '1', '2', '下面语句在编译时,()不会出现错误。', 'D', ' float f=1.3;', 'char c=\"a\";', 'byte b=257;', ' int i=10;', 'Java', 2);
INSERT INTO `objective` VALUES (52, '1', '2', '在下面的代码段中，下列m的()值将引起“default\"的输出。 public class Test1{ I public static void main(string args[1){ int m switch (m) case 0:System.out.println(\"case 0\"); case 1:System.out.println (\"case 1\") ;break; case 2: default:System.out.println(\"default\"); } } }', 'C', '0', '1', '2', '以上答案都不正确', 'Java', 2);
INSERT INTO `objective` VALUES (53, '1', '3', '下面的( )操作 符可以使其修饰的变量只能对同包中的类或子类有效。', 'C', 'private', 'public', 'protected', 'default', 'Java', 2);
INSERT INTO `objective` VALUES (54, '1', '3', '在Java中，负责对不再使用的对象自动回收的是()。', 'A', '垃圾回收器', '虚拟机', '编译器', '多线程机制', 'Java', 2);
INSERT INTO `objective` VALUES (55, '1', '3', '以下说法错误的是()', 'B', '静态方法可以直接访问本类的静态变量和静态方法', '静态方法可以直接访问本类的非静态变量和非静态方法', '非静态方法可以直接访问本类的静态变量和静态方法', '非静态方法可以直接访问本类的非静态变量和非静态方法', 'Java', 2);
INSERT INTO `objective` VALUES (56, '1', '3', '下列代码的执行结果是()public class Testl { public static void main (String args[]) { int a=2,b=8,c=6;  String s=\"abc\"; System. out.println(a+b+s+c) ; System.out.println() ', 'D', 'ababcc', '282866', '28abc6', '10abc6', 'Java', 2);
INSERT INTO `objective` VALUES (57, '1', '3', '在Java中,由Java编译器自动导人，而无需在程序中用import导人的包是()。', 'D', 'java. applet', ' java. awt', 'java. uti', ' java. lang', 'Java', 2);
INSERT INTO `objective` VALUES (58, '1', '3', '关于下列程序段的输出结果，说法正确的是()。public class Test2{ static int i public static void main (String argv[]) ( System.out.println(i);}', 'D', '有错误,变量i没有初始化', 'null', '1', '0', 'Java', 2);
INSERT INTO `objective` VALUES (59, '1', '3', '在Java中，一个类可同时定义许多同名的方法，这些方法的形式参数的个数、类 型或顺序各不相同,传回的值也可以不相同，这种面向对象程序特性称为()。', 'C', '隐藏', '覆盖', '重载', 'Java不支持此特性', 'Java', 2);
INSERT INTO `objective` VALUES (60, '2', '3', '下列数组定义及赋值,错误的是()', 'A', 'int intArray[]; intArray=new int[3] ; intArray[1]=1; intArray[2]=2; intArray[3]=3;', ' intal]={1,2,3,4,5};', 'inta[][]= new int [][]; a[0]=new int[3]; a[1]=new int[31;', 'int[] a={1,2,3,4,5};', 'Java', 3);
INSERT INTO `objective` VALUES (61, '2', '3', '下面()不是创建数组的正确语句。', 'C', 'float f[][]=new float[6][6];', 'float f[]=new float[6];', 'float f[][]=new f1oat[1[6];', 'float [][]f=new float[6][];', 'Java', 3);
INSERT INTO `objective` VALUES (62, '2', '3', '有整型数组: int[] x={12,35,8,7,2};则调用方法Arrays. sort(x)后，数组x中 的元素值依次是( ) 。', 'A', '2   7   8   12   35', '12   35   8   7   2', '35   12   8   7   2', '8   7   12   35   2', 'Java', 3);
INSERT INTO `objective` VALUES (63, '3', '3', '现有两个类Son,Parent,以下描述中表示Son继承自Parent的是()。', 'A', 'class Son extends Parent', 'class Parent implements Son', 'class Son implements Parent', 'class Parent extends Son', 'Java', 5);
INSERT INTO `objective` VALUES (64, '3', '3', '用abstract修饰的类称为抽象类，它们（）。', 'A', '只能用于派生新类，不能用于创建对象', '只能用于创建对象，不能用于派生新类', '只能用于创建对象，不能用于派生新类', '既不能用于创建对象，也不可用于派生新类', 'Java', 5);
INSERT INTO `objective` VALUES (65, '3', '3', '类中的某个方法是用final修饰的，则该方法(）', 'C', '是虚拟的，没有方法体', '是最终的，不能被子类继承', '不能用被子类同名方法置盖', '不能被子类其他方法调用', 'Java', 5);
INSERT INTO `objective` VALUES (66, '3', '3', '下面接口的描述,正确的是()', 'C', '接口中的变量必须用private static final三个修饰词修饰', '接口中的方法必须用public abstract两个修饰符修饰', '一个接口可以继承多个父接口', '接口的构造方法名必须为按口名', 'Java', 5);
INSERT INTO `objective` VALUES (67, '3', '3', '下面关于接口对象描述中，正确的是()', 'B', '接口只能被类实现，不能用来声明对象', '接口可以用关键词new创建对象', '接口引用可以指向任何类的对象', '接口引用只能指向实现该接口的类的对象', 'Java', 5);
INSERT INTO `objective` VALUES (68, '1', '1', '研究开发资源的有效性是进行（  ）可行性研究的一方面。', 'A', '技术', '经济', '社会', '操作', '软工', 2);
INSERT INTO `objective` VALUES (69, '1', '1', '面向对象的主要特征除对象唯一性、封装、继承外，还有（  ）。 ', 'D', '兼容性', '完整性', '可移植性', '多态性', '软工', 2);
INSERT INTO `objective` VALUES (70, '1', '1', '为了提高易读性，源程序内部应加功能性注释，用于说明（  ）。', 'C', '模块总的功能', '模块参数的用途', '程序段或语句的功能', '数据的用途', '软工', 2);
INSERT INTO `objective` VALUES (71, '3', '1', '从已经发现故障的存在到找到准确的故障位置并确定故障的性质，这一过程称为（  ）。', 'B', '测试', '调试', '故障排除', '错误检测', '软工', 2);
INSERT INTO `objective` VALUES (72, '1', '1', '软件开发时，一个错误发现得越晚，为改正它所付出得代价就', 'A', '越大', '越小', '越不可捉摸', '越接近平均水平', '软工', 2);
INSERT INTO `objective` VALUES (73, '2', '2', '软件工程学涉及到软件开发技术和工程管理两方面的内容，下述内容中哪一个不属开发技术的范畴？', 'D', '软件开发方法', '软件开发工具', '软件开发环境', '软件工程环境', '软工', 3);
INSERT INTO `objective` VALUES (74, '2', '2', '数据流图（DFD）是软件开发哪一阶段经常使用的工具？', 'A', '需求分析', '详细设计', '软件测试', '软件维护', '软工', 3);
INSERT INTO `objective` VALUES (75, '2', '2', '模块内部联系最大的是什么？', 'B', '顺序内聚', '功能内聚', '通讯内聚', '时间内聚', '软工', 3);
INSERT INTO `objective` VALUES (76, '2', '2', '软件需求分析的内容是', 'A', '确定开发的软件应有哪些功能，应达到什么性能', '确定软件的开发成本', '制定软件开发的进度表', '同用户协商确定软件的总体结构', '软工', 3);
INSERT INTO `objective` VALUES (77, '2', '2', '软件设计中的概要设计过程其主要描述的是', 'A', '模块间关系', '模块操作细节', '模块控制方法', '模块类型', '软工', 3);
INSERT INTO `objective` VALUES (78, '2', '2', '软件测试的目的是', 'B', '评价软件质量', '发现软件的错误', '找出软件中的所有错误', '证明软件是正确的', '软工', 3);
INSERT INTO `objective` VALUES (80, '3', '3', '将以下3种耦合性按由弱到强的顺序排列，正确的是', 'D', '控制偶合 数据偶合 公共偶合', '数据偶合 公共偶合 控制偶合', '数据偶合 公共偶合 控制偶合', '数据偶合 控制偶合 公共偶合', '软工', 3);
INSERT INTO `objective` VALUES (81, '3', '3', '在软件开发过程中，编程语言的选择很重要。如某一项目侧重于数据结构设计，则应选择：', 'A', 'C 语言', '汇编语言', 'FORTRAN 语言', 'ASP语言', '软工', 3);
INSERT INTO `objective` VALUES (82, '1', '3', '软件生命周期中所花费用最多的阶段是（  ）。', 'D', '详细设计', '软件编码', '软件测试', '软件维护', '软工', 3);
INSERT INTO `objective` VALUES (83, '1', '3', '用于表示模块间调用关系的图叫（  ）。', 'C', 'PAD', 'HCP', 'SC', 'HIPO', '软工', 2);
INSERT INTO `objective` VALUES (84, '1', '3', '软件是一种（  ）产品。', 'B', '物质', '逻辑', '有形', '消耗', '软工', 2);
INSERT INTO `objective` VALUES (85, '1', '3', 'SD方法的最终目标是（  ）。', 'D', '块间联系大，块内联系大', '块间联系大，块内联系小', '块间联系小，块内联系小', '块间联系小，块内联系大', '软工', 2);
INSERT INTO `objective` VALUES (86, '1', '3', '保证软件质量的手段有复审、复查、管理复审和测试等。其中复审发生在软件生命周期的（  ）。', 'B', '每个阶段开始的时候', '每个阶段结束之前', '测试阶段结束之后', '全部阶段结束之后', '软工', 2);
INSERT INTO `objective` VALUES (87, '2', '3', '面向对象程序设计语言不同于其他语言的最主要特点是（  ）。', 'D', '模块性', '抽象性', '共享性', '继承性', '软工', 2);
INSERT INTO `objective` VALUES (88, '2', '3', '提高软件质量和可靠性的技术大致分为两大类：一类是避开错误技术，另一类是（  ）。', 'C', '重用技术', '避开错误', '容错技术', '模块化设计', '软工', 2);
INSERT INTO `objective` VALUES (89, '2', '3', '一个只有顺序结构的程序，其环形复杂度是（  ）。', 'A', '0 ', '1 ', '3  ', '不确定的', '软工', 2);
INSERT INTO `objective` VALUES (90, '2', '3', '按照软件过程的系统方法进行软件的工程活动和管理活动，进而不断完善软件各个软件过程，从而不断提高________。', 'B', '软件工程能力', '软件过程能力', '软件成熟度模型', '软件过程管理', '软工', 2);
INSERT INTO `objective` VALUES (91, '2', '2', '软件工程与计算机科学性质不同，软件工程着重于（  ）。', 'C', '原理探讨', '理论研究', '建造软件系统', '原理的理论', '软工', 2);
INSERT INTO `objective` VALUES (92, '2', '2', '软件工程是一种（  ）分阶段实现的软件程序开发方法。', 'A', '自顶向下', '自底向上', '逐步求精', '面向数据流', '软工', 2);
INSERT INTO `objective` VALUES (93, '2', '2', '结构化方法和原型化方法是软件开发中常使用的两种基本方法，在实际的应用中，它们之间的关系表现为（  ）。', 'B', '相互排斥', '相互补充', '交替使用', '独立使用', '软工', 2);
INSERT INTO `objective` VALUES (94, '3', '2', '在软件生存周期的模型中，（  ）吸收了软件工程“演化”的概念，适合于大型软件的开发。', 'D', '喷泉模型', '基于知识的模型', '变换模型', '螺旋模型', '软工', 2);
INSERT INTO `objective` VALUES (95, '3', '2', '技术可行性要解决（  ）。', 'B', '存在侵权否', '技术风险问题', '运行方式可行', '成本-效益问题', '软工', 3);
INSERT INTO `objective` VALUES (96, '3', '2', '好的软件结构应该是（  ）。', 'B', '高耦合、高内聚', '.低耦合、高内聚', '高耦合、低内聚', '低耦合、低内聚', '软工', 3);
INSERT INTO `objective` VALUES (97, '3', '2', '流程图中的顺序结构中各个方框是对程序的（  ）进行分块，使之表达得更清晰。', 'D', '物理意义', '流程', '函数', '逻辑意义', '软工', 3);
INSERT INTO `objective` VALUES (98, '3', '2', '软件可靠性表明了一个程序按照用户的要求和设计的目标，执行其功能的正确程度即“软件可靠性是软件在给定的时间间隔及给定的设计要求下，成功地运行程序的（  ）”。', 'A', '概率', '适应性', '可靠性', '可移植性', '软工', 3);
INSERT INTO `objective` VALUES (99, '3', '2', '集成测试时，能较早发现高层模块接口错误的测试方法为（  ）。', 'B', '自底向上渐增式测试', '自顶向下渐增式测试', '自顶向下渐增式测试', '系统测试', '软工', 3);
INSERT INTO `objective` VALUES (100, '3', '2', '结构化程序设计的一种基本方法是', 'D', '筛选法', '递归法', '归纳法', '逐步求精法', '软工', 3);
INSERT INTO `objective` VALUES (101, '3', '2', '软件调试的目的是（  ）', 'A', '找出错误所在并改正之', '排除存在错误的可能性', '对错误性质进行分类', '对错误性质进行分类', '软工', 3);
INSERT INTO `objective` VALUES (102, '1', '2', '软件开发中常采用的结构化生命周期方法，由于其特征一般称其为（  ）。', 'A', '瀑布模型', '对象模型', '螺旋模型', '层次模型', '软工', 3);
INSERT INTO `objective` VALUES (103, '1', '2', '研究软硬件资源的有效性是进行（  ）研究的一方面。', 'B', '经济可行性', '技术可行性', '社会可行性', '社会可行性', '软工', 3);
INSERT INTO `objective` VALUES (104, '1', '2', '软件开发的结构化方法中，常应用数据字典技术，其中数据加工是其组成内容之一，下述（  ）方法是常采用编写加工说明的方法。\n  ① 结构化语言 ② 判定树 ③ 判定表 ', 'D', '只有①', '只有②', '只有②', '全部', '软工', 3);
INSERT INTO `objective` VALUES (105, '1', '2', '为了最终实现目标系统，必须设计出组成这个系统的所有程序和文件，通常分为两个阶段完成，即（  ）和过程设计。 ', 'B', '程序设计', '结构设计', '系统设计', '详细设计', '软工', 3);
INSERT INTO `objective` VALUES (106, '1', '2', '工程上常用的表达工具有（  ）。', 'D', '图形工具', '表格工具', '语言工具', '以上全是', '软工', 3);
INSERT INTO `objective` VALUES (107, '1', '2', '（  ）面向客户、建模人员、开发人员和测试人员，是系统模型图的核心。', 'C', '状态图', '类图', '用例图', '顺序图', '软工', 3);
INSERT INTO `objective` VALUES (108, '2', '1', '源程序文档化要求在每个模块之前加序言性注释。该注释内容不应有（  ）。', 'B', '模块的功能', '语句的功能', '模块的接口', '开发历史', '软工', 3);
INSERT INTO `objective` VALUES (109, '2', '1', '在黑盒测试中，着重检查输入条件的组合是（  ）。', 'A', '因果图法', '边界值分析法', '等价类划分法', '错误推测法', '软工', 3);
INSERT INTO `objective` VALUES (110, '2', '1', '对于软件产品来说，有4个方面影响着产品的质量，即开发技术、过程质量、人员素质及（  ）等条件。 ', 'D', '风险控制', '项目管理', '配置管理', '成本、时间和进度', '软工', 3);
INSERT INTO `objective` VALUES (111, '3', '1', '为了提高测试的效率，应该', 'D', '随机地选取测试数据', '取一切可能的输入数据作为测试数据', '在完成编码以后制定软件的测试计划', '选择发现错误的可能性大的数据作为测试数据', '软工', 5);
INSERT INTO `objective` VALUES (112, '3', '1', '使用白盒测试方法时，确定测试数据应根据（）和指定的覆盖标准。', 'A', '程序的内部逻辑', '程序的复杂程度', '使用说明书', '程序的功能', '软工', 5);
INSERT INTO `objective` VALUES (113, '3', '1', '一般来说，与设计测试数据无关的文档是()', 'D', '需求规格说明书', '程序的复杂程度', '源程序', '项目开发计划', '软工', 5);
INSERT INTO `objective` VALUES (114, '3', '1', '软件的组装工作最好由（）承担，以提高组装测试的效果。', 'D', '该软件的设计人员', '该软件开发组的负责人', '该软件的编程人员', '不属于该软件开发组的软件设计人员', '软工', 5);
INSERT INTO `objective` VALUES (115, '3', '1', '软件需求分析的任务不应包括', 'C', '问题分析', '信息域分析', '结构化程序设计', '确定逻辑模型', '软工', 5);
INSERT INTO `objective` VALUES (116, '3', '1', '可行性研究的目的是(   )。', 'B', '开发项目', '项目是否值得开发', '规划项目', '维护项目', '软工', 5);
INSERT INTO `objective` VALUES (117, '3', '1', '下列(   )不属于软件工程框架的三元组。', 'B', '目标', '范围', '原则', '活动', '软工', 5);
INSERT INTO `objective` VALUES (118, '3', '1', '在软件开发和维护的过程中需要变更需求时，为了保持软件各个配置成分的一致性，必须实施严格的(   )。', 'B', '产品检验', '产品控制', '产品标准化', '开发规范', '软工', 5);
INSERT INTO `objective` VALUES (119, '2', '2', '在软件生存期的模型中，( )适合于大型软件的开发，它吸收了软件工程中“演化”的概念。', 'C', '喷泉模型', '瀑布模型', '螺旋模型', '基于知识的模型', '软工', 3);
INSERT INTO `objective` VALUES (120, '2', '1', '用例用来描述系统在事件中做出相应所采取的行动，用例之间是具有相关性的。在“订单输入子系统”中，创建新订单和更新订单都需要检查用户账号是否正确。那么，用例“创建新订单”、“更新订单”与用例“检查用户账号”之间是(   )关系。', 'A', '包含 ', '扩展', '分类', '聚集', '软工', 3);
INSERT INTO `objective` VALUES (121, '2', '1', 'Coolsoft准备开发一个自动餐卡服务系统CoCo。CoCo的具体需求如下：CoCo将使用3个插槽，第一个插槽用于制作新餐卡，第二个插槽用于向餐卡充钱，第三个插槽用于在想餐卡中充钱时插入纸币。系统运行时会显示一个界面，界面中有3个选项：(1)获取新餐卡：(2)为餐卡充钱：(3)打印与餐卡充钱和消费有关的数据。在开发Coco系统完成上述功能时，(   )最有用。', 'B', '构件图', '状态图', '活动图', '部署图', '软工', 3);
INSERT INTO `objective` VALUES (122, '2', '1', '维护中因删除一个标识符而引起的错误是(   )副作用。', 'A', '编码', '数据', '文档', '设计', '软工', 3);
INSERT INTO `objective` VALUES (125, '2', '1', '在快速原型模型的开发过程中，用原型过程来代替全部开发阶段所用模型是（  ）模型。', 'B', '探索型原型', '演化型原型', '演化型原型', '增量型原型', '软工', 3);
INSERT INTO `objective` VALUES (126, '1', '1', '软件测试中根据测试用例设计方法的不同，可分为黑盒测试和白盒测试两种，（  ）。', 'D', '前者属于静态测试，后者属于动态测试', '前者属于动态测试，后者属于静态测试', '都属于静态测试', '都属于动态测试', '软工', 3);
INSERT INTO `objective` VALUES (127, '1', '1', '结构化程序设计主要强调的是（  ）。', 'A', '程序易读性', '程序的规模', '程序的效率', '程序设计语言的先进性', '软工', 3);
INSERT INTO `objective` VALUES (128, '1', '1', '银行计算机储蓄管理信息系统中，根据客户提出的要求（如存款、取款、查询、挂失、咨询）进行相应的业务处理的该层数据流图是（  ）。', 'C', '概念型', '变换型', '事务型', '演化型', '软工', 2);
INSERT INTO `objective` VALUES (129, '1', '1', '软件工程学是应用科学理论和工程上的技术指导软件开发的学科，其目标是（  ）。', 'B', '引入新技术提高空间利用率', '用较少的投资获得高质量的软件', '缩短研制周期扩大软件功能', '块间联系小，块内联系大', '软工', 2);
INSERT INTO `objective` VALUES (130, '1', '3', '如果模块中所有成分引用共同的数据，该模块内的联系类型是（  ）。', 'C', '顺序内聚', '功能内聚', '通信内聚', '过程内聚', '软工', 2);
INSERT INTO `objective` VALUES (131, '1', '3', '要减少两个模块之间的耦合，则必须（  ）。', 'D', '两个模块间的调用次数要少', '模块间传递次数要少', '模块间传递的参数要少且不传递开关型参数', '模块间传递的参数要少且不传递开关型参数以及两模块不引用同样的全局变量', '软工', 2);
INSERT INTO `objective` VALUES (132, '1', '3', '软件调试技术包括（  ）。', 'A', '演绎法', '边界值分析', '循环覆盖', '集成测试', '软工', 2);
INSERT INTO `objective` VALUES (133, '2', '3', '详细设计的结果基本决定了最终程序的（  ）。', 'C', '代码的规模', '运行速度', '质量', '可维护性', '软工', 3);
INSERT INTO `objective` VALUES (134, '2', '3', '面向对象的分析方法主要是建立三类模型，即（  ）。', 'B', '系统模型、E-R模型、应用模型', '功能模型、对象模型、动态模型', 'E-R模型、功能模型、对象模型', '对象模型、功能模型、应用模型', '软工', 3);
INSERT INTO `objective` VALUES (135, '2', '3', '描述对象的行为，反映对象的状态与事件的关系是（）。', 'A', '状态图', '对象图', '流程图', '结构图', '软工', 3);
INSERT INTO `objective` VALUES (136, '2', '3', '在软件生存期中，（  ）阶段所占的工作量最大。', 'D', '分析', '设计', '编码', '维护', '软工', 3);
INSERT INTO `objective` VALUES (137, '2', '3', '软件测试是软件开发过程的重要阶段，是软件质量保证的重要手段，下列（  ）是软件测试的任务。\n① 预防软件发生错误   ② 发现并改正程序错误   ③ 提供诊断错误信息 ', 'D', '只有①', '只有②', '只有③', '全部', '软工', 3);
INSERT INTO `objective` VALUES (138, '2', '3', '软件文档是软件工程实施中的重要成分，它不仅是软件开发各阶段的重要依据而且也影响软件的（  ）。', 'B', '可理解性', '可维护性', '可维护性', '可扩展性', '软工', 3);
INSERT INTO `objective` VALUES (139, '2', '3', '如果某个程序的输入数据的可能划分成为n个合理等价类，m个不合理等价类，这些等价类均为数轴上的一个有限区间范围，则采用边界值测试方法至少需要（  ）个测试用例。', 'C', 'm+n', '2m+n', '2(m+n)', 'm+2n', '软工', 3);
INSERT INTO `objective` VALUES (140, '1', '1', '在计算机系统中,操作系统是().', 'B', '一般应用软件', '核心系统软件', '用户应用软件', '系统支撑软件', '操作系统', 2);
INSERT INTO `objective` VALUES (141, '1', '1', '( )不是基本的操作系统.', 'D', '批处理操作系统', '分时操作系统', '实时操作系统', '网络操作系统', '操作系统', 2);
INSERT INTO `objective` VALUES (142, '1', '1', '关于操作系统的叙述(D)是不正确的.', 'D', '\"管理资源的程序\"', '\"管理用户程序执行的程序\"', '\"能使系统资源提高效率的程序\" ', '\"能方便用户编程的程序\"', '操作系统', 2);
INSERT INTO `objective` VALUES (143, '1', '1', '操作系统的发展过程是', 'A', '设备驱动程序组成的原始操作系统,管理程序,操作系统', '原始操作系统,操作系统,管理程序', '管理程序,原始操作系统,操作系统', '管理程序,操作系统,原始操作系统', '操作系统', 2);
INSERT INTO `objective` VALUES (144, '1', '1', '操作系统是一种', 'B', '应用软件', '系统软件', '通用软件', '工具软件', '操作系统', 2);
INSERT INTO `objective` VALUES (145, '1', '1', '计算机系统的组成包括', 'B', '程序和数据', '计算机硬件和计算机软件', '处理器和内存', '处理器,存储器和外围设备', '操作系统', 2);
INSERT INTO `objective` VALUES (146, '1', '1', '下面关于计算机软件的描述正确的是', 'B', '它是系统赖以工作的实体', '它是指计算机的程序及文档', '位于计算机系统的最外层', '分为系统软件和支撑软件两大类', '操作系统', 2);
INSERT INTO `objective` VALUES (147, '1', '1', '世界上第一个操作系统是', 'B', '分时系统', '单道批处理系统', '多道批处理系统', '实时系统', '操作系统', 2);
INSERT INTO `objective` VALUES (148, '1', '1', '允许多个用户以交互使用计算机的操作系统是', 'A', '分时系统', '单道批处理系统', '多道批处理系统', '实时系统', '操作系统', 2);
INSERT INTO `objective` VALUES (149, '1', '1', '操作系统是一组', 'C', '文件管理程序', '中断处理程序', '资源管理程序', '设备管理程序', '操作系统', 2);
INSERT INTO `objective` VALUES (150, '1', '1', '现代操作系统的两个基本特征是()和资源共享', 'C', '多道程序设计', '中断处理', '程序的并发执行', '实现分时与实时处理', '操作系统', 2);
INSERT INTO `objective` VALUES (151, '1', '1', '()不是操作系统关心的主要问题.', 'D', '管理计算机裸机', '设计,提供用户程序与计算机硬件系统的界面', '管理计算机系统资源', '高级程序设计语言的编译器', '操作系统', 2);
INSERT INTO `objective` VALUES (152, '1', '1', '引入多道程序的目的是( ).', 'D', '为了充分利用主存储器', '增强系统的交互能力', '提高实时响应速度', '充分利用CPU,减少CPU的等待时间', '操作系统', 2);
INSERT INTO `objective` VALUES (153, '1', '1', '多道程序设计是指', 'B', '有多个程序同时进入CPU运行 ', '有多个程序同时进入主存并行运行', '程序段执行不是顺序的', '同一个程序可以对应多个不同的进程', '操作系统', 2);
INSERT INTO `objective` VALUES (154, '1', '1', '从总体上说,采用多道程序设计技术可以( )单位时间的算题量,但对每一个算题,从算题开始到全部完成所需的时间比单道执行所需的时间可能要().', 'B', '增加,减少', '增加,延长', '减少,延长', '减少,减少', '操作系统', 2);
INSERT INTO `objective` VALUES (155, '1', '1', '没有多道程序设计的特点.', 'A', 'DOS', 'UNIX', 'WINDOWS', 'OS/2', '操作系统', 2);
INSERT INTO `objective` VALUES (156, '1', '1', '在分时系统中,时间片一定,( ),响应时间越长.', 'B', '内存越多', '用户数越多', '后备队列', '用户数越少', '操作系统', 2);
INSERT INTO `objective` VALUES (157, '1', '1', '批处理系统的主要缺点是', 'B', 'CPU的利用率不高', '失去了交互性', '不具备并行性', '以上都不是', '操作系统', 2);
INSERT INTO `objective` VALUES (158, '1', '1', '在下列性质中,哪一个不是分时系统的特征.', 'C', '交互性', '多路性', '成批性', '独占性', '操作系统', 2);
INSERT INTO `objective` VALUES (159, '1', '1', '实时操作系统追求的目标是', 'C', '高吞吐率', '充分利用内存 ', '快速响应', '减少系统开销', '操作系统', 2);
INSERT INTO `objective` VALUES (160, '1', '1', '以下()项功能不是操作系统具备的主要功能.', 'C', '内存管理', '中断处理', '文档编辑', 'CPU调度', '操作系统', 2);
INSERT INTO `objective` VALUES (161, '1', '1', '操作系统负责为方便用户管理计算机系统的( ).', 'C', '程序', '文档资料', '资源', '进程', '操作系统', 2);
INSERT INTO `objective` VALUES (162, '1', '1', '将汇编语言源程序转换成等价的目标程序的过程称为', 'C', '汇编', '解释', '编译', '连接', '操作系统', 2);
INSERT INTO `objective` VALUES (163, '1', '1', '下面(   )不是计算机高级语言。 ', 'B', 'PASCAL', 'UNIX', 'C', 'BASIC', '操作系统', 2);
INSERT INTO `objective` VALUES (164, '1', '1', '最基本的系统软件是 ', 'A', '操作系统', '文字处理系统', '语言处理系统', '数据库管理系统', '操作系统', 2);
INSERT INTO `objective` VALUES (165, '1', '1', '计算机操作系统的作用是', 'A', '管理计算机系统的全部软.硬件资源，合理组织计算机的工作流程，以达到充分发挥计算机资源的效率，为用户提供使用计算机的友好界面 ', '对用户存储的文件进行管理，方便用户', '执行用户键入的各类命令', '为汉字操作系统提供运行的基础', '操作系统', 2);
INSERT INTO `objective` VALUES (166, '1', '1', '()操作系统是工作站上的主流系统', 'A', 'WINDOWS', 'DOS', 'UNIX', 'VMS', '操作系统', 2);
INSERT INTO `objective` VALUES (167, '1', '1', '操作系统的主要功能是', 'C', '提高计算的可靠性', '对硬件资源分配.控制.调度.回收', '对计算机系统的所有资源进行控制和管理', '实行多用户及分布式处理', '操作系统', 2);
INSERT INTO `objective` VALUES (168, '1', '1', '操作系统核心部分的主要特点是', 'B', '一个程序模块', '常驻内存', '有头有尾的程序', '串行执行', '操作系统', 2);
INSERT INTO `objective` VALUES (169, '1', '1', '以下（  ）项功能不是操作系统具备的主要功能。', 'C', '内存管理', '中断处理', '文档编辑', 'CPU调度', '操作系统', 2);
INSERT INTO `objective` VALUES (170, '2', '1', '进程在系统中是否存在的惟一标志是', 'A', '数据集合', '目标程序', '源程序', '进程控制块', '操作系统', 3);
INSERT INTO `objective` VALUES (171, '2', '1', '处理器执行的指令被分成两类,其中有一类称为特权指令,它只允许()使用.', 'C', '操作员', '联机用户', '操作系统', '目标程序', '操作系统', 3);
INSERT INTO `objective` VALUES (172, '2', '1', '进程所请求的一次打印输出结束后,将使进程状态从', 'D', '运行态变为就绪态', '运行态变为等待态 ', '就绪态变为运行态', '等待态变为就绪态', '操作系统', 3);
INSERT INTO `objective` VALUES (173, '2', '1', '5.一作业进入内存后,则所属该作业的进程初始时处于( )状态. ', 'C', '运行', '等待', '就绪', '收容', '操作系统', 3);
INSERT INTO `objective` VALUES (174, '2', '1', '临界区是指并发进程中访问共享变量的()段. ', 'D', '管理信息', '信息存储', '数据', '程序', '操作系统', 3);
INSERT INTO `objective` VALUES (175, '2', '1', '我们把在一段时间内，只允许一个进程访问的资源，称为临界资源，因此，我们可以得出下列论述，正确的论述为', 'D', '对临界资源是不能实现资源共享的。', '只要能使程序并发执行，这些并发执行的程序便可对临界资源实现共享。', '为临界资源配上相应的设备控制块后，便能被共享。', '对临界资源，应采取互斥访问方式，来实现共享。', '操作系统', 3);
INSERT INTO `objective` VALUES (176, '2', '1', '若系统中有五台绘图仪,有多个进程均需要使用两台,规定每个进程一次仅允许申请一台,则至多允许()个进程参于竞争,而不会发生死锁. ', 'D', '5', '2', '3', '4', '操作系统', 3);
INSERT INTO `objective` VALUES (177, '2', '1', '产生系统死锁的原因可能是由于', 'C', '进程释放资源', '一个进程进入死循环', '多个进程竞争,资源出现了循环等待   ', '多个进程竞争共享型设备', '操作系统', 3);
INSERT INTO `objective` VALUES (178, '2', '1', '产生死锁的主要原因是进程运行推进的顺序不合适', 'C', '系统资源不足和系统中的进程太多 ', '资源的独占性和系统中的进程太多 ', '资源分配不当和系统资源不足', '进程调度不当和资源的独占性 ', '操作系统', 3);
INSERT INTO `objective` VALUES (179, '2', '1', '运行时间最短的作业被优先调度，这种企业调度算法是', 'C', '优先级调度', '响应比高者优先', '短作业优先', '先来先服务', '操作系统', 3);
INSERT INTO `objective` VALUES (180, '2', '1', '13.CPU的调度分为高级、中级和低级三种，其中低级调度是指   ()调度。', 'C', '作业', '交换', '进程', '线程', '操作系统', 3);
INSERT INTO `objective` VALUES (181, '2', '1', '单处理器的多进程系统中,进程什么时候占用处理器和能占用多长时间,取决于', 'C', '进程相应的程序段的长度', '进程总共需要运行时间多少', '进程调度策略和进程自身', '进程完成什么功能', '操作系统', 3);
INSERT INTO `objective` VALUES (182, '2', '1', '在多进程的并发系统中,肯定不会因竞争( )而产生死锁', 'D', '打印机', '磁带机', '磁盘', 'CPU', '操作系统', 3);
INSERT INTO `objective` VALUES (183, '2', '1', '通常不采用( )方法来解除死锁.', 'D', '终止一个死锁进程', '终止所有死锁进程', '从死锁进程处抢夺资源', '从非死锁进程处抢夺资源', '操作系统', 3);
INSERT INTO `objective` VALUES (184, '2', '1', '如果进程PA对信号量S执行P操作,则信号量S的值应', 'B', '加1', '减1', '等于0', '小于0', '操作系统', 3);
INSERT INTO `objective` VALUES (185, '2', '1', '进程的动态,并发等特征是利用()表现出来的.', 'A', '进程控制块', '数据', '程序', '程序和数据', '操作系统', 3);
INSERT INTO `objective` VALUES (186, '2', '1', '计算机系统产生死锁的根本原因是(', 'D', '资源有限', '进程推进顺序不当', '系统中进程太多', 'A和B', '操作系统', 3);
INSERT INTO `objective` VALUES (187, '2', '1', '进程与程序之间有密切联系,但又是不同的概念.二者的一个本质区别是(', 'A', '程序是静态概念,进程是动态概念', '程序是动态概念,进程是静态概念', '程序保存在文件中,进程存放在内存中', '程序顺序执行,进程并发执行', '操作系统', 3);
INSERT INTO `objective` VALUES (188, '2', '1', '进程和程序的一个本质区别是', 'A', '前者在一个文件中，后者在多个文件中', '前者分时使用CPU,后者独占CPU。', '前者存储在内存，后者存储在外存', '前者为动态的，后者为静态的', '操作系统', 3);
INSERT INTO `objective` VALUES (189, '2', '1', '死锁预防是保证系统不进入死锁状态的静态策略,其解决方法是破坏产生死锁的四个必要条件之一.下列方法中破坏了\"循环等待\"条件的是()', 'D', '银行家算法', '一次性分配策略', '剥夺资源法', '资源有序分配法', '操作系统', 3);
INSERT INTO `objective` VALUES (190, '2', '1', '进程在运行过程中等待的事件已发生，例如，打印结束，此时该进程的状态将（)', 'D', '从就绪变为运行', '从运行变为就绪', '从运行变为阻塞', '从阻塞变为就绪', '操作系统', 3);
INSERT INTO `objective` VALUES (191, '2', '1', '下述（ ）不属于多道程序运行的特征。', 'B', '多道', '运行速度快', '宏观上并行', '实际上多道程序是串插运行的', '操作系统', 3);
INSERT INTO `objective` VALUES (192, '2', '1', '引入多道程序的目的在于（ )', 'A', '充分利用CPU，减少CPU等待时间 ', '提高实时响应速度', '有利于代码共享，减少主、辅存信息交换量', '充分利用存储器', '操作系统', 3);
INSERT INTO `objective` VALUES (193, '2', '1', '某个正在运行的进程，当所分配的时间片用完后，将其挂在（)', 'C', '等待队列', '运行队列', '就绪队列', '任意队列', '操作系统', 3);
INSERT INTO `objective` VALUES (194, '2', '1', '在分时系统中，时间片一定，（  ），响应时间越长。', 'B', '内存越多', '用户数越多 ', '后备队列', '用户数越少 ', '操作系统', 3);
INSERT INTO `objective` VALUES (195, '2', '1', '为了对紧急进程或重要进程进行调度，调度算法应采用（)', 'B', '先进先出调度算法', '优先数法', '最短作业优先调度', '定时轮转法', '操作系统', 3);
INSERT INTO `objective` VALUES (196, '2', '1', '进程控制块是描述进程状态和特性的数据结构，一个进程（）', 'D', '可以有多个进程控制块 ', '可以和其他进程共用一个进程控制块', '可以没有进程控制块', '只能有惟一的进程控制块', '操作系统', 3);
INSERT INTO `objective` VALUES (197, '2', '1', '原语是一种特殊的系统调用命令，它的特点是（)', 'A', '执行时不可中断', '执行时不可中断', '可被外层调用', '功能强', '操作系统', 3);
INSERT INTO `objective` VALUES (198, '2', '1', '原语是()', 'B', '一条机器指令', '若干条机器指令组成', '一条特定指令', '中途能打断的指令', '操作系统', 3);
INSERT INTO `objective` VALUES (199, '2', '1', '竞争计算机系统资源的基本单位是（)', 'A', '进程', '作业', '程序', '过程', '操作系统', 3);
INSERT INTO `objective` VALUES (200, '2', '1', '在操作系统中，可以并行工作的基本单位是（)', 'C', '作业', '程序', '进程', '过程', '操作系统', 3);
INSERT INTO `objective` VALUES (201, '2', '1', '时间片轮转法进行进程调度是为了()', 'A', '多个终端都能得到系统的及时响应', '先来先服务 ', '优先级较高的进程得到及时响应', '需要cpu最短的进程先做', '操作系统', 3);
INSERT INTO `objective` VALUES (202, '2', '1', '进程在系统中是否存在的唯一标志是（ ）', 'D', '数据集合', '目标程序 ', '源程序', '进程控制块', '操作系统', 3);
INSERT INTO `objective` VALUES (203, '2', '1', '一个作业从提交给系统到该作业完成的时间间隔称为 （ ）', 'A', '周转时间', '响应时间', '等待时间', '运行时间', '操作系统', 3);
INSERT INTO `objective` VALUES (204, '2', '1', '一作业8：00到达系统，估计运行时间为1小时，若10：00开始执行该作业，其响应比是', 'C', '2', '1', '3', '0.5', '操作系统', 3);
INSERT INTO `objective` VALUES (205, '2', '1', '某进程在运行过程中需要等待从磁盘上读入数据，此时该进程的状态将( )。', 'C', '从就绪变为运行', '从运行变为就绪', '从运行变为阻塞', '从阻塞变为就绪', '操作系统', 3);
INSERT INTO `objective` VALUES (206, '2', '1', '在一般操作系统中必不可少的调度是()', 'D', '高级调度', '中级调度', '作业调度', '进程调度', '操作系统', 3);
INSERT INTO `objective` VALUES (207, '2', '1', '避免死锁的一个著名的算法是()', 'B', '先入先出法；', '银行家算法；', '优先级算法；', '资源按序分配法。', '操作系统', 3);
INSERT INTO `objective` VALUES (208, '2', '1', '）实现了段式、页式两种存储方式的优势互补。', 'D', '请求分页管理', '可变式分区管理', '段式管理', '段页式管理', '操作系统', 3);
INSERT INTO `objective` VALUES (209, '2', '1', '存储管理的目的是（-_-)', 'C', '方便用户', '提高内存利用率', '方便用户和提高内存利用率', '增加内存实际容量 ', '操作系统', 3);
INSERT INTO `objective` VALUES (210, '2', '1', '存储管理支持多道程序设计，算法简单，但存储碎片多。', 'C', '段式', '页式', '固定分区', '段页式', '操作系统', 3);
INSERT INTO `objective` VALUES (211, '2', '1', '碎片现象的存在使得内存空间利用率（)', 'A', '降低', '提高', '得以改善', '不影响', '操作系统', 3);
INSERT INTO `objective` VALUES (212, '2', '1', '分区管理方式中，当内存碎片容量大于某一作业所申请的内存容量时()', 'C', '可以为这一作业分配内存', '不可以为这一作业分配内存', '拼接后，可以为这一作业分配内存', '一定能够为这一作业分配内存', '操作系统', 3);
INSERT INTO `objective` VALUES (213, '2', '1', '在请求分页存储管理方案中,若某用户空间为16个页面,页长1KB,现有页表如下,则逻辑地址0A1F(H)所对应的物理地址为()\n0 1\n1 5\n2 3\n3 7\n4 2', 'C', '0E1F(H)', '031F(H)', '0A1F(H)', '021F(H)', '操作系统', 3);
INSERT INTO `objective` VALUES (214, '2', '1', '在段式存储管理中,一个段是一个()区域', 'B', '定长的连续', '不定长的连续', '定长的不连续', '不定长的不连续', '操作系统', 3);
INSERT INTO `objective` VALUES (215, '2', '1', '外存上存放的数据', 'D', 'CPU可直接访问', 'CPU不可访问 ', '是高速缓冲器中的信息', '必须在访问前先装入内存', '操作系统', 3);
INSERT INTO `objective` VALUES (216, '2', '1', '采用动态重定位方式装入的作业,在执行中允许()将其移动. ', 'C', '用户有条件地', '用户有条件地', '操作系统有条件地', '操作系统无条件地', '操作系统', 3);
INSERT INTO `objective` VALUES (217, '2', '1', '分页式存储管理中,地址转换工作是由()完成的', 'A', '硬件', '地址转换程序', '用户程序', '装入程序', '操作系统', 3);
INSERT INTO `objective` VALUES (218, '2', '1', '通常,采用紧缩法消除内存碎片的存储管理技术是()', 'C', '固定分区法', '动态分区法', '可重定位分区法', '对换技术', '操作系统', 3);
INSERT INTO `objective` VALUES (219, '2', '1', '把逻辑地址转变为内存的物理地址的过程称作()', 'D', '编译', '连接', '运行', '重定位', '操作系统', 3);
INSERT INTO `objective` VALUES (220, '2', '1', '将作业地址空间中的逻辑地址转换为内存中的物理地址的过程称为 ()', 'D', '重定位', '逻辑变换', '地址交换', '进程创建', '操作系统', 3);
INSERT INTO `objective` VALUES (221, '2', '1', '）存储管理支持多道程序设计，算法简单，但存储碎片多。', 'C', '段式', '页式', '分区', '段页式', '操作系统', 3);
INSERT INTO `objective` VALUES (222, '2', '1', '逻辑地址转变为内存的物理地址的过程称作()', 'D', '编译', '连接', '运行', '重定位或地址映射', '操作系统', 3);
INSERT INTO `objective` VALUES (223, '2', '1', '逻辑地址就是()', 'B', '用户地址', '相对地址', '物理地址', '绝对地址', '操作系统', 3);
INSERT INTO `objective` VALUES (224, '2', '1', '使用绝对路径名访问文件是从（   ）开始按目录结构访问某个文件。', 'C', '当前目录', '用户主目录', '根目录', '父目录', '操作系统', 3);
INSERT INTO `objective` VALUES (225, '2', '1', '目录文件所存放的信息是（    ）。', 'D', '某一文件存放的数据信息', '某一文件的文件目录', '该目录中所有数据文件目录 ', '该目录中所有子目录文件和数据文件的目录 ', '操作系统', 3);
INSERT INTO `objective` VALUES (226, '2', '1', '由字符序列组成，文件内的信息不再划分结构，这是指（   ）。', 'A', '流式文件', '记录式文件', '顺序文件', '有序文件', '操作系统', 3);
INSERT INTO `objective` VALUES (227, '2', '1', '逻辑文件是（   ）的文件组织形式。', 'B', '在外部设备上', '从用户观点看 ', '虚拟存储', '目录', '操作系统', 3);
INSERT INTO `objective` VALUES (228, '2', '1', '对于一个文件的访问，常由      共同限制。', 'A', '用户访问权限和文件属性', '用户访问权限和文件优先级', '优先级和文件属性', '文件属性和口令', '操作系统', 3);
INSERT INTO `objective` VALUES (229, '2', '1', '在树型目录结构中，对某文件的首次访问通常都采用 ', 'C', '文件符号名；', '从根目录开始的路径名；', '从当前目录开始的路径名；', '用户文件描述符', '操作系统', 3);
INSERT INTO `objective` VALUES (230, '2', '1', '在树型目录结构中，文件被打开后，对文件的访问采用', 'D', '文件符号名；', '从根目录开始的路径名；', '从当前目录开始的路径名；', '用户文件描述符', '操作系统', 3);
INSERT INTO `objective` VALUES (231, '2', '1', '使用文件之前必须先        文件。', 'B', '命名', '打开', '建立', '备份', '操作系统', 3);
INSERT INTO `objective` VALUES (232, '2', '1', '如果文件系统中有两个文件重名，不应采用()', 'A', '一级目录结构', '树型目录结构 ', '二级目录结构', 'A和C', '操作系统', 3);
INSERT INTO `objective` VALUES (233, '2', '1', '外存（如磁盘）上存放的程序和数据（   ）。', 'B', '可由CPU', '必须在CPU访问之前移入内存', '是必须由文件系统管理的', '必须由进程调度程序管理', '操作系统', 3);
INSERT INTO `objective` VALUES (234, '2', '1', '如果允许不同用户的文件可以具有相同的文件名,通常采用( )来保证按名存取的安全', 'D', '重名翻译机构', '建立索引表', '建立指针', '多级目录结构', '操作系统', 3);
INSERT INTO `objective` VALUES (235, '2', '1', '在Linux中，文件系统的目录结构采用的是（ ）。', 'C', '线型结构', '线型结构', '树型层次结构', '网状结构', '操作系统', 3);
INSERT INTO `objective` VALUES (236, '2', '1', '在文件系统中，用户通过（ ）来访问文件。', 'C', '文件类型', '文件结构', '文件名', '文件属性', '操作系统', 3);
INSERT INTO `objective` VALUES (237, '2', '1', '在操作系统中，用户在使用I/O设备时，通常采用（)', 'B', '物理设备名', '逻辑设备名', '虚拟设备名', '设备牌号', '操作系统', 3);
INSERT INTO `objective` VALUES (238, '2', '1', '用户程序中的输入,输出操作实际上是由( )完成.', 'C', '程序设计语言', '编译系统', '操作系统', '标准库程序', '操作系统', 3);
INSERT INTO `objective` VALUES (239, '2', '1', '对磁盘进行移臂调度的目的是为了缩短( )时间', 'A', '寻找', '延迟', '传送', '启动', '操作系统', 3);
INSERT INTO `objective` VALUES (240, '2', '1', 'SPOOLing技术可以实现设备的( )分配', 'C', '独占', '共享', '虚拟', '物理', '操作系统', 3);
INSERT INTO `objective` VALUES (241, '2', '1', '设备的打开,关闭,读,写等操作是由()完成的', 'C', '用户程序', '编译程序', '设备驱动程序', '设备分配程序', '操作系统', 3);
INSERT INTO `objective` VALUES (242, '2', '1', 'CPU输出数据的速度远远高于打印机的打印速度,为了解决这一矛盾,可采用( ).', 'C', '并行技术', '通道技术', '缓冲技术', '虚存技术', '操作系统', 3);
INSERT INTO `objective` VALUES (243, '2', '1', '在现代操作系统中采用缓冲技术的主要目的是（ ）。', 'C', '改善用户编程环境', '提高CPU的处理速度', '提高CPU和设备之间的并行程度', '实现与设备无关性', '操作系统', 3);
INSERT INTO `objective` VALUES (244, '2', '1', '操作系统中采用缓冲技术的目的是为了增强系统（     ）的能力。', 'D', '串行操作', '串行操作', '重执操作', '并行操作', '操作系统', 3);
INSERT INTO `objective` VALUES (245, '2', '1', '操作系统采用缓冲技术，能够减少对CPU的（ A）次数，从而提高资源的利用率。', 'A', '中断', '访问', '控制', '依赖', '操作系统', 3);
INSERT INTO `objective` VALUES (246, '2', '1', 'I/O设备是指 (   )', 'A', '外部设备。它负责与计算机的外部世界通信用的输入.输出设备。I/O设备包括：I/O接口，设备控制器，I/O设备，I/O设备驱动程序', 'I/O系统，它负责与计算机的外部世界通信用的输入.输出设备', '负责与计算机的外部世界通信用的硬件和软件设备', '完成计算机与外部世界的联系，即输入.输出设备', '操作系统', 3);
INSERT INTO `objective` VALUES (247, '2', '1', '通道是一种（    ）。', 'C', 'I/O端口', 'I/O端口', 'I/O专用处理机', '软件工具', '操作系统', 3);
INSERT INTO `objective` VALUES (248, '2', '1', '缓冲技术用于（   ）。', 'A', '提高主机和设备交换信息的速度', '提供主、辅存接口', '提高设备利用率', '扩充相对地址空间', '操作系统', 3);
INSERT INTO `objective` VALUES (249, '2', '1', '在设备管理中为了提高I/O速度和设备利用率，是通过       功能实现的。', 'B', '设备分配', '缓冲管理', '设备独立性', '虚拟设备', '操作系统', 3);
INSERT INTO `objective` VALUES (250, '1', '1', '系统调用的目的是().', 'A', '请求系统服务', '终止系统服务', '申请系统资源 ', '释放系统资源', '操作系统', 3);
INSERT INTO `objective` VALUES (251, '1', '1', '系统调用是(   )。', 'B', '一条机器指令', '提供编程人员访问操作系统的接口', '中断子程序', '用户子程序', '操作系统', 3);
INSERT INTO `objective` VALUES (252, '1', '1', '系统调用是由操作系统提供的内部调用,它( ). ', 'B', '直接通过键盘交互方式使用', '只能通过用户程序间接使用', '是命令接口中的命令使用 ', '与系统的命令一样', '操作系统', 3);
INSERT INTO `objective` VALUES (253, '1', '1', '一般地，进程由PCB和其执行的程序,数据所组成.(判断题：正确选A，错误选B)', 'A', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (254, '1', '1', '一个进程在执行过程中可以被中断事件打断,当相应的中断处理完成后,就一定恢复该进程被中断时的现场,使它继续执行.', 'B', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (255, '1', '1', '用信号量和P,V原语操作可解决互斥问题,互斥信号量的初值一定为1.', 'B', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (256, '1', '1', '系统发生死锁时,其资源分配图中必然存在环路.因此,如果资源分配图中存在环路,则系统一定出现死锁.', 'B', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (257, '1', '1', '进程控制块(PCB)是专为用户进程设置的私有数据结构,每个进程仅有一个PCB.', 'B', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (258, '1', '1', '进程控制块(PCB)是为所有进程设置的私有数据结构,每个进程仅有一个PCB.', 'A', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (259, '1', '1', '产生死锁的根本原因是供使用的资源数少于需求资源的进程数.', 'A', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (260, '1', '1', '在采用树型目录结构的文件系统中,各用户的文件名可以互不相同.', 'A', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (261, '1', '1', '在采用树型目录结构的文件系统中,各用户的文件名必须互不相同.', 'B', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (262, '1', '1', '平均周转时间和周转时间与选用的调度算法有关.', 'A', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (263, '1', '1', '利用交换技术扩充内存时,设计时必须考虑的问题是:如何减少信息交换量,降低交换所用的时间.', 'A', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (264, '1', '1', 'P,V操作不仅可以实现并发进程之间的同步和互斥,而且能够防止系统进入死锁状态.', 'B', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (265, '1', '1', '程序在运行时需要很多系统资源，如内存、文件、设备等，因此操作系统以程序为单位分配系统资源。', 'B', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (266, '1', '1', '由于资源数少于进程对资源的需求数，因而产生资源的竞争，所以这种资源的竞争必然会引起死锁。', 'B', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (267, '1', '1', '分页存储管理中，由于地址是由页号p和页内地址d两部分组成，所以作业的逻辑地址空间是二维的。', 'B', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (268, '1', '1', '多级目录的作用之一是解决了用户的文件名重名问题。', 'A', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (269, '1', '1', '操作系统是系统软件中的一种，在进行系统安装时可以先安装其它软件，然后再装操作系统。', 'B', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (270, '1', '1', '一个正在运行的进程可以阻塞其他进程。但一个被阻塞的进程不能唤醒自己，它只能等待别的进程唤醒它。', 'B', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (271, '1', '1', '产生死锁的根本原因是供使用的资源数少于需求资源的进程数。', 'A', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (272, '1', '1', '引入缓冲技术的主要目的是平滑数据的I/O速率。', 'A', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (273, '1', '1', '与分时系统相比，实时操作系统对响应时间的紧迫性要求高的多。', 'A', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (274, '1', '1', '一个正在运行的进程可以主动地阻塞自己。但一个被阻塞的进程不能唤醒自己，它只能等待别的进程唤醒它。', 'A', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (275, '1', '1', '利用置换技术扩充内存时，设计时必须考虑的问题是：如何减少信息交换量、降低交换所用的时间。', 'A', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (276, '1', '1', '死锁是指因相互竞争资源使得系统中有多个阻塞进程的情况。', 'B', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (277, '1', '1', '操作系统是计算机系统中必不可少的系统软件。', 'A', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (278, '1', '1', '采用动态重定位技术的系统，目标程序可以不经任何改动，而装入物理内存。', 'A', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (279, '1', '1', '产生死锁的原因可归结为竞争资源和进程推进顺序不当.', 'A', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (280, '1', '1', '死锁是指两个或多个进程都处于互等状态而无法继续工作.', 'A', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (281, '1', '1', '若系统中并发运行的进程和资源之间满足互斥使用、保持和等待、非剥夺性和循环等待，则可判定系统中发生了死锁。', 'B', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (282, '1', '1', '用户操作系统一定是具有多道功能的操作系统', 'A', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (283, '1', '1', '进程的相对速度不能由自己来控制.', 'A', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (284, '1', '1', '实时系统中的作业周转时间有严格的限制.', 'B', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (285, '1', '1', '进程在运行中，可以自行修改自己的进程控制块.', 'B', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (286, '1', '1', '设备独立性（或无关性）是指能独立实现设备共享的一种特性.', 'B', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (287, '1', '1', 'P操作和V操作都是原语操作.', 'A', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (288, '1', '1', 'SPOOLing系统实现设备管理的虚拟技术，即：将独占设备改造为共享设备，它由专门负责I/O的常驻内存的进程以及输入、输出井组成。', 'A', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (289, '1', '1', '信号量机制是一种有效的实现进程同步与互斥的工具.信号量只能由PV操作来改变.', 'A', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (290, '1', '1', '同步反映了进程间的合作关系，互斥反映了进程间的竞争关系。', 'A', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (291, '1', '1', '环路既是死锁的必要条件，又是死锁的充分条件。', 'B', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (292, '1', '1', '在采用树型目录结构的文件系统中，各用户的文件名必须互不相同。', 'B', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (293, '1', '1', '进程的互斥和同步总是因相互制约而同时引起', 'B', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);
INSERT INTO `objective` VALUES (294, '1', '1', '死锁是指两个或多个进程都处于互等状态而无法继续工作。', 'A', 'A', 'B', '(判断题：正确选A，错误选B)', '(判断题：正确选A，错误选B)', '操作系统', 3);

-- ----------------------------
-- Table structure for subjective
-- ----------------------------
DROP TABLE IF EXISTS `subjective`;
CREATE TABLE `subjective`  (
  `sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_difficuly` int(11) NULL DEFAULT NULL,
  `sub_chapter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sub_answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sub_book` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sub_grade` int(5) NULL DEFAULT NULL,
  PRIMARY KEY (`sub_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of subjective
-- ----------------------------
INSERT INTO `subjective` VALUES (6, 1, '1', '包的作用：', '1、将功能相近的类放到同一个包中，可以方便查找和使用。 2、在一定程度上避免命名冲突。 3、在java中，访问权限是可以是以包为单位的。', 'Java', 10);
INSERT INTO `subjective` VALUES (7, 2, '2', '简述方法的重写和重载 ', 'override（重写） 1.方法名、参数、返回值相同。 2、重写方法的访问修饰符一定要大于或等于被重写的方法。 3、重写方法不能抛出新的异常或者抛出比被重写方法更宽泛的异常 4、存在于父类和子类之间。 5、被final修饰的方法不能重写 overload（重载） 1、参数类型、个数、顺序至少有一个不相同。 2、不能重载只有返回值不同的方法名。 3、存在于同类中。', 'Java', 10);
INSERT INTO `subjective` VALUES (8, 3, '3', '简述this关键字的用法', '1、this调用本类中的属性，也就是类中的成员变量； 2、this调用本类中的其他方法； 3、this调用本类中的其他构造方法，调用时要放在构造方法的首行。', 'Java', 10);
INSERT INTO `subjective` VALUES (9, 1, '1', '关系模式R(A, B, C, D, E, G)有函数依赖        {BG → C, BD → E, DG → C,DAG → CB, AG → B, B → D}    请求此模型的最小函数依赖集。', 'Fmin={B → E, DG → C, AG → B, B → D}', 'Java', 10);
INSERT INTO `subjective` VALUES (10, 2, '2', '设教学数据库中有基本表：       S(SNO，SNAME， AGE， SEX)，其属性分别表示学号、学生姓名、年龄、性别。', 'σS1.SNO=S2.SNO and S1.AGE<>S2.AGE(ρs1(S)×ρS2(S))=Ф', 'Java', 10);
INSERT INTO `subjective` VALUES (11, 3, '3', '已知关系模式R(A,B,C,D,E)，有函数依赖{ AB→C，DE→C和B→D，BE→CD }，回答以下问题：    (a) R满足的最高范式。    (b) 若R不满足3NF，将其分解为几个满足3NF的关系模式。', '(1) 根据给定的FD，可求得关系模式的键为：{ABE}       ∵ B→D  其中B是键的子集，而D是非键属性 ∴该关系模式属于1NF    (2)  又 最小函数依赖集为：{B→D、AB→C、DE→C}       因此分解成3NF的关系模式为：R1(A,B,C)，R2(A,B,E)，R3(B,D)，R4(D,E,C)', 'Java', 10);
INSERT INTO `subjective` VALUES (12, 1, '1', '白盒测试法有哪些覆盖标准?试对它们的检错能力进行比较。', '白盒测试法的覆盖标准有：语句覆盖、判定覆盖、条件覆盖、条件覆盖、条件组合覆盖和路径覆盖。前五种覆盖标准把注意力集中在单个判定或判定的各个条件上，可能会使程序某些路径没有执行到。路径覆盖根据各判定表达式取值的组合，使程序沿着不同的路径执行，查错能力强。但由于它是从各判定的整体组合出发设计测试用例的，可能使测试用例达不到条件组合覆盖的要求。', '软工', 10);
INSERT INTO `subjective` VALUES (13, 2, '2', '试比较程序流程图与PAD图的特点。', '这两种图均为详细设计阶段使用的描述工具。   程序流程图：直观清晰，易于使用，但控制流程线不易限制，不易反映逐步求精的过程，不易表示数据结构。   PAD图：是一种由左往右展开的二维树型结构，其能清晰地反映程序的层次结构，支持逐步求精的设计方法，易读易写，使用方便；可自动生成程序，支持结构化程序设计原理。', '软工', 10);
INSERT INTO `subjective` VALUES (14, 3, '3', '非渐增式测试与渐增式测试有什么区别？', '两种都用于集成测试。渐增式是把下一个要测试的摸块同已经测试好的模 块结合起来进行测试，每次增加一个模块。非渐增式先分别测每个模块，再把 所有模块按设计要求放在一起结合成所要的程序。', '软工', 10);
INSERT INTO `subjective` VALUES (15, 1, '1', '设计类的属性时必须要定义是哪两项？', '设计类的属性时必须要定义的内容：       ⑴ 属性的类型：设计属性时必须要根据开发语言确定每个属性的数据类型，如果数据类型不够，设计人员可以利用已有的数据类型定义新的数据类型。       ⑵ 属性的可见性。在设计属性时要确定公有属性、私有属性、受保护属性。', '软工', 10);
INSERT INTO `subjective` VALUES (16, 3, '3', '好的编程风格应遵循哪四条规则？', '⑴节简化     ⑵模块化      ⑶简单化    ⑷文档化', '软工', 10);
INSERT INTO `subjective` VALUES (17, 3, '3', '什么是抽象类？什么是抽象方法？有什么特点？', '使用abstract关键字修饰的类\r\n特点：\r\n1、不能创建实例，即不能new一个抽象类\r\n2、可以不包含抽象方法，若一旦包含，该类必须作为抽象类\r\n3、若子类没有实现父类所有的抽象方法，那么子类也得作为抽象类（抽象派生类）\r\n4、构造方法不能都定义成私有的，否则不能有子类（创建子类对象前先调用父类构造方法）\r\n5、抽象类不能使用final修饰，因为必须有子类，抽象方法才能得以实现\r\n使用abstract修饰且没有方法体的方法，称为“抽象方法”。', 'Java', 10);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'admin', 'admin');
INSERT INTO `user` VALUES (2, 'test', 'test', 'test');
INSERT INTO `user` VALUES (3, '小华', '123', '123');
INSERT INTO `user` VALUES (4, 'zjr', '321', '321');
INSERT INTO `user` VALUES (5, '小明', '1234', '1234');
INSERT INTO `user` VALUES (6, '小张', '12345', '12345');
INSERT INTO `user` VALUES (7, '小李子', '123456', '123456');

SET FOREIGN_KEY_CHECKS = 1;
