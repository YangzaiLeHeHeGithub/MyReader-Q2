SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for x_book
-- ----------------------------
DROP TABLE IF EXISTS `x_book`;
CREATE TABLE `x_book`  (
                           `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
                           `book_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '书籍ID',
                           `book_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '书籍名称',
                           `author_name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作者名称',
                           `introduce` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '书籍介绍',
                           `chapter_no` bigint(0) NOT NULL COMMENT '章节号',
                           `cover_path` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面路径',
                           `book_status` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '书籍状态',
                           `words` bigint(0) NOT NULL COMMENT '书籍总字数',
                           `tags` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '书籍标签s',
                           `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
                           `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
                           PRIMARY KEY (`id`) USING BTREE,
                           INDEX `idx_book_id`(`book_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of x_book
-- ----------------------------
INSERT INTO `x_book` VALUES (1, '111111111', '王妃她又给人算卦了', '梓云溪', '乡下回京的姜家四姑娘，得罪了权倾朝野的摄政王，人生怕是要完。岂料画风变成这样：姜奈：“王爷，我给你算了一卦。你今天辰时前出门，九成九会遭雷劈。', 2740, 'demoData', '1', 10000, 'demoData', '2022-06-03 15:15:23', '2022-06-03 15:15:23');
INSERT INTO `x_book` VALUES (2, 'c48432abdd4b5c91ead56c4ea68d3172', '茅台镇酒厂起火 上百吨酱酒流入河', 'Jack马', '乡下回京的姜家四姑娘，得罪了权倾朝野的摄政王，人生怕是要完。岂料画风变成这样：姜奈：“王爷，我给你算了一卦。你今天辰时前出门，九成九会遭雷劈。', 2740, 'demoData', '1', 10000, 'demoData', '2022-06-03 15:15:23', '2022-06-03 15:15:23');
INSERT INTO `x_book` VALUES (3, '55a692fc-78ad-4606-b66c-48aa7b8f802b', '江苏省委原副书记张敬华被双开', '赵四', '乡下回京的姜家四姑娘，得罪了权倾朝野的摄政王，人生怕是要完。岂料画风变成这样：姜奈：“王爷，我给你算了一卦。你今天辰时前出门，九成九会遭雷劈。', 2740, 'demoData', '1', 10000, 'demoData', '2022-06-03 15:15:23', '2022-06-03 15:15:23');
INSERT INTO `x_book` VALUES (4, '481cd81ea78e302df772d007c8e01d4d', '6月1日起上海全面恢复生产生活秩序', '梓云溪', '乡下回京的姜家四姑娘，得罪了权倾朝野的摄政王，人生怕是要完。岂料画风变成这样：姜奈：“王爷，我给你算了一卦。你今天辰时前出门，九成九会遭雷劈。', 2740, 'demoData', '1', 10000, 'demoData', '2022-06-03 15:15:23', '2022-06-03 15:15:23');
INSERT INTO `x_book` VALUES (5, 'a23901903d612a71a455fd7172e4973e', '中小学教师性别严重失衡', '梓云溪', '乡下回京的姜家四姑娘，得罪了权倾朝野的摄政王，人生怕是要完。岂料画风变成这样：姜奈：“王爷，我给你算了一卦。你今天辰时前出门，九成九会遭雷劈。', 2740, 'demoData', '1', 10000, 'demoData', '2022-06-03 15:15:23', '2022-06-03 15:15:23');
INSERT INTO `x_book` VALUES (6, '16a59cac21abfcb44458f588098c4975', '赵立坚：台湾哪来的什么总统？', '梓云溪', '乡下回京的姜家四姑娘，得罪了权倾朝野的摄政王，人生怕是要完。岂料画风变成这样：姜奈：“王爷，我给你算了一卦。你今天辰时前出门，九成九会遭雷劈。', 2740, 'demoData', '1', 10000, 'demoData', '2022-06-03 15:15:23', '2022-06-03 15:15:23');
INSERT INTO `x_book` VALUES (7, '232323', '高考报名1193万人再创新高', '梓云溪', '乡下回京的姜家四姑娘，得罪了权倾朝野的摄政王，人生怕是要完。岂料画风变成这样：姜奈：“王爷，我给你算了一卦。你今天辰时前出门，九成九会遭雷劈。', 2740, 'demoData', '1', 10000, 'demoData', '2022-06-03 15:15:23', '2022-06-03 15:15:23');
INSERT INTO `x_book` VALUES (8, '5cbaca32e76bb49ca69657a9145d77ee', '北京1例确诊此前17次核酸阴性', '梓云溪', '乡下回京的姜家四姑娘，得罪了权倾朝野的摄政王，人生怕是要完。岂料画风变成这样：姜奈：“王爷，我给你算了一卦。你今天辰时前出门，九成九会遭雷劈。', 2740, 'demoData', '1', 10000, 'demoData', '2022-06-03 15:15:23', '2022-06-03 15:15:23');

SET FOREIGN_KEY_CHECKS = 1;