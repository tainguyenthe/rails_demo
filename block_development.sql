/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : block_development

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2016-01-22 22:01:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=980190963 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('298486374', null, null, '2016-01-09 17:36:02', '2016-01-09 17:36:02', null);
INSERT INTO `articles` VALUES ('980190962', null, null, '2016-01-09 17:36:02', '2016-01-09 17:36:02', null);

-- ----------------------------
-- Table structure for chefs
-- ----------------------------
DROP TABLE IF EXISTS `chefs`;
CREATE TABLE `chefs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chefname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of chefs
-- ----------------------------
INSERT INTO `chefs` VALUES ('1', 'tainguyenpix', 'tainguyen.pix@gmail.com', '2016-01-10 01:48:31', '2016-01-10 01:48:34');
INSERT INTO `chefs` VALUES ('2', 'teo', 'tainguyenthe91@gmail.com', '2016-01-10 01:48:31', '2016-01-10 01:48:34');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `article_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=980190963 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('298486374', null, null, null, '2016-01-09 17:36:02', '2016-01-09 17:36:02');
INSERT INTO `comments` VALUES ('980190962', null, null, null, '2016-01-09 17:36:02', '2016-01-09 17:36:02');

-- ----------------------------
-- Table structure for recipes
-- ----------------------------
DROP TABLE IF EXISTS `recipes`;
CREATE TABLE `recipes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `chef_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of recipes
-- ----------------------------
INSERT INTO `recipes` VALUES ('1', 'vegetable saute', 'sub it detail', 'sub is description', '2016-01-10 01:49:50', '2016-01-10 01:49:55', '1');
INSERT INTO `recipes` VALUES ('2', 'potato salad', 'tomato it detail', 'tomato is description', '2016-01-10 01:49:50', '2016-01-10 01:49:55', '2');

-- ----------------------------
-- Table structure for schema_migrations
-- ----------------------------
DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of schema_migrations
-- ----------------------------
INSERT INTO `schema_migrations` VALUES ('20160106175937');
INSERT INTO `schema_migrations` VALUES ('20160106180030');
INSERT INTO `schema_migrations` VALUES ('20160106180116');
INSERT INTO `schema_migrations` VALUES ('20160107173526');
INSERT INTO `schema_migrations` VALUES ('20160107175026');
INSERT INTO `schema_migrations` VALUES ('20160107182505');
INSERT INTO `schema_migrations` VALUES ('20160107183055');
INSERT INTO `schema_migrations` VALUES ('20160109160143');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'tai.nt', 'tainthe@hotmail.com', '2016-01-08 00:53:17', '2016-01-08 00:53:19');
INSERT INTO `users` VALUES ('2', 'tai1.nt', 'tainguyen.pix@gmail.com', '2016-01-08 00:53:17', '2016-01-08 00:53:19');
INSERT INTO `users` VALUES ('3', 'tai2.nt', 'tainguyenthe91@gmail.com', '2016-01-08 00:53:17', '2016-01-08 00:53:19');
