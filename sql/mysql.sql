-- MySQL dump 10.13  Distrib 8.0.44, for Linux (aarch64)
--
-- Host: localhost    Database: graph_edu
-- ------------------------------------------------------
-- Server version	8.0.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `graph_edu`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `graph_edu` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `graph_edu`;

--
-- Table structure for table `biz_teaching_case`
--

DROP TABLE IF EXISTS `biz_teaching_case`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biz_teaching_case` (
  `case_id` bigint NOT NULL AUTO_INCREMENT COMMENT '案例ID主键',
  `case_name` varchar(100) NOT NULL COMMENT '教学案例名称',
  `case_type` varchar(50) DEFAULT '基础图论' COMMENT '案例分类(如:二分图,网络拓扑等)',
  `graph_data` longtext NOT NULL COMMENT '图JSON结构数据',
  `node_count` int DEFAULT '0' COMMENT '节点数量',
  `edge_count` int DEFAULT '0' COMMENT '边数量',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者(管理员)',
  `create_time` datetime DEFAULT NULL COMMENT '发布时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '案例教学说明',
  PRIMARY KEY (`case_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='教学案例库表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biz_teaching_case`
--

LOCK TABLES `biz_teaching_case` WRITE;
/*!40000 ALTER TABLE `biz_teaching_case` DISABLE KEYS */;
INSERT INTO `biz_teaching_case` VALUES (100,'测试案列2','erfentu','{\"nodes\":[{\"id\":\"node1\",\"label\":\"V1\",\"x\":200,\"y\":200,\"type\":\"circle\",\"size\":40,\"style\":{\"active\":{\"fill\":\"#FFC069\",\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"selected\":{\"fill\":\"#9EC9FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":3},\"highlight\":{\"fill\":\"rgb(223, 234, 255)\",\"stroke\":\"#4572d9\",\"lineWidth\":2,\"text-shape\":{\"fontWeight\":500}},\"inactive\":{\"fill\":\"rgb(247, 250, 255)\",\"stroke\":\"rgb(191, 213, 255)\",\"lineWidth\":1},\"disable\":{\"fill\":\"rgb(250, 250, 250)\",\"stroke\":\"rgb(224, 224, 224)\",\"lineWidth\":1},\"fill\":\"#C6E5FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":2,\"cursor\":\"pointer\"},\"labelCfg\":{\"style\":{\"fill\":\"#333\",\"fontSize\":14,\"fontWeight\":\"bold\"}}},{\"id\":\"node2\",\"label\":\"V2\",\"x\":400,\"y\":200,\"type\":\"circle\",\"size\":40,\"style\":{\"active\":{\"fill\":\"#FFC069\",\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"selected\":{\"fill\":\"#9EC9FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":3},\"highlight\":{\"fill\":\"rgb(223, 234, 255)\",\"stroke\":\"#4572d9\",\"lineWidth\":2,\"text-shape\":{\"fontWeight\":500}},\"inactive\":{\"fill\":\"rgb(247, 250, 255)\",\"stroke\":\"rgb(191, 213, 255)\",\"lineWidth\":1},\"disable\":{\"fill\":\"rgb(250, 250, 250)\",\"stroke\":\"rgb(224, 224, 224)\",\"lineWidth\":1},\"fill\":\"#C6E5FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":2,\"cursor\":\"pointer\"},\"labelCfg\":{\"style\":{\"fill\":\"#333\",\"fontSize\":14,\"fontWeight\":\"bold\"}}}],\"edges\":[{\"source\":\"node1\",\"target\":\"node2\",\"type\":\"line\",\"style\":{\"selected\":{\"stroke\":\"#F56C6C\",\"lineWidth\":3},\"active\":{\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"stroke\":\"#A3B1BF\",\"lineWidth\":2,\"endArrow\":true,\"cursor\":\"pointer\",\"lineAppendWidth\":15},\"id\":\"edge-0.047910989652377171773135686590\",\"startPoint\":{\"x\":221,\"y\":200},\"endPoint\":{\"x\":379,\"y\":200}}],\"combos\":[]}',2,1,'','2026-03-10 17:42:07','','2026-03-10 17:42:23','12345'),(101,'teaching1','shu','{\"nodes\":[{\"id\":\"node_1773851823784\",\"label\":\"root\",\"x\":470.79714838334627,\"y\":122.92933629974846,\"type\":\"circle\",\"size\":40,\"style\":{\"active\":{\"fill\":\"#FFC069\",\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"selected\":{\"fill\":\"#9EC9FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":3},\"highlight\":{\"fill\":\"rgb(223, 234, 255)\",\"stroke\":\"#4572d9\",\"lineWidth\":2,\"text-shape\":{\"fontWeight\":500}},\"inactive\":{\"fill\":\"rgb(247, 250, 255)\",\"stroke\":\"rgb(191, 213, 255)\",\"lineWidth\":1},\"disable\":{\"fill\":\"rgb(250, 250, 250)\",\"stroke\":\"rgb(224, 224, 224)\",\"lineWidth\":1},\"fill\":\"#C6E5FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":2,\"cursor\":\"pointer\"},\"labelCfg\":{\"style\":{\"fill\":\"#333\",\"fontSize\":14,\"fontWeight\":\"bold\"}}},{\"id\":\"node_1773851826565\",\"label\":\"V1\",\"x\":332.7532816556261,\"y\":283.28355831891537,\"type\":\"circle\",\"size\":40,\"style\":{\"active\":{\"fill\":\"#FFC069\",\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"selected\":{\"fill\":\"#9EC9FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":3},\"highlight\":{\"fill\":\"rgb(223, 234, 255)\",\"stroke\":\"#4572d9\",\"lineWidth\":2,\"text-shape\":{\"fontWeight\":500}},\"inactive\":{\"fill\":\"rgb(247, 250, 255)\",\"stroke\":\"rgb(191, 213, 255)\",\"lineWidth\":1},\"disable\":{\"fill\":\"rgb(250, 250, 250)\",\"stroke\":\"rgb(224, 224, 224)\",\"lineWidth\":1},\"fill\":\"#C6E5FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":2,\"cursor\":\"pointer\"},\"labelCfg\":{\"style\":{\"fill\":\"#333\",\"fontSize\":14,\"fontWeight\":\"bold\"}}},{\"id\":\"node_1773851829440\",\"label\":\"node2\",\"x\":583.3359048257031,\"y\":227.93732083852734,\"type\":\"circle\",\"size\":40,\"style\":{\"active\":{\"fill\":\"#FFC069\",\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"selected\":{\"fill\":\"#9EC9FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":3},\"highlight\":{\"fill\":\"rgb(223, 234, 255)\",\"stroke\":\"#4572d9\",\"lineWidth\":2,\"text-shape\":{\"fontWeight\":500}},\"inactive\":{\"fill\":\"rgb(247, 250, 255)\",\"stroke\":\"rgb(191, 213, 255)\",\"lineWidth\":1},\"disable\":{\"fill\":\"rgb(250, 250, 250)\",\"stroke\":\"rgb(224, 224, 224)\",\"lineWidth\":1},\"fill\":\"#C6E5FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":2,\"cursor\":\"pointer\"},\"labelCfg\":{\"style\":{\"fill\":\"#333\",\"fontSize\":14,\"fontWeight\":\"bold\"}}}],\"edges\":[{\"source\":\"node_1773851823784\",\"target\":\"node_1773851826565\",\"type\":\"line\",\"label\":\"1\",\"style\":{\"selected\":{\"stroke\":\"#F56C6C\",\"lineWidth\":3},\"active\":{\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"stroke\":\"#A3B1BF\",\"lineWidth\":2,\"endArrow\":true,\"cursor\":\"pointer\",\"lineAppendWidth\":15,\"highlight\":{\"stroke\":\"rgb(95, 149, 255)\",\"lineWidth\":2,\"text-shape\":{\"fontWeight\":500}},\"inactive\":{\"stroke\":\"rgb(234, 234, 234)\",\"lineWidth\":1},\"disable\":{\"stroke\":\"rgb(245, 245, 245)\",\"lineWidth\":1}},\"labelCfg\":{\"autoRotate\":true,\"refY\":-10,\"style\":{\"fill\":\"#333\",\"fontSize\":13,\"fontWeight\":\"bold\"}},\"id\":\"edge-0.73585175965159991773851847064\",\"startPoint\":{\"x\":457.09638162493843,\"y\":138.84439175776387},\"endPoint\":{\"x\":346.45404841403393,\"y\":267.3685028609}},{\"source\":\"node_1773851823784\",\"target\":\"node_1773851829440\",\"type\":\"line\",\"label\":\"2\",\"style\":{\"selected\":{\"stroke\":\"#F56C6C\",\"lineWidth\":3},\"active\":{\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"stroke\":\"#A3B1BF\",\"lineWidth\":2,\"endArrow\":true,\"cursor\":\"pointer\",\"lineAppendWidth\":15,\"highlight\":{\"stroke\":\"rgb(95, 149, 255)\",\"lineWidth\":2,\"text-shape\":{\"fontWeight\":500}},\"inactive\":{\"stroke\":\"rgb(234, 234, 234)\",\"lineWidth\":1},\"disable\":{\"stroke\":\"rgb(245, 245, 245)\",\"lineWidth\":1}},\"labelCfg\":{\"autoRotate\":true,\"refY\":-10,\"style\":{\"fill\":\"#333\",\"fontSize\":13,\"fontWeight\":\"bold\"}},\"id\":\"edge-0.55880576516193481773851850897\",\"startPoint\":{\"x\":486.1512272175434,\"y\":137.25596406601846},\"endPoint\":{\"x\":567.981825991506,\"y\":213.61069307225733}}],\"combos\":[]}',3,2,'','2026-03-19 00:38:34','',NULL,'shu');
/*!40000 ALTER TABLE `biz_teaching_case` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biz_user_graph`
--

DROP TABLE IF EXISTS `biz_user_graph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biz_user_graph` (
  `graph_id` bigint NOT NULL AUTO_INCREMENT COMMENT '图ID主键',
  `graph_name` varchar(100) NOT NULL COMMENT '图模型名称',
  `graph_data` longtext NOT NULL COMMENT '图JSON结构数据(存G6导出的节点和边)',
  `node_count` int DEFAULT '0' COMMENT '节点数量(方便列表展示)',
  `edge_count` int DEFAULT '0' COMMENT '边数量(方便列表展示)',
  `user_id` bigint NOT NULL COMMENT '所属用户ID(关联sys_user表)',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注或描述',
  PRIMARY KEY (`graph_id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户个人图库表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biz_user_graph`
--

LOCK TABLES `biz_user_graph` WRITE;
/*!40000 ALTER TABLE `biz_user_graph` DISABLE KEYS */;
INSERT INTO `biz_user_graph` VALUES (100,'test','{\"nodes\":[{\"id\":\"node1\",\"label\":\"V1\",\"x\":200,\"y\":200,\"type\":\"circle\",\"size\":40,\"style\":{\"active\":{\"fill\":\"#FFC069\",\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"selected\":{\"fill\":\"#9EC9FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":3},\"highlight\":{\"fill\":\"rgb(223, 234, 255)\",\"stroke\":\"#4572d9\",\"lineWidth\":2,\"text-shape\":{\"fontWeight\":500}},\"inactive\":{\"fill\":\"rgb(247, 250, 255)\",\"stroke\":\"rgb(191, 213, 255)\",\"lineWidth\":1},\"disable\":{\"fill\":\"rgb(250, 250, 250)\",\"stroke\":\"rgb(224, 224, 224)\",\"lineWidth\":1},\"fill\":\"#C6E5FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":2,\"cursor\":\"pointer\"},\"labelCfg\":{\"style\":{\"fill\":\"#333\",\"fontSize\":14,\"fontWeight\":\"bold\"}}},{\"id\":\"node2\",\"label\":\"V2\",\"x\":400,\"y\":200,\"type\":\"circle\",\"size\":40,\"style\":{\"active\":{\"fill\":\"#FFC069\",\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"selected\":{\"fill\":\"#9EC9FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":3},\"highlight\":{\"fill\":\"rgb(223, 234, 255)\",\"stroke\":\"#4572d9\",\"lineWidth\":2,\"text-shape\":{\"fontWeight\":500}},\"inactive\":{\"fill\":\"rgb(247, 250, 255)\",\"stroke\":\"rgb(191, 213, 255)\",\"lineWidth\":1},\"disable\":{\"fill\":\"rgb(250, 250, 250)\",\"stroke\":\"rgb(224, 224, 224)\",\"lineWidth\":1},\"fill\":\"#C6E5FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":2,\"cursor\":\"pointer\"},\"labelCfg\":{\"style\":{\"fill\":\"#333\",\"fontSize\":14,\"fontWeight\":\"bold\"}}}],\"edges\":[{\"source\":\"node1\",\"target\":\"node2\",\"type\":\"line\",\"style\":{\"selected\":{\"stroke\":\"#F56C6C\",\"lineWidth\":3},\"active\":{\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"stroke\":\"#A3B1BF\",\"lineWidth\":2,\"endArrow\":true,\"cursor\":\"pointer\",\"lineAppendWidth\":15},\"id\":\"edge-0.66040724171633221773135270359\",\"startPoint\":{\"x\":221,\"y\":200},\"endPoint\":{\"x\":379,\"y\":200}}],\"combos\":[]}',2,1,1,'','2026-03-10 17:39:55','','2026-03-10 17:40:08','ceshi2'),(101,'空图','{\"nodes\":[{\"id\":\"node1\",\"label\":\"V1\",\"x\":305.4203902104957,\"y\":246.66204518909504,\"type\":\"circle\",\"size\":40,\"style\":{\"selected\":{\"fill\":\"#9EC9FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":3},\"active\":{\"fill\":\"#FFC069\",\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"fill\":\"#C6E5FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":2,\"cursor\":\"pointer\"},\"labelCfg\":{\"style\":{\"fill\":\"#333\",\"fontSize\":14,\"fontWeight\":\"bold\"}}},{\"id\":\"node2\",\"label\":\"V2\",\"x\":395.28182180800985,\"y\":278.80524151429756,\"type\":\"circle\",\"size\":40,\"style\":{\"selected\":{\"fill\":\"#9EC9FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":3},\"active\":{\"fill\":\"#FFC069\",\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"fill\":\"#C6E5FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":2,\"cursor\":\"pointer\"},\"labelCfg\":{\"style\":{\"fill\":\"#333\",\"fontSize\":14,\"fontWeight\":\"bold\"}}}],\"edges\":[],\"combos\":[]}',2,0,1,'','2026-03-10 18:45:59','','2026-03-10 18:46:11',NULL),(102,'testadmin','{\"nodes\":[{\"id\":\"node1\",\"label\":\"V1\",\"x\":200,\"y\":200,\"type\":\"circle\",\"size\":40,\"style\":{\"active\":{\"fill\":\"#FFC069\",\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"selected\":{\"fill\":\"#9EC9FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":3},\"highlight\":{\"fill\":\"rgb(223, 234, 255)\",\"stroke\":\"#4572d9\",\"lineWidth\":2,\"text-shape\":{\"fontWeight\":500}},\"inactive\":{\"fill\":\"rgb(247, 250, 255)\",\"stroke\":\"rgb(191, 213, 255)\",\"lineWidth\":1},\"disable\":{\"fill\":\"rgb(250, 250, 250)\",\"stroke\":\"rgb(224, 224, 224)\",\"lineWidth\":1},\"fill\":\"#C6E5FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":2,\"cursor\":\"pointer\"},\"labelCfg\":{\"style\":{\"fill\":\"#333\",\"fontSize\":14,\"fontWeight\":\"bold\"}}},{\"id\":\"node2\",\"label\":\"V2\",\"x\":400,\"y\":200,\"type\":\"circle\",\"size\":40,\"style\":{\"active\":{\"fill\":\"#FFC069\",\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"selected\":{\"fill\":\"#9EC9FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":3},\"highlight\":{\"fill\":\"rgb(223, 234, 255)\",\"stroke\":\"#4572d9\",\"lineWidth\":2,\"text-shape\":{\"fontWeight\":500}},\"inactive\":{\"fill\":\"rgb(247, 250, 255)\",\"stroke\":\"rgb(191, 213, 255)\",\"lineWidth\":1},\"disable\":{\"fill\":\"rgb(250, 250, 250)\",\"stroke\":\"rgb(224, 224, 224)\",\"lineWidth\":1},\"fill\":\"#C6E5FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":2,\"cursor\":\"pointer\"},\"labelCfg\":{\"style\":{\"fill\":\"#333\",\"fontSize\":14,\"fontWeight\":\"bold\"}}},{\"id\":\"node3\",\"label\":\"V3\",\"x\":261.12497522185157,\"y\":320.59629681345615,\"type\":\"circle\",\"size\":40,\"style\":{\"active\":{\"fill\":\"#FFC069\",\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"selected\":{\"fill\":\"#9EC9FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":3},\"highlight\":{\"fill\":\"rgb(223, 234, 255)\",\"stroke\":\"#4572d9\",\"lineWidth\":2,\"text-shape\":{\"fontWeight\":500}},\"inactive\":{\"fill\":\"rgb(247, 250, 255)\",\"stroke\":\"rgb(191, 213, 255)\",\"lineWidth\":1},\"disable\":{\"fill\":\"rgb(250, 250, 250)\",\"stroke\":\"rgb(224, 224, 224)\",\"lineWidth\":1},\"fill\":\"#C6E5FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":2,\"cursor\":\"pointer\"},\"labelCfg\":{\"style\":{\"fill\":\"#333\",\"fontSize\":14,\"fontWeight\":\"bold\"}}},{\"id\":\"node4\",\"label\":\"V4\",\"x\":475.0337105897537,\"y\":303.7345136933222,\"type\":\"circle\",\"size\":40,\"style\":{\"active\":{\"fill\":\"#FFC069\",\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"selected\":{\"fill\":\"#9EC9FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":3},\"highlight\":{\"fill\":\"rgb(223, 234, 255)\",\"stroke\":\"#4572d9\",\"lineWidth\":2,\"text-shape\":{\"fontWeight\":500}},\"inactive\":{\"fill\":\"rgb(247, 250, 255)\",\"stroke\":\"rgb(191, 213, 255)\",\"lineWidth\":1},\"disable\":{\"fill\":\"rgb(250, 250, 250)\",\"stroke\":\"rgb(224, 224, 224)\",\"lineWidth\":1},\"fill\":\"#C6E5FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":2,\"cursor\":\"pointer\"},\"labelCfg\":{\"style\":{\"fill\":\"#333\",\"fontSize\":14,\"fontWeight\":\"bold\"}}},{\"id\":\"node_1773827106774\",\"label\":\"V5\",\"x\":579.5934905940467,\"y\":313.6388287165624,\"type\":\"circle\",\"size\":40,\"style\":{\"active\":{\"fill\":\"#FFC069\",\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"selected\":{\"fill\":\"#9EC9FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":3},\"highlight\":{\"fill\":\"rgb(223, 234, 255)\",\"stroke\":\"#4572d9\",\"lineWidth\":2,\"text-shape\":{\"fontWeight\":500}},\"inactive\":{\"fill\":\"rgb(247, 250, 255)\",\"stroke\":\"rgb(191, 213, 255)\",\"lineWidth\":1},\"disable\":{\"fill\":\"rgb(250, 250, 250)\",\"stroke\":\"rgb(224, 224, 224)\",\"lineWidth\":1},\"fill\":\"#C6E5FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":2,\"cursor\":\"pointer\"},\"labelCfg\":{\"style\":{\"fill\":\"#333\",\"fontSize\":14,\"fontWeight\":\"bold\"}}},{\"id\":\"node_1773850509675\",\"label\":\"V6\",\"x\":609.9813701268995,\"y\":193.5481224599106,\"type\":\"circle\",\"size\":40,\"style\":{\"active\":{\"fill\":\"#FFC069\",\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"selected\":{\"fill\":\"#9EC9FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":3},\"highlight\":{\"fill\":\"rgb(223, 234, 255)\",\"stroke\":\"#4572d9\",\"lineWidth\":2,\"text-shape\":{\"fontWeight\":500}},\"inactive\":{\"fill\":\"rgb(247, 250, 255)\",\"stroke\":\"rgb(191, 213, 255)\",\"lineWidth\":1},\"disable\":{\"fill\":\"rgb(250, 250, 250)\",\"stroke\":\"rgb(224, 224, 224)\",\"lineWidth\":1},\"fill\":\"#C6E5FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":2,\"cursor\":\"pointer\"},\"labelCfg\":{\"style\":{\"fill\":\"#333\",\"fontSize\":14,\"fontWeight\":\"bold\"}}}],\"edges\":[{\"source\":\"node1\",\"target\":\"node2\",\"type\":\"line\",\"style\":{\"active\":{\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"selected\":{\"stroke\":\"#F56C6C\",\"lineWidth\":3},\"highlight\":{\"stroke\":\"rgb(95, 149, 255)\",\"lineWidth\":2,\"text-shape\":{\"fontWeight\":500}},\"inactive\":{\"stroke\":\"rgb(234, 234, 234)\",\"lineWidth\":1},\"disable\":{\"stroke\":\"rgb(245, 245, 245)\",\"lineWidth\":1},\"stroke\":\"#A3B1BF\",\"lineWidth\":2,\"endArrow\":true,\"cursor\":\"pointer\",\"lineAppendWidth\":15},\"id\":\"edge-0.047910989652377171773135686590\",\"startPoint\":{\"x\":221,\"y\":200},\"endPoint\":{\"x\":379,\"y\":200},\"label\":\"5\",\"labelCfg\":{\"autoRotate\":true,\"refY\":-10,\"style\":{\"fill\":\"#333\",\"fontSize\":13,\"fontWeight\":\"bold\"}}},{\"source\":\"node1\",\"target\":\"node3\",\"type\":\"line\",\"label\":\"1\",\"style\":{\"active\":{\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"selected\":{\"stroke\":\"#F56C6C\",\"lineWidth\":3},\"highlight\":{\"stroke\":\"rgb(95, 149, 255)\",\"lineWidth\":2,\"text-shape\":{\"fontWeight\":500}},\"inactive\":{\"stroke\":\"rgb(234, 234, 234)\",\"lineWidth\":1},\"disable\":{\"stroke\":\"rgb(245, 245, 245)\",\"lineWidth\":1},\"stroke\":\"#A3B1BF\",\"lineWidth\":2,\"endArrow\":true,\"cursor\":\"pointer\",\"lineAppendWidth\":15},\"labelCfg\":{\"autoRotate\":true,\"refY\":-10,\"style\":{\"fill\":\"#333\",\"fontSize\":13,\"fontWeight\":\"bold\"}},\"id\":\"edge-0.94604569722087461773827027913\",\"startPoint\":{\"x\":209.4940848679678,\"y\":218.73132009549312},\"endPoint\":{\"x\":251.63089035388376,\"y\":301.86497671796303}},{\"source\":\"node3\",\"target\":\"node4\",\"type\":\"line\",\"label\":\"1\",\"style\":{\"active\":{\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"selected\":{\"stroke\":\"#F56C6C\",\"lineWidth\":3},\"highlight\":{\"stroke\":\"rgb(95, 149, 255)\",\"lineWidth\":2,\"text-shape\":{\"fontWeight\":500}},\"inactive\":{\"stroke\":\"rgb(234, 234, 234)\",\"lineWidth\":1},\"disable\":{\"stroke\":\"rgb(245, 245, 245)\",\"lineWidth\":1},\"stroke\":\"#A3B1BF\",\"lineWidth\":2,\"endArrow\":true,\"cursor\":\"pointer\",\"lineAppendWidth\":15},\"labelCfg\":{\"autoRotate\":true,\"refY\":-10,\"style\":{\"fill\":\"#333\",\"fontSize\":13,\"fontWeight\":\"bold\"}},\"id\":\"edge-0.096206072671679471773827033381\",\"startPoint\":{\"x\":282.06003390842665,\"y\":318.9460490170154},\"endPoint\":{\"x\":454.0986519031786,\"y\":305.3847614897629}},{\"source\":\"node2\",\"target\":\"node4\",\"type\":\"line\",\"label\":\"1\",\"style\":{\"active\":{\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"selected\":{\"stroke\":\"#F56C6C\",\"lineWidth\":3},\"highlight\":{\"stroke\":\"rgb(95, 149, 255)\",\"lineWidth\":2,\"text-shape\":{\"fontWeight\":500}},\"inactive\":{\"stroke\":\"rgb(234, 234, 234)\",\"lineWidth\":1},\"disable\":{\"stroke\":\"rgb(245, 245, 245)\",\"lineWidth\":1},\"stroke\":\"#A3B1BF\",\"lineWidth\":2,\"endArrow\":true,\"cursor\":\"pointer\",\"lineAppendWidth\":15},\"labelCfg\":{\"autoRotate\":true,\"refY\":-10,\"style\":{\"fill\":\"#333\",\"fontSize\":13,\"fontWeight\":\"bold\"}},\"id\":\"edge-0.46737201381847251773827038415\",\"startPoint\":{\"x\":412.30762413446746,\"y\":217.01535742100864},\"endPoint\":{\"x\":462.72608645528624,\"y\":286.71915627231357}},{\"source\":\"node4\",\"target\":\"node_1773827106774\",\"type\":\"line\",\"label\":\"1\",\"style\":{\"active\":{\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"selected\":{\"stroke\":\"#F56C6C\",\"lineWidth\":3},\"highlight\":{\"stroke\":\"rgb(95, 149, 255)\",\"lineWidth\":2,\"text-shape\":{\"fontWeight\":500}},\"inactive\":{\"stroke\":\"rgb(234, 234, 234)\",\"lineWidth\":1},\"disable\":{\"stroke\":\"rgb(245, 245, 245)\",\"lineWidth\":1},\"stroke\":\"#A3B1BF\",\"lineWidth\":2,\"endArrow\":true,\"cursor\":\"pointer\",\"lineAppendWidth\":15},\"labelCfg\":{\"autoRotate\":true,\"refY\":-10,\"style\":{\"fill\":\"#333\",\"fontSize\":13,\"fontWeight\":\"bold\"}},\"id\":\"edge-0.37314712912698811773827113513\",\"startPoint\":{\"x\":495.94012731304673,\"y\":305.7148519957376},\"endPoint\":{\"x\":558.6870738707537,\"y\":311.65849041414697}},{\"source\":\"node2\",\"target\":\"node_1773850509675\",\"type\":\"line\",\"label\":\"2\",\"style\":{\"active\":{\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"selected\":{\"stroke\":\"#F56C6C\",\"lineWidth\":3},\"highlight\":{\"stroke\":\"rgb(95, 149, 255)\",\"lineWidth\":2,\"text-shape\":{\"fontWeight\":500}},\"inactive\":{\"stroke\":\"rgb(234, 234, 234)\",\"lineWidth\":1},\"disable\":{\"stroke\":\"rgb(245, 245, 245)\",\"lineWidth\":1},\"stroke\":\"#A3B1BF\",\"lineWidth\":2,\"endArrow\":true,\"cursor\":\"pointer\",\"lineAppendWidth\":15},\"labelCfg\":{\"autoRotate\":true,\"refY\":-10,\"style\":{\"fill\":\"#333\",\"fontSize\":13,\"fontWeight\":\"bold\"}},\"id\":\"edge-0.57445660833891071773850520126\",\"startPoint\":{\"x\":420.99009412997833,\"y\":199.35505937122076},\"endPoint\":{\"x\":588.9912759969212,\"y\":194.19306308868983}}],\"combos\":[]}',6,6,2,'','2026-03-10 19:02:01','','2026-03-19 00:16:01',NULL),(103,'test2','{\"nodes\":[{\"id\":\"node_1773851823784\",\"label\":\"root\",\"x\":470.79714838334627,\"y\":122.92933629974846,\"type\":\"circle\",\"size\":40,\"style\":{\"active\":{\"fill\":\"#FFC069\",\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"selected\":{\"fill\":\"#9EC9FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":3},\"highlight\":{\"fill\":\"rgb(223, 234, 255)\",\"stroke\":\"#4572d9\",\"lineWidth\":2,\"text-shape\":{\"fontWeight\":500}},\"inactive\":{\"fill\":\"rgb(247, 250, 255)\",\"stroke\":\"rgb(191, 213, 255)\",\"lineWidth\":1},\"disable\":{\"fill\":\"rgb(250, 250, 250)\",\"stroke\":\"rgb(224, 224, 224)\",\"lineWidth\":1},\"fill\":\"#C6E5FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":2,\"cursor\":\"pointer\"},\"labelCfg\":{\"style\":{\"fill\":\"#333\",\"fontSize\":14,\"fontWeight\":\"bold\"}}},{\"id\":\"node_1773851826565\",\"label\":\"V1\",\"x\":332.7532816556261,\"y\":283.28355831891537,\"type\":\"circle\",\"size\":40,\"style\":{\"active\":{\"fill\":\"#FFC069\",\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"selected\":{\"fill\":\"#9EC9FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":3},\"highlight\":{\"fill\":\"rgb(223, 234, 255)\",\"stroke\":\"#4572d9\",\"lineWidth\":2,\"text-shape\":{\"fontWeight\":500}},\"inactive\":{\"fill\":\"rgb(247, 250, 255)\",\"stroke\":\"rgb(191, 213, 255)\",\"lineWidth\":1},\"disable\":{\"fill\":\"rgb(250, 250, 250)\",\"stroke\":\"rgb(224, 224, 224)\",\"lineWidth\":1},\"fill\":\"#C6E5FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":2,\"cursor\":\"pointer\"},\"labelCfg\":{\"style\":{\"fill\":\"#333\",\"fontSize\":14,\"fontWeight\":\"bold\"}}},{\"id\":\"node_1773851829440\",\"label\":\"node2\",\"x\":583.3359048257031,\"y\":227.93732083852734,\"type\":\"circle\",\"size\":40,\"style\":{\"active\":{\"fill\":\"#FFC069\",\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"selected\":{\"fill\":\"#9EC9FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":3},\"highlight\":{\"fill\":\"rgb(223, 234, 255)\",\"stroke\":\"#4572d9\",\"lineWidth\":2,\"text-shape\":{\"fontWeight\":500}},\"inactive\":{\"fill\":\"rgb(247, 250, 255)\",\"stroke\":\"rgb(191, 213, 255)\",\"lineWidth\":1},\"disable\":{\"fill\":\"rgb(250, 250, 250)\",\"stroke\":\"rgb(224, 224, 224)\",\"lineWidth\":1},\"fill\":\"#C6E5FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":2,\"cursor\":\"pointer\"},\"labelCfg\":{\"style\":{\"fill\":\"#333\",\"fontSize\":14,\"fontWeight\":\"bold\"}}}],\"edges\":[{\"source\":\"node_1773851823784\",\"target\":\"node_1773851826565\",\"type\":\"line\",\"label\":\"1\",\"style\":{\"active\":{\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"selected\":{\"stroke\":\"#F56C6C\",\"lineWidth\":3},\"highlight\":{\"stroke\":\"rgb(95, 149, 255)\",\"lineWidth\":2,\"text-shape\":{\"fontWeight\":500}},\"inactive\":{\"stroke\":\"rgb(234, 234, 234)\",\"lineWidth\":1},\"disable\":{\"stroke\":\"rgb(245, 245, 245)\",\"lineWidth\":1},\"stroke\":\"#A3B1BF\",\"lineWidth\":2,\"endArrow\":true,\"cursor\":\"pointer\",\"lineAppendWidth\":15},\"labelCfg\":{\"autoRotate\":true,\"refY\":-10,\"style\":{\"fill\":\"#333\",\"fontSize\":13,\"fontWeight\":\"bold\"}},\"id\":\"edge-0.73585175965159991773851847064\",\"startPoint\":{\"x\":457.09638162493843,\"y\":138.84439175776387},\"endPoint\":{\"x\":346.45404841403393,\"y\":267.3685028609}},{\"source\":\"node_1773851823784\",\"target\":\"node_1773851829440\",\"type\":\"line\",\"label\":\"2\",\"style\":{\"active\":{\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"selected\":{\"stroke\":\"#F56C6C\",\"lineWidth\":3},\"highlight\":{\"stroke\":\"rgb(95, 149, 255)\",\"lineWidth\":2,\"text-shape\":{\"fontWeight\":500}},\"inactive\":{\"stroke\":\"rgb(234, 234, 234)\",\"lineWidth\":1},\"disable\":{\"stroke\":\"rgb(245, 245, 245)\",\"lineWidth\":1},\"stroke\":\"#A3B1BF\",\"lineWidth\":2,\"endArrow\":true,\"cursor\":\"pointer\",\"lineAppendWidth\":15},\"labelCfg\":{\"autoRotate\":true,\"refY\":-10,\"style\":{\"fill\":\"#333\",\"fontSize\":13,\"fontWeight\":\"bold\"}},\"id\":\"edge-0.55880576516193481773851850897\",\"startPoint\":{\"x\":486.1512272175434,\"y\":137.25596406601846},\"endPoint\":{\"x\":567.981825991506,\"y\":213.61069307225733}}],\"combos\":[]}',3,2,2,'','2026-03-19 00:37:59','',NULL,'test2'),(104,'first','{\"nodes\":[{\"id\":\"node1\",\"label\":\"V1\",\"x\":200,\"y\":200,\"type\":\"circle\",\"size\":40,\"style\":{\"active\":{\"fill\":\"#FFC069\",\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"selected\":{\"fill\":\"#9EC9FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":3},\"highlight\":{\"fill\":\"rgb(223, 234, 255)\",\"stroke\":\"#4572d9\",\"lineWidth\":2,\"text-shape\":{\"fontWeight\":500}},\"inactive\":{\"fill\":\"rgb(247, 250, 255)\",\"stroke\":\"rgb(191, 213, 255)\",\"lineWidth\":1},\"disable\":{\"fill\":\"rgb(250, 250, 250)\",\"stroke\":\"rgb(224, 224, 224)\",\"lineWidth\":1},\"fill\":\"#C6E5FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":2,\"cursor\":\"pointer\"},\"labelCfg\":{\"style\":{\"fill\":\"#333\",\"fontSize\":14,\"fontWeight\":\"bold\"}}},{\"id\":\"node2\",\"label\":\"V2\",\"x\":400,\"y\":200,\"type\":\"circle\",\"size\":40,\"style\":{\"active\":{\"fill\":\"#FFC069\",\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"selected\":{\"fill\":\"#9EC9FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":3},\"highlight\":{\"fill\":\"rgb(223, 234, 255)\",\"stroke\":\"#4572d9\",\"lineWidth\":2,\"text-shape\":{\"fontWeight\":500}},\"inactive\":{\"fill\":\"rgb(247, 250, 255)\",\"stroke\":\"rgb(191, 213, 255)\",\"lineWidth\":1},\"disable\":{\"fill\":\"rgb(250, 250, 250)\",\"stroke\":\"rgb(224, 224, 224)\",\"lineWidth\":1},\"fill\":\"#C6E5FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":2,\"cursor\":\"pointer\"},\"labelCfg\":{\"style\":{\"fill\":\"#333\",\"fontSize\":14,\"fontWeight\":\"bold\"}}},{\"id\":\"node_1773852039401\",\"label\":\"V3\",\"x\":542.008936864847,\"y\":205.29542699746932,\"type\":\"circle\",\"size\":40,\"style\":{\"selected\":{\"fill\":\"#9EC9FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":3},\"active\":{\"fill\":\"#FFC069\",\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"fill\":\"#C6E5FF\",\"stroke\":\"#5B8FF9\",\"lineWidth\":2,\"cursor\":\"pointer\"},\"labelCfg\":{\"style\":{\"fill\":\"#333\",\"fontSize\":14,\"fontWeight\":\"bold\"}}}],\"edges\":[{\"source\":\"node1\",\"target\":\"node2\",\"type\":\"line\",\"style\":{\"selected\":{\"stroke\":\"#F56C6C\",\"lineWidth\":3},\"active\":{\"stroke\":\"#FA8C16\",\"lineWidth\":3},\"stroke\":\"#A3B1BF\",\"lineWidth\":2,\"endArrow\":true,\"cursor\":\"pointer\",\"lineAppendWidth\":15},\"id\":\"edge-0.047910989652377171773135686590\",\"startPoint\":{\"x\":221,\"y\":200},\"endPoint\":{\"x\":379,\"y\":200},\"label\":\"1\",\"labelCfg\":{\"autoRotate\":true,\"refY\":-10,\"style\":{\"fill\":\"#333\",\"fontSize\":13,\"fontWeight\":\"bold\"}}}],\"combos\":[]}',3,1,105,'','2026-03-19 00:40:54','',NULL,'第一个图');
/*!40000 ALTER TABLE `biz_user_graph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table`
--

DROP TABLE IF EXISTS `gen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table` (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table`
--

LOCK TABLES `gen_table` WRITE;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
INSERT INTO `gen_table` VALUES (1,'biz_user_graph','用户个人图库表',NULL,NULL,'BizUserGraph','crud','element-ui','com.ruoyi.graph','graph','graph','我的图库','ruoyi','0','/','{}','admin','2026-03-09 23:44:21','','2026-03-09 23:48:28',NULL),(2,'biz_teaching_case','教学案例库表',NULL,NULL,'BizTeachingCase','crud','element-ui','com.ruoyi.teaching','teaching','teaching','教学案例库','ruoyi','0','/','{\"parentMenuId\":0}','admin','2026-03-10 00:08:19','','2026-03-10 00:14:43',NULL);
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table_column`
--

DROP TABLE IF EXISTS `gen_table_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table_column` (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table_column`
--

LOCK TABLES `gen_table_column` WRITE;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
INSERT INTO `gen_table_column` VALUES (1,1,'graph_id','图ID主键','bigint','Long','graphId','1','1','0','1',NULL,NULL,NULL,'EQ','input','',1,'admin','2026-03-09 23:44:21','','2026-03-09 23:48:28'),(2,1,'graph_name','图模型名称','varchar(100)','String','graphName','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2026-03-09 23:44:21','','2026-03-09 23:48:28'),(3,1,'graph_data','图JSON结构数据(存G6导出的节点和边)','longtext','String','graphData','0','0','0','1','1','1','0','EQ','textarea','',3,'admin','2026-03-09 23:44:21','','2026-03-09 23:48:28'),(4,1,'node_count','节点数量(方便列表展示)','int','Long','nodeCount','0','0','0','1','1','1','0','EQ','input','',4,'admin','2026-03-09 23:44:21','','2026-03-09 23:48:28'),(5,1,'edge_count','边数量(方便列表展示)','int','Long','edgeCount','0','0','0','1','1','1','0','EQ','input','',5,'admin','2026-03-09 23:44:21','','2026-03-09 23:48:28'),(6,1,'user_id','所属用户ID(关联sys_user表)','bigint','Long','userId','0','0','1','1','0','1','1','EQ','input','',6,'admin','2026-03-09 23:44:21','','2026-03-09 23:48:28'),(7,1,'create_by','创建者','varchar(64)','String','createBy','0','0','0','1',NULL,NULL,NULL,'EQ','input','',7,'admin','2026-03-09 23:44:21','','2026-03-09 23:48:28'),(8,1,'create_time','创建时间','datetime','Date','createTime','0','0','0','1',NULL,NULL,NULL,'EQ','datetime','',8,'admin','2026-03-09 23:44:21','','2026-03-09 23:48:28'),(9,1,'update_by','更新者','varchar(64)','String','updateBy','0','0','0','1','1',NULL,NULL,'EQ','input','',9,'admin','2026-03-09 23:44:21','','2026-03-09 23:48:28'),(10,1,'update_time','更新时间','datetime','Date','updateTime','0','0','0','1','1',NULL,NULL,'EQ','datetime','',10,'admin','2026-03-09 23:44:21','','2026-03-09 23:48:28'),(11,1,'remark','备注或描述','varchar(500)','String','remark','0','0','0','1','1','1',NULL,'EQ','textarea','',11,'admin','2026-03-09 23:44:21','','2026-03-09 23:48:28'),(12,2,'case_id','案例ID主键','bigint','Long','caseId','1','1','0','1',NULL,NULL,NULL,'EQ','input','',1,'admin','2026-03-10 00:08:19','','2026-03-10 00:14:43'),(13,2,'case_name','教学案例名称','varchar(100)','String','caseName','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2026-03-10 00:08:19','','2026-03-10 00:14:43'),(14,2,'case_type','案例分类(如:二分图,网络拓扑等)','varchar(50)','String','caseType','0','0','0','1','1','1','1','EQ','select','case_type',3,'admin','2026-03-10 00:08:19','','2026-03-10 00:14:43'),(15,2,'graph_data','图JSON结构数据','longtext','String','graphData','0','0','1','1','1','1','0','EQ','textarea','',4,'admin','2026-03-10 00:08:19','','2026-03-10 00:14:43'),(16,2,'node_count','节点数量','int','Long','nodeCount','0','0','0','1','1','1','0','EQ','input','',5,'admin','2026-03-10 00:08:19','','2026-03-10 00:14:43'),(17,2,'edge_count','边数量','int','Long','edgeCount','0','0','0','1','1','1','0','EQ','input','',6,'admin','2026-03-10 00:08:19','','2026-03-10 00:14:43'),(18,2,'create_by','创建者(管理员)','varchar(64)','String','createBy','0','0','0','1',NULL,NULL,NULL,'EQ','input','',7,'admin','2026-03-10 00:08:19','','2026-03-10 00:14:43'),(19,2,'create_time','发布时间','datetime','Date','createTime','0','0','0','1',NULL,NULL,NULL,'EQ','datetime','',8,'admin','2026-03-10 00:08:19','','2026-03-10 00:14:43'),(20,2,'update_by','更新者','varchar(64)','String','updateBy','0','0','0','1','1',NULL,NULL,'EQ','input','',9,'admin','2026-03-10 00:08:19','','2026-03-10 00:14:43'),(21,2,'update_time','更新时间','datetime','Date','updateTime','0','0','0','1','1',NULL,NULL,'EQ','datetime','',10,'admin','2026-03-10 00:08:19','','2026-03-10 00:14:43'),(22,2,'remark','案例教学说明','varchar(500)','String','remark','0','0','0','1','1','1',NULL,'EQ','textarea','',11,'admin','2026-03-10 00:08:19','','2026-03-10 00:14:43');
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_blob_triggers`
--

DROP TABLE IF EXISTS `qrtz_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Blob类型的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_blob_triggers`
--

LOCK TABLES `qrtz_blob_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_blob_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_calendars`
--

DROP TABLE IF EXISTS `qrtz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='日历信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_calendars`
--

LOCK TABLES `qrtz_calendars` WRITE;
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_cron_triggers`
--

DROP TABLE IF EXISTS `qrtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Cron类型的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_cron_triggers`
--

LOCK TABLES `qrtz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_fired_triggers`
--

DROP TABLE IF EXISTS `qrtz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='已触发的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_fired_triggers`
--

LOCK TABLES `qrtz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_job_details`
--

DROP TABLE IF EXISTS `qrtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) NOT NULL COMMENT '任务组名',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='任务详细信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_job_details`
--

LOCK TABLES `qrtz_job_details` WRITE;
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_locks`
--

DROP TABLE IF EXISTS `qrtz_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='存储的悲观锁信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_locks`
--

LOCK TABLES `qrtz_locks` WRITE;
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='暂停的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_paused_trigger_grps`
--

LOCK TABLES `qrtz_paused_trigger_grps` WRITE;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_scheduler_state`
--

DROP TABLE IF EXISTS `qrtz_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='调度器状态表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_scheduler_state`
--

LOCK TABLES `qrtz_scheduler_state` WRITE;
/*!40000 ALTER TABLE `qrtz_scheduler_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_scheduler_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simple_triggers`
--

DROP TABLE IF EXISTS `qrtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='简单触发器的信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simple_triggers`
--

LOCK TABLES `qrtz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simprop_triggers`
--

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='同步机制的行锁表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simprop_triggers`
--

LOCK TABLES `qrtz_simprop_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_triggers`
--

DROP TABLE IF EXISTS `qrtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='触发器详细信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_triggers`
--

LOCK TABLES `qrtz_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_config` (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='参数配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2026-03-09 23:32:46','',NULL,'蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2026-03-09 23:32:46','',NULL,'初始化密码 123456'),(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2026-03-09 23:32:46','',NULL,'深色主题theme-dark，浅色主题theme-light'),(4,'账号自助-验证码开关','sys.account.captchaEnabled','true','Y','admin','2026-03-09 23:32:46','',NULL,'是否开启验证码功能（true开启，false关闭）'),(5,'账号自助-是否开启用户注册功能','sys.account.registerUser','true','Y','admin','2026-03-09 23:32:46','ry_admin','2026-03-10 19:16:36','是否开启注册用户功能（true开启，false关闭）'),(6,'用户登录-黑名单列表','sys.login.blackIPList','','Y','admin','2026-03-09 23:32:46','',NULL,'设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）'),(7,'用户管理-初始密码修改策略','sys.account.initPasswordModify','1','Y','admin','2026-03-09 23:32:46','',NULL,'0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框'),(8,'用户管理-账号密码更新周期','sys.account.passwordValidateDays','0','Y','admin','2026-03-09 23:32:46','',NULL,'密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (100,0,'0','若依科技',0,'若依','15888888888','ry@qq.com','0','0','admin','2026-03-09 23:32:43','',NULL),(101,100,'0,100','深圳总公司',1,'若依','15888888888','ry@qq.com','0','0','admin','2026-03-09 23:32:43','',NULL),(102,100,'0,100','长沙分公司',2,'若依','15888888888','ry@qq.com','0','0','admin','2026-03-09 23:32:43','',NULL),(103,101,'0,100,101','研发部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2026-03-09 23:32:43','',NULL),(104,101,'0,100,101','市场部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2026-03-09 23:32:43','',NULL),(105,101,'0,100,101','测试部门',3,'若依','15888888888','ry@qq.com','0','0','admin','2026-03-09 23:32:43','',NULL),(106,101,'0,100,101','财务部门',4,'若依','15888888888','ry@qq.com','0','0','admin','2026-03-09 23:32:43','',NULL),(107,101,'0,100,101','运维部门',5,'若依','15888888888','ry@qq.com','0','0','admin','2026-03-09 23:32:43','',NULL),(108,102,'0,100,102','市场部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2026-03-09 23:32:43','',NULL),(109,102,'0,100,102','财务部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2026-03-09 23:32:43','',NULL);
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` VALUES (1,1,'男','0','sys_user_sex','','','Y','0','admin','2026-03-09 23:32:45','',NULL,'性别男'),(2,2,'女','1','sys_user_sex','','','N','0','admin','2026-03-09 23:32:45','',NULL,'性别女'),(3,3,'未知','2','sys_user_sex','','','N','0','admin','2026-03-09 23:32:45','',NULL,'性别未知'),(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2026-03-09 23:32:45','',NULL,'显示菜单'),(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2026-03-09 23:32:45','',NULL,'隐藏菜单'),(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2026-03-09 23:32:45','',NULL,'正常状态'),(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2026-03-09 23:32:45','',NULL,'停用状态'),(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2026-03-09 23:32:45','',NULL,'正常状态'),(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2026-03-09 23:32:45','',NULL,'停用状态'),(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2026-03-09 23:32:45','',NULL,'默认分组'),(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2026-03-09 23:32:45','',NULL,'系统分组'),(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2026-03-09 23:32:45','',NULL,'系统默认是'),(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2026-03-09 23:32:45','',NULL,'系统默认否'),(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2026-03-09 23:32:45','',NULL,'通知'),(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2026-03-09 23:32:45','',NULL,'公告'),(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2026-03-09 23:32:45','',NULL,'正常状态'),(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2026-03-09 23:32:45','',NULL,'关闭状态'),(18,99,'其他','0','sys_oper_type','','info','N','0','admin','2026-03-09 23:32:45','',NULL,'其他操作'),(19,1,'新增','1','sys_oper_type','','info','N','0','admin','2026-03-09 23:32:45','',NULL,'新增操作'),(20,2,'修改','2','sys_oper_type','','info','N','0','admin','2026-03-09 23:32:45','',NULL,'修改操作'),(21,3,'删除','3','sys_oper_type','','danger','N','0','admin','2026-03-09 23:32:45','',NULL,'删除操作'),(22,4,'授权','4','sys_oper_type','','primary','N','0','admin','2026-03-09 23:32:45','',NULL,'授权操作'),(23,5,'导出','5','sys_oper_type','','warning','N','0','admin','2026-03-09 23:32:45','',NULL,'导出操作'),(24,6,'导入','6','sys_oper_type','','warning','N','0','admin','2026-03-09 23:32:45','',NULL,'导入操作'),(25,7,'强退','7','sys_oper_type','','danger','N','0','admin','2026-03-09 23:32:45','',NULL,'强退操作'),(26,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2026-03-09 23:32:45','',NULL,'生成操作'),(27,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2026-03-09 23:32:45','',NULL,'清空操作'),(28,1,'成功','0','sys_common_status','','primary','N','0','admin','2026-03-09 23:32:45','',NULL,'正常状态'),(29,2,'失败','1','sys_common_status','','danger','N','0','admin','2026-03-09 23:32:46','',NULL,'停用状态'),(100,1,'二分图','erfentu','case_type',NULL,'default','N','0','admin','2026-03-10 00:10:54','',NULL,NULL),(101,2,'完全图','wanquantu','case_type',NULL,'default','N','0','ry_admin','2026-03-18 16:13:19','',NULL,NULL),(102,3,'树','shu','case_type',NULL,'default','N','0','ry_admin','2026-03-18 16:13:35','',NULL,NULL);
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1,'用户性别','sys_user_sex','0','admin','2026-03-09 23:32:45','',NULL,'用户性别列表'),(2,'菜单状态','sys_show_hide','0','admin','2026-03-09 23:32:45','',NULL,'菜单状态列表'),(3,'系统开关','sys_normal_disable','0','admin','2026-03-09 23:32:45','',NULL,'系统开关列表'),(4,'任务状态','sys_job_status','0','admin','2026-03-09 23:32:45','',NULL,'任务状态列表'),(5,'任务分组','sys_job_group','0','admin','2026-03-09 23:32:45','',NULL,'任务分组列表'),(6,'系统是否','sys_yes_no','0','admin','2026-03-09 23:32:45','',NULL,'系统是否列表'),(7,'通知类型','sys_notice_type','0','admin','2026-03-09 23:32:45','',NULL,'通知类型列表'),(8,'通知状态','sys_notice_status','0','admin','2026-03-09 23:32:45','',NULL,'通知状态列表'),(9,'操作类型','sys_oper_type','0','admin','2026-03-09 23:32:45','',NULL,'操作类型列表'),(10,'系统状态','sys_common_status','0','admin','2026-03-09 23:32:45','',NULL,'登录状态列表'),(100,'case_type','case_type','0','admin','2026-03-10 00:10:21','',NULL,NULL);
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job`
--

DROP TABLE IF EXISTS `sys_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job` (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job`
--

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` VALUES (1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2026-03-09 23:32:46','',NULL,''),(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2026-03-09 23:32:46','',NULL,''),(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2026-03-09 23:32:46','',NULL,'');
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job_log`
--

DROP TABLE IF EXISTS `sys_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job_log`
--

LOCK TABLES `sys_job_log` WRITE;
/*!40000 ALTER TABLE `sys_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_logininfor`
--

DROP TABLE IF EXISTS `sys_logininfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_logininfor_s` (`status`),
  KEY `idx_sys_logininfor_lt` (`login_time`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统访问记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logininfor`
--

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
INSERT INTO `sys_logininfor` VALUES (100,'admin','127.0.0.1','内网IP','Chrome 145','Windows10','0','登录成功','2026-03-09 23:36:19'),(101,'admin','127.0.0.1','内网IP','Chrome 145','Windows10','0','登录成功','2026-03-10 15:57:57'),(102,'admin','127.0.0.1','内网IP','Chrome 145','Windows10','0','登录成功','2026-03-10 17:17:31'),(103,'admin','127.0.0.1','内网IP','Chrome 145','Windows10','0','登录成功','2026-03-10 18:45:50'),(104,'admin','127.0.0.1','内网IP','Chrome 145','Windows10','0','退出成功','2026-03-10 18:56:41'),(105,'admin','127.0.0.1','内网IP','Chrome 145','Windows10','0','登录成功','2026-03-10 18:56:57'),(106,'admin','127.0.0.1','内网IP','Chrome 145','Windows10','0','退出成功','2026-03-10 19:15:51'),(107,'ry_admin','127.0.0.1','内网IP','Chrome 145','Windows10','0','登录成功','2026-03-10 19:16:10'),(108,'ry_admin','127.0.0.1','内网IP','Chrome 145','Windows10','0','退出成功','2026-03-10 19:16:46'),(109,'zhangsan','127.0.0.1','内网IP','Chrome 145','Windows10','0','注册成功','2026-03-10 19:17:03'),(110,'zhangsan','127.0.0.1','内网IP','Chrome 145','Windows10','0','登录成功','2026-03-10 19:17:36'),(111,'zhangsan','127.0.0.1','内网IP','Chrome 145','Windows10','0','退出成功','2026-03-10 19:17:58'),(112,'ry_admin','127.0.0.1','内网IP','Chrome 145','Windows10','0','登录成功','2026-03-10 19:18:02'),(113,'ry_admin','127.0.0.1','内网IP','Chrome 145','Windows10','0','退出成功','2026-03-10 19:23:21'),(114,'lisi','127.0.0.1','内网IP','Chrome 145','Windows10','0','注册成功','2026-03-10 19:29:12'),(115,'lisi','127.0.0.1','内网IP','Chrome 145','Windows10','1','验证码错误','2026-03-10 19:29:21'),(116,'lisi','127.0.0.1','内网IP','Chrome 145','Windows10','0','登录成功','2026-03-10 19:29:24'),(117,'lisi','127.0.0.1','内网IP','Chrome 145','Windows10','0','退出成功','2026-03-10 19:32:08'),(118,'ry_admin','127.0.0.1','内网IP','Chrome 145','Windows10','0','登录成功','2026-03-10 19:32:11'),(119,'admin','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','1','验证码错误','2026-03-18 08:10:50'),(120,'admin','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','登录成功','2026-03-18 08:10:50'),(121,'admin','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','1','验证码错误','2026-03-18 09:34:38'),(122,'admin','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','登录成功','2026-03-18 09:34:40'),(123,'admin','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','退出成功','2026-03-18 10:04:12'),(124,'test','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','注册成功','2026-03-18 14:01:25'),(125,'test','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','登录成功','2026-03-18 14:01:48'),(126,'test','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','退出成功','2026-03-18 14:01:55'),(127,'test','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','登录成功','2026-03-18 14:02:27'),(128,'test','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','退出成功','2026-03-18 14:02:32'),(129,'admin','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','登录成功','2026-03-18 14:02:48'),(130,'admin','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','登录成功','2026-03-18 15:56:46'),(131,'admin','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','退出成功','2026-03-18 16:12:40'),(132,'ry_admin','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','登录成功','2026-03-18 16:12:47'),(133,'ry_admin','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','退出成功','2026-03-18 16:13:56'),(134,'admin','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','登录成功','2026-03-18 16:14:03'),(135,'admin','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','退出成功','2026-03-18 16:14:14'),(136,'admin','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','登录成功','2026-03-18 16:14:32'),(137,'admin','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','退出成功','2026-03-18 16:16:28'),(138,'wangwu','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','注册成功','2026-03-18 16:16:47'),(139,'wangwu','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','1','用户不存在/密码错误','2026-03-18 16:16:58'),(140,'wangwu','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','登录成功','2026-03-18 16:17:05'),(141,'wangwu','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','退出成功','2026-03-18 16:17:47'),(142,'admin','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','1','用户不存在/密码错误','2026-03-18 16:17:58'),(143,'admin','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','登录成功','2026-03-18 16:18:03'),(144,'admin','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','退出成功','2026-03-18 16:20:04'),(145,'admin','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','登录成功','2026-03-18 16:21:21'),(146,'admin','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','退出成功','2026-03-18 16:23:49'),(147,'zhaoliu','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','注册成功','2026-03-18 16:24:04'),(148,'zhaoliu','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','登录成功','2026-03-18 16:24:16'),(149,'zhaoliu','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','退出成功','2026-03-18 16:34:33'),(150,'admin','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','登录成功','2026-03-18 16:34:44'),(151,'admin','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','退出成功','2026-03-18 16:35:37'),(152,'zhangsan','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','登录成功','2026-03-18 16:35:44'),(153,'zhangsan','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','退出成功','2026-03-18 16:35:54'),(154,'admin','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','登录成功','2026-03-18 16:36:35'),(155,'admin','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','退出成功','2026-03-18 16:36:48'),(156,'admin','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','登录成功','2026-03-18 16:36:58'),(157,'admin','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','退出成功','2026-03-18 16:39:55'),(158,'test2','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','注册成功','2026-03-18 16:40:11'),(159,'test2','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','登录成功','2026-03-18 16:40:20'),(160,'test2','127.0.0.1','内网IP','Chrome 143','Mac OS >=10.15.7','0','退出成功','2026-03-18 16:41:26');
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) DEFAULT NULL COMMENT '路由参数',
  `route_name` varchar(50) DEFAULT '' COMMENT '路由名称',
  `is_frame` int DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2024 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜单权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'系统管理',0,6,'system',NULL,'','',1,0,'M','0','0','','system','admin','2026-03-09 23:32:43','admin','2026-03-10 00:02:05','系统管理目录'),(2,'系统监控',0,6,'monitor',NULL,'','',1,0,'M','0','0','','monitor','admin','2026-03-09 23:32:43','admin','2026-03-10 00:00:55','系统监控目录'),(3,'系统工具',0,7,'tool',NULL,'','',1,0,'M','0','0','','tool','admin','2026-03-09 23:32:43','admin','2026-03-10 00:00:59','系统工具目录'),(4,'若依官网',0,8,'http://ruoyi.vip',NULL,'','',0,0,'M','1','0','','guide','admin','2026-03-09 23:32:43','admin','2026-03-10 00:51:07','若依官网地址'),(100,'用户管理',0,5,'system/user','system/user/index','','',1,0,'C','0','0','system:user:list','user','admin','2026-03-09 23:32:43','admin','2026-03-10 00:04:33','用户管理菜单'),(101,'角色管理',1,2,'role','system/role/index','','',1,0,'C','0','0','system:role:list','peoples','admin','2026-03-09 23:32:43','',NULL,'角色管理菜单'),(102,'菜单管理',1,3,'menu','system/menu/index','','',1,0,'C','0','0','system:menu:list','tree-table','admin','2026-03-09 23:32:43','',NULL,'菜单管理菜单'),(103,'部门管理',1,4,'dept','system/dept/index','','',1,0,'C','0','0','system:dept:list','tree','admin','2026-03-09 23:32:43','',NULL,'部门管理菜单'),(104,'岗位管理',1,5,'post','system/post/index','','',1,0,'C','0','0','system:post:list','post','admin','2026-03-09 23:32:43','',NULL,'岗位管理菜单'),(105,'字典管理',1,6,'dict','system/dict/index','','',1,0,'C','0','0','system:dict:list','dict','admin','2026-03-09 23:32:43','',NULL,'字典管理菜单'),(106,'参数设置',1,7,'config','system/config/index','','',1,0,'C','0','0','system:config:list','edit','admin','2026-03-09 23:32:43','',NULL,'参数设置菜单'),(107,'通知公告',1,8,'notice','system/notice/index','','',1,0,'C','0','0','system:notice:list','message','admin','2026-03-09 23:32:43','',NULL,'通知公告菜单'),(108,'日志管理',1,9,'log','','','',1,0,'M','0','0','','log','admin','2026-03-09 23:32:43','',NULL,'日志管理菜单'),(109,'在线用户',2,1,'online','monitor/online/index','','',1,0,'C','0','0','monitor:online:list','online','admin','2026-03-09 23:32:43','',NULL,'在线用户菜单'),(110,'定时任务',2,2,'job','monitor/job/index','','',1,0,'C','0','0','monitor:job:list','job','admin','2026-03-09 23:32:43','',NULL,'定时任务菜单'),(111,'数据监控',2,3,'druid','monitor/druid/index','','',1,0,'C','0','0','monitor:druid:list','druid','admin','2026-03-09 23:32:43','',NULL,'数据监控菜单'),(112,'服务监控',2,4,'server','monitor/server/index','','',1,0,'C','0','0','monitor:server:list','server','admin','2026-03-09 23:32:43','',NULL,'服务监控菜单'),(113,'缓存监控',2,5,'cache','monitor/cache/index','','',1,0,'C','0','0','monitor:cache:list','redis','admin','2026-03-09 23:32:44','',NULL,'缓存监控菜单'),(114,'缓存列表',2,6,'cacheList','monitor/cache/list','','',1,0,'C','0','0','monitor:cache:list','redis-list','admin','2026-03-09 23:32:44','',NULL,'缓存列表菜单'),(115,'表单构建',3,1,'build','tool/build/index','','',1,0,'C','0','0','tool:build:list','build','admin','2026-03-09 23:32:44','',NULL,'表单构建菜单'),(116,'代码生成',3,2,'gen','tool/gen/index','','',1,0,'C','0','0','tool:gen:list','code','admin','2026-03-09 23:32:44','',NULL,'代码生成菜单'),(117,'系统接口',3,3,'swagger','tool/swagger/index','','',1,0,'C','0','0','tool:swagger:list','swagger','admin','2026-03-09 23:32:44','',NULL,'系统接口菜单'),(500,'操作日志',108,1,'operlog','monitor/operlog/index','','',1,0,'C','0','0','monitor:operlog:list','form','admin','2026-03-09 23:32:44','',NULL,'操作日志菜单'),(501,'登录日志',108,2,'logininfor','monitor/logininfor/index','','',1,0,'C','0','0','monitor:logininfor:list','logininfor','admin','2026-03-09 23:32:44','',NULL,'登录日志菜单'),(1000,'用户查询',100,1,'','','','',1,0,'F','0','0','system:user:query','#','admin','2026-03-09 23:32:44','',NULL,''),(1001,'用户新增',100,2,'','','','',1,0,'F','0','0','system:user:add','#','admin','2026-03-09 23:32:44','',NULL,''),(1002,'用户修改',100,3,'','','','',1,0,'F','0','0','system:user:edit','#','admin','2026-03-09 23:32:44','',NULL,''),(1003,'用户删除',100,4,'','','','',1,0,'F','0','0','system:user:remove','#','admin','2026-03-09 23:32:44','',NULL,''),(1004,'用户导出',100,5,'','','','',1,0,'F','0','0','system:user:export','#','admin','2026-03-09 23:32:44','',NULL,''),(1005,'用户导入',100,6,'','','','',1,0,'F','0','0','system:user:import','#','admin','2026-03-09 23:32:44','',NULL,''),(1006,'重置密码',100,7,'','','','',1,0,'F','0','0','system:user:resetPwd','#','admin','2026-03-09 23:32:44','',NULL,''),(1007,'角色查询',101,1,'','','','',1,0,'F','0','0','system:role:query','#','admin','2026-03-09 23:32:44','',NULL,''),(1008,'角色新增',101,2,'','','','',1,0,'F','0','0','system:role:add','#','admin','2026-03-09 23:32:44','',NULL,''),(1009,'角色修改',101,3,'','','','',1,0,'F','0','0','system:role:edit','#','admin','2026-03-09 23:32:44','',NULL,''),(1010,'角色删除',101,4,'','','','',1,0,'F','0','0','system:role:remove','#','admin','2026-03-09 23:32:44','',NULL,''),(1011,'角色导出',101,5,'','','','',1,0,'F','0','0','system:role:export','#','admin','2026-03-09 23:32:44','',NULL,''),(1012,'菜单查询',102,1,'','','','',1,0,'F','0','0','system:menu:query','#','admin','2026-03-09 23:32:44','',NULL,''),(1013,'菜单新增',102,2,'','','','',1,0,'F','0','0','system:menu:add','#','admin','2026-03-09 23:32:44','',NULL,''),(1014,'菜单修改',102,3,'','','','',1,0,'F','0','0','system:menu:edit','#','admin','2026-03-09 23:32:44','',NULL,''),(1015,'菜单删除',102,4,'','','','',1,0,'F','0','0','system:menu:remove','#','admin','2026-03-09 23:32:44','',NULL,''),(1016,'部门查询',103,1,'','','','',1,0,'F','0','0','system:dept:query','#','admin','2026-03-09 23:32:44','',NULL,''),(1017,'部门新增',103,2,'','','','',1,0,'F','0','0','system:dept:add','#','admin','2026-03-09 23:32:44','',NULL,''),(1018,'部门修改',103,3,'','','','',1,0,'F','0','0','system:dept:edit','#','admin','2026-03-09 23:32:44','',NULL,''),(1019,'部门删除',103,4,'','','','',1,0,'F','0','0','system:dept:remove','#','admin','2026-03-09 23:32:44','',NULL,''),(1020,'岗位查询',104,1,'','','','',1,0,'F','0','0','system:post:query','#','admin','2026-03-09 23:32:44','',NULL,''),(1021,'岗位新增',104,2,'','','','',1,0,'F','0','0','system:post:add','#','admin','2026-03-09 23:32:44','',NULL,''),(1022,'岗位修改',104,3,'','','','',1,0,'F','0','0','system:post:edit','#','admin','2026-03-09 23:32:44','',NULL,''),(1023,'岗位删除',104,4,'','','','',1,0,'F','0','0','system:post:remove','#','admin','2026-03-09 23:32:44','',NULL,''),(1024,'岗位导出',104,5,'','','','',1,0,'F','0','0','system:post:export','#','admin','2026-03-09 23:32:44','',NULL,''),(1025,'字典查询',105,1,'#','','','',1,0,'F','0','0','system:dict:query','#','admin','2026-03-09 23:32:44','',NULL,''),(1026,'字典新增',105,2,'#','','','',1,0,'F','0','0','system:dict:add','#','admin','2026-03-09 23:32:44','',NULL,''),(1027,'字典修改',105,3,'#','','','',1,0,'F','0','0','system:dict:edit','#','admin','2026-03-09 23:32:44','',NULL,''),(1028,'字典删除',105,4,'#','','','',1,0,'F','0','0','system:dict:remove','#','admin','2026-03-09 23:32:44','',NULL,''),(1029,'字典导出',105,5,'#','','','',1,0,'F','0','0','system:dict:export','#','admin','2026-03-09 23:32:44','',NULL,''),(1030,'参数查询',106,1,'#','','','',1,0,'F','0','0','system:config:query','#','admin','2026-03-09 23:32:44','',NULL,''),(1031,'参数新增',106,2,'#','','','',1,0,'F','0','0','system:config:add','#','admin','2026-03-09 23:32:44','',NULL,''),(1032,'参数修改',106,3,'#','','','',1,0,'F','0','0','system:config:edit','#','admin','2026-03-09 23:32:44','',NULL,''),(1033,'参数删除',106,4,'#','','','',1,0,'F','0','0','system:config:remove','#','admin','2026-03-09 23:32:44','',NULL,''),(1034,'参数导出',106,5,'#','','','',1,0,'F','0','0','system:config:export','#','admin','2026-03-09 23:32:44','',NULL,''),(1035,'公告查询',107,1,'#','','','',1,0,'F','0','0','system:notice:query','#','admin','2026-03-09 23:32:44','',NULL,''),(1036,'公告新增',107,2,'#','','','',1,0,'F','0','0','system:notice:add','#','admin','2026-03-09 23:32:44','',NULL,''),(1037,'公告修改',107,3,'#','','','',1,0,'F','0','0','system:notice:edit','#','admin','2026-03-09 23:32:44','',NULL,''),(1038,'公告删除',107,4,'#','','','',1,0,'F','0','0','system:notice:remove','#','admin','2026-03-09 23:32:44','',NULL,''),(1039,'操作查询',500,1,'#','','','',1,0,'F','0','0','monitor:operlog:query','#','admin','2026-03-09 23:32:44','',NULL,''),(1040,'操作删除',500,2,'#','','','',1,0,'F','0','0','monitor:operlog:remove','#','admin','2026-03-09 23:32:44','',NULL,''),(1041,'日志导出',500,3,'#','','','',1,0,'F','0','0','monitor:operlog:export','#','admin','2026-03-09 23:32:44','',NULL,''),(1042,'登录查询',501,1,'#','','','',1,0,'F','0','0','monitor:logininfor:query','#','admin','2026-03-09 23:32:44','',NULL,''),(1043,'登录删除',501,2,'#','','','',1,0,'F','0','0','monitor:logininfor:remove','#','admin','2026-03-09 23:32:44','',NULL,''),(1044,'日志导出',501,3,'#','','','',1,0,'F','0','0','monitor:logininfor:export','#','admin','2026-03-09 23:32:44','',NULL,''),(1045,'账户解锁',501,4,'#','','','',1,0,'F','0','0','monitor:logininfor:unlock','#','admin','2026-03-09 23:32:44','',NULL,''),(1046,'在线查询',109,1,'#','','','',1,0,'F','0','0','monitor:online:query','#','admin','2026-03-09 23:32:44','',NULL,''),(1047,'批量强退',109,2,'#','','','',1,0,'F','0','0','monitor:online:batchLogout','#','admin','2026-03-09 23:32:44','',NULL,''),(1048,'单条强退',109,3,'#','','','',1,0,'F','0','0','monitor:online:forceLogout','#','admin','2026-03-09 23:32:44','',NULL,''),(1049,'任务查询',110,1,'#','','','',1,0,'F','0','0','monitor:job:query','#','admin','2026-03-09 23:32:44','',NULL,''),(1050,'任务新增',110,2,'#','','','',1,0,'F','0','0','monitor:job:add','#','admin','2026-03-09 23:32:44','',NULL,''),(1051,'任务修改',110,3,'#','','','',1,0,'F','0','0','monitor:job:edit','#','admin','2026-03-09 23:32:44','',NULL,''),(1052,'任务删除',110,4,'#','','','',1,0,'F','0','0','monitor:job:remove','#','admin','2026-03-09 23:32:44','',NULL,''),(1053,'状态修改',110,5,'#','','','',1,0,'F','0','0','monitor:job:changeStatus','#','admin','2026-03-09 23:32:44','',NULL,''),(1054,'任务导出',110,6,'#','','','',1,0,'F','0','0','monitor:job:export','#','admin','2026-03-09 23:32:44','',NULL,''),(1055,'生成查询',116,1,'#','','','',1,0,'F','0','0','tool:gen:query','#','admin','2026-03-09 23:32:44','',NULL,''),(1056,'生成修改',116,2,'#','','','',1,0,'F','0','0','tool:gen:edit','#','admin','2026-03-09 23:32:44','',NULL,''),(1057,'生成删除',116,3,'#','','','',1,0,'F','0','0','tool:gen:remove','#','admin','2026-03-09 23:32:44','',NULL,''),(1058,'导入代码',116,4,'#','','','',1,0,'F','0','0','tool:gen:import','#','admin','2026-03-09 23:32:44','',NULL,''),(1059,'预览代码',116,5,'#','','','',1,0,'F','0','0','tool:gen:preview','#','admin','2026-03-09 23:32:44','',NULL,''),(1060,'生成代码',116,6,'#','','','',1,0,'F','0','0','tool:gen:code','#','admin','2026-03-09 23:32:44','',NULL,''),(2000,'我的图库',0,1,'graph','graph/graph/graph',NULL,'',1,0,'C','0','0','graph:graph:list','chart','admin','2026-03-09 23:49:07','admin','2026-03-10 17:21:56','我的图库菜单'),(2001,'我的图库查询',2000,1,'#','',NULL,'',1,0,'F','0','0','graph:graph:query','#','admin','2026-03-09 23:49:07','',NULL,''),(2002,'我的图库新增',2000,2,'#','',NULL,'',1,0,'F','0','0','graph:graph:add','#','admin','2026-03-09 23:49:07','',NULL,''),(2003,'我的图库修改',2000,3,'#','',NULL,'',1,0,'F','0','0','graph:graph:edit','#','admin','2026-03-09 23:49:07','',NULL,''),(2004,'我的图库删除',2000,4,'#','',NULL,'',1,0,'F','0','0','graph:graph:remove','#','admin','2026-03-09 23:49:07','',NULL,''),(2005,'我的图库导出',2000,5,'#','',NULL,'',1,0,'F','0','0','graph:graph:export','#','admin','2026-03-09 23:49:07','',NULL,''),(2012,'教学案例管理',0,3,'teaching','teaching/teaching/teaching',NULL,'',1,0,'C','0','0','teaching:teaching:list','list','admin','2026-03-10 00:16:21','admin','2026-03-10 17:22:06','教学案例库菜单'),(2013,'教学案例库查询',2012,1,'#','',NULL,'',1,0,'F','0','0','teaching:teaching:query','#','admin','2026-03-10 00:16:21','',NULL,''),(2014,'教学案例库新增',2012,2,'#','',NULL,'',1,0,'F','0','0','teaching:teaching:add','#','admin','2026-03-10 00:16:21','',NULL,''),(2015,'教学案例库修改',2012,3,'#','',NULL,'',1,0,'F','0','0','teaching:teaching:edit','#','admin','2026-03-10 00:16:21','',NULL,''),(2016,'教学案例库删除',2012,4,'#','',NULL,'',1,0,'F','0','0','teaching:teaching:remove','#','admin','2026-03-10 00:16:21','',NULL,''),(2017,'教学案例库导出',2012,5,'#','',NULL,'',1,0,'F','0','0','teaching:teaching:export','#','admin','2026-03-10 00:16:21','',NULL,''),(2018,'教学案例库',0,2,'case','teaching/teaching/case',NULL,'',1,0,'C','0','0','teaching:teaching:list','table','admin','2026-03-10 00:16:21','admin','2026-03-10 00:27:02','教学案例库'),(2019,'教学案例库查询',2018,1,'#','',NULL,'',1,0,'F','0','0','teaching:teaching:query','#','admin','2026-03-10 00:16:21','',NULL,''),(2020,'教学案例库新增',2018,2,'#','',NULL,'',1,0,'F','0','0','teaching:teaching:add','#','admin','2026-03-10 00:16:21','',NULL,''),(2021,'教学案例库修改',2018,3,'#','',NULL,'',1,0,'F','0','0','teaching:teaching:edit','#','admin','2026-03-10 00:16:21','',NULL,''),(2022,'教学案例库删除',2018,4,'#','',NULL,'',1,0,'F','0','0','teaching:teaching:remove','#','admin','2026-03-10 00:16:21','',NULL,''),(2023,'教学案例库导出',2018,5,'#','',NULL,'',1,0,'F','0','0','teaching:teaching:export','#','admin','2026-03-10 00:16:21','',NULL,'');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='通知公告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` VALUES (1,'温馨提醒：2018-07-01 若依新版本发布啦','2',_binary '新版本内容','0','admin','2026-03-09 23:32:46','',NULL,'管理员'),(2,'维护通知：2018-07-01 若依系统凌晨维护','1',_binary '维护内容','0','admin','2026-03-09 23:32:46','',NULL,'管理员');
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oper_log`
--

DROP TABLE IF EXISTS `sys_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`),
  KEY `idx_sys_oper_log_bt` (`business_type`),
  KEY `idx_sys_oper_log_s` (`status`),
  KEY `idx_sys_oper_log_ot` (`oper_time`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='操作日志记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oper_log`
--

LOCK TABLES `sys_oper_log` WRITE;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
INSERT INTO `sys_oper_log` VALUES (100,'创建表',0,'com.ruoyi.generator.controller.GenController.createTableSave()','POST',1,'admin','研发部门','/tool/gen/createTable','127.0.0.1','内网IP','{\"sql\":\"-- ----------------------------\\n-- 1. 用户个人图库表 (对应：我的图库)\\n-- ----------------------------\\nDROP TABLE IF EXISTS `biz_user_graph`;\\nCREATE TABLE `biz_user_graph` (\\n  `graph_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT \'图ID主键\',\\n  `graph_name` varchar(100) NOT NULL COMMENT \'图模型名称\',\\n  `graph_data` longtext NOT NULL COMMENT \'图JSON结构数据(存G6导出的节点和边)\',\\n  `node_count` int(11) DEFAULT \'0\' COMMENT \'节点数量(方便列表展示)\',\\n  `edge_count` int(11) DEFAULT \'0\' COMMENT \'边数量(方便列表展示)\',\\n  `user_id` bigint(20) NOT NULL COMMENT \'所属用户ID(关联sys_user表)\',\\n  `create_by` varchar(64) DEFAULT \'\' COMMENT \'创建者\',\\n  `create_time` datetime DEFAULT NULL COMMENT \'创建时间\',\\n  `update_by` varchar(64) DEFAULT \'\' COMMENT \'更新者\',\\n  `update_time` datetime DEFAULT NULL COMMENT \'更新时间\',\\n  `remark` varchar(500) DEFAULT NULL COMMENT \'备注或描述\',\\n  PRIMARY KEY (`graph_id`)\\n) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COMMENT=\'用户个人图库表\';\"}','{\"msg\":\"创建表结构异常\",\"code\":500}',0,NULL,'2026-03-09 23:42:53',7),(101,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"biz_user_graph\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-09 23:44:21',80),(102,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"graph\",\"className\":\"BizUserGraph\",\"columns\":[{\"capJavaField\":\"GraphId\",\"columnComment\":\"图ID主键\",\"columnId\":1,\"columnName\":\"graph_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2026-03-09 23:44:21\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"graphId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"GraphName\",\"columnComment\":\"图模型名称\",\"columnId\":2,\"columnName\":\"graph_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2026-03-09 23:44:21\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"graphName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"GraphData\",\"columnComment\":\"图JSON结构数据(存G6导出的节点和边)\",\"columnId\":3,\"columnName\":\"graph_data\",\"columnType\":\"longtext\",\"createBy\":\"admin\",\"createTime\":\"2026-03-09 23:44:21\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"graphData\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"NodeCount\",\"columnComment\":\"节点数量(方便列表展示)\",\"columnId\":4,\"columnName\":\"node_count\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-03-09 23:44:21\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-09 23:46:44',40),(103,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"graph\",\"className\":\"BizUserGraph\",\"columns\":[{\"capJavaField\":\"GraphId\",\"columnComment\":\"图ID主键\",\"columnId\":1,\"columnName\":\"graph_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2026-03-09 23:44:21\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"graphId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2026-03-09 23:46:44\",\"usableColumn\":false},{\"capJavaField\":\"GraphName\",\"columnComment\":\"图模型名称\",\"columnId\":2,\"columnName\":\"graph_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2026-03-09 23:44:21\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"graphName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2026-03-09 23:46:44\",\"usableColumn\":false},{\"capJavaField\":\"GraphData\",\"columnComment\":\"图JSON结构数据(存G6导出的节点和边)\",\"columnId\":3,\"columnName\":\"graph_data\",\"columnType\":\"longtext\",\"createBy\":\"admin\",\"createTime\":\"2026-03-09 23:44:21\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"graphData\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2026-03-09 23:46:44\",\"usableColumn\":false},{\"capJavaField\":\"NodeCount\",\"columnComment\":\"节点数量(方便列表展示)\",\"columnId\":4,\"columnName\":\"node_count\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-03-09 23:44:21\",\"dictType\":\"\",\"edit\":true,\"htmlType\"','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-09 23:48:28',46),(104,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"biz_user_graph\"}',NULL,0,NULL,'2026-03-09 23:48:35',250),(105,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"graph/graph/index\",\"createTime\":\"2026-03-09 23:49:07\",\"icon\":\"chart\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"我的图库\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"graph\",\"perms\":\"graph:graph:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-09 23:52:54',30),(106,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2026-03-09 23:32:43\",\"icon\":\"system\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1,\"menuName\":\"系统管理\",\"menuType\":\"M\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"system\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-10 00:00:47',8),(107,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2026-03-09 23:32:43\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2,\"menuName\":\"系统监控\",\"menuType\":\"M\",\"orderNum\":6,\"params\":{},\"parentId\":0,\"path\":\"monitor\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-10 00:00:55',9),(108,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2026-03-09 23:32:43\",\"icon\":\"tool\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":3,\"menuName\":\"系统工具\",\"menuType\":\"M\",\"orderNum\":7,\"params\":{},\"parentId\":0,\"path\":\"tool\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-10 00:00:59',7),(109,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2026-03-09 23:32:43\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":4,\"menuName\":\"若依官网\",\"menuType\":\"M\",\"orderNum\":8,\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-10 00:01:04',8),(110,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/user/index\",\"createTime\":\"2026-03-09 23:32:43\",\"icon\":\"user\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":100,\"menuName\":\"用户管理\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"user\",\"perms\":\"system:user:list\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-10 00:01:49',7),(111,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2026-03-09 23:32:43\",\"icon\":\"system\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1,\"menuName\":\"系统管理\",\"menuType\":\"M\",\"orderNum\":6,\"params\":{},\"parentId\":0,\"path\":\"system\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-10 00:02:05',19),(112,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/user/index\",\"createTime\":\"2026-03-09 23:32:43\",\"icon\":\"user\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":100,\"menuName\":\"用户管理\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"system/user\",\"perms\":\"system:user:list\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-10 00:04:33',33),(113,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"biz_teaching_case\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-10 00:08:19',59),(114,'字典类型',1,'com.ruoyi.web.controller.system.SysDictTypeController.add()','POST',1,'admin','研发部门','/system/dict/type','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"dictName\":\"case_type\",\"dictType\":\"case_type\",\"params\":{},\"status\":\"0\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-10 00:10:21',28),(115,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.add()','POST',1,'admin','研发部门','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"二分图\",\"dictSort\":1,\"dictType\":\"case_type\",\"dictValue\":\"erfentu\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-10 00:10:54',9),(116,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"case\",\"className\":\"BizTeachingCase\",\"columns\":[{\"capJavaField\":\"CaseId\",\"columnComment\":\"案例ID主键\",\"columnId\":12,\"columnName\":\"case_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2026-03-10 00:08:19\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"caseId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CaseName\",\"columnComment\":\"教学案例名称\",\"columnId\":13,\"columnName\":\"case_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2026-03-10 00:08:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"caseName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CaseType\",\"columnComment\":\"案例分类(如:二分图,网络拓扑等)\",\"columnId\":14,\"columnName\":\"case_type\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2026-03-10 00:08:19\",\"dictType\":\"case_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"caseType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"GraphData\",\"columnComment\":\"图JSON结构数据\",\"columnId\":15,\"columnName\":\"graph_data\",\"columnType\":\"longtext\",\"createBy\":\"admin\",\"createTime\":\"2026-03-10 00:08:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-10 00:11:40',38),(117,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"case\",\"className\":\"BizTeachingCase\",\"columns\":[{\"capJavaField\":\"CaseId\",\"columnComment\":\"案例ID主键\",\"columnId\":12,\"columnName\":\"case_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2026-03-10 00:08:19\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"caseId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2026-03-10 00:11:40\",\"usableColumn\":false},{\"capJavaField\":\"CaseName\",\"columnComment\":\"教学案例名称\",\"columnId\":13,\"columnName\":\"case_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2026-03-10 00:08:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"caseName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2026-03-10 00:11:40\",\"usableColumn\":false},{\"capJavaField\":\"CaseType\",\"columnComment\":\"案例分类(如:二分图,网络拓扑等)\",\"columnId\":14,\"columnName\":\"case_type\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2026-03-10 00:08:19\",\"dictType\":\"case_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"caseType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2026-03-10 00:11:40\",\"usableColumn\":false},{\"capJavaField\":\"GraphData\",\"columnComment\":\"图JSON结构数据\",\"columnId\":15,\"columnName\":\"graph_data\",\"columnType\":\"longtext\",\"createBy\":\"admin\",\"createTime\":\"2026-03-10 00:08:19\",\"dictType\":\"\",\"edit\":true,\"htm','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-10 00:12:21',25),(118,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"biz_teaching_case\"}',NULL,0,NULL,'2026-03-10 00:12:25',132),(119,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"teaching\",\"className\":\"BizTeachingCase\",\"columns\":[{\"capJavaField\":\"CaseId\",\"columnComment\":\"案例ID主键\",\"columnId\":12,\"columnName\":\"case_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2026-03-10 00:08:19\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"caseId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2026-03-10 00:12:21\",\"usableColumn\":false},{\"capJavaField\":\"CaseName\",\"columnComment\":\"教学案例名称\",\"columnId\":13,\"columnName\":\"case_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2026-03-10 00:08:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"caseName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2026-03-10 00:12:21\",\"usableColumn\":false},{\"capJavaField\":\"CaseType\",\"columnComment\":\"案例分类(如:二分图,网络拓扑等)\",\"columnId\":14,\"columnName\":\"case_type\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2026-03-10 00:08:19\",\"dictType\":\"case_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"caseType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2026-03-10 00:12:21\",\"usableColumn\":false},{\"capJavaField\":\"GraphData\",\"columnComment\":\"图JSON结构数据\",\"columnId\":15,\"columnName\":\"graph_data\",\"columnType\":\"longtext\",\"createBy\":\"admin\",\"createTime\":\"2026-03-10 00:08:19\",\"dictType\":\"\",\"edit\":true,','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-10 00:14:43',37),(120,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"biz_teaching_case\"}',NULL,0,NULL,'2026-03-10 00:14:46',35),(121,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"teaching/teaching/index\",\"createTime\":\"2026-03-10 00:16:21\",\"icon\":\"list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2012,\"menuName\":\"教学案例库\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"teaching\",\"perms\":\"teaching:teaching:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-10 00:21:07',20),(122,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"teaching/teaching/index\",\"createTime\":\"2026-03-10 00:16:21\",\"icon\":\"list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2012,\"menuName\":\"教学案例管理\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"teaching\",\"perms\":\"teaching:teaching:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-10 00:21:43',9),(123,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"teaching/teaching/case\",\"createTime\":\"2026-03-10 00:16:21\",\"icon\":\"table\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2018,\"menuName\":\"教学案例库\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"case\",\"perms\":\"teaching:teaching:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-10 00:27:02',24),(124,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin','研发部门','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2026-03-09 23:32:43\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2018,2000,2001,2002,2003,2004,2005,2019],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-10 00:45:24',35),(125,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2026-03-09 23:32:43\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":4,\"menuName\":\"若依官网\",\"menuType\":\"M\",\"orderNum\":8,\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-10 00:51:07',38),(126,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"graph/graph/graph\",\"createTime\":\"2026-03-09 23:49:07\",\"icon\":\"chart\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"我的图库\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"graph\",\"perms\":\"graph:graph:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-10 17:21:56',48),(127,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"teaching/teaching/teaching\",\"createTime\":\"2026-03-10 00:16:21\",\"icon\":\"list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2012,\"menuName\":\"教学案例管理\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"teaching\",\"perms\":\"teaching:teaching:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-10 17:22:06',8),(128,'我的图库',1,'com.ruoyi.graph.controller.BizUserGraphController.add()','POST',1,'admin','研发部门','/graph/graph','127.0.0.1','内网IP','{\"createTime\":\"2026-03-10 17:34:46\",\"edgeCount\":1,\"graphData\":\"{\\\"nodes\\\":[{\\\"id\\\":\\\"node1\\\",\\\"label\\\":\\\"V1\\\",\\\"x\\\":200,\\\"y\\\":200,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"highlight\\\":{\\\"fill\\\":\\\"rgb(223, 234, 255)\\\",\\\"stroke\\\":\\\"#4572d9\\\",\\\"lineWidth\\\":2,\\\"text-shape\\\":{\\\"fontWeight\\\":500}},\\\"inactive\\\":{\\\"fill\\\":\\\"rgb(247, 250, 255)\\\",\\\"stroke\\\":\\\"rgb(191, 213, 255)\\\",\\\"lineWidth\\\":1},\\\"disable\\\":{\\\"fill\\\":\\\"rgb(250, 250, 250)\\\",\\\"stroke\\\":\\\"rgb(224, 224, 224)\\\",\\\"lineWidth\\\":1},\\\"fill\\\":\\\"#C6E5FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":2,\\\"cursor\\\":\\\"pointer\\\"},\\\"labelCfg\\\":{\\\"style\\\":{\\\"fill\\\":\\\"#333\\\",\\\"fontSize\\\":14,\\\"fontWeight\\\":\\\"bold\\\"}}},{\\\"id\\\":\\\"node2\\\",\\\"label\\\":\\\"V2\\\",\\\"x\\\":400,\\\"y\\\":200,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"highlight\\\":{\\\"fill\\\":\\\"rgb(223, 234, 255)\\\",\\\"stroke\\\":\\\"#4572d9\\\",\\\"lineWidth\\\":2,\\\"text-shape\\\":{\\\"fontWeight\\\":500}},\\\"inactive\\\":{\\\"fill\\\":\\\"rgb(247, 250, 255)\\\",\\\"stroke\\\":\\\"rgb(191, 213, 255)\\\",\\\"lineWidth\\\":1},\\\"disable\\\":{\\\"fill\\\":\\\"rgb(250, 250, 250)\\\",\\\"stroke\\\":\\\"rgb(224, 224, 224)\\\",\\\"lineWidth\\\":1},\\\"fill\\\":\\\"#C6E5FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":2,\\\"cursor\\\":\\\"pointer\\\"},\\\"labelCfg\\\":{\\\"style\\\":{\\\"fill\\\":\\\"#333\\\",\\\"fontSize\\\":14,\\\"fontWeight\\\":\\\"bold\\\"}}}],\\\"edges\\\":[{\\\"source\\\":\\\"node1\\\",\\\"target\\\":\\\"node2\\\",\\\"type\\\":\\\"line\\\",\\\"style\\\":{\\\"selected\\\":{\\\"stroke\\\":\\\"#F56C6C\\\",\\\"lineWidth\\\":3},\\\"active\\\":{\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"stroke\\\":\\\"#A3B1BF\\\",\\\"lineWidth\\\":2,\\\"endArrow\\\":true,\\\"cursor\\\":\\\"pointer\\\",\\\"lineAppendWidth\\\":15},\\\"id\\\":\\\"edge-0.66040724171633221773135270359\\\",\\\"startPoint\\\":{\\\"x\\\":221,\\\"y\\\":200},\\\"endPoint\\\":{\\\"x\\\":379,\\\"y\\\":200}}],\\\"combos\\\":[]}\",\"graphName\":\"test\",\"nodeCount',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'user_id\' doesn\'t have a default value\r\n### The error may exist in file [C:\\Users\\fanb\\src\\GraphEdu\\ruoyi-admin\\target\\classes\\mapper\\graph\\BizUserGraphMapper.xml]\r\n### The error may involve com.ruoyi.graph.mapper.BizUserGraphMapper.insertBizUserGraph-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into biz_user_graph          ( graph_name,             graph_data,             node_count,             edge_count,                                       create_time,                                       remark )           values ( ?,             ?,             ?,             ?,                                       ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'user_id\' doesn\'t have a default value\n; Field \'user_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'user_id\' doesn\'t have a default value','2026-03-10 17:34:46',146),(129,'我的图库',1,'com.ruoyi.graph.controller.BizUserGraphController.add()','POST',1,'admin','研发部门','/graph/graph','127.0.0.1','内网IP','{\"createTime\":\"2026-03-10 17:39:54\",\"edgeCount\":1,\"graphData\":\"{\\\"nodes\\\":[{\\\"id\\\":\\\"node1\\\",\\\"label\\\":\\\"V1\\\",\\\"x\\\":200,\\\"y\\\":200,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"highlight\\\":{\\\"fill\\\":\\\"rgb(223, 234, 255)\\\",\\\"stroke\\\":\\\"#4572d9\\\",\\\"lineWidth\\\":2,\\\"text-shape\\\":{\\\"fontWeight\\\":500}},\\\"inactive\\\":{\\\"fill\\\":\\\"rgb(247, 250, 255)\\\",\\\"stroke\\\":\\\"rgb(191, 213, 255)\\\",\\\"lineWidth\\\":1},\\\"disable\\\":{\\\"fill\\\":\\\"rgb(250, 250, 250)\\\",\\\"stroke\\\":\\\"rgb(224, 224, 224)\\\",\\\"lineWidth\\\":1},\\\"fill\\\":\\\"#C6E5FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":2,\\\"cursor\\\":\\\"pointer\\\"},\\\"labelCfg\\\":{\\\"style\\\":{\\\"fill\\\":\\\"#333\\\",\\\"fontSize\\\":14,\\\"fontWeight\\\":\\\"bold\\\"}}},{\\\"id\\\":\\\"node2\\\",\\\"label\\\":\\\"V2\\\",\\\"x\\\":400,\\\"y\\\":200,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"highlight\\\":{\\\"fill\\\":\\\"rgb(223, 234, 255)\\\",\\\"stroke\\\":\\\"#4572d9\\\",\\\"lineWidth\\\":2,\\\"text-shape\\\":{\\\"fontWeight\\\":500}},\\\"inactive\\\":{\\\"fill\\\":\\\"rgb(247, 250, 255)\\\",\\\"stroke\\\":\\\"rgb(191, 213, 255)\\\",\\\"lineWidth\\\":1},\\\"disable\\\":{\\\"fill\\\":\\\"rgb(250, 250, 250)\\\",\\\"stroke\\\":\\\"rgb(224, 224, 224)\\\",\\\"lineWidth\\\":1},\\\"fill\\\":\\\"#C6E5FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":2,\\\"cursor\\\":\\\"pointer\\\"},\\\"labelCfg\\\":{\\\"style\\\":{\\\"fill\\\":\\\"#333\\\",\\\"fontSize\\\":14,\\\"fontWeight\\\":\\\"bold\\\"}}}],\\\"edges\\\":[{\\\"source\\\":\\\"node1\\\",\\\"target\\\":\\\"node2\\\",\\\"type\\\":\\\"line\\\",\\\"style\\\":{\\\"selected\\\":{\\\"stroke\\\":\\\"#F56C6C\\\",\\\"lineWidth\\\":3},\\\"active\\\":{\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"stroke\\\":\\\"#A3B1BF\\\",\\\"lineWidth\\\":2,\\\"endArrow\\\":true,\\\"cursor\\\":\\\"pointer\\\",\\\"lineAppendWidth\\\":15},\\\"id\\\":\\\"edge-0.66040724171633221773135270359\\\",\\\"startPoint\\\":{\\\"x\\\":221,\\\"y\\\":200},\\\"endPoint\\\":{\\\"x\\\":379,\\\"y\\\":200}}],\\\"combos\\\":[]}\",\"graphId\":100,\"graphName\":\"te','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-10 17:39:54',15),(130,'我的图库',2,'com.ruoyi.graph.controller.BizUserGraphController.edit()','PUT',1,'admin','研发部门','/graph/graph','127.0.0.1','内网IP','{\"createBy\":\"\",\"createTime\":\"2026-03-10 17:39:55\",\"edgeCount\":1,\"graphData\":\"{\\\"nodes\\\":[{\\\"id\\\":\\\"node1\\\",\\\"label\\\":\\\"V1\\\",\\\"x\\\":200,\\\"y\\\":200,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"highlight\\\":{\\\"fill\\\":\\\"rgb(223, 234, 255)\\\",\\\"stroke\\\":\\\"#4572d9\\\",\\\"lineWidth\\\":2,\\\"text-shape\\\":{\\\"fontWeight\\\":500}},\\\"inactive\\\":{\\\"fill\\\":\\\"rgb(247, 250, 255)\\\",\\\"stroke\\\":\\\"rgb(191, 213, 255)\\\",\\\"lineWidth\\\":1},\\\"disable\\\":{\\\"fill\\\":\\\"rgb(250, 250, 250)\\\",\\\"stroke\\\":\\\"rgb(224, 224, 224)\\\",\\\"lineWidth\\\":1},\\\"fill\\\":\\\"#C6E5FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":2,\\\"cursor\\\":\\\"pointer\\\"},\\\"labelCfg\\\":{\\\"style\\\":{\\\"fill\\\":\\\"#333\\\",\\\"fontSize\\\":14,\\\"fontWeight\\\":\\\"bold\\\"}}},{\\\"id\\\":\\\"node2\\\",\\\"label\\\":\\\"V2\\\",\\\"x\\\":400,\\\"y\\\":200,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"highlight\\\":{\\\"fill\\\":\\\"rgb(223, 234, 255)\\\",\\\"stroke\\\":\\\"#4572d9\\\",\\\"lineWidth\\\":2,\\\"text-shape\\\":{\\\"fontWeight\\\":500}},\\\"inactive\\\":{\\\"fill\\\":\\\"rgb(247, 250, 255)\\\",\\\"stroke\\\":\\\"rgb(191, 213, 255)\\\",\\\"lineWidth\\\":1},\\\"disable\\\":{\\\"fill\\\":\\\"rgb(250, 250, 250)\\\",\\\"stroke\\\":\\\"rgb(224, 224, 224)\\\",\\\"lineWidth\\\":1},\\\"fill\\\":\\\"#C6E5FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":2,\\\"cursor\\\":\\\"pointer\\\"},\\\"labelCfg\\\":{\\\"style\\\":{\\\"fill\\\":\\\"#333\\\",\\\"fontSize\\\":14,\\\"fontWeight\\\":\\\"bold\\\"}}}],\\\"edges\\\":[{\\\"source\\\":\\\"node1\\\",\\\"target\\\":\\\"node2\\\",\\\"type\\\":\\\"line\\\",\\\"style\\\":{\\\"selected\\\":{\\\"stroke\\\":\\\"#F56C6C\\\",\\\"lineWidth\\\":3},\\\"active\\\":{\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"stroke\\\":\\\"#A3B1BF\\\",\\\"lineWidth\\\":2,\\\"endArrow\\\":true,\\\"cursor\\\":\\\"pointer\\\",\\\"lineAppendWidth\\\":15},\\\"id\\\":\\\"edge-0.66040724171633221773135270359\\\",\\\"startPoint\\\":{\\\"x\\\":221,\\\"y\\\":200},\\\"endPoint\\\":{\\\"x\\\":379,\\\"y\\\":200}}],\\\"combos\\\":[]}\",\"graphId\":100,\"','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-10 17:40:07',20),(131,'教学案例库',1,'com.ruoyi.teaching.controller.BizTeachingCaseController.add()','POST',1,'admin','研发部门','/teaching/teaching','127.0.0.1','内网IP','{\"caseId\":100,\"caseName\":\"测试案列\",\"caseType\":\"erfentu\",\"createTime\":\"2026-03-10 17:42:06\",\"edgeCount\":1,\"graphData\":\"{\\\"nodes\\\":[{\\\"id\\\":\\\"node1\\\",\\\"label\\\":\\\"V1\\\",\\\"x\\\":200,\\\"y\\\":200,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"highlight\\\":{\\\"fill\\\":\\\"rgb(223, 234, 255)\\\",\\\"stroke\\\":\\\"#4572d9\\\",\\\"lineWidth\\\":2,\\\"text-shape\\\":{\\\"fontWeight\\\":500}},\\\"inactive\\\":{\\\"fill\\\":\\\"rgb(247, 250, 255)\\\",\\\"stroke\\\":\\\"rgb(191, 213, 255)\\\",\\\"lineWidth\\\":1},\\\"disable\\\":{\\\"fill\\\":\\\"rgb(250, 250, 250)\\\",\\\"stroke\\\":\\\"rgb(224, 224, 224)\\\",\\\"lineWidth\\\":1},\\\"fill\\\":\\\"#C6E5FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":2,\\\"cursor\\\":\\\"pointer\\\"},\\\"labelCfg\\\":{\\\"style\\\":{\\\"fill\\\":\\\"#333\\\",\\\"fontSize\\\":14,\\\"fontWeight\\\":\\\"bold\\\"}}},{\\\"id\\\":\\\"node2\\\",\\\"label\\\":\\\"V2\\\",\\\"x\\\":400,\\\"y\\\":200,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"highlight\\\":{\\\"fill\\\":\\\"rgb(223, 234, 255)\\\",\\\"stroke\\\":\\\"#4572d9\\\",\\\"lineWidth\\\":2,\\\"text-shape\\\":{\\\"fontWeight\\\":500}},\\\"inactive\\\":{\\\"fill\\\":\\\"rgb(247, 250, 255)\\\",\\\"stroke\\\":\\\"rgb(191, 213, 255)\\\",\\\"lineWidth\\\":1},\\\"disable\\\":{\\\"fill\\\":\\\"rgb(250, 250, 250)\\\",\\\"stroke\\\":\\\"rgb(224, 224, 224)\\\",\\\"lineWidth\\\":1},\\\"fill\\\":\\\"#C6E5FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":2,\\\"cursor\\\":\\\"pointer\\\"},\\\"labelCfg\\\":{\\\"style\\\":{\\\"fill\\\":\\\"#333\\\",\\\"fontSize\\\":14,\\\"fontWeight\\\":\\\"bold\\\"}}}],\\\"edges\\\":[{\\\"source\\\":\\\"node1\\\",\\\"target\\\":\\\"node2\\\",\\\"type\\\":\\\"line\\\",\\\"style\\\":{\\\"selected\\\":{\\\"stroke\\\":\\\"#F56C6C\\\",\\\"lineWidth\\\":3},\\\"active\\\":{\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"stroke\\\":\\\"#A3B1BF\\\",\\\"lineWidth\\\":2,\\\"endArrow\\\":true,\\\"cursor\\\":\\\"pointer\\\",\\\"lineAppendWidth\\\":15},\\\"id\\\":\\\"edge-0.047910989652377171773135686590\\\",\\\"startPoint\\\":{\\\"x\\\":221,\\\"y\\\":200},\\\"endPoint\\\":{\\\"x\\\":379,\\\"y\\\"','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-10 17:42:06',11),(132,'教学案例库',2,'com.ruoyi.teaching.controller.BizTeachingCaseController.edit()','PUT',1,'admin','研发部门','/teaching/teaching','127.0.0.1','内网IP','{\"caseId\":100,\"caseName\":\"测试案列2\",\"caseType\":\"erfentu\",\"createBy\":\"\",\"createTime\":\"2026-03-10 17:42:07\",\"edgeCount\":1,\"graphData\":\"{\\\"nodes\\\":[{\\\"id\\\":\\\"node1\\\",\\\"label\\\":\\\"V1\\\",\\\"x\\\":200,\\\"y\\\":200,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"highlight\\\":{\\\"fill\\\":\\\"rgb(223, 234, 255)\\\",\\\"stroke\\\":\\\"#4572d9\\\",\\\"lineWidth\\\":2,\\\"text-shape\\\":{\\\"fontWeight\\\":500}},\\\"inactive\\\":{\\\"fill\\\":\\\"rgb(247, 250, 255)\\\",\\\"stroke\\\":\\\"rgb(191, 213, 255)\\\",\\\"lineWidth\\\":1},\\\"disable\\\":{\\\"fill\\\":\\\"rgb(250, 250, 250)\\\",\\\"stroke\\\":\\\"rgb(224, 224, 224)\\\",\\\"lineWidth\\\":1},\\\"fill\\\":\\\"#C6E5FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":2,\\\"cursor\\\":\\\"pointer\\\"},\\\"labelCfg\\\":{\\\"style\\\":{\\\"fill\\\":\\\"#333\\\",\\\"fontSize\\\":14,\\\"fontWeight\\\":\\\"bold\\\"}}},{\\\"id\\\":\\\"node2\\\",\\\"label\\\":\\\"V2\\\",\\\"x\\\":400,\\\"y\\\":200,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"highlight\\\":{\\\"fill\\\":\\\"rgb(223, 234, 255)\\\",\\\"stroke\\\":\\\"#4572d9\\\",\\\"lineWidth\\\":2,\\\"text-shape\\\":{\\\"fontWeight\\\":500}},\\\"inactive\\\":{\\\"fill\\\":\\\"rgb(247, 250, 255)\\\",\\\"stroke\\\":\\\"rgb(191, 213, 255)\\\",\\\"lineWidth\\\":1},\\\"disable\\\":{\\\"fill\\\":\\\"rgb(250, 250, 250)\\\",\\\"stroke\\\":\\\"rgb(224, 224, 224)\\\",\\\"lineWidth\\\":1},\\\"fill\\\":\\\"#C6E5FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":2,\\\"cursor\\\":\\\"pointer\\\"},\\\"labelCfg\\\":{\\\"style\\\":{\\\"fill\\\":\\\"#333\\\",\\\"fontSize\\\":14,\\\"fontWeight\\\":\\\"bold\\\"}}}],\\\"edges\\\":[{\\\"source\\\":\\\"node1\\\",\\\"target\\\":\\\"node2\\\",\\\"type\\\":\\\"line\\\",\\\"style\\\":{\\\"selected\\\":{\\\"stroke\\\":\\\"#F56C6C\\\",\\\"lineWidth\\\":3},\\\"active\\\":{\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"stroke\\\":\\\"#A3B1BF\\\",\\\"lineWidth\\\":2,\\\"endArrow\\\":true,\\\"cursor\\\":\\\"pointer\\\",\\\"lineAppendWidth\\\":15},\\\"id\\\":\\\"edge-0.047910989652377171773135686590\\\",\\\"startPoint\\\":{\\\"x\\\":221,\\\"y\\\":200},\\\"endPoint\\\":{','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-10 17:42:23',6),(133,'我的图库',1,'com.ruoyi.graph.controller.BizUserGraphController.add()','POST',1,'admin','研发部门','/graph/graph','127.0.0.1','内网IP','{\"createTime\":\"2026-03-10 18:07:22\",\"graphName\":\"tt\",\"params\":{},\"userId\":1} ',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'graph_data\' doesn\'t have a default value\r\n### The error may exist in file [C:\\Users\\fanb\\src\\GraphEdu\\ruoyi-admin\\target\\classes\\mapper\\graph\\BizUserGraphMapper.xml]\r\n### The error may involve com.ruoyi.graph.mapper.BizUserGraphMapper.insertBizUserGraph-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into biz_user_graph          ( graph_name,                                                    user_id,                          create_time )           values ( ?,                                                    ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'graph_data\' doesn\'t have a default value\n; Field \'graph_data\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'graph_data\' doesn\'t have a default value','2026-03-10 18:07:22',16),(134,'我的图库',1,'com.ruoyi.graph.controller.BizUserGraphController.add()','POST',1,'admin','研发部门','/graph/graph','127.0.0.1','内网IP','{\"createTime\":\"2026-03-10 18:07:35\",\"graphName\":\"tt\",\"params\":{},\"userId\":1} ',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'graph_data\' doesn\'t have a default value\r\n### The error may exist in file [C:\\Users\\fanb\\src\\GraphEdu\\ruoyi-admin\\target\\classes\\mapper\\graph\\BizUserGraphMapper.xml]\r\n### The error may involve com.ruoyi.graph.mapper.BizUserGraphMapper.insertBizUserGraph-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into biz_user_graph          ( graph_name,                                                    user_id,                          create_time )           values ( ?,                                                    ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'graph_data\' doesn\'t have a default value\n; Field \'graph_data\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'graph_data\' doesn\'t have a default value','2026-03-10 18:07:35',12),(135,'我的图库',1,'com.ruoyi.graph.controller.BizUserGraphController.add()','POST',1,'admin','研发部门','/graph/graph','127.0.0.1','内网IP','{\"createTime\":\"2026-03-10 18:11:50\",\"graphName\":\"12334\",\"params\":{},\"userId\":1} ',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'graph_data\' doesn\'t have a default value\r\n### The error may exist in file [C:\\Users\\fanb\\src\\GraphEdu\\ruoyi-admin\\target\\classes\\mapper\\graph\\BizUserGraphMapper.xml]\r\n### The error may involve com.ruoyi.graph.mapper.BizUserGraphMapper.insertBizUserGraph-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into biz_user_graph          ( graph_name,                                                    user_id,                          create_time )           values ( ?,                                                    ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'graph_data\' doesn\'t have a default value\n; Field \'graph_data\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'graph_data\' doesn\'t have a default value','2026-03-10 18:11:50',4),(136,'我的图库',1,'com.ruoyi.graph.controller.BizUserGraphController.add()','POST',1,'admin','研发部门','/graph/graph','127.0.0.1','内网IP','{\"createTime\":\"2026-03-10 18:45:58\",\"edgeCount\":0,\"graphData\":\"{\\\"nodes\\\":[],\\\"edges\\\":[]}\",\"graphId\":101,\"graphName\":\"空图\",\"nodeCount\":0,\"params\":{},\"userId\":1} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-10 18:45:58',11),(137,'我的图库',2,'com.ruoyi.graph.controller.BizUserGraphController.edit()','PUT',1,'admin','研发部门','/graph/graph','127.0.0.1','内网IP','{\"createBy\":\"\",\"createTime\":\"2026-03-10 18:45:59\",\"edgeCount\":0,\"graphData\":\"{\\\"nodes\\\":[{\\\"id\\\":\\\"node1\\\",\\\"label\\\":\\\"V1\\\",\\\"x\\\":305.4203902104957,\\\"y\\\":246.66204518909504,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"fill\\\":\\\"#C6E5FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":2,\\\"cursor\\\":\\\"pointer\\\"},\\\"labelCfg\\\":{\\\"style\\\":{\\\"fill\\\":\\\"#333\\\",\\\"fontSize\\\":14,\\\"fontWeight\\\":\\\"bold\\\"}}},{\\\"id\\\":\\\"node2\\\",\\\"label\\\":\\\"V2\\\",\\\"x\\\":395.28182180800985,\\\"y\\\":278.80524151429756,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"fill\\\":\\\"#C6E5FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":2,\\\"cursor\\\":\\\"pointer\\\"},\\\"labelCfg\\\":{\\\"style\\\":{\\\"fill\\\":\\\"#333\\\",\\\"fontSize\\\":14,\\\"fontWeight\\\":\\\"bold\\\"}}}],\\\"edges\\\":[],\\\"combos\\\":[]}\",\"graphId\":101,\"graphName\":\"空图\",\"nodeCount\":2,\"params\":{},\"updateBy\":\"\",\"updateTime\":\"2026-03-10 18:46:11\",\"userId\":1} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-10 18:46:11',5),(138,'角色管理',1,'com.ruoyi.web.controller.system.SysRoleController.add()','POST',1,'admin','研发部门','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2000,2001,2002,2003,2004,2005,2018,2019,2020,2021,2022,2023,2012,2013,2014,2015,2016,2017,100,1000,1001,1002,1003,1004,1005,1006],\"params\":{},\"roleId\":100,\"roleKey\":\"sys_admin\",\"roleName\":\"系统管理员\",\"roleSort\":3,\"status\":\"0\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-10 18:52:59',37),(139,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin','研发部门','/system/user','127.0.0.1','内网IP','{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2026-03-09 23:32:43\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":105,\"deptName\":\"测试部门\",\"leader\":\"若依\",\"orderNum\":3,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":105,\"email\":\"ry@qq.com\",\"loginDate\":\"2026-03-09 23:32:43\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"系统管理员\",\"params\":{},\"phonenumber\":\"15666666666\",\"postIds\":[2],\"pwdUpdateDate\":\"2026-03-09 23:32:43\",\"remark\":\"系统管理员\",\"roleIds\":[100],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":2,\"userName\":\"ry\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-10 18:56:01',23),(140,'我的图库',1,'com.ruoyi.graph.controller.BizUserGraphController.add()','POST',1,'admin','测试部门','/graph/graph','127.0.0.1','内网IP','{\"createTime\":\"2026-03-10 19:02:00\",\"edgeCount\":1,\"graphData\":\"{\\\"nodes\\\":[{\\\"id\\\":\\\"node1\\\",\\\"label\\\":\\\"V1\\\",\\\"x\\\":200,\\\"y\\\":200,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"highlight\\\":{\\\"fill\\\":\\\"rgb(223, 234, 255)\\\",\\\"stroke\\\":\\\"#4572d9\\\",\\\"lineWidth\\\":2,\\\"text-shape\\\":{\\\"fontWeight\\\":500}},\\\"inactive\\\":{\\\"fill\\\":\\\"rgb(247, 250, 255)\\\",\\\"stroke\\\":\\\"rgb(191, 213, 255)\\\",\\\"lineWidth\\\":1},\\\"disable\\\":{\\\"fill\\\":\\\"rgb(250, 250, 250)\\\",\\\"stroke\\\":\\\"rgb(224, 224, 224)\\\",\\\"lineWidth\\\":1},\\\"fill\\\":\\\"#C6E5FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":2,\\\"cursor\\\":\\\"pointer\\\"},\\\"labelCfg\\\":{\\\"style\\\":{\\\"fill\\\":\\\"#333\\\",\\\"fontSize\\\":14,\\\"fontWeight\\\":\\\"bold\\\"}}},{\\\"id\\\":\\\"node2\\\",\\\"label\\\":\\\"V2\\\",\\\"x\\\":400,\\\"y\\\":200,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"highlight\\\":{\\\"fill\\\":\\\"rgb(223, 234, 255)\\\",\\\"stroke\\\":\\\"#4572d9\\\",\\\"lineWidth\\\":2,\\\"text-shape\\\":{\\\"fontWeight\\\":500}},\\\"inactive\\\":{\\\"fill\\\":\\\"rgb(247, 250, 255)\\\",\\\"stroke\\\":\\\"rgb(191, 213, 255)\\\",\\\"lineWidth\\\":1},\\\"disable\\\":{\\\"fill\\\":\\\"rgb(250, 250, 250)\\\",\\\"stroke\\\":\\\"rgb(224, 224, 224)\\\",\\\"lineWidth\\\":1},\\\"fill\\\":\\\"#C6E5FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":2,\\\"cursor\\\":\\\"pointer\\\"},\\\"labelCfg\\\":{\\\"style\\\":{\\\"fill\\\":\\\"#333\\\",\\\"fontSize\\\":14,\\\"fontWeight\\\":\\\"bold\\\"}}},{\\\"id\\\":\\\"node3\\\",\\\"label\\\":\\\"V3\\\",\\\"x\\\":261.12497522185157,\\\"y\\\":320.59629681345615,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"fill\\\":\\\"#C6E5FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":2,\\\"cursor\\\":\\\"pointer\\\"},\\\"labelCfg\\\":{\\\"style\\\":{\\\"fill\\\":\\\"#333\\\",\\\"fontSize\\\":14,\\\"fontWeight\\\":\\\"bold\\\"}}},{\\\"id\\\":\\\"node4','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-10 19:02:00',6),(141,'参数管理',2,'com.ruoyi.web.controller.system.SysConfigController.edit()','PUT',1,'ry_admin','研发部门','/system/config','127.0.0.1','内网IP','{\"configId\":5,\"configKey\":\"sys.account.registerUser\",\"configName\":\"账号自助-是否开启用户注册功能\",\"configType\":\"Y\",\"configValue\":\"true\",\"createBy\":\"admin\",\"createTime\":\"2026-03-09 23:32:46\",\"params\":{},\"remark\":\"是否开启注册用户功能（true开启，false关闭）\",\"updateBy\":\"ry_admin\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-10 19:16:36',19),(142,'角色管理',4,'com.ruoyi.web.controller.system.SysRoleController.selectAuthUserAll()','PUT',1,'ry_admin','研发部门','/system/role/authUser/selectAll','127.0.0.1','内网IP','{\"roleId\":\"2\",\"userIds\":\"100,101\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-10 19:32:42',7),(143,'用户管理',4,'com.ruoyi.web.controller.system.SysUserController.insertAuthRole()','PUT',1,'admin','测试部门','/system/user/authRole','127.0.0.1','内网IP','{\"roleIds\":\"100\",\"userId\":\"2\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-18 08:45:37',60),(144,'我的图库',2,'com.ruoyi.graph.controller.BizUserGraphController.edit()','PUT',1,'admin','测试部门','/graph/graph','127.0.0.1','内网IP','{\"createBy\":\"\",\"createTime\":\"2026-03-10 19:02:01\",\"edgeCount\":1,\"graphData\":\"{\\\"nodes\\\":[{\\\"id\\\":\\\"node1\\\",\\\"label\\\":\\\"V1\\\",\\\"x\\\":200,\\\"y\\\":200,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"highlight\\\":{\\\"fill\\\":\\\"rgb(223, 234, 255)\\\",\\\"stroke\\\":\\\"#4572d9\\\",\\\"lineWidth\\\":2,\\\"text-shape\\\":{\\\"fontWeight\\\":500}},\\\"inactive\\\":{\\\"fill\\\":\\\"rgb(247, 250, 255)\\\",\\\"stroke\\\":\\\"rgb(191, 213, 255)\\\",\\\"lineWidth\\\":1},\\\"disable\\\":{\\\"fill\\\":\\\"rgb(250, 250, 250)\\\",\\\"stroke\\\":\\\"rgb(224, 224, 224)\\\",\\\"lineWidth\\\":1},\\\"fill\\\":\\\"#C6E5FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":2,\\\"cursor\\\":\\\"pointer\\\"},\\\"labelCfg\\\":{\\\"style\\\":{\\\"fill\\\":\\\"#333\\\",\\\"fontSize\\\":14,\\\"fontWeight\\\":\\\"bold\\\"}}},{\\\"id\\\":\\\"node2\\\",\\\"label\\\":\\\"V2\\\",\\\"x\\\":400,\\\"y\\\":200,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"highlight\\\":{\\\"fill\\\":\\\"rgb(223, 234, 255)\\\",\\\"stroke\\\":\\\"#4572d9\\\",\\\"lineWidth\\\":2,\\\"text-shape\\\":{\\\"fontWeight\\\":500}},\\\"inactive\\\":{\\\"fill\\\":\\\"rgb(247, 250, 255)\\\",\\\"stroke\\\":\\\"rgb(191, 213, 255)\\\",\\\"lineWidth\\\":1},\\\"disable\\\":{\\\"fill\\\":\\\"rgb(250, 250, 250)\\\",\\\"stroke\\\":\\\"rgb(224, 224, 224)\\\",\\\"lineWidth\\\":1},\\\"fill\\\":\\\"#C6E5FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":2,\\\"cursor\\\":\\\"pointer\\\"},\\\"labelCfg\\\":{\\\"style\\\":{\\\"fill\\\":\\\"#333\\\",\\\"fontSize\\\":14,\\\"fontWeight\\\":\\\"bold\\\"}}},{\\\"id\\\":\\\"node3\\\",\\\"label\\\":\\\"V3\\\",\\\"x\\\":261.12497522185157,\\\"y\\\":320.59629681345615,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"fill\\\":\\\"#C6E5FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":2,\\\"cursor\\\":\\\"pointer\\\"},\\\"labelCfg\\\":{\\\"style\\\":{\\\"fill\\\":\\\"#333\\\",\\\"fontSize\\\":14,\\\"fontWeight\\\":\\\"bold\\\"}}},{','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-18 09:35:07',27),(145,'我的图库',2,'com.ruoyi.graph.controller.BizUserGraphController.edit()','PUT',1,'admin','测试部门','/graph/graph','127.0.0.1','内网IP','{\"createBy\":\"\",\"createTime\":\"2026-03-10 19:02:01\",\"edgeCount\":4,\"graphData\":\"{\\\"nodes\\\":[{\\\"id\\\":\\\"node1\\\",\\\"label\\\":\\\"V1\\\",\\\"x\\\":200,\\\"y\\\":200,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"highlight\\\":{\\\"fill\\\":\\\"rgb(223, 234, 255)\\\",\\\"stroke\\\":\\\"#4572d9\\\",\\\"lineWidth\\\":2,\\\"text-shape\\\":{\\\"fontWeight\\\":500}},\\\"inactive\\\":{\\\"fill\\\":\\\"rgb(247, 250, 255)\\\",\\\"stroke\\\":\\\"rgb(191, 213, 255)\\\",\\\"lineWidth\\\":1},\\\"disable\\\":{\\\"fill\\\":\\\"rgb(250, 250, 250)\\\",\\\"stroke\\\":\\\"rgb(224, 224, 224)\\\",\\\"lineWidth\\\":1},\\\"fill\\\":\\\"#C6E5FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":2,\\\"cursor\\\":\\\"pointer\\\"},\\\"labelCfg\\\":{\\\"style\\\":{\\\"fill\\\":\\\"#333\\\",\\\"fontSize\\\":14,\\\"fontWeight\\\":\\\"bold\\\"}}},{\\\"id\\\":\\\"node2\\\",\\\"label\\\":\\\"V2\\\",\\\"x\\\":400,\\\"y\\\":200,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"highlight\\\":{\\\"fill\\\":\\\"rgb(223, 234, 255)\\\",\\\"stroke\\\":\\\"#4572d9\\\",\\\"lineWidth\\\":2,\\\"text-shape\\\":{\\\"fontWeight\\\":500}},\\\"inactive\\\":{\\\"fill\\\":\\\"rgb(247, 250, 255)\\\",\\\"stroke\\\":\\\"rgb(191, 213, 255)\\\",\\\"lineWidth\\\":1},\\\"disable\\\":{\\\"fill\\\":\\\"rgb(250, 250, 250)\\\",\\\"stroke\\\":\\\"rgb(224, 224, 224)\\\",\\\"lineWidth\\\":1},\\\"fill\\\":\\\"#C6E5FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":2,\\\"cursor\\\":\\\"pointer\\\"},\\\"labelCfg\\\":{\\\"style\\\":{\\\"fill\\\":\\\"#333\\\",\\\"fontSize\\\":14,\\\"fontWeight\\\":\\\"bold\\\"}}},{\\\"id\\\":\\\"node3\\\",\\\"label\\\":\\\"V3\\\",\\\"x\\\":261.12497522185157,\\\"y\\\":320.59629681345615,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"highlight\\\":{\\\"fill\\\":\\\"rgb(223, 234, 255)\\\",\\\"stroke\\\":\\\"#4572d9\\\",\\\"lineWidth\\\":2,\\\"text-shape\\\":{\\\"fontWeight\\\":500}},\\\"inactive\\\":{\\\"fill\\\":\\\"rgb(247, 250, 255)\\\",\\\"','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-18 09:44:04',15),(146,'我的图库',2,'com.ruoyi.graph.controller.BizUserGraphController.edit()','PUT',1,'admin','测试部门','/graph/graph','127.0.0.1','内网IP','{\"createBy\":\"\",\"createTime\":\"2026-03-10 19:02:01\",\"edgeCount\":5,\"graphData\":\"{\\\"nodes\\\":[{\\\"id\\\":\\\"node1\\\",\\\"label\\\":\\\"V1\\\",\\\"x\\\":200,\\\"y\\\":200,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"highlight\\\":{\\\"fill\\\":\\\"rgb(223, 234, 255)\\\",\\\"stroke\\\":\\\"#4572d9\\\",\\\"lineWidth\\\":2,\\\"text-shape\\\":{\\\"fontWeight\\\":500}},\\\"inactive\\\":{\\\"fill\\\":\\\"rgb(247, 250, 255)\\\",\\\"stroke\\\":\\\"rgb(191, 213, 255)\\\",\\\"lineWidth\\\":1},\\\"disable\\\":{\\\"fill\\\":\\\"rgb(250, 250, 250)\\\",\\\"stroke\\\":\\\"rgb(224, 224, 224)\\\",\\\"lineWidth\\\":1},\\\"fill\\\":\\\"#C6E5FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":2,\\\"cursor\\\":\\\"pointer\\\"},\\\"labelCfg\\\":{\\\"style\\\":{\\\"fill\\\":\\\"#333\\\",\\\"fontSize\\\":14,\\\"fontWeight\\\":\\\"bold\\\"}}},{\\\"id\\\":\\\"node2\\\",\\\"label\\\":\\\"V2\\\",\\\"x\\\":400,\\\"y\\\":200,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"highlight\\\":{\\\"fill\\\":\\\"rgb(223, 234, 255)\\\",\\\"stroke\\\":\\\"#4572d9\\\",\\\"lineWidth\\\":2,\\\"text-shape\\\":{\\\"fontWeight\\\":500}},\\\"inactive\\\":{\\\"fill\\\":\\\"rgb(247, 250, 255)\\\",\\\"stroke\\\":\\\"rgb(191, 213, 255)\\\",\\\"lineWidth\\\":1},\\\"disable\\\":{\\\"fill\\\":\\\"rgb(250, 250, 250)\\\",\\\"stroke\\\":\\\"rgb(224, 224, 224)\\\",\\\"lineWidth\\\":1},\\\"fill\\\":\\\"#C6E5FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":2,\\\"cursor\\\":\\\"pointer\\\"},\\\"labelCfg\\\":{\\\"style\\\":{\\\"fill\\\":\\\"#333\\\",\\\"fontSize\\\":14,\\\"fontWeight\\\":\\\"bold\\\"}}},{\\\"id\\\":\\\"node3\\\",\\\"label\\\":\\\"V3\\\",\\\"x\\\":261.12497522185157,\\\"y\\\":320.59629681345615,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"highlight\\\":{\\\"fill\\\":\\\"rgb(223, 234, 255)\\\",\\\"stroke\\\":\\\"#4572d9\\\",\\\"lineWidth\\\":2,\\\"text-shape\\\":{\\\"fontWeight\\\":500}},\\\"inactive\\\":{\\\"fill\\\":\\\"rgb(247, 250, 255)\\\",\\\"','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-18 09:45:29',23),(147,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.changeStatus()','PUT',1,'admin','测试部门','/system/user/changeStatus','127.0.0.1','内网IP','{\"admin\":true,\"params\":{},\"status\":\"1\",\"userId\":1} ',NULL,1,'不允许操作超级管理员用户','2026-03-18 09:46:04',3),(148,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.changeStatus()','PUT',1,'admin','测试部门','/system/user/changeStatus','127.0.0.1','内网IP','{\"admin\":false,\"params\":{},\"status\":\"1\",\"updateBy\":\"admin\",\"userId\":2} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-18 09:46:13',22),(149,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.changeStatus()','PUT',1,'admin','测试部门','/system/user/changeStatus','127.0.0.1','内网IP','{\"admin\":false,\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":2} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-18 09:46:16',13),(150,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.changeStatus()','PUT',1,'admin','测试部门','/system/user/changeStatus','127.0.0.1','内网IP','{\"admin\":false,\"params\":{},\"status\":\"1\",\"updateBy\":\"admin\",\"userId\":102} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-18 14:02:52',24),(151,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.changeStatus()','PUT',1,'admin','测试部门','/system/user/changeStatus','127.0.0.1','内网IP','{\"admin\":false,\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":102} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-18 14:02:55',16),(152,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.add()','POST',1,'ry_admin','研发部门','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"ry_admin\",\"default\":false,\"dictLabel\":\"完全图\",\"dictSort\":2,\"dictType\":\"case_type\",\"dictValue\":\"wanquantu\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-18 16:13:19',19),(153,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.add()','POST',1,'ry_admin','研发部门','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"ry_admin\",\"default\":false,\"dictLabel\":\"树\",\"dictSort\":3,\"dictType\":\"case_type\",\"dictValue\":\"shu\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"} ','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-18 16:13:35',19),(154,'我的图库',2,'com.ruoyi.graph.controller.BizUserGraphController.edit()','PUT',1,'admin','测试部门','/graph/graph','127.0.0.1','内网IP','{\"createBy\":\"\",\"createTime\":\"2026-03-10 19:02:01\",\"edgeCount\":6,\"graphData\":\"{\\\"nodes\\\":[{\\\"id\\\":\\\"node1\\\",\\\"label\\\":\\\"V1\\\",\\\"x\\\":200,\\\"y\\\":200,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"highlight\\\":{\\\"fill\\\":\\\"rgb(223, 234, 255)\\\",\\\"stroke\\\":\\\"#4572d9\\\",\\\"lineWidth\\\":2,\\\"text-shape\\\":{\\\"fontWeight\\\":500}},\\\"inactive\\\":{\\\"fill\\\":\\\"rgb(247, 250, 255)\\\",\\\"stroke\\\":\\\"rgb(191, 213, 255)\\\",\\\"lineWidth\\\":1},\\\"disable\\\":{\\\"fill\\\":\\\"rgb(250, 250, 250)\\\",\\\"stroke\\\":\\\"rgb(224, 224, 224)\\\",\\\"lineWidth\\\":1},\\\"fill\\\":\\\"#C6E5FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":2,\\\"cursor\\\":\\\"pointer\\\"},\\\"labelCfg\\\":{\\\"style\\\":{\\\"fill\\\":\\\"#333\\\",\\\"fontSize\\\":14,\\\"fontWeight\\\":\\\"bold\\\"}}},{\\\"id\\\":\\\"node2\\\",\\\"label\\\":\\\"V2\\\",\\\"x\\\":400,\\\"y\\\":200,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"highlight\\\":{\\\"fill\\\":\\\"rgb(223, 234, 255)\\\",\\\"stroke\\\":\\\"#4572d9\\\",\\\"lineWidth\\\":2,\\\"text-shape\\\":{\\\"fontWeight\\\":500}},\\\"inactive\\\":{\\\"fill\\\":\\\"rgb(247, 250, 255)\\\",\\\"stroke\\\":\\\"rgb(191, 213, 255)\\\",\\\"lineWidth\\\":1},\\\"disable\\\":{\\\"fill\\\":\\\"rgb(250, 250, 250)\\\",\\\"stroke\\\":\\\"rgb(224, 224, 224)\\\",\\\"lineWidth\\\":1},\\\"fill\\\":\\\"#C6E5FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":2,\\\"cursor\\\":\\\"pointer\\\"},\\\"labelCfg\\\":{\\\"style\\\":{\\\"fill\\\":\\\"#333\\\",\\\"fontSize\\\":14,\\\"fontWeight\\\":\\\"bold\\\"}}},{\\\"id\\\":\\\"node3\\\",\\\"label\\\":\\\"V3\\\",\\\"x\\\":261.12497522185157,\\\"y\\\":320.59629681345615,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"highlight\\\":{\\\"fill\\\":\\\"rgb(223, 234, 255)\\\",\\\"stroke\\\":\\\"#4572d9\\\",\\\"lineWidth\\\":2,\\\"text-shape\\\":{\\\"fontWeight\\\":500}},\\\"inactive\\\":{\\\"fill\\\":\\\"rgb(247, 250, 255)\\\",\\\"','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-18 16:16:01',41),(155,'我的图库',1,'com.ruoyi.graph.controller.BizUserGraphController.add()','POST',1,'admin','测试部门','/graph/graph','127.0.0.1','内网IP','{\"createTime\":\"2026-03-19 00:37:58\",\"edgeCount\":2,\"graphData\":\"{\\\"nodes\\\":[{\\\"id\\\":\\\"node_1773851823784\\\",\\\"label\\\":\\\"root\\\",\\\"x\\\":470.79714838334627,\\\"y\\\":122.92933629974846,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"highlight\\\":{\\\"fill\\\":\\\"rgb(223, 234, 255)\\\",\\\"stroke\\\":\\\"#4572d9\\\",\\\"lineWidth\\\":2,\\\"text-shape\\\":{\\\"fontWeight\\\":500}},\\\"inactive\\\":{\\\"fill\\\":\\\"rgb(247, 250, 255)\\\",\\\"stroke\\\":\\\"rgb(191, 213, 255)\\\",\\\"lineWidth\\\":1},\\\"disable\\\":{\\\"fill\\\":\\\"rgb(250, 250, 250)\\\",\\\"stroke\\\":\\\"rgb(224, 224, 224)\\\",\\\"lineWidth\\\":1},\\\"fill\\\":\\\"#C6E5FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":2,\\\"cursor\\\":\\\"pointer\\\"},\\\"labelCfg\\\":{\\\"style\\\":{\\\"fill\\\":\\\"#333\\\",\\\"fontSize\\\":14,\\\"fontWeight\\\":\\\"bold\\\"}}},{\\\"id\\\":\\\"node_1773851826565\\\",\\\"label\\\":\\\"V1\\\",\\\"x\\\":332.7532816556261,\\\"y\\\":283.28355831891537,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"highlight\\\":{\\\"fill\\\":\\\"rgb(223, 234, 255)\\\",\\\"stroke\\\":\\\"#4572d9\\\",\\\"lineWidth\\\":2,\\\"text-shape\\\":{\\\"fontWeight\\\":500}},\\\"inactive\\\":{\\\"fill\\\":\\\"rgb(247, 250, 255)\\\",\\\"stroke\\\":\\\"rgb(191, 213, 255)\\\",\\\"lineWidth\\\":1},\\\"disable\\\":{\\\"fill\\\":\\\"rgb(250, 250, 250)\\\",\\\"stroke\\\":\\\"rgb(224, 224, 224)\\\",\\\"lineWidth\\\":1},\\\"fill\\\":\\\"#C6E5FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":2,\\\"cursor\\\":\\\"pointer\\\"},\\\"labelCfg\\\":{\\\"style\\\":{\\\"fill\\\":\\\"#333\\\",\\\"fontSize\\\":14,\\\"fontWeight\\\":\\\"bold\\\"}}},{\\\"id\\\":\\\"node_1773851829440\\\",\\\"label\\\":\\\"node2\\\",\\\"x\\\":583.3359048257031,\\\"y\\\":227.93732083852734,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"highlight\\\":{\\\"fill\\\":\\\"rgb(223, 234, 255)\\\",\\\"stroke\\\":\\\"#4572d9\\\",\\\"lineWidth\\\"','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-18 16:37:58',17),(156,'教学案例库',1,'com.ruoyi.teaching.controller.BizTeachingCaseController.add()','POST',1,'admin','测试部门','/teaching/teaching','127.0.0.1','内网IP','{\"caseId\":101,\"caseName\":\"teaching1\",\"caseType\":\"shu\",\"createTime\":\"2026-03-19 00:38:33\",\"edgeCount\":2,\"graphData\":\"{\\\"nodes\\\":[{\\\"id\\\":\\\"node_1773851823784\\\",\\\"label\\\":\\\"root\\\",\\\"x\\\":470.79714838334627,\\\"y\\\":122.92933629974846,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"highlight\\\":{\\\"fill\\\":\\\"rgb(223, 234, 255)\\\",\\\"stroke\\\":\\\"#4572d9\\\",\\\"lineWidth\\\":2,\\\"text-shape\\\":{\\\"fontWeight\\\":500}},\\\"inactive\\\":{\\\"fill\\\":\\\"rgb(247, 250, 255)\\\",\\\"stroke\\\":\\\"rgb(191, 213, 255)\\\",\\\"lineWidth\\\":1},\\\"disable\\\":{\\\"fill\\\":\\\"rgb(250, 250, 250)\\\",\\\"stroke\\\":\\\"rgb(224, 224, 224)\\\",\\\"lineWidth\\\":1},\\\"fill\\\":\\\"#C6E5FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":2,\\\"cursor\\\":\\\"pointer\\\"},\\\"labelCfg\\\":{\\\"style\\\":{\\\"fill\\\":\\\"#333\\\",\\\"fontSize\\\":14,\\\"fontWeight\\\":\\\"bold\\\"}}},{\\\"id\\\":\\\"node_1773851826565\\\",\\\"label\\\":\\\"V1\\\",\\\"x\\\":332.7532816556261,\\\"y\\\":283.28355831891537,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"highlight\\\":{\\\"fill\\\":\\\"rgb(223, 234, 255)\\\",\\\"stroke\\\":\\\"#4572d9\\\",\\\"lineWidth\\\":2,\\\"text-shape\\\":{\\\"fontWeight\\\":500}},\\\"inactive\\\":{\\\"fill\\\":\\\"rgb(247, 250, 255)\\\",\\\"stroke\\\":\\\"rgb(191, 213, 255)\\\",\\\"lineWidth\\\":1},\\\"disable\\\":{\\\"fill\\\":\\\"rgb(250, 250, 250)\\\",\\\"stroke\\\":\\\"rgb(224, 224, 224)\\\",\\\"lineWidth\\\":1},\\\"fill\\\":\\\"#C6E5FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":2,\\\"cursor\\\":\\\"pointer\\\"},\\\"labelCfg\\\":{\\\"style\\\":{\\\"fill\\\":\\\"#333\\\",\\\"fontSize\\\":14,\\\"fontWeight\\\":\\\"bold\\\"}}},{\\\"id\\\":\\\"node_1773851829440\\\",\\\"label\\\":\\\"node2\\\",\\\"x\\\":583.3359048257031,\\\"y\\\":227.93732083852734,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"highlight\\\":{\\\"fill\\\":\\\"rgb(','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-18 16:38:33',17),(157,'我的图库',1,'com.ruoyi.graph.controller.BizUserGraphController.add()','POST',1,'test2',NULL,'/graph/graph','127.0.0.1','内网IP','{\"createTime\":\"2026-03-19 00:40:54\",\"edgeCount\":1,\"graphData\":\"{\\\"nodes\\\":[{\\\"id\\\":\\\"node1\\\",\\\"label\\\":\\\"V1\\\",\\\"x\\\":200,\\\"y\\\":200,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"highlight\\\":{\\\"fill\\\":\\\"rgb(223, 234, 255)\\\",\\\"stroke\\\":\\\"#4572d9\\\",\\\"lineWidth\\\":2,\\\"text-shape\\\":{\\\"fontWeight\\\":500}},\\\"inactive\\\":{\\\"fill\\\":\\\"rgb(247, 250, 255)\\\",\\\"stroke\\\":\\\"rgb(191, 213, 255)\\\",\\\"lineWidth\\\":1},\\\"disable\\\":{\\\"fill\\\":\\\"rgb(250, 250, 250)\\\",\\\"stroke\\\":\\\"rgb(224, 224, 224)\\\",\\\"lineWidth\\\":1},\\\"fill\\\":\\\"#C6E5FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":2,\\\"cursor\\\":\\\"pointer\\\"},\\\"labelCfg\\\":{\\\"style\\\":{\\\"fill\\\":\\\"#333\\\",\\\"fontSize\\\":14,\\\"fontWeight\\\":\\\"bold\\\"}}},{\\\"id\\\":\\\"node2\\\",\\\"label\\\":\\\"V2\\\",\\\"x\\\":400,\\\"y\\\":200,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"highlight\\\":{\\\"fill\\\":\\\"rgb(223, 234, 255)\\\",\\\"stroke\\\":\\\"#4572d9\\\",\\\"lineWidth\\\":2,\\\"text-shape\\\":{\\\"fontWeight\\\":500}},\\\"inactive\\\":{\\\"fill\\\":\\\"rgb(247, 250, 255)\\\",\\\"stroke\\\":\\\"rgb(191, 213, 255)\\\",\\\"lineWidth\\\":1},\\\"disable\\\":{\\\"fill\\\":\\\"rgb(250, 250, 250)\\\",\\\"stroke\\\":\\\"rgb(224, 224, 224)\\\",\\\"lineWidth\\\":1},\\\"fill\\\":\\\"#C6E5FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":2,\\\"cursor\\\":\\\"pointer\\\"},\\\"labelCfg\\\":{\\\"style\\\":{\\\"fill\\\":\\\"#333\\\",\\\"fontSize\\\":14,\\\"fontWeight\\\":\\\"bold\\\"}}},{\\\"id\\\":\\\"node_1773852039401\\\",\\\"label\\\":\\\"V3\\\",\\\"x\\\":542.008936864847,\\\"y\\\":205.29542699746932,\\\"type\\\":\\\"circle\\\",\\\"size\\\":40,\\\"style\\\":{\\\"selected\\\":{\\\"fill\\\":\\\"#9EC9FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":3},\\\"active\\\":{\\\"fill\\\":\\\"#FFC069\\\",\\\"stroke\\\":\\\"#FA8C16\\\",\\\"lineWidth\\\":3},\\\"fill\\\":\\\"#C6E5FF\\\",\\\"stroke\\\":\\\"#5B8FF9\\\",\\\"lineWidth\\\":2,\\\"cursor\\\":\\\"pointer\\\"},\\\"labelCfg\\\":{\\\"style\\\":{\\\"fill\\\":\\\"#333\\\",\\\"fontSize\\\":14,\\\"fontWeight\\\":\\\"bold\\\"}}}],\\\"e','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-03-18 16:40:54',11);
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_post`
--

DROP TABLE IF EXISTS `sys_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_post` (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='岗位信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_post`
--

LOCK TABLES `sys_post` WRITE;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` VALUES (1,'ceo','董事长',1,'0','admin','2026-03-09 23:32:43','',NULL,''),(2,'se','项目经理',2,'0','admin','2026-03-09 23:32:43','',NULL,''),(3,'hr','人力资源',3,'0','admin','2026-03-09 23:32:43','',NULL,''),(4,'user','普通员工',4,'0','admin','2026-03-09 23:32:43','',NULL,'');
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'超级管理员','admin',1,'1',1,1,'0','0','admin','2026-03-09 23:32:43','',NULL,'超级管理员'),(2,'普通角色','common',2,'2',1,1,'0','0','admin','2026-03-09 23:32:43','admin','2026-03-10 00:45:24','普通角色'),(100,'系统管理员','sys_admin',3,'1',1,1,'0','0','admin','2026-03-10 18:52:59','',NULL,NULL);
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_dept`
--

DROP TABLE IF EXISTS `sys_role_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和部门关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_dept`
--

LOCK TABLES `sys_role_dept` WRITE;
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;
INSERT INTO `sys_role_dept` VALUES (2,100),(2,101),(2,105);
/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (2,2000),(2,2001),(2,2002),(2,2003),(2,2004),(2,2005),(2,2018),(2,2019),(100,100),(100,1000),(100,1001),(100,1002),(100,1003),(100,1004),(100,1005),(100,1006),(100,2000),(100,2001),(100,2002),(100,2003),(100,2004),(100,2005),(100,2012),(100,2013),(100,2014),(100,2015),(100,2016),(100,2017),(100,2018),(100,2019),(100,2020),(100,2021),(100,2022),(100,2023);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '账号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,103,'ry_admin','若依','00','ry@163.com','15888888888','1','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','127.0.0.1','2026-03-19 00:12:47','2026-03-09 23:32:43','admin','2026-03-09 23:32:43','',NULL,'管理员'),(2,105,'admin','系统管理员','00','ry@qq.com','15666666666','1','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','127.0.0.1','2026-03-19 00:36:59','2026-03-09 23:32:43','admin','2026-03-09 23:32:43','admin','2026-03-18 09:46:16','系统管理员'),(100,NULL,'zhangsan','zhangsan','00','','','0','','$2a$10$2vHQUSzUELRdHffOzzF3KuL6YlHzbfujZ0b0vsUOVRqoDFlxuOaH2','0','0','127.0.0.1','2026-03-19 00:35:45','2026-03-10 19:17:04','','2026-03-10 19:17:03','',NULL,NULL),(101,NULL,'lisi','lisi','00','','','0','','$2a$10$aPDCRRBsG1yK6KHld7xnueZCluSwRGOtQvqaJVIJOCTMnPDL0anCW','0','0','127.0.0.1','2026-03-10 19:29:25','2026-03-10 19:29:11','','2026-03-10 19:29:11','',NULL,NULL),(102,NULL,'test','test','00','','','0','','$2a$10$7aicNcziJJoTt3qEoXgBSudM/jB4Cx9cpG20A3LKKmRkrXHNm2HxW','0','0','127.0.0.1','2026-03-18 22:02:27','2026-03-18 22:01:23','','2026-03-18 14:01:23','','2026-03-18 14:02:55',NULL),(103,NULL,'wangwu','wangwu','00','','','0','','$2a$10$3WSfEbJGtC3DcksC.cAY8OcQFaFd14BmvLOmcUDYOxt7Qhx9g613O','0','0','127.0.0.1','2026-03-19 00:17:06','2026-03-19 00:16:47','','2026-03-18 16:16:47','',NULL,NULL),(104,NULL,'zhaoliu','zhaoliu','00','','','0','','$2a$10$iVWWflL3r5kMRvDuwYFQ4ubEsKTqChv0I0TXjBEgGt9jYE9DbkyZy','0','0','127.0.0.1','2026-03-19 00:24:16','2026-03-19 00:24:04','','2026-03-18 16:24:04','',NULL,NULL),(105,NULL,'test2','test2','00','','','0','','$2a$10$5MBsAU.plZ7.LrLTrBIjHubv5Whpgc7q3cMF/snf3QaFz/ir21LW.','0','0','127.0.0.1','2026-03-19 00:40:21','2026-03-19 00:40:11','','2026-03-18 16:40:11','',NULL,NULL);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_post`
--

DROP TABLE IF EXISTS `sys_user_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_post` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户与岗位关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_post`
--

LOCK TABLES `sys_user_post` WRITE;
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;
INSERT INTO `sys_user_post` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_role` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户和角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1),(2,100),(100,2),(101,2),(102,2),(103,2),(104,2),(105,2);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-18 16:50:54
