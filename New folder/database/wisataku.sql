/*
 Navicat Premium Data Transfer

 Source Server         : SERVER LOCALHOST
 Source Server Type    : MySQL
 Source Server Version : 100432
 Source Host           : localhost:3306
 Source Schema         : wisataku

 Target Server Type    : MySQL
 Target Server Version : 100432
 File Encoding         : 65001

 Date: 30/12/2025 09:22:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_alternatif
-- ----------------------------
DROP TABLE IF EXISTS `tbl_alternatif`;
CREATE TABLE `tbl_alternatif`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_wisata` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_wisata` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kategori_wisata` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deskripsi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `rating` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_alternatif
-- ----------------------------
INSERT INTO `tbl_alternatif` VALUES (1, 'A1', 'Pantai Parangtritis', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1761393944_491182b05920739c7839.jpg', '5');
INSERT INTO `tbl_alternatif` VALUES (2, 'A2', 'Pantai samas', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765631343_9b4f108971674723f8f3.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (3, 'A3', 'Pantai Goa Cemara', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765631366_7e0631fcd303c1484e42.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (4, 'A4', 'Pantai Kwaru', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765631441_a48d71b0fe051b6c353d.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (5, 'A5', 'Pantai Pandansimo', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1760963535_ae13e1f6681446d4a7d6.jpg', '4');
INSERT INTO `tbl_alternatif` VALUES (6, 'A6', 'Goa Selarong', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765631474_be13640e4ea9a0fbd284.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (7, 'A7', 'Goa Cerme', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765631516_a9a56097bb4b44006de8.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (8, 'A8', 'Pasar Seni Gabusan', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765631557_3c13abd890349599b944.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (9, 'A9', 'Kebun Buah Mangunan', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765631611_fcbfe0dad4263a62c837.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (10, 'A10', 'Gunung Pengger', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765631640_a8579c2ee089185a8047.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (11, 'A11', 'Puncak Becici', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765631699_72d968816b0c5cc8ebb9.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (12, 'A12', 'Lintang 1000', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765631907_5acc3f6303ec03a5b6b7.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (13, 'A13', 'Pinus Asri', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765631854_5ebb05760d3441383c2b.png', '');
INSERT INTO `tbl_alternatif` VALUES (14, 'A14', 'Pinus Sari', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765631815_d177a0f62a0cc69f8032.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (15, 'A15', '1000 Batu', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765631749_41a725965e18f45d8640.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (16, 'A16', 'Bukit Panguk', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765632115_f77c4de8d076b20687b0.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (17, 'A17', 'Bojong Sari', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765632073_741465e06568579ff0a5.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (18, 'A18', 'Watu Goyang', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765632038_58092d68f3d900b6581f.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (19, 'A19', 'Potrobayan', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765631998_024fb78ad6d105e362c7.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (20, 'A20', 'LBH Dahromo', 'Obyek Wisata', 'Lorem Ipsum', '1765631963_cbdc75eaf096237b2416.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (21, 'A21', 'La Li Sa Farmer Village', 'Obyek Wisata', 'La Li Sa Farmer’s Village Jogja merupakan destinasi wisata terbaru yang menghadirkan suasana layaknya di Belanda. Hal itu nampak pada salah satu bangunan yang cukup ikonik berupa kincir angin. Selain menyediakan spot spot untuk berfoto, wisata ini juga dilengkapi dengan resto dan coffee shop bagi kalian yang mau nongkrong dan menikmati ragam menu kuliner', '1765632159_e4b43cc2916588780791.jpg', '4');
INSERT INTO `tbl_alternatif` VALUES (22, 'A22', 'Balong Park', 'Obyek Wisata', 'Balong Waterpark adalah taman air keluarga yang berlokasi di Jl. Pleret No. KM 1,5, Banjardadap, Potorono, Kec. Banguntapan, Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat wisata ini terkenal dengan harga tiket masuknya yang terjangkau dan fasilitas yang ramah keluarga', '1765632239_1cee2761cae5614a9f17.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (23, 'A23', 'Galaxi Water Park', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765632284_83c10055d78c2566a363.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (24, 'A24', 'Grand Puri Water Park', 'Obyek Wisata', 'Grand Puri Water Park adalah tempat wisata air yang berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta, bukan di Kabupaten Sleman.', '1765632342_0103c1ecc9df4ea2fb14.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (25, 'A25', 'Taman Rekreasi Tirto Tamansari', 'Obyek Wisata', 'Taman Rekreasi Tirto Tamansari (juga dikenal sebagai Kolam Renang Tirta Tamansari atau Water Byur Bantul) adalah fasilitas kolam renang umum yang berlokasi di Kabupaten Bantul, bukan di Kabupaten Sleman.', '1765632396_fb3f817c7d331aa9d837.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (26, 'A26', 'Kids Fun Parks', 'Obyek Wisata', 'Kids Fun Park adalah taman rekreasi keluarga terpusat yang berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta, menawarkan lebih dari 25 wahana darat dan air yang cocok untuk anak-anak, remaja, dan dewasa.', '1765632444_279f4be94bafdccb1b0e.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (27, 'A27', 'Selopamioro Adventure park', 'Obyek Wisata', 'Selopamioro Adventure Park adalah objek wisata alam yang berfokus pada aktivitas petualangan di sepanjang aliran Sungai Oyo, berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta', '1765632489_e6c08a5d37c68f1fc595.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (28, 'A28', 'Kebun Pisang Mbah Lasio', 'Obyek Wisata', 'Kebun Pisang Mbah Lasio adalah lokasi budidaya dan penangkaran bibit pisang yang terkenal di Kabupaten Bantul, Daerah Istimewa Yogyakarta, yang dikelola oleh Bapak Lasiyo Syaifudin, seorang petani yang dijuluki \"Profesor Pisang\" karena keahliannya. Tempat ini lebih berfungsi sebagai pusat edukasi dan penyedia bibit unggul, daripada taman rekreasi umum.', '1765632555_cafff57db9aca2d4e2cd.jpeg', '');
INSERT INTO `tbl_alternatif` VALUES (29, 'A29', 'Puncak Sosok', 'Obyek Wisata', 'Puncak Sosok adalah destinasi wisata alam perbukitan populer yang terletak di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini dikenal sebagai lokasi terbaik untuk menikmati pemandangan matahari terbenam (sunset) dan panorama lampu kota Jogja di malam hari (city light) dari ketinggian. ', '1765632597_be64851237d9f1fdd5ef.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (30, 'A30', 'Kawasan Cagar Budaya Jagalan ', 'Obyek Wisata', 'Kawasan Cagar Budaya Jagalan adalah sebuah kampung bersejarah yang merupakan bagian dari Kawasan Cagar Budaya Kotagede, yang dulunya merupakan ibu kota Kerajaan Mataram Islam pertama di era Panembahan Senapati', '1765632656_17f6f79256051f6bb9da.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (31, 'A31', 'Komplek Masjid Kotagede, Sendang Seliran & Makam Raja-Raja Mataram di Kotagede', 'Obyek Wisata', 'Kompleks Masjid Kotagede, Sendang Seliran & Makam Raja-Raja Mataram adalah satu kesatuan situs sejarah dan religi yang terletak di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan peninggalan dari Kerajaan Mataram Islam pertama yang didirikan oleh Panembahan Senapati.', '1765632708_745d5f306da5f289c0c5.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (32, 'A32', 'Makam Raja-Raja Mataram Di Imogiri', 'Obyek Wisata', 'Makam Raja-Raja Mataram di Imogiri adalah kompleks pemakaman terbesar dan paling sakral bagi keturunan dinasti Mataram Islam, termasuk raja-raja dari Kesultanan Yogyakarta dan Kasunanan Surakarta. Terletak di atas Bukit Merak di Kapanewon (Kecamatan) Imogiri, Kabupaten Bantul, Daerah Istimewa Yogyakarta.', '1765632762_421c2f37937d92914e7c.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (33, 'A33', 'Makam Sunan Cirebon', 'Obyek Wisata', 'Makam Sunan Cirebon atau Syarif Hidayatullah (Sunan Gunung Jati) berlokasi di Cirebon, Jawa Barat, bukan di wilayah Bantul atau Yogyakarta. Beliau adalah salah satu dari sembilan Wali Songo (sembilan wali) yang menyebarkan agama Islam di Pulau Jawa.', '1765632805_66cf2e73c545dd177bd5.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (34, 'A34', 'Lembah Sorory', 'Obyek Wisata', 'Lembah Sorory adalah destinasi wisata keluarga berbasis alam yang berlokasi di pinggir Sungai Opak, Kabupaten Bantul, Daerah Istimewa Yogyakarta. Nama \"Sorory\" sendiri merupakan singkatan dari Ngisor Ory (bawah bambu), karena kawasan ini dikelilingi oleh pemandangan asri pohon bambu alami.', '1765632846_b2b1f07699b373b2e4a7.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (35, 'A35', 'Padepokan Sumber Karahayon', 'Museum', 'Padepokan Sumber Karahayon kini lebih dikenal sebagai Museum Padepokan Sumber Karahayon atau Museum Sumber Karahayon. Lokasinya berada di Kabupaten Bantul, Daerah Istimewa Yogyakarta, dan berfungsi sebagai museum sejarah yang terbuka untuk umum.', '1765632906_a822bd4b0cee70a3bda5.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (36, 'A36', 'Museum Muhammadiyah', 'Museum', 'Museum Muhammadiyah adalah museum sejarah modern yang berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Museum ini didedikasikan untuk mendokumentasikan dan menampilkan perjalanan sejarah organisasi Muhammadiyah sejak didirikan oleh KH Ahmad Dahlan. ', '1765633093_e8b19e1a9b549442b244.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (37, 'A37', 'Museum Soeharto', 'Museum', 'Museum HM Soeharto (Memorial Jenderal Besar HM Soeharto) adalah museum sejarah yang berlokasi di tempat kelahiran Presiden kedua Republik Indonesia, Soeharto, di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Museum ini didirikan untuk mengenang jasa dan perjuangan beliau sejak masa kecil hingga menjadi pemimpin bangsa', '1765633134_c187f17cad317ed6adea.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (38, 'A38', 'Museum Wayang Kekayon', 'Museum', 'Museum Wayang Kekayon adalah museum khusus wayang yang berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Museum ini didirikan dengan tujuan melestarikan budaya wayang sebagai warisan budaya nasional yang diakui oleh UNESCO. ', '1765633175_f2fd0eda8c4df8da01d9.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (39, 'A39', 'Museum Wayang Beber Sekartaji', 'Museum', 'Museum Wayang Beber Sekartaji adalah museum unik yang didirikan khusus untuk melestarikan dan menampilkan Wayang Beber, salah satu bentuk seni pewayangan tertua di Indonesia, yang berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. ', '1765633233_7dbf6d603109f69cb79f.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (40, 'A40', 'Museum Laboratorium Sejarah UPY', 'Museum', 'Museum Laboratorium Sejarah UPY (Universitas PGRI Yogyakarta) atau yang kini sering disebut Museorium Sejarah UPY, adalah museum sejarah yang berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Museum ini berfungsi sebagai laboratorium pembelajaran sejarah bagi mahasiswa dan masyarakat umum', '1765633291_9c35c9d535aa5e5d85f0.jpeg', '');
INSERT INTO `tbl_alternatif` VALUES (41, 'A41', 'Museum Purbakala Pleret', 'Museum', 'Museum Purbakala Pleret (Museum Sejarah Purbakala Pleret) adalah museum yang didirikan di kawasan bekas pusat pemerintahan Kerajaan Mataram Islam pada masa Sultan Agung dan Amangkurat I, berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta.', '1765633355_93aeaf972a7a46304d44.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (42, 'A42', 'Museum Tani Jawa ', 'Museum', 'Museum Tani Jawa Indonesia adalah museum khusus yang didirikan untuk melestarikan dan mendokumentasikan alat-alat serta budaya pertanian tradisional Jawa, berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Museum ini merupakan bagian dari inisiatif desa wisata setempat, Desa Candran. ', '1765633413_421fdbc916a4c779b748.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (43, 'A43', 'Museum History Of Java', 'Museum', 'Museum History Of Java berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Museum ini merupakan museum modern berbasis IT pertama di Indonesia yang menyajikan sejarah Pulau Jawa secara interaktif', '1765633469_b4014dab9ed08f8033bb.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (44, 'A44', 'Museum Taman Tino Sidin', 'Museum', 'Museum Taman Tino Sidin berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Museum ini didirikan untuk mengenang jasa dan karya maestro seni rupa dan tokoh pendidikan anak-anak Indonesia, Tino Sidin, yang dikenal melalui acaranya \"Gemar Menggambar\" di TVRI.', '1765633534_b3b2bbc0a4fae42629bf.jpeg', '');
INSERT INTO `tbl_alternatif` VALUES (45, 'A45', 'Museum Rumah Belanda (Musium Bantul Masa Belanda )', 'Museum', 'Museum Bantul Masa Belanda adalah nama resmi dari museum yang Anda maksud, berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Museum ini didirikan untuk mendokumentasikan peninggalan masa kolonial Belanda di wilayah Bantul, terutama yang berkaitan dengan sejarah Pabrik Gula Gondhanglipura. ', '1765633598_9e66c858e49b8c9b7f06.jpeg', '');
INSERT INTO `tbl_alternatif` VALUES (46, 'A46', 'Museum Rumah Garuda', 'Museum', 'Museum Rumah Garuda adalah museum unik yang didirikan secara swadaya oleh Nanang R Hidayat, seorang dosen ISI Yogyakarta, di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Museum ini didedikasikan khusus untuk mendokumentasikan, mengkaji, dan melestarikan sejarah lambang negara Republik Indonesia, yaitu Garuda Pancasila\r\n', '1765633646_d092a93ff91ab055f172.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (47, 'A47', 'Museum Gumuk Pasir (Geomaritime Sains Park)', 'Museum', 'Museum Gumuk Pasir (Geomaritime Science Park) berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Museum ini unik karena merupakan satu-satunya museum di Asia Tenggara yang secara khusus mengkaji fenomena gumuk pasir (bukit pasir) yang terbentuk di wilayah pantai Parangtritis hingga Depok', '1765633701_b6a6bbea12a1200c4069.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (48, 'A48', 'Museum Coklat Monggo', 'Museum', 'Museum Coklat Monggo (Chocolate Monggo Museum & Factory) adalah destinasi wisata edukasi dan kuliner yang berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan pabrik coklat lokal ternama yang didirikan oleh Thierry Detournay dari Belgia. ', '1765633759_f2d13c60248f5f95e677.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (49, 'A49', 'Museum Tembi Rumah Budaya', 'Museum', 'Museum Tembi Rumah Budaya berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan sebuah kompleks budaya yang memadukan museum, penginapan, restoran, dan area pertunjukan, didirikan untuk melestarikan dan menampilkan budaya Jawa. ', '1765633807_96f5144e0ffda292570c.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (50, 'A50', 'Kaki Langit', 'Desa Wisata', 'desa wisata Kaki Langit berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata berbasis alam dan budaya yang terkenal dengan suasana pedesaan yang asri, udara sejuk, dan pemandangan perbukitan yang indah', '1765633862_325f97b8d238de99425f.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (51, 'A51', 'Goa Gajah Lemah Abang', 'Desa Wisata', 'Goa Gajah Lemah Abang adalah objek wisata alam berupa goa alam yang berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Lokasinya berada di kawasan perbukitan Mangunan yang terkenal dengan banyaknya destinasi wisata alam', '1765633916_82e963a72a55252ef3b7.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (52, 'A52', 'songgo langit', 'Desa Wisata', 'desa wisata Songgo Langit berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan area perbukitan yang menawarkan pemandangan alam yang indah, suasana sejuk, dan sering digunakan sebagai spot foto selfie dengan berbagai instalasi unik.', '1765633981_b1da45c9ef19f68792c4.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (53, 'A53', ' Tapak Tilas Sultan Agung (TTSA)', 'Desa Wisata', 'Desa Wisata Tapak Tilas Sultan Agung (TTSA) adalah sebuah kawasan wisata berbasis budaya dan sejarah yang terletak di Dusun Cempluk, Kabupaten Bantul, Daerah Istimewa Yogyakarta. Kawasan ini merupakan bagian dari jalur petilasan (tempat persinggahan) Sultan Agung Hanyokrokusumo, raja terbesar Kerajaan Mataram Islam. ', '1765634130_e9e4bff036c81349df17.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (54, 'A54', 'Wirokerten', 'Desa Wisata', 'Wirokerten adalah sebuah nama kelurahan (desa) dan juga dusun yang berada di wilayah administrasi Kabupaten Bantul, Daerah Istimewa Yogyakarta.', '1765634189_3a5e173fe5ad42dc3504.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (55, 'A55', 'Banyu Nibo Rejosari', 'Desa Wisata', 'desa wisata Banyu Nibo Rejosari berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan destinasi wisata alam pedesaan yang terkenal karena adanya sumber mata air alami dan aliran sungai kecil, menawarkan suasana yang sejuk dan menyegarkan.', '1765634239_5412000ec5ad7a633c07.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (56, 'A56', 'Karangasem', 'Desa Wisata', 'desa wisata Karangasem berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata yang menonjolkan potensi alam pedesaan, seni dan budaya lokal, serta industri kreatif, terutama yang berkaitan dengan kerajinan tangan.', '1765634348_50134d40be3449f7c63c.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (57, 'A57', 'Gunung Cilik', 'Desa Wisata', 'desa wisata Gunung Cilik berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan destinasi wisata alam perbukitan yang menawarkan pemandangan indah, suasana sejuk khas dataran tinggi, dan spot foto menarik, terutama saat matahari terbit atau terbenam. ', '1765634583_2f48b6dd0e80958155e9.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (58, 'A58', 'dahayu giri', 'Desa Wisata', 'Dahayu Giri adalah nama untuk Desa Wisata Girirejo, yang berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Desa wisata ini menawarkan perpaduan pengalaman wisata yang menggabungkan keindahan alam pedesaan, kearifan lokal, dan nuansa spiritual yang kental', '1765634661_b6a3353209aa0f533ee1.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (59, 'A59', 'Karang Tengah', 'Desa Wisata', 'desa wisata Karang Tengah berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata berbasis alam dan pertanian yang menawarkan suasana pedesaan yang tenang dan asri, serta berbagai kegiatan edukatif', '1765634707_8b4f55525343e9eb9932.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (60, 'A60', 'Kebon Agung', 'Desa Wisata', 'desa wisata Kebonagung berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata yang menonjolkan potensi alam pedesaan, pertanian, dan keberadaan situs sejarah lokal. ', '1765634753_c98730493027257baff1.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (61, 'A61', 'Candran', 'Desa Wisata', 'Desa wisata Candran berlokasi di Kabupaten Bantul, Daerah Ististimewa Yogyakarta, dan merupakan bagian integral dari Desa Kebonagung. Tempat ini adalah salah satu desa wisata perintis di Bantul yang fokus pada edukasi pertanian dan budaya Jawa. ', '1765634806_0a2e982419190ded6149.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (62, 'A62', 'Giriloyo Wukirsari', 'Desa Wisata', 'desa wisata Giriloyo Wukirsari berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata unggulan yang terkenal sebagai sentra industri kreatif kerajinan batik tulis dan pusat pelestarian budaya lokal. ', '1765634853_91859750dbb17744f169.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (63, 'A63', 'Bendo', 'Desa Wisata', 'desa wisata Bendo berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata yang menonjolkan potensi alam pedesaan, pertanian, dan keberadaan situs sejarah lokal.', '1765634907_b1b7327a16a9ed2d9969.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (64, 'A64', 'pucung rejo', 'Desa Wisata', 'desa wisata Pucung Rejo berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata yang menonjolkan potensi alam pedesaan, pertanian, dan keberadaan industri kreatif lokal, khususnya kerajinan anyaman bambu', '1765634960_310d5d7624790204a51e.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (65, 'A65', 'Imogiri', 'Desa Wisata', 'Desa Wisata Imogiri berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan kawasan yang kaya akan nilai sejarah, budaya, dan alam perbukitan, menjadikannya salah satu pusat wisata penting di Bantul, terutama dalam konteks warisan Kerajaan Mataram Islam.', '1765635053_57f4f03baad1ab4faf00.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (66, 'A66', 'Sri Kemenut', 'Desa Wisata', 'Desa wisata Sri Kemenut berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata yang menonjolkan potensi alam pedesaan, pertanian, dan keberadaan industri kreatif lokal, khususnya kerajinan tangan dari bahan daur ulang', '1765635834_51f28a4d88e712c27e11.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (67, 'A67', 'Krebet', 'Desa Wisata', 'Desa wisata Krebet berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata unggulan yang terkenal sebagai sentra industri kreatif kerajinan batik kayu, menjadikannya pusat oleh-oleh khas Bantul yang unik.', '1765635880_51e6340c5cdb55b7e8c3.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (68, 'A68', 'Mangir Ki AgengWonoboyo', 'Desa Wisata', 'Desa wisata Mangir Ki Ageng Wonoboyo berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata yang menonjolkan potensi sejarah, budaya lokal, dan alam pedesaan, erat kaitannya dengan kisah tokoh legendaris Ki Ageng Mangir Wonoboyo', '1765635995_e678e24bbceb652c398d.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (69, 'A69', 'Ngembel Mbeji', 'Desa Wisata', 'Desa wisata Ngembel Mbeji berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata yang menonjolkan potensi alam pedesaan, pertanian, dan keberadaan sumber mata air alami, menawarkan suasana yang sejuk dan menyegarkan.\r\n', '1765636045_a796ebee89999f696da0.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (70, 'A70', 'Guwosari Slarong', 'Desa Wisata', 'Desa wisata Guwosari Selarong berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata yang menonjolkan potensi alam, sejarah perjuangan Pangeran Diponegoro, dan budaya lokal, menjadikannya destinasi yang kaya akan edukasi dan petualangan. ', '1765636120_b3900802ccc43b1d0b52.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (71, 'A71', 'Kampung Santan', 'Desa Wisata', 'Desa wisata Kampung Santan berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata yang menonjolkan potensi seni, budaya, dan tradisi lokal masyarakatnya.', '1765635524_c9c47946b32a99b5a688.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (72, 'A72', 'Kalak Ijo', 'Desa Wisata', 'Desa wisata Kalak Ijo berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata yang menonjolkan potensi alam pedesaan, pertanian, dan keberadaan situs sejarah lokal.', '1765635569_280be3e0c5e76c2f0fb2.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (73, 'A73', 'Dewi Gumi', 'Desa Wisata', 'Desa Wisata Dewi Gumi berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. \"Dewi Gumi\" adalah singkatan dari Desa Wisata Gabusan dan Tamanan, sebuah inisiatif kolaboratif antara dua dusun yang menonjolkan potensi seni, budaya, dan kearifan lokal. ', '1765635624_12fe2be527bcb6cdf537.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (74, 'A74', 'Tembi, Timbulharjo', 'Desa Wisata', 'Desa wisata Tembi berlokasi di Dusun Tembi, Kalurahan Timbulharjo, Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata perintis yang terkenal karena adanya Museum Tembi Rumah Budaya, menawarkan perpaduan pengalaman budaya Jawa yang otentik dan suasana pedesaan yang tenang. ', '1765635662_811d5681a80ffc01147e.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (75, 'A75', 'Panggungharjo', 'Desa Wisata', 'Desa wisata Panggungharjo berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata yang menonjolkan potensi seni, budaya, dan tradisi lokal masyarakatnya. ', '1765635721_e9f8fcaf33262dae20de.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (76, 'A76', 'Juron', 'Desa Wisata', 'desa wisata Juron berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata yang menonjolkan potensi alam pedesaan, pertanian, dan keberadaan situs sejarah lokal. ', '1765635151_8bf3639268c01db10b37.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (77, 'A77', 'Kajigelem', 'Desa Wisata', 'desa wisata Kajigelem berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Nama \"Kajigelem\" sendiri merupakan singkatan dari empat dusun yang membentuk desa wisata ini', '1765635234_9a3f2d24357cd2038245.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (78, 'A78', 'Jipangan', 'Desa Wisata', 'Desa wisata Jipangan berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata yang menonjolkan potensi alam pedesaan, pertanian, dan keberadaan industri kreatif lokal, khususnya kerajinan anyaman pandan', '1765635312_15beaacdcd425f2a7aec.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (79, 'A79', 'Manding', 'Desa Wisata', 'Desa wisata Manding berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata yang sangat terkenal sebagai sentra industri kreatif kerajinan kulit, menjadikannya pusat oleh-oleh khas Bantul yang wajib dikunjungi', '1765635361_80c3ddcd47a9b07797cc.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (80, 'A80', 'Ngringinan', 'Desa Wisata', 'Desa wisata Ngringinan berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata yang menonjolkan potensi sejarah peninggalan masa kolonial Belanda, budaya lokal, dan keramahan masyarakatnya', '1765635452_4374825e5873bd26f2d4.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (81, 'A81', ' Jagalan', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763295662_f86b8e4faed5c7215c87.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (82, 'A82', 'Retno', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763295595_d721710037b155edcc2e.jpeg', '');
INSERT INTO `tbl_alternatif` VALUES (83, 'A83', 'Kampung Surocolo', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763295531_045a5e58e1786fb0f846.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (84, 'A84', 'Panjangrejo', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763295275_d3b64e040f3d923823d5.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (85, 'A85', 'Puton', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763295197_ded7e6cab5878673fb2c.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (86, 'A86', 'Trimulyo', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763295091_f6ab793a51ab5a8d494d.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (87, 'A87', 'Dewa Batu', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763294729_6c4bdd56ac642f745e08.jpeg', '');
INSERT INTO `tbl_alternatif` VALUES (88, 'A88', 'Kiringan', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763294638_fda09dd3eb721334ece1.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (89, 'A89', 'Mangrov', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763294603_dbf84f90cc0c59119ab6.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (90, 'A90', 'Laguna Depok Parangtritis', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763294559_01b422f917adb440e91a.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (91, 'A91', 'Kergan Kampung Gurami', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763294495_f9a46d88174919d3d687.webp', '');
INSERT INTO `tbl_alternatif` VALUES (92, 'A92', 'dewi sri', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763294414_7347cab2d0a2b4e6973c.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (93, 'A93', 'Mulyodadi', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763294369_3652ab27a1d8f9805b9a.jpeg', '');
INSERT INTO `tbl_alternatif` VALUES (94, 'A94', 'Lopati', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763294333_78d7a4a57aefd6d058ad.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (95, 'A95', 'Pandansari', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763294287_34c1abdf866020b52afc.png', '');
INSERT INTO `tbl_alternatif` VALUES (96, 'A96', 'Goa cemara', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (97, 'A97', 'Carakan', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763294187_fdab18bd906849fbd343.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (98, 'A98', 'Gadung Mlati', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763294125_a66536ac8cb1a45560d1.jpeg', '');
INSERT INTO `tbl_alternatif` VALUES (99, 'A99', 'Kajii ', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763294086_b647976b0f48a74b9b8d.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (100, 'A100', 'Dewi Sinta', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763293941_5efbb7d42b7634419100.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (101, 'A101', 'Mulia', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763293849_68158410ad6a48c32cb0.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (102, 'A102', 'Banjoe Adji', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763293789_a52f516b317565129dc8.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (103, 'A103', 'Bumi Mataram Pleret', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763293730_c22001605813ef821e66.jpg', '');
INSERT INTO `tbl_alternatif` VALUES (104, 'A104', 'Testing', 'Obyek Wisata', 'Lorem Ipsum', '1760963779_363e0f9416e2f74a5464.png', '5');

-- ----------------------------
-- Table structure for tbl_alternatif_copy1
-- ----------------------------
DROP TABLE IF EXISTS `tbl_alternatif_copy1`;
CREATE TABLE `tbl_alternatif_copy1`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_wisata` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_wisata` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kategori_wisata` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deskripsi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `rating` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_alternatif_copy1
-- ----------------------------
INSERT INTO `tbl_alternatif_copy1` VALUES (1, 'A1', 'Pantai Parangtritis', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1761393944_491182b05920739c7839.jpg', '5');
INSERT INTO `tbl_alternatif_copy1` VALUES (2, 'A2', 'Pantai samas', 'Obyek Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (3, 'A3', 'Pantai Goa Cemara', 'Obyek Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (4, 'A4', 'Pantai Kwaru', 'Obyek Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (5, 'A5', 'Pantai Pandansimo', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1760963535_ae13e1f6681446d4a7d6.jpg', '4');
INSERT INTO `tbl_alternatif_copy1` VALUES (6, 'A6', 'Goa Selarong', 'Obyek Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (7, 'A7', 'Goa Cerme', 'Obyek Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (8, 'A8', 'Pasar Seni Gabusan', 'Obyek Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (9, 'A9', 'Kebun Buah Mangunan', 'Obyek Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (10, 'A10', 'Gunung Pengger', 'Obyek Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (11, 'A11', 'Puncak Becici', 'Obyek Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (12, 'A12', 'Lintang 1000', 'Obyek Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (13, 'A13', 'Pinus Asri', 'Obyek Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (14, 'A14', 'Pinus Sari', 'Obyek Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (15, 'A15', '1000 Batu', 'Obyek Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (16, 'A16', 'Bukit Panguk', 'Obyek Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (17, 'A17', 'Bojong Sari', 'Obyek Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (18, 'A18', 'Watu Goyang', 'Obyek Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (19, 'A19', 'Potrobayan', 'Obyek Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (20, 'A20', 'LBH Dahromo', 'Obyek Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (21, 'A21', 'La Li Sa Farmer Village', 'Obyek Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (22, 'A22', 'Balong Park', 'Obyek Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (23, 'A23', 'Galaxi Water Park', 'Obyek Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (24, 'A24', 'Grand Puri Water Park', 'Obyek Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (25, 'A25', 'Taman Rekreasi Tirto Tamansari', 'Obyek Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (26, 'A26', 'Kids Fun Parks', 'Obyek Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (27, 'A27', 'Selopamioro Adventure park', 'Obyek Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (28, 'A28', 'Kebun Pisang Mbah Lasio', 'Obyek Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (29, 'A29', 'Puncak Sosok', 'Obyek Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (30, 'A30', 'Kawasan Cagar Budaya Jagalan ', 'Obyek Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (31, 'A31', 'Komplek Masjid Kotagede, Sendang Seliran & Makam Raja-Raja Mataram di Kotagede', 'Obyek Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (32, 'A32', 'Makam Raja-Raja Mataram Di Imogiri', 'Obyek Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (33, 'A33', 'Makam Sunan Cirebon', 'Obyek Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (34, 'A34', 'Lembah Sorory', 'Obyek Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (35, 'A35', 'Padepokan Sumber Karahayon', 'Museum', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (36, 'A36', 'Museum Muhammadiyah', 'Museum', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (37, 'A37', 'Museum Soeharto', 'Museum', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (38, 'A38', 'Museum Wayang Kekayon', 'Museum', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (39, 'A39', 'Museum Wayang Beber Sekartaji', 'Museum', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (40, 'A40', 'Museum Laboratorium Sejarah UPY', 'Museum', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (41, 'A41', 'Museum Purbakala Pleret', 'Museum', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (42, 'A42', 'Museum Tani Jawa ', 'Museum', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (43, 'A43', 'Museum History Of Java', 'Museum', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (44, 'A44', 'Museum Taman Tino Sidin', 'Museum', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (45, 'A45', 'Museum Rumah Belanda \n(Musium Bantul Masa Belanda )', 'Museum', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (46, 'A46', 'Museum Rumah Garuda', 'Museum', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (47, 'A47', 'Museum Gumuk Pasir \n(Geomaritime Sains Park)', 'Museum', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (48, 'A48', 'Museum Coklat Monggo', 'Museum', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (49, 'A49', 'Museum Tembi Rumah Budaya', 'Museum', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (50, 'A50', 'Kaki Langit', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (51, 'A51', 'Goa Gajah Lemah Abang', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (52, 'A52', 'songgo langit', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (53, 'A53', ' Tapak Tilas \nSultan Agung (TTSA)', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (54, 'A54', 'Wirokerten', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (55, 'A55', 'Banyu Nibo Rejosari', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (56, 'A56', 'Karangasem', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (57, 'A57', 'Gunung Cilik', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (58, 'A58', 'dahayu giri', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (59, 'A59', 'Karang Tengah', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (60, 'A60', 'Kebon Agung', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (61, 'A61', 'Candran', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (62, 'A62', 'Giriloyo Wukirsari', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (63, 'A63', 'Bendo', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (64, 'A64', 'pucung rejo', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (65, 'A65', 'Imogiri', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (66, 'A66', 'Sri Kemenut', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (67, 'A67', 'Krebet', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (68, 'A68', 'Mangir Ki Ageng\nWonoboyo', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (69, 'A69', 'Ngembel Mbeji', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (70, 'A70', 'Guwosari Slarong', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (71, 'A71', 'Kampung Santan', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (72, 'A72', 'Kalak Ijo', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (73, 'A73', 'Dewi Gumi', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (74, 'A74', 'Tembi, Timbulharjo', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (75, 'A75', 'Panggungharjo', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (76, 'A76', 'Juron', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (77, 'A77', 'Kajigelem', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (78, 'A78', 'Jipangan', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (79, 'A79', 'Manding', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (80, 'A80', 'Ngringinan', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (81, 'A81', ' Jagalan', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (82, 'A82', 'Retno', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (83, 'A83', 'Kampung Surocolo', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (84, 'A84', 'Panjangrejo', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (85, 'A85', 'Puton', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (86, 'A86', 'Trimulyo', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (87, 'A87', 'Dewa Batu', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (88, 'A88', 'Kiringan', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (89, 'A89', 'Mangrov', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (90, 'A90', 'Laguna Depok Parangtritis', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (91, 'A91', 'Kergan Kampung Gurami', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (92, 'A92', 'dewi sri', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (93, 'A93', 'Mulyodadi', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (94, 'A94', 'Lopati', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (95, 'A95', 'Pandansari', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (96, 'A96', 'Goa cemara', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (97, 'A97', 'Carakan', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (98, 'A98', 'Gadung Mlati', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (99, 'A99', 'Kajii ', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (100, 'A100', 'Dewi Sinta', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (101, 'A101', 'Mulia', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (102, 'A102', 'Banjoe Adji', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (103, 'A103', 'Bumi Mataram Pleret', 'Desa Wisata', NULL, NULL, NULL);
INSERT INTO `tbl_alternatif_copy1` VALUES (104, 'A104', 'Testing', 'Obyek Wisata', 'Lorem Ipsum', '1760963779_363e0f9416e2f74a5464.png', '5');

-- ----------------------------
-- Table structure for tbl_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `tbl_bookmark`;
CREATE TABLE `tbl_bookmark`  (
  `id_bookmark` int NOT NULL AUTO_INCREMENT,
  `id_user` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_wisata` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id_bookmark`) USING BTREE,
  UNIQUE INDEX `unique_bookmark`(`id_user` ASC, `id_wisata` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_bookmark
-- ----------------------------
INSERT INTO `tbl_bookmark` VALUES (19, 'mentari@gmail.com', 'A3', '2025-10-23 20:52:52');
INSERT INTO `tbl_bookmark` VALUES (20, 'mentari@gmail.com', 'A35', '2025-10-23 20:53:22');
INSERT INTO `tbl_bookmark` VALUES (23, 'mentari@gmail.com', 'A2', '2025-10-23 21:18:49');
INSERT INTO `tbl_bookmark` VALUES (27, 'firmanpratama519@gmail.com', 'A5', '2025-10-25 20:17:18');
INSERT INTO `tbl_bookmark` VALUES (28, 'firmanpratama519@gmail.com', 'A1', '2025-10-26 17:56:10');

-- ----------------------------
-- Table structure for tbl_kriteria
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kriteria`;
CREATE TABLE `tbl_kriteria`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode_kriteria` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_kriteria` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bobot` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kategori_utama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_kriteria
-- ----------------------------
INSERT INTO `tbl_kriteria` VALUES (1, 'C1', 'Rating Google Maps', 'Benefit', '0.12', 'Rating Google MapsRating Google Maps');
INSERT INTO `tbl_kriteria` VALUES (2, 'C2', 'Jumlah Ulasan Google Maps', 'Benefit', '0.08', 'Biaya');
INSERT INTO `tbl_kriteria` VALUES (3, 'C3', 'Jumlah Pengunjung', 'Benefit', '0.08', 'Daya Tarik Wisata');
INSERT INTO `tbl_kriteria` VALUES (4, 'C4', 'Biaya', 'Cost', '0.10', 'Daya Tarik Wisata');
INSERT INTO `tbl_kriteria` VALUES (5, 'C5', 'Fasilitas Toilet', 'Benefit', '0.07', 'Daya Tarik Wisata');
INSERT INTO `tbl_kriteria` VALUES (6, 'C6', 'Fasilitas Tempat Ibadah', 'Benefit', '0.06', 'Daya Tarik Wisata');
INSERT INTO `tbl_kriteria` VALUES (7, 'C7', 'Fasilitas Parkir', 'Benefit', '0.06', 'Daya Tarik Wisata');
INSERT INTO `tbl_kriteria` VALUES (8, 'C8', 'Fasilitas Indoor (Payung/Gazebo)', 'Benefit', '0.05', 'Fasilitas');
INSERT INTO `tbl_kriteria` VALUES (9, 'C9', 'Fasilitas Kesehatan', 'Benefit', '0.06', 'Fasilitas');
INSERT INTO `tbl_kriteria` VALUES (10, 'C10', 'Fasilitas Penerangan', 'Benefit', '0.05', 'Fasilitas');
INSERT INTO `tbl_kriteria` VALUES (11, 'C11', 'Dekat Dengan Penginapan', 'Cost', '0.05', 'Fasilitas');
INSERT INTO `tbl_kriteria` VALUES (12, 'C12', 'Dekat Dengan Kantin/Kuliner', 'Cost', '0.05', 'Fasilitas');
INSERT INTO `tbl_kriteria` VALUES (13, 'C13', 'Jarak Dari ATM', 'Cost', '0.04', 'Fasilitas');
INSERT INTO `tbl_kriteria` VALUES (14, 'C14', 'Jarak Dari SPBU', 'Cost', '0.04', 'Aksesbilitas');
INSERT INTO `tbl_kriteria` VALUES (15, 'C15', 'Jarak Dari Pusat Kota', 'Cost', '0.09', 'Aksesbilitas');

-- ----------------------------
-- Table structure for tbl_penilaian
-- ----------------------------
DROP TABLE IF EXISTS `tbl_penilaian`;
CREATE TABLE `tbl_penilaian`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_wisata` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `C1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `C2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `C3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `C4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `C5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `C6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `C7` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `C8` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `C9` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `C10` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `C11` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `C12` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `C13` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `C14` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `C15` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_penilaian
-- ----------------------------
INSERT INTO `tbl_penilaian` VALUES (1, 'A1', '4', '5', '5', '3', '4', '3', '5', '4', '1', '4', '5', '5', '0', '5', '2');
INSERT INTO `tbl_penilaian` VALUES (2, 'A2', '3', '3', '5', '4', '3', '2', '4', '3', '1', '2', '0', '5', '0', '5', '3');
INSERT INTO `tbl_penilaian` VALUES (3, 'A3', '3', '5', '4', '3', '4', '3', '5', '3', '1', '3', '0', '5', '0', '5', '3');
INSERT INTO `tbl_penilaian` VALUES (4, 'A4', '3', '5', '5', '4', '3', '2', '3', '3', '1', '1', '0', '5', '0', '5', '3');
INSERT INTO `tbl_penilaian` VALUES (5, 'A5', '3', '3', '5', '2', '3', '2', '3', '3', '1', '1', '0', '5', '0', '5', '3');
INSERT INTO `tbl_penilaian` VALUES (6, 'A6', '4', '0', '0', '0', '3', '0', '3', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `tbl_penilaian` VALUES (7, 'A7', '3', '0', '0', '0', '3', '0', '3', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `tbl_penilaian` VALUES (8, 'A8', '4', '0', '0', '0', '3', '0', '3', '0', '0', '3', '0', '0', '0', '0', '3');
INSERT INTO `tbl_penilaian` VALUES (9, 'A9', '4', '0', '0', '0', '3', '0', '3', '0', '0', '3', '0', '0', '0', '0', '2');
INSERT INTO `tbl_penilaian` VALUES (10, 'A10', '4', '0', '0', '0', '3', '0', '3', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `tbl_penilaian` VALUES (11, 'A11', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '2', '2', '0', '0');
INSERT INTO `tbl_penilaian` VALUES (12, 'A12', '3', '0', '0', '0', '3', '0', '3', '0', '0', '3', '0', '0', '0', '0', '2');
INSERT INTO `tbl_penilaian` VALUES (13, 'A13', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2');
INSERT INTO `tbl_penilaian` VALUES (14, 'A14', '5', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2', '5');
INSERT INTO `tbl_penilaian` VALUES (15, 'A15', '3', '0', '0', '0', '3', '0', '3', '3', '0', '3', '0', '0', '0', '0', '4');
INSERT INTO `tbl_penilaian` VALUES (16, 'A16', '3', '0', '0', '0', '3', '0', '3', '3', '0', '3', '0', '0', '0', '0', '3');
INSERT INTO `tbl_penilaian` VALUES (17, 'A17', '3', '0', '0', '0', '0', '0', '3', '0', '0', '3', '0', '0', '0', '0', '3');
INSERT INTO `tbl_penilaian` VALUES (18, 'A18', '4', '0', '0', '0', '3', '0', '3', '0', '0', '0', '0', '0', '0', '0', '2');
INSERT INTO `tbl_penilaian` VALUES (19, 'A19', '4', '0', '0', '0', '3', '0', '3', '3', '0', '3', '0', '0', '0', '0', '3');
INSERT INTO `tbl_penilaian` VALUES (20, 'A20', '5', '0', '0', '0', '3', '0', '3', '0', '0', '0', '0', '0', '0', '2', '4');
INSERT INTO `tbl_penilaian` VALUES (21, 'A21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2');
INSERT INTO `tbl_penilaian` VALUES (22, 'A22', '4', '0', '0', '0', '3', '0', '3', '3', '0', '3', '0', '0', '0', '0', '2');
INSERT INTO `tbl_penilaian` VALUES (23, 'A23', '4', '5', '5', '3', '4', '3', '5', '4', '1', '4', '5', '5', '0', '5', '2');
INSERT INTO `tbl_penilaian` VALUES (24, 'A24', '3', '3', '5', '4', '3', '2', '4', '3', '1', '2', '0', '5', '0', '5', '3');
INSERT INTO `tbl_penilaian` VALUES (25, 'A25', '3', '5', '4', '3', '4', '3', '5', '3', '1', '3', '0', '5', '0', '5', '3');
INSERT INTO `tbl_penilaian` VALUES (26, 'A26', '3', '5', '5', '4', '3', '2', '3', '3', '1', '1', '0', '5', '0', '5', '3');
INSERT INTO `tbl_penilaian` VALUES (27, 'A27', '3', '3', '5', '2', '3', '2', '3', '3', '1', '1', '0', '5', '0', '5', '3');
INSERT INTO `tbl_penilaian` VALUES (28, 'A28', '4', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4');
INSERT INTO `tbl_penilaian` VALUES (29, 'A29', '5', '0', '0', '0', '3', '0', '3', '0', '0', '0', '0', '0', '0', '1', '4');
INSERT INTO `tbl_penilaian` VALUES (30, 'A30', '4', '0', '0', '0', '3', '0', '3', '0', '0', '0', '0', '0', '0', '0', '4');
INSERT INTO `tbl_penilaian` VALUES (31, 'A31', '3', '0', '0', '0', '3', '0', '3', '0', '0', '0', '0', '0', '0', '2', '4');
INSERT INTO `tbl_penilaian` VALUES (32, 'A32', '4', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2');
INSERT INTO `tbl_penilaian` VALUES (33, 'A33', '5', '0', '0', '0', '3', '0', '3', '0', '0', '0', '0', '0', '0', '2', '5');
INSERT INTO `tbl_penilaian` VALUES (34, 'A34', '4', '0', '0', '0', '3', '0', '3', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `tbl_penilaian` VALUES (35, 'A35', '4', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2');
INSERT INTO `tbl_penilaian` VALUES (36, 'A36', '4', '0', '0', '0', '3', '0', '3', '0', '0', '0', '0', '0', '0', '1', '4');
INSERT INTO `tbl_penilaian` VALUES (37, 'A37', '4', '0', '0', '0', '3', '0', '3', '0', '0', '0', '0', '0', '0', '2', '5');
INSERT INTO `tbl_penilaian` VALUES (38, 'A38', '3', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2');
INSERT INTO `tbl_penilaian` VALUES (39, 'A39', '4', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `tbl_penilaian` VALUES (40, 'A40', '4', '0', '0', '0', '3', '0', '3', '0', '0', '0', '0', '0', '0', '0', '4');
INSERT INTO `tbl_penilaian` VALUES (41, 'A41', '4', '0', '0', '0', '3', '0', '3', '3', '0', '0', '0', '0', '0', '0', '4');
INSERT INTO `tbl_penilaian` VALUES (42, 'A42', '4', '0', '0', '0', '3', '0', '3', '0', '0', '0', '0', '0', '0', '0', '2');
INSERT INTO `tbl_penilaian` VALUES (43, 'A43', '5', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2');
INSERT INTO `tbl_penilaian` VALUES (44, 'A44', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '4');
INSERT INTO `tbl_penilaian` VALUES (45, 'A45', '3', '0', '0', '0', '0', '0', '3', '3', '0', '0', '0', '0', '0', '0', '2');
INSERT INTO `tbl_penilaian` VALUES (46, 'A46', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '2', '2', '0', '0');
INSERT INTO `tbl_penilaian` VALUES (47, 'A47', '4', '0', '0', '0', '3', '0', '3', '0', '0', '3', '0', '4', '4', '0', '0');
INSERT INTO `tbl_penilaian` VALUES (48, 'A48', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '2', '2', '0', '0');
INSERT INTO `tbl_penilaian` VALUES (49, 'A49', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '3', '3', '0', '0');
INSERT INTO `tbl_penilaian` VALUES (50, 'A50', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_penilaian` VALUES (51, 'A51', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_penilaian` VALUES (52, 'A52', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `tbl_penilaian` VALUES (53, 'A53', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2');
INSERT INTO `tbl_penilaian` VALUES (54, 'A54', '4', '0', '0', '0', '3', '0', '3', '0', '0', '0', '0', '0', '0', '0', '2');
INSERT INTO `tbl_penilaian` VALUES (55, 'A55', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `tbl_penilaian` VALUES (56, 'A56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '3', '3', '0', '0');
INSERT INTO `tbl_penilaian` VALUES (57, 'A57', '4', '0', '0', '0', '3', '0', '0', '0', '0', '3', '0', '0', '0', '0', '3');
INSERT INTO `tbl_penilaian` VALUES (58, 'A58', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `tbl_penilaian` VALUES (59, 'A59', '4', '0', '0', '0', '3', '0', '3', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `tbl_penilaian` VALUES (60, 'A60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4');
INSERT INTO `tbl_penilaian` VALUES (61, 'A61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '4');
INSERT INTO `tbl_penilaian` VALUES (62, 'A62', '4', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4');
INSERT INTO `tbl_penilaian` VALUES (63, 'A63', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_penilaian` VALUES (64, 'A64', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2');
INSERT INTO `tbl_penilaian` VALUES (65, 'A65', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '4', '0', '0');
INSERT INTO `tbl_penilaian` VALUES (66, 'A66', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `tbl_penilaian` VALUES (67, 'A67', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `tbl_penilaian` VALUES (68, 'A68', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_penilaian` VALUES (69, 'A69', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `tbl_penilaian` VALUES (70, 'A70', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `tbl_penilaian` VALUES (71, 'A71', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2');
INSERT INTO `tbl_penilaian` VALUES (72, 'A72', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `tbl_penilaian` VALUES (73, 'A73', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '4', '4', '0', '0');
INSERT INTO `tbl_penilaian` VALUES (74, 'A74', '3', '0', '0', '0', '3', '0', '3', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `tbl_penilaian` VALUES (75, 'A75', '4', '0', '0', '0', '3', '0', '3', '3', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_penilaian` VALUES (76, 'A76', '4', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `tbl_penilaian` VALUES (77, 'A77', '5', '0', '0', '0', '3', '0', '3', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `tbl_penilaian` VALUES (78, 'A78', '4', '0', '0', '0', '3', '0', '3', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `tbl_penilaian` VALUES (79, 'A79', '3', '0', '0', '0', '3', '0', '3', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `tbl_penilaian` VALUES (80, 'A80', '3', '0', '0', '0', '3', '0', '3', '3', '0', '3', '0', '0', '0', '0', '1');
INSERT INTO `tbl_penilaian` VALUES (81, 'A81', '3', '0', '0', '0', '3', '0', '3', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `tbl_penilaian` VALUES (82, 'A82', '3', '0', '0', '0', '3', '0', '3', '3', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `tbl_penilaian` VALUES (83, 'A83', '4', '0', '0', '0', '3', '0', '3', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `tbl_penilaian` VALUES (84, 'A84', '3', '0', '0', '0', '3', '0', '3', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `tbl_penilaian` VALUES (85, 'A85', '4', '0', '0', '0', '3', '0', '3', '0', '0', '3', '0', '0', '0', '0', '3');
INSERT INTO `tbl_penilaian` VALUES (86, 'A86', '4', '0', '0', '0', '3', '0', '3', '0', '0', '3', '0', '0', '0', '0', '2');
INSERT INTO `tbl_penilaian` VALUES (87, 'A87', '4', '0', '0', '0', '3', '0', '3', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `tbl_penilaian` VALUES (88, 'A88', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '2', '2', '0', '0');
INSERT INTO `tbl_penilaian` VALUES (89, 'A89', '3', '0', '0', '0', '3', '0', '3', '0', '0', '3', '0', '0', '0', '0', '2');
INSERT INTO `tbl_penilaian` VALUES (90, 'A90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2');
INSERT INTO `tbl_penilaian` VALUES (91, 'A91', '5', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2', '5');
INSERT INTO `tbl_penilaian` VALUES (92, 'A92', '3', '0', '0', '0', '3', '0', '3', '3', '0', '3', '0', '0', '0', '0', '4');
INSERT INTO `tbl_penilaian` VALUES (93, 'A93', '3', '0', '0', '0', '3', '0', '3', '3', '0', '3', '0', '0', '0', '0', '3');
INSERT INTO `tbl_penilaian` VALUES (94, 'A94', '3', '0', '0', '0', '0', '0', '3', '0', '0', '3', '0', '0', '0', '0', '3');
INSERT INTO `tbl_penilaian` VALUES (95, 'A95', '4', '0', '0', '0', '3', '0', '3', '0', '0', '0', '0', '0', '0', '0', '2');
INSERT INTO `tbl_penilaian` VALUES (96, 'A96', '4', '0', '0', '0', '3', '0', '3', '3', '0', '3', '0', '0', '0', '0', '3');
INSERT INTO `tbl_penilaian` VALUES (97, 'A97', '5', '0', '0', '0', '3', '0', '3', '0', '0', '0', '0', '0', '0', '2', '4');
INSERT INTO `tbl_penilaian` VALUES (98, 'A98', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2');
INSERT INTO `tbl_penilaian` VALUES (99, 'A99', '4', '0', '0', '0', '3', '0', '3', '3', '0', '3', '0', '0', '0', '0', '2');
INSERT INTO `tbl_penilaian` VALUES (100, 'A100', '4', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4');
INSERT INTO `tbl_penilaian` VALUES (101, 'A101', '5', '0', '0', '0', '3', '0', '3', '0', '0', '0', '0', '0', '0', '1', '4');
INSERT INTO `tbl_penilaian` VALUES (102, 'A102', '4', '0', '0', '0', '3', '0', '3', '0', '0', '0', '0', '0', '0', '0', '4');
INSERT INTO `tbl_penilaian` VALUES (103, 'A103', '3', '0', '0', '0', '3', '0', '3', '0', '0', '0', '0', '0', '0', '2', '4');

-- ----------------------------
-- Table structure for tbl_sub_kriteria
-- ----------------------------
DROP TABLE IF EXISTS `tbl_sub_kriteria`;
CREATE TABLE `tbl_sub_kriteria`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode_kriteria` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sub_kriteria` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nilai` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_sub_kriteria
-- ----------------------------
INSERT INTO `tbl_sub_kriteria` VALUES (1, 'C1', 'Benefit', '4.8 – 5.0', '5');
INSERT INTO `tbl_sub_kriteria` VALUES (2, 'C1', 'Benefit', '4.5 – 4.79', '4');
INSERT INTO `tbl_sub_kriteria` VALUES (3, 'C1', 'Benefit', '4.0 – 4.49', '3');
INSERT INTO `tbl_sub_kriteria` VALUES (4, 'C1', 'Benefit', '3.5 – 3.99', '2');
INSERT INTO `tbl_sub_kriteria` VALUES (5, 'C1', 'Benefit', '3.0 – 3.49', '1');
INSERT INTO `tbl_sub_kriteria` VALUES (6, 'C1', 'Benefit', '< 3.0', '0');
INSERT INTO `tbl_sub_kriteria` VALUES (7, 'C2', 'Benefit', '> 1000', '5');
INSERT INTO `tbl_sub_kriteria` VALUES (8, 'C2', 'Benefit', '750 – 1000', '4');
INSERT INTO `tbl_sub_kriteria` VALUES (9, 'C2', 'Benefit', '500 – 749', '3');
INSERT INTO `tbl_sub_kriteria` VALUES (10, 'C2', 'Benefit', '250 – 499', '2');
INSERT INTO `tbl_sub_kriteria` VALUES (11, 'C2', 'Benefit', '100 – 249', '1');
INSERT INTO `tbl_sub_kriteria` VALUES (12, 'C2', 'Benefit', '< 100', '0');
INSERT INTO `tbl_sub_kriteria` VALUES (13, 'C3', 'Benefit', '> 20.000', '5');
INSERT INTO `tbl_sub_kriteria` VALUES (14, 'C3', 'Benefit', '10.001 – 20.000', '4');
INSERT INTO `tbl_sub_kriteria` VALUES (15, 'C3', 'Benefit', '5.001 – 10.000', '3');
INSERT INTO `tbl_sub_kriteria` VALUES (16, 'C3', 'Benefit', '2.001 – 5.000', '2');
INSERT INTO `tbl_sub_kriteria` VALUES (17, 'C3', 'Benefit', '1 – 2.000', '1');
INSERT INTO `tbl_sub_kriteria` VALUES (18, 'C3', 'Benefit', '0', '0');
INSERT INTO `tbl_sub_kriteria` VALUES (19, 'C4', 'Cost', '0 (gratis)', '5');
INSERT INTO `tbl_sub_kriteria` VALUES (20, 'C4', 'Cost', '1 – 5.000', '4');
INSERT INTO `tbl_sub_kriteria` VALUES (21, 'C4', 'Cost', '5.001 – 10.000', '3');
INSERT INTO `tbl_sub_kriteria` VALUES (22, 'C4', 'Cost', '10.001 – 20.000', '2');
INSERT INTO `tbl_sub_kriteria` VALUES (23, 'C4', 'Cost', '20.001 – 30.000', '1');
INSERT INTO `tbl_sub_kriteria` VALUES (24, 'C4', 'Cost', '> 30.000', '0');
INSERT INTO `tbl_sub_kriteria` VALUES (25, 'C5', 'Benefit', 'Sangat bersih, banyak', '5');
INSERT INTO `tbl_sub_kriteria` VALUES (26, 'C5', 'Benefit', 'Bersih, memadai', '4');
INSERT INTO `tbl_sub_kriteria` VALUES (27, 'C5', 'Benefit', 'Cukup, bersih', '3');
INSERT INTO `tbl_sub_kriteria` VALUES (28, 'C5', 'Benefit', 'Ada, tapi terbatas', '2');
INSERT INTO `tbl_sub_kriteria` VALUES (29, 'C5', 'Benefit', 'Ada, tapi tidak bersih', '1');
INSERT INTO `tbl_sub_kriteria` VALUES (30, 'C5', 'Benefit', 'Tidak ada', '0');
INSERT INTO `tbl_sub_kriteria` VALUES (31, 'C6', 'Benefit', 'Lengkap dan terawat', '5');
INSERT INTO `tbl_sub_kriteria` VALUES (32, 'C6', 'Benefit', 'Lengkap', '4');
INSERT INTO `tbl_sub_kriteria` VALUES (33, 'C6', 'Benefit', 'Sederhana dan bersih', '3');
INSERT INTO `tbl_sub_kriteria` VALUES (34, 'C6', 'Benefit', 'Ada namun terbatas', '2');
INSERT INTO `tbl_sub_kriteria` VALUES (35, 'C6', 'Benefit', 'Ada tapi tidak layak', '1');
INSERT INTO `tbl_sub_kriteria` VALUES (36, 'C6', 'Benefit', 'Tidak ada', '0');
INSERT INTO `tbl_sub_kriteria` VALUES (37, 'C7', 'Benefit', 'Luas, aman, tertata baik', '5');
INSERT INTO `tbl_sub_kriteria` VALUES (38, 'C7', 'Benefit', 'Luas, cukup aman', '4');
INSERT INTO `tbl_sub_kriteria` VALUES (39, 'C7', 'Benefit', 'Sedang, cukup', '3');
INSERT INTO `tbl_sub_kriteria` VALUES (40, 'C7', 'Benefit', 'Sempit, kurang tertata', '2');
INSERT INTO `tbl_sub_kriteria` VALUES (41, 'C7', 'Benefit', 'Sempit, tidak aman', '1');
INSERT INTO `tbl_sub_kriteria` VALUES (42, 'C7', 'Benefit', 'Tidak ada', '0');
INSERT INTO `tbl_sub_kriteria` VALUES (43, 'C8', 'Benefit', 'Banyak, teduh', '5');
INSERT INTO `tbl_sub_kriteria` VALUES (44, 'C8', 'Benefit', 'Cukup banyak', '4');
INSERT INTO `tbl_sub_kriteria` VALUES (45, 'C8', 'Benefit', 'Sedikit tapi berguna', '3');
INSERT INTO `tbl_sub_kriteria` VALUES (46, 'C8', 'Benefit', 'Ada, tapi rusak', '2');
INSERT INTO `tbl_sub_kriteria` VALUES (47, 'C8', 'Benefit', 'Ada satu dua', '1');
INSERT INTO `tbl_sub_kriteria` VALUES (48, 'C8', 'Benefit', 'Tidak tersedia', '0');
INSERT INTO `tbl_sub_kriteria` VALUES (49, 'C9', 'Benefit', 'Ada klinik, P3K lengkap', '5');
INSERT INTO `tbl_sub_kriteria` VALUES (50, 'C9', 'Benefit', 'Ada pos P3K + personel', '4');
INSERT INTO `tbl_sub_kriteria` VALUES (51, 'C9', 'Benefit', 'Hanya pos P3K', '3');
INSERT INTO `tbl_sub_kriteria` VALUES (52, 'C9', 'Benefit', 'Kotak P3K sederhana', '2');
INSERT INTO `tbl_sub_kriteria` VALUES (53, 'C9', 'Benefit', 'Informasi darurat saja', '1');
INSERT INTO `tbl_sub_kriteria` VALUES (54, 'C9', 'Benefit', 'Tidak tersedia', '0');
INSERT INTO `tbl_sub_kriteria` VALUES (55, 'C10', 'Benefit', 'Terang di semua area, malam aman', '5');
INSERT INTO `tbl_sub_kriteria` VALUES (56, 'C10', 'Benefit', 'Terang di sebagian besar area', '4');
INSERT INTO `tbl_sub_kriteria` VALUES (57, 'C10', 'Benefit', 'Cukup terang', '3');
INSERT INTO `tbl_sub_kriteria` VALUES (58, 'C10', 'Benefit', 'Beberapa titik gelap', '2');
INSERT INTO `tbl_sub_kriteria` VALUES (59, 'C10', 'Benefit', 'Banyak area gelap', '1');
INSERT INTO `tbl_sub_kriteria` VALUES (60, 'C10', 'Benefit', 'Tidak ada penerangan', '0');
INSERT INTO `tbl_sub_kriteria` VALUES (61, 'C11', 'Cost', '< 100 m', '5');
INSERT INTO `tbl_sub_kriteria` VALUES (62, 'C11', 'Cost', '100 – 300 m', '4');
INSERT INTO `tbl_sub_kriteria` VALUES (63, 'C11', 'Cost', '301 – 500 m', '3');
INSERT INTO `tbl_sub_kriteria` VALUES (64, 'C11', 'Cost', '501 – 1000 m', '2');
INSERT INTO `tbl_sub_kriteria` VALUES (65, 'C11', 'Cost', '1 – 2 km', '1');
INSERT INTO `tbl_sub_kriteria` VALUES (66, 'C11', 'Cost', '> 2 km', '0');
INSERT INTO `tbl_sub_kriteria` VALUES (67, 'C12', 'Cost', '< 50 m', '5');
INSERT INTO `tbl_sub_kriteria` VALUES (68, 'C12', 'Cost', '50 – 150 m', '4');
INSERT INTO `tbl_sub_kriteria` VALUES (69, 'C12', 'Cost', '151 – 300 m', '3');
INSERT INTO `tbl_sub_kriteria` VALUES (70, 'C12', 'Cost', '301 – 600 m', '2');
INSERT INTO `tbl_sub_kriteria` VALUES (71, 'C12', 'Cost', '601 – 1000 m', '1');
INSERT INTO `tbl_sub_kriteria` VALUES (72, 'C12', 'Cost', '> 1 km', '0');
INSERT INTO `tbl_sub_kriteria` VALUES (73, 'C13', 'Cost', '< 50 m', '5');
INSERT INTO `tbl_sub_kriteria` VALUES (74, 'C13', 'Cost', '50 – 150 m', '4');
INSERT INTO `tbl_sub_kriteria` VALUES (75, 'C13', 'Cost', '151 – 300 m', '3');
INSERT INTO `tbl_sub_kriteria` VALUES (76, 'C13', 'Cost', '301 – 600 m', '2');
INSERT INTO `tbl_sub_kriteria` VALUES (77, 'C13', 'Cost', '601 – 1000 m', '1');
INSERT INTO `tbl_sub_kriteria` VALUES (78, 'C13', 'Cost', '> 1 km', '0');
INSERT INTO `tbl_sub_kriteria` VALUES (79, 'C14', 'Cost', '< 1 km', '5');
INSERT INTO `tbl_sub_kriteria` VALUES (80, 'C14', 'Cost', '1 – 2 km', '4');
INSERT INTO `tbl_sub_kriteria` VALUES (81, 'C14', 'Cost', '2 – 3 km', '3');
INSERT INTO `tbl_sub_kriteria` VALUES (82, 'C14', 'Cost', '3 – 5 km', '2');
INSERT INTO `tbl_sub_kriteria` VALUES (83, 'C14', 'Cost', '5 – 7 km', '1');
INSERT INTO `tbl_sub_kriteria` VALUES (84, 'C14', 'Cost', '> 7 km', '0');
INSERT INTO `tbl_sub_kriteria` VALUES (85, 'C15', 'Cost', '< 5 km', '5');
INSERT INTO `tbl_sub_kriteria` VALUES (86, 'C15', 'Cost', '5 – 10 km', '4');
INSERT INTO `tbl_sub_kriteria` VALUES (87, 'C15', 'Cost', '10 – 15 km', '3');
INSERT INTO `tbl_sub_kriteria` VALUES (88, 'C15', 'Cost', '15 – 20 km', '2');
INSERT INTO `tbl_sub_kriteria` VALUES (89, 'C15', 'Cost', '20 – 30 km', '1');
INSERT INTO `tbl_sub_kriteria` VALUES (90, 'C15', 'Cost', '> 30 km', '0');

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role` enum('admin','user') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'user',
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reset_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `reset_expired` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE,
  UNIQUE INDEX `email`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (1, 'admin', 'Admin', 'admin@gmail.com', '$2y$10$i0xoiFVc/etw/WXRuU1D1ODE5v.u6ZEOU4MVTMgSjZYwp8u0LpC7S', 'admin', NULL, '2025-08-28 23:10:35', NULL, NULL, NULL);
INSERT INTO `tbl_user` VALUES (2, 'mentari201', 'Ika Mentari', 'alfarika004@gmail.com', '$2y$10$YBFA1bgtbDBRR.FjzVAUo.U8Gty1beros.VwKXoXGVkpi8xniBQDy', 'user', NULL, '2025-08-29 07:11:11', '2025-12-28 10:15:06', '9f76a14aba6bdd022fead26f72608939f0a3640286b11ce3941680778e86ebc0', '2025-12-28 11:15:06');
INSERT INTO `tbl_user` VALUES (3, 'pratama', 'Firman Dhani', 'firmanpratama519@gmail.com', '$2y$10$hx/Fh.ZjwZdtOE4l2z11yeSkustj2jeqvxD7ZNsWCzZkIopVRUqZe', 'user', '1761477015_3fa7c5114c8d01bdad9a.png', '2025-08-29 07:29:33', '2025-12-28 10:13:07', 'b2758de762ee220105485ccfef953e5d846aa347ab0b28d790ad609dcf86719d', '2025-12-28 11:13:07');

SET FOREIGN_KEY_CHECKS = 1;
