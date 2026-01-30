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

 Date: 07/01/2026 00:41:52
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
  `latitude` decimal(10, 8) NULL DEFAULT NULL,
  `longitude` decimal(11, 8) NULL DEFAULT NULL,
  `google_place_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jumlah_ulasan` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 108 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_alternatif
-- ----------------------------
INSERT INTO `tbl_alternatif` VALUES (1, 'A1', 'Pantai Parangtritis', 'Obyek Wisata', 'lorem ipsum satu dua', '1761393944_491182b05920739c7839.jpg', '5', -8.02728270, 110.33700780, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (2, 'A2', 'Pantai samas', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765631343_9b4f108971674723f8f3.jpg', '0', -8.00532790, 110.26577970, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (3, 'A3', 'Pantai Goa Cemara', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765631366_7e0631fcd303c1484e42.jpg', '0', -8.00004660, 110.25088160, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (4, 'A4', 'Pantai Kwaru', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765631441_a48d71b0fe051b6c353d.jpg', '0', -7.99118080, 110.22696010, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (5, 'A5', 'Pantai Pandansimo', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1760963535_ae13e1f6681446d4a7d6.jpg', '4', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (6, 'A6', 'Goa Selarong', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765631474_be13640e4ea9a0fbd284.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (7, 'A7', 'Goa Cerme', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765631516_a9a56097bb4b44006de8.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (8, 'A8', 'Pasar Seni Gabusan', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765631557_3c13abd890349599b944.jpg', '0', -7.87629410, 110.34999070, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (9, 'A9', 'Kebun Buah Mangunan', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765631611_fcbfe0dad4263a62c837.jpg', '0', -7.94148710, 110.42480030, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (10, 'A10', 'Gunung Pengger', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765631640_a8579c2ee089185a8047.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (11, 'A11', 'Puncak Becici', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765631699_72d968816b0c5cc8ebb9.jpg', '0', -7.90125920, 110.43725920, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (12, 'A12', 'Lintang 1000', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765631907_5acc3f6303ec03a5b6b7.jpg', '0', -7.91505500, 110.43579590, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (13, 'A13', 'Pinus Asri', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765631854_5ebb05760d3441383c2b.png', '0', -7.92057380, 110.43545390, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (14, 'A14', 'Pinus Sari', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765631815_d177a0f62a0cc69f8032.jpg', '0', -7.92581600, 110.43082070, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (15, 'A15', '1000 Batu', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765631749_41a725965e18f45d8640.jpg', '0', -7.87084320, 110.33998420, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (16, 'A16', 'Bukit Panguk', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765632115_f77c4de8d076b20687b0.jpg', '0', -7.95975650, 110.44056540, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (17, 'A17', 'Bojong Sari', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765632073_741465e06568579ff0a5.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (18, 'A18', 'Watu Goyang', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765632038_58092d68f3d900b6581f.jpg', '0', -7.92706000, 110.41206560, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (19, 'A19', 'Potrobayan', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765631998_024fb78ad6d105e362c7.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (20, 'A20', 'LBH Dahromo', 'Obyek Wisata', 'Lorem Ipsum', '1765631963_cbdc75eaf096237b2416.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (21, 'A21', 'La Li Sa Farmer Village', 'Obyek Wisata', 'La Li Sa Farmer’s Village Jogja merupakan destinasi wisata terbaru yang menghadirkan suasana layaknya di Belanda. Hal itu nampak pada salah satu bangunan yang cukup ikonik berupa kincir angin. Selain menyediakan spot spot untuk berfoto, wisata ini juga dilengkapi dengan resto dan coffee shop bagi kalian yang mau nongkrong dan menikmati ragam menu kuliner', '1765632159_e4b43cc2916588780791.jpg', '4', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (22, 'A22', 'Balong Park', 'Obyek Wisata', 'Balong Waterpark adalah taman air keluarga yang berlokasi di Jl. Pleret No. KM 1,5, Banjardadap, Potorono, Kec. Banguntapan, Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat wisata ini terkenal dengan harga tiket masuknya yang terjangkau dan fasilitas yang ramah keluarga', '1765632239_1cee2761cae5614a9f17.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (23, 'A23', 'Galaxi Water Park', 'Obyek Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus luctus arcu finibus lacinia. Integer ipsum purus, facilisis sed congue non, luctus sed mauris. Mauris est tortor, aliquet vel venenatis id, mollis quis erat. Sed ac congue turpis, ut cursus lectus. Pellentesque ultricies purus at elementum luctus. Mauris elementum gravida sagittis. Quisque ac posuere odio, eu efficitur sapien.\r\n\r\nFusce rhoncus dui velit, sed luctus nisi sodales id. Integer a mi ac enim bibendum aliquet. Sed lacinia libero turpis, non venenatis justo ornare ut. In et egestas nibh. Morbi hendrerit tortor dui, eu placerat dui iaculis sit amet. Mauris tempor finibus nisi vitae scelerisque. Vivamus tincidunt, erat non mattis pretium, quam tellus ultricies lacus, nec tincidunt nisl nibh id turpis. Nunc tristique orci posuere, dignissim lorem efficitur, ultricies nisi. Phasellus nec odio in massa elementum egestas et ut enim. Proin convallis tellus sit amet pharetra fermentum. Nam in metus vel nunc luctus faucibus in vitae elit. Ut pretium urna quam, in ornare dui consectetur a. In velit massa, dignissim vel leo sit amet, laoreet volutpat neque. Cras luctus luctus odio, et cursus tortor laoreet vitae. Nulla convallis nisl in lacus posuere, aliquam ornare enim ornare.', '1765632284_83c10055d78c2566a363.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (24, 'A24', 'Grand Puri Water Park', 'Obyek Wisata', 'Grand Puri Water Park adalah tempat wisata air yang berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta, bukan di Kabupaten Sleman.', '1765632342_0103c1ecc9df4ea2fb14.jpg', '0', -7.87787240, 110.35323030, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (25, 'A25', 'Taman Rekreasi Tirto Tamansari', 'Obyek Wisata', 'Taman Rekreasi Tirto Tamansari (juga dikenal sebagai Kolam Renang Tirta Tamansari atau Water Byur Bantul) adalah fasilitas kolam renang umum yang berlokasi di Kabupaten Bantul, bukan di Kabupaten Sleman.', '1765632396_fb3f817c7d331aa9d837.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (26, 'A26', 'Kids Fun Parks', 'Obyek Wisata', 'Kids Fun Park adalah taman rekreasi keluarga terpusat yang berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta, menawarkan lebih dari 25 wahana darat dan air yang cocok untuk anak-anak, remaja, dan dewasa.', '1765632444_279f4be94bafdccb1b0e.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (27, 'A27', 'Selopamioro Adventure park', 'Obyek Wisata', 'Selopamioro Adventure Park adalah objek wisata alam yang berfokus pada aktivitas petualangan di sepanjang aliran Sungai Oyo, berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta', '1765632489_e6c08a5d37c68f1fc595.jpg', '0', -7.94634260, 110.42652730, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (28, 'A28', 'Kebun Pisang Mbah Lasio', 'Obyek Wisata', 'Kebun Pisang Mbah Lasio adalah lokasi budidaya dan penangkaran bibit pisang yang terkenal di Kabupaten Bantul, Daerah Istimewa Yogyakarta, yang dikelola oleh Bapak Lasiyo Syaifudin, seorang petani yang dijuluki \"Profesor Pisang\" karena keahliannya. Tempat ini lebih berfungsi sebagai pusat edukasi dan penyedia bibit unggul, daripada taman rekreasi umum.', '1765632555_cafff57db9aca2d4e2cd.jpeg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (29, 'A29', 'Puncak Sosok', 'Obyek Wisata', 'Puncak Sosok adalah destinasi wisata alam perbukitan populer yang terletak di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini dikenal sebagai lokasi terbaik untuk menikmati pemandangan matahari terbenam (sunset) dan panorama lampu kota Jogja di malam hari (city light) dari ketinggian. ', '1765632597_be64851237d9f1fdd5ef.jpg', '0', -7.87165620, 110.42626620, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (30, 'A30', 'Kawasan Cagar Budaya Jagalan ', 'Obyek Wisata', 'Kawasan Cagar Budaya Jagalan adalah sebuah kampung bersejarah yang merupakan bagian dari Kawasan Cagar Budaya Kotagede, yang dulunya merupakan ibu kota Kerajaan Mataram Islam pertama di era Panembahan Senapati', '1765632656_17f6f79256051f6bb9da.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (31, 'A31', 'Komplek Masjid Kotagede, Sendang Seliran & Makam Raja-Raja Mataram di Kotagede', 'Obyek Wisata', 'Kompleks Masjid Kotagede, Sendang Seliran & Makam Raja-Raja Mataram adalah satu kesatuan situs sejarah dan religi yang terletak di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan peninggalan dari Kerajaan Mataram Islam pertama yang didirikan oleh Panembahan Senapati.', '1765632708_745d5f306da5f289c0c5.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (32, 'A32', 'Makam Raja-Raja Mataram Di Imogiri', 'Obyek Wisata', 'Makam Raja-Raja Mataram di Imogiri adalah kompleks pemakaman terbesar dan paling sakral bagi keturunan dinasti Mataram Islam, termasuk raja-raja dari Kesultanan Yogyakarta dan Kasunanan Surakarta. Terletak di atas Bukit Merak di Kapanewon (Kecamatan) Imogiri, Kabupaten Bantul, Daerah Istimewa Yogyakarta.', '1765632762_421c2f37937d92914e7c.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (33, 'A33', 'Makam Sunan Cirebon', 'Obyek Wisata', 'Makam Sunan Cirebon atau Syarif Hidayatullah (Sunan Gunung Jati) berlokasi di Cirebon, Jawa Barat, bukan di wilayah Bantul atau Yogyakarta. Beliau adalah salah satu dari sembilan Wali Songo (sembilan wali) yang menyebarkan agama Islam di Pulau Jawa.', '1765632805_66cf2e73c545dd177bd5.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (34, 'A34', 'Lembah Sorory', 'Obyek Wisata', 'Lembah Sorory adalah destinasi wisata keluarga berbasis alam yang berlokasi di pinggir Sungai Opak, Kabupaten Bantul, Daerah Istimewa Yogyakarta. Nama \"Sorory\" sendiri merupakan singkatan dari Ngisor Ory (bawah bambu), karena kawasan ini dikelilingi oleh pemandangan asri pohon bambu alami.', '1765632846_b2b1f07699b373b2e4a7.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (35, 'A35', 'Padepokan Sumber Karahayon', 'Museum', 'Padepokan Sumber Karahayon kini lebih dikenal sebagai Museum Padepokan Sumber Karahayon atau Museum Sumber Karahayon. Lokasinya berada di Kabupaten Bantul, Daerah Istimewa Yogyakarta, dan berfungsi sebagai museum sejarah yang terbuka untuk umum.', '1765632906_a822bd4b0cee70a3bda5.jpg', '0', -7.85959730, 110.40931420, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (36, 'A36', 'Museum Muhammadiyah', 'Museum', 'Museum Muhammadiyah adalah museum sejarah modern yang berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Museum ini didedikasikan untuk mendokumentasikan dan menampilkan perjalanan sejarah organisasi Muhammadiyah sejak didirikan oleh KH Ahmad Dahlan. ', '1765633093_e8b19e1a9b549442b244.jpg', '0', -7.83415850, 110.38382830, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (37, 'A37', 'Museum Soeharto', 'Museum', 'Museum HM Soeharto (Memorial Jenderal Besar HM Soeharto) adalah museum sejarah yang berlokasi di tempat kelahiran Presiden kedua Republik Indonesia, Soeharto, di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Museum ini didirikan untuk mengenang jasa dan perjuangan beliau sejak masa kecil hingga menjadi pemimpin bangsa', '1765633134_c187f17cad317ed6adea.jpg', '0', -7.79140950, 110.28046730, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (38, 'A38', 'Museum Wayang Kekayon', 'Museum', 'Museum Wayang Kekayon adalah museum khusus wayang yang berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Museum ini didirikan dengan tujuan melestarikan budaya wayang sebagai warisan budaya nasional yang diakui oleh UNESCO. ', '1765633175_f2fd0eda8c4df8da01d9.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (39, 'A39', 'Museum Wayang Beber Sekartaji', 'Museum', 'Museum Wayang Beber Sekartaji adalah museum unik yang didirikan khusus untuk melestarikan dan menampilkan Wayang Beber, salah satu bentuk seni pewayangan tertua di Indonesia, yang berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. ', '1765633233_7dbf6d603109f69cb79f.jpg', '0', -7.92467700, 110.30824430, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (40, 'A40', 'Museum Laboratorium Sejarah UPY', 'Museum', 'Museum Laboratorium Sejarah UPY (Universitas PGRI Yogyakarta) atau yang kini sering disebut Museorium Sejarah UPY, adalah museum sejarah yang berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Museum ini berfungsi sebagai laboratorium pembelajaran sejarah bagi mahasiswa dan masyarakat umum', '1765633291_9c35c9d535aa5e5d85f0.jpeg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (41, 'A41', 'Museum Purbakala Pleret', 'Museum', 'Museum Purbakala Pleret (Museum Sejarah Purbakala Pleret) adalah museum yang didirikan di kawasan bekas pusat pemerintahan Kerajaan Mataram Islam pada masa Sultan Agung dan Amangkurat I, berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta.', '1765633355_93aeaf972a7a46304d44.jpg', '0', -7.86853040, 110.40536360, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (42, 'A42', 'Museum Tani Jawa ', 'Museum', 'Museum Tani Jawa Indonesia adalah museum khusus yang didirikan untuk melestarikan dan mendokumentasikan alat-alat serta budaya pertanian tradisional Jawa, berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Museum ini merupakan bagian dari inisiatif desa wisata setempat, Desa Candran. ', '1765633413_421fdbc916a4c779b748.jpg', '0', -7.92439630, 110.37151990, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (43, 'A43', 'Museum History Of Java', 'Museum', 'Museum History Of Java berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Museum ini merupakan museum modern berbasis IT pertama di Indonesia yang menyajikan sejarah Pulau Jawa secara interaktif', '1765633469_b4014dab9ed08f8033bb.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (44, 'A44', 'Museum Taman Tino Sidin', 'Museum', 'Museum Taman Tino Sidin berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Museum ini didirikan untuk mengenang jasa dan karya maestro seni rupa dan tokoh pendidikan anak-anak Indonesia, Tino Sidin, yang dikenal melalui acaranya \"Gemar Menggambar\" di TVRI.', '1765633534_b3b2bbc0a4fae42629bf.jpeg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (45, 'A45', 'Museum Rumah Belanda (Musium Bantul Masa Belanda )', 'Museum', 'Museum Bantul Masa Belanda adalah nama resmi dari museum yang Anda maksud, berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Museum ini didirikan untuk mendokumentasikan peninggalan masa kolonial Belanda di wilayah Bantul, terutama yang berkaitan dengan sejarah Pabrik Gula Gondhanglipura. ', '1765633598_9e66c858e49b8c9b7f06.jpeg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (46, 'A46', 'Museum Rumah Garuda', 'Museum', 'Museum Rumah Garuda adalah museum unik yang didirikan secara swadaya oleh Nanang R Hidayat, seorang dosen ISI Yogyakarta, di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Museum ini didedikasikan khusus untuk mendokumentasikan, mengkaji, dan melestarikan sejarah lambang negara Republik Indonesia, yaitu Garuda Pancasila\r\n', '1765633646_d092a93ff91ab055f172.jpg', '0', -7.90904350, 110.34182300, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (47, 'A47', 'Museum Gumuk Pasir (Geomaritime Sains Park)', 'Museum', 'Museum Gumuk Pasir (Geomaritime Science Park) berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Museum ini unik karena merupakan satu-satunya museum di Asia Tenggara yang secara khusus mengkaji fenomena gumuk pasir (bukit pasir) yang terbentuk di wilayah pantai Parangtritis hingga Depok', '1765633701_b6a6bbea12a1200c4069.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (48, 'A48', 'Museum Coklat Monggo', 'Museum', 'Museum Coklat Monggo (Chocolate Monggo Museum & Factory) adalah destinasi wisata edukasi dan kuliner yang berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan pabrik coklat lokal ternama yang didirikan oleh Thierry Detournay dari Belgia. ', '1765633759_f2d13c60248f5f95e677.jpg', '0', -7.84061610, 110.29794910, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (49, 'A49', 'Museum Tembi Rumah Budaya', 'Museum', 'Museum Tembi Rumah Budaya berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan sebuah kompleks budaya yang memadukan museum, penginapan, restoran, dan area pertunjukan, didirikan untuk melestarikan dan menampilkan budaya Jawa. ', '1765633807_96f5144e0ffda292570c.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (50, 'A50', 'Kaki Langit', 'Desa Wisata', 'desa wisata Kaki Langit berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata berbasis alam dan budaya yang terkenal dengan suasana pedesaan yang asri, udara sejuk, dan pemandangan perbukitan yang indah', '1765633862_325f97b8d238de99425f.jpg', '0', -7.93226650, 110.42214630, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (51, 'A51', 'Goa Gajah Lemah Abang', 'Desa Wisata', 'Goa Gajah Lemah Abang adalah objek wisata alam berupa goa alam yang berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Lokasinya berada di kawasan perbukitan Mangunan yang terkenal dengan banyaknya destinasi wisata alam', '1765633916_82e963a72a55252ef3b7.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (52, 'A52', 'songgo langit', 'Desa Wisata', 'desa wisata Songgo Langit berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan area perbukitan yang menawarkan pemandangan alam yang indah, suasana sejuk, dan sering digunakan sebagai spot foto selfie dengan berbagai instalasi unik.', '1765633981_b1da45c9ef19f68792c4.jpg', '0', -7.92821650, 110.43316220, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (53, 'A53', ' Tapak Tilas Sultan Agung (TTSA)', 'Desa Wisata', 'Desa Wisata Tapak Tilas Sultan Agung (TTSA) adalah sebuah kawasan wisata berbasis budaya dan sejarah yang terletak di Dusun Cempluk, Kabupaten Bantul, Daerah Istimewa Yogyakarta. Kawasan ini merupakan bagian dari jalur petilasan (tempat persinggahan) Sultan Agung Hanyokrokusumo, raja terbesar Kerajaan Mataram Islam. ', '1765634130_e9e4bff036c81349df17.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (54, 'A54', 'Wirokerten', 'Desa Wisata', 'Wirokerten adalah sebuah nama kelurahan (desa) dan juga dusun yang berada di wilayah administrasi Kabupaten Bantul, Daerah Istimewa Yogyakarta.', '1765634189_3a5e173fe5ad42dc3504.jpg', '0', -7.85117980, 110.39583770, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (55, 'A55', 'Banyu Nibo Rejosari', 'Desa Wisata', 'desa wisata Banyu Nibo Rejosari berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan destinasi wisata alam pedesaan yang terkenal karena adanya sumber mata air alami dan aliran sungai kecil, menawarkan suasana yang sejuk dan menyegarkan.', '1765634239_5412000ec5ad7a633c07.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (56, 'A56', 'Karangasem', 'Desa Wisata', 'desa wisata Karangasem berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata yang menonjolkan potensi alam pedesaan, seni dan budaya lokal, serta industri kreatif, terutama yang berkaitan dengan kerajinan tangan.', '1765634348_50134d40be3449f7c63c.jpg', '0', -7.92582440, 110.34584200, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (57, 'A57', 'Gunung Cilik', 'Desa Wisata', 'desa wisata Gunung Cilik berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan destinasi wisata alam perbukitan yang menawarkan pemandangan indah, suasana sejuk khas dataran tinggi, dan spot foto menarik, terutama saat matahari terbit atau terbenam. ', '1765634583_2f48b6dd0e80958155e9.jpg', '0', -7.89959350, 110.44035550, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (58, 'A58', 'dahayu giri', 'Desa Wisata', 'Dahayu Giri adalah nama untuk Desa Wisata Girirejo, yang berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Desa wisata ini menawarkan perpaduan pengalaman wisata yang menggabungkan keindahan alam pedesaan, kearifan lokal, dan nuansa spiritual yang kental', '1765634661_b6a3353209aa0f533ee1.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (59, 'A59', 'Karang Tengah', 'Desa Wisata', 'desa wisata Karang Tengah berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata berbasis alam dan pertanian yang menawarkan suasana pedesaan yang tenang dan asri, serta berbagai kegiatan edukatif', '1765634707_8b4f55525343e9eb9932.jpg', '0', -7.93381180, 110.38328860, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (60, 'A60', 'Kebon Agung', 'Desa Wisata', 'desa wisata Kebonagung berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata yang menonjolkan potensi alam pedesaan, pertanian, dan keberadaan situs sejarah lokal. ', '1765634753_c98730493027257baff1.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (61, 'A61', 'Candran', 'Desa Wisata', 'Desa wisata Candran berlokasi di Kabupaten Bantul, Daerah Ististimewa Yogyakarta, dan merupakan bagian integral dari Desa Kebonagung. Tempat ini adalah salah satu desa wisata perintis di Bantul yang fokus pada edukasi pertanian dan budaya Jawa. ', '1765634806_0a2e982419190ded6149.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (62, 'A62', 'Giriloyo Wukirsari', 'Desa Wisata', 'desa wisata Giriloyo Wukirsari berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata unggulan yang terkenal sebagai sentra industri kreatif kerajinan batik tulis dan pusat pelestarian budaya lokal. ', '1765634853_91859750dbb17744f169.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (63, 'A63', 'Bendo', 'Desa Wisata', 'desa wisata Bendo berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata yang menonjolkan potensi alam pedesaan, pertanian, dan keberadaan situs sejarah lokal.', '1765634907_b1b7327a16a9ed2d9969.jpg', '0', -7.80689580, 110.41220850, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (64, 'A64', 'pucung rejo', 'Desa Wisata', 'desa wisata Pucung Rejo berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata yang menonjolkan potensi alam pedesaan, pertanian, dan keberadaan industri kreatif lokal, khususnya kerajinan anyaman bambu', '1765634960_310d5d7624790204a51e.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (65, 'A65', 'Imogiri', 'Desa Wisata', 'Desa Wisata Imogiri berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan kawasan yang kaya akan nilai sejarah, budaya, dan alam perbukitan, menjadikannya salah satu pusat wisata penting di Bantul, terutama dalam konteks warisan Kerajaan Mataram Islam.', '1765635053_57f4f03baad1ab4faf00.jpg', '0', -7.93617910, 110.38592380, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (66, 'A66', 'Sri Kemenut', 'Desa Wisata', 'Desa wisata Sri Kemenut berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata yang menonjolkan potensi alam pedesaan, pertanian, dan keberadaan industri kreatif lokal, khususnya kerajinan tangan dari bahan daur ulang', '1765635834_51f28a4d88e712c27e11.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (67, 'A67', 'Krebet', 'Desa Wisata', 'Desa wisata Krebet berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata unggulan yang terkenal sebagai sentra industri kreatif kerajinan batik kayu, menjadikannya pusat oleh-oleh khas Bantul yang unik.', '1765635880_51e6340c5cdb55b7e8c3.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (68, 'A68', 'Mangir Ki AgengWonoboyo', 'Desa Wisata', 'Desa wisata Mangir Ki Ageng Wonoboyo berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata yang menonjolkan potensi sejarah, budaya lokal, dan alam pedesaan, erat kaitannya dengan kisah tokoh legendaris Ki Ageng Mangir Wonoboyo', '1765635995_e678e24bbceb652c398d.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (69, 'A69', 'Ngembel Mbeji', 'Desa Wisata', 'Desa wisata Ngembel Mbeji berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata yang menonjolkan potensi alam pedesaan, pertanian, dan keberadaan sumber mata air alami, menawarkan suasana yang sejuk dan menyegarkan.\r\n', '1765636045_a796ebee89999f696da0.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (70, 'A70', 'Guwosari Slarong', 'Desa Wisata', 'Desa wisata Guwosari Selarong berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata yang menonjolkan potensi alam, sejarah perjuangan Pangeran Diponegoro, dan budaya lokal, menjadikannya destinasi yang kaya akan edukasi dan petualangan. ', '1765636120_b3900802ccc43b1d0b52.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (71, 'A71', 'Kampung Santan', 'Desa Wisata', 'Desa wisata Kampung Santan berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata yang menonjolkan potensi seni, budaya, dan tradisi lokal masyarakatnya.', '1765635524_c9c47946b32a99b5a688.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (72, 'A72', 'Kalak Ijo', 'Desa Wisata', 'Desa wisata Kalak Ijo berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata yang menonjolkan potensi alam pedesaan, pertanian, dan keberadaan situs sejarah lokal.', '1765635569_280be3e0c5e76c2f0fb2.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (73, 'A73', 'Dewi Gumi', 'Desa Wisata', 'Desa Wisata Dewi Gumi berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. \"Dewi Gumi\" adalah singkatan dari Desa Wisata Gabusan dan Tamanan, sebuah inisiatif kolaboratif antara dua dusun yang menonjolkan potensi seni, budaya, dan kearifan lokal. ', '1765635624_12fe2be527bcb6cdf537.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (74, 'A74', 'Tembi, Timbulharjo', 'Desa Wisata', 'Desa wisata Tembi berlokasi di Dusun Tembi, Kalurahan Timbulharjo, Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata perintis yang terkenal karena adanya Museum Tembi Rumah Budaya, menawarkan perpaduan pengalaman budaya Jawa yang otentik dan suasana pedesaan yang tenang. ', '1765635662_811d5681a80ffc01147e.jpg', '0', -7.87260810, 110.36593130, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (75, 'A75', 'Panggungharjo', 'Desa Wisata', 'Desa wisata Panggungharjo berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata yang menonjolkan potensi seni, budaya, dan tradisi lokal masyarakatnya. ', '1765635721_e9f8fcaf33262dae20de.jpg', '0', -7.83801020, 110.35958140, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (76, 'A76', 'Juron', 'Desa Wisata', 'desa wisata Juron berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata yang menonjolkan potensi alam pedesaan, pertanian, dan keberadaan situs sejarah lokal. ', '1765635151_8bf3639268c01db10b37.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (77, 'A77', 'Kajigelem', 'Desa Wisata', 'desa wisata Kajigelem berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Nama \"Kajigelem\" sendiri merupakan singkatan dari empat dusun yang membentuk desa wisata ini', '1765635234_9a3f2d24357cd2038245.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (78, 'A78', 'Jipangan', 'Desa Wisata', 'Desa wisata Jipangan berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata yang menonjolkan potensi alam pedesaan, pertanian, dan keberadaan industri kreatif lokal, khususnya kerajinan anyaman pandan', '1765635312_15beaacdcd425f2a7aec.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (79, 'A79', 'Manding', 'Desa Wisata', 'Desa wisata Manding berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata yang sangat terkenal sebagai sentra industri kreatif kerajinan kulit, menjadikannya pusat oleh-oleh khas Bantul yang wajib dikunjungi', '1765635361_80c3ddcd47a9b07797cc.jpg', '0', -7.89601940, 110.35724440, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (80, 'A80', 'Ngringinan', 'Desa Wisata', 'Desa wisata Ngringinan berlokasi di Kabupaten Bantul, Daerah Istimewa Yogyakarta. Tempat ini merupakan desa wisata yang menonjolkan potensi sejarah peninggalan masa kolonial Belanda, budaya lokal, dan keramahan masyarakatnya', '1765635452_4374825e5873bd26f2d4.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (81, 'A81', ' Jagalan', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763295662_f86b8e4faed5c7215c87.jpg', '0', -7.82884070, 110.39704380, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (82, 'A82', 'Retno', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763295595_d721710037b155edcc2e.jpeg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (83, 'A83', 'Kampung Surocolo', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763295531_045a5e58e1786fb0f846.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (84, 'A84', 'Panjangrejo', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763295275_d3b64e040f3d923823d5.jpg', '0', -7.96093490, 110.33530710, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (85, 'A85', 'Puton', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763295197_ded7e6cab5878673fb2c.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (86, 'A86', 'Trimulyo', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763295091_f6ab793a51ab5a8d494d.jpg', '0', -7.89024100, 110.38603950, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (87, 'A87', 'Dewa Batu', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763294729_6c4bdd56ac642f745e08.jpeg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (88, 'A88', 'Kiringan', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763294638_fda09dd3eb721334ece1.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (89, 'A89', 'Mangrov', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763294603_dbf84f90cc0c59119ab6.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (90, 'A90', 'Laguna Depok Parangtritis', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763294559_01b422f917adb440e91a.jpg', '0', -8.01087290, 110.29212290, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (91, 'A91', 'Kergan Kampung Gurami', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763294495_f9a46d88174919d3d687.webp', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (92, 'A92', 'dewi sri', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763294414_7347cab2d0a2b4e6973c.jpg', '0', -7.81744970, 110.34913110, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (93, 'A93', 'Mulyodadi', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763294369_3652ab27a1d8f9805b9a.jpeg', '0', -7.94475680, 110.32276190, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (94, 'A94', 'Lopati', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763294333_78d7a4a57aefd6d058ad.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (95, 'A95', 'Pandansari', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763294287_34c1abdf866020b52afc.png', '0', -7.99958190, 110.25293920, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (97, 'A97', 'Carakan', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763294187_fdab18bd906849fbd343.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (98, 'A98', 'Gadung Mlati', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763294125_a66536ac8cb1a45560d1.jpeg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (99, 'A99', 'Kajii ', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763294086_b647976b0f48a74b9b8d.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (100, 'A100', 'Dewi Sinta', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763293941_5efbb7d42b7634419100.jpg', '0', -7.94297060, 110.46181070, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (101, 'A101', 'Mulia', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763293849_68158410ad6a48c32cb0.jpg', '0', -7.83098230, 110.42437240, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (102, 'A102', 'Banjoe Adji', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763293789_a52f516b317565129dc8.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (103, 'A103', 'Bumi Mataram Pleret', 'Desa Wisata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel leo dapibus, sollicitudin velit ut, malesuada sapien. Donec luctus lobortis sem. Maecenas dapibus ligula mauris, sit amet iaculis lectus lacinia eget. Donec mattis, lacus in hendrerit pharetra, tellus purus accumsan erat, ac vulputate arcu massa at lorem. Mauris porta, enim eu consectetur ultricies, enim orci interdum nisl, eget suscipit velit lectus in magna. In ultrices pulvinar eros vel egestas. Duis venenatis purus sit amet ex gravida, ut ullamcorper mauris efficitur. In lorem tortor, scelerisque id urna sit amet, ultrices eleifend lacus. Suspendisse ornare ligula in maximus pulvinar. Proin non enim vel ligula blandit tempus. Vivamus mattis dolor non eros congue, vitae tincidunt orci commodo.', '1763293730_c22001605813ef821e66.jpg', '0', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (106, NULL, 'Goa Cemara', 'Desa Wisata', 'Lorem Ip[sum', '695d3e0cd98d1.png', '23', -8.00004660, 110.25088160, NULL, NULL);
INSERT INTO `tbl_alternatif` VALUES (107, NULL, 'Goa Cemara', 'Desa Wisata', 'Lorem Ip[sum', '695d3e46adee5.png', '23', -8.00004660, 110.25088160, NULL, NULL);

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
-- Table structure for tbl_penilaian_raw
-- ----------------------------
DROP TABLE IF EXISTS `tbl_penilaian_raw`;
CREATE TABLE `tbl_penilaian_raw`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_wisata` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `rating_google` float NULL DEFAULT NULL,
  `jumlah_ulasan` int NULL DEFAULT NULL,
  `jumlah_pengunjung` int NULL DEFAULT NULL,
  `biaya` int NULL DEFAULT NULL,
  `toilet` tinyint NULL DEFAULT NULL,
  `tempat_ibadah` tinyint NULL DEFAULT NULL,
  `parkir` tinyint NULL DEFAULT NULL,
  `indoor` tinyint NULL DEFAULT NULL,
  `kesehatan` tinyint NULL DEFAULT NULL,
  `penerangan` tinyint NULL DEFAULT NULL,
  `jarak_penginapan` float NULL DEFAULT NULL,
  `jarak_kantin` float NULL DEFAULT NULL,
  `jarak_atm` float NULL DEFAULT NULL,
  `jarak_spbu` float NULL DEFAULT NULL,
  `jarak_pusat_kota` float NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_penilaian_raw
-- ----------------------------
INSERT INTO `tbl_penilaian_raw` VALUES (1, 'A1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26672, 26327.7, 0, NULL, 27.3755, '2026-01-06 22:25:36');
INSERT INTO `tbl_penilaian_raw` VALUES (2, 'A2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27232, 26120.1, 0, NULL, 27.1339, '2026-01-06 22:25:40');
INSERT INTO `tbl_penilaian_raw` VALUES (3, 'A3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27594, 26334.6, 0, NULL, 27.3288, '2026-01-06 22:25:47');
INSERT INTO `tbl_penilaian_raw` VALUES (4, 'A4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28357, 26877.2, 0, NULL, 27.8321, '2026-01-06 22:25:55');
INSERT INTO `tbl_penilaian_raw` VALUES (5, 'A8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10210, 9505.63, 0, 1.9951, 10.5546, '2026-01-06 22:26:06');
INSERT INTO `tbl_penilaian_raw` VALUES (6, 'A9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16975, 17838.8, 0, NULL, 18.7445, '2026-01-06 22:26:17');
INSERT INTO `tbl_penilaian_raw` VALUES (7, 'A10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11630, 13546.5, 0, 3.61792, 14.112, '2026-01-06 22:26:32');
INSERT INTO `tbl_penilaian_raw` VALUES (8, 'A11', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13159, 14475.6, 0, NULL, 15.2623, '2026-01-06 22:26:43');
INSERT INTO `tbl_penilaian_raw` VALUES (9, 'A12', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 601006, 599805, 0, NULL, 598.948, '2026-01-06 22:26:55');
INSERT INTO `tbl_penilaian_raw` VALUES (10, 'A13', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15337, 16524.5, 0, NULL, 17.3518, '2026-01-06 22:26:59');
INSERT INTO `tbl_penilaian_raw` VALUES (11, 'A14', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 85940, 86239.3, 710.544, NULL, 85.1903, '2026-01-06 22:27:06');
INSERT INTO `tbl_penilaian_raw` VALUES (12, 'A15', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 235671, 238262, 368.688, NULL, 238.129, '2026-01-06 22:27:15');
INSERT INTO `tbl_penilaian_raw` VALUES (13, 'A16', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19392, 20383.6, 0, NULL, 21.2653, '2026-01-06 22:27:28');
INSERT INTO `tbl_penilaian_raw` VALUES (14, 'A17', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300183, 297669, 0, NULL, 297.557, '2026-01-06 22:27:42');
INSERT INTO `tbl_penilaian_raw` VALUES (15, 'A18', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15121, 15848.7, 3482.26, 3.56455, 16.7776, '2026-01-06 22:27:46');
INSERT INTO `tbl_penilaian_raw` VALUES (16, 'A22', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2753180, 2754210, 208.272, NULL, 2753.2, '2026-01-06 22:27:58');
INSERT INTO `tbl_penilaian_raw` VALUES (17, 'A24', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 395077, 392706, 0, 3.92565, 392.416, '2026-01-06 22:28:05');
INSERT INTO `tbl_penilaian_raw` VALUES (18, 'A27', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17544, 18410.9, 0, NULL, 19.3169, '2026-01-06 22:28:19');
INSERT INTO `tbl_penilaian_raw` VALUES (19, 'A29', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9661, 11084.6, 0, NULL, 11.8272, '2026-01-06 22:28:31');
INSERT INTO `tbl_penilaian_raw` VALUES (20, 'A33', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 239075, 236821, 0, NULL, 236.431, '2026-01-06 22:28:46');
INSERT INTO `tbl_penilaian_raw` VALUES (21, 'A35', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7736, 8913.98, 0, NULL, 9.71383, '2026-01-06 22:28:58');
INSERT INTO `tbl_penilaian_raw` VALUES (22, 'A36', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4611, 5083.73, 0, NULL, 5.9902, '2026-01-06 22:29:09');
INSERT INTO `tbl_penilaian_raw` VALUES (23, 'A37', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11958, 9368.32, 4785.09, NULL, 9.59107, '2026-01-06 22:29:18');
INSERT INTO `tbl_penilaian_raw` VALUES (24, 'A39', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17132, 16024.1, 0, NULL, 17.0459, '2026-01-06 22:29:33');
INSERT INTO `tbl_penilaian_raw` VALUES (25, 'A41', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8586, 9549.11, 3695.92, NULL, 10.4067, '2026-01-06 22:29:42');
INSERT INTO `tbl_penilaian_raw` VALUES (26, 'A42', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14736, 14714.5, 0, NULL, 15.7412, '2026-01-06 22:29:54');
INSERT INTO `tbl_penilaian_raw` VALUES (27, 'A43', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 435583, 433198, 0, NULL, 432.922, '2026-01-06 22:30:05');
INSERT INTO `tbl_penilaian_raw` VALUES (28, 'A46', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13910, 13251.6, 2381.26, NULL, 14.3002, '2026-01-06 22:30:16');
INSERT INTO `tbl_penilaian_raw` VALUES (29, 'A48', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11341, 9184.76, 4622.48, NULL, 9.96089, '2026-01-06 22:30:31');
INSERT INTO `tbl_penilaian_raw` VALUES (30, 'A50', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15910, 16778.1, 0, 4.81221, 17.681, '2026-01-06 22:30:39');
INSERT INTO `tbl_penilaian_raw` VALUES (31, 'A52', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15802, 16861, 0, NULL, 17.7214, '2026-01-06 22:30:47');
INSERT INTO `tbl_penilaian_raw` VALUES (32, 'A54', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6513, 7360.69, 1525.05, NULL, 8.22595, '2026-01-06 22:30:56');
INSERT INTO `tbl_penilaian_raw` VALUES (33, 'A56', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 578733, 581316, 3244.43, NULL, 581.256, '2026-01-06 22:31:04');
INSERT INTO `tbl_penilaian_raw` VALUES (34, 'A57', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 131058, 132727, 0, NULL, 131.847, '2026-01-06 22:31:15');
INSERT INTO `tbl_penilaian_raw` VALUES (35, 'A59', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 442559, 440146, 0, NULL, 439.9, '2026-01-06 22:31:27');
INSERT INTO `tbl_penilaian_raw` VALUES (36, 'A60', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 625641, 626260, 0, NULL, 625.217, '2026-01-06 22:31:39');
INSERT INTO `tbl_penilaian_raw` VALUES (37, 'A61', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52382, 53308, 0, 1.44784, 52.2932, '2026-01-06 22:31:46');
INSERT INTO `tbl_penilaian_raw` VALUES (38, 'A63', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35503, 37963.8, 1037.53, NULL, 37.527, '2026-01-06 22:31:56');
INSERT INTO `tbl_penilaian_raw` VALUES (39, 'A64', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 78496, 78548.5, 0, NULL, 77.5046, '2026-01-06 22:32:07');
INSERT INTO `tbl_penilaian_raw` VALUES (40, 'A65', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15924, 16167, 0, 2.38446, 17.1695, '2026-01-06 22:32:14');
INSERT INTO `tbl_penilaian_raw` VALUES (41, 'A67', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69758, 71988.7, 0, NULL, 71.3516, '2026-01-06 22:32:23');
INSERT INTO `tbl_penilaian_raw` VALUES (42, 'A70', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10946, 9377.71, 2933.99, NULL, 10.3481, '2026-01-06 22:32:36');
INSERT INTO `tbl_penilaian_raw` VALUES (43, 'A71', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1528610, 1526910, 0, 2.93099, 1526.22, '2026-01-06 22:32:44');
INSERT INTO `tbl_penilaian_raw` VALUES (44, 'A74', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9209, 8941.1, 0, NULL, 9.97592, '2026-01-06 22:32:56');
INSERT INTO `tbl_penilaian_raw` VALUES (45, 'A75', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5962, 5135.42, 0, NULL, 6.1837, '2026-01-06 22:33:07');
INSERT INTO `tbl_penilaian_raw` VALUES (46, 'A76', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59762, 62318.3, 0, NULL, 62.022, '2026-01-06 22:33:18');
INSERT INTO `tbl_penilaian_raw` VALUES (47, 'A78', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42238, 44258.1, 1937.89, NULL, 43.5174, '2026-01-06 22:33:27');
INSERT INTO `tbl_penilaian_raw` VALUES (48, 'A79', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58896, 57771, 0, 0.152602, 56.8871, '2026-01-06 22:33:31');
INSERT INTO `tbl_penilaian_raw` VALUES (49, 'A81', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 179218, 181809, 0, NULL, 181.655, '2026-01-06 22:33:45');
INSERT INTO `tbl_penilaian_raw` VALUES (50, 'A82', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11056700, 11055000, 0, NULL, 11054.3, '2026-01-06 22:33:50');
INSERT INTO `tbl_penilaian_raw` VALUES (51, 'A84', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19587, 19054.9, 3775.98, NULL, 20.1039, '2026-01-06 22:33:59');
INSERT INTO `tbl_penilaian_raw` VALUES (52, 'A85', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 205045, 207618, 0, 1.46757, 207.358, '2026-01-06 22:34:08');
INSERT INTO `tbl_penilaian_raw` VALUES (53, 'A86', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10817, 11134, 0, 2.79705, 12.1167, '2026-01-06 22:34:16');
INSERT INTO `tbl_penilaian_raw` VALUES (54, 'A87', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 241357, 243944, 0, NULL, 243.748, '2026-01-06 22:34:23');
INSERT INTO `tbl_penilaian_raw` VALUES (55, 'A88', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 119714, 122287, 0, NULL, 122.03, '2026-01-06 22:34:38');
INSERT INTO `tbl_penilaian_raw` VALUES (56, 'A89', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10039400, 10037500, 0, 1.30242, 10036.9, '2026-01-06 22:34:46');
INSERT INTO `tbl_penilaian_raw` VALUES (57, 'A90', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26471, 25623.2, 0, NULL, 26.6606, '2026-01-06 22:34:56');
INSERT INTO `tbl_penilaian_raw` VALUES (58, 'A92', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11775500, 11773900, 0, NULL, 11773.2, '2026-01-06 22:35:08');
INSERT INTO `tbl_penilaian_raw` VALUES (59, 'A93', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 250153, 252695, 0, NULL, 252.36, '2026-01-06 22:35:19');
INSERT INTO `tbl_penilaian_raw` VALUES (60, 'A94', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10367200, 10365700, 0, NULL, 10365, '2026-01-06 22:35:24');
INSERT INTO `tbl_penilaian_raw` VALUES (61, 'A95', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 682699, 684651, 0, NULL, 683.863, '2026-01-06 22:35:29');
INSERT INTO `tbl_penilaian_raw` VALUES (62, 'A96', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27594, 26334.6, 0, NULL, 27.3288, '2026-01-06 22:35:43');
INSERT INTO `tbl_penilaian_raw` VALUES (63, 'A99', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5417370, 5418490, 244.053, 1.70977, 5417.5, '2026-01-06 22:35:49');
INSERT INTO `tbl_penilaian_raw` VALUES (64, 'A100', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 525273, 527836, 0, 3.05001, 527.85, '2026-01-06 22:35:55');
INSERT INTO `tbl_penilaian_raw` VALUES (65, 'A101', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3083670, 3086230, 0, NULL, 3085.93, '2026-01-06 22:36:06');
INSERT INTO `tbl_penilaian_raw` VALUES (66, 'A104', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1969390, 1967860, 0, NULL, 1967.1, '2026-01-06 22:36:16');

-- ----------------------------
-- Table structure for tbl_penilaian_value_raw
-- ----------------------------
DROP TABLE IF EXISTS `tbl_penilaian_value_raw`;
CREATE TABLE `tbl_penilaian_value_raw`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_wisata` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `C1_rating` int NULL DEFAULT NULL,
  `C2_ulasan` int NULL DEFAULT NULL,
  `C3_pengunjung` int NULL DEFAULT NULL,
  `C4_biaya` int NULL DEFAULT NULL,
  `C5_toilet` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `C6_ibadah` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `C7_parkir` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `C8_indoor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `C9_kesehatan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `C10_penerangan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `C11_penginapan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `C12_kuliner` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `C13_atm` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `C14_spbu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `C15_pusat_kota` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_penilaian_value_raw
-- ----------------------------
INSERT INTO `tbl_penilaian_value_raw` VALUES (1, 'A1', 5, 0, 0, 0, 'Tidak ada', 'Tidak ada', 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '20 – 30 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (2, 'A2', 4, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '20 – 30 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (3, 'A3', 4, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '20 – 30 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (4, 'A4', 4, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Ada, tapi terbatas', 'Ada, tapi terbatas', 'Tidak ada', 'Ada, tapi terbatas', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '20 – 30 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (5, 'A5', 4, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '20 – 30 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (6, 'A6', 4, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '10 – 15 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (7, 'A7', 4, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '20 – 30 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (8, 'A8', 4, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '10 – 15 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (9, 'A11', 5, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '15 – 20 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (10, 'A12', 5, 0, 0, 0, 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '> 30 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (11, 'A13', 4, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Ada, tapi terbatas', 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '15 – 20 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (12, 'A15', 5, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '15 – 20 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (13, 'A16', 4, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '20 – 30 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (14, 'A17', 0, 0, 0, 0, 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '> 30 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (15, 'A18', 4, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Ada, tapi terbatas', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '15 – 20 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (16, 'A19', 0, 0, 0, 0, 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '15 – 20 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (17, 'A21', 4, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '10 – 15 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (18, 'A22', 4, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Ada, tapi terbatas', 'Ada, tapi terbatas', 'Tidak ada', 'Ada, tapi terbatas', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '5 – 10 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (19, 'A23', 4, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Ada, tapi terbatas', 'Ada, tapi terbatas', 'Tidak ada', 'Ada, tapi terbatas', '> 2 km', '> 1 km', '> 1 km', '3 – 5 km', '5 – 10 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (20, 'A24', 4, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Ada, tapi terbatas', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '10 – 15 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (21, 'A25', 4, 0, 0, 0, 'Tidak ada', 'Tidak ada', 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Ada, tapi terbatas', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '10 – 15 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (22, 'A27', 5, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '15 – 20 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (23, 'A29', 5, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Ada, tapi terbatas', 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '10 – 15 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (24, 'A32', 5, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '15 – 20 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (25, 'A34', 4, 0, 0, 0, 'Tidak ada', 'Tidak ada', 'Ada, tapi terbatas', 'Ada, tapi terbatas', 'Tidak ada', 'Ada, tapi terbatas', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '15 – 20 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (26, 'A35', 5, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '5 – 10 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (27, 'A36', 5, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '5 – 7 km', '5 – 10 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (28, 'A37', 4, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '5 – 10 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (29, 'A38', 4, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '3 – 5 km', '5 – 10 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (30, 'A39', 5, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '15 – 20 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (31, 'A40', 5, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '3 – 5 km', '< 5 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (32, 'A41', 5, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '10 – 15 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (33, 'A42', 4, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '15 – 20 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (34, 'A43', 4, 0, 0, 0, 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '5 – 7 km', '5 – 10 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (35, 'A44', 5, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '3 – 5 km', '< 5 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (36, 'A45', 4, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '15 – 20 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (37, 'A46', 5, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '10 – 15 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (38, 'A48', 5, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '5 – 10 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (39, 'A49', 4, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Ada, tapi terbatas', 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '5 – 10 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (40, 'A53', 5, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '15 – 20 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (41, 'A54', 0, 0, 0, 0, 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '5 – 7 km', '5 – 10 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (42, 'A56', 0, 0, 0, 0, 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '> 30 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (43, 'A58', 5, 0, 0, 0, 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '5 – 10 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (44, 'A59', 0, 0, 0, 0, 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '> 30 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (45, 'A60', 0, 0, 0, 0, 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '> 30 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (46, 'A64', 0, 0, 0, 0, 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '20 – 30 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (47, 'A65', 0, 0, 0, 0, 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '15 – 20 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (48, 'A67', 0, 0, 0, 0, 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '10 – 15 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (49, 'A71', 5, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Ada, tapi terbatas', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '10 – 15 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (50, 'A72', 0, 0, 0, 0, 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '10 – 15 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (51, 'A73', 5, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '10 – 15 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (52, 'A74', 0, 0, 0, 0, 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '5 – 10 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (53, 'A75', 0, 0, 0, 0, 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '5 – 7 km', '5 – 10 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (54, 'A76', 0, 0, 0, 0, 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '> 30 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (55, 'A78', 0, 0, 0, 0, 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '5 – 10 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (56, 'A79', 0, 0, 0, 0, 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '10 – 15 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (57, 'A80', 0, 0, 0, 0, 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '15 – 20 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (58, 'A81', 0, 0, 0, 0, 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '> 30 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (59, 'A84', 0, 0, 0, 0, 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '20 – 30 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (60, 'A85', 0, 0, 0, 0, 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '10 – 15 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (61, 'A86', 0, 0, 0, 0, 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '10 – 15 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (62, 'A88', 0, 0, 0, 0, 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '> 30 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (63, 'A90', 0, 0, 0, 0, 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '20 – 30 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (64, 'A93', 0, 0, 0, 0, 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '15 – 20 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (65, 'A94', 0, 0, 0, 0, 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '20 – 30 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (66, 'A95', 0, 0, 0, 0, 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '> 30 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (67, 'A96', 4, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '20 – 30 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (68, 'A99', 5, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '10 – 15 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (69, 'A102', 4, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '20 – 30 km');
INSERT INTO `tbl_penilaian_value_raw` VALUES (70, 'A103', 5, 0, 0, 0, 'Ada, tapi terbatas', 'Tidak ada', 'Ada, tapi terbatas', 'Tidak ada', 'Tidak ada', 'Tidak ada', '> 2 km', '> 1 km', '> 1 km', '> 7 km', '10 – 15 km');

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
INSERT INTO `tbl_user` VALUES (2, 'mentari201', 'Ika Mentari', 'alfarika004@gmail.com', '$2y$10$YBFA1bgtbDBRR.FjzVAUo.U8Gty1beros.VwKXoXGVkpi8xniBQDy', 'user', NULL, '2025-08-29 07:11:11', '2026-01-01 08:28:18', 'b4fc9eaaaa8b8705c4bf70ba79e480679442262564d1bbc50efe18c4e5774ccc', '2026-01-01 09:28:18');
INSERT INTO `tbl_user` VALUES (3, 'pratama', 'Firman Dhani', 'firmanpratama519@gmail.com', '$2y$10$GyanGqU6xehVHA2DM976Ie0I/0kOs/LthebC10KL.9sIUIY1GvJgG', 'user', '1761477015_3fa7c5114c8d01bdad9a.png', '2025-08-29 07:29:33', '2026-01-01 08:25:55', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
