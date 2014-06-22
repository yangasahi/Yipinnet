/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50067
Source Host           : localhost:3306
Source Database       : yipin

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2013-04-01 15:50:05
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `active`
-- ----------------------------
DROP TABLE IF EXISTS `active`;
CREATE TABLE `active` (
  `activeid` int(11) NOT NULL auto_increment,
  `activecontent` varchar(255) default NULL,
  `cataname` varchar(255) default NULL,
  PRIMARY KEY  (`activeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of active
-- ----------------------------

-- ----------------------------
-- Table structure for `brand`
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `brandid` int(11) NOT NULL auto_increment,
  `imgaddr` varchar(255) default NULL,
  `cataname` varchar(255) default NULL,
  PRIMARY KEY  (`brandid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brand
-- ----------------------------

-- ----------------------------
-- Table structure for `catalog`
-- ----------------------------
DROP TABLE IF EXISTS `catalog`;
CREATE TABLE `catalog` (
  `catalogid` int(11) NOT NULL auto_increment,
  `cataname` varchar(255) default NULL,
  PRIMARY KEY  (`catalogid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of catalog
-- ----------------------------

-- ----------------------------
-- Table structure for `comments`
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `commentid` int(11) NOT NULL auto_increment,
  `goodsid` varchar(255) NOT NULL,
  `content` varchar(255) default NULL,
  `contenttime` datetime default NULL,
  `userid` int(11) NOT NULL,
  `rank` varchar(255) default NULL,
  PRIMARY KEY  (`commentid`),
  KEY `goodsid` (`goodsid`),
  KEY `userid` (`userid`),
  CONSTRAINT `goodsid` FOREIGN KEY (`goodsid`) REFERENCES `goods` (`goodsid`),
  CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO comments VALUES ('1', '0240523830', 'sdadasd', '2013-01-03 15:16:26', '1', '1');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goodsid` varchar(255) NOT NULL,
  `goodsname` varchar(255) default NULL,
  `introduce` varchar(255) default NULL,
  `image` varchar(255) default NULL,
  `addr` varchar(255) default NULL,
  `istop` varchar(255) default NULL,
  `isrecomm` varchar(255) default NULL,
  `goodstypeid` int(11) NOT NULL,
  `price` varchar(255) default NULL,
  `time` datetime default NULL,
  PRIMARY KEY  (`goodsid`),
  KEY `goodstypeid` (`goodstypeid`),
  CONSTRAINT `goodstypeid` FOREIGN KEY (`goodstypeid`) REFERENCES `goodstype` (`goodstypeid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO goods VALUES ('0240523830', 'Final Cut Pro X ', 'The Focal Easy Guide to Final Cut Pro X', 'http://ecx.images-amazon.com/images/I/41PF3DhGmxL._SL160_.jpg', 'http://www.amazon.com/gp/product/0240523830/ref=s9_al_bw_g14_ir02?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=merchandised-search-3&pf_rd_r=392EFF39D836488B900A&pf_rd_t=101&pf_rd_p=1450618342&pf_rd_i=5', '0', '10', '1', '$17.93', '2013-04-01 14:53:18');
INSERT INTO goods VALUES ('0321862783', 'Plug In with onOne Software', 'A Photographers Guide to Vision and Creative Expression', 'http://ecx.images-amazon.com/images/I/51jOTO4gyLL._SL160_.jpg', 'http://www.amazon.com/gp/product/0321862783/ref=s9_al_bw_g14_ir03?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=merchandised-search-4&pf_rd_r=78011AA87F5242F1975E&pf_rd_t=101&pf_rd_p=1445991302&pf_rd_i=1', '1', '4', '1', '$21.62', '2013-04-01 14:53:29');
INSERT INTO goods VALUES ('0321884833', 'The Photoshop Elements 11 ', 'Book for Digital Photographers (Voices That Matter) [Paperback]', 'http://ecx.images-amazon.com/images/I/51DsC%2BjUU4L._SL160_.jpg', 'http://www.amazon.com/gp/product/0321884833/ref=s9_al_bw_g14_ir01?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=merchandised-search-4&pf_rd_r=78011AA87F5242F1975E&pf_rd_t=101&pf_rd_p=1445991302&pf_rd_i=1', '1', '2', '1', '$27.42', '2013-04-01 14:53:31');
INSERT INTO goods VALUES ('0375758976', 'Van Gogh', 'The Life', 'http://ecx.images-amazon.com/images/I/51%2B57Cd8tsL._SL160_.jpg', 'http://www.amazon.com/Van-Gogh-Life-Steven-Naifeh/dp/0375758976/ref=zg_bs_1876_2', '1', '7', '1', '$14.30', '2013-04-01 14:53:35');
INSERT INTO goods VALUES ('0740797719', 'Color and Light', 'A Guide for the Realist Painter', 'http://ecx.images-amazon.com/images/I/51cGHRQjifL._SL160_.jpg', 'http://www.amazon.com/Color-Light-Guide-Realist-Painter/dp/0740797719/ref=zg_bs_1876_1', '1', '5', '1', '$15.42', '2013-04-01 14:53:57');
INSERT INTO goods VALUES ('0765325950', 'A Memory of Light', '(Wheel of Time (Tor Hardcover)) [Hardcover]', 'http://ecx.images-amazon.com/images/I/51%2BPoCSDgVL._SL75_.jpg', 'http://www.amazon.com/gp/product/0765325950/ref=s9_ri_bw_g14_ir01?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=merchandised-search-5&pf_rd_r=3364AF0B1F404BA29698&pf_rd_t=101&pf_rd_p=1401486582&pf_rd_i=283155', '0', '1', '1', '$14.74', '2013-04-01 14:53:59');
INSERT INTO goods VALUES ('1455525413', 'Yo Declaro', '31 Promesas Para Proclamar Sobre Su Vida (Spanish Edition)', 'http://ecx.images-amazon.com/images/I/51zwdX0prbL._SL160_.jpg', 'http://www.amazon.com/gp/product/1455525413/ref=s9_hps_bw_g14_ir01?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=merchandised-search-3&pf_rd_r=44810F3A06D44684853B&pf_rd_t=101&pf_rd_p=1447733542&pf_rd_i=12290', '1', '10', '1', '$6.74', '2013-04-01 14:54:06');
INSERT INTO goods VALUES ('1455525456', 'Lecturas Diarias Tomadas De', 'Cada Dia es Viernes: 90 Devocionales para ser feliz los 7 días de la semana', 'http://ecx.images-amazon.com/images/I/51PrCx9JqqL._SL160_.jpg', 'http://www.amazon.com/gp/product/1455525456/ref=s9_hps_bw_g14_ir02?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=merchandised-search-3&pf_rd_r=44810F3A06D44684853B&pf_rd_t=101&pf_rd_p=1447733542&pf_rd_i=12290', '1', '10', '1', '$7.12', '2013-04-01 14:54:08');
INSERT INTO goods VALUES ('1576876284', 'LCD', 'LCD [Hardcover]', 'http://ecx.images-amazon.com/images/I/41nXM70EtCL._SL110_.jpg', 'http://www.amazon.com/gp/product/1576876284/ref=s9_al_bw_g14_ir02?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=merchandised-search-4&pf_rd_r=78011AA87F5242F1975E&pf_rd_t=101&pf_rd_p=1445991302&pf_rd_i=1', '1', '3', '1', '$15.07', '2013-04-01 14:54:11');
INSERT INTO goods VALUES ('1592537251', 'The Art of Urban Sketching', 'Drawing On Location Around The World', 'http://ecx.images-amazon.com/images/I/61sX02OZW6L._SL160_.jpg', 'http://www.amazon.com/The-Art-Urban-Sketching-Location/dp/1592537251/ref=zg_mw_tab_pd_mw_2', '1', '9', '1', '$13.81', '2013-04-01 14:54:17');
INSERT INTO goods VALUES ('1600583040', 'Oil & Acrylic', 'Pet Portraits: Learn to paint dogs, cats, horses, and all of your beloved pets-step by step ', 'http://ecx.images-amazon.com/images/I/51swmeAsgjL._SL160_.jpg', 'http://www.amazon.com/Oil-Acrylic-Portraits-beloved-pets-step/dp/1600583040/ref=zg_bsnr_tab_pd_bsnr_3', '1', '8', '1', '$4.56', '2013-04-01 14:54:32');
INSERT INTO goods VALUES ('1854249703', 'In Japan the Crickets Cry', 'How Could Steve Metcalf Forgive the Japanese?', 'http://ecx.images-amazon.com/images/I/41U%2B1fLvKHL._SL160_.jpg', 'http://www.amazon.com/Japan-Crickets-Cry-Metcalf-Japanese/dp/1854249703/ref=sr_1_4?s=books&ie=UTF8&qid=1357191619&sr=1-4&keywords=japan', '1', '10', '1', '$7.40', '2013-04-01 14:54:23');
INSERT INTO goods VALUES ('B000052YM4', 'Alpha Hydrox', 'Foaming Face Wash -- 6 fl oz', 'http://ecx.images-amazon.com/images/I/311ZK987RCL._SL160_.jpg', 'http://www.amazon.com/Alpha-Hydrox-Foaming-Face-Wash/dp/B000052YM4/ref=sr_1_6?ie=UTF8&qid=1357287542&sr=8-6&keywords=wash+face', '1', '9', '7', '$3.94', '2013-04-01 14:54:28');
INSERT INTO goods VALUES ('B00011VDB8', 'Frabill Ice', 'Fishing Pail Pack', 'http://ecx.images-amazon.com/images/I/31MgzeJ8rzL._SL160_.jpg', 'http://www.amazon.com/Frabill-Ice-Fishing-Pail-Pack/dp/B00011VDB8/ref=sr_1_1?s=sporting-goods&ie=UTF8&qid=1356949603&sr=1-1&keywords=ice+fishing', '1', '10', '2', '$12.99', '2013-04-01 14:54:38');
INSERT INTO goods VALUES ('B00027EG9C', 'Neutrogena Fresh', 'Foaming Cleanser, 6.7 Ounce', 'http://ecx.images-amazon.com/images/I/2150GY9NZXL._SL160_.jpg', 'http://www.amazon.com/Neutrogena-Fresh-Foaming-Cleanser-Ounce/dp/B00027EG9C/ref=sr_1_2?ie=UTF8&qid=1357287542&sr=8-2&keywords=wash+face', '1', '7', '7', '$1.99', '2013-04-01 14:54:41');
INSERT INTO goods VALUES ('B0002TMY1C', 'PRO MINI', 'BASKETBALL 4\"(One individual Item)', 'http://ecx.images-amazon.com/images/I/51Zz5qz3meL._SL160_.jpg', 'http://www.amazon.com/PRO-MINI-BASKETBALL-individual-Item/dp/B0002TMY1C/ref=sr_1_3?s=team-sports&ie=UTF8&qid=1357285747&sr=1-3&keywords=basketball', '1', '2', '6', '$0.01', '2013-04-01 14:54:43');
INSERT INTO goods VALUES ('B0009VELG4', 'Basketball', 'Spalding NBA Street Basketball', 'http://ecx.images-amazon.com/images/I/61Tdt9jvj0L._SL160_.jpg', 'http://www.amazon.com/Spalding-NBA-Street-Basketball-Official/dp/B0009VELG4/ref=sr_1_1?s=team-sports&ie=UTF8&qid=1357285646&sr=1-1&keywords=basketball', '1', '1', '6', '$12.95', '2013-04-01 14:54:45');
INSERT INTO goods VALUES ('B000EM2S6I', 'U.S. Divers', 'Expedition Snorkeling Bag', 'http://ecx.images-amazon.com/images/I/51E5NYTGXRL._SL160_.jpg', 'http://www.amazon.com/U-S-Divers-Expedition-Snorkeling-Bag/dp/B000EM2S6I/ref=sr_1_16?s=sporting-goods&ie=UTF8&qid=1356963901&sr=1-16', '1', '7', '2', '$23.10', '2013-04-01 14:54:46');
INSERT INTO goods VALUES ('B000FA9P3S', 'Wilson Mini', 'Wilson Mini Autograph Basketball', 'http://ecx.images-amazon.com/images/I/41zdElKtLLL._SL160_.jpg', 'http://www.amazon.com/Wilson-WTB0503R-Mini-Autograph-Basketball/dp/B000FA9P3S/ref=sr_1_13?s=team-sports&ie=UTF8&qid=1357285747&sr=1-13&keywords=basketball', '1', '4', '6', '$19.99', '2013-04-01 14:54:47');
INSERT INTO goods VALUES ('B000FADVPQ', 'Football', 'Wilson NFL MVP Football', 'http://ecx.images-amazon.com/images/I/51CeEmUshKL._SL160_.jpg', 'http://www.amazon.com/Wilson-F1415-Football-Official-Size/dp/B000FADVPQ/ref=sr_1_1?s=team-sports&ie=UTF8&qid=1357286175&sr=1-1', '1', '6', '6', '$11.99', '2013-04-01 14:54:50');
INSERT INTO goods VALUES ('B000FELZ7S', 'TYR Sport', 'Boys Solid Jammer Swim Suit', 'http://ecx.images-amazon.com/images/I/31c2aO-Ff4L._SL160_.jpg', 'http://www.amazon.com/TYR-Sport-Solid-Jammer-Black/dp/B000FELZ7S/ref=sr_1_19?s=sporting-goods&ie=UTF8&qid=1356962891&sr=1-19', '1', '10', '2', '$22.41', '2013-04-01 14:54:53');
INSERT INTO goods VALUES ('B000H3BCWU', 'Basketball System', 'Spalding Junior Portable Basketball System', 'http://ecx.images-amazon.com/images/I/41rfRQS3gQL._SL160_.jpg', 'http://www.amazon.com/Spalding-Junior-Portable-Basketball-System/dp/B000H3BCWU/ref=sr_1_8?s=team-sports&ie=UTF8&qid=1357285747&sr=1-8&keywords=basketball', '1', '3', '6', '$61.59', '2013-04-01 14:55:03');
INSERT INTO goods VALUES ('B000HBILB2', 'Intex Pillow Rest ', 'Twin Airbed with Built-in Electric Pump', 'http://ecx.images-amazon.com/images/I/41Y%2Bfo0bq4L._SL160_.jpg', 'http://www.amazon.com/Intex-Pillow-Airbed-Built--Electric/dp/B000HBILB2/ref=sr_1_1?s=outdoor-recreation&ie=UTF8&qid=1356684270&sr=1-1', '1', '10', '2', '$39.99', '2013-04-01 14:55:25');
INSERT INTO goods VALUES ('B000L70MQO', 'The Official Bullsh*t', 'The Official Bullsh*t Button (BS Button)', 'http://ecx.images-amazon.com/images/I/515gMSi-4TL._SL160_.jpg', 'http://www.amazon.com/The-Official-Bullsh-Button-BS/dp/B000L70MQO/ref=sr_1_37?ie=UTF8&qid=1357304372&sr=8-37&keywords=gift', '1', '8', '8', '$5.99', '2013-04-01 14:55:25');
INSERT INTO goods VALUES ('B000RB5XZE', 'SE KHK2281-1 12-Inch', 'Dive Knife with Hard Sheath, Blue', 'http://ecx.images-amazon.com/images/I/41rSKe7uRgL._SL160_.jpg', 'http://www.amazon.com/SE-KHK2281-1-12-Inch-Knife-Sheath/dp/B000RB5XZE/ref=sr_1_2?s=sporting-goods&ie=UTF8&qid=1356963262&sr=1-2', '1', '10', '2', '$2.39', '2013-04-01 14:55:26');
INSERT INTO goods VALUES ('B000SSV8AA', 'Adhesive', 'Adhesive Bandages', 'http://ecx.images-amazon.com/images/I/51VacjVngBL._SL160_.jpg', 'http://www.amazon.com/BACON-shaped-themed-Adhesive-Bandages/dp/B000SSV8AA/ref=sr_1_16?ie=UTF8&qid=1357303810&sr=8-16&keywords=gift', '1', '3', '8', '$2.95', '2013-04-01 14:55:27');
INSERT INTO goods VALUES ('B000W7BHJY', 'Coleman Red Canyon', '17-Foot by 10-Foot 8-Person Modified Dome Tent', 'http://ecx.images-amazon.com/images/I/41s31VcMcZL._SL160_.jpg', 'http://www.amazon.com/Coleman-17-Foot-10-Foot-8-Person-Modified/dp/B000W7BHJY/ref=sr_1_1?s=outdoor-recreation&ie=UTF8&qid=1356684063&sr=1-1', '0', '10', '2', '$119.99', '2013-04-01 14:55:32');
INSERT INTO goods VALUES ('B000YM6FK8', 'Speedo Race Lycra', 'Blend Learn to Swim Superpro Swimsuit', 'http://ecx.images-amazon.com/images/I/41lZyeWJaPL._SL160_.jpg', 'http://www.amazon.com/Speedo-Womens-Lycra-Superpro-Swimsuit/dp/B000YM6FK8/ref=sr_1_1?s=sporting-goods&ie=UTF8&qid=1356962751&sr=1-1', '1', '10', '2', '$24.95', '2013-04-01 14:55:32');
INSERT INTO goods VALUES ('B0016OATEG', 'Baby Aspen Five Little Monkeys', 'Gift Set with Keepsake Basket', 'http://ecx.images-amazon.com/images/I/41Doh0BGXnL._SL160_.jpg', 'http://www.amazon.com/Baby-Aspen-Little-Monkeys-Keepsake/dp/B0016OATEG/ref=sr_1_31?ie=UTF8&qid=1357304084&sr=8-31&keywords=gift', '1', '6', '8', '$23.70', '2013-04-01 14:55:36');
INSERT INTO goods VALUES ('B001B4Q5X0', 'Neutrogena Men', 'Invigorating Face Wash, 5.1 Ounce', 'http://ecx.images-amazon.com/images/I/41HpBrrIGPL._SL160_.jpg', 'http://www.amazon.com/Neutrogena-Invigorating-Face-Wash-Ounce/dp/B001B4Q5X0/ref=sr_1_1?ie=UTF8&qid=1357287479&sr=8-1&keywords=wash+face', '1', '6', '7', '$2.99', '2013-04-01 14:55:37');
INSERT INTO goods VALUES ('B001JKTTVQ', 'SHANY Professional 13-Piece Cosmetic', 'Brush Set with Pouch, Set of 12 Brushes and 1 Pouch, Red', 'http://ecx.images-amazon.com/images/I/51OokvHhRmL._SL160_.jpg', 'http://www.amazon.com/SHANY-Professional-13-Piece-Cosmetic-Brushes/dp/B001JKTTVQ/ref=sr_1_1?ie=UTF8&qid=1357287001&sr=8-1&keywords=Cosmetics', '1', '1', '7', '$12.99', '2013-04-01 14:55:38');
INSERT INTO goods VALUES ('B001LEZQA8', 'Butt Station Tape Dispenser', 'Pen & Memo Holder, Paper Clip Storage, Green', 'http://ecx.images-amazon.com/images/I/41Bhv6tH3JL._SL160_.jpg', 'http://www.amazon.com/Station-Dispenser-Holder-Paper-Storage/dp/B001LEZQA8/ref=sr_1_34?ie=UTF8&qid=1357304302&sr=8-34&keywords=gift', '1', '7', '8', '$5.17', '2013-04-01 14:55:42');
INSERT INTO goods VALUES ('B001LVA0XO', '13 Piece Makeup', 'Brush Set and Case', 'http://ecx.images-amazon.com/images/I/41hV0xXfUEL._SL160_.jpg', 'http://www.amazon.com/Piece-Makeup-Brush-Set-Case/dp/B001LVA0XO/ref=sr_1_8?ie=UTF8&qid=1357287088&sr=8-8&keywords=Cosmetics', '1', '5', '7', '$12.50', '2013-04-01 14:55:51');
INSERT INTO goods VALUES ('B001QBJRTM', 'U.S. Divers', 'Admiral 2 Lx / Island Dry Adult Silicone Mask Combo', 'http://ecx.images-amazon.com/images/I/419X8leMC2L._SL160_.jpg', 'http://www.amazon.com/U-S-Divers-Admiral-Island-Silicone/dp/B001QBJRTM/ref=sr_1_1?s=sporting-goods&ie=UTF8&qid=1356963901&sr=1-1', '1', '4', '2', '$30.77', '2013-04-01 14:55:53');
INSERT INTO goods VALUES ('B001UBB9GM', 'iPhone 3G', 'Apple iPhone 3G 8GB', 'http://ecx.images-amazon.com/images/I/41hX65Ii3ML._SL160_.jpg', 'http://www.amazon.com/Apple-iPhone-3G-8GB-Unlocked/dp/B001UBB9GM/ref=sr_1_1?ie=UTF8&qid=1357266110&sr=8-1&keywords=iphone', '1', '1', '3', '$164.00', '2013-04-01 14:55:53');
INSERT INTO goods VALUES ('B00266D41S', 'McNett Saturna', 'Blunt Tip Outdoor and Dive Knife', 'http://ecx.images-amazon.com/images/I/41PfMZSTDCL._SL160_.jpg', 'http://www.amazon.com/McNett-Saturna-Blunt-Outdoor-Yellow/dp/B00266D41S/ref=sr_1_7?s=sporting-goods&ie=UTF8&qid=1356963262&sr=1-7', '1', '1', '2', '$19.10', '2013-04-01 14:56:03');
INSERT INTO goods VALUES ('B0028N6YH0', 'Creative Inspire', 'T12 2.0 Multimedia Speaker System with Bass Flex Technology', 'http://ecx.images-amazon.com/images/I/51J9yuUC0cL._SL160_.jpg', 'http://www.amazon.com/gp/product/B0028N6YH0/ref=s9_hps_bw_g147_ir05?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=center-12&pf_rd_r=0XR362F4ZRWQM8XWZ97X&pf_rd_t=101&pf_rd_p=1446144822&pf_rd_i=759498', '1', '9', '5', '$46.99', '2013-04-01 14:56:08');
INSERT INTO goods VALUES ('B002E0UE8C', 'Pacific Coast ', 'Classic Dried Fruit Tray Gift', 'http://ecx.images-amazon.com/images/I/61qy8EPPNOL._SL160_.jpg', 'http://www.amazon.com/Pacific-Coast-Classic-Dried-Fruit/dp/B002E0UE8C/ref=sr_1_1?ie=UTF8&qid=1357288408&sr=8-1&keywords=gift', '1', '1', '8', '$25.95', '2013-04-01 14:56:12');
INSERT INTO goods VALUES ('B002N0KRG2', 'Glacier Glove', 'ICE BAY Fishing Glove', 'http://ecx.images-amazon.com/images/I/31MgzeJ8rzL._SL160_.jpg', 'http://www.amazon.com/Glacier-Glove-Fishing-Black-X-Large/dp/B002N0KRG2/ref=sr_1_3?s=sporting-goods&ie=UTF8&qid=1356949603&sr=1-3&keywords=ice+fishing', '1', '10', '2', '$17.80', '2013-04-01 14:56:12');
INSERT INTO goods VALUES ('B002PXVYE6', 'Essence', '(1-year auto-renewal)', 'http://ecx.images-amazon.com/images/I/51CikvMMG4L._SL160_.jpg', 'http://www.amazon.com/gp/product/B002PXVYE6/ref=s9_al_bw_g153_ir03?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=center-2&pf_rd_r=1ZFZJKR8096NFVF9Q1NZ&pf_rd_t=101&pf_rd_p=1447793122&pf_rd_i=599858', '0', '6', '1', '$12.00', '2013-04-01 14:56:13');
INSERT INTO goods VALUES ('B002SW68V8', 'Vexilar FL-8se', 'Genz Pack with 19 Degree Ice Flasher - GP0819', 'http://ecx.images-amazon.com/images/I/31sLQONz1uL._SL160_.jpg', 'http://www.amazon.com/gp/product/B002SW68V8/ref=s9_simh_bw_p200_d0_i2?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=center-0-2&pf_rd_r=0M0PNGPP7BMN9Q58WA64&pf_rd_t=101&pf_rd_p=1408050982&pf_rd_i=3421331', '1', '10', '2', '$279.00', '2013-01-04 21:03:47');
INSERT INTO goods VALUES ('B002UDO7XG', 'Kikkerland CD06', 'Kikkerland CD06 Grenade Screwdriver Set', 'http://ecx.images-amazon.com/images/I/41N0NLybSsL._SL160_.jpg', 'http://www.amazon.com/Kikkerland-CD06-Grenade-Screwdriver-Set/dp/B002UDO7XG/ref=sr_1_26?ie=UTF8&qid=1357304084&sr=8-26&keywords=gift', '1', '5', '8', '$3.00', '2013-01-04 21:03:48');
INSERT INTO goods VALUES ('B00372FOXQ', 'Dove Men and Care Body ', ' Body and Face Wash, Extra Fresh, 13.5 Ounce', 'http://ecx.images-amazon.com/images/I/41Qd26hXGKL._SL160_.jpg', 'http://www.amazon.com/Dove-Men-Care-Extra-Fresh/dp/B00372FOXQ/ref=sr_1_5?ie=UTF8&qid=1357287542&sr=8-5&keywords=wash+face', '1', '8', '7', '$2.98', '2013-01-04 21:03:52');
INSERT INTO goods VALUES ('B003EYW0FW', 'Speck Products Apple iPad', 'Fitted Case in Classic Plaid (Pink and Gray), IPAD-FTD-A02A020(1st Generation)', 'http://ecx.images-amazon.com/images/I/51DD45vPZWL._SL160_.jpg', 'http://www.amazon.com/gp/product/B003EYW0FW/ref=s9_hps_bw_g147_ir04?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=center-5&pf_rd_r=0XR362F4ZRWQM8XWZ97X&pf_rd_t=101&pf_rd_p=1446757202&pf_rd_i=759498', '1', '7', '5', '$4.82', '2013-01-04 21:03:56');
INSERT INTO goods VALUES ('B003RXV0HY', 'Celsius', 'Ice Fishing Walleye Lure Kit', 'http://ecx.images-amazon.com/images/I/41MrCn61WkL._SL160_.jpg', 'http://www.amazon.com/Celsius-Ice-Fishing-Walleye-Lure/dp/B003RXV0HY/ref=sr_1_21?s=sporting-goods&ie=UTF8&qid=1356949603&sr=1-21&keywords=ice+fishing', '1', '9', '2', '$7.15', '2013-01-04 21:03:58');
INSERT INTO goods VALUES ('B003VNKNEQ', 'Transcend 16GB', 'Class 10 SDHC Flash Memory Card (TS16GSDHC10E)', 'http://ecx.images-amazon.com/images/I/41ulm7C-b2L._SL160_.jpg', 'http://www.amazon.com/Transcend-Class-Flash-Memory-TS16GSDHC10E/dp/B003VNKNEQ/ref=sr_1_1?s=pc&ie=UTF8&qid=1357279390&sr=1-1', '1', '4', '5', '$13.98', '2013-01-04 21:04:00');
INSERT INTO goods VALUES ('B0041INZCM', 'Marcum VX-1', 'Pro Ice Fishing Sonar System / Flasher - VX-1P', 'http://ecx.images-amazon.com/images/I/41cgWTD0BpL._SL160_.jpg', 'http://www.amazon.com/Marcum-Fishing-Sonar-System-Flasher/dp/B0041INZCM/ref=sr_1_5?s=sporting-goods&ie=UTF8&qid=1356949603&sr=1-5&keywords=ice+fishing', '1', '10', '2', '$279.95', '2013-01-04 21:04:02');
INSERT INTO goods VALUES ('B004287914', 'PADI Enriched', 'Air Diving Crew Pack - Computer', 'http://ecx.images-amazon.com/images/I/51vC4odmE0L._SL160_.jpg', 'http://www.amazon.com/PADI-Enriched-Diving-Crew-Pack/dp/B004287914/ref=sr_1_14?s=sporting-goods&ie=UTF8&qid=1356963901&sr=1-14', '1', '6', '2', '$59.99', '2013-01-04 21:04:04');
INSERT INTO goods VALUES ('B0043X7JRW', 'Samsung Behold T919', 'Unlocked Quadband Phone with 3G Support, GPS and 5MP Camera - US Warranty - Brushed Espresso', 'http://ecx.images-amazon.com/images/I/31IM8Hl3eeL._SL160_.jpg', 'http://www.amazon.com/Samsung-T919-Unlocked-Quadband-Support/dp/B0043X7JRW/ref=sr_1_14?ie=UTF8&qid=1357268300&sr=8-14&keywords=samsung', '1', '9', '3', '$133.15', '2013-01-04 21:04:05');
INSERT INTO goods VALUES ('B004561FTK', 'Ozeri Nouveaux II Electric Wine ', 'Opener in Silver, with Free Foil Cutter, Wine Pourer and Stopper -- Ultimate Wine Gift', 'http://ecx.images-amazon.com/images/I/41sgAQ-c0DL._SL160_.jpg', 'http://www.amazon.com/Ozeri-OW02A-S2-Nouveaux-Electric-Bottle/dp/B004561FTK/ref=sr_1_41?ie=UTF8&qid=1357304461&sr=8-41&keywords=gift', '1', '9', '8', '$19.95', '2013-01-04 21:04:08');
INSERT INTO goods VALUES ('B0045I1EUI', 'Frabill', '28-Inch Medium Enticer Ice Rod and Reel Combination', 'http://ecx.images-amazon.com/images/I/31M%2B0%2BCKgFL._SL160_.jpg', 'http://www.amazon.com/Frabill-28-Inch-Medium-Enticer-Combination/dp/B0045I1EUI/ref=sr_1_13?s=sporting-goods&ie=UTF8&qid=1356949603&sr=1-13&keywords=ice+fishing', '1', '8', '2', '$17.99', '2013-01-04 21:04:08');
INSERT INTO goods VALUES ('B004B9QNJS', 'Samsung i897', 'Captivate Android smartphone Galaxy S ', 'http://ecx.images-amazon.com/images/I/514QrcMMUoL._SL160_.jpg', 'http://www.amazon.com/Samsung-Captivate-Android-smartphone-Unlocked/dp/B004B9QNJS/ref=sr_1_7?ie=UTF8&qid=1357268302&sr=8-7&keywords=samsung', '1', '7', '3', '$183.18', '2013-01-04 21:04:09');
INSERT INTO goods VALUES ('B004BPVF7W', 'SHANY Cosmetics', 'Carry All Train Case with Makeup and Reusable Aluminum Case, Cameo', 'http://ecx.images-amazon.com/images/I/51NMT5u2QgL._SL160_.jpg', 'http://www.amazon.com/SHANY-Cosmetics-Makeup-Reusable-Aluminum/dp/B004BPVF7W/ref=sr_1_4?ie=UTF8&qid=1357287088&sr=8-4&keywords=Cosmetics', '1', '4', '7', '$29.95', '2013-01-04 21:04:10');
INSERT INTO goods VALUES ('B004NLL0TM', 'Armour', ' Volleyball Knee Pad Protective by Under Armour', 'http://ecx.images-amazon.com/images/I/41gpEirtl8L._SL160_.jpg', 'http://www.amazon.com/Armour-Volleyball-Protective-Under-Medium/dp/B004NLL0TM/ref=sr_1_2?s=sporting-goods&ie=UTF8&qid=1357286256&sr=1-2', '1', '8', '6', '$24.99', '2013-01-04 21:04:11');
INSERT INTO goods VALUES ('B004OA72H6', 'iLuv Foam-Padded Neoprene', 'Case for Apple iPad 4, iPad 3rd Generation and iPad 2 - Black (iCC2011BLK)', 'http://ecx.images-amazon.com/images/I/41V0GyeVNqL._SL160_.jpg', 'http://www.amazon.com/gp/product/B004OA72H6/ref=s9_hps_bw_g147_ir01?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=center-5&pf_rd_r=0XR362F4ZRWQM8XWZ97X&pf_rd_t=101&pf_rd_p=1446757202&pf_rd_i=759498', '1', '5', '5', '$10.85', '2013-01-04 21:04:16');
INSERT INTO goods VALUES ('B004SUILFO', 'Microsoft Wired', 'Keyboard 200 for Business - Black', 'http://ecx.images-amazon.com/images/I/41rYklyNsIL._SL160_.jpg', 'http://www.amazon.com/gp/product/B004SUILFO/ref=s9_hps_bw_g147_ir03?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=center-8&pf_rd_r=0XR362F4ZRWQM8XWZ97X&pf_rd_t=101&pf_rd_p=1446757402&pf_rd_i=759498', '1', '8', '5', '$8.14', '2013-01-04 21:04:18');
INSERT INTO goods VALUES ('B004ZLV5PE', 'Apple iPhone 4', 'Apple iPhone 4 16GB (Black)', 'http://ecx.images-amazon.com/images/I/41eVAfYDANL._SL160_.jpg', 'http://www.amazon.com/Apple-iPhone-16GB-Black-AT/dp/B004ZLV5PE/ref=sr_1_3?ie=UTF8&qid=1357266315&sr=8-3&keywords=iphone', '1', '3', '3', '$420.00', '2013-01-04 21:04:20');
INSERT INTO goods VALUES ('B0051F95PA', 'MTM Ice', 'Fishing Rod Box (Red)', 'http://ecx.images-amazon.com/images/I/51ZnBLklo0L._SL160_.jpg', 'http://www.amazon.com/MTM-Ice-Fishing-Rod-Box/dp/B0051F95PA/ref=sr_1_9?s=sporting-goods&ie=UTF8&qid=1356949603&sr=1-9&keywords=ice+fishing', '1', '10', '2', '$33.66', '2013-01-04 21:04:21');
INSERT INTO goods VALUES ('B0052PKF76', 'Speedo Men', 'Rapid Splice Xtra Life Lycra Brief Swimsuit', 'http://ecx.images-amazon.com/images/I/41jCrGJYFXL._SL160_.jpg', 'http://www.amazon.com/Speedo-Rapid-Splice-Lycra-Swimsuit/dp/B0052PKF76/ref=sr_1_20?s=sporting-goods&ie=UTF8&qid=1356962891&sr=1-20', '1', '10', '2', '$25.95', '2013-01-04 21:04:22');
INSERT INTO goods VALUES ('B005JHIYLG', 'Premium Chrome Aluminum', 'Skin Hard Back Case Cover for Apple iPhone 4 4G 4S Silver', 'http://ecx.images-amazon.com/images/I/41PNbDX7MFL._SL160_.jpg', 'http://www.amazon.com/Premium-Chrome-Aluminum-iPhone-Silver/dp/B005JHIYLG/ref=sr_1_7?ie=UTF8&qid=1357266315&sr=8-7&keywords=iphone', '1', '4', '3', '$0.69', '2013-01-04 21:04:24');
INSERT INTO goods VALUES ('B005M1AC2I', 'HP TouchSmart', 'HP TouchSmart 520-1020 Desktop Computer - Black', 'http://ecx.images-amazon.com/images/I/41FO4efCDrL._SL160_.jpg', 'http://www.amazon.com/HP-TouchSmart-520-1020-Desktop-Computer/dp/B005M1AC2I/ref=sr_1_1?s=pc&ie=UTF8&qid=1357273067&sr=1-1', '1', '4', '4', '$899.00', '2013-01-04 21:04:26');
INSERT INTO goods VALUES ('B005UKZAJG', 'SHANY 2012 Edition ', 'All In One Harmony Makeup Kit, 25 Ounce', 'http://ecx.images-amazon.com/images/I/41iYKFzXW8L._SL160_.jpg', 'http://www.amazon.com/SHANY-Edition-Harmony-Makeup-Ounce/dp/B005UKZAJG/ref=sr_1_2?ie=UTF8&qid=1357287088&sr=8-2&keywords=Cosmetics', '1', '2', '7', '$25.99', '2013-01-04 21:04:28');
INSERT INTO goods VALUES ('B0062DPUY0', 'Celsius', '8 in 1 Fishing Clipper', 'http://ecx.images-amazon.com/images/I/41Q2LXQIjXL._SL160_.jpg', 'http://www.amazon.com/Celsius-8-1-Fishing-Clipper/dp/B0062DPUY0/ref=sr_1_14?s=sporting-goods&ie=UTF8&qid=1356953307&sr=1-14&keywords=ice+fishing', '1', '10', '2', '$4.69', '2013-01-04 21:04:29');
INSERT INTO goods VALUES ('B0068PQZFK', 'SAMSUNG', 'SAMSUNG Y GALAXY S-5360 Phone', 'http://ecx.images-amazon.com/images/I/31QfggQYl2L._SL160_.jpg', 'http://www.amazon.com/SAMSUNG-Y-GALAXY-S-5360-Phone/dp/B0068PQZFK/ref=sr_1_4?ie=UTF8&qid=1357268198&sr=8-4&keywords=samsung', '1', '6', '3', '$116.66', '2013-01-04 21:04:31');
INSERT INTO goods VALUES ('B0068Y6CA4', 'Professional 15 Color', 'Concealer Camouflage Makeup Palette', 'http://ecx.images-amazon.com/images/I/41YwGoODbwL._SL160_.jpg', 'http://www.amazon.com/Professional-Concealer-Camouflage-Makeup-Palette/dp/B0068Y6CA4/ref=sr_1_3?ie=UTF8&qid=1357287088&sr=8-3&keywords=Cosmetics', '1', '3', '7', '$1.83', '2013-01-04 21:04:33');
INSERT INTO goods VALUES ('B006H8XQ7I', 'Storm', 'Aluminum Abalone Bar', 'http://ecx.images-amazon.com/images/I/41euxq8fHXL._SL160_.jpg', 'http://www.amazon.com/Storm-Aluminum-Abalone-Bar/dp/B006H8XQ7I/ref=sr_1_23?s=sporting-goods&ie=UTF8&qid=1356963262&sr=1-23', '1', '2', '2', '$12.97', '2013-01-04 21:04:34');
INSERT INTO goods VALUES ('B006INRHLS', 'Mcdavid', 'Compression And Mesh Arm Sleeve with Hexpad Elbow Protection', 'http://ecx.images-amazon.com/images/I/4189vxO7uAL._SL160_.jpg', 'http://www.amazon.com/Mcdavid-Compression-Sleeve-Hexpad-Protection/dp/B006INRHLS/ref=sr_1_5?s=sporting-goods&ie=UTF8&qid=1357286256&sr=1-5', '1', '9', '6', '$20.99', '2013-01-04 21:04:35');
INSERT INTO goods VALUES ('B0071AGJ98', 'NCAA Triple Threat', 'Mini Football - Basketball - Soccer', 'http://ecx.images-amazon.com/images/I/51arz0-cUHL._SL160_.jpg', 'http://www.amazon.com/NCAA-Triple-Threat-Mini-Football/dp/B0071AGJ98/ref=sr_1_20?s=team-sports&ie=UTF8&qid=1357285747&sr=1-20&keywords=basketball', '1', '5', '6', '$19.99', '2013-01-04 21:04:36');
INSERT INTO goods VALUES ('B00750GCBY', 'ASUS ET2410IUTS-B034C', '23.6-Inch HD Desktop (Black)', 'http://ecx.images-amazon.com/images/I/21kHd1gW0HL._SL160_.jpg', 'http://www.amazon.com/ASUS-ET2410IUTS-B034C-23-6-Inch-Desktop-Black/dp/B00750GCBY/ref=sr_1_24?s=pc&ie=UTF8&qid=1357273214&sr=1-24', '1', '7', '4', '$810.48', '2013-01-04 21:04:36');
INSERT INTO goods VALUES ('B007EIDQPW', 'Cressi', '2.5-mm Anti-Slip Socks', 'http://ecx.images-amazon.com/images/I/516WyoPVuIL._SL160_.jpg', 'http://www.amazon.com/Cressi-2-5-mm-Anti-Slip-Socks-Large/dp/B007EIDQPW/ref=sr_1_8?s=sporting-goods&ie=UTF8&qid=1356963901&sr=1-8', '1', '5', '2', '$19.60', '2013-01-04 21:04:39');
INSERT INTO goods VALUES ('B007OWJL98', 'Trident Case', 'AMS-NEW-iPad-BL Kraken AMS Case for New iPad - 1 Pack - Retail Packaging - Blue', 'http://ecx.images-amazon.com/images/I/410X6G2ZfwL._SL160_.jpg', 'http://www.amazon.com/gp/product/B007OWJL98/ref=s9_hps_bw_g147_ir02?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=center-5&pf_rd_r=0XR362F4ZRWQM8XWZ97X&pf_rd_t=101&pf_rd_p=1446757202&pf_rd_i=759498', '1', '6', '5', 'Too low to display', '2013-01-04 21:04:41');
INSERT INTO goods VALUES ('B007Z0OEJQ', 'Samsung GT-S7500', 'Galaxy Ace Plus - Unlocked Phone - International Version - Dark Blue', 'http://ecx.images-amazon.com/images/I/512I6ryv4PL._SL160_.jpg', 'http://www.amazon.com/Samsung-GT-S7500-Galaxy-Plus-International/dp/B007Z0OEJQ/ref=sr_1_10?ie=UTF8&qid=1357268300&sr=8-10&keywords=samsung', '1', '8', '3', '$216.30', '2013-01-04 21:04:45');
INSERT INTO goods VALUES ('B007ZG3068', 'Scuba Diver', 'Knives Diving Gear Knife Navy Seal Sheath Blue', 'http://ecx.images-amazon.com/images/I/41Ez1tVvnaL._SL160_.jpg', 'http://www.amazon.com/Scuba-Diver-Knives-Diving-Sheath/dp/B007ZG3068/ref=sr_1_24?s=sporting-goods&ie=UTF8&qid=1356963262&sr=1-24', '1', '3', '2', '$9.36', '2013-01-04 21:04:46');
INSERT INTO goods VALUES ('B0081AYT80', 'Farrell Professional', 'Elbow Pad Set Pair Neoprene Football Basketball Soccer Lacrosse Sport', 'http://ecx.images-amazon.com/images/I/41XVccoXukL._SL160_.jpg', 'http://www.amazon.com/Farrell-Professional-Neoprene-Football-Basketball/dp/B0081AYT80/ref=sr_1_1?s=sporting-goods&ie=UTF8&qid=1357286256&sr=1-1', '1', '7', '6', '$7.00', '2013-01-04 21:04:47');
INSERT INTO goods VALUES ('B0087T1S6G', 'HTC', 'One V Prepaid Android Phone', 'http://ecx.images-amazon.com/images/I/41UDCwBKZOL._SL160_.jpg', 'http://www.amazon.com/gp/product/B0087T1S6G/ref=s9_ri_bw_g107_ir01?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=center-6&pf_rd_r=08B5QV0ZF2MQGBM67GPQ&pf_rd_t=101&pf_rd_p=1407246642&pf_rd_i=5005582011', '1', '2', '3', '$85.00', '2013-01-04 21:04:49');
INSERT INTO goods VALUES ('B0088L18TU', 'VIZIO All-in-One', 'CA27-A2 27-Inch Desktop', 'http://ecx.images-amazon.com/images/I/41%2B91QqYa1L._SL160_.jpg', 'http://www.amazon.com/VIZIO-All-in-One-CA27-A2-27-Inch-Desktop/dp/B0088L18TU/ref=sr_1_11?s=pc&ie=UTF8&qid=1357273214&sr=1-11', '1', '2', '4', '$999.99', '2013-01-04 21:04:58');
INSERT INTO goods VALUES ('B0091JKFG0', 'Amazon.com Gift Cards', 'In a Gift Box - Free One-Day Shipping', 'http://ecx.images-amazon.com/images/I/41Ssn7zYJAL._SL160_.jpg', 'http://www.amazon.com/Amazon-com-Gift-Card-Plaid-design/dp/B0091JKFG0/ref=sr_1_21?ie=UTF8&qid=1357303964&sr=8-21&keywords=gift', '1', '4', '8', '$50.00', '2013-01-04 21:05:01');
INSERT INTO goods VALUES ('B0097CZJEO', 'Apple iPhone 5', 'Apple iPhone 5 16GB (White)', 'http://ecx.images-amazon.com/images/I/41PNbDX7MFL._SL160_.jpg', 'http://www.amazon.com/Apple-iPhone-16GB-White-Unlocked/dp/B0097CZJEO/ref=sr_1_13?ie=UTF8&qid=1357266315&sr=8-13&keywords=iphone', '1', '5', '3', '$659.95', '2013-01-04 21:05:02');
INSERT INTO goods VALUES ('B009AAU9VQ', 'Acer ', 'AXC600-UR318 Desktop (Black)', 'http://ecx.images-amazon.com/images/I/41dEeQHP1RL._SL160_.jpg', 'http://www.amazon.com/gp/product/B009AAU9VQ/ref=s9_hps_bw_g147_ir02?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=center-7&pf_rd_r=1T8VH1A9RNVEN0NS4Z12&pf_rd_t=101&pf_rd_p=1352960182&pf_rd_i=4972214011', '1', '2', '5', '$419.86', '2013-01-04 21:05:04');
INSERT INTO goods VALUES ('B009AEP6YM', 'Lenovo C345', '20.0-Inch All-In-One Desktop', 'http://ecx.images-amazon.com/images/I/41hQ4PrlrmL._SL160_.jpg', 'http://www.amazon.com/Lenovo-C345-20-0-Inch-All-In-One-Desktop/dp/B009AEP6YM/ref=sr_1_9?s=pc&ie=UTF8&qid=1357273214&sr=1-9', '1', '5', '4', '$493.99', '2013-01-04 21:05:10');
INSERT INTO goods VALUES ('B009AU2JIC', 'HP Pavilion', 'g6-2210us 15.6-Inch Laptop (Black)', 'http://ecx.images-amazon.com/images/I/41za6pirEGL._SL160_.jpg', 'http://www.amazon.com/HP-Pavilion-g6-2210us-15-6-Inch-Laptop/dp/B009AU2JIC/ref=zg_bsnr_2956501011_12', '1', '9', '4', '$439.00', '2013-01-04 21:05:13');
INSERT INTO goods VALUES ('B009B8E9ZO', 'Acer Predator', 'AG3620-UR308 Gaming Desktop (Black)', 'http://ecx.images-amazon.com/images/I/41R1Jk7WAKL._SL160_.jpg', 'http://www.amazon.com/gp/product/B009B8E9ZO/ref=s9_hps_bw_g147_ir01?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=center-7&pf_rd_r=1T8VH1A9RNVEN0NS4Z12&pf_rd_t=101&pf_rd_p=1352960182&pf_rd_i=4972214011', '1', '1', '5', '$849.99', '2013-01-04 21:05:18');
INSERT INTO goods VALUES ('B009DXVVI0', 'Sony VAIO Tap', 'All-in-One Touch Screen SVJ20217CXW 20-Inch Desktop (White)', 'http://ecx.images-amazon.com/images/I/41hQ4PrlrmL._SL160_.jpg', 'http://www.amazon.com/Sony-Screen-SVJ20217CXW-20-Inch-Desktop/dp/B009DXVVI0/ref=sr_1_7?s=pc&ie=UTF8&qid=1357273214&sr=1-7', '1', '1', '4', '$1,199.99', '2013-01-04 21:05:27');
INSERT INTO goods VALUES ('B009LL9VDG', 'Samsung', 'Chromebook (Wi-Fi, 11.6-Inch)', 'http://ecx.images-amazon.com/images/I/41pK4rlZbdL._SL160_.jpg', 'http://www.amazon.com/Samsung-XE303C12-A01US-Chromebook-Wi-Fi-11-6-Inch/dp/B009LL9VDG/ref=zg_bsnr_2956501011_3', '1', '8', '4', '$249.00', '2013-01-04 21:05:35');
INSERT INTO goods VALUES ('B009M3PKJ2', 'Acer A5600U-UR308', '23-Inch Desktop (Black)', 'http://ecx.images-amazon.com/images/I/419pjkRwD-L._SL160_.jpg', 'http://www.amazon.com/Acer-A5600U-UR308-23-Inch-Desktop-Black/dp/B009M3PKJ2/ref=sr_1_14?s=pc&ie=UTF8&qid=1357273214&sr=1-14', '1', '6', '4', '$1,323.99', '2013-01-04 21:05:40');
INSERT INTO goods VALUES ('B009QVQQ5C', 'Acer RL70-UR308', 'Acer RL70-UR308 Desktop (Black)', 'http://ecx.images-amazon.com/images/I/31VErJiXVpL._SL160_.jpg', 'http://www.amazon.com/gp/product/B009QVQQ5C/ref=s9_hps_bw_g147_ir03?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=center-7&pf_rd_r=1T8VH1A9RNVEN0NS4Z12&pf_rd_t=101&pf_rd_p=1352960182&pf_rd_i=4972214011', '1', '3', '5', '$329.98', '2013-01-04 21:05:42');
INSERT INTO goods VALUES ('B009X8EA92', 'HP Envy', 'dv6-7218nr 15.6-Inch Laptop', 'http://ecx.images-amazon.com/images/I/41AnkizY5AL._SL160_.jpg', 'http://www.amazon.com/gp/product/B009X8EA92/ref=s9_hps_bw_g147_ir03?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=center-5&pf_rd_r=0T8MHXNZ90YZR56N4JVG&pf_rd_t=101&pf_rd_p=1380423082&pf_rd_i=2956501011', '1', '3', '4', '$489.99', '2013-01-04 21:05:51');
INSERT INTO goods VALUES ('BT00CTOYI4', 'Amazon.com Gift Cards', 'In a Greeting Card - Free One-Day Shipping', 'http://ecx.images-amazon.com/images/I/41FTIm7ejjL._SL160_.jpg', 'http://www.amazon.com/Amazon-com-Gift-Card-Christmas-design/dp/B005ISQ62U/ref=sr_1_3?ie=UTF8&qid=1357288408&sr=8-3&keywords=gift', '1', '2', '8', '$25.00', '2013-01-04 21:05:52');

-- ----------------------------
-- Table structure for `goodstype`
-- ----------------------------
DROP TABLE IF EXISTS `goodstype`;
CREATE TABLE `goodstype` (
  `goodstypeid` int(11) NOT NULL auto_increment,
  `typename` varchar(255) default NULL,
  PRIMARY KEY  (`goodstypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodstype
-- ----------------------------
INSERT INTO goodstype VALUES ('1', '图书');
INSERT INTO goodstype VALUES ('2', '户外鞋服');
INSERT INTO goodstype VALUES ('3', '手机数码');
INSERT INTO goodstype VALUES ('4', '电脑整机');
INSERT INTO goodstype VALUES ('5', '电脑配件');
INSERT INTO goodstype VALUES ('6', '运动产品');
INSERT INTO goodstype VALUES ('7', '化妆护肤品');
INSERT INTO goodstype VALUES ('8', '礼品箱包');

-- ----------------------------
-- Table structure for `hotcata`
-- ----------------------------
DROP TABLE IF EXISTS `hotcata`;
CREATE TABLE `hotcata` (
  `hotid` int(11) NOT NULL auto_increment,
  `cataname` varchar(255) default NULL,
  `hotname` varchar(255) default NULL,
  PRIMARY KEY  (`hotid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotcata
-- ----------------------------

-- ----------------------------
-- Table structure for `price`
-- ----------------------------
DROP TABLE IF EXISTS `price`;
CREATE TABLE `price` (
  `goodspriceid` int(11) NOT NULL auto_increment,
  `goodsprice` varchar(255) default NULL,
  `pricetime` datetime default NULL,
  `goodsid` varchar(255) NOT NULL,
  PRIMARY KEY  (`goodspriceid`)
) ENGINE=InnoDB AUTO_INCREMENT=950 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of price
-- ----------------------------
INSERT INTO price VALUES ('1', '$20.00', '2012-12-28 16:35:23', '0765325950');
INSERT INTO price VALUES ('2', '$20.00', '2012-12-28 16:48:22', '0765325950');
INSERT INTO price VALUES ('3', '$33.09', '2012-12-28 16:48:25', 'B000HBILB2');
INSERT INTO price VALUES ('4', '$99.99', '2012-12-28 16:48:27', 'B000W7BHJY');
INSERT INTO price VALUES ('5', '$20.00', '2012-12-31 11:48:38', '0765325950');
INSERT INTO price VALUES ('6', '$33.09', '2012-12-31 11:48:39', 'B000HBILB2');
INSERT INTO price VALUES ('7', '$99.99', '2012-12-31 11:48:41', 'B000W7BHJY');
INSERT INTO price VALUES ('8', '$12.00', '2012-12-31 11:48:42', 'B002PXVYE6');
INSERT INTO price VALUES ('9', '$20.00', '2012-12-31 11:49:08', '0765325950');
INSERT INTO price VALUES ('10', '$33.09', '2012-12-31 11:49:13', 'B000HBILB2');
INSERT INTO price VALUES ('11', '$99.99', '2012-12-31 11:49:14', 'B000W7BHJY');
INSERT INTO price VALUES ('12', '$12.00', '2012-12-31 11:49:16', 'B002PXVYE6');
INSERT INTO price VALUES ('13', '$20.00', '2012-12-31 11:49:47', '0765325950');
INSERT INTO price VALUES ('14', '$33.09', '2012-12-31 11:49:49', 'B000HBILB2');
INSERT INTO price VALUES ('15', '$99.99', '2012-12-31 11:49:50', 'B000W7BHJY');
INSERT INTO price VALUES ('16', '$12.00', '2012-12-31 11:49:51', 'B002PXVYE6');
INSERT INTO price VALUES ('17', '$20.00', '2012-12-31 16:33:23', '0765325950');
INSERT INTO price VALUES ('18', '$33.09', '2012-12-31 16:33:40', 'B000HBILB2');
INSERT INTO price VALUES ('19', '$99.99', '2012-12-31 16:33:42', 'B000W7BHJY');
INSERT INTO price VALUES ('20', '$12.00', '2012-12-31 16:33:43', 'B002PXVYE6');
INSERT INTO price VALUES ('21', '$21.54', '2012-12-31 18:02:52', '0321862783');
INSERT INTO price VALUES ('22', '$27.39', '2012-12-31 18:02:53', '0321884833');
INSERT INTO price VALUES ('23', '$15.29', '2012-12-31 18:02:53', '0740797719');
INSERT INTO price VALUES ('24', '$20.00', '2012-12-31 18:02:54', '0765325950');
INSERT INTO price VALUES ('25', '$17.75', '2012-12-31 18:02:54', '1576876284');
INSERT INTO price VALUES ('26', '$33.09', '2012-12-31 18:02:57', 'B000HBILB2');
INSERT INTO price VALUES ('27', '$99.99', '2012-12-31 18:02:59', 'B000W7BHJY');
INSERT INTO price VALUES ('28', '$12.00', '2012-12-31 18:03:00', 'B002PXVYE6');
INSERT INTO price VALUES ('29', '$21.54', '2012-12-31 18:16:44', '0321862783');
INSERT INTO price VALUES ('30', '$27.39', '2012-12-31 18:16:54', '0321884833');
INSERT INTO price VALUES ('31', '$12.51', '2012-12-31 18:16:56', '0375758976');
INSERT INTO price VALUES ('32', '$15.29', '2012-12-31 18:16:57', '0740797719');
INSERT INTO price VALUES ('33', '$20.00', '2012-12-31 18:16:58', '0765325950');
INSERT INTO price VALUES ('34', '$17.75', '2012-12-31 18:16:58', '1576876284');
INSERT INTO price VALUES ('35', '$15.37', '2012-12-31 18:17:00', '1592537251');
INSERT INTO price VALUES ('36', '$5.26', '2012-12-31 18:17:00', '1600583040');
INSERT INTO price VALUES ('37', '$33.09', '2012-12-31 18:17:02', 'B000HBILB2');
INSERT INTO price VALUES ('38', '$99.99', '2012-12-31 18:17:05', 'B000W7BHJY');
INSERT INTO price VALUES ('39', '$12.00', '2012-12-31 18:17:05', 'B002PXVYE6');
INSERT INTO price VALUES ('40', '$21.54', '2012-12-31 19:39:18', '0321862783');
INSERT INTO price VALUES ('41', '$27.39', '2012-12-31 19:39:18', '0321884833');
INSERT INTO price VALUES ('42', '$12.51', '2012-12-31 19:39:22', '0375758976');
INSERT INTO price VALUES ('43', '$15.29', '2012-12-31 19:39:26', '0740797719');
INSERT INTO price VALUES ('44', '$20.00', '2012-12-31 19:39:28', '0765325950');
INSERT INTO price VALUES ('45', '$17.75', '2012-12-31 19:39:29', '1576876284');
INSERT INTO price VALUES ('46', '$15.37', '2012-12-31 19:39:31', '1592537251');
INSERT INTO price VALUES ('47', '$5.26', '2012-12-31 19:39:32', '1600583040');
INSERT INTO price VALUES ('48', '$12.60', '2012-12-31 19:39:32', 'B00011VDB8');
INSERT INTO price VALUES ('49', '$33.09', '2012-12-31 19:39:34', 'B000HBILB2');
INSERT INTO price VALUES ('50', '$99.99', '2012-12-31 19:39:37', 'B000W7BHJY');
INSERT INTO price VALUES ('51', '$17.07', '2012-12-31 19:39:37', 'B002N0KRG2');
INSERT INTO price VALUES ('52', '$12.00', '2012-12-31 19:39:38', 'B002PXVYE6');
INSERT INTO price VALUES ('53', '$7.15', '2012-12-31 19:39:39', 'B003RXV0HY');
INSERT INTO price VALUES ('54', '$279.95', '2012-12-31 19:39:39', 'B0041INZCM');
INSERT INTO price VALUES ('55', '$17.99', '2012-12-31 19:39:40', 'B0045I1EUI');
INSERT INTO price VALUES ('56', '$29.89', '2012-12-31 19:39:40', 'B0051F95PA');
INSERT INTO price VALUES ('57', '$4.69', '2012-12-31 19:39:41', 'B0062DPUY0');
INSERT INTO price VALUES ('58', '$21.54', '2012-12-31 19:45:56', '0321862783');
INSERT INTO price VALUES ('59', '$27.39', '2012-12-31 19:45:57', '0321884833');
INSERT INTO price VALUES ('60', '$12.51', '2012-12-31 19:45:59', '0375758976');
INSERT INTO price VALUES ('61', '$15.29', '2012-12-31 19:46:00', '0740797719');
INSERT INTO price VALUES ('62', '$20.00', '2012-12-31 19:46:00', '0765325950');
INSERT INTO price VALUES ('63', '$17.75', '2012-12-31 19:46:02', '1576876284');
INSERT INTO price VALUES ('64', '$15.37', '2012-12-31 19:46:03', '1592537251');
INSERT INTO price VALUES ('65', '$5.26', '2012-12-31 19:46:13', '1600583040');
INSERT INTO price VALUES ('66', '$12.60', '2012-12-31 19:46:13', 'B00011VDB8');
INSERT INTO price VALUES ('67', '$33.09', '2012-12-31 19:46:16', 'B000HBILB2');
INSERT INTO price VALUES ('68', '$99.99', '2012-12-31 19:46:18', 'B000W7BHJY');
INSERT INTO price VALUES ('69', '$17.07', '2012-12-31 19:46:19', 'B002N0KRG2');
INSERT INTO price VALUES ('70', '$12.00', '2012-12-31 19:46:20', 'B002PXVYE6');
INSERT INTO price VALUES ('71', '$7.15', '2012-12-31 19:46:21', 'B003RXV0HY');
INSERT INTO price VALUES ('72', '$279.95', '2012-12-31 19:46:21', 'B0041INZCM');
INSERT INTO price VALUES ('73', '$17.99', '2012-12-31 19:46:22', 'B0045I1EUI');
INSERT INTO price VALUES ('74', '$29.89', '2012-12-31 19:46:22', 'B0051F95PA');
INSERT INTO price VALUES ('75', '$4.69', '2012-12-31 19:46:23', 'B0062DPUY0');
INSERT INTO price VALUES ('76', '$21.54', '2012-12-31 19:47:45', '0321862783');
INSERT INTO price VALUES ('77', '$27.39', '2012-12-31 19:47:45', '0321884833');
INSERT INTO price VALUES ('78', '$12.51', '2012-12-31 19:47:47', '0375758976');
INSERT INTO price VALUES ('79', '$15.29', '2012-12-31 19:47:49', '0740797719');
INSERT INTO price VALUES ('80', '$20.00', '2012-12-31 19:47:50', '0765325950');
INSERT INTO price VALUES ('81', '$17.75', '2012-12-31 19:47:52', '1576876284');
INSERT INTO price VALUES ('82', '$15.37', '2012-12-31 19:47:53', '1592537251');
INSERT INTO price VALUES ('83', '$5.26', '2012-12-31 19:47:54', '1600583040');
INSERT INTO price VALUES ('84', '$12.60', '2012-12-31 19:47:57', 'B00011VDB8');
INSERT INTO price VALUES ('85', '$33.09', '2012-12-31 19:48:00', 'B000HBILB2');
INSERT INTO price VALUES ('86', '$99.99', '2012-12-31 19:48:02', 'B000W7BHJY');
INSERT INTO price VALUES ('87', '$17.07', '2012-12-31 19:48:02', 'B002N0KRG2');
INSERT INTO price VALUES ('88', '$12.00', '2012-12-31 19:48:03', 'B002PXVYE6');
INSERT INTO price VALUES ('89', '$7.15', '2012-12-31 19:48:04', 'B003RXV0HY');
INSERT INTO price VALUES ('90', '$279.95', '2012-12-31 19:48:04', 'B0041INZCM');
INSERT INTO price VALUES ('91', '$17.99', '2012-12-31 19:48:05', 'B0045I1EUI');
INSERT INTO price VALUES ('92', '$29.89', '2012-12-31 19:48:06', 'B0051F95PA');
INSERT INTO price VALUES ('93', '$4.69', '2012-12-31 19:48:06', 'B0062DPUY0');
INSERT INTO price VALUES ('94', '$21.54', '2012-12-31 19:51:11', '0321862783');
INSERT INTO price VALUES ('95', '$27.39', '2012-12-31 19:51:13', '0321884833');
INSERT INTO price VALUES ('96', '$12.51', '2012-12-31 19:51:14', '0375758976');
INSERT INTO price VALUES ('97', '$15.29', '2012-12-31 19:51:14', '0740797719');
INSERT INTO price VALUES ('98', '$20.00', '2012-12-31 19:51:15', '0765325950');
INSERT INTO price VALUES ('99', '$17.75', '2012-12-31 19:51:15', '1576876284');
INSERT INTO price VALUES ('100', '$15.37', '2012-12-31 19:51:16', '1592537251');
INSERT INTO price VALUES ('101', '$5.26', '2012-12-31 19:51:16', '1600583040');
INSERT INTO price VALUES ('102', '$12.60', '2012-12-31 19:51:17', 'B00011VDB8');
INSERT INTO price VALUES ('103', '$33.09', '2012-12-31 19:51:20', 'B000HBILB2');
INSERT INTO price VALUES ('104', '$99.99', '2012-12-31 19:51:24', 'B000W7BHJY');
INSERT INTO price VALUES ('105', '$17.07', '2012-12-31 19:51:24', 'B002N0KRG2');
INSERT INTO price VALUES ('106', '$12.00', '2012-12-31 19:51:25', 'B002PXVYE6');
INSERT INTO price VALUES ('107', '$7.15', '2012-12-31 19:51:25', 'B003RXV0HY');
INSERT INTO price VALUES ('108', '$279.95', '2012-12-31 19:51:28', 'B0041INZCM');
INSERT INTO price VALUES ('109', '$17.99', '2012-12-31 19:51:30', 'B0045I1EUI');
INSERT INTO price VALUES ('110', '$29.89', '2012-12-31 19:51:33', 'B0051F95PA');
INSERT INTO price VALUES ('111', '$4.69', '2012-12-31 19:51:33', 'B0062DPUY0');
INSERT INTO price VALUES ('112', '$21.54', '2012-12-31 21:55:49', '0321862783');
INSERT INTO price VALUES ('113', '$27.39', '2012-12-31 21:55:50', '0321884833');
INSERT INTO price VALUES ('114', '$12.51', '2012-12-31 21:55:54', '0375758976');
INSERT INTO price VALUES ('115', '$16.25', '2012-12-31 21:55:54', '0740797719');
INSERT INTO price VALUES ('116', '$20.00', '2012-12-31 21:55:58', '0765325950');
INSERT INTO price VALUES ('117', '$17.75', '2012-12-31 21:56:00', '1576876284');
INSERT INTO price VALUES ('118', '$15.37', '2012-12-31 21:56:01', '1592537251');
INSERT INTO price VALUES ('119', '$5.26', '2012-12-31 21:56:02', '1600583040');
INSERT INTO price VALUES ('120', '$12.60', '2012-12-31 21:56:02', 'B00011VDB8');
INSERT INTO price VALUES ('121', '$33.09', '2012-12-31 21:56:05', 'B000HBILB2');
INSERT INTO price VALUES ('122', '$99.99', '2012-12-31 21:56:07', 'B000W7BHJY');
INSERT INTO price VALUES ('123', '$17.07', '2012-12-31 21:56:08', 'B002N0KRG2');
INSERT INTO price VALUES ('124', '$12.00', '2012-12-31 21:56:09', 'B002PXVYE6');
INSERT INTO price VALUES ('125', '$7.15', '2012-12-31 21:56:09', 'B003RXV0HY');
INSERT INTO price VALUES ('126', '$279.95', '2012-12-31 21:56:10', 'B0041INZCM');
INSERT INTO price VALUES ('127', '$17.99', '2012-12-31 21:56:11', 'B0045I1EUI');
INSERT INTO price VALUES ('128', '$29.89', '2012-12-31 21:56:14', 'B0051F95PA');
INSERT INTO price VALUES ('129', '$4.69', '2012-12-31 21:56:15', 'B0062DPUY0');
INSERT INTO price VALUES ('130', '$21.54', '2012-12-31 22:10:57', '0321862783');
INSERT INTO price VALUES ('131', '$27.39', '2012-12-31 22:10:58', '0321884833');
INSERT INTO price VALUES ('132', '$12.51', '2012-12-31 22:11:00', '0375758976');
INSERT INTO price VALUES ('133', '$16.25', '2012-12-31 22:11:01', '0740797719');
INSERT INTO price VALUES ('134', '$20.00', '2012-12-31 22:11:01', '0765325950');
INSERT INTO price VALUES ('135', '$17.75', '2012-12-31 22:11:02', '1576876284');
INSERT INTO price VALUES ('136', '$15.37', '2012-12-31 22:11:02', '1592537251');
INSERT INTO price VALUES ('137', '$5.26', '2012-12-31 22:11:03', '1600583040');
INSERT INTO price VALUES ('138', '$12.60', '2012-12-31 22:11:03', 'B00011VDB8');
INSERT INTO price VALUES ('139', '$33.09', '2012-12-31 22:11:05', 'B000HBILB2');
INSERT INTO price VALUES ('140', '$99.99', '2012-12-31 22:11:08', 'B000W7BHJY');
INSERT INTO price VALUES ('141', '$23.31', '2012-12-31 22:11:09', 'B000YM6FK8');
INSERT INTO price VALUES ('142', '$17.07', '2012-12-31 22:11:13', 'B002N0KRG2');
INSERT INTO price VALUES ('143', '$12.00', '2012-12-31 22:11:13', 'B002PXVYE6');
INSERT INTO price VALUES ('144', '$332.69', '2012-12-31 22:11:14', 'B002SW68V8');
INSERT INTO price VALUES ('145', '$7.15', '2012-12-31 22:11:15', 'B003RXV0HY');
INSERT INTO price VALUES ('146', '$279.95', '2012-12-31 22:11:16', 'B0041INZCM');
INSERT INTO price VALUES ('147', '$17.99', '2012-12-31 22:11:18', 'B0045I1EUI');
INSERT INTO price VALUES ('148', '$29.89', '2012-12-31 22:11:22', 'B0051F95PA');
INSERT INTO price VALUES ('149', '$4.69', '2012-12-31 22:11:23', 'B0062DPUY0');
INSERT INTO price VALUES ('150', '$21.54', '2012-12-31 22:13:22', '0321862783');
INSERT INTO price VALUES ('151', '$27.39', '2012-12-31 22:13:23', '0321884833');
INSERT INTO price VALUES ('152', '$12.51', '2012-12-31 22:13:25', '0375758976');
INSERT INTO price VALUES ('153', '$16.25', '2012-12-31 22:13:26', '0740797719');
INSERT INTO price VALUES ('154', '$20.00', '2012-12-31 22:13:27', '0765325950');
INSERT INTO price VALUES ('155', '$17.75', '2012-12-31 22:13:27', '1576876284');
INSERT INTO price VALUES ('156', '$15.37', '2012-12-31 22:13:28', '1592537251');
INSERT INTO price VALUES ('157', '$5.26', '2012-12-31 22:13:29', '1600583040');
INSERT INTO price VALUES ('158', '$12.60', '2012-12-31 22:13:30', 'B00011VDB8');
INSERT INTO price VALUES ('159', '$27.95', '2012-12-31 22:13:30', 'B000FELZ7S');
INSERT INTO price VALUES ('160', '$33.09', '2012-12-31 22:13:32', 'B000HBILB2');
INSERT INTO price VALUES ('161', '$99.99', '2012-12-31 22:13:34', 'B000W7BHJY');
INSERT INTO price VALUES ('162', '$23.31', '2012-12-31 22:13:35', 'B000YM6FK8');
INSERT INTO price VALUES ('163', '$17.07', '2012-12-31 22:13:35', 'B002N0KRG2');
INSERT INTO price VALUES ('164', '$12.00', '2012-12-31 22:13:37', 'B002PXVYE6');
INSERT INTO price VALUES ('165', '$332.69', '2012-12-31 22:13:38', 'B002SW68V8');
INSERT INTO price VALUES ('166', '$7.15', '2012-12-31 22:13:40', 'B003RXV0HY');
INSERT INTO price VALUES ('167', '$279.95', '2012-12-31 22:13:42', 'B0041INZCM');
INSERT INTO price VALUES ('168', '$17.99', '2012-12-31 22:13:46', 'B0045I1EUI');
INSERT INTO price VALUES ('169', '$29.89', '2012-12-31 22:13:46', 'B0051F95PA');
INSERT INTO price VALUES ('170', '$25.95', '2012-12-31 22:13:47', 'B0052PKF76');
INSERT INTO price VALUES ('171', '$4.69', '2012-12-31 22:13:47', 'B0062DPUY0');
INSERT INTO price VALUES ('172', '$21.54', '2012-12-31 22:15:51', '0321862783');
INSERT INTO price VALUES ('173', '$27.39', '2012-12-31 22:15:52', '0321884833');
INSERT INTO price VALUES ('174', '$12.51', '2012-12-31 22:15:54', '0375758976');
INSERT INTO price VALUES ('175', '$16.25', '2012-12-31 22:15:55', '0740797719');
INSERT INTO price VALUES ('176', '$20.00', '2012-12-31 22:15:57', '0765325950');
INSERT INTO price VALUES ('177', '$17.75', '2012-12-31 22:15:58', '1576876284');
INSERT INTO price VALUES ('178', '$15.37', '2012-12-31 22:15:58', '1592537251');
INSERT INTO price VALUES ('179', '$5.26', '2012-12-31 22:15:59', '1600583040');
INSERT INTO price VALUES ('180', '$12.60', '2012-12-31 22:16:00', 'B00011VDB8');
INSERT INTO price VALUES ('181', '$27.95', '2012-12-31 22:16:02', 'B000FELZ7S');
INSERT INTO price VALUES ('182', '$33.09', '2012-12-31 22:16:05', 'B000HBILB2');
INSERT INTO price VALUES ('183', '$12.98', '2012-12-31 22:16:06', 'B000RB5XZE');
INSERT INTO price VALUES ('184', '$99.99', '2012-12-31 22:16:11', 'B000W7BHJY');
INSERT INTO price VALUES ('185', '$23.31', '2012-12-31 22:16:13', 'B000YM6FK8');
INSERT INTO price VALUES ('186', '$17.07', '2012-12-31 22:16:14', 'B002N0KRG2');
INSERT INTO price VALUES ('187', '$12.00', '2012-12-31 22:16:14', 'B002PXVYE6');
INSERT INTO price VALUES ('188', '$332.69', '2012-12-31 22:16:14', 'B002SW68V8');
INSERT INTO price VALUES ('189', '$7.15', '2012-12-31 22:16:16', 'B003RXV0HY');
INSERT INTO price VALUES ('190', '$279.95', '2012-12-31 22:16:17', 'B0041INZCM');
INSERT INTO price VALUES ('191', '$17.99', '2012-12-31 22:16:17', 'B0045I1EUI');
INSERT INTO price VALUES ('192', '$29.89', '2012-12-31 22:16:18', 'B0051F95PA');
INSERT INTO price VALUES ('193', '$25.95', '2012-12-31 22:16:22', 'B0052PKF76');
INSERT INTO price VALUES ('194', '$4.69', '2012-12-31 22:16:25', 'B0062DPUY0');
INSERT INTO price VALUES ('195', '$21.54', '2012-12-31 22:20:39', '0321862783');
INSERT INTO price VALUES ('196', '$27.39', '2012-12-31 22:20:41', '0321884833');
INSERT INTO price VALUES ('197', '$12.51', '2012-12-31 22:20:43', '0375758976');
INSERT INTO price VALUES ('198', '$16.25', '2012-12-31 22:20:43', '0740797719');
INSERT INTO price VALUES ('199', '$20.00', '2012-12-31 22:20:45', '0765325950');
INSERT INTO price VALUES ('200', '$17.75', '2012-12-31 22:20:46', '1576876284');
INSERT INTO price VALUES ('201', '$15.37', '2012-12-31 22:20:46', '1592537251');
INSERT INTO price VALUES ('202', '$5.26', '2012-12-31 22:20:47', '1600583040');
INSERT INTO price VALUES ('203', '$12.60', '2012-12-31 22:20:47', 'B00011VDB8');
INSERT INTO price VALUES ('204', '$27.95', '2012-12-31 22:20:48', 'B000FELZ7S');
INSERT INTO price VALUES ('205', '$33.09', '2012-12-31 22:20:50', 'B000HBILB2');
INSERT INTO price VALUES ('206', '$12.98', '2012-12-31 22:20:51', 'B000RB5XZE');
INSERT INTO price VALUES ('207', '$99.99', '2012-12-31 22:20:53', 'B000W7BHJY');
INSERT INTO price VALUES ('208', '$23.31', '2012-12-31 22:20:55', 'B000YM6FK8');
INSERT INTO price VALUES ('209', '$19.10', '2012-12-31 22:20:56', 'B00266D41S');
INSERT INTO price VALUES ('210', '$17.07', '2012-12-31 22:20:56', 'B002N0KRG2');
INSERT INTO price VALUES ('211', '$12.00', '2012-12-31 22:20:58', 'B002PXVYE6');
INSERT INTO price VALUES ('212', '$332.69', '2012-12-31 22:20:59', 'B002SW68V8');
INSERT INTO price VALUES ('213', '$7.15', '2012-12-31 22:20:59', 'B003RXV0HY');
INSERT INTO price VALUES ('214', '$279.95', '2012-12-31 22:21:03', 'B0041INZCM');
INSERT INTO price VALUES ('215', '$17.99', '2012-12-31 22:21:05', 'B0045I1EUI');
INSERT INTO price VALUES ('216', '$29.89', '2012-12-31 22:21:06', 'B0051F95PA');
INSERT INTO price VALUES ('217', '$25.95', '2012-12-31 22:21:08', 'B0052PKF76');
INSERT INTO price VALUES ('218', '$4.69', '2012-12-31 22:21:09', 'B0062DPUY0');
INSERT INTO price VALUES ('219', '$21.54', '2012-12-31 22:26:21', '0321862783');
INSERT INTO price VALUES ('220', '$27.39', '2012-12-31 22:26:21', '0321884833');
INSERT INTO price VALUES ('221', '$12.51', '2012-12-31 22:26:24', '0375758976');
INSERT INTO price VALUES ('222', '$16.25', '2012-12-31 22:26:25', '0740797719');
INSERT INTO price VALUES ('223', '$20.00', '2012-12-31 22:26:26', '0765325950');
INSERT INTO price VALUES ('224', '$17.75', '2012-12-31 22:26:30', '1576876284');
INSERT INTO price VALUES ('225', '$15.37', '2012-12-31 22:26:34', '1592537251');
INSERT INTO price VALUES ('226', '$5.26', '2012-12-31 22:26:38', '1600583040');
INSERT INTO price VALUES ('227', '$12.60', '2012-12-31 22:26:38', 'B00011VDB8');
INSERT INTO price VALUES ('228', '$27.95', '2012-12-31 22:26:39', 'B000FELZ7S');
INSERT INTO price VALUES ('229', '$33.09', '2012-12-31 22:26:47', 'B000HBILB2');
INSERT INTO price VALUES ('230', '$12.98', '2012-12-31 22:26:47', 'B000RB5XZE');
INSERT INTO price VALUES ('231', '$99.99', '2012-12-31 22:26:50', 'B000W7BHJY');
INSERT INTO price VALUES ('232', '$23.31', '2012-12-31 22:26:50', 'B000YM6FK8');
INSERT INTO price VALUES ('233', '$30.48', '2012-12-31 22:26:53', 'B001QBJRTM');
INSERT INTO price VALUES ('234', '$19.10', '2012-12-31 22:26:53', 'B00266D41S');
INSERT INTO price VALUES ('235', '$17.07', '2012-12-31 22:26:55', 'B002N0KRG2');
INSERT INTO price VALUES ('236', '$12.00', '2012-12-31 22:26:56', 'B002PXVYE6');
INSERT INTO price VALUES ('237', '$332.69', '2012-12-31 22:26:58', 'B002SW68V8');
INSERT INTO price VALUES ('238', '$7.15', '2012-12-31 22:27:00', 'B003RXV0HY');
INSERT INTO price VALUES ('239', '$279.95', '2012-12-31 22:27:00', 'B0041INZCM');
INSERT INTO price VALUES ('240', '$17.99', '2012-12-31 22:27:01', 'B0045I1EUI');
INSERT INTO price VALUES ('241', '$29.89', '2012-12-31 22:27:02', 'B0051F95PA');
INSERT INTO price VALUES ('242', '$25.95', '2012-12-31 22:27:03', 'B0052PKF76');
INSERT INTO price VALUES ('243', '$4.69', '2012-12-31 22:27:03', 'B0062DPUY0');
INSERT INTO price VALUES ('244', '$12.97', '2012-12-31 22:27:04', 'B006H8XQ7I');
INSERT INTO price VALUES ('245', '$9.36', '2012-12-31 22:27:05', 'B007ZG3068');
INSERT INTO price VALUES ('246', '$21.54', '2012-12-31 22:31:03', '0321862783');
INSERT INTO price VALUES ('247', '$27.39', '2012-12-31 22:31:04', '0321884833');
INSERT INTO price VALUES ('248', '$12.51', '2012-12-31 22:31:04', '0375758976');
INSERT INTO price VALUES ('249', '$16.25', '2012-12-31 22:31:05', '0740797719');
INSERT INTO price VALUES ('250', '$20.00', '2012-12-31 22:31:06', '0765325950');
INSERT INTO price VALUES ('251', '$17.75', '2012-12-31 22:31:06', '1576876284');
INSERT INTO price VALUES ('252', '$15.37', '2012-12-31 22:31:08', '1592537251');
INSERT INTO price VALUES ('253', '$5.26', '2012-12-31 22:31:09', '1600583040');
INSERT INTO price VALUES ('254', '$12.60', '2012-12-31 22:31:09', 'B00011VDB8');
INSERT INTO price VALUES ('255', '$23.03', '2012-12-31 22:31:10', 'B000EM2S6I');
INSERT INTO price VALUES ('256', '$27.95', '2012-12-31 22:31:14', 'B000FELZ7S');
INSERT INTO price VALUES ('257', '$33.09', '2012-12-31 22:31:16', 'B000HBILB2');
INSERT INTO price VALUES ('258', '$12.98', '2012-12-31 22:31:17', 'B000RB5XZE');
INSERT INTO price VALUES ('259', '$99.99', '2012-12-31 22:31:19', 'B000W7BHJY');
INSERT INTO price VALUES ('260', '$23.31', '2012-12-31 22:31:23', 'B000YM6FK8');
INSERT INTO price VALUES ('261', '$30.48', '2012-12-31 22:31:25', 'B001QBJRTM');
INSERT INTO price VALUES ('262', '$19.10', '2012-12-31 22:31:27', 'B00266D41S');
INSERT INTO price VALUES ('263', '$17.07', '2012-12-31 22:31:31', 'B002N0KRG2');
INSERT INTO price VALUES ('264', '$12.00', '2012-12-31 22:31:35', 'B002PXVYE6');
INSERT INTO price VALUES ('265', '$332.69', '2012-12-31 22:31:36', 'B002SW68V8');
INSERT INTO price VALUES ('266', '$7.15', '2012-12-31 22:31:37', 'B003RXV0HY');
INSERT INTO price VALUES ('267', '$279.95', '2012-12-31 22:31:38', 'B0041INZCM');
INSERT INTO price VALUES ('268', '$59.99', '2012-12-31 22:31:38', 'B004287914');
INSERT INTO price VALUES ('269', '$17.99', '2012-12-31 22:31:40', 'B0045I1EUI');
INSERT INTO price VALUES ('270', '$29.89', '2012-12-31 22:31:41', 'B0051F95PA');
INSERT INTO price VALUES ('271', '$25.95', '2012-12-31 22:31:41', 'B0052PKF76');
INSERT INTO price VALUES ('272', '$4.69', '2012-12-31 22:31:45', 'B0062DPUY0');
INSERT INTO price VALUES ('273', '$12.97', '2012-12-31 22:31:46', 'B006H8XQ7I');
INSERT INTO price VALUES ('274', '$19.60', '2012-12-31 22:31:47', 'B007EIDQPW');
INSERT INTO price VALUES ('275', '$9.36', '2012-12-31 22:31:47', 'B007ZG3068');
INSERT INTO price VALUES ('276', '$21.79', '2013-01-03 12:52:14', '0321862783');
INSERT INTO price VALUES ('277', '$27.38', '2013-01-03 12:52:14', '0321884833');
INSERT INTO price VALUES ('278', '$12.51', '2013-01-03 12:52:17', '0375758976');
INSERT INTO price VALUES ('279', '$15.29', '2013-01-03 12:52:21', '0740797719');
INSERT INTO price VALUES ('280', '$20.00', '2013-01-03 12:52:21', '0765325950');
INSERT INTO price VALUES ('281', '$17.75', '2013-01-03 12:52:22', '1576876284');
INSERT INTO price VALUES ('282', '$15.37', '2013-01-03 12:52:22', '1592537251');
INSERT INTO price VALUES ('283', '$5.33', '2013-01-03 12:52:23', '1600583040');
INSERT INTO price VALUES ('284', '$12.60', '2013-01-03 12:52:23', 'B00011VDB8');
INSERT INTO price VALUES ('285', '$23.03', '2013-01-03 12:52:26', 'B000EM2S6I');
INSERT INTO price VALUES ('286', '$27.95', '2013-01-03 12:52:27', 'B000FELZ7S');
INSERT INTO price VALUES ('287', '$33.09', '2013-01-03 12:52:29', 'B000HBILB2');
INSERT INTO price VALUES ('288', '$20.63', '2013-01-03 12:52:29', 'B000RB5XZE');
INSERT INTO price VALUES ('289', '$117.89', '2013-01-03 12:52:34', 'B000W7BHJY');
INSERT INTO price VALUES ('290', '$23.31', '2013-01-03 12:52:36', 'B000YM6FK8');
INSERT INTO price VALUES ('291', '$29.99', '2013-01-03 12:52:38', 'B001QBJRTM');
INSERT INTO price VALUES ('292', '$19.10', '2013-01-03 12:52:38', 'B00266D41S');
INSERT INTO price VALUES ('293', '$17.07', '2013-01-03 12:52:39', 'B002N0KRG2');
INSERT INTO price VALUES ('294', '$12.00', '2013-01-03 12:52:40', 'B002PXVYE6');
INSERT INTO price VALUES ('295', '$334.09', '2013-01-03 12:52:41', 'B002SW68V8');
INSERT INTO price VALUES ('296', '$7.15', '2013-01-03 12:52:41', 'B003RXV0HY');
INSERT INTO price VALUES ('297', '$279.95', '2013-01-03 12:52:42', 'B0041INZCM');
INSERT INTO price VALUES ('298', '$59.99', '2013-01-03 12:52:42', 'B004287914');
INSERT INTO price VALUES ('299', '$17.99', '2013-01-03 12:52:44', 'B0045I1EUI');
INSERT INTO price VALUES ('300', '$29.89', '2013-01-03 12:52:45', 'B0051F95PA');
INSERT INTO price VALUES ('301', '$25.95', '2013-01-03 12:52:47', 'B0052PKF76');
INSERT INTO price VALUES ('302', '$4.69', '2013-01-03 12:52:48', 'B0062DPUY0');
INSERT INTO price VALUES ('303', '$12.97', '2013-01-03 12:52:48', 'B006H8XQ7I');
INSERT INTO price VALUES ('304', '$19.60', '2013-01-03 12:52:49', 'B007EIDQPW');
INSERT INTO price VALUES ('305', '$9.36', '2013-01-03 12:52:53', 'B007ZG3068');
INSERT INTO price VALUES ('306', '$21.79', '2013-01-03 13:41:51', '0321862783');
INSERT INTO price VALUES ('307', '$27.38', '2013-01-03 13:41:52', '0321884833');
INSERT INTO price VALUES ('308', '$12.51', '2013-01-03 13:41:52', '0375758976');
INSERT INTO price VALUES ('309', '$15.29', '2013-01-03 13:41:53', '0740797719');
INSERT INTO price VALUES ('310', '$20.00', '2013-01-03 13:41:54', '0765325950');
INSERT INTO price VALUES ('311', '$11.09', '2013-01-03 13:41:57', '1455525413');
INSERT INTO price VALUES ('312', '$11.19', '2013-01-03 13:41:58', '1455525456');
INSERT INTO price VALUES ('313', '$17.75', '2013-01-03 13:42:00', '1576876284');
INSERT INTO price VALUES ('314', '$15.37', '2013-01-03 13:42:02', '1592537251');
INSERT INTO price VALUES ('315', '$5.33', '2013-01-03 13:42:02', '1600583040');
INSERT INTO price VALUES ('316', '$7.98', '2013-01-03 13:42:03', '1854249703');
INSERT INTO price VALUES ('317', '$12.60', '2013-01-03 13:42:03', 'B00011VDB8');
INSERT INTO price VALUES ('318', '$23.03', '2013-01-03 13:42:05', 'B000EM2S6I');
INSERT INTO price VALUES ('319', '$27.95', '2013-01-03 13:42:26', 'B000FELZ7S');
INSERT INTO price VALUES ('320', '$33.09', '2013-01-03 13:42:31', 'B000HBILB2');
INSERT INTO price VALUES ('321', '$20.63', '2013-01-03 13:42:31', 'B000RB5XZE');
INSERT INTO price VALUES ('322', '$117.89', '2013-01-03 13:42:42', 'B000W7BHJY');
INSERT INTO price VALUES ('323', '$23.31', '2013-01-03 13:42:45', 'B000YM6FK8');
INSERT INTO price VALUES ('324', '$29.99', '2013-01-03 13:42:46', 'B001QBJRTM');
INSERT INTO price VALUES ('325', '$19.10', '2013-01-03 13:42:47', 'B00266D41S');
INSERT INTO price VALUES ('326', '$17.07', '2013-01-03 13:42:48', 'B002N0KRG2');
INSERT INTO price VALUES ('327', '$12.00', '2013-01-03 13:42:52', 'B002PXVYE6');
INSERT INTO price VALUES ('328', '$334.09', '2013-01-03 13:42:53', 'B002SW68V8');
INSERT INTO price VALUES ('329', '$7.15', '2013-01-03 13:42:53', 'B003RXV0HY');
INSERT INTO price VALUES ('330', '$279.95', '2013-01-03 13:42:57', 'B0041INZCM');
INSERT INTO price VALUES ('331', '$59.99', '2013-01-03 13:42:57', 'B004287914');
INSERT INTO price VALUES ('332', '$17.99', '2013-01-03 13:43:19', 'B0045I1EUI');
INSERT INTO price VALUES ('333', '$29.89', '2013-01-03 13:43:21', 'B0051F95PA');
INSERT INTO price VALUES ('334', '$25.95', '2013-01-03 13:43:22', 'B0052PKF76');
INSERT INTO price VALUES ('335', '$4.69', '2013-01-03 13:43:22', 'B0062DPUY0');
INSERT INTO price VALUES ('336', '$12.97', '2013-01-03 13:43:24', 'B006H8XQ7I');
INSERT INTO price VALUES ('337', '$19.60', '2013-01-03 13:43:28', 'B007EIDQPW');
INSERT INTO price VALUES ('338', '$9.36', '2013-01-03 13:43:31', 'B007ZG3068');
INSERT INTO price VALUES ('339', '$15.78', '2013-01-03 15:15:33', '0240523830');
INSERT INTO price VALUES ('340', '$21.79', '2013-01-03 15:15:35', '0321862783');
INSERT INTO price VALUES ('341', '$27.38', '2013-01-03 15:15:37', '0321884833');
INSERT INTO price VALUES ('342', '$12.51', '2013-01-03 15:15:39', '0375758976');
INSERT INTO price VALUES ('343', '$15.29', '2013-01-03 15:15:40', '0740797719');
INSERT INTO price VALUES ('344', '$20.00', '2013-01-03 15:15:44', '0765325950');
INSERT INTO price VALUES ('345', '$11.09', '2013-01-03 15:15:48', '1455525413');
INSERT INTO price VALUES ('346', '$11.19', '2013-01-03 15:15:50', '1455525456');
INSERT INTO price VALUES ('347', '$17.75', '2013-01-03 15:15:54', '1576876284');
INSERT INTO price VALUES ('348', '$15.37', '2013-01-03 15:15:55', '1592537251');
INSERT INTO price VALUES ('349', '$5.33', '2013-01-03 15:15:55', '1600583040');
INSERT INTO price VALUES ('350', '$7.98', '2013-01-03 15:15:56', '1854249703');
INSERT INTO price VALUES ('351', '$12.60', '2013-01-03 15:16:00', 'B00011VDB8');
INSERT INTO price VALUES ('352', '$23.03', '2013-01-03 15:16:00', 'B000EM2S6I');
INSERT INTO price VALUES ('353', '$27.95', '2013-01-03 15:16:09', 'B000FELZ7S');
INSERT INTO price VALUES ('354', '$33.09', '2013-01-03 15:16:11', 'B000HBILB2');
INSERT INTO price VALUES ('355', '$20.63', '2013-01-03 15:16:12', 'B000RB5XZE');
INSERT INTO price VALUES ('356', '$117.89', '2013-01-03 15:16:17', 'B000W7BHJY');
INSERT INTO price VALUES ('357', '$23.31', '2013-01-03 15:16:39', 'B000YM6FK8');
INSERT INTO price VALUES ('358', '$29.99', '2013-01-03 15:16:40', 'B001QBJRTM');
INSERT INTO price VALUES ('359', '$19.10', '2013-01-03 15:16:42', 'B00266D41S');
INSERT INTO price VALUES ('360', '$17.07', '2013-01-03 15:16:45', 'B002N0KRG2');
INSERT INTO price VALUES ('361', '$12.00', '2013-01-03 15:16:46', 'B002PXVYE6');
INSERT INTO price VALUES ('362', '$334.09', '2013-01-03 15:16:51', 'B002SW68V8');
INSERT INTO price VALUES ('363', '$7.15', '2013-01-03 15:16:52', 'B003RXV0HY');
INSERT INTO price VALUES ('364', '$279.95', '2013-01-03 15:16:53', 'B0041INZCM');
INSERT INTO price VALUES ('365', '$59.99', '2013-01-03 15:16:54', 'B004287914');
INSERT INTO price VALUES ('366', '$17.99', '2013-01-03 15:16:55', 'B0045I1EUI');
INSERT INTO price VALUES ('367', '$29.89', '2013-01-03 15:16:55', 'B0051F95PA');
INSERT INTO price VALUES ('368', '$25.95', '2013-01-03 15:16:56', 'B0052PKF76');
INSERT INTO price VALUES ('369', '$4.69', '2013-01-03 15:16:57', 'B0062DPUY0');
INSERT INTO price VALUES ('370', '$12.97', '2013-01-03 15:16:58', 'B006H8XQ7I');
INSERT INTO price VALUES ('371', '$19.60', '2013-01-03 15:17:02', 'B007EIDQPW');
INSERT INTO price VALUES ('372', '$9.36', '2013-01-03 15:17:02', 'B007ZG3068');
INSERT INTO price VALUES ('373', '$15.78', '2013-01-04 11:03:18', '0240523830');
INSERT INTO price VALUES ('374', '$21.79', '2013-01-04 11:03:20', '0321862783');
INSERT INTO price VALUES ('375', '$27.30', '2013-01-04 11:03:21', '0321884833');
INSERT INTO price VALUES ('376', '$12.51', '2013-01-04 11:03:24', '0375758976');
INSERT INTO price VALUES ('377', '$16.00', '2013-01-04 11:03:25', '0740797719');
INSERT INTO price VALUES ('378', '$20.00', '2013-01-04 11:03:26', '0765325950');
INSERT INTO price VALUES ('379', '$10.86', '2013-01-04 11:03:29', '1455525413');
INSERT INTO price VALUES ('380', '$11.19', '2013-01-04 11:03:30', '1455525456');
INSERT INTO price VALUES ('381', '$17.75', '2013-01-04 11:03:30', '1576876284');
INSERT INTO price VALUES ('382', '$13.76', '2013-01-04 11:03:32', '1592537251');
INSERT INTO price VALUES ('383', '$8.06', '2013-01-04 11:03:33', '1600583040');
INSERT INTO price VALUES ('384', '$7.98', '2013-01-04 11:03:34', '1854249703');
INSERT INTO price VALUES ('385', '$12.60', '2013-01-04 11:03:34', 'B00011VDB8');
INSERT INTO price VALUES ('386', '$23.03', '2013-01-04 11:03:35', 'B000EM2S6I');
INSERT INTO price VALUES ('387', '$27.95', '2013-01-04 11:03:37', 'B000FELZ7S');
INSERT INTO price VALUES ('388', '$33.09', '2013-01-04 11:03:41', 'B000HBILB2');
INSERT INTO price VALUES ('389', '$20.63', '2013-01-04 11:03:41', 'B000RB5XZE');
INSERT INTO price VALUES ('390', '$98.20', '2013-01-04 11:03:42', 'B000W7BHJY');
INSERT INTO price VALUES ('391', '$23.31', '2013-01-04 11:03:42', 'B000YM6FK8');
INSERT INTO price VALUES ('392', '$29.99', '2013-01-04 11:03:44', 'B001QBJRTM');
INSERT INTO price VALUES ('393', '$200.10', '2013-01-04 11:03:44', 'B001UBB9GM');
INSERT INTO price VALUES ('394', '$19.10', '2013-01-04 11:03:45', 'B00266D41S');
INSERT INTO price VALUES ('395', '$17.07', '2013-01-04 11:03:47', 'B002N0KRG2');
INSERT INTO price VALUES ('396', '$12.00', '2013-01-04 11:03:51', 'B002PXVYE6');
INSERT INTO price VALUES ('397', '$279.00', '2013-01-04 11:03:51', 'B002SW68V8');
INSERT INTO price VALUES ('398', '$7.15', '2013-01-04 11:03:53', 'B003RXV0HY');
INSERT INTO price VALUES ('399', '$279.95', '2013-01-04 11:03:53', 'B0041INZCM');
INSERT INTO price VALUES ('400', '$59.99', '2013-01-04 11:03:56', 'B004287914');
INSERT INTO price VALUES ('401', '$139.99', '2013-01-04 11:03:57', 'B0043X7JRW');
INSERT INTO price VALUES ('402', '$17.99', '2013-01-04 11:03:57', 'B0045I1EUI');
INSERT INTO price VALUES ('403', '$183.18', '2013-01-04 11:03:58', 'B004B9QNJS');
INSERT INTO price VALUES ('404', '$420.00', '2013-01-04 11:04:00', 'B004ZLV5PE');
INSERT INTO price VALUES ('405', '$29.89', '2013-01-04 11:04:01', 'B0051F95PA');
INSERT INTO price VALUES ('406', '$25.95', '2013-01-04 11:04:01', 'B0052PKF76');
INSERT INTO price VALUES ('407', '$0.69', '2013-01-04 11:04:04', 'B005JHIYLG');
INSERT INTO price VALUES ('408', '$4.69', '2013-01-04 11:04:04', 'B0062DPUY0');
INSERT INTO price VALUES ('409', '$116.30', '2013-01-04 11:04:05', 'B0068PQZFK');
INSERT INTO price VALUES ('410', '$12.97', '2013-01-04 11:04:07', 'B006H8XQ7I');
INSERT INTO price VALUES ('411', '$19.60', '2013-01-04 11:04:09', 'B007EIDQPW');
INSERT INTO price VALUES ('412', '$216.30', '2013-01-04 11:04:11', 'B007Z0OEJQ');
INSERT INTO price VALUES ('413', '$9.36', '2013-01-04 11:04:12', 'B007ZG3068');
INSERT INTO price VALUES ('414', '$84.01', '2013-01-04 11:04:13', 'B0087T1S6G');
INSERT INTO price VALUES ('415', '$697.00', '2013-01-04 11:04:15', 'B0097CZJEO');
INSERT INTO price VALUES ('416', '$15.78', '2013-01-04 12:40:51', '0240523830');
INSERT INTO price VALUES ('417', '$21.79', '2013-01-04 12:40:52', '0321862783');
INSERT INTO price VALUES ('418', '$27.30', '2013-01-04 12:40:53', '0321884833');
INSERT INTO price VALUES ('419', '$12.51', '2013-01-04 12:41:03', '0375758976');
INSERT INTO price VALUES ('420', '$16.00', '2013-01-04 12:41:04', '0740797719');
INSERT INTO price VALUES ('421', '$20.00', '2013-01-04 12:41:05', '0765325950');
INSERT INTO price VALUES ('422', '$10.86', '2013-01-04 12:41:05', '1455525413');
INSERT INTO price VALUES ('423', '$11.19', '2013-01-04 12:41:06', '1455525456');
INSERT INTO price VALUES ('424', '$17.75', '2013-01-04 12:41:06', '1576876284');
INSERT INTO price VALUES ('425', '$13.76', '2013-01-04 12:41:11', '1592537251');
INSERT INTO price VALUES ('426', '$8.19', '2013-01-04 12:41:11', '1600583040');
INSERT INTO price VALUES ('427', '$7.98', '2013-01-04 12:41:15', '1854249703');
INSERT INTO price VALUES ('428', '$12.60', '2013-01-04 12:41:17', 'B00011VDB8');
INSERT INTO price VALUES ('429', '$23.03', '2013-01-04 12:41:19', 'B000EM2S6I');
INSERT INTO price VALUES ('430', '$27.95', '2013-01-04 12:41:20', 'B000FELZ7S');
INSERT INTO price VALUES ('431', '$33.09', '2013-01-04 12:41:24', 'B000HBILB2');
INSERT INTO price VALUES ('432', '0', '2013-01-04 12:41:25', 'B000RB5XZE');
INSERT INTO price VALUES ('433', '$98.20', '2013-01-04 12:41:30', 'B000W7BHJY');
INSERT INTO price VALUES ('434', '$23.31', '2013-01-04 12:41:40', 'B000YM6FK8');
INSERT INTO price VALUES ('435', '$29.99', '2013-01-04 12:41:40', 'B001QBJRTM');
INSERT INTO price VALUES ('436', '$200.10', '2013-01-04 12:41:41', 'B001UBB9GM');
INSERT INTO price VALUES ('437', '$19.10', '2013-01-04 12:41:42', 'B00266D41S');
INSERT INTO price VALUES ('438', '$17.07', '2013-01-04 12:41:43', 'B002N0KRG2');
INSERT INTO price VALUES ('439', '$12.00', '2013-01-04 12:41:44', 'B002PXVYE6');
INSERT INTO price VALUES ('440', '$279.00', '2013-01-04 12:41:45', 'B002SW68V8');
INSERT INTO price VALUES ('441', '$7.15', '2013-01-04 12:41:46', 'B003RXV0HY');
INSERT INTO price VALUES ('442', '$279.95', '2013-01-04 12:41:48', 'B0041INZCM');
INSERT INTO price VALUES ('443', '$59.99', '2013-01-04 12:41:48', 'B004287914');
INSERT INTO price VALUES ('444', '$139.99', '2013-01-04 12:41:50', 'B0043X7JRW');
INSERT INTO price VALUES ('445', '$17.99', '2013-01-04 12:41:52', 'B0045I1EUI');
INSERT INTO price VALUES ('446', '$183.18', '2013-01-04 12:41:54', 'B004B9QNJS');
INSERT INTO price VALUES ('447', '$420.00', '2013-01-04 12:41:56', 'B004ZLV5PE');
INSERT INTO price VALUES ('448', '$29.89', '2013-01-04 12:41:57', 'B0051F95PA');
INSERT INTO price VALUES ('449', '$25.95', '2013-01-04 12:41:58', 'B0052PKF76');
INSERT INTO price VALUES ('450', '$0.69', '2013-01-04 12:42:00', 'B005JHIYLG');
INSERT INTO price VALUES ('451', '$899.00', '2013-01-04 12:42:02', 'B005M1AC2I');
INSERT INTO price VALUES ('452', '$4.69', '2013-01-04 12:42:02', 'B0062DPUY0');
INSERT INTO price VALUES ('453', '$118.99', '2013-01-04 12:42:06', 'B0068PQZFK');
INSERT INTO price VALUES ('454', '$12.97', '2013-01-04 12:42:07', 'B006H8XQ7I');
INSERT INTO price VALUES ('455', '$810.48', '2013-01-04 12:42:11', 'B00750GCBY');
INSERT INTO price VALUES ('456', '$19.60', '2013-01-04 12:42:12', 'B007EIDQPW');
INSERT INTO price VALUES ('457', '$216.30', '2013-01-04 12:42:22', 'B007Z0OEJQ');
INSERT INTO price VALUES ('458', '$9.36', '2013-01-04 12:42:26', 'B007ZG3068');
INSERT INTO price VALUES ('459', '$85.00', '2013-01-04 12:42:30', 'B0087T1S6G');
INSERT INTO price VALUES ('460', '$999.99', '2013-01-04 12:42:46', 'B0088L18TU');
INSERT INTO price VALUES ('461', '$675.00', '2013-01-04 12:42:50', 'B0097CZJEO');
INSERT INTO price VALUES ('462', '$495.00', '2013-01-04 12:42:54', 'B009AEP6YM');
INSERT INTO price VALUES ('463', '$379.99', '2013-01-04 12:43:00', 'B009AU2JIC');
INSERT INTO price VALUES ('464', '$1,199.99', '2013-01-04 12:43:09', 'B009DXVVI0');
INSERT INTO price VALUES ('465', '$249.00', '2013-01-04 12:43:16', 'B009LL9VDG');
INSERT INTO price VALUES ('466', '$1,323.99', '2013-01-04 12:43:21', 'B009M3PKJ2');
INSERT INTO price VALUES ('467', '$489.99', '2013-01-04 12:43:23', 'B009X8EA92');
INSERT INTO price VALUES ('468', '$15.78', '2013-01-04 15:18:21', '0240523830');
INSERT INTO price VALUES ('469', '$21.79', '2013-01-04 15:18:22', '0321862783');
INSERT INTO price VALUES ('470', '$27.30', '2013-01-04 15:18:23', '0321884833');
INSERT INTO price VALUES ('471', '$12.51', '2013-01-04 15:18:24', '0375758976');
INSERT INTO price VALUES ('472', '$16.00', '2013-01-04 15:18:25', '0740797719');
INSERT INTO price VALUES ('473', '$20.00', '2013-01-04 15:18:26', '0765325950');
INSERT INTO price VALUES ('474', '$10.86', '2013-01-04 15:18:27', '1455525413');
INSERT INTO price VALUES ('475', '$11.19', '2013-01-04 15:18:28', '1455525456');
INSERT INTO price VALUES ('476', '$17.75', '2013-01-04 15:18:29', '1576876284');
INSERT INTO price VALUES ('477', '$13.76', '2013-01-04 15:18:34', '1592537251');
INSERT INTO price VALUES ('478', '$8.19', '2013-01-04 15:18:35', '1600583040');
INSERT INTO price VALUES ('479', '$7.98', '2013-01-04 15:18:37', '1854249703');
INSERT INTO price VALUES ('480', '$12.60', '2013-01-04 15:18:38', 'B00011VDB8');
INSERT INTO price VALUES ('481', '$23.03', '2013-01-04 15:18:39', 'B000EM2S6I');
INSERT INTO price VALUES ('482', '$27.95', '2013-01-04 15:18:40', 'B000FELZ7S');
INSERT INTO price VALUES ('483', '$33.09', '2013-01-04 15:18:42', 'B000HBILB2');
INSERT INTO price VALUES ('484', '0', '2013-01-04 15:18:43', 'B000RB5XZE');
INSERT INTO price VALUES ('485', '$98.20', '2013-01-04 15:18:46', 'B000W7BHJY');
INSERT INTO price VALUES ('486', '$23.31', '2013-01-04 15:18:47', 'B000YM6FK8');
INSERT INTO price VALUES ('487', '$29.99', '2013-01-04 15:18:48', 'B001QBJRTM');
INSERT INTO price VALUES ('488', '$199.14', '2013-01-04 15:18:48', 'B001UBB9GM');
INSERT INTO price VALUES ('489', '$19.10', '2013-01-04 15:18:49', 'B00266D41S');
INSERT INTO price VALUES ('490', '$17.07', '2013-01-04 15:18:49', 'B002N0KRG2');
INSERT INTO price VALUES ('491', '$12.00', '2013-01-04 15:18:50', 'B002PXVYE6');
INSERT INTO price VALUES ('492', '$279.00', '2013-01-04 15:18:50', 'B002SW68V8');
INSERT INTO price VALUES ('493', '$7.15', '2013-01-04 15:18:51', 'B003RXV0HY');
INSERT INTO price VALUES ('494', '$13.54', '2013-01-04 15:18:52', 'B003VNKNEQ');
INSERT INTO price VALUES ('495', '$279.95', '2013-01-04 15:18:52', 'B0041INZCM');
INSERT INTO price VALUES ('496', '$59.99', '2013-01-04 15:18:53', 'B004287914');
INSERT INTO price VALUES ('497', '$133.15', '2013-01-04 15:18:53', 'B0043X7JRW');
INSERT INTO price VALUES ('498', '$17.99', '2013-01-04 15:18:54', 'B0045I1EUI');
INSERT INTO price VALUES ('499', '$183.18', '2013-01-04 15:18:54', 'B004B9QNJS');
INSERT INTO price VALUES ('500', '$420.00', '2013-01-04 15:18:55', 'B004ZLV5PE');
INSERT INTO price VALUES ('501', '$29.89', '2013-01-04 15:18:56', 'B0051F95PA');
INSERT INTO price VALUES ('502', '$25.95', '2013-01-04 15:18:56', 'B0052PKF76');
INSERT INTO price VALUES ('503', '$0.69', '2013-01-04 15:18:57', 'B005JHIYLG');
INSERT INTO price VALUES ('504', '$899.00', '2013-01-04 15:18:57', 'B005M1AC2I');
INSERT INTO price VALUES ('505', '$4.69', '2013-01-04 15:18:58', 'B0062DPUY0');
INSERT INTO price VALUES ('506', '$118.99', '2013-01-04 15:18:58', 'B0068PQZFK');
INSERT INTO price VALUES ('507', '$12.97', '2013-01-04 15:18:59', 'B006H8XQ7I');
INSERT INTO price VALUES ('508', '$810.48', '2013-01-04 15:18:59', 'B00750GCBY');
INSERT INTO price VALUES ('509', '$19.60', '2013-01-04 15:19:00', 'B007EIDQPW');
INSERT INTO price VALUES ('510', '$216.30', '2013-01-04 15:19:01', 'B007Z0OEJQ');
INSERT INTO price VALUES ('511', '$9.36', '2013-01-04 15:19:01', 'B007ZG3068');
INSERT INTO price VALUES ('512', '$85.00', '2013-01-04 15:19:02', 'B0087T1S6G');
INSERT INTO price VALUES ('513', '$999.99', '2013-01-04 15:19:02', 'B0088L18TU');
INSERT INTO price VALUES ('514', '$659.95', '2013-01-04 15:19:03', 'B0097CZJEO');
INSERT INTO price VALUES ('515', '$419.86', '2013-01-04 15:19:04', 'B009AAU9VQ');
INSERT INTO price VALUES ('516', '$495.00', '2013-01-04 15:19:04', 'B009AEP6YM');
INSERT INTO price VALUES ('517', '$439.00', '2013-01-04 15:19:05', 'B009AU2JIC');
INSERT INTO price VALUES ('518', '$849.99', '2013-01-04 15:19:06', 'B009B8E9ZO');
INSERT INTO price VALUES ('519', '$1,199.99', '2013-01-04 15:19:10', 'B009DXVVI0');
INSERT INTO price VALUES ('520', '$249.00', '2013-01-04 15:19:11', 'B009LL9VDG');
INSERT INTO price VALUES ('521', '$1,323.99', '2013-01-04 15:19:11', 'B009M3PKJ2');
INSERT INTO price VALUES ('522', '$329.98', '2013-01-04 15:19:12', 'B009QVQQ5C');
INSERT INTO price VALUES ('523', '$489.99', '2013-01-04 15:19:12', 'B009X8EA92');
INSERT INTO price VALUES ('524', '$15.78', '2013-01-04 15:34:45', '0240523830');
INSERT INTO price VALUES ('525', '$21.79', '2013-01-04 15:34:46', '0321862783');
INSERT INTO price VALUES ('526', '$27.30', '2013-01-04 15:34:48', '0321884833');
INSERT INTO price VALUES ('527', '$12.51', '2013-01-04 15:34:49', '0375758976');
INSERT INTO price VALUES ('528', '$16.00', '2013-01-04 15:34:50', '0740797719');
INSERT INTO price VALUES ('529', '$20.00', '2013-01-04 15:34:51', '0765325950');
INSERT INTO price VALUES ('530', '$10.86', '2013-01-04 15:34:52', '1455525413');
INSERT INTO price VALUES ('531', '$11.19', '2013-01-04 15:34:52', '1455525456');
INSERT INTO price VALUES ('532', '$17.75', '2013-01-04 15:34:53', '1576876284');
INSERT INTO price VALUES ('533', '$13.76', '2013-01-04 15:34:54', '1592537251');
INSERT INTO price VALUES ('534', '$8.19', '2013-01-04 15:34:56', '1600583040');
INSERT INTO price VALUES ('535', '$7.98', '2013-01-04 15:34:57', '1854249703');
INSERT INTO price VALUES ('536', '$12.60', '2013-01-04 15:34:58', 'B00011VDB8');
INSERT INTO price VALUES ('537', '$23.03', '2013-01-04 15:34:59', 'B000EM2S6I');
INSERT INTO price VALUES ('538', '$27.95', '2013-01-04 15:35:01', 'B000FELZ7S');
INSERT INTO price VALUES ('539', '$33.09', '2013-01-04 15:35:02', 'B000HBILB2');
INSERT INTO price VALUES ('540', '0', '2013-01-04 15:35:03', 'B000RB5XZE');
INSERT INTO price VALUES ('541', '$98.20', '2013-01-04 15:35:04', 'B000W7BHJY');
INSERT INTO price VALUES ('542', '$23.31', '2013-01-04 15:35:06', 'B000YM6FK8');
INSERT INTO price VALUES ('543', '$29.99', '2013-01-04 15:35:07', 'B001QBJRTM');
INSERT INTO price VALUES ('544', '$199.14', '2013-01-04 15:35:08', 'B001UBB9GM');
INSERT INTO price VALUES ('545', '$19.10', '2013-01-04 15:35:08', 'B00266D41S');
INSERT INTO price VALUES ('546', '$45.08', '2013-01-04 15:35:09', 'B0028N6YH0');
INSERT INTO price VALUES ('547', '$17.07', '2013-01-04 15:35:09', 'B002N0KRG2');
INSERT INTO price VALUES ('548', '$12.00', '2013-01-04 15:35:10', 'B002PXVYE6');
INSERT INTO price VALUES ('549', '$279.00', '2013-01-04 15:35:10', 'B002SW68V8');
INSERT INTO price VALUES ('550', '$4.82', '2013-01-04 15:35:11', 'B003EYW0FW');
INSERT INTO price VALUES ('551', '$7.15', '2013-01-04 15:35:11', 'B003RXV0HY');
INSERT INTO price VALUES ('552', '$13.54', '2013-01-04 15:35:12', 'B003VNKNEQ');
INSERT INTO price VALUES ('553', '$279.95', '2013-01-04 15:35:12', 'B0041INZCM');
INSERT INTO price VALUES ('554', '$59.99', '2013-01-04 15:35:13', 'B004287914');
INSERT INTO price VALUES ('555', '$133.15', '2013-01-04 15:35:14', 'B0043X7JRW');
INSERT INTO price VALUES ('556', '$17.99', '2013-01-04 15:35:14', 'B0045I1EUI');
INSERT INTO price VALUES ('557', '$183.18', '2013-01-04 15:35:15', 'B004B9QNJS');
INSERT INTO price VALUES ('558', '$10.85', '2013-01-04 15:35:15', 'B004OA72H6');
INSERT INTO price VALUES ('559', '$8.14', '2013-01-04 15:35:16', 'B004SUILFO');
INSERT INTO price VALUES ('560', '$420.00', '2013-01-04 15:35:16', 'B004ZLV5PE');
INSERT INTO price VALUES ('561', '$29.89', '2013-01-04 15:35:17', 'B0051F95PA');
INSERT INTO price VALUES ('562', '$25.95', '2013-01-04 15:35:18', 'B0052PKF76');
INSERT INTO price VALUES ('563', '$0.69', '2013-01-04 15:35:18', 'B005JHIYLG');
INSERT INTO price VALUES ('564', '$899.00', '2013-01-04 15:35:19', 'B005M1AC2I');
INSERT INTO price VALUES ('565', '$15.78', '2013-01-04 15:36:11', '0240523830');
INSERT INTO price VALUES ('566', '$21.79', '2013-01-04 15:36:12', '0321862783');
INSERT INTO price VALUES ('567', '$27.30', '2013-01-04 15:36:13', '0321884833');
INSERT INTO price VALUES ('568', '$12.51', '2013-01-04 15:36:14', '0375758976');
INSERT INTO price VALUES ('569', '$16.00', '2013-01-04 15:36:15', '0740797719');
INSERT INTO price VALUES ('570', '$20.00', '2013-01-04 15:36:16', '0765325950');
INSERT INTO price VALUES ('571', '$10.86', '2013-01-04 15:36:17', '1455525413');
INSERT INTO price VALUES ('572', '$11.19', '2013-01-04 15:36:19', '1455525456');
INSERT INTO price VALUES ('573', '$17.75', '2013-01-04 15:36:20', '1576876284');
INSERT INTO price VALUES ('574', '$13.76', '2013-01-04 15:36:21', '1592537251');
INSERT INTO price VALUES ('575', '$8.19', '2013-01-04 15:36:22', '1600583040');
INSERT INTO price VALUES ('576', '$7.98', '2013-01-04 15:36:23', '1854249703');
INSERT INTO price VALUES ('577', '$12.60', '2013-01-04 15:36:24', 'B00011VDB8');
INSERT INTO price VALUES ('578', '$23.03', '2013-01-04 15:36:26', 'B000EM2S6I');
INSERT INTO price VALUES ('579', '$27.95', '2013-01-04 15:36:27', 'B000FELZ7S');
INSERT INTO price VALUES ('580', '$33.09', '2013-01-04 15:36:28', 'B000HBILB2');
INSERT INTO price VALUES ('581', '0', '2013-01-04 15:36:29', 'B000RB5XZE');
INSERT INTO price VALUES ('582', '$98.20', '2013-01-04 15:36:32', 'B000W7BHJY');
INSERT INTO price VALUES ('583', '$23.31', '2013-01-04 15:36:32', 'B000YM6FK8');
INSERT INTO price VALUES ('584', '$29.99', '2013-01-04 15:36:33', 'B001QBJRTM');
INSERT INTO price VALUES ('585', '$199.14', '2013-01-04 15:36:33', 'B001UBB9GM');
INSERT INTO price VALUES ('586', '$19.10', '2013-01-04 15:36:34', 'B00266D41S');
INSERT INTO price VALUES ('587', '$45.08', '2013-01-04 15:36:34', 'B0028N6YH0');
INSERT INTO price VALUES ('588', '$17.07', '2013-01-04 15:36:35', 'B002N0KRG2');
INSERT INTO price VALUES ('589', '$12.00', '2013-01-04 15:36:35', 'B002PXVYE6');
INSERT INTO price VALUES ('590', '$279.00', '2013-01-04 15:36:36', 'B002SW68V8');
INSERT INTO price VALUES ('591', '$4.82', '2013-01-04 15:36:36', 'B003EYW0FW');
INSERT INTO price VALUES ('592', '$7.15', '2013-01-04 15:36:37', 'B003RXV0HY');
INSERT INTO price VALUES ('593', '$13.54', '2013-01-04 15:36:37', 'B003VNKNEQ');
INSERT INTO price VALUES ('594', '$279.95', '2013-01-04 15:36:38', 'B0041INZCM');
INSERT INTO price VALUES ('595', '$59.99', '2013-01-04 15:36:39', 'B004287914');
INSERT INTO price VALUES ('596', '$133.15', '2013-01-04 15:36:39', 'B0043X7JRW');
INSERT INTO price VALUES ('597', '$17.99', '2013-01-04 15:36:40', 'B0045I1EUI');
INSERT INTO price VALUES ('598', '$183.18', '2013-01-04 15:36:40', 'B004B9QNJS');
INSERT INTO price VALUES ('599', '$10.85', '2013-01-04 15:36:41', 'B004OA72H6');
INSERT INTO price VALUES ('600', '$8.14', '2013-01-04 15:36:41', 'B004SUILFO');
INSERT INTO price VALUES ('601', '$15.78', '2013-01-04 15:42:02', '0240523830');
INSERT INTO price VALUES ('602', '$21.79', '2013-01-04 15:42:03', '0321862783');
INSERT INTO price VALUES ('603', '$27.30', '2013-01-04 15:42:04', '0321884833');
INSERT INTO price VALUES ('604', '$12.51', '2013-01-04 15:42:05', '0375758976');
INSERT INTO price VALUES ('605', '$16.00', '2013-01-04 15:42:07', '0740797719');
INSERT INTO price VALUES ('606', '$20.00', '2013-01-04 15:42:08', '0765325950');
INSERT INTO price VALUES ('607', '$10.86', '2013-01-04 15:42:08', '1455525413');
INSERT INTO price VALUES ('608', '$11.19', '2013-01-04 15:42:09', '1455525456');
INSERT INTO price VALUES ('609', '$17.75', '2013-01-04 15:42:10', '1576876284');
INSERT INTO price VALUES ('610', '$13.76', '2013-01-04 15:42:11', '1592537251');
INSERT INTO price VALUES ('611', '$8.19', '2013-01-04 15:42:12', '1600583040');
INSERT INTO price VALUES ('612', '$7.98', '2013-01-04 15:42:13', '1854249703');
INSERT INTO price VALUES ('613', '$12.60', '2013-01-04 15:42:15', 'B00011VDB8');
INSERT INTO price VALUES ('614', '$23.03', '2013-01-04 15:42:16', 'B000EM2S6I');
INSERT INTO price VALUES ('615', '$27.95', '2013-01-04 15:42:18', 'B000FELZ7S');
INSERT INTO price VALUES ('616', '$33.09', '2013-01-04 15:42:20', 'B000HBILB2');
INSERT INTO price VALUES ('617', '0', '2013-01-04 15:42:20', 'B000RB5XZE');
INSERT INTO price VALUES ('618', '$98.20', '2013-01-04 15:42:22', 'B000W7BHJY');
INSERT INTO price VALUES ('619', '$23.31', '2013-01-04 15:42:23', 'B000YM6FK8');
INSERT INTO price VALUES ('620', '$29.99', '2013-01-04 15:42:24', 'B001QBJRTM');
INSERT INTO price VALUES ('621', '$199.14', '2013-01-04 15:42:25', 'B001UBB9GM');
INSERT INTO price VALUES ('622', '$19.10', '2013-01-04 15:42:26', 'B00266D41S');
INSERT INTO price VALUES ('623', '$45.08', '2013-01-04 15:42:28', 'B0028N6YH0');
INSERT INTO price VALUES ('624', '$17.07', '2013-01-04 15:42:28', 'B002N0KRG2');
INSERT INTO price VALUES ('625', '$12.00', '2013-01-04 15:42:29', 'B002PXVYE6');
INSERT INTO price VALUES ('626', '$279.00', '2013-01-04 15:42:32', 'B002SW68V8');
INSERT INTO price VALUES ('627', '$4.82', '2013-01-04 15:42:33', 'B003EYW0FW');
INSERT INTO price VALUES ('628', '$7.15', '2013-01-04 15:42:33', 'B003RXV0HY');
INSERT INTO price VALUES ('629', '$13.54', '2013-01-04 15:42:36', 'B003VNKNEQ');
INSERT INTO price VALUES ('630', '$279.95', '2013-01-04 15:42:37', 'B0041INZCM');
INSERT INTO price VALUES ('631', '$59.99', '2013-01-04 15:42:38', 'B004287914');
INSERT INTO price VALUES ('632', '$133.15', '2013-01-04 15:42:38', 'B0043X7JRW');
INSERT INTO price VALUES ('633', '$17.99', '2013-01-04 15:42:39', 'B0045I1EUI');
INSERT INTO price VALUES ('634', '$183.18', '2013-01-04 15:42:40', 'B004B9QNJS');
INSERT INTO price VALUES ('635', '$10.85', '2013-01-04 15:42:40', 'B004OA72H6');
INSERT INTO price VALUES ('636', '$8.14', '2013-01-04 15:42:41', 'B004SUILFO');
INSERT INTO price VALUES ('637', '$420.00', '2013-01-04 15:42:41', 'B004ZLV5PE');
INSERT INTO price VALUES ('638', '$29.89', '2013-01-04 15:42:42', 'B0051F95PA');
INSERT INTO price VALUES ('639', '$25.95', '2013-01-04 15:42:42', 'B0052PKF76');
INSERT INTO price VALUES ('640', '$0.69', '2013-01-04 15:42:43', 'B005JHIYLG');
INSERT INTO price VALUES ('641', '$899.00', '2013-01-04 15:42:43', 'B005M1AC2I');
INSERT INTO price VALUES ('642', '$4.69', '2013-01-04 15:42:44', 'B0062DPUY0');
INSERT INTO price VALUES ('643', '$116.30', '2013-01-04 15:42:44', 'B0068PQZFK');
INSERT INTO price VALUES ('644', '$12.97', '2013-01-04 15:42:45', 'B006H8XQ7I');
INSERT INTO price VALUES ('645', '$810.48', '2013-01-04 15:42:45', 'B00750GCBY');
INSERT INTO price VALUES ('646', '$19.60', '2013-01-04 15:42:46', 'B007EIDQPW');
INSERT INTO price VALUES ('647', 'Too low to display', '2013-01-04 15:42:46', 'B007OWJL98');
INSERT INTO price VALUES ('648', '$216.30', '2013-01-04 15:42:47', 'B007Z0OEJQ');
INSERT INTO price VALUES ('649', '$9.36', '2013-01-04 15:42:47', 'B007ZG3068');
INSERT INTO price VALUES ('650', '$85.00', '2013-01-04 15:42:48', 'B0087T1S6G');
INSERT INTO price VALUES ('651', '$999.99', '2013-01-04 15:42:48', 'B0088L18TU');
INSERT INTO price VALUES ('652', '$659.95', '2013-01-04 15:42:49', 'B0097CZJEO');
INSERT INTO price VALUES ('653', '$419.86', '2013-01-04 15:42:52', 'B009AAU9VQ');
INSERT INTO price VALUES ('654', '$495.00', '2013-01-04 15:42:53', 'B009AEP6YM');
INSERT INTO price VALUES ('655', '$439.00', '2013-01-04 15:42:53', 'B009AU2JIC');
INSERT INTO price VALUES ('656', '$849.99', '2013-01-04 15:42:54', 'B009B8E9ZO');
INSERT INTO price VALUES ('657', '$1,199.99', '2013-01-04 15:42:59', 'B009DXVVI0');
INSERT INTO price VALUES ('658', '$249.00', '2013-01-04 15:43:00', 'B009LL9VDG');
INSERT INTO price VALUES ('659', '$1,323.99', '2013-01-04 15:43:00', 'B009M3PKJ2');
INSERT INTO price VALUES ('660', '$329.98', '2013-01-04 15:43:01', 'B009QVQQ5C');
INSERT INTO price VALUES ('661', '$489.99', '2013-01-04 15:43:01', 'B009X8EA92');
INSERT INTO price VALUES ('662', '$15.78', '2013-01-04 16:00:57', '0240523830');
INSERT INTO price VALUES ('663', '$21.79', '2013-01-04 16:00:58', '0321862783');
INSERT INTO price VALUES ('664', '$27.30', '2013-01-04 16:00:59', '0321884833');
INSERT INTO price VALUES ('665', '$12.51', '2013-01-04 16:01:01', '0375758976');
INSERT INTO price VALUES ('666', '$16.00', '2013-01-04 16:01:02', '0740797719');
INSERT INTO price VALUES ('667', '$20.00', '2013-01-04 16:01:03', '0765325950');
INSERT INTO price VALUES ('668', '$10.86', '2013-01-04 16:01:03', '1455525413');
INSERT INTO price VALUES ('669', '$11.19', '2013-01-04 16:01:04', '1455525456');
INSERT INTO price VALUES ('670', '$17.75', '2013-01-04 16:01:05', '1576876284');
INSERT INTO price VALUES ('671', '$13.76', '2013-01-04 16:01:06', '1592537251');
INSERT INTO price VALUES ('672', '$8.19', '2013-01-04 16:01:07', '1600583040');
INSERT INTO price VALUES ('673', '$7.98', '2013-01-04 16:01:08', '1854249703');
INSERT INTO price VALUES ('674', '$12.60', '2013-01-04 16:01:10', 'B00011VDB8');
INSERT INTO price VALUES ('675', '$0.01', '2013-01-04 16:01:11', 'B0002TMY1C');
INSERT INTO price VALUES ('676', '$9.97', '2013-01-04 16:01:12', 'B0009VELG4');
INSERT INTO price VALUES ('677', '$23.03', '2013-01-04 16:01:13', 'B000EM2S6I');
INSERT INTO price VALUES ('678', '$15.29', '2013-01-04 16:01:14', 'B000FA9P3S');
INSERT INTO price VALUES ('679', '$8.58', '2013-01-04 16:01:19', 'B000FADVPQ');
INSERT INTO price VALUES ('680', '$27.95', '2013-01-04 16:01:20', 'B000FELZ7S');
INSERT INTO price VALUES ('681', '$61.59', '2013-01-04 16:01:21', 'B000H3BCWU');
INSERT INTO price VALUES ('682', '$33.09', '2013-01-04 16:01:22', 'B000HBILB2');
INSERT INTO price VALUES ('683', '0', '2013-01-04 16:01:23', 'B000RB5XZE');
INSERT INTO price VALUES ('684', '$98.20', '2013-01-04 16:01:25', 'B000W7BHJY');
INSERT INTO price VALUES ('685', '$23.31', '2013-01-04 16:01:26', 'B000YM6FK8');
INSERT INTO price VALUES ('686', '$29.99', '2013-01-04 16:01:27', 'B001QBJRTM');
INSERT INTO price VALUES ('687', '$198.16', '2013-01-04 16:01:28', 'B001UBB9GM');
INSERT INTO price VALUES ('688', '$19.10', '2013-01-04 16:01:29', 'B00266D41S');
INSERT INTO price VALUES ('689', '$45.08', '2013-01-04 16:01:30', 'B0028N6YH0');
INSERT INTO price VALUES ('690', '$17.07', '2013-01-04 16:01:31', 'B002N0KRG2');
INSERT INTO price VALUES ('691', '$12.00', '2013-01-04 16:01:32', 'B002PXVYE6');
INSERT INTO price VALUES ('692', '$279.00', '2013-01-04 16:01:34', 'B002SW68V8');
INSERT INTO price VALUES ('693', '$4.82', '2013-01-04 16:01:35', 'B003EYW0FW');
INSERT INTO price VALUES ('694', '$7.15', '2013-01-04 16:01:35', 'B003RXV0HY');
INSERT INTO price VALUES ('695', '$13.54', '2013-01-04 16:01:37', 'B003VNKNEQ');
INSERT INTO price VALUES ('696', '$279.95', '2013-01-04 16:01:38', 'B0041INZCM');
INSERT INTO price VALUES ('697', '$59.99', '2013-01-04 16:01:38', 'B004287914');
INSERT INTO price VALUES ('698', '$133.15', '2013-01-04 16:01:40', 'B0043X7JRW');
INSERT INTO price VALUES ('699', '$17.99', '2013-01-04 16:01:42', 'B0045I1EUI');
INSERT INTO price VALUES ('700', '$183.18', '2013-01-04 16:01:43', 'B004B9QNJS');
INSERT INTO price VALUES ('701', '$24.99', '2013-01-04 16:01:44', 'B004NLL0TM');
INSERT INTO price VALUES ('702', '$10.85', '2013-01-04 16:01:45', 'B004OA72H6');
INSERT INTO price VALUES ('703', '$8.14', '2013-01-04 16:01:46', 'B004SUILFO');
INSERT INTO price VALUES ('704', '$420.00', '2013-01-04 16:01:47', 'B004ZLV5PE');
INSERT INTO price VALUES ('705', '$33.66', '2013-01-04 16:01:49', 'B0051F95PA');
INSERT INTO price VALUES ('706', '$25.95', '2013-01-04 16:01:50', 'B0052PKF76');
INSERT INTO price VALUES ('707', '$0.69', '2013-01-04 16:01:51', 'B005JHIYLG');
INSERT INTO price VALUES ('708', '$899.00', '2013-01-04 16:01:52', 'B005M1AC2I');
INSERT INTO price VALUES ('709', '$4.69', '2013-01-04 16:01:54', 'B0062DPUY0');
INSERT INTO price VALUES ('710', '$116.30', '2013-01-04 16:01:55', 'B0068PQZFK');
INSERT INTO price VALUES ('711', '$12.97', '2013-01-04 16:01:56', 'B006H8XQ7I');
INSERT INTO price VALUES ('712', '$20.99', '2013-01-04 16:01:58', 'B006INRHLS');
INSERT INTO price VALUES ('713', '$19.99', '2013-01-04 16:01:59', 'B0071AGJ98');
INSERT INTO price VALUES ('714', '$810.48', '2013-01-04 16:02:00', 'B00750GCBY');
INSERT INTO price VALUES ('715', '$19.60', '2013-01-04 16:02:01', 'B007EIDQPW');
INSERT INTO price VALUES ('716', 'Too low to display', '2013-01-04 16:02:02', 'B007OWJL98');
INSERT INTO price VALUES ('717', '$216.30', '2013-01-04 16:02:04', 'B007Z0OEJQ');
INSERT INTO price VALUES ('718', '$9.36', '2013-01-04 16:02:05', 'B007ZG3068');
INSERT INTO price VALUES ('719', '$7.00', '2013-01-04 16:02:06', 'B0081AYT80');
INSERT INTO price VALUES ('720', '$85.00', '2013-01-04 16:02:07', 'B0087T1S6G');
INSERT INTO price VALUES ('721', '$999.99', '2013-01-04 16:02:09', 'B0088L18TU');
INSERT INTO price VALUES ('722', '$659.95', '2013-01-04 16:02:10', 'B0097CZJEO');
INSERT INTO price VALUES ('723', '$419.86', '2013-01-04 16:02:11', 'B009AAU9VQ');
INSERT INTO price VALUES ('724', '$495.00', '2013-01-04 16:02:11', 'B009AEP6YM');
INSERT INTO price VALUES ('725', '$439.00', '2013-01-04 16:02:12', 'B009AU2JIC');
INSERT INTO price VALUES ('726', '$849.99', '2013-01-04 16:02:12', 'B009B8E9ZO');
INSERT INTO price VALUES ('727', '$1,199.99', '2013-01-04 16:02:15', 'B009DXVVI0');
INSERT INTO price VALUES ('728', '$249.00', '2013-01-04 16:02:15', 'B009LL9VDG');
INSERT INTO price VALUES ('729', '$1,323.99', '2013-01-04 16:02:16', 'B009M3PKJ2');
INSERT INTO price VALUES ('730', '$329.98', '2013-01-04 16:02:16', 'B009QVQQ5C');
INSERT INTO price VALUES ('731', '$489.99', '2013-01-04 16:02:17', 'B009X8EA92');
INSERT INTO price VALUES ('732', '$15.78', '2013-01-04 16:22:30', '0240523830');
INSERT INTO price VALUES ('733', '$21.79', '2013-01-04 16:22:32', '0321862783');
INSERT INTO price VALUES ('734', '$27.30', '2013-01-04 16:22:33', '0321884833');
INSERT INTO price VALUES ('735', '$12.51', '2013-01-04 16:22:35', '0375758976');
INSERT INTO price VALUES ('736', '$16.00', '2013-01-04 16:22:36', '0740797719');
INSERT INTO price VALUES ('737', '$20.00', '2013-01-04 16:22:38', '0765325950');
INSERT INTO price VALUES ('738', '$10.86', '2013-01-04 16:22:38', '1455525413');
INSERT INTO price VALUES ('739', '$11.19', '2013-01-04 16:22:40', '1455525456');
INSERT INTO price VALUES ('740', '$17.75', '2013-01-04 16:22:41', '1576876284');
INSERT INTO price VALUES ('741', '$13.76', '2013-01-04 16:22:43', '1592537251');
INSERT INTO price VALUES ('742', '$8.19', '2013-01-04 16:22:44', '1600583040');
INSERT INTO price VALUES ('743', '$7.98', '2013-01-04 16:22:46', '1854249703');
INSERT INTO price VALUES ('744', '$6.88', '2013-01-04 16:22:47', 'B000052YM4');
INSERT INTO price VALUES ('745', '$12.60', '2013-01-04 16:22:51', 'B00011VDB8');
INSERT INTO price VALUES ('746', '$1.36', '2013-01-04 16:22:55', 'B00027EG9C');
INSERT INTO price VALUES ('747', '$0.01', '2013-01-04 16:22:57', 'B0002TMY1C');
INSERT INTO price VALUES ('748', '$9.97', '2013-01-04 16:22:59', 'B0009VELG4');
INSERT INTO price VALUES ('749', '$23.03', '2013-01-04 16:23:00', 'B000EM2S6I');
INSERT INTO price VALUES ('750', '$15.29', '2013-01-04 16:23:02', 'B000FA9P3S');
INSERT INTO price VALUES ('751', '$8.58', '2013-01-04 16:23:03', 'B000FADVPQ');
INSERT INTO price VALUES ('752', '$27.95', '2013-01-04 16:23:05', 'B000FELZ7S');
INSERT INTO price VALUES ('753', '$61.59', '2013-01-04 16:23:06', 'B000H3BCWU');
INSERT INTO price VALUES ('754', '$33.09', '2013-01-04 16:23:09', 'B000HBILB2');
INSERT INTO price VALUES ('755', '0', '2013-01-04 16:23:11', 'B000RB5XZE');
INSERT INTO price VALUES ('756', '$98.20', '2013-01-04 16:23:13', 'B000W7BHJY');
INSERT INTO price VALUES ('757', '$23.31', '2013-01-04 16:23:14', 'B000YM6FK8');
INSERT INTO price VALUES ('758', '$2.99', '2013-01-04 16:23:18', 'B001B4Q5X0');
INSERT INTO price VALUES ('759', '$12.99', '2013-01-04 16:23:20', 'B001JKTTVQ');
INSERT INTO price VALUES ('760', '$8.63', '2013-01-04 16:23:22', 'B001LVA0XO');
INSERT INTO price VALUES ('761', '$29.99', '2013-01-04 16:23:24', 'B001QBJRTM');
INSERT INTO price VALUES ('762', '$198.16', '2013-01-04 16:23:26', 'B001UBB9GM');
INSERT INTO price VALUES ('763', '$19.10', '2013-01-04 16:23:29', 'B00266D41S');
INSERT INTO price VALUES ('764', '$45.08', '2013-01-04 16:23:31', 'B0028N6YH0');
INSERT INTO price VALUES ('765', '$17.07', '2013-01-04 16:23:33', 'B002N0KRG2');
INSERT INTO price VALUES ('766', '$12.00', '2013-01-04 16:23:35', 'B002PXVYE6');
INSERT INTO price VALUES ('767', '$279.00', '2013-01-04 16:23:37', 'B002SW68V8');
INSERT INTO price VALUES ('768', '$2.98', '2013-01-04 16:23:39', 'B00372FOXQ');
INSERT INTO price VALUES ('769', '$4.82', '2013-01-04 16:23:41', 'B003EYW0FW');
INSERT INTO price VALUES ('770', '$7.15', '2013-01-04 16:23:41', 'B003RXV0HY');
INSERT INTO price VALUES ('771', '$13.54', '2013-01-04 16:23:44', 'B003VNKNEQ');
INSERT INTO price VALUES ('772', '$279.95', '2013-01-04 16:23:45', 'B0041INZCM');
INSERT INTO price VALUES ('773', '$59.99', '2013-01-04 16:23:46', 'B004287914');
INSERT INTO price VALUES ('774', '$133.15', '2013-01-04 16:23:48', 'B0043X7JRW');
INSERT INTO price VALUES ('775', '$17.99', '2013-01-04 16:23:50', 'B0045I1EUI');
INSERT INTO price VALUES ('776', '$183.18', '2013-01-04 16:23:52', 'B004B9QNJS');
INSERT INTO price VALUES ('777', '$29.95', '2013-01-04 16:23:52', 'B004BPVF7W');
INSERT INTO price VALUES ('778', '$24.99', '2013-01-04 16:23:53', 'B004NLL0TM');
INSERT INTO price VALUES ('779', '$10.85', '2013-01-04 16:23:55', 'B004OA72H6');
INSERT INTO price VALUES ('780', '$8.14', '2013-01-04 16:23:57', 'B004SUILFO');
INSERT INTO price VALUES ('781', '$420.00', '2013-01-04 16:23:58', 'B004ZLV5PE');
INSERT INTO price VALUES ('782', '$33.66', '2013-01-04 16:24:00', 'B0051F95PA');
INSERT INTO price VALUES ('783', '$25.95', '2013-01-04 16:24:04', 'B0052PKF76');
INSERT INTO price VALUES ('784', '$0.69', '2013-01-04 16:24:09', 'B005JHIYLG');
INSERT INTO price VALUES ('785', '$899.00', '2013-01-04 16:24:10', 'B005M1AC2I');
INSERT INTO price VALUES ('786', '$26.79', '2013-01-04 16:24:13', 'B005UKZAJG');
INSERT INTO price VALUES ('787', '$4.69', '2013-01-04 16:24:14', 'B0062DPUY0');
INSERT INTO price VALUES ('788', '$118.14', '2013-01-04 16:24:17', 'B0068PQZFK');
INSERT INTO price VALUES ('789', '$1.83', '2013-01-04 16:24:18', 'B0068Y6CA4');
INSERT INTO price VALUES ('790', '$12.97', '2013-01-04 16:24:20', 'B006H8XQ7I');
INSERT INTO price VALUES ('791', '$20.99', '2013-01-04 16:24:21', 'B006INRHLS');
INSERT INTO price VALUES ('792', '$19.99', '2013-01-04 16:24:22', 'B0071AGJ98');
INSERT INTO price VALUES ('793', '$810.48', '2013-01-04 16:24:22', 'B00750GCBY');
INSERT INTO price VALUES ('794', '$19.60', '2013-01-04 16:24:23', 'B007EIDQPW');
INSERT INTO price VALUES ('795', 'Too low to display', '2013-01-04 16:24:24', 'B007OWJL98');
INSERT INTO price VALUES ('796', '$216.30', '2013-01-04 16:24:24', 'B007Z0OEJQ');
INSERT INTO price VALUES ('797', '$9.36', '2013-01-04 16:24:25', 'B007ZG3068');
INSERT INTO price VALUES ('798', '$7.00', '2013-01-04 16:24:26', 'B0081AYT80');
INSERT INTO price VALUES ('799', '$85.00', '2013-01-04 16:24:27', 'B0087T1S6G');
INSERT INTO price VALUES ('800', '$999.99', '2013-01-04 16:24:28', 'B0088L18TU');
INSERT INTO price VALUES ('801', '$659.95', '2013-01-04 16:24:29', 'B0097CZJEO');
INSERT INTO price VALUES ('802', '$419.86', '2013-01-04 16:24:30', 'B009AAU9VQ');
INSERT INTO price VALUES ('803', '$495.00', '2013-01-04 16:24:31', 'B009AEP6YM');
INSERT INTO price VALUES ('804', '$439.00', '2013-01-04 16:24:32', 'B009AU2JIC');
INSERT INTO price VALUES ('805', '$849.99', '2013-01-04 16:24:33', 'B009B8E9ZO');
INSERT INTO price VALUES ('806', '$1,199.99', '2013-01-04 16:24:42', 'B009DXVVI0');
INSERT INTO price VALUES ('807', '$249.00', '2013-01-04 16:24:42', 'B009LL9VDG');
INSERT INTO price VALUES ('808', '$1,323.99', '2013-01-04 16:24:43', 'B009M3PKJ2');
INSERT INTO price VALUES ('809', '$329.98', '2013-01-04 16:24:44', 'B009QVQQ5C');
INSERT INTO price VALUES ('810', '$489.99', '2013-01-04 16:24:44', 'B009X8EA92');
INSERT INTO price VALUES ('811', '$15.78', '2013-01-04 21:02:12', '0240523830');
INSERT INTO price VALUES ('812', '$21.79', '2013-01-04 21:02:15', '0321862783');
INSERT INTO price VALUES ('813', '$27.30', '2013-01-04 21:02:16', '0321884833');
INSERT INTO price VALUES ('814', '$12.51', '2013-01-04 21:02:19', '0375758976');
INSERT INTO price VALUES ('815', '$16.00', '2013-01-04 21:02:22', '0740797719');
INSERT INTO price VALUES ('816', '$20.00', '2013-01-04 21:02:24', '0765325950');
INSERT INTO price VALUES ('817', '$10.86', '2013-01-04 21:02:25', '1455525413');
INSERT INTO price VALUES ('818', '$11.19', '2013-01-04 21:02:25', '1455525456');
INSERT INTO price VALUES ('819', '$15.07', '2013-01-04 21:02:25', '1576876284');
INSERT INTO price VALUES ('820', '$13.76', '2013-01-04 21:02:30', '1592537251');
INSERT INTO price VALUES ('821', '$8.19', '2013-01-04 21:02:34', '1600583040');
INSERT INTO price VALUES ('822', '$7.98', '2013-01-04 21:02:34', '1854249703');
INSERT INTO price VALUES ('823', '$6.88', '2013-01-04 21:02:35', 'B000052YM4');
INSERT INTO price VALUES ('824', '$12.60', '2013-01-04 21:02:39', 'B00011VDB8');
INSERT INTO price VALUES ('825', '$1.36', '2013-01-04 21:02:40', 'B00027EG9C');
INSERT INTO price VALUES ('826', '$0.01', '2013-01-04 21:02:41', 'B0002TMY1C');
INSERT INTO price VALUES ('827', '$9.97', '2013-01-04 21:02:44', 'B0009VELG4');
INSERT INTO price VALUES ('828', '$23.03', '2013-01-04 21:02:45', 'B000EM2S6I');
INSERT INTO price VALUES ('829', '$15.29', '2013-01-04 21:02:47', 'B000FA9P3S');
INSERT INTO price VALUES ('830', '$8.58', '2013-01-04 21:02:47', 'B000FADVPQ');
INSERT INTO price VALUES ('831', '$27.95', '2013-01-04 21:02:48', 'B000FELZ7S');
INSERT INTO price VALUES ('832', '$61.59', '2013-01-04 21:02:50', 'B000H3BCWU');
INSERT INTO price VALUES ('833', '$33.09', '2013-01-04 21:02:53', 'B000HBILB2');
INSERT INTO price VALUES ('834', '$5.99', '2013-01-04 21:02:56', 'B000L70MQO');
INSERT INTO price VALUES ('835', '0', '2013-01-04 21:03:04', 'B000RB5XZE');
INSERT INTO price VALUES ('836', '$3.98', '2013-01-04 21:03:04', 'B000SSV8AA');
INSERT INTO price VALUES ('837', '$98.20', '2013-01-04 21:03:28', 'B000W7BHJY');
INSERT INTO price VALUES ('838', '$23.31', '2013-01-04 21:03:30', 'B000YM6FK8');
INSERT INTO price VALUES ('839', '$23.58', '2013-01-04 21:03:31', 'B0016OATEG');
INSERT INTO price VALUES ('840', '$2.99', '2013-01-04 21:03:32', 'B001B4Q5X0');
INSERT INTO price VALUES ('841', '$12.99', '2013-01-04 21:03:33', 'B001JKTTVQ');
INSERT INTO price VALUES ('842', '$10.64', '2013-01-04 21:03:35', 'B001LEZQA8');
INSERT INTO price VALUES ('843', '$8.63', '2013-01-04 21:03:38', 'B001LVA0XO');
INSERT INTO price VALUES ('844', '$29.99', '2013-01-04 21:03:39', 'B001QBJRTM');
INSERT INTO price VALUES ('845', '$199.66', '2013-01-04 21:03:41', 'B001UBB9GM');
INSERT INTO price VALUES ('846', '$19.10', '2013-01-04 21:03:41', 'B00266D41S');
INSERT INTO price VALUES ('847', '$45.08', '2013-01-04 21:03:42', 'B0028N6YH0');
INSERT INTO price VALUES ('848', '$25.95', '2013-01-04 21:03:43', 'B002E0UE8C');
INSERT INTO price VALUES ('849', '$17.07', '2013-01-04 21:03:44', 'B002N0KRG2');
INSERT INTO price VALUES ('850', '$12.00', '2013-01-04 21:03:46', 'B002PXVYE6');
INSERT INTO price VALUES ('851', '$279.00', '2013-01-04 21:03:47', 'B002SW68V8');
INSERT INTO price VALUES ('852', '$3.00', '2013-01-04 21:03:48', 'B002UDO7XG');
INSERT INTO price VALUES ('853', '$2.98', '2013-01-04 21:03:52', 'B00372FOXQ');
INSERT INTO price VALUES ('854', '$4.82', '2013-01-04 21:03:56', 'B003EYW0FW');
INSERT INTO price VALUES ('855', '$7.15', '2013-01-04 21:03:58', 'B003RXV0HY');
INSERT INTO price VALUES ('856', '$13.98', '2013-01-04 21:04:00', 'B003VNKNEQ');
INSERT INTO price VALUES ('857', '$279.95', '2013-01-04 21:04:02', 'B0041INZCM');
INSERT INTO price VALUES ('858', '$59.99', '2013-01-04 21:04:04', 'B004287914');
INSERT INTO price VALUES ('859', '$133.15', '2013-01-04 21:04:05', 'B0043X7JRW');
INSERT INTO price VALUES ('860', '$19.95', '2013-01-04 21:04:08', 'B004561FTK');
INSERT INTO price VALUES ('861', '$17.99', '2013-01-04 21:04:08', 'B0045I1EUI');
INSERT INTO price VALUES ('862', '$183.18', '2013-01-04 21:04:09', 'B004B9QNJS');
INSERT INTO price VALUES ('863', '$29.95', '2013-01-04 21:04:10', 'B004BPVF7W');
INSERT INTO price VALUES ('864', '$24.99', '2013-01-04 21:04:11', 'B004NLL0TM');
INSERT INTO price VALUES ('865', '$10.85', '2013-01-04 21:04:16', 'B004OA72H6');
INSERT INTO price VALUES ('866', '$8.14', '2013-01-04 21:04:18', 'B004SUILFO');
INSERT INTO price VALUES ('867', '$420.00', '2013-01-04 21:04:20', 'B004ZLV5PE');
INSERT INTO price VALUES ('868', '$33.66', '2013-01-04 21:04:21', 'B0051F95PA');
INSERT INTO price VALUES ('869', '$25.95', '2013-01-04 21:04:22', 'B0052PKF76');
INSERT INTO price VALUES ('870', '$0.69', '2013-01-04 21:04:24', 'B005JHIYLG');
INSERT INTO price VALUES ('871', '$899.00', '2013-01-04 21:04:26', 'B005M1AC2I');
INSERT INTO price VALUES ('872', '$25.99', '2013-01-04 21:04:28', 'B005UKZAJG');
INSERT INTO price VALUES ('873', '$4.69', '2013-01-04 21:04:29', 'B0062DPUY0');
INSERT INTO price VALUES ('874', '$116.66', '2013-01-04 21:04:31', 'B0068PQZFK');
INSERT INTO price VALUES ('875', '$1.83', '2013-01-04 21:04:33', 'B0068Y6CA4');
INSERT INTO price VALUES ('876', '$12.97', '2013-01-04 21:04:34', 'B006H8XQ7I');
INSERT INTO price VALUES ('877', '$20.99', '2013-01-04 21:04:35', 'B006INRHLS');
INSERT INTO price VALUES ('878', '$19.99', '2013-01-04 21:04:36', 'B0071AGJ98');
INSERT INTO price VALUES ('879', '$810.48', '2013-01-04 21:04:36', 'B00750GCBY');
INSERT INTO price VALUES ('880', '$19.60', '2013-01-04 21:04:39', 'B007EIDQPW');
INSERT INTO price VALUES ('881', 'Too low to display', '2013-01-04 21:04:41', 'B007OWJL98');
INSERT INTO price VALUES ('882', '$216.30', '2013-01-04 21:04:45', 'B007Z0OEJQ');
INSERT INTO price VALUES ('883', '$9.36', '2013-01-04 21:04:46', 'B007ZG3068');
INSERT INTO price VALUES ('884', '$7.00', '2013-01-04 21:04:47', 'B0081AYT80');
INSERT INTO price VALUES ('885', '$85.00', '2013-01-04 21:04:49', 'B0087T1S6G');
INSERT INTO price VALUES ('886', '$999.99', '2013-01-04 21:04:58', 'B0088L18TU');
INSERT INTO price VALUES ('887', '$50.00', '2013-01-04 21:05:01', 'B0091JKFG0');
INSERT INTO price VALUES ('888', '$659.95', '2013-01-04 21:05:02', 'B0097CZJEO');
INSERT INTO price VALUES ('889', '$419.86', '2013-01-04 21:05:04', 'B009AAU9VQ');
INSERT INTO price VALUES ('890', '$493.99', '2013-01-04 21:05:10', 'B009AEP6YM');
INSERT INTO price VALUES ('891', '$439.00', '2013-01-04 21:05:13', 'B009AU2JIC');
INSERT INTO price VALUES ('892', '$849.99', '2013-01-04 21:05:18', 'B009B8E9ZO');
INSERT INTO price VALUES ('893', '$1,199.99', '2013-01-04 21:05:27', 'B009DXVVI0');
INSERT INTO price VALUES ('894', '$249.00', '2013-01-04 21:05:35', 'B009LL9VDG');
INSERT INTO price VALUES ('895', '$1,323.99', '2013-01-04 21:05:40', 'B009M3PKJ2');
INSERT INTO price VALUES ('896', '$329.98', '2013-01-04 21:05:42', 'B009QVQQ5C');
INSERT INTO price VALUES ('897', '$489.99', '2013-01-04 21:05:51', 'B009X8EA92');
INSERT INTO price VALUES ('898', '$25.00', '2013-01-04 21:05:52', 'BT00CTOYI4');
INSERT INTO price VALUES ('899', '$17.93', '2013-04-01 14:53:01', '0240523830');
INSERT INTO price VALUES ('900', '$21.62', '2013-04-01 14:53:08', '0321862783');
INSERT INTO price VALUES ('901', '$27.42', '2013-04-01 14:53:11', '0321884833');
INSERT INTO price VALUES ('902', '$17.93', '2013-04-01 14:53:18', '0240523830');
INSERT INTO price VALUES ('903', '$14.30', '2013-04-01 14:53:28', '0375758976');
INSERT INTO price VALUES ('904', '$21.62', '2013-04-01 14:53:29', '0321862783');
INSERT INTO price VALUES ('905', '$27.42', '2013-04-01 14:53:31', '0321884833');
INSERT INTO price VALUES ('906', '$14.30', '2013-04-01 14:53:35', '0375758976');
INSERT INTO price VALUES ('907', '$15.42', '2013-04-01 14:53:50', '0740797719');
INSERT INTO price VALUES ('908', '$14.74', '2013-04-01 14:53:52', '0765325950');
INSERT INTO price VALUES ('909', '$15.42', '2013-04-01 14:53:57', '0740797719');
INSERT INTO price VALUES ('910', '$14.74', '2013-04-01 14:53:59', '0765325950');
INSERT INTO price VALUES ('911', '$6.74', '2013-04-01 14:53:59', '1455525413');
INSERT INTO price VALUES ('912', '$7.12', '2013-04-01 14:54:03', '1455525456');
INSERT INTO price VALUES ('913', '$6.74', '2013-04-01 14:54:06', '1455525413');
INSERT INTO price VALUES ('914', '$15.07', '2013-04-01 14:54:07', '1576876284');
INSERT INTO price VALUES ('915', '$7.12', '2013-04-01 14:54:08', '1455525456');
INSERT INTO price VALUES ('916', '$13.81', '2013-04-01 14:54:08', '1592537251');
INSERT INTO price VALUES ('917', '$15.07', '2013-04-01 14:54:11', '1576876284');
INSERT INTO price VALUES ('918', '$13.81', '2013-04-01 14:54:17', '1592537251');
INSERT INTO price VALUES ('919', '$4.56', '2013-04-01 14:54:22', '1600583040');
INSERT INTO price VALUES ('920', '$7.40', '2013-04-01 14:54:23', '1854249703');
INSERT INTO price VALUES ('921', '$3.94', '2013-04-01 14:54:28', 'B000052YM4');
INSERT INTO price VALUES ('922', '$4.56', '2013-04-01 14:54:32', '1600583040');
INSERT INTO price VALUES ('923', '$12.99', '2013-04-01 14:54:38', 'B00011VDB8');
INSERT INTO price VALUES ('924', '$1.99', '2013-04-01 14:54:41', 'B00027EG9C');
INSERT INTO price VALUES ('925', '$0.01', '2013-04-01 14:54:43', 'B0002TMY1C');
INSERT INTO price VALUES ('926', '$12.95', '2013-04-01 14:54:45', 'B0009VELG4');
INSERT INTO price VALUES ('927', '$23.10', '2013-04-01 14:54:46', 'B000EM2S6I');
INSERT INTO price VALUES ('928', '$19.99', '2013-04-01 14:54:47', 'B000FA9P3S');
INSERT INTO price VALUES ('929', '$11.99', '2013-04-01 14:54:50', 'B000FADVPQ');
INSERT INTO price VALUES ('930', '$22.41', '2013-04-01 14:54:53', 'B000FELZ7S');
INSERT INTO price VALUES ('931', '$61.59', '2013-04-01 14:55:03', 'B000H3BCWU');
INSERT INTO price VALUES ('932', '$39.99', '2013-04-01 14:55:25', 'B000HBILB2');
INSERT INTO price VALUES ('933', '$5.99', '2013-04-01 14:55:25', 'B000L70MQO');
INSERT INTO price VALUES ('934', '$2.39', '2013-04-01 14:55:26', 'B000RB5XZE');
INSERT INTO price VALUES ('935', '$2.95', '2013-04-01 14:55:27', 'B000SSV8AA');
INSERT INTO price VALUES ('936', '$119.99', '2013-04-01 14:55:32', 'B000W7BHJY');
INSERT INTO price VALUES ('937', '$24.95', '2013-04-01 14:55:32', 'B000YM6FK8');
INSERT INTO price VALUES ('938', '$23.70', '2013-04-01 14:55:36', 'B0016OATEG');
INSERT INTO price VALUES ('939', '$2.99', '2013-04-01 14:55:37', 'B001B4Q5X0');
INSERT INTO price VALUES ('940', '$12.99', '2013-04-01 14:55:38', 'B001JKTTVQ');
INSERT INTO price VALUES ('941', '$5.17', '2013-04-01 14:55:42', 'B001LEZQA8');
INSERT INTO price VALUES ('942', '$12.50', '2013-04-01 14:55:51', 'B001LVA0XO');
INSERT INTO price VALUES ('943', '$30.77', '2013-04-01 14:55:53', 'B001QBJRTM');
INSERT INTO price VALUES ('944', '$164.00', '2013-04-01 14:55:53', 'B001UBB9GM');
INSERT INTO price VALUES ('945', '$19.10', '2013-04-01 14:56:03', 'B00266D41S');
INSERT INTO price VALUES ('946', '$46.99', '2013-04-01 14:56:08', 'B0028N6YH0');
INSERT INTO price VALUES ('947', '$25.95', '2013-04-01 14:56:12', 'B002E0UE8C');
INSERT INTO price VALUES ('948', '$17.80', '2013-04-01 14:56:12', 'B002N0KRG2');
INSERT INTO price VALUES ('949', '$12.00', '2013-04-01 14:56:13', 'B002PXVYE6');

-- ----------------------------
-- Table structure for `pricerange`
-- ----------------------------
DROP TABLE IF EXISTS `pricerange`;
CREATE TABLE `pricerange` (
  `rangeid` int(11) NOT NULL auto_increment,
  `rangename` varchar(255) default NULL,
  `cataname` varchar(255) default NULL,
  PRIMARY KEY  (`rangeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pricerange
-- ----------------------------

-- ----------------------------
-- Table structure for `recomm`
-- ----------------------------
DROP TABLE IF EXISTS `recomm`;
CREATE TABLE `recomm` (
  `goodsid` varchar(255) NOT NULL,
  `image` varchar(255) default NULL,
  `goodsname` varchar(255) default NULL,
  `describe` varchar(255) default NULL,
  `price` varchar(255) default NULL,
  `level` varchar(255) default NULL,
  `addr` varchar(255) default NULL,
  `cataname` varchar(255) default NULL,
  PRIMARY KEY  (`goodsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recomm
-- ----------------------------

-- ----------------------------
-- Table structure for `top`
-- ----------------------------
DROP TABLE IF EXISTS `top`;
CREATE TABLE `top` (
  `goodsid` varchar(255) NOT NULL,
  `goodsname` varchar(255) default NULL,
  `introduce` varchar(255) default NULL,
  `image` varchar(255) default NULL,
  `addr` varchar(255) default NULL,
  `price` varchar(255) default NULL,
  `time` datetime default NULL,
  `typename` varchar(255) default NULL,
  `goodstypeid` int(11) NOT NULL,
  PRIMARY KEY  (`goodsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of top
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int(11) NOT NULL auto_increment,
  `username` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `privileges` varchar(255) default NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO user VALUES ('1', 'yangxu', '14c593abecdb8380ab8db76a9b710f16', 'xuxu_1111@126.com', '1');
INSERT INTO user VALUES ('2', 'gaosiwei', '202cb962ac59075b964b07152d234b70', 'gaosiwei', '1');
INSERT INTO user VALUES ('3', 'xuxu', '14c593abecdb8380ab8db76a9b710f16', 'yang.asahi@gmail.com', '0');
INSERT INTO user VALUES ('5', 'guoguo', 'e10adc3949ba59abbe56e057f20f883e', 'yang.asahi@gmail.com', '1');
INSERT INTO user VALUES ('6', 'cao', 'e10adc3949ba59abbe56e057f20f883e', 'xuxu_1111@126.com', '1');
INSERT INTO user VALUES ('7', '123456', 'e10adc3949ba59abbe56e057f20f883e', 'xuxu_1111@126.com', '0');
INSERT INTO user VALUES ('8', 'xuxu2', 'e807f1fcf82d132f9bb018ca6738a19f', 'xuxu_1111@126.com', '1');

-- ----------------------------
-- View structure for `as`
-- ----------------------------
DROP VIEW IF EXISTS `as`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `as` AS select `goodstype`.`typename` AS `typename`,`goods`.`goodsid` AS `goodsid`,`goods`.`goodsname` AS `goodsname`,`goods`.`introduce` AS `introduce`,`goods`.`image` AS `image`,`goods`.`addr` AS `addr`,`goods`.`istop` AS `istop`,`goods`.`isrecomm` AS `isrecomm`,`goods`.`price` AS `price`,`goods`.`time` AS `time` from (`goods` join `goodstype`);
