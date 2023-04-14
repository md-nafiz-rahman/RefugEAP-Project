
/*
 Navicat Premium Data Transfer

 Source Server         : MySQL_Docker
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : refuge_db

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 15/02/2023 20:29:14
*/
create database refuge_db;
use refuge_db;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
                          `id` int NOT NULL AUTO_INCREMENT,
                          `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                          PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'ROLE_ADMIN');
INSERT INTO `roles` VALUES (2, 'ROLE_EDITOR');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
                          `id` int NOT NULL AUTO_INCREMENT,
                          `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                          `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                          `enabled` bit(1) NULL DEFAULT NULL,
                          PRIMARY KEY (`id`, `username`) USING BTREE,
                          UNIQUE INDEX `IDX_UNQ_NAME`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin1', '$2a$10$16BIU4BjJ5hJ97lOHrdf3e2EAa6VVA9Z6TUiCfjIYdvGYK85sXcM.', b'1');
INSERT INTO `users` VALUES (2, 'editor1', '$2a$10$07hYXEtxes7P3HapjKsL9eSdN7xIRD3amg7Js2/xscyBnOKKOmgLm', b'1');

-- ----------------------------
-- Table structure for users_roles
-- ----------------------------
DROP TABLE IF EXISTS `users_roles`;
CREATE TABLE `users_roles`  (
                                `user_id` int NOT NULL,
                                `role_id` int NOT NULL,
                                PRIMARY KEY (`user_id`, `role_id`) USING BTREE,
                                INDEX `FK_Roles`(`role_id`) USING BTREE,
                                CONSTRAINT `FK_Roles` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
                                CONSTRAINT `FK_Users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;


-- ----------------------------
-- Table structure for blogs
-- ----------------------------
DROP TABLE IF EXISTS `blogs`;
CREATE TABLE `blogs` (
                         `blog_id` int NOT NULL AUTO_INCREMENT,
                         `title` varchar(1000) NOT NULL,
                         `content` TEXT(10000) NOT NULL,
                         `status` VARCHAR(10) NOT NULL DEFAULT 'pending',
                         `email` varchar(1000) NOT NULL,
                         `name` varchar(1000) NOT NULL,
                         `date` Date NOT NULL,
                         `affiliation` varchar(1000) NOT NULL,
                         `role` varchar(1000) NOT NULL,
                         `type_of_contribution` varchar(100) NOT NULL,
                         `file_data` LONGBLOB,
                         `file_name` VARCHAR(1000) NULL,
                         PRIMARY KEY (`blog_id`) USING BTREE
);


DROP TABLE IF EXISTS `events`;
CREATE TABLE events (
                        event_id INT PRIMARY KEY AUTO_INCREMENT,
                        name VARCHAR(255),
                        email VARCHAR(255),
                        event_title VARCHAR(255),
                        event_more_info TEXT,
                        event_datetime DATETIME,
                        status VARCHAR(20) DEFAULT 'Pending'
);

-- ----------------------------
-- Table  for view counter
-- ----------------------------
DROP TABLE IF EXISTS `view_count`;
CREATE TABLE `view_count` (
                              `view_id` int NOT NULL AUTO_INCREMENT,
                              `views` int NOT NULL,
                              PRIMARY KEY (`view_id`) USING BTREE
);
-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
                            `contact_id` int NOT NULL AUTO_INCREMENT,
                            `name` varchar(100) NOT NULL,
                            `status` VARCHAR(10) NOT NULL DEFAULT 'pending',
                            `email` varchar(100) NOT NULL,
                            `message` TEXT(10000) NOT NULL,
                            PRIMARY KEY (`contact_id`) USING BTREE
);

-- ----------------------------
-- Records of users_roles
-- ----------------------------
INSERT INTO `users_roles` VALUES (1, 1);
INSERT INTO `users_roles` VALUES (2, 2);

INSERT INTO `view_count` VALUES (1, 1);

SET FOREIGN_KEY_CHECKS = 1;

SELECT * FROM users;


SELECT * FROM blogs;