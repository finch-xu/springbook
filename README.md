# ssm-crud

java+spring+springMVC+mybatis+jsp+maven+IntelliJ IDEA<br>

##[写一个详细过程在我的博客](https://my.oschina.net/finchxu/blog/3007984) <br>

##工作环境：<br>
*Windows 10<br>
*jdk8(1.8)<br>
*IntelliJ IDEA <br>
*spring 4 和 springMVC<br>
*MySQL 5.7<br>
*maven 3.3<br>
*mybatis 3.4<br>
*DBCP<br>
*Tomcat 8.5<br>

##Mysql建表：<br>
···SQL
CREATE DATABASE books;<br>
CREATE TABLE `bookadmin`  (<br>
  `bid` int(11) NOT NULL AUTO_INCREMENT,<br>
  `bn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,<br>
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,<br>
  `press` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,<br>
  PRIMARY KEY (`bid`) USING BTREE<br>
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;<br>
···

