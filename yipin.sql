/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50067
Source Host           : localhost:3306
Source Database       : yipin

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2013-06-08 17:12:25
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
-- Table structure for `item`
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `BusinessID` varchar(255) NOT NULL,
  `address` varchar(255) default NULL,
  `businessName` varchar(255) default NULL,
  `city` varchar(255) default NULL,
  `cost` varchar(255) default NULL,
  `img` varchar(255) default NULL,
  `itemtype` varchar(255) default NULL,
  `teleNum` varchar(255) default NULL,
  `type` varchar(255) default NULL,
  PRIMARY KEY  (`BusinessID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO item VALUES ('1091721632-1495646258', '朝阳区同志街2742号(西康胡同口)', '圆缘园时尚餐厅', '长春市', '40', 'http://img0.aibangjuxin.com/ipic/cee0d54441b9e163_8.jpg', 'hotel', '0431-85646735 0431-85646736', '美食;其他美食');
INSERT INTO item VALUES ('1091726896-1495500980', '朝阳区创业大街1447号', '长春花园酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/bce9be26bb6bb319_8.jpg', 'live', '0431-85988888', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1092574752-1497491288', '吉林省长春市南关区长春大街1212号', '莫泰Motel 168连锁旅店-长春大街店', '长春市', '0', '', 'live', '0431-86020000', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1092599584-1495818447', '宽城区柳影路462号(近凯旋路)', '可达酒店', '长春市', '44', '', 'hotel', '0431-82624259', '东北菜;美食;婚宴酒店;结婚');
INSERT INTO item VALUES ('1092599696-1495504326', '经开区自由大路4487号(近临河街长春海关对面)', '大华饭店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/524329fa0948f4af_8.jpg', 'live', '0431-84632333 0431-84633636', '宾馆酒店;三星级酒店');
INSERT INTO item VALUES ('1092621648-1497491288', '建设街', '长春丰茂串城(长春分店)', '长春市', '57', 'http://img0.aibangjuxin.com/ipic/4164ba8104b1f64e_8.jpg', 'hotel', '0431-89816789 0431-89826789', '美食;烧烤');
INSERT INTO item VALUES ('1092625152-1497491316', '吉林省长春市朝阳区西康胡同百汇街口', '泊客宾馆', '长春市', '0', '', 'live', '0431-85610088', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('1092684064-1495660414', '朝阳区同志街(西康路口)', '味都拉面(同志街店)', '长春市', '29', 'http://img0.aibangjuxin.com/ipic/5a0b39bd1d4a80e2_8.jpg', 'hotel', '0431-82079385 0431-85661559', '美食;日本美食;日本料理');
INSERT INTO item VALUES ('1092877472-1497458827', '长春 绿园区 景阳大路2288号 (近春城大街)', '长春华天大酒店_景阳大路2288号_', '长春市', '0', '', 'live', '', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1092992592-1495805219', '朝阳区人民大街4501号名门饭店3楼(近隆礼路)', '红叶日本料理(名门店)', '长春市', '200', 'http://img0.aibangjuxin.com/ipic/f7fab1c75eaa36f1_8.jpg', 'hotel', '0431-85565166', '美食;日本美食;日本料理');
INSERT INTO item VALUES ('1093005600-1494365909', '二道区东盛大街(兴隆路口)', '全安烤鸭店(东盛店)', '长春市', '48', 'http://img0.aibangjuxin.com/ipic/23a90c890212abe9_8.jpg', 'hotel', '0431-89659568', '美食;其他美食');
INSERT INTO item VALUES ('1093007024-1494365909', '上海路万晟现代城1号楼(近大马路)', '长春市泰玖嘉旗假日酒店(泰玖嘉旗酒店)', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/bef7934307dc5598_8.jpg', 'live', '0431-85079999', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1093009024-1494366662', '南关区长春大街964号(与大经路交汇处)', '长春格林豪泰(大经路店)', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/122e64e724d09576_8.jpg', 'live', '0431-88931166', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1093010768-1495814141', '南关区人民大街2598号(人民广场旁)', '吉林省宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/f28bab27abedd056_8.jpg', 'live', '0431-88488999 0431-88488888', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1093011616-1495656378', '经济开发区经济技术开发区深圳街2号开发大厦东侧(自由大路旁)', '小湖南土菜馆(深圳街店)', '长春市', '32', '', 'hotel', '0431-84650035', '美食;湘菜');
INSERT INTO item VALUES ('1093069168-1495658888', '朝阳区建设街998号', '大唐食代(建设街店)', '长春市', '69', 'http://img0.aibangjuxin.com/ipic/50146cddcb77d1d_8.jpg', 'hotel', '0431-88519999', '美食;韩国料理;烧烤');
INSERT INTO item VALUES ('1093082080-1495504359', '朝阳区重庆路1255号卓展购物中心7楼(近西安大路)', '卓展美食广场', '长春市', '27', 'http://img0.aibangjuxin.com/ipic/30bece7b79eeb47_8.jpg', 'hotel', '0431-88922555', '美食;小吃快餐;其他小吃');
INSERT INTO item VALUES ('1093151712-1497475642', '吉林省长春市朝阳区东民主大街48号', '易休快捷酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/6559be9d332078f4_8.jpg', 'live', '0431-82651188 0431-88640666', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1093164144-1495646261', '朝阳区西民主大街1021号(近西朝阳路)', '馔食茶餐厅', '长春市', '52', 'http://img0.aibangjuxin.com/ipic/7950c8098e002c53_8.jpg', 'hotel', '0431-86428888 0431-88926000', '美食;小吃快餐;粤菜;茶餐厅;快餐');
INSERT INTO item VALUES ('1093165200-1495504327', '南关区人民大街1881号(与重庆路交汇处)', '长春长百合家欢假日宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/bdc89546a4ba40d4_8.jpg', 'live', '0431-88988884 0431-88968884', '宾馆酒店;经济型酒店;三星级酒店');
INSERT INTO item VALUES ('1093296144-1497491341', '朝阳区东民主大街666号', '社会主义新农村(东民主店)', '长春市', '40', 'http://img0.aibangjuxin.com/ipic/4fc45b74918e9c9_8.jpg', 'hotel', '0431-85666608 0431-88984848', '美食;农家菜');
INSERT INTO item VALUES ('1093296528-1497485918', '前进大街2699号吉林大学友谊园(近磐石路)', '广元餐厅', '长春市', '18', '', 'hotel', '0431-86674180 0431-87777839', '美食;韩国料理;川菜;其他川菜');
INSERT INTO item VALUES ('1093954176-1495658776', '朝阳区西安大路58号吉发广场C座1楼(近康平街)', '三朵云云南菜馆(西安大路店)', '长春市', '61', '', 'hotel', '0431-88996695', '美食;其他美食');
INSERT INTO item VALUES ('1093954544-1497475642', '朝阳区百汇街与桂林路交汇处', '铭苑麻辣香锅(百汇街店)', '长春市', '31', 'http://img0.aibangjuxin.com/ipic/d68633b79b0180a8_8.jpg', 'hotel', '0431-85654758 13154356111', '美食;香锅;川菜;火锅;其他火锅');
INSERT INTO item VALUES ('1094139200-1495501005', '朝阳区新民大街626号(与清华路交汇处)', '长春市新民宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/c6ea02f145167467_8.jpg', 'live', '0431-85593800 0431-85593888', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1094139600-1495504327', '朝阳区同志街2222号通汇大厦内(近同光路)', '长春水源华诚韩式时尚宾馆', '长春市', '0', '', 'live', '0431-85614444 0431-85614445', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1094186800-1495818299', '南关区亚泰大街7448号', '燕川美食轩(第48店)', '长春市', '33', '', 'hotel', '0431-85289018', '美食;火锅;其他火锅');
INSERT INTO item VALUES ('1094265136-1497486086', '朝阳区桂林路胡同与立信街交汇处(近立信街)', '城市比萨(桂林路店)', '长春市', '30', 'http://img0.aibangjuxin.com/ipic/1b51f00e3a7de8e8_8.jpg', 'hotel', '0431-85661229', '美食;小吃快餐;其他小吃;西餐;其他西餐');
INSERT INTO item VALUES ('1094265328-1494365793', '临河街5062号天地十二坊C24栋S01室(近珠海路)', '和悦小菜', '长春市', '72', 'http://img0.aibangjuxin.com/ipic/b39c587b7fad5cd4_8.jpg', 'hotel', '0431-89655588 0431-89655577', '美食;其他美食');
INSERT INTO item VALUES ('1094301904-1495816879', '朝阳区西康路(近小蜜蜂面饭馆)', '八八八拉面(西康路店)', '长春市', '23', 'http://img0.aibangjuxin.com/ipic/e3f2d88443dc7c72_8.jpg', 'hotel', '0431-85623838', '美食;日本美食;日本料理');
INSERT INTO item VALUES ('1094302976-1495504307', '吉林省长春市朝阳区天宝街466号', '天宝商务宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/9e74a7c2df1d2059_8.jpg', 'live', '0431-85090188 0431-85090166', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1094387040-1495504326', '长春 朝阳区 人民大街1968号 (近重庆路)', '长春亚泰饭店_人民大街1968号_', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/a83b39e88a291b18_8.jpg', 'live', '0431-88931740', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1094807888-1495659628', '长春市宽城区青岛路72号(与人民大街交汇处)', '长春梦空间快捷酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/3126e10b8e0c1850_8.jpg', 'live', '0431-89698555', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('1094808400-1494366662', '长春市南关区大经路1189号', '长春如家快捷酒店(大经路店)', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/f8d0158e5b4b5853_8.jpg', 'live', '0431-88930088 13504472071', '宾馆酒店;如家;经济型酒店');
INSERT INTO item VALUES ('1094834128-1495658885', '宽城区吴淞路236号(贵阳街口)', '含香嘎巴锅私家菜馆(吴淞路店)', '长春市', '29', 'http://img0.aibangjuxin.com/ipic/b13e3316a6255f0e_8.jpg', 'hotel', '0431-82792380 0431-86268015', '美食;农家菜');
INSERT INTO item VALUES ('1094835888-1494366738', '西安大路1077号', '长春金都饭店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/779c86ec0a91a6f2_8.jpg', 'live', '0431-88482828 0431-88482700', '宾馆酒店;四星级酒店');
INSERT INTO item VALUES ('1095542416-1495504501', '朝阳区隆礼路(长庆街口)', '陋食铭慢餐简菜馆', '长春市', '46', 'http://img0.aibangjuxin.com/ipic/3534342fbcc94f13_8.jpg', 'hotel', '0431-85636616', '美食;其他美食');
INSERT INTO item VALUES ('1096106400-1495666024', '南关区亚泰大街1138号新天地购物公园4楼美食天地(近家乐福)', '川人百味(新天地店)', '长春市', '28', 'http://img0.aibangjuxin.com/ipic/3a5d4f6ba98a10d9_8.jpg', 'hotel', '0431-88767611', '美食;川菜;其他川菜');
INSERT INTO item VALUES ('1220273481-423260363', '康平街4号', '长春松源大酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/f1a21cbb146f43d6_8.jpg', 'live', '0431-81155155 0431-81155666', '宾馆酒店;三星级酒店');
INSERT INTO item VALUES ('1226441049-421828195', '岳阳街1278号(隆礼路口)', '东来顺', '长春市', '55', 'http://img0.aibangjuxin.com/ipic/b4742547c1fc3a02_8.jpg', 'hotel', '0431-85653881', '美食;火锅;其他火锅');
INSERT INTO item VALUES ('1226687513-421828145', '人民大街280号', '长春科技城商务宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/cead5df5e59cb57_8.jpg', 'live', '0431-88015433 0431-83597028', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('1226688969-423260363', '长春市南关区平泉路338号(近永吉街)', '长春缘源馨居商务宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/6c60c0aa0dd9d987_8.jpg', 'live', '0431-88626000', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('1226804089-423259481', '朝阳区同志街2076号(同志街与清华路交汇处路口)', '东方火锅(同志街店)', '长春市', '54', 'http://img0.aibangjuxin.com/ipic/390b72855a719d62_8.jpg', 'hotel', '0431-85631233 0431-85651000', '美食;火锅;其他火锅');
INSERT INTO item VALUES ('1226807225-421828978', '朝阳区西安大路660号(国际大厦A,B座之间)', '喜相逢烤吧(西安大路店)', '长春市', '46', 'http://img0.aibangjuxin.com/ipic/ff73e1a90a33d51f_8.jpg', 'hotel', '0431-88925677 0431-88940909', '美食;烧烤');
INSERT INTO item VALUES ('1227110745-423772886', '同志街78广场6楼(自由大路口)', '圣鲸蒲公英美食汇', '长春市', '43', 'http://img0.aibangjuxin.com/ipic/a152d6e5dfcea31a_8.jpg', 'hotel', '0431-85675722 0431-85675711', '美食;自助餐');
INSERT INTO item VALUES ('1227136761-423259554', '朝阳区红旗街中医院后(PAPA`S旁)', '土家族烤鱼', '长春市', '34', '', 'hotel', '0431-85661086', '美食;川菜;其他川菜');
INSERT INTO item VALUES ('1227258793-423260370', '吉林省长春市南关区人民大街4066号', '森工宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/321d4fa82d3ce6bc_8.jpg', 'live', '0431-88480318 0431-88972211', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1227270281-421828978', '南关区东岭南街939号', '百屹酒店', '长春市', '0', '', 'live', '0431-85235222 0431-85235366', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1227427657-423943136', '西新区创业大街1447号(近昆仑二路)', '长春花园酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/37c5f4069e546e7b_8.jpg', 'live', '0431-85974741 0431-85975106', '宾馆酒店;四星级酒店');
INSERT INTO item VALUES ('1227444249-415123429', '工农大路1128号欧亚商都B1楼(近锦西路)', '阿满食品(工农大路店)', '长春市', '23', '', 'hotel', '0431-85616749 0431-85616600', '小吃快餐;熟食;美食');
INSERT INTO item VALUES ('1228586569-423258695', '桂林路立信街与西康路交汇处', '巴比伦快捷酒店(立信店)', '长春市', '0', '', 'live', '0431-85837000', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('1228661145-415127058', '新发路918号', '长春国泰宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/6ad6228edfbfe2f_8.jpg', 'live', '0431-82098501 0431-82098502', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1228729049-423758634', '长春 朝阳区 建设街881号 (近新华路)', '长春意江南利洋大酒店_建设街881号_', '长春市', '0', '', 'live', '', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1229235977-423124061', '同志街1339号', '长春泰山宾馆', '长春市', '0', '', 'live', '0431-85634991 0431-85634992', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1229236521-415126989', '南关区重庆路57号', '长春饭店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/f44d3f1c16c39067_8.jpg', 'live', '0431-88915875 0431-88918322', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1229249417-423258718', '朝阳区重庆路1255号卓展时代广场6-12楼(近卓展购物中心)', '长春卓展天天酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/9c31449feb988d6_8.jpg', 'live', '0431-88486865 0431-88486888', '宾馆酒店;四星级酒店;五星级酒店');
INSERT INTO item VALUES ('1229942777-423758634', '长春市经济技术开发区世舜路126号(与临河街交汇处)', '长春万华府商务宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/c49bdde19c799e0a_8.jpg', 'live', '0431-88696666', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1229944265-421825686', '朝阳区红旗街399号巴黎春天百货1楼(近欧亚商都)', '哈根达斯(巴黎春天店)', '长春市', '66', 'http://img0.aibangjuxin.com/ipic/a52c10180d5909d0_8.jpg', 'hotel', '0431-85931668', '冰淇淋;甜点饮品;美食');
INSERT INTO item VALUES ('1231374617-423260307', '人民大街2218号', '全聚德(长春店)', '长春市', '96', 'http://img0.aibangjuxin.com/ipic/9c695604b2c4db98_8.jpg', 'hotel', '0431-88897522 0431-88975222', '美食;北京菜');
INSERT INTO item VALUES ('1232103865-422164706', '净月开发区净月大街7430号', '三星净月潭别墅酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/2f75a28f10833bd_8.jpg', 'live', '0431-84511701', '宾馆酒店;三星级酒店');
INSERT INTO item VALUES ('1232116729-421984025', '南关区解放大路1933号(与人民大街交汇处)', '吉林省展览馆园东宾馆(长春)', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/1764c92714baf86d_8.jpg', 'live', '0431-88911247 0431-88971791', '宾馆酒店;三星级酒店');
INSERT INTO item VALUES ('1232117001-423773422', '朝阳区硅谷大街与蔚山路交汇处', '长春沃阁时尚宾馆', '长春市', '0', '', 'live', '0431-85874111', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1232260649-422164706', '大经路1277号', '长春驿家商务宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/a381590e76f5540c_8.jpg', 'live', '0431-81939990', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('1232270137-421984025', '南关区亚泰大街6789号(南湖大路口)', '温度铁板烧(亚泰大街店)', '长春市', '170', '', 'hotel', '0431-82212666 0431-82212777', '美食;烧烤;日本美食;日本料理');
INSERT INTO item VALUES ('1232270601-421984025', '南关区平阳街638号 (近至善路)', '中吉商务酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/beb4c3cbf59e3fb_8.jpg', 'live', '0431-81933555 0431-88773333', '宾馆酒店;三星级酒店');
INSERT INTO item VALUES ('1232270681-421984025', '同志街3536号', '长春万家湖畔宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/914bc24e3b2505b1_8.jpg', 'live', '0431-89635555 0431-85267298', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1232270793-423259518', '二道区吉林大路2699号(近民丰街)', '聚元鸿大酒店', '长春市', '50', 'http://img0.aibangjuxin.com/ipic/bad4453b6bea4896_8.jpg', 'hotel', '0431-84887111 0431-89999996', '东北菜;美食;婚宴酒店;结婚');
INSERT INTO item VALUES ('1232518025-423260370', '净月开发区净月潭长双公路', '积德泉度假山庄', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/f8e0363cf3ba8a17_8.jpg', 'live', '0431-84163786 0431-84164900', '度假村;宾馆酒店;旅游景点;美食;农家菜');
INSERT INTO item VALUES ('1232519369-421816454', '绿园区西安大路2957号(青年路)', '金棕榈海鲜大酒店', '长春市', '58', 'http://img0.aibangjuxin.com/ipic/669bd2ad48386e6_8.jpg', 'live', '0431-87913263 0431-87925345', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1232800793-423759483', '树勋街2-7号', '眠酷商务宾馆(长春树勋店)', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/5d1389f20b6b7ca9_8.jpg', 'live', '0431-85916000 0431-88938678', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('1232810137-414995237', '吉林省长春市净月经济开发区彩宇大街1363号', '彩宇宾馆', '长春市', '0', '', 'live', '0431-87063111 0431-87063222', '宾馆酒店;三星级酒店');
INSERT INTO item VALUES ('1232827305-421984025', '朝阳区红旗街616号万达商业广场3楼359-363室(省医院旁)', '台湾菜馆(红旗街万达店)', '长春市', '55', 'http://img0.aibangjuxin.com/ipic/bca6b42ebb57c252_8.jpg', 'hotel', '0431-81936661', '美食;其他美食');
INSERT INTO item VALUES ('1250432649-423760382', '绿园区普阳街1586号(近蛟河庄稼院)', '渔舟湾', '长春市', '49', 'http://img0.aibangjuxin.com/ipic/c8625e1779e179d0_8.jpg', 'hotel', '0431-85887588 0431-85887688', '美食;其他美食');
INSERT INTO item VALUES ('1250459193-423258695', '南关区自由大路1596号(与人民大街交汇处向东200米路南)', '长春东师会馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/4093afd2ae7f4ebb_8.jpg', 'live', '0431-85260666 0431-85260618', '宾馆酒店;招待所');
INSERT INTO item VALUES ('1250461001-423760382', '朝阳区百汇街与隆礼胡同交汇处', '溢香阁巫山烤全鱼', '长春市', '27', 'http://img0.aibangjuxin.com/ipic/5db41ed952ef440d_8.jpg', 'hotel', '13944802400', '美食;烤鱼;川菜');
INSERT INTO item VALUES ('1363577770-448397336', '高新区高新技术产业开发区光谷大街2008号(近高新怡众名城)', '福临万家时尚餐厅', '长春市', '51', 'http://img0.aibangjuxin.com/ipic/ce894c3568ea8625_8.jpg', 'hotel', '0431-87033788', '美食;川菜;其他川菜');
INSERT INTO item VALUES ('1364667818-449476683', '吉林省长春市南关区人民大街4501号4楼(近隆礼路)', '名门饭店巴西烤肉', '长春市', '83', 'http://img0.aibangjuxin.com/ipic/690f0a31086e05aa_8.jpg', 'hotel', '0431-85622888', '美食;烧烤');
INSERT INTO item VALUES ('1364677738-448516297', '吉林省长春市南关区亚泰大街6788号', '泰湖宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/baf1d1a9b315603_8.jpg', 'live', '0431-85225000 0431-85225677', '宾馆酒店;三星级酒店');
INSERT INTO item VALUES ('1364683162-449486826', '南关区岳阳街50-7号(近动植物公园西门)', '社会主义新农村(岳阳店)', '长春市', '41', 'http://img0.aibangjuxin.com/ipic/3090c96544fad23d_8.jpg', 'hotel', '0431-89999922 0431-85666606', '美食;农家菜');
INSERT INTO item VALUES ('1364697738-448276527', '宽城区建设街65号(与白菊路的交口处)', '长春百菊大厦宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/cc9aa2e12cc44030_8.jpg', 'live', '0431-86138778 0431-86138000', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1364704202-447695186', '吉林省长春市宽城区人民大街238号', '长春客运宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/1e70d17147ebd34d_8.jpg', 'live', '0431-86799300 0431-86799388', '宾馆酒店;经济型酒店;三星级酒店');
INSERT INTO item VALUES ('1365804970-449461315', '朝阳区富锦路1271号(隆礼路口)', '金三湘(富锦路店)', '长春市', '49', 'http://img0.aibangjuxin.com/ipic/295378f3d1680a02_8.jpg', 'hotel', '0431-85618898 0431-85643636', '美食;湘菜');
INSERT INTO item VALUES ('1365815114-449472590', '长春 朝阳区 人民大街6969号 (近吉林广播电视大学)', '长春吉林物贸大酒店_人民大街6969号_', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/656270cf4315e4d3_8.jpg', 'live', '', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1365817738-449463049', '吉林省长春市绿园区普阳街1869号', '新碧丽湖酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/496bc18d0aaa5310_8.jpg', 'live', '0431-87690777', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1366627866-449472590', '南关区东四马路491号(近亚泰大街)', '大佛口水煮鱼(四马路店)', '长春市', '32', 'http://img0.aibangjuxin.com/ipic/2bad75e1859bb2ad_8.jpg', 'hotel', '0431-88740099', '美食;川菜;其他川菜');
INSERT INTO item VALUES ('1366630890-449476683', '朝阳区西安大路569号香格里拉饭店1楼', '香格里拉西餐厅', '长春市', '130', 'http://img0.aibangjuxin.com/ipic/ae819de66b572921_8.jpg', 'hotel', '0431-88981818', '美食;自助餐;甜点饮品;西餐;其他西餐');
INSERT INTO item VALUES ('1367048090-448289096', '绿园区春城大街锦江公园附近', '锦洋吉菜食府', '长春市', '34', '', 'hotel', '0431-87799855', '美食;农家菜');
INSERT INTO item VALUES ('1367051770-448516163', '经济技术开发区仙台大街525号(富民大厦内)', '长春乾元富民酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/6318b2ffebf85fa9_8.jpg', 'live', '0431-81913855 0431-81913866', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1387116634-448289879', '上海路与大马路交汇处', '长春泰玖嘉旗假日酒店', '长春市', '0', '', 'live', '0431-85073222', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('1387118810-448138952', '朝阳区辽宁路2399号(近西安大路)', '长春圣豪酒店', '长春市', '0', '', 'live', '0431-86139646 0431-86139682', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('1387128506-448513610', '长春市宽城区中环7区2号楼(亚泰大街与东黄河路交汇处)', '长春绿洲宾馆', '长春市', '0', '', 'live', '0431-86763339', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1387214890-448516217', '朝阳区立信街(近西康路)', '勾魂面(桂林路店)', '长春市', '12', 'http://img0.aibangjuxin.com/ipic/8cb867522e085bec_8.jpg', 'hotel', '0431-88536655', '美食;川菜;其他川菜');
INSERT INTO item VALUES ('1387228442-448289870', '吉林省长春市南关区人民大街6969号', '吉林物贸大酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/156f2665220d7c2b_8.jpg', 'live', '0431-85599269 0431-85599000', '宾馆酒店;三星级酒店');
INSERT INTO item VALUES ('1387313002-449472590', '朝阳区西安大路660号(国际大厦后侧)', '松原二高狗肉馆', '长春市', '27', '', 'hotel', '0431-88961505 0431-88896150', '美食;韩国料理');
INSERT INTO item VALUES ('1387526250-448513148', '蔚山路(飞跃路口)', '大鹅岛绿色生态园中餐厅', '长春市', '55', 'http://img0.aibangjuxin.com/ipic/26b5b4ace34be2b8_8.jpg', 'hotel', '0431-85179688 0431-85180509', '美食;农家菜');
INSERT INTO item VALUES ('1387526458-447695186', '朝阳区西朝阳路215号(中国城对面)', '春园烤肉王', '长春市', '39', 'http://img0.aibangjuxin.com/ipic/1adc6302e70ffb3d_8.jpg', 'hotel', '0431-86564039 0431-88560123', '美食;烧烤');
INSERT INTO item VALUES ('1387661194-448513148', '南关区东南湖大路与东岭南街交汇处南行500米(伊通河西)', '长春U-time时光驿站宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/64f94cdf1df63e02_8.jpg', 'live', '18744175027 18686639035', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1387816394-448287641', '朝阳区红旗街616号万达商业广场1楼183-185室(省医院旁)', '黑天鹅烘焙艺术工坊(红旗街店)', '长春市', '72', 'http://img0.aibangjuxin.com/ipic/bc286c3aedc4ad6c_8.jpg', 'hotel', '', '美食;甜点饮品;面包西点');
INSERT INTO item VALUES ('1387816458-448139100', '长春市朝阳区湖滨街与繁荣路交汇处(威尼斯花园29栋)', '长春美家时尚宾馆(威尼斯店)(原美家视界风尚酒店)', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/909bf8bf45ddc639_8.jpg', 'live', '18043026256 0431-87099333', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1387817626-447695186', '龙江路242号(与北京大街交汇处,天新饭店西侧)', '蒲公英时尚酒店', '长春市', '0', '', 'live', '0431-85830711 0431-85862555', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1387919098-448513160', '南关区大经路261号北安小区1栋1门(鑫鹏大厦斜对面)', '长春文丽时尚旅馆', '长春市', '0', '', 'live', '0431-81067841', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1388983866-448288369', '朝阳区西康路759号(永和豆浆对面)', 'Mini Y sushi', '长春市', '27', 'http://img0.aibangjuxin.com/ipic/4299e4ef17266ddb_8.jpg', 'hotel', '0431-88028378', '美食;日本美食;日本料理');
INSERT INTO item VALUES ('1388997066-448394397', '朝阳区前进大街599号金苑大厦(湖光路口)', '圣鲸国际美食百汇(前进大街店)', '长春市', '137', 'http://img0.aibangjuxin.com/ipic/1dbf3043639d5e59_8.jpg', 'hotel', '0431-81154991 0431-81154993', '美食;自助餐');
INSERT INTO item VALUES ('1389011242-449472590', '东风大街3975号一汽四环大厦(近安庆路)', '金环大饭店', '长春市', '46', 'http://img0.aibangjuxin.com/ipic/3090c96544fad23d_8.jpg', 'hotel', '0431-85760000 0431-85989099', '东北菜;美食;婚宴酒店;结婚');
INSERT INTO item VALUES ('1389022890-448396967', '红旗街399号巴黎春天百货商城7楼(近工农大路)', '夜巴黎欢乐比萨', '长春市', '39', 'http://img0.aibangjuxin.com/ipic/396a01643f9e028a_8.jpg', 'hotel', '0431-85931629', '美食;小吃快餐;其他小吃;自助餐');
INSERT INTO item VALUES ('1394904426-448138958', '朝阳区同志街3536号(近南湖东门)', '川味观', '长春市', '51', 'http://img0.aibangjuxin.com/ipic/e4d4889a13872766_8.jpg', 'hotel', '0431-89636666 13843153454', '美食;川菜;其他川菜');
INSERT INTO item VALUES ('1394907066-448138858', '皓月大路(春城大街口)', '比尔森啤酒烤肉(乐天马特店)', '长春市', '43', 'http://img0.aibangjuxin.com/ipic/dfbd92a96c22cc27_8.jpg', 'hotel', '0431-81159108', '美食;自助餐');
INSERT INTO item VALUES ('1394908570-448287549', '高新区修正路阳光城3号门(吉大南校)', '马记回族饭店', '长春市', '33', 'http://img0.aibangjuxin.com/ipic/f7603cf24ce581a3_8.jpg', 'hotel', '13180808605 15043009935', '美食;新疆/清真');
INSERT INTO item VALUES ('1394913770-448287549', '朝阳区西康路恒客隆斜对面(近同志街)', '春园烤肉王(桂林路店)', '长春市', '42', 'http://img0.aibangjuxin.com/ipic/7_8.jpg', 'hotel', '0431-85646888', '美食;烧烤');
INSERT INTO item VALUES ('1395250378-448291515', '绿园区正阳街(正普路口)', '克丽丝假日酒店', '长春市', '0', '', 'live', '0431-87688885', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('1406747690-448287478', '朝阳区西康路口(靠近同志街)', '延边信子串城', '长春市', '38', '', 'hotel', '0431-85610433', '美食;韩国料理');
INSERT INTO item VALUES ('150611849-419171395', '朝阳区建和街国联小区8区4号(卓展后侧)', '和风拉面(国联小区店)', '长春市', '24', 'http://img0.aibangjuxin.com/ipic/b7e4d5285b648e0a_8.jpg', 'hotel', '0431-88923661', '美食;日本美食;日本料理');
INSERT INTO item VALUES ('150612713-419172915', '高新区致远街剑桥园2栋(近磐石路)', '饭米粒(前进大街店)', '长春市', '34', '', 'hotel', '0431-85198866 0431-81157837', '美食;韩国料理');
INSERT INTO item VALUES ('150674905-419110252', '朝阳区重庆路1255号卓展购物中心6楼(近西安大路)', '冰激凌水吧', '长春市', '56', '', 'hotel', '', '冰淇淋;甜点饮品;美食');
INSERT INTO item VALUES ('150678857-419051346', '南关区重庆路重庆胡同44号', '面对面(清明街店)', '长春市', '20', '', 'hotel', '0431-88958691', '美食;其他美食');
INSERT INTO item VALUES ('151229113-419132985', '吉林省长春市宽城区北京大街411号', '天新饭店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/d31da001b09a9530_8.jpg', 'live', '0431-82091999 0431-82091000', '宾馆酒店;三星级酒店');
INSERT INTO item VALUES ('151436425-419133102', '吉林省 九台市 卡伦湖大街1号', '卡伦湖度假村', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/697232cfc705274c_8.jpg', 'live', '0431-82560009 0431-85881996', '度假村;宾馆酒店;旅游景点');
INSERT INTO item VALUES ('151438601-419116066', '南关区人民大街7008号', '新吉粮大酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/8adfa4fc92c69f9c_8.jpg', 'live', '0431-85598888', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('151441961-419176774', '吉林省长春市南关区人民大街1968号', '亚泰饭店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/692aa590a703d1_8.jpg', 'live', '0431-89609777 0431-89609333', '宾馆酒店;三星级酒店');
INSERT INTO item VALUES ('151459433-419171401', '南关区平泉路1091号(近动物园北门)', '天府水煮鱼(平泉路总店)', '长春市', '36', 'http://img0.aibangjuxin.com/ipic/aafa7375c48cdb3f_8.jpg', 'hotel', '0431-88663336 0431-83522678', '美食;川菜;其他川菜');
INSERT INTO item VALUES ('151464201-419052659', '北京大街18号', '长春898商务宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/86ad2472d3492de1_8.jpg', 'live', '0431-86110202 0431-86112020', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('151464489-419052596', '朝阳区隆礼路33号(近长庆街)', '好上居(隆礼路店)', '长春市', '39', 'http://img0.aibangjuxin.com/ipic/139517baba1777a8_8.jpg', 'hotel', '0431-85656727', '美食;火锅;其他火锅');
INSERT INTO item VALUES ('151474649-419172739', '长春朝阳区新华路499号', '长春金安大饭店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/4bb570f2f6b27254_8.jpg', 'live', '0431-85838888 0431-88961999', '宾馆酒店;五星级酒店');
INSERT INTO item VALUES ('151477865-419110251', '中环7区2号楼', '长春绿洲快捷宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/365acd36cdfdb1e6_8.jpg', 'live', '0431-86763339', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('151525481-419007059', '朝阳区建设街2788号', '李连贵风味大酒楼', '长春市', '41', '', 'hotel', '0431-85677168', '美食;东北菜');
INSERT INTO item VALUES ('1515948755-1604749554', '朝阳区重庆路1298号万达沃尔玛1楼(卓展对面)', 'best味道85℃(重庆路店)', '长春市', '18', '', 'hotel', '0431-88946633', '美食;甜点饮品;面包西点');
INSERT INTO item VALUES ('1516064611-1606183654', '朝阳区长庆街46-2号(近东北师大附中操场)', '老妈手擀面(长庆街店)', '长春市', '26', 'http://img0.aibangjuxin.com/ipic/dda223ef6270f452_8.jpg', 'hotel', '0431-85600607 0431-85630696', '美食;川菜;其他川菜');
INSERT INTO item VALUES ('151731497-419133102', '春城大街738号(近春城市场)', '大西洋酒店', '长春市', '0', '', 'live', '0431-87995555 0431-87998888', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('151766601-420366918', '南关区人民大街11628号(长平高速公路入口)', '禧富德花园酒店', '长春市', '119', 'http://img0.aibangjuxin.com/ipic/4232a2e1341f4ccb_8.jpg', 'hotel', '0431-85356333 0431-85358333', '东北菜;美食;婚宴酒店;结婚');
INSERT INTO item VALUES ('151772169-419116035', '南关区人民大街2866号(长春体育馆斜对面)', '长春利金时尚宾馆', '长春市', '0', '', 'live', '0431-88553000 0431-88491666', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('151817385-419007059', '自由大路3601号', '长春金悦大酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/e0256e0ba32be11c_8.jpg', 'live', '0431-86150000 0431-86150777', '宾馆酒店;三星级酒店');
INSERT INTO item VALUES ('151822985-419144142', '绿园区青年路405号(青普立交桥北桥头旁)', '长春豪斯特商务宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/82b359ea0ebecda7_8.jpg', 'live', '0431-88635888 0431-87621111', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('151841929-419150667', '建设街1722号', '刚记广州海鲜酒家(建设街店)', '长春市', '94', 'http://img0.aibangjuxin.com/ipic/126c559e2279f562_8.jpg', 'hotel', '0431-88511777 0431-88520033', '美食;其他美食');
INSERT INTO item VALUES ('151845417-419150667', '朝阳区隆礼胡同492号(百汇街口)', '东方肉馆(隆礼胡同总店)', '长春市', '37', 'http://img0.aibangjuxin.com/ipic/1bcb4c8a8c7d299e_8.jpg', 'hotel', '0431-85652295', '美食;东北菜');
INSERT INTO item VALUES ('151892553-419171163', '朝阳区前进大街660号(前进大街与富强街交汇处)', '四海回族饭店', '长春市', '43', 'http://img0.aibangjuxin.com/ipic/91fab3431db4f9c7_8.jpg', 'hotel', '0431-85156999', '美食;新疆/清真');
INSERT INTO item VALUES ('151895721-419110252', '朝阳区红旗街616号万达广场1楼(近省医院)', '南洋小馆(红旗街店)', '长春市', '46', 'http://img0.aibangjuxin.com/ipic/ae0db669b963b987_8.jpg', 'hotel', '0431-81938877', '美食;东南亚菜;其他东南亚菜');
INSERT INTO item VALUES ('151918441-419150664', '朝阳区桂林路(桂林路派出所西侧)', '小蜜蜂面饭馆(桂林路店)', '长春市', '16', '', 'hotel', '13514308585', '美食;其他美食');
INSERT INTO item VALUES ('151934329-419007150', '朝阳区百汇街1981号', '可利安(百汇街店)', '长春市', '31', 'http://img0.aibangjuxin.com/ipic/36675045de886f5a_8.jpg', 'hotel', '0431-85667133 0431-88885408', '美食;韩国料理');
INSERT INTO item VALUES ('151935145-419171298', '朝阳区湖西路(红旗街口)', '小锅饭(湖西路店)', '长春市', '40', 'http://img0.aibangjuxin.com/ipic/bd724895248e5d9f_8.jpg', 'hotel', '0431-85923488 0431-85930111', '美食;农家菜');
INSERT INTO item VALUES ('151937737-419050320', '绿园区普阳街1869号(景阳大路与普阳街交汇)', '新碧丽湖酒店中餐厅', '长春市', '57', 'http://img0.aibangjuxin.com/ipic/4a8e9f536d4f1d57_8.jpg', 'hotel', '0431-87605605 0431-87690777', '美食;粤菜;其他粤菜');
INSERT INTO item VALUES ('152271113-419174412', '二道区吉林大路1342号吉盛小区1-12栋(近安乐路)', '华星酒店', '长春市', '33', 'http://img0.aibangjuxin.com/ipic/d0f091d9ea497bd_8.jpg', 'hotel', '0431-84916797 0431-84956843', '东北菜;美食;婚宴酒店;结婚');
INSERT INTO item VALUES ('1523102275-1608582736', '南湖大路与东岭南街交汇处南行500米', '长春U-time时光驿站宾馆', '长春市', '0', '', 'live', '0431-85176666', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('1523132707-1608494698', '人民大街2133号', '长春金融大厦宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/6020fb36b9921d59_8.jpg', 'live', '0431-88980011 13514419300', '宾馆酒店;三星级酒店');
INSERT INTO item VALUES ('1523135747-1604754898', '解放大路210号(近红?)', '恒达酒店', '长春市', '46', 'http://img0.aibangjuxin.com/ipic/c7cbb6ce3f2c98f3_8.jpg', 'hotel', '0431-88605555 0431-88608888', '东北菜;美食;婚宴酒店;结婚;火锅;其他火锅');
INSERT INTO item VALUES ('1523869795-1606201521', '朝阳区建设街八一医院对面(八一医院对面)', '西湖春天', '长春市', '98', 'http://img0.aibangjuxin.com/ipic/2b78c378a100f002_8.jpg', 'hotel', '0431-89853777 0431-89853666', '美食;江浙菜;浙江菜');
INSERT INTO item VALUES ('1523884931-1608493180', '朝阳区永昌胡同563号(长庆街口)', '品四川(永昌胡同店)', '长春市', '25', 'http://img0.aibangjuxin.com/ipic/c26d26ea447c5764_8.jpg', 'hotel', '0431-81706272 0431-88562551', '美食;火锅;其他火锅;川菜;其他川菜');
INSERT INTO item VALUES ('1523885347-1604584083', '朝阳区东民主大街666号(吉林大学对面)', '老昌春饼(东民主路总店)', '长春市', '36', 'http://img0.aibangjuxin.com/ipic/89901c8d5dd465c7_8.jpg', 'hotel', '0431-88983990', '美食;小吃快餐;其他小吃');
INSERT INTO item VALUES ('1523886947-1608579977', '经济技术开发区浦东路501号(浦东路与金川街交口)', '长春帕拉斯大酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/f172e226dc8b1898_8.jpg', 'live', '0431-81969666 0431-81969600', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1523911475-1606175211', '朝阳区卫星路7186号(与卫光街交汇处)', '长春华苑宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/f0482506bb25a6d7_8.jpg', 'live', '15844087607 0431-85582222', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1523926035-1606177734', '二道区东盛大街上东街区二期27栋101号(自由大路口)', '小肥羊火锅(东盛大街店)', '长春市', '63', 'http://img0.aibangjuxin.com/ipic/96e314c5ffd86118_8.jpg', 'hotel', '0431-84868666', '美食;火锅;其他火锅');
INSERT INTO item VALUES ('1524067139-1604583766', '西康路728号(近永和豆浆)', '延边信子饭店', '长春市', '35', 'http://img0.aibangjuxin.com/ipic/223fe6f5c18204b5_8.jpg', 'hotel', '0431-85618855', '美食;东北菜;韩国料理');
INSERT INTO item VALUES ('1524078547-1606259934', '南关区清明街与北安路交汇(市中心医院后侧)', '裕春园烤肉王', '长春市', '36', 'http://img0.aibangjuxin.com/ipic/6f89167f80f2d47c_8.jpg', 'hotel', '0431-84579555', '美食;自助餐');
INSERT INTO item VALUES ('1524090947-1606202973', '经济技术开发区会展大街100号(与卫星路交汇处)', '长春国际会展中心大饭店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/505b35d1b7bf07f0_8.jpg', 'live', '0431-84606688 0431-84606366', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1524120211-1608579950', '朝阳区红旗街(万达广场二号公寓六楼)', '朝阳区宝锣十八会宾馆(长春)', '长春市', '0', '', 'live', '0431-81938887 0431-81938889', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1524121843-1608579979', '南关区西三道街与民康路交汇处(沿西三道街东行约100米东康小区2-8栋)', '长春逸壕时尚宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/de6577996cfbd960_8.jpg', 'live', '0431-89536266 0431-81668766', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1524209075-1606188303', '长春朝阳区人民大街2059号', '长春国贸饭店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/df884821120f724_8.jpg', 'live', '0431-88487533 0431-88487600', '宾馆酒店;四星级酒店;三星级酒店');
INSERT INTO item VALUES ('1524220435-1604754898', '南关区西四马路555号(西四马路与永春路交叉口)', '7天连锁酒店(长春重庆路店)', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/30abfbc4bc00001b_8.jpg', 'live', '0431-88769188 0431-88769177', '宾馆酒店;7天;经济型酒店');
INSERT INTO item VALUES ('1524305459-1604754898', '长春朝阳区湖滨街1号', '长春名人酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/2fec0bd0131271c6_8.jpg', 'live', '0431-85599888 0431-85599999', '宾馆酒店;四星级酒店');
INSERT INTO item VALUES ('1524795955-1608579950', '净月经济开发区净月大街2788号(近金宝街)', '长春悠眠宾馆', '长春市', '0', '', 'live', '13039317157 0431-81032255', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1524796579-1605013150', '朝阳区建设街2495号(解放大路口)', '沪港汇', '长春市', '208', 'http://img0.aibangjuxin.com/ipic/d2598097a0755a45_8.jpg', 'hotel', '0431-82858888 0431-82857777', '美食;粤菜;其他粤菜;江浙菜;上海菜');
INSERT INTO item VALUES ('152892905-419133102', '朝阳区工农大路3300号', '碗碗香风味菜馆', '长春市', '28', 'http://img0.aibangjuxin.com/ipic/cb1452d11f9db12c_8.jpg', 'hotel', '0431-85604035', '美食;东北菜');
INSERT INTO item VALUES ('152921529-419133102', '朝阳区桂林路591号', '食间美食(桂林路店)', '长春市', '84', 'http://img0.aibangjuxin.com/ipic/4492a0af446f7d04_8.jpg', 'hotel', '0431-85656767', '美食;西餐;其他西餐');
INSERT INTO item VALUES ('152924809-419133012', '南关区南湖大路1398号', '金土地大酒楼', '长春市', '74', 'http://img0.aibangjuxin.com/ipic/11e3ea2802b9e928_8.jpg', 'hotel', '0431-85276998 0431-85282139', '美食;其他美食');
INSERT INTO item VALUES ('152928009-419174412', '高新区硅谷大街3355号(近磐古医院)', '皇觅楼大酒店', '长春市', '370', 'http://img0.aibangjuxin.com/ipic/e7f143f4929c8394_8.jpg', 'live', '0431-85509988 0431-85506789', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('152950441-419170997', '朝阳区卫星路8169号(理工大学西区正门西侧)', '姚记菜馆(总店)', '长春市', '31', 'http://img0.aibangjuxin.com/ipic/5f537a5e5d1cf438_8.jpg', 'hotel', '0431-85307807', '美食;东北菜');
INSERT INTO item VALUES ('152995241-419053846', '长伊公路世纪广场南行50米', '长春智尊大酒店', '长春市', '0', '', 'live', '0431-88789222 0431-88789277', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('153071305-420373354', '朝阳区隆礼路(立信街口)', '好面馆正宗川菜', '长春市', '21', 'http://img0.aibangjuxin.com/ipic/bbbe443a0628759a_8.jpg', 'hotel', '0431-85656047 0431-85604666', '美食;川菜;其他川菜');
INSERT INTO item VALUES ('153288745-420330760', '南关区平阳街255号', '李记羊城(平阳街店)', '长春市', '34', '', 'hotel', '0431-88663200', '美食;烧烤;新疆/清真');
INSERT INTO item VALUES ('153323993-419049435', '吉林省长春市二道区东南湖大路1066号', '春海宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/2f26554354d1d400_8.jpg', 'live', '0431-84601808 0431-84666608', '宾馆酒店;三星级酒店');
INSERT INTO item VALUES ('153367849-418971427', '仙台大街2000号', '长春和合会馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/9d9d133d999731fe_8.jpg', 'live', '0431-88557555', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('153368633-419049392', '朝阳区湖西路333号长影世纪村正门(近红旗街)', '金牌烤场', '长春市', '48', 'http://img0.aibangjuxin.com/ipic/b0827c227e9da985_8.jpg', 'hotel', '0431-85678877', '美食;烧烤');
INSERT INTO item VALUES ('153407593-419173011', '南关区东朝阳路433号(近同志街)', '向阳屯', '长春市', '40', 'http://img0.aibangjuxin.com/ipic/20cfbb549025635c_8.jpg', 'hotel', '0431-88944325 0431-88982876', '美食;东北菜');
INSERT INTO item VALUES ('153423561-419046818', '西康路恒克隆对面(同志街口)', '味道厨房', '长春市', '32', 'http://img0.aibangjuxin.com/ipic/f317ffb8e051648_8.jpg', 'hotel', '0431-85654116', '美食;东南亚菜;其他东南亚菜');
INSERT INTO item VALUES ('153428761-419133127', '长春 南关区 自由大路3601号 (近东岭街)', '长春金悦大酒店_自由大路3601号_', '长春市', '0', '', 'live', '', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1537474067-1606206915', '长春市宽城区长白路358号', '长春长江大酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/fca992d952a712aa_8.jpg', 'live', '0431-82908551 0431-82908555', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1537475827-1604581447', '朝阳区同光路382号(近立信街)', '龙秀山韩国烤肉(同光路店)', '长春市', '64', 'http://img0.aibangjuxin.com/ipic/4e6b7bd1694ed821_8.jpg', 'hotel', '0431-85666348 0431-85666349', '美食;韩国料理');
INSERT INTO item VALUES ('1537608803-1606578210', '朝阳区百汇街与义和路交汇处', '渝新干锅辣鸭头', '长春市', '33', 'http://img0.aibangjuxin.com/ipic/5b121d45fa9f64d3_8.jpg', 'hotel', '0431-85658355', '美食;小吃快餐;熟食;川菜;其他川菜');
INSERT INTO item VALUES ('1537683747-1608579967', '长春市长春大街1212号', '莫泰168(长春大街店)', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/9439cbcdb9d9fd70_8.jpg', 'live', '0431-86020000 0431-88602000', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('1538654915-1606257032', '朝阳区桂林路973号(近长庆街)', '京冠香锅王(桂林路店)', '长春市', '37', '', 'hotel', '0431-85669733 0431-85667733', '美食;川菜;其他川菜');
INSERT INTO item VALUES ('1539071875-1606216787', '朝阳区新民大街13号(近新民广场)', '元盛居', '长春市', '51', '', 'hotel', '0431-85674218 0431-85619338', '美食;火锅;其他火锅');
INSERT INTO item VALUES ('1539072323-1606617085', '南关区亚泰大街1368号(近长春大街)', '一锅出(南关店)', '长春市', '27', 'http://img0.aibangjuxin.com/ipic/658a304421bcd1a0_8.jpg', 'hotel', '0431-86181388', '美食;农家菜');
INSERT INTO item VALUES ('1539073939-1606259533', '南关区长春大街860号(长春大街与大经路交叉口)', '中安之家连锁长春东煤宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/ce9dc552042135e5_8.jpg', 'live', '0431-88973773 0431-88973772', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1539075715-1606216884', '长春朝阳区开工胡同(开运街口)', '东北酸菜火锅', '长春市', '37', 'http://img0.aibangjuxin.com/ipic/5128772271d952df_8.jpg', 'hotel', '0431-87798316', '美食;火锅;其他火锅');
INSERT INTO item VALUES ('1539099811-1604583712', '朝阳区红旗街57号(宽平大路口)', '生拉面ok', '长春市', '16', 'http://img0.aibangjuxin.com/ipic/aa48535dd6f63c26_8.jpg', 'hotel', '0431-85929688', '美食;日本美食;日本料理');
INSERT INTO item VALUES ('1539105203-1606214270', '朝阳区建设街27号(建设街与普庆路交汇处)', '长春天利商务宾馆', '长春市', '0', '', 'live', '0431-88537111 0431-88537222', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1539108419-1606207151', '朝阳区安达街与朝阳桥交汇', '罗斯莱美味堡', '长春市', '101', 'http://img0.aibangjuxin.com/ipic/6ae38920d732c060_8.jpg', 'hotel', '0431-88582229', '美食;西餐;其他西餐');
INSERT INTO item VALUES ('1539161731-1608577633', '长春市南关区东天街与荣光路交汇处(荣光桥下)', '长春里尔风尚主题宾馆', '长春市', '0', '', 'live', '0431-82911999', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1539239715-1606216787', '宽城区人民大街2133号(与光明路交汇处)', '吉林省金融大厦宾馆(长春)', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/f613a07e839a0d07_8.jpg', 'live', '0431-88980099', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1539490419-1606259509', '同光路118号', '新呼吸时尚酒店', '长春市', '0', '', 'live', '0431-89985888', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('16343288-419823319', '朝阳区重庆路1234号王府井商场2楼(近崇智路)', '真功夫(王府井商场店)', '长春市', '22', 'http://img0.aibangjuxin.com/ipic/70df40793c0344ab_8.jpg', 'hotel', '0431-88961737 0431-88963239', '美食;小吃快餐;快餐');
INSERT INTO item VALUES ('16380776-420239705', '开运街746', '一块豆腐粗粮馆(长春总店)', '长春市', '37', '', 'hotel', '0431-86778767', '美食;农家菜');
INSERT INTO item VALUES ('16396104-419823651', '朝阳区建设街881号(近新华路)', '长春意江南?利洋酒店', '长春市', '0', '', 'live', '0431-89848888 0431-88086786', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('16397080-420239967', '朝阳区西朝阳路45号(与西民主大街交汇处西侧)', '野力肥牛火锅', '长春市', '58', 'http://img0.aibangjuxin.com/ipic/39601b70141994ad_8.jpg', 'hotel', '0431-88528877', '美食;火锅;其他火锅');
INSERT INTO item VALUES ('16400664-420703266', '汽车产业开发区飞跃路593栋', '云河酒家', '长春市', '29', 'http://img0.aibangjuxin.com/ipic/d8300771a7bd748_8.jpg', 'hotel', '0431-85903868 0431-85908368', '美食;东北菜');
INSERT INTO item VALUES ('16431352-419890887', '宽城区东二条街368号', '长春铭洋时尚迎宾馆(站前店)', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/3f3b95129bf38a05_8.jpg', 'live', '0431-85833877', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('16436680-419009284', '新民大街1448号长白山宾馆院内(隆礼路口)', '长白山宾馆吉菜食府', '长春市', '158', 'http://img0.aibangjuxin.com/ipic/20b92c5dbdc61779_8.jpg', 'hotel', '0431-85588888 0431-85588555', '美食;东北菜');
INSERT INTO item VALUES ('16453416-420249615', '朝阳区同志街3322号(近自由大路)', '倪氏顺风肥牛', '长春市', '34', 'http://img0.aibangjuxin.com/ipic/32f2a7832b19624e_8.jpg', 'hotel', '0431-85072555 0431-85072666', '美食;火锅;其他火锅');
INSERT INTO item VALUES ('16454024-420249576', '西朝阳路与昌平街交汇', '长春友约旅馆', '长春市', '0', '', 'live', '0431-88512166 0431-88512177', '宾馆酒店;招待所');
INSERT INTO item VALUES ('16457432-419946808', '湖滨街与繁荣路交汇处(威尼斯花园29栋)', '长春美家视界酒店(威尼斯店)', '长春市', '0', '', 'live', '0431-87098333 0431-87099333', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('1652556572-1205246718', '吉林省长春市人民大街5046号', '林业宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/cb36769dc1250822_8.jpg', 'live', '0431-85593466 0431-85596996', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1655286364-1205251313', '新民大街1448号', '长春长白山宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/a5642568c127aa38_8.jpg', 'live', '0431-85588777 0431-85642006', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1655374316-1204474378', '南关区平泉路15号第十二中学对面(近吉顺街)', '平阳特色菜馆', '长春市', '34', 'http://img0.aibangjuxin.com/ipic/576ccfbf7b7398d2_8.jpg', 'hotel', '0431-88613094', '美食;农家菜');
INSERT INTO item VALUES ('1655498252-1204534443', '朝阳区西安大路569号', '香格里拉大饭店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/ee6359a8a875dd3_8.jpg', 'live', '0431-88981818', '宾馆酒店;五星级酒店');
INSERT INTO item VALUES ('1655546860-1203989447', '朝阳区宽平大路395号工程学院对面(近永寿街)', '妈妈菜馆', '长春市', '26', '', 'hotel', '0431-85929112', '美食;东北菜');
INSERT INTO item VALUES ('1662199372-1204045426', '朝阳区重庆路1255号卓展7楼B座(万达广场斜对)', '三俞竹苑(卓展店)', '长春市', '66', 'http://img0.aibangjuxin.com/ipic/74debf63c2e8b34e_8.jpg', 'hotel', '0431-88486651 0431-88486689', '美食;川菜;其他川菜');
INSERT INTO item VALUES ('1663145692-1204536018', '人民大街物贸大厦', '肯德基(物贸店)', '长春市', '30', 'http://img0.aibangjuxin.com/ipic/71df427a3c064caa_8.jpg', 'hotel', '0431-82617006 0431-82703053', '美食;小吃快餐;快餐');
INSERT INTO item VALUES ('1671627788-1205254103', '长春 绿园区 创业大街35号 (原圣峰大酒店)', '长春宜家商务酒店(一汽店)_创业大街35号_', '长春市', '0', '', 'live', '', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1671717852-1203960560', '绿园区皓月大路1059号(长春公园南门旁)', '长春碧海阳光宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/fb663e140d74388f_8.jpg', 'live', '0431-87837998 0431-87837888', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1671720460-1203999704', '绿园区皓月大路2838号(近春城大街)', '小磨坊家庭厨房(皓月大路店)', '长春市', '45', 'http://img0.aibangjuxin.com/ipic/479d7398766d6b60_8.jpg', 'hotel', '0431-89860077 0431-89860088', '美食;川菜;其他川菜');
INSERT INTO item VALUES ('1671723756-1204164638', '大经路1898号(西二道街口)', '宏锦记蘑菇行', '长春市', '54', 'http://img0.aibangjuxin.com/ipic/70bd99a49273dc69_8.jpg', 'hotel', '0431-88687788', '美食;火锅;其他火锅');
INSERT INTO item VALUES ('1671725676-1204473406', '吉林省长春市朝阳区前进大街1655号', '客舱现代商务酒店', '长春市', '0', '', 'live', '0431-89909111', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1671726476-1205243907', '长春市高新区前进大街与前卫路交汇处,前卫路388号(阳光城北门,莱姆顿学院南门)', '长春高新园区仟佰度时尚宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/ebd6666902330b92_8.jpg', 'live', '0431-85701000 0431-85171705', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1671748668-1204045428', '南关区平泉路1091号(天府水煮鱼旁)', '天天多烤鱼', '长春市', '36', '', 'hotel', '0431-88650017', '美食;川菜;其他川菜');
INSERT INTO item VALUES ('1671780396-1205246718', '高新区高新技术产业开发区前进大街高新技术产业开发区林园路38号', '小小农家院(林园路店)', '长春市', '31', 'http://img0.aibangjuxin.com/ipic/e7c9e3ceef3d6c64_8.jpg', 'hotel', '0431-85181999', '美食;农家菜');
INSERT INTO item VALUES ('1671798876-1205089525', '长春双阳区东华大街1699号农业大学发展学院院内', '长春美华宾馆', '长春市', '0', '', 'live', '0431-84285555 0431-84225555', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1673374172-1203991782', '绿园区西安大路西安桥外400米处兰天高层对面', '金棕榈火车火锅(西安大路店)', '长春市', '36', 'http://img0.aibangjuxin.com/ipic/246dc159f442ee1_8.jpg', 'hotel', '0431-87916388', '美食;烧烤;火锅;其他火锅');
INSERT INTO item VALUES ('1673749212-1203991837', '朝阳区隆礼路989号(近长庆街)', '佳彬', '长春市', '28', 'http://img0.aibangjuxin.com/ipic/6c7604c632b89004_8.jpg', 'hotel', '0431-85641909', '美食;韩国料理');
INSERT INTO item VALUES ('1673751788-1205405211', '绿园区东风大街38号', '欧亚车百', '长春市', '321', 'http://img0.aibangjuxin.com/ipic/91a7dafbebffc3b9_8.jpg', 'hotel', '0431-87652530', '美食;其他美食');
INSERT INTO item VALUES ('1673753484-1204536009', '-红旗街长影世纪村内', '长春自助公寓', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/c340b5aa24b9003f_8.jpg', 'live', '0431-86572579 0431-86573010', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1673753628-1204473406', '朝阳区重庆路1268号万达广场1楼', '食间牛排(万达店)', '长春市', '119', 'http://img0.aibangjuxin.com/ipic/2f40c4e61c9e31d0_8.jpg', 'hotel', '0431-88960512 0431-88968512', '美食;西餐;其他西餐');
INSERT INTO item VALUES ('1673754412-1203989447', '朝阳区建设街920号', '樱田日本料理', '长春市', '184', 'http://img0.aibangjuxin.com/ipic/573b554d08693fe1_8.jpg', 'hotel', '0431-86939998 0431-88566656', '美食;日本美食;日本料理');
INSERT INTO item VALUES ('1673776076-1205089537', '经济开发区临河街与北海路交汇西行120米(北海新居西侧)', '长春临河湾时尚宾馆', '长春市', '0', '', 'live', '0431-84666876', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1673808204-1205246718', '建设街246号(北安路口)', '财运大连海鲜酒店(建设街店)', '长春市', '83', 'http://img0.aibangjuxin.com/ipic/a4a7b5e2576e217d_8.jpg', 'live', '0431-82716111 0431-82716736', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1673849100-1203999584', '朝阳区东朝阳路555号(同志街口)', '小松子日本料理', '长春市', '95', '', 'hotel', '0431-88966585 0431-88865651', '美食;日本美食;日本料理');
INSERT INTO item VALUES ('1673862380-1203989500', '朝阳区建设街1438号(建设银行对面)', '泉家居酒楼(建设街店)', '长春市', '95', 'http://img0.aibangjuxin.com/ipic/ec70884adf1c9222_8.jpg', 'hotel', '0431-88581333 0431-88582333', '美食;粤菜;其他粤菜');
INSERT INTO item VALUES ('1673865004-1205089537', '长春市南关区长春大街108号(长春大街中信银行对面)', '长春蒂罗尔宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/a660a545e0cb226_8.jpg', 'live', '0431-89823888 0431-88769603', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('1673871692-1203995179', '南关区清明街808号(亚泰富苑斜对面)', '阿寿阿瘦蒸功夫', '长春市', '23', 'http://img0.aibangjuxin.com/ipic/1b1c176887c48a62_8.jpg', 'hotel', '0431-88911717', '美食;快餐;小吃快餐');
INSERT INTO item VALUES ('1673935004-1205406179', '宽城区胜利大街892号(近南广场)', '大洋宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/d0fe471279b9197b_8.jpg', 'live', '0431-82958588', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('1674027596-1205403913', '吉林省长春市亚泰大街5838号', '绿苑宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/365f4bc480c24473_8.jpg', 'live', '0431-85292067 0431-86940009', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1674072796-1204045582', '二道区乐群街(经纬路口)', '楼外楼肥羊木炭火锅居(乐群街店)', '长春市', '34', 'http://img0.aibangjuxin.com/ipic/226072ecdb8df1d_8.jpg', 'hotel', '0431-86163999 0431-88616399', '美食;火锅;其他火锅');
INSERT INTO item VALUES ('1674074316-1205254103', '长春 绿园区 景阳大路2299号 (近春城大街)', '长春开元名都大酒店_景阳大路2299号_', '长春市', '0', '', 'live', '', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1674095084-1205083998', '朝阳区红旗街616号万达商业广场3楼309-312室(省医院旁)', '牛巴店休闲餐厅(红旗街万达店)', '长春市', '49', 'http://img0.aibangjuxin.com/ipic/dda81f3becf731d8_8.jpg', 'hotel', '0431-81936885', '美食;西餐;其他西餐');
INSERT INTO item VALUES ('1674236396-1203989447', '义和路31号', '张生记酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/a4e42266c123aa34_8.jpg', 'live', '0431-85618888 0431-85648888', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1674447948-1205406182', '朝阳区自由大路946号亚泰豪苑D座(立信街口)', '竹林再一轩(自由大路店)', '长春市', '72', 'http://img0.aibangjuxin.com/ipic/a83d2fa7ec7f4746_8.jpg', 'hotel', '0431-85655666 0431-85678666', '美食;湘菜;川菜;其他川菜');
INSERT INTO item VALUES ('1674465612-1205404787', '朝阳区重庆路1255号卓展购物中心B座6楼(近西安大路)', '凯粤楼', '长春市', '93', 'http://img0.aibangjuxin.com/ipic/6d0cc17a093bf013_8.jpg', 'hotel', '0431-88486456 0431-88486837', '美食;粤菜;其他粤菜');
INSERT INTO item VALUES ('1674854940-1203989447', '西安大路616号', '长春国际大厦酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/71ceaa3cd3532bf3_8.jpg', 'live', '0431-88481768 0431-88481000', '宾馆酒店;三星级酒店');
INSERT INTO item VALUES ('1675012332-1205246718', '朝阳区工农大路3858号', '东方饺子王(工农大路总店)', '长春市', '31', 'http://img0.aibangjuxin.com/ipic/8791ae7fea714257_8.jpg', 'hotel', '0431-85602847 0431-85693868', '美食;小吃快餐;饺子');
INSERT INTO item VALUES ('1675166860-1200795942', '硅谷大街3355号(超达创业园11栋101,201,3-6楼右侧)', '长春六和商务宾馆', '长春市', '0', '', 'live', '0431-87050266', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1675204380-1200795995', '自由大路102号', '长春中日友好会馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/d60c88ef611c7bb0_8.jpg', 'live', '0431-84618817 0431-84618885', '宾馆酒店;四星级酒店');
INSERT INTO item VALUES ('1675220460-1205406179', '凯旋路505号', '凯旋宾馆', '长春市', '0', '', 'live', '0431-82995553 0431-82997773', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('1675221052-1205406179', '西安胡同344-2号(国际大厦B座后侧)', '鲍家老八件菜馆(西安胡同店)', '长春市', '32', '', 'hotel', '0431-87726310 0431-88968487', '美食;东北菜');
INSERT INTO item VALUES ('1675241084-1205243907', '绿园区景阳大路2288号(青城大街交汇处)', '长春华天大酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/3b65ec3411b40d1f_8.jpg', 'live', '0431-87809743 0431-87809999', '宾馆酒店;五星级酒店');
INSERT INTO item VALUES ('16943720-419823078', '朝阳区延安大路1号(南湖公园正门旁)', '长春翡翠湖畔五星公馆', '长春市', '0', '', 'live', '15543120505 15543120508', '宾馆酒店;四星级酒店');
INSERT INTO item VALUES ('17203880-419823319', '湖西路1299号(近延安大路)', '小红莓经涮坊', '长春市', '52', '', 'hotel', '0431-84882222 0431-85944055', '美食;火锅;其他火锅');
INSERT INTO item VALUES ('17204184-419009574', '北环城路8777号', '长春雁鸣湖温泉大酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/8fd99b7e922b4e07_8.jpg', 'live', '0431-89816666 0431-85879999', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('17244968-419870350', '创业大街35号', '长春宜家商务酒店(一汽店)', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/1c05b72eae53ba4_8.jpg', 'live', '0431-89162288 0431-89162299', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('17245448-420239705', '建设街2465号', '长春珠丽雅主题宾馆(建设店)', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/ac63e041f8822910_8.jpg', 'live', '0431-88788222', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('17250872-420239705', '朝阳区红旗街616号万达商业广场3楼(近省医院)', '汉拿山(万达店)', '长春市', '64', 'http://img0.aibangjuxin.com/ipic/d18d5fa7546f5b25_8.jpg', 'hotel', '0431-81936606 0431-81936698', '美食;韩国料理');
INSERT INTO item VALUES ('17255096-419008713', '南关区重庆路51号', '四川辣妹子火锅城', '长春市', '29', 'http://img0.aibangjuxin.com/ipic/84bd421d715f71d3_8.jpg', 'hotel', '0431-88935102', '美食;火锅;其他火锅');
INSERT INTO item VALUES ('17260312-419009251', '朝阳区西民主大街1059号', '王记酱骨头馆(西民主店)', '长春市', '43', 'http://img0.aibangjuxin.com/ipic/200c77862d90789e_8.jpg', 'hotel', '0431-88546888', '美食;东北菜');
INSERT INTO item VALUES ('17293704-420703129', '吉林省长春市同志街1339号', '泰山大酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/d3f1128e7748df71_8.jpg', 'live', '0431-86888788 0431-85634991', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('17296760-420266177', '南关区长春大街680号中澳大都会北侧(重庆路口)', '阿集特', '长春市', '30', 'http://img0.aibangjuxin.com/ipic/6f1605c832bb9001_8.jpg', 'hotel', '0431-88910099', '美食;韩国料理');
INSERT INTO item VALUES ('17305032-419823651', '经济开发区卫星路3511号(临河街口)', '铂悦酒店', '长春市', '0', '', 'live', '0431-81985777 13647573865', '宾馆酒店;四星级酒店');
INSERT INTO item VALUES ('17309192-419823651', '南关区西四道街368号(近大经路)', '长春亚龙湾时尚旅馆', '长春市', '0', '', 'live', '0431-81997298', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('17509208-420248193', '长春市人民大街5688号 130022', '长春紫荆花饭店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/3ee7838fa3495c56_8.jpg', 'live', '0431-85563555 0431-85563668', '宾馆酒店;五星级酒店');
INSERT INTO item VALUES ('17522856-418993814', '朝阳区桂林胡同(近立信街)', '金子酱汤馆', '长春市', '17', '', 'hotel', '', '美食;韩国料理');
INSERT INTO item VALUES ('17534696-420703129', '朝阳区湖西路333号长影世纪村(红旗街与延安大路中段)', '天圣元享食乐都(湖西路店)', '长春市', '45', 'http://img0.aibangjuxin.com/ipic/5c5c4ebf81c95275_8.jpg', 'hotel', '0431-86888999 0431-86888777', '火锅;美食;其他火锅');
INSERT INTO item VALUES ('17562296-418982073', '绿园区普阳街3506号(格林梦水乡二楼)', '格林梦酒楼', '长春市', '42', '', 'hotel', '0431-87605557 0431-87605558', '美食;东北菜');
INSERT INTO item VALUES ('17584520-420238653', '汽车开发区创业大街(越野路口)', '东港小渔屋(汽车厂店)', '长春市', '53', 'http://img0.aibangjuxin.com/ipic/fcd8cc21288073dc_8.jpg', 'hotel', '0431-84839888 0431-88736888', '美食;其他美食');
INSERT INTO item VALUES ('17591576-420243950', '建设街19号', '利洋大酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/34da20b42d23eeb7_8.jpg', 'live', '0431-88489999 0431-88525000', '宾馆酒店;四星级酒店;三星级酒店');
INSERT INTO item VALUES ('17593880-419890600', '长春市宽城区人民大街1078号', '长春乐府大酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/2a246e9630e7c39f_8.jpg', 'live', '0431-82090138 0431-82090102', '宾馆酒店;四星级酒店');
INSERT INTO item VALUES ('17596280-419889446', '南关区东南湖大路88号红城国际正门(省工商局对面)', '天下晓酒店(东南湖大路店)', '长春市', '46', '', 'hotel', '0431-85297388', '美食;其他美食');
INSERT INTO item VALUES ('17635288-419009451', '人民大街1078号乐府饭店1楼(胜利公园对面)', '乐府饭店鹿鸣厅', '长春市', '75', 'http://img0.aibangjuxin.com/ipic/c77015760087b14e_8.jpg', 'hotel', '0431-82090999', '美食;自助餐');
INSERT INTO item VALUES ('17676056-420243950', '朝阳区红旗街1676号', '吉航海鲜酒店(红旗街店)', '长春市', '76', 'http://img0.aibangjuxin.com/ipic/920a2727e154fcce_8.jpg', 'live', '0431-85919555 0431-85925888', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('17700040-419009221', '南关区卫星路7989号长春理工大学(近卫星广场)', '辣妹子川菜馆', '长春市', '19', 'http://img0.aibangjuxin.com/ipic/481263a7cd400e2a_8.jpg', 'hotel', '', '美食;川菜;其他川菜');
INSERT INTO item VALUES ('17843144-419871877', '南关区大经路1329号', '汉斯啤酒城(大经路店)', '长春市', '41', 'http://img0.aibangjuxin.com/ipic/58c2677203b816fd_8.jpg', 'hotel', '0431-88950011 0431-88950012', '东北菜;美食;婚宴酒店;结婚');
INSERT INTO item VALUES ('17845032-418982095', '朝阳区西康路(立信街口)', '烤肉哥哥+包饭姐姐', '长春市', '17', '', 'hotel', '', '美食;韩国料理');
INSERT INTO item VALUES ('17847352-419004933', '长春市朝阳区人民大街4501号', '长春海航名门酒店(原长春名门饭店)', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/943964d7d2fa0691_8.jpg', 'live', '0431-85565666 0431-85565313', '宾馆酒店;五星级酒店');
INSERT INTO item VALUES ('17848408-419008713', '吉林省长春市南关区大马路458号', '天鹅湖宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/9a8dc7e232efecf5_8.jpg', 'live', '0431-88729966 15948734828', '宾馆酒店;三星级酒店');
INSERT INTO item VALUES ('17893768-418982095', '建设街9号(近西安大路)', '聚龙酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/3090c96544fad23d_8.jpg', 'live', '0431-88590333 0431-88961826', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1805439621-1269540838', '朝阳区建设街(普庆路口)', '美家视界风尚酒店(建设街店)', '长春市', '0', '', 'live', '0431-89574999 0431-89574888', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('1805578117-945411461', '桂林路37号(近长庆街)', '得利重庆烤全鱼(桂林路店)', '长春市', '35', '', 'hotel', '0431-86760269', '美食;烤鱼;川菜');
INSERT INTO item VALUES ('1805606069-1269535611', '绿园区普阳街44号', '华英干锅辣鸭头(普阳街店)', '长春市', '42', 'http://img0.aibangjuxin.com/ipic/dde77cbd54ab2a2e_8.jpg', 'hotel', '0431-85839080', '美食;湘菜');
INSERT INTO item VALUES ('1805691589-945349374', '朝阳区同志街2088号(清华路口)', '长城客房', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/137b3280af90832f_8.jpg', 'live', '0431-85644688', '宾馆酒店;招待所');
INSERT INTO item VALUES ('1805736869-1269534915', '朝阳区前进大街599号(近前进农场)', '温度铁板烧(前进大街店)', '长春市', '204', '', 'hotel', '0431-89824666 0431-89824777', '美食;烧烤;日本美食;日本料理');
INSERT INTO item VALUES ('1806209541-944174803', '绿园区正阳街2361号(景阳广场旁)', '长春绿岛商务宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/a17c3fd5470992a6_8.jpg', 'live', '13756273800 0431-89675566', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1806358853-1269540833', '大经路1420号', '长春嘉缘商务宾馆', '长春市', '0', '', 'live', '18686671111 0431-86020555', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('1806359797-1269530108', '朝阳区文化街99号(与新发路交汇处)', '长春新发宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/43fda2f1f80363c1_8.jpg', 'live', '0431-86827599 0431-86827555', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1806370181-1269425023', '绿园区一汽厂区创业大街1447号', '一汽花园酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/abc1192b36966237_8.jpg', 'live', '0431-85988888', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1806379381-945348966', '朝阳区百汇街与隆礼胡同交汇处(隆礼胡同口)', '南洋小馆(百汇街店)', '长春市', '44', 'http://img0.aibangjuxin.com/ipic/c7d6ab857d280592_8.jpg', 'hotel', '0431-86761330', '美食;东南亚菜;其他东南亚菜');
INSERT INTO item VALUES ('1806402133-950007404', '朝阳区同光路16号(丰顺街口)', 'PaPa\'s(同光路店)', '长春市', '61', 'http://img0.aibangjuxin.com/ipic/7e38497d6f6d2dac_8.jpg', 'hotel', '0431-85678884', '美食;韩国料理;西餐;其他西餐');
INSERT INTO item VALUES ('1806413045-944174424', '朝阳区建设街1317号(近德惠路)', '蜀香园', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/eca5da35de5ef11f_8.jpg', 'hotel', '0431-88544998 0431-88844998', '美食;川菜;其他川菜');
INSERT INTO item VALUES ('1816550277-950391833', '朝阳区红旗街万达广场三楼353-356', '三俞竹苑(万达广场店)', '长春市', '69', 'http://img0.aibangjuxin.com/ipic/676b8a43a0c59111_8.jpg', 'hotel', '0431-81936001', '美食;川菜;其他川菜');
INSERT INTO item VALUES ('1816550485-1269534955', '凯旋路15号', '长春琉璃时光酒店(凯旋路店)', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/6bd2161081c6d213_8.jpg', 'live', '0431-85888800 0431-85888811', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1816645605-1269425077', '西康路(立信街口)', 'N多寿司', '长春市', '14', 'http://img0.aibangjuxin.com/ipic/712ec44b74203033_8.jpg', 'hotel', '15604446278', '美食;日本美食;日本料理');
INSERT INTO item VALUES ('1816649317-944196657', '朝阳区工农大路2632号(南湖公园二号门斜对面)', '领仕扒房', '长春市', '293', 'http://img0.aibangjuxin.com/ipic/a1c1e7c8dfd36e96_8.jpg', 'hotel', '0431-85646767 0431-85645757', '美食;其他美食');
INSERT INTO item VALUES ('1816724821-1269508336', '南关区解放大路平阳街口(吉宇大厦对面)', '川军巴蜀料理', '长春市', '38', 'http://img0.aibangjuxin.com/ipic/bf2be0bb959722fb_8.jpg', 'hotel', '0431-88666066', '美食;川菜;其他川菜');
INSERT INTO item VALUES ('1816756213-1269425160', '南关区解放大路1019号(近欧亚)', '比尔森啤酒烤肉', '长春市', '44', 'http://img0.aibangjuxin.com/ipic/45ff210e1d120d59_8.jpg', 'hotel', '0431-88610666 0431-88612777', '美食;其他美食');
INSERT INTO item VALUES ('1816761109-1269534904', '人民大街2836号(近田阳路)', '御香苑(人民大街店)', '长春市', '74', 'http://img0.aibangjuxin.com/ipic/d7827058aa897cad_8.jpg', 'hotel', '0431-88951099 0431-88951388', '美食;火锅;其他火锅');
INSERT INTO item VALUES ('1816933605-945349374', '朝阳区前进大街3号', '越南餐厅', '长春市', '100', 'http://img0.aibangjuxin.com/ipic/2c5b1a359e653451_8.jpg', 'hotel', '0431-84915555 0431-88522101', '美食;越南菜;东南亚菜');
INSERT INTO item VALUES ('1817888165-1269445773', '吉林省长春市宽城区长白路21号', '长春邮政宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/307b2d9102a100ed_8.jpg', 'live', '0431-82987888', '宾馆酒店;三星级酒店');
INSERT INTO item VALUES ('1819693045-1269529982', '普阳街27号', '长春圣佳商务快捷宾馆(绿园区店)', '长春市', '0', '', 'live', '0431-82600111 0431-82600333', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1821660277-944324049', '朝阳区牡丹街29号(隆礼路口)', '西夏回族烧麦馆(牡丹街店)', '长春市', '29', '', 'hotel', '0431-85664328', '美食;小吃快餐;其他小吃;新疆/清真');
INSERT INTO item VALUES ('1822914693-950007391', '朝阳区人民大街7139号(物贸宾馆南侧)', '老馋兔丁儿(人民大街店)', '长春市', '34', 'http://img0.aibangjuxin.com/ipic/720c5cba8090d297_8.jpg', 'hotel', '0431-85362688 13578688859', '美食;川菜;其他川菜');
INSERT INTO item VALUES ('1823733013-944216713', '长春市净月经济开发区永顺路1777号(近梧桐街)', '长春净月潭益田喜来登酒店', '长春市', '0', '', 'live', '0431-81811111', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1824036469-1269535038', '宽城区建设街65号', '百菊大酒店', '长春市', '0', '', 'live', '0431-86138666 0431-86138999', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1824053285-1269540758', '红旗街616号万达购物广场1楼', '小锅饭(万达广场蓝调店)', '长春市', '40', 'http://img0.aibangjuxin.com/ipic/9999c57182ad1052_8.jpg', 'hotel', '0431-81938111 0431-81936455', '美食;东北菜');
INSERT INTO item VALUES ('1824054101-1269534954', '长春大街719号', '长春中澳大都会宾馆', '长春市', '0', '', 'live', '0431-86819888', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1824091797-943973441', '净月经济开发区新城大街9公里(长春净月旅游区)', '吉林亚泰国际俱乐部', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/13514ff8d4ab6bbe_8.jpg', 'live', '0431-84528294 0431-84541888', '度假村;宾馆酒店;旅游景点');
INSERT INTO item VALUES ('1824094309-1269425172', '长春市南关区人民大街与自由大路交汇处(东北师范大学对面)', '长春美家时尚宾馆(人民大街店)', '长春市', '0', '', 'live', '18043026256 0431-85370188', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1824095493-1269534985', '朝阳区前进大街1045号(繁荣路口)', '蜀香楼火锅(前进大街店)', '长春市', '62', '', 'hotel', '0431-82848666', '美食;火锅;其他火锅');
INSERT INTO item VALUES ('1824104373-945349319', '朝阳区万宝街6号', '天润火锅', '长春市', '37', 'http://img0.aibangjuxin.com/ipic/3b446ce51e5b56b3_8.jpg', 'hotel', '0431-82059999 0431-88205999', '美食;韩国料理;火锅;其他火锅');
INSERT INTO item VALUES ('18689896-420249578', '长春市朝阳区人民大街7251号(近湖宁路)', '长春拉图摩根商旅酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/7f2ab7748bb236f_8.jpg', 'live', '0431-89570088-6203 0431-89570088', '宾馆酒店;五星级酒店');
INSERT INTO item VALUES ('18689960-420239705', '红旗街616号万达商业广场3楼366-367室(省医院旁)', '小鱼回转寿司(红旗街万达广场店)', '长春市', '54', 'http://img0.aibangjuxin.com/ipic/4b7fca65f90fde81_8.jpg', 'hotel', '0431-81936003', '美食;日本美食;日本料理');
INSERT INTO item VALUES ('18690120-420249578', '经济开发区东南湖大路2109号(近汉庭酒店)', '水之珍酒店', '长春市', '93', '', 'live', '0431-89159777', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('18703896-419946745', '长春市南关区岳阳街1500号(东师会馆附近)', '长春天龙源宾馆', '长春市', '0', '', 'live', '0431-81662333 0431-85662333', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('18706056-419009451', '朝阳区桦甸街465号(近华宇小区正门)', '零距离时尚宾馆(桦甸街店)', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/f4bae4193192dacc_8.jpg', 'live', '0431-84538888 0431-85548888', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('18706232-419889782', '南关区清明街319-363号(清明街与北安路交汇)', '食通天', '长春市', '303', 'http://img0.aibangjuxin.com/ipic/8386494b5f443cc7_8.jpg', 'hotel', '0431-82749999 0431-82799999', '美食;粤菜;其他粤菜');
INSERT INTO item VALUES ('18708248-420239705', '朝阳区红旗街616号万达商业广场3楼387-389室(省医院旁)', '麻辣盛艳', '长春市', '43', 'http://img0.aibangjuxin.com/ipic/694d8d3e609ec179_8.jpg', 'hotel', '0431-81936599', '美食;川菜;其他川菜');
INSERT INTO item VALUES ('18727240-420703315', '长春大街109号', '长春七夕商务宾馆', '长春市', '0', '', 'live', '0431-89119888 0431-89996668', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('18733416-419009240', '宽城区凯旋路399号', '长春菲米莱时尚宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/fb14033cbb077a64_8.jpg', 'live', '0431-86818811 0431-86818885', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('18774696-420715964', '青年路新月花园5号', '王大勺吉菜酒店(总店)', '长春市', '30', '', 'live', '0431-88811011', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('18779528-419823661', '朝阳区同志街2088号(同志街与清华路交汇南行20米)', '长春富驿酒店', '长春市', '0', '', 'live', '0431-86761222 0431-85644688', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('18852376-420215502', '朝阳区崇智路663号(崇智路与永安街交汇处)', '长春恒悦宾馆(崇智路店)', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/39cf3b3a486a0991_8.jpg', 'live', '0431-88969788 0431-88896978', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('19088088-425322762', '胜利大街861号', '长春DNA商务酒店(南广场店)', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/244209b21fbb35aa_8.jpg', 'live', '0431-85812999 0431-85855755', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('19147064-419891675', '朝阳区南昌路1号(西民主大街与南昌路交汇处)', '高丽王朝(文化广场店)', '长春市', '45', 'http://img0.aibangjuxin.com/ipic/2a3ec51d4c3be9f9_8.jpg', 'hotel', '0431-86939990 0431-88509666', '美食;韩国料理');
INSERT INTO item VALUES ('19155048-420248018', '民康路1222号', '长春银座佳驿酒店(全安广场店)', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/81a67e9e8ab740_8.jpg', 'live', '0431-88653338 0431-45236677', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('19161128-419890887', '建和街国联小区4A-3号(崇智路口)', '一品堂港式茶餐厅', '长春市', '23', 'http://img0.aibangjuxin.com/ipic/89d5f6caf1884172_8.jpg', 'hotel', '0431-88989893 0431-88989896', '美食;粤菜;茶餐厅;小吃快餐;快餐');
INSERT INTO item VALUES ('19175656-419823690', '人民大街80号', '长春春谊宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/2d07c3e60d439a3a_8.jpg', 'live', '0431-82096106 0431-82096888', '宾馆酒店;三星级酒店');
INSERT INTO item VALUES ('19180760-420703277', '朝阳区义和路509号', '义和宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/53ad8d0c3e3d0b42_8.jpg', 'live', '0431-85593333', '宾馆酒店;三星级酒店');
INSERT INTO item VALUES ('19193768-419889727', '南关区西三马路126号(永春路口)', '金福自助烤肉城(西三马路店)', '长春市', '21', '', 'hotel', '', '美食;烧烤');
INSERT INTO item VALUES ('1949631670-409542626', '朝阳区前进大街2255号(近吉林大学)', '速8酒店(高新开发区店)', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/12cc512f631658c3_8.jpg', 'live', '0431-85154111 0431-85154222', '宾馆酒店;速8;经济型酒店');
INSERT INTO item VALUES ('1949672998-406140590', '南关区大马路1558号(近四道街)', '玛克威美食商务酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/d5e8089476285e72_8.jpg', 'live', '0431-88712033 0431-88732233', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1949758726-408837317', '长春市南关区自由大路3158号(近亚泰大街)', '长春华美达大酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/18b5732fd6ca2dd4_8.jpg', 'live', '0431-85576999 0431-85576666', '宾馆酒店;四星级酒店');
INSERT INTO item VALUES ('1950621894-409551401', '朝阳区自由大路1008号亚泰豪苑C座(喜来登对面)', '天厨美馔', '长春市', '151', 'http://img0.aibangjuxin.com/ipic/454cd25a07c177e7_8.jpg', 'hotel', '0431-85658333 0431-85606222', '美食;粤菜;其他粤菜');
INSERT INTO item VALUES ('1950939734-406140590', '宽城区铁北二路1088号(与北四条街交口处)', '长春豪龙饭店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/25cfa05c4e76abb5_8.jpg', 'live', '0431-85820133 0431-85829888', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1951685926-409607710', '吉林省长春市朝阳区建设街1688号', '逸都商务宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/208556c422ff2e75_8.jpg', 'live', '0431-86039222 0431-86039333', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('1951709078-409423275', '朝阳区南湖大路3798号', '南湖宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/25f34e450c580a29_8.jpg', 'live', '0431-85586888', '宾馆酒店;五星级酒店');
INSERT INTO item VALUES ('1951755142-406140590', '汽车开发区汽车产业开发区飞跃路18号', '高尔夫酒楼', '长春市', '35', 'http://img0.aibangjuxin.com/ipic/3090c96544fad23d_8.jpg', 'hotel', '0431-85757077 0431-85757227', '美食;东北菜');
INSERT INTO item VALUES ('1951862806-406135111', '朝阳区辽宁路2355号', '吉航海港海鲜酒店(辽宁路店)', '长春市', '81', 'http://img0.aibangjuxin.com/ipic/2727b0bbf5855fb2_8.jpg', 'live', '0431-86139888 0431-86139999', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1951944294-409433038', '青年路3777号', '长春富贵大饭店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/125da4bdfb2339b1_8.jpg', 'live', '0431-82652222 0431-82652277', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('1951976598-409608061', '咸阳路1号(市委楼南侧)', '济南食府(咸阳路店)', '长春市', '44', 'http://img0.aibangjuxin.com/ipic/a2071ce8568ed92_8.jpg', 'hotel', '0431-88917898', '美食;鲁菜');
INSERT INTO item VALUES ('1952361942-406131585', '二道区吉林大路1881号', '龙达宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/79e606501cc6ad38_8.jpg', 'live', '0431-84948888 0431-84966201', '宾馆酒店;三星级酒店');
INSERT INTO item VALUES ('1952362918-409550640', '高新区前进大街959号(信息学院旁边)', '长春U尼宾馆(前进大街街店)', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/9ffb2b034959cc9e_8.jpg', 'live', '0431-85502008 0431-85502009', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1952368246-408278913', '朝阳区重庆路1255号卓展购物中心后侧', '必胜客(卓展店)', '长春市', '65', 'http://img0.aibangjuxin.com/ipic/761b873fcd4ac34b_8.jpg', 'hotel', '0431-88966370', '美食;小吃快餐;西餐;其他西餐;快餐');
INSERT INTO item VALUES ('1952925366-408851854', '长春南关区平治街14号', '长春恒悦宾馆(南关店)', '长春市', '0', '', 'live', '0431-88915688', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('1952936182-406131547', '吉林省长春市绿园区春城大街3231号', '诺亚商务酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/74d706886c3eb15d_8.jpg', 'live', '0431-85877888 0431-87690137', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1953052918-409433077', '长春 绿园区 汽车产业开发区南阳路900号', '长春汽贸城速8酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/fc30ad2e06a52c59_8.jpg', 'live', '0431-88533888 18946651572', '宾馆酒店;速8;经济型酒店');
INSERT INTO item VALUES ('1956437526-408279278', '绿园区普阳街482号(吉林东方医院旁)', '长春比佳美时尚宾馆', '长春市', '0', '', 'live', '0431-86806789', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1956502758-406135635', '吉林省长春市宽城区汉口大街376号', '金街商务宾馆', '长春市', '0', '', 'live', '0431-85862666', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1956564422-406138463', '平阳街(至善路口)', '老婆仔鸡煲(南关店)', '长春市', '28', 'http://img0.aibangjuxin.com/ipic/b8f5ede8b6c0912b_8.jpg', 'hotel', '13134318055 0431-88664099', '美食;火锅;其他火锅');
INSERT INTO item VALUES ('1957209110-406131142', '朝阳区工农大路1128号', '欧亚商都', '长春市', '284', 'http://img0.aibangjuxin.com/ipic/e3f37bc8579dc67e_8.jpg', 'hotel', '0431-85616600', '美食;其他美食');
INSERT INTO item VALUES ('1957293366-413560724', '西康路(长庆街口)', '咖喱工房(桂林路店)', '长春市', '25', 'http://img0.aibangjuxin.com/ipic/b80934d9c21e4c61_8.jpg', 'hotel', '0431-85641583', '美食;其他美食');
INSERT INTO item VALUES ('1957892310-409606638', '吉林省长春市宽城区长白路288号', '金色阳光时尚宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/627c332d1d1c10df_8.jpg', 'live', '0431-82907125 0431-82907222', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1957932598-406135111', '吉林省长春市宽城区北青年路800号', '新月宾馆', '长春市', '0', '', 'live', '0431-82642888 0431-82646888', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1957937206-406135111', '建和街275号', '土大力(建和街店)', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/30e6522200a20186_8.jpg', 'hotel', '0431-88989219', '美食;韩国料理');
INSERT INTO item VALUES ('1957982966-406140590', '吉林省长春市朝阳区自由大路855号', '喜来登休闲会馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/a7fd4cbb0dd88e3_8.jpg', 'live', '0431-85065555 0431-85068888', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1957988550-408278459', '长春市经济技术开发区金州街167号原205号(北方市场5号门对面)', '长春圣佳快捷商务宾馆(经开店)', '长春市', '0', '', 'live', '0431-86785777', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('1958014374-409433881', '红旗街老电影厂对面', '长春美家时尚快捷宾馆(红旗街店)', '长春市', '0', '', 'live', '18043026256 0431-85921777', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('1958389382-406140590', '汽车开发区汽车产业开发区东风大街890号', '新万沅大酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/3af57fb6737bb62_8.jpg', 'live', '0431-85758666', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('2029583007-421833646', '朝阳区工农大路3028号(近同志街)', '曼谷村(工农大路店)', '长春市', '82', '', 'hotel', '0431-85604666', '美食;东南亚菜;越南菜');
INSERT INTO item VALUES ('2029609215-421833415', '宽城区南广胜利大街与上海路交汇', '民族商务酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/7a03b5d55e8f0dc5_8.jpg', 'live', '0431-82958002 0431-82958500', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('2029691727-421833535', '朝阳区西朝阳路192号(近万宝街)', '中国城肥牛府(文化广场店)', '长春市', '63', 'http://img0.aibangjuxin.com/ipic/9ba5846f1274f3e3_8.jpg', 'hotel', '0431-88562555', '美食;火锅;其他火锅');
INSERT INTO item VALUES ('2029703567-421333280', '朝阳区重庆路1255号卓展购物中心B座B1楼(近西安大路)', '赛拉维面包房(卓展店)', '长春市', '28', 'http://img0.aibangjuxin.com/ipic/820966b1f0bbeb51_8.jpg', 'hotel', '0431-88483446', '美食;甜点饮品;面包西点');
INSERT INTO item VALUES ('2029706543-421833646', '吉林长春市高新开发区修正路811号', '长春君怡酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/cce550dcef916679_8.jpg', 'live', '0431-87058888 0431-85070622', '宾馆酒店;四星级酒店');
INSERT INTO item VALUES ('2029746527-421433833', '解放大路1933号', '长春园东宾馆', '长春市', '0', '', 'live', '0431-88895152 0431-88995499', '宾馆酒店;三星级酒店');
INSERT INTO item VALUES ('2030445247-421833646', '吉林省长春市朝阳区建和街275号', '青云宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/888f374cdc4d0d55_8.jpg', 'live', '0431-82615555 0431-88985912', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('2030451423-421504620', '吉林省长春市朝阳区锦水路966号', '长春如家人民广场二店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/c9dda51054bfd9bb_8.jpg', 'live', '0431-88577222 0431-88857722', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('2030453039-420167483', '朝阳区前进大街1658号(森林警校旁)', '鸿铭隆东方肉馆(前进大街店)', '长春市', '44', '', 'hotel', '0431-85199498 0431-86822888', '美食;农家菜');
INSERT INTO item VALUES ('2030488143-421723156', '新疆街6号(桂林路口)', '轩记酒楼', '长春市', '81', 'http://img0.aibangjuxin.com/ipic/cbfcaf581325252e_8.jpg', 'hotel', '0431-85678888 0431-85637555', '美食;粤菜;其他粤菜');
INSERT INTO item VALUES ('2030497951-421328502', '经济技术开发区自由大路4776号(北方市场)', '凯麒精品酒店', '长春市', '0', '', 'live', '0431-89217666', '宾馆酒店;其他宾馆酒店;');
INSERT INTO item VALUES ('2030512063-421833646', '建设街982号', '灶王爷聚味堂(建设街店)', '长春市', '51', 'http://img0.aibangjuxin.com/ipic/ede5da36de5cf119_8.jpg', 'hotel', '0431-86939187 0431-88733899', '美食;其他美食');
INSERT INTO item VALUES ('2030525935-420166083', '净月开发区世荣路中海水岸春城(近中海莱茵东郡)', '重庆铁锅门养身香辣馆(世荣路店)', '长春市', '36', 'http://img0.aibangjuxin.com/ipic/cf4ea86b6687d829_8.jpg', 'hotel', '0431-84622117', '美食;川菜;其他川菜;火锅;其他火锅');
INSERT INTO item VALUES ('2030566527-420173973', '净月开发区彩织街富奥花园B区8栋103号', '星海湾宾馆', '长春市', '0', '', 'live', '0431-89096318', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('2030773023-420173973', '经济开发区珠海路与临河街交汇(近天地十二坊)', '社会主义新农村(珠海路店)', '长春市', '42', '', 'hotel', '0431-85666604', '美食;农家菜');
INSERT INTO item VALUES ('2030783119-421511127', '朝阳区前进大街488号', '樱之盛宴日本料理', '长春市', '275', 'http://img0.aibangjuxin.com/ipic/700c31810df963d1_8.jpg', 'hotel', '0431-89871777', '美食;日本美食;日本料理');
INSERT INTO item VALUES ('2030798639-421328388', '长春市高新区震宇街227号(与星火北一路交汇处)', '长春米格宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/7da798e82d982db8_8.jpg', 'live', '0431-89586777', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('2030857439-421434155', '朝阳区西安大路248号(近建和街)', '湾仔港式茶餐厅', '长春市', '45', 'http://img0.aibangjuxin.com/ipic/579fa213ffb8b4a2_8.jpg', 'hotel', '0431-88496999', '美食;粤菜;茶餐厅;小吃快餐;快餐');
INSERT INTO item VALUES ('2030889679-421833516', '桂林胡同(百汇街口)', '全洲拌饭(百汇街店)', '长春市', '26', '', 'hotel', '', '美食;韩国料理');
INSERT INTO item VALUES ('2030945103-421328501', '净月经济开发区金城街599号(与银锦路交口处)', '长春丽庭宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/500284f45a343bd2_8.jpg', 'live', '0431-87081999', '宾馆酒店;四星级酒店');
INSERT INTO item VALUES ('2030952415-421433833', '锦程大街531栋', '月亮神一品天下酒店', '长春市', '0', '', 'live', '0431-85763411 0431-85764669', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('2031092495-421833646', '朝阳区万宝街30号', '吉塔酒店', '长春市', '46', 'http://img0.aibangjuxin.com/ipic/d4e315871c89f9f3_8.jpg', 'hotel', '0431-84038178 0431-85666754', '东北菜;美食;婚宴酒店;结婚');
INSERT INTO item VALUES ('2031109903-421833646', '朝阳区建设街44号', '锦汉食府', '长春市', '37', 'http://img0.aibangjuxin.com/ipic/77c250f2fe260cfe_8.jpg', 'hotel', '0431-85166332 0431-8526444', '美食;川菜;其他川菜');
INSERT INTO item VALUES ('2031948079-421511144', '朝阳区清华路(近牡丹街)', '延边白玉串城', '长春市', '46', 'http://img0.aibangjuxin.com/ipic/df4a4aa62191e16f_8.jpg', 'hotel', '0431-86195888', '美食;烧烤');
INSERT INTO item VALUES ('2031955871-421833415', '卫星路7000号', '长春华苑宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/2c537fa68fc46526_8.jpg', 'live', '0431-85583333 0431-87075888', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('2031962911-421328499', '长春市南关区大马路与田家大院交汇处(长春市生殖健康中心医院对面)', '长春眠酷时尚商务宾馆(宜居店)', '长春市', '0', '', 'live', '13843005209 0431-88737777', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('2031969151-420166925', '二道区民丰大街与岭东路交汇南行100米(东民路口)', '刘一锅筋头巴脑', '长春市', '33', '', 'hotel', '0431-84645777', '美食;东北菜;火锅;其他火锅');
INSERT INTO item VALUES ('2031976591-421433120', '大马路1059号(长春大街口)', '汉庭快捷酒店(长春大街店)', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/6a85c5100e3e39b_8.jpg', 'live', '0431-88772000', '宾馆酒店;汉庭;经济型酒店');
INSERT INTO item VALUES ('2031979663-421833635', '朝阳区建设街1122号(近德汇路)', '太阳会大饭店', '长春市', '180', 'http://img0.aibangjuxin.com/ipic/a24fd7a0fe488cc6_8.jpg', 'hotel', '0431-88510777 0431-88510999', '美食;日本美食;日本料理;东北菜');
INSERT INTO item VALUES ('2031980079-420166526', '浦东路10号', '9居连锁酒店(长春经济开发区会展中心店)', '长春市', '0', '', 'live', '0431-81989666', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('2032027551-420173973', '仙台大街1229号赛德时尚购物中心2楼(近东南湖大路)', '圣鲸国际美食百汇(塞德广场店)', '长春市', '137', 'http://img0.aibangjuxin.com/ipic/3e29bbcb1f1eb88a_8.jpg', 'hotel', '0431-81803311 0431-81803322', '美食;自助餐');
INSERT INTO item VALUES ('2032032463-421833429', '吉林省长春市二道区北海路478号', '圣嘉自由港商务酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/9e66f4548350ee29_8.jpg', 'live', '0431-84610088 0431-84610099', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('2032034367-421511120', '长春市宽城区胜利大街739号(南广场)', '长春嘉丰商务宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/ccf5d6f09d984cdd_8.jpg', 'live', '0431-86765888 0431-81052732', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('2032121135-421833415', '朝阳区西康路1033号(近长庆街)', '味多屋泰式咖喱店', '长春市', '31', 'http://img0.aibangjuxin.com/ipic/acab63f4ab84d2cc_8.jpg', 'hotel', '0431-85648788 0431-86760212', '美食;东南亚菜;越南菜');
INSERT INTO item VALUES ('2032404543-420172812', '吉林省长春市人民大街4059号', '吉林大学北苑宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/6edd3ad593c02880_8.jpg', 'live', '0431-88498536 0431-88499100', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('2032429823-421507822', '长春南关区体北路1号(近亚泰大街)', '金冠阁大酒店', '长春市', '40', '', 'live', '0431-88652460', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('2032441855-421833450', '吉林省长春市宽城区辽宁路322号', '华正宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/830dc6905e9c29f4_8.jpg', 'live', '0431-86113001 0431-86113002', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('2032442303-421833646', '南关区亚泰大街(南湖大路)', '金达莱饭店', '长春市', '37', 'http://img0.aibangjuxin.com/ipic/de95a41cbcae7327_8.jpg', 'hotel', '0431-82668111 0431-86665111', '美食;东北菜');
INSERT INTO item VALUES ('22579480-420239705', '春城大街1515号', '长春一品吉粮国际酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/dfff17fd1ee450c4_8.jpg', 'live', '0431-88790800 13596167719', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('23436280-419871725', '南关区人民大街2262号(工人文化宫北侧)', '食间(工人文化宫店)', '长春市', '65', 'http://img0.aibangjuxin.com/ipic/ec8bf5811fa0365a_8.jpg', 'hotel', '0431-88956767 0431-85925587', '美食;西餐;其他西餐');
INSERT INTO item VALUES ('24393320-419870363', '开运街12号', '长春琉璃时光酒店(开运街店)', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/2569e0e887ae1cb3_8.jpg', 'live', '0431-85714444', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('285568706-421191427', '中海莱茵东郡7477号(世荣路口)', '意大利餐厅', '长春市', '171', 'http://img0.aibangjuxin.com/ipic/15e86a38c829907a_8.jpg', 'hotel', '0431-85867772', '美食;西餐;其他西餐');
INSERT INTO item VALUES ('285579218-420212886', '宽城区北京大街393号', '绿沣园大酒店', '长春市', '0', '', 'live', '0431-82712751 0431-82734137', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('285782690-420540793', '朝阳区红旗街616号万达商业广场2号门5楼(省医院旁)', '新王子美食汇', '长春市', '117', 'http://img0.aibangjuxin.com/ipic/8b1394353b3970a2_8.jpg', 'hotel', '0431-81936902 0431-81936901', '美食;自助餐');
INSERT INTO item VALUES ('285824546-420539902', '朝阳区同光路1033号', '玛克威海鲜城(同光路店)', '长春市', '80', 'http://img0.aibangjuxin.com/ipic/79dc55d659ca5b0a_8.jpg', 'hotel', '0431-85619111 0431-85619333', '美食;火锅;其他火锅');
INSERT INTO item VALUES ('285867010-421191427', '吉林省长春市朝阳区自由大路1270号', '京东时尚宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/c1e16e9753a01e62_8.jpg', 'live', '0431-86937768 0431-86937878', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('285895506-420539902', '宽城区新发路1169号(近胜利公园)', '松苑宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/9f3b931d69b7d40d_8.jpg', 'live', '0431-82727982 0431-82727001', '宾馆酒店;四星级酒店');
INSERT INTO item VALUES ('286086386-420492723', '民康路与西三道街交汇', '长春每域商务宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/d645113b4ab87183_8.jpg', 'live', '0431-81783732 0431-88638666', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('286261074-420540102', '双阳区杨家村农大发展学院(龙双公路37公里)', '御龙温泉', '长春市', '0', '', 'live', '', '宾馆酒店;旅游景点;度假村;浴场;洗浴;休闲娱乐;洗浴按摩');
INSERT INTO item VALUES ('286332946-419866829', '朝阳区新华路18号长春宾馆1号楼2层', '长春宾馆宴宾楼', '长春市', '0', '', 'live', '0431-88793888 0431-88791616', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('286334882-420213198', '南关区民康路855号(三道街口)', '福成肥牛(民康路店)', '长春市', '53', 'http://img0.aibangjuxin.com/ipic/5f2ad5d709817be9_8.jpg', 'hotel', '0431-81905788 0431-83334555', '美食;火锅;其他火锅');
INSERT INTO item VALUES ('286335474-420213205', '朝阳区重庆路卓展时代广场B座后(天天酒店正门对面)', '卡萨布兰卡时尚餐厅', '长春市', '63', 'http://img0.aibangjuxin.com/ipic/96b9572891ccebf2_8.jpg', 'hotel', '0431-88948643', '美食;西餐;其他西餐');
INSERT INTO item VALUES ('286335570-420539902', '南关区大经路与四道街交汇处', '天下晓大酒店(总店)', '长春市', '41', '', 'hotel', '0431-88729916', '美食;其他美食');
INSERT INTO item VALUES ('286353762-419786282', '大马路1119号', '长春环球大酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/4bc44dbf1dbbc976_8.jpg', 'live', '0431-89573509 0431-89658888', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('286972930-420218243', '朝阳区湖西路1388号(湖西路与延安大街交汇处)', '长春启悦快捷宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/b5a6779ce42f276c_8.jpg', 'live', '0431-81903777 0431-81913377', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('293725282-420212385', '朝阳区西安大路196号', '星际大酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/feb5b0d711115c4b_8.jpg', 'live', '0431-87969177 0431-87970220', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('293725378-420540103', '朝阳区前进大街1511号(朝阳区政府与省委党校中间)', '尚味一号', '长春市', '64', 'http://img0.aibangjuxin.com/ipic/dcf2127b09b0bffe_8.jpg', 'hotel', '0431-85110222 0431-85110111', '美食;其他美食');
INSERT INTO item VALUES ('293726098-420540685', '朝阳区建设街1028号(近西安大路)', '金湘食府', '长春市', '55', 'http://img0.aibangjuxin.com/ipic/b145fc4ad950ae70_8.jpg', 'hotel', '0431-85089616 0431-86939398', '美食;湘菜');
INSERT INTO item VALUES ('293762322-419854958', '朝阳区红旗街2号(与和光路交汇处)', '长春百家商务宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/ad9dc4ef88d93743_8.jpg', 'live', '0431-85701111', '宾馆酒店;三星级酒店');
INSERT INTO item VALUES ('293765538-428031439', '朝阳区自由大路53号自由花园小区1楼(东岭街口)', '景上道自助炭火烤肉', '长春市', '25', '', 'hotel', '0431-88633533', '美食;烧烤');
INSERT INTO item VALUES ('293798530-428030781', '朝阳区自由大路1111号(国商友谊店斜对面)', '三和狗肉(自由大路店)', '长春市', '35', 'http://img0.aibangjuxin.com/ipic/884575c9e062db34_8.jpg', 'hotel', '0431-85666665', '美食;韩国料理');
INSERT INTO item VALUES ('293815938-419829204', '宽城区辽宁路458号(近西二条街)', '长春中长大厦酒店', '长春市', '0', '', 'live', '0431-86122111', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('293820994-419793887', '经济技术开发区会展大街1111号(会展大街与东南湖大路交汇处北侧)', '锦江之星(长春会展中心店)', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/9883f45a8357ee20_8.jpg', 'live', '0431-85831238', '宾馆酒店;经济型酒店;锦江之星');
INSERT INTO item VALUES ('293824610-420212883', '湖滨街1号', '长春华侨饭店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/8a2f25355483d49a_8.jpg', 'live', '0431-85599888 0431-85599888-8825', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('329614066-420540793', '绿园区皓月大路(和平大街口)', '奇乐自助火锅烤肉餐厅', '长春市', '41', '', 'hotel', '0431-87679666 0431-87810638', '美食;自助餐;火锅;其他火锅');
INSERT INTO item VALUES ('329630418-420465618', '吉林省长春市朝阳区万宝街909号', '梦圆快捷酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/2fe18e7e219807f0_8.jpg', 'live', '0431-87891000', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('329665458-420213212', '朝阳区红旗街(近长春电影制片厂)', '美家视界风尚酒店(红旗街店)', '长春市', '0', '', 'live', '0431-85921777', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('329672930-419786275', '宽城区胜利大街239号(胜利大街与东一条交叉口)', '长春万嘉商务宾馆', '长春市', '0', '', 'live', '0431-81951888 15568161111', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('329713666-420212973', '吉林省长春市绿园区西安桥外祥运街313号川王福楼上', '莱德宾馆', '长春市', '0', '', 'live', '0431-87810037 0431-87905788', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('329783922-420463341', '朝阳区和光路402号红旗大棚北门对面(红旗街口)', '大烤宴串烧工房', '长春市', '25', 'http://img0.aibangjuxin.com/ipic/30bbd5bde39f8cd2_8.jpg', 'hotel', '0431-85635757 0431-86557873', '美食;烧烤');
INSERT INTO item VALUES ('329789458-420218184', '吉林省长春市绿园区青年路2197号', '中航日鑫宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/584426b84e1d56b5_8.jpg', 'live', '0431-85868700 0431-87900001', '宾馆酒店;三星级酒店');
INSERT INTO item VALUES ('329789890-420218787', '西中华路王氏春饼对面(文化广场西侧)', '老杨太太烧烤(文化广场店)', '长春市', '25', '', 'hotel', '0431-88525755', '美食;烧烤');
INSERT INTO item VALUES ('329796338-428039670', '开运街5178号欧亚卖场2楼美食城(近东海大街)', '小港厨港式餐厅', '长春市', '21', '', 'hotel', '0431-85541455', '美食;粤菜;其他粤菜');
INSERT INTO item VALUES ('329834082-420453689', '朝阳区西安大路2099号(近辽宁路口)', '圣豪食府', '长春市', '206', 'http://img0.aibangjuxin.com/ipic/a17f1d117f6be54f_8.jpg', 'hotel', '0431-86159999', '美食;粤菜;烧烤;其他粤菜');
INSERT INTO item VALUES ('330244130-420540668', '万宝街(和平大戏院对面)', '弘扬川菜', '长春市', '24', '', 'hotel', '0431-85645058', '美食;川菜;其他川菜');
INSERT INTO item VALUES ('330249490-420217383', '桂林路617号天虹商厦西侧(近立信街)', '法国贝甜', '长春市', '24', 'http://img0.aibangjuxin.com/ipic/e923a22551b98e5e_8.jpg', 'hotel', '', '美食;面包西点;甜点饮品');
INSERT INTO item VALUES ('330464546-420540819', '朝阳区桂林胡同(近百汇街)', '京涮坊(桂林胡同店)', '长春市', '42', 'http://img0.aibangjuxin.com/ipic/a59dabb90179b570_8.jpg', 'hotel', '0431-85679111', '美食;火锅;其他火锅');
INSERT INTO item VALUES ('330464610-428031427', '朝阳区桂林路745号', '红磨坊', '长春市', '33', 'http://img0.aibangjuxin.com/ipic/77fb431c7a5d6d02_8.jpg', 'hotel', '0431-85623994', '美食;西餐;其他西餐');
INSERT INTO item VALUES ('330470546-420539902', '朝阳区红旗街54-13号(宽平大路口)', '清香串府', '长春市', '26', 'http://img0.aibangjuxin.com/ipic/f4063147d1e1f7ca_8.jpg', 'hotel', '0431-85953289', '美食;烧烤');
INSERT INTO item VALUES ('330473378-420213205', '朝阳区自由大路1111号(证券大厦对面)', '詹师傅香辣蟹', '长春市', '76', 'http://img0.aibangjuxin.com/ipic/e30b33e53804f083_8.jpg', 'hotel', '0431-85673300 0431-85058088', '美食;川菜;其他川菜');
INSERT INTO item VALUES ('330474530-428020023', '万福街58号', '长春金意商务宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/e868bf727169f319_8.jpg', 'live', '0431-86573777 0431-87679001', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('330585378-420218184', '经济开发区临河街5062号', '泉家居酒楼(临河街店)', '长春市', '160', '', 'hotel', '0431-84813333 0431-84812222', '美食;粤菜;其他粤菜');
INSERT INTO item VALUES ('330629586-420212340', '绿园区锦阳路317号', '正鑫洗浴宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/9c07c795816d5ebf_8.jpg', 'live', '0431-87636666', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('435412011-443182740', '朝阳区重庆路崇智商城2楼(国美电器旁)', '春园烤肉王(重庆路店)', '长春市', '40', 'http://img0.aibangjuxin.com/ipic/124b395df0b413d5_8.jpg', 'hotel', '0431-85689888', '美食;烧烤');
INSERT INTO item VALUES ('435440683-443221328', '朝阳区工农大路3500号(南湖游泳场对面)', '卢家妈妈', '长春市', '40', 'http://img0.aibangjuxin.com/ipic/174ef2b571c9126_8.jpg', 'hotel', '0431-85692786 13610791708', '美食;东北菜');
INSERT INTO item VALUES ('435530315-435623645', '南关区通化路44号(人民大街口)', '大连街烧烤', '长春市', '51', '', 'hotel', '0431-88950499', '美食;烧烤');
INSERT INTO item VALUES ('435583323-443182720', '南关区南环城路1988号(近雕塑公园)', '诺亚明珠酒店餐厅', '长春市', '51', '', 'hotel', '0431-85851888 0431-88857185', '美食;东北菜');
INSERT INTO item VALUES ('435609435-443183312', '宽城区南京大街45号(青岛路口)', '周家羊汤(南京大街店)', '长春市', '28', 'http://img0.aibangjuxin.com/ipic/cf4ae3c21416e2cc_8.jpg', 'hotel', '0431-82700016', '美食;东北菜');
INSERT INTO item VALUES ('435612091-443182911', '吉林省长春市硅谷大街3355号', '韩乡源酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/2f49cd2f834c7de1_8.jpg', 'live', '0431-87051116 0431-87051118', '宾馆酒店;经济型酒店;韩国料理;美食');
INSERT INTO item VALUES ('435616203-443183638', '二道区临河街2865号(自由大路与临河街交汇处)', '翠花菜馆', '长春市', '32', 'http://img0.aibangjuxin.com/ipic/1db87fdab4b00444_8.jpg', 'hotel', '0431-84673388 0431-84671988', '美食;东北菜;农家菜');
INSERT INTO item VALUES ('435623835-435454663', '锦程大街3131号(顺义路口)', '高尔夫香鸭', '长春市', '41', 'http://img0.aibangjuxin.com/ipic/beb67963ecdcbe0f_8.jpg', 'hotel', '0431-85902006 0431-85902221', '美食;东北菜');
INSERT INTO item VALUES ('435623995-435622902', '南关区幸福街20号(卫星路与卫光街交汇处南行300米路东)', '长春巢谷商旅酒店', '长春市', '0', '', 'live', '0431-88588885', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('435624315-443221950', '临河街190号与自由大路交汇(浦东外国语学校旁)', '长春兰馨宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/5c50bac5639b52a4_8.jpg', 'live', '0431-84673111 15504307978', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('442097275-443183011', '朝阳区桂林路1108号(长庆街口)', '温度铁板烧(桂林路店)', '长春市', '149', '', 'hotel', '0431-85655508', '美食;日本美食;日本料理;烧烤;韩国料理');
INSERT INTO item VALUES ('442192683-443182992', '朝阳区抚松路50号富豪花园2号(富豪花园正门)', '老北京羊蝎子火锅(富豪花园店)', '长春市', '39', 'http://img0.aibangjuxin.com/ipic/29b9b68f3edb6001_8.jpg', 'hotel', '0431-85917699', '美食;火锅;羊蝎子');
INSERT INTO item VALUES ('442213739-443233731', '朝阳区工农大路1128号欧亚商都东侧(近锦西路)', '得利烤鱼一品香锅(红旗街店)', '长春市', '35', '', 'hotel', '0431-85657739', '美食;川菜;其他川菜');
INSERT INTO item VALUES ('442213899-444037264', '朝阳区同志街1348号(近交通宾馆)', '川王福(同志街店)', '长春市', '35', 'http://img0.aibangjuxin.com/ipic/83971673ba79f1b1_8.jpg', 'hotel', '0431-85625737 0431-85666261', '美食;火锅;其他火锅');
INSERT INTO item VALUES ('442215355-443221965', '经济开发区临河街5155号(天地12坊对面)', '老妈菜馆(经开店)', '长春市', '50', '', 'hotel', '0431-86016666 0431-86016111', '美食;农家菜');
INSERT INTO item VALUES ('442217003-435285546', '亚泰大街1138号新天地购物公园G楼B1楼(近家乐福)', '麻里麻里香锅(新天地店)', '长春市', '37', 'http://img0.aibangjuxin.com/ipic/d51a82fcbe644bc9_8.jpg', 'hotel', '0431-88757349', '美食;火锅;其他火锅');
INSERT INTO item VALUES ('442314603-444037262', '朝阳区文化胡同300号(北安路与文化胡同交汇)', '长春星月时尚酒店(重庆路店)', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/845509ad417a41dc_8.jpg', 'live', '0431-88496666', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('443113611-443183355', '宽城区青年路新月花园18栋(青年路与扶余路交汇处)', '长春美家时尚宾馆(青年路店)', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/4dedcaf2e5d591ee_8.jpg', 'live', '18043026256 0431-82659988', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('443124267-435286284', '朝阳区西安胡同24-1号', '老湖南湘土菜馆', '长春市', '37', '', 'hotel', '0431-88900333', '美食;湘菜');
INSERT INTO item VALUES ('443125051-443233731', '朝阳区红旗街616号万达商业广场3楼335-337室(省医院旁)', '巷陌人家私家菜馆', '长春市', '41', 'http://img0.aibangjuxin.com/ipic/234b77a6c88c8e1c_8.jpg', 'hotel', '0431-81936622', '美食;东北菜');
INSERT INTO item VALUES ('443129323-435456942', '红旗街1768号新东方英语旁(近长久路)', '金汉斯(红旗街店)', '长春市', '38', 'http://img0.aibangjuxin.com/ipic/ff009bf22e93032f_8.jpg', 'hotel', '0431-85028111 0431-88743970', '美食;自助餐;烧烤');
INSERT INTO item VALUES ('443172379-435623122', '前进大街225号', '长春阳光华苑酒店', '长春市', '0', '', 'live', '0431-89218111', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('443198475-443183004', '朝阳区建设街246号(北安路口)', '财运大连海鲜酒店(建设街店)', '长春市', '85', 'http://img0.aibangjuxin.com/ipic/e8ac12ab2f1de17b_8.jpg', 'live', '0431-82716111 0431-82771724', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('443216923-443223209', '朝阳区湖西路1138号(近长影世纪村)', '延边串城', '长春市', '49', 'http://img0.aibangjuxin.com/ipic/1fb1f2ead2897454_8.jpg', 'hotel', '0431-86938881 0431-86938887', '美食;韩国料理;烧烤');
INSERT INTO item VALUES ('443216939-435454663', '吉林省长春市宽城区建设街65号', '百菊大厦', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/42d4ea3dcd605831_8.jpg', 'live', '0431-86138000 0431-86138111', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('443232587-435622999', '长春 朝阳区 西安大路823号 (近人民大街)', '长春吉隆坡大酒店_西安大路823号_', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/f95b90cefa6af708_8.jpg', 'live', '', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('443501691-443233731', '南关区人民大街8668号(近卫星广场)', '圆饺园', '长春市', '67', '', 'hotel', '0431-88889559 0431-88888632', '美食;东北菜');
INSERT INTO item VALUES ('443581483-435440019', '朝阳区西康胡同699号', '意府时尚火锅', '长春市', '35', 'http://img0.aibangjuxin.com/ipic/7f2936dc6367d69a_8.jpg', 'hotel', '0431-85670601', '美食;火锅;其他火锅');
INSERT INTO item VALUES ('444056635-443222004', '南关区人民大街5688号紫荆花饭店1楼', '维多利亚西餐厅', '长春市', '106', 'http://img0.aibangjuxin.com/ipic/33e9d8018b5ddda0_8.jpg', 'hotel', '0431-85563777 0431-85687888', '美食;西餐;其他西餐;自助餐');
INSERT INTO item VALUES ('444072523-444075190', '二道区东盛大街40号(亚泰会馆旁)', '真子饭店(东盛大街店)', '长春市', '31', 'http://img0.aibangjuxin.com/ipic/d7c13ec174e6b240_8.jpg', 'hotel', '0431-84830818', '美食;韩国料理');
INSERT INTO item VALUES ('444073723-443218733', '朝阳区红旗街1606号(国信大厦附近)', '长春U尼宾馆(红旗街店)', '长春市', '0', '', 'live', '0431-85502008 0431-87054000', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('444074347-443113025', '朝阳区红旗街1121号(老长影制片厂对面)', '雪雁食府', '长春市', '41', '', 'hotel', '0431-85046555 0431-85954911', '美食;火锅;其他火锅');
INSERT INTO item VALUES ('444076363-435438418', '南关区自由大路南关区政府对面(东岭街路口)', '小锅饭(自由大路店)', '长春市', '41', 'http://img0.aibangjuxin.com/ipic/422030efd2b500dc_8.jpg', 'hotel', '0431-86405555 0431-88649777', '美食;农家菜');
INSERT INTO item VALUES ('444079227-443183638', '朝阳区桂林路586号(近立信街)', '丁香西饼屋(桂林路店)', '长春市', '18', 'http://img0.aibangjuxin.com/ipic/4503a671beb32a0d_8.jpg', 'hotel', '0431-85655268', '美食;甜点饮品;面包西点');
INSERT INTO item VALUES ('444080107-444035549', '经济技术开发区金川街151号(与海口路交汇处南侧100米)', '长春教育宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/393d87c027a74984_8.jpg', 'live', '0431-84651288 0431-84634828', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('444081643-443183289', '吉林省长春市朝阳区同志街2548号桂林胡同口', '普罗旺斯千禧宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/abcf5899bba1deb9_8.jpg', 'live', '0431-85690111 0431-85693222', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('444093547-443129930', '自由大路19号(近立信街)', '哈比比烤肉自助店(自由大路总店)', '长春市', '42', 'http://img0.aibangjuxin.com/ipic/1daf19feb5c51e2a_8.jpg', 'hotel', '0431-85657574 0431-88733999', '美食;自助餐;烧烤');
INSERT INTO item VALUES ('558448436-424981862', '绿园区正阳街23号', '水仙花洗浴时尚宾馆', '长春市', '0', '', 'live', '0431-87968899', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('558458852-431915396', '朝阳区红旗街399号巴黎春天百货商城附近(近工农大路)', '曹香居(红旗街店)', '长春市', '20', 'http://img0.aibangjuxin.com/ipic/6917a4f5fdfab69d_8.jpg', 'hotel', '', '美食;其他美食');
INSERT INTO item VALUES ('558944660-432643696', '亚泰大街1858号(近长春大街)', '天厨美馔(亚泰大街店)', '长春市', '162', 'http://img0.aibangjuxin.com/ipic/e35e1cb39326072f_8.jpg', 'hotel', '0431-88676888 0431-88675888', '美食;粤菜;其他粤菜');
INSERT INTO item VALUES ('559027268-428106897', '南关区长春大街719号', '中澳大都会饭店', '长春市', '67', 'http://img0.aibangjuxin.com/ipic/a55b01cbf7836b68_8.jpg', 'hotel', '0431-86819888 0431-88953188', '美食;粤菜;其他粤菜');
INSERT INTO item VALUES ('559149396-424992673', '朝阳区自由大路184号亚泰豪苑D栋(近同志街)', '如一坊豆捞(自由大路店)', '长春市', '92', 'http://img0.aibangjuxin.com/ipic/86ac285ee4c05571_8.jpg', 'hotel', '0431-82653333 0431-85664777', '美食;小吃快餐;其他小吃;火锅;其他火锅');
INSERT INTO item VALUES ('559149588-424804618', '长春市宽城区人民大街1078号', '长春乐府大酒店', '长春市', '0', '', 'live', '0431-82090999', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('559151540-424981978', '临河街4091号', '萨菲尔酒店(临河街店)', '长春市', '0', '', 'live', '0431-86013555 0431-86013666', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('559204068-431958702', '绿园区普阳街50号(交通指挥中心)', '天圣元火锅(普阳街店)', '长春市', '42', 'http://img0.aibangjuxin.com/ipic/988efa6fbe003d42_8.jpg', 'hotel', '0431-87665666 0431-87665999', '美食;火锅;其他火锅');
INSERT INTO item VALUES ('559204884-432643828', '高新区卫星路8726号中天大厦(吉大南校)', '天下晓海鲜(卫星路店)', '长春市', '44', 'http://img0.aibangjuxin.com/ipic/7b36327513d01587_8.jpg', 'hotel', '0431-85113317 0431-85114417', '美食;其他美食');
INSERT INTO item VALUES ('559233940-431958702', '吉林省长春市朝阳区文化街99号', '新发宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/a70a39914f587a0b_8.jpg', 'live', '0431-86827555 0431-82701666', '宾馆酒店;三星级酒店');
INSERT INTO item VALUES ('559261588-428092434', '朝阳区桂林路与同志街交汇处', '面对面(桂林路店)', '长春市', '19', 'http://img0.aibangjuxin.com/ipic/dfc89f7b8075b903_8.jpg', 'hotel', '0431-85670174 13159534225', '美食;其他美食');
INSERT INTO item VALUES ('559264052-433537744', '北京大街411号天新饭店2楼', '三俞竹苑(北京大街店)', '长春市', '63', 'http://img0.aibangjuxin.com/ipic/f3c3f7adccacd6dd_8.jpg', 'hotel', '0431-82091058 0431-82091057', '美食;川菜;其他川菜');
INSERT INTO item VALUES ('559266292-431961985', '南关区亚泰大街3336号(金业大厦旁)', '小海丁(亚泰大街店)', '长春市', '63', 'http://img0.aibangjuxin.com/ipic/5d94063939442680_8.jpg', 'hotel', '0431-84030311 0431-88699595', '美食;其他美食');
INSERT INTO item VALUES ('559268692-431958727', '朝阳区同志街5号中山花园(近新华路国美电器)', '吉鑫绿色铁板烧', '长春市', '44', 'http://img0.aibangjuxin.com/ipic/50ec67124264db76_8.jpg', 'hotel', '0431-86100182 0431-82231266', '美食;烧烤');
INSERT INTO item VALUES ('559269188-424804618', '绿园区普阳街1486号吉达花园(近皓月大街)', '蛟河庄稼院(普阳街店)', '长春市', '37', '', 'hotel', '0431-87652626', '农家菜;美食');
INSERT INTO item VALUES ('559273588-428094780', '朝阳区湖西路1299号(近延安大街)', '久面久(湖西路店)', '长春市', '45', '', 'hotel', '0431-88641999', '美食;其他美食');
INSERT INTO item VALUES ('559314340-431962435', '南关区重庆路重庆胡同99号(圈楼对面)', '鸿盛火锅(重庆路店)', '长春市', '28', 'http://img0.aibangjuxin.com/ipic/edc90a002563b72_8.jpg', 'hotel', '0431-88972219 0431-88998888', '美食;火锅;其他火锅');
INSERT INTO item VALUES ('559323444-431915356', '东二条街998号', '长春伍厘米公寓酒店', '长春市', '0', '', 'live', '0431-82905511', '宾馆酒店;公寓式酒店');
INSERT INTO item VALUES ('559324276-428048682', '湖西路与长久路之间', '长春甜馨家庭宾馆', '长春市', '0', '', 'live', '0431-85154111', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('559357860-432643828', '南关区大马路1059号(长春大街与大马路交汇处)', '汉庭酒店(长春大街店)', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/a0cac1306984baec_8.jpg', 'live', '0431-88772000', '宾馆酒店;汉庭;经济型酒店');
INSERT INTO item VALUES ('559357876-431960211', '朝阳区同志街与崇智路交汇(锦水路口)', '富临阿一鲍鱼饭店', '长春市', '503', 'http://img0.aibangjuxin.com/ipic/c277dee6629f8447_8.jpg', 'hotel', '0431-88987111 0431-88987488', '美食;其他美食');
INSERT INTO item VALUES ('559383924-431958727', '长春市朝阳区明德路656号(近同志街)', '长春七月七简约客栈(明德路店)', '长春市', '0', '', 'live', '0431-85562077', '宾馆酒店;招待所');
INSERT INTO item VALUES ('559418276-431960211', '朝阳区西朝阳路与万宝街交汇处(中国城斜对面)', '仁风阁', '长春市', '71', 'http://img0.aibangjuxin.com/ipic/9fa62af8d87e0eb6_8.jpg', 'hotel', '0431-88580668', '美食;韩国料理');
INSERT INTO item VALUES ('559434532-424981897', '同志街1600号', '米兰花时尚酒店(长春同志街店)', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/dc6a8d2a44ee1b79_8.jpg', 'live', '0431-85632828 0431-85644588', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('559434884-431959311', '朝阳区前进大街1511号南侧', '品鱼码头(前进店)', '长春市', '45', 'http://img0.aibangjuxin.com/ipic/77f586b5f748dc75_8.jpg', 'hotel', '0431-85187979', '美食;川菜;其他川菜');
INSERT INTO item VALUES ('559435012-424981568', '长春市二道区吉林大路1658号(和顺街1300号)', '长春圣都大酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/ec65796d957bff35_8.jpg', 'live', '0431-89682888 0431-89679999', '宾馆酒店;三星级酒店');
INSERT INTO item VALUES ('559435220-424804618', '南湖大路 3798号', '长春南湖宾馆七栋', '长春市', '0', '', 'live', '', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('562324836-431960921', '朝阳区湖西路333号长影世纪村1楼(近红旗街)', '食间牛排das(湖西路店)', '长春市', '104', 'http://img0.aibangjuxin.com/ipic/4822a9cfb3877d0a_8.jpg', 'hotel', '0431-85712727 0431-85712626', '美食;西餐;其他西餐');
INSERT INTO item VALUES ('562373588-424981363', '经济技术开发区深圳街518号(浦东路与深圳街交汇处北侧)', '长春好家商务时尚宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/3938cf93932a7dc7_8.jpg', 'live', '0431-86030657 0431-89581155', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('566185908-431996463', '朝阳区开运街12号(开运大厦)', '长春琉璃时光时尚会馆(开运街店)', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/13dd25bec8629a4a_8.jpg', 'live', '0431-85714444 0431-86056080', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('566214068-428105580', '二道区东盛大街天富家园附近(近公平路)', '盛兴大酒店', '长春市', '0', '', 'live', '0431-84679266 0431-84679366', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('566214724-428094798', '东环城路东方彩郡104号', '长春家居式客房', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/b79e1ed05e30b7a5_8.jpg', 'live', '0431-81918005', '宾馆酒店;招待所');
INSERT INTO item VALUES ('566269252-424981694', '平泉路4号', '长春圣泰快捷宾馆', '长春市', '0', '', 'live', '0431-85899988', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('602655348-428094780', '彩宇大街富奥D区西门(近省广电中心)', '红果园休闲旅馆', '长春市', '0', '', 'live', '0431-88643770', '宾馆酒店;招待所');
INSERT INTO item VALUES ('602698436-431964915', '吉林省长春市南关区大马路2199号', '浪漫满屋时尚宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/e350214cafbc6cc5_8.jpg', 'live', '0431-82904555 0431-85888818', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('602818996-431959051', '南关区亚泰大街1809号中环31栋', '大宅门', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/d9ca4593f17360a5_8.jpg', 'hotel', '0431-88747555 0431-88747666', '美食;东北菜');
INSERT INTO item VALUES ('604547620-424981891', '长春市绿园区和平大街12号(绿园小学北侧)', '长春万盛酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/2b5c9c2fa6f33730_8.jpg', 'live', '0431-86022888', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('691716645-432587787', '朝阳区前进大街399号', '吉航海港海鲜酒店(前进店)', '长春市', '80', 'http://img0.aibangjuxin.com/ipic/c67e2d7a3b57e8d5_8.jpg', 'live', '0431-85538686 0431-85555518', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('691723493-423498246', '东皇彩虹园', '长春东田美嘉时尚宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/6af7c6317e6c6745_8.jpg', 'live', '0431-89112266', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('691934149-432006215', '平阳街(解放大路口)', '小海丁(平阳街店)', '长春市', '48', 'http://img0.aibangjuxin.com/ipic/37ab41d3fccb012b_8.jpg', 'hotel', '0431-86686981 0431-89873342', '美食;其他美食');
INSERT INTO item VALUES ('692670901-425219923', '朝阳区硅谷大街429号经济干部管理学院东侧(近前进广场)', '双城杀猪菜馆', '长春市', '29', '', 'hotel', '0431-87777697 0431-85090177', '美食;农家菜');
INSERT INTO item VALUES ('693268597-423498430', '绿园区汽车产业开发区文明路53号(中国第一汽车集团公司旁)', '长春金樱桃商务宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/b2d3d6fb0a410d16_8.jpg', 'live', '0431-85980999 13214428089', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('693332181-433538413', '二道区东盛路与吉林大路交汇处(亚泰会馆对过)', '乡满楼', '长春市', '35', 'http://img0.aibangjuxin.com/ipic/92bcd88857806ba4_8.jpg', 'hotel', '0431-84941333 0431-84930777', '美食;川菜;其他川菜');
INSERT INTO item VALUES ('693365973-431999093', '前进大街2255号', '长春仟佰度时尚宾馆', '长春市', '0', '', 'live', '0431-85171705 0431-85701000', '宾馆酒店;三星级酒店');
INSERT INTO item VALUES ('693371333-432006318', '创业大街', '一汽宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/f4d4d8e45f6896e4_8.jpg', 'live', '0431-85900900', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('693379013-432643310', '南关区建和街1号', '韩一馆', '长春市', '28', 'http://img0.aibangjuxin.com/ipic/291f64dd7cc324d8_8.jpg', 'hotel', '0431-88894974 0431-88949746', '美食;韩国料理');
INSERT INTO item VALUES ('693381877-432586007', '南关区清明街450号(市中心医院后侧)', '金鼎轩酒楼(清明街店)', '长春市', '43', 'http://img0.aibangjuxin.com/ipic/5837f84582007f2f_8.jpg', 'hotel', '0431-82734777 0431-82713333', '美食;其他美食');
INSERT INTO item VALUES ('693383445-432005846', '朝阳区工农大路3626号(南湖游泳区对面)', '川老板(工农大路店)', '长春市', '30', 'http://img0.aibangjuxin.com/ipic/9e9f0c9df16247c5_8.jpg', 'hotel', '13844882199', '美食;川菜;其他川菜');
INSERT INTO item VALUES ('693453989-425219926', '宽城区胜利大街611号(胜利大街与长江路交汇处)', '吉林省尊雅商务酒店(长春)', '长春市', '0', '', 'live', '0431-81955999 13578968118', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('693496997-423498430', '宽城区凯旋路15号(凯旋路钢材市场旁)', '长春琉璃时光时尚会馆(凯旋路店)', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/abd8722ce43b358c_8.jpg', 'live', '0431-85888800 0431-85888811', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('693533653-432052739', '凯旋路2788号', '广源酒店', '长春市', '69', '', 'live', '0431-82939211', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('693538949-432643830', '经济开发区临河街(北海路口)', '曼谷村(临河街店)', '长春市', '83', '', 'live', '0431-84891666 0431-84891888', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('693539829-431999093', '长春市南关区民康路855号(与平阳街交汇处)', '长春壹克拉商务宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/a2ec47754e610466_8.jpg', 'live', '0431-81816666 0431-81905260', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('693541861-432054555', '桂林路立信街16-7号(近百汇街)', '贞爱的店(桂林路一店)', '长春市', '25', '', 'hotel', '0431-86761052', '美食;韩国料理');
INSERT INTO item VALUES ('693542261-431973600', '朝阳区工农大路1128号欧亚商都(近锦西路)', '欧罗巴(红旗街店)', '长春市', '41', 'http://img0.aibangjuxin.com/ipic/34cbf736389512d1_8.jpg', 'hotel', '0431-85641582 0431-85621690', '美食;西餐;其他西餐');
INSERT INTO item VALUES ('693562645-432000001', '朝阳区建设街920号(灶王爷旁)', '福轩大盘菜馆', '长春市', '49', '', 'hotel', '0431-85635333', '美食;东北菜');
INSERT INTO item VALUES ('693565733-433490917', '朝阳区同志街2222号(近同光路)', '三俞竹苑(同光路店)', '长春市', '69', '', 'hotel', '0431-88028129 0431-88028127', '美食;川菜;其他川菜');
INSERT INTO item VALUES ('693569301-423496528', '长春市绿园区正阳街2361号', '长春绿岛商务宾馆', '长春市', '0', '', 'live', '0431-89675566 0431-89675588', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('693574197-431968054', '朝阳区重庆路1233号卓展时代广场7楼(红旗街口)', '本土风日本料理(卓展店)', '长春市', '97', 'http://img0.aibangjuxin.com/ipic/f4dc8e5692ff3ec2_8.jpg', 'hotel', '0431-88486968', '美食;日本美食;日本料理');
INSERT INTO item VALUES ('693602277-432005885', '朝阳区东民主大街(近康平街)', '一块豆腐乡味私房菜馆', '长春市', '33', '', 'hotel', '0431-85698366', '美食;农家菜');
INSERT INTO item VALUES ('693604757-432001347', '朝阳区自由大路(东岭街口)', '鼎铭金牌火锅', '长春市', '57', 'http://img0.aibangjuxin.com/ipic/a391ba8b6df7758_8.jpg', 'hotel', '0431-89987555 0431-89988555', '美食;火锅;其他火锅');
INSERT INTO item VALUES ('693639445-425219923', '吉林省长春市宽城区光复路东七条12号', '百利宾馆', '长春市', '0', '', 'live', '0431-82899000 0431-82899188', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('693650357-432645820', '高新区硅谷大街1198号硅谷大厦(近吉林大学南区南门)', '同达绿色生态园', '长春市', '55', '', 'hotel', '0431-85177222', '美食;农家菜');
INSERT INTO item VALUES ('693652757-431999093', '朝阳区西康路29号(牡丹街长庆街间)', 'NEMO(西康路店)', '长春市', '44', 'http://img0.aibangjuxin.com/ipic/f8fd869d66303c66_8.jpg', 'hotel', '0431-85622291', '美食;西餐;其他西餐');
INSERT INTO item VALUES ('693655973-423498228', '朝阳区隆礼胡同718号(同志街口)', '巴蜀人家', '长春市', '36', 'http://img0.aibangjuxin.com/ipic/a59c2a248dfc3a84_8.jpg', 'hotel', '0431-85647779', '美食;川菜;其他川菜');
INSERT INTO item VALUES ('693657925-425108180', '人民大街7008号( 商业金融中心 近南湖大路)', '长春国盛大酒店(原新吉粮大酒店)', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/e7fd2bc65ab18e90_8.jpg', 'live', '0431-81788888 0431-81788887', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('696530149-432643392', '朝阳区锦水路与暖安街交汇(长春宾馆南门斜对面)', '福临石锅鱼(锦水路店)', '长春市', '48', 'http://img0.aibangjuxin.com/ipic/8f9348c180656092_8.jpg', 'hotel', '0431-88596111', '美食;川菜;其他川菜');
INSERT INTO item VALUES ('700399845-432006345', '朝阳区西康胡同699号(民生影视对面)', '能量馆', '长春市', '27', 'http://img0.aibangjuxin.com/ipic/30e75b2700a20186_8.jpg', 'hotel', '0431-85673655 0431-85676830', '美食;其他美食');
INSERT INTO item VALUES ('700410005-425219963', '南关区自由大路3415号(与东岭街交汇处)', '长春布拉格宾馆', '长春市', '0', '', 'live', '0431-89268999', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('702021205-432005975', '吉林省长春市绿园区创业大街35号', '圣峰大酒店', '长春市', '0', '', 'live', '0431-87608555 0431-88506888', '宾馆酒店;三星级酒店');
INSERT INTO item VALUES ('705093941-431965120', '朝阳区前进大街3号晨光花园底商(近越南餐厅)', '大秦瓦罐酒楼', '长春市', '56', 'http://img0.aibangjuxin.com/ipic/bd38160365351206_8.jpg', 'hotel', '0431-85540666', '美食;其他美食');
INSERT INTO item VALUES ('736873141-425219923', '红旗街616号万达商业广场1楼176-178室(省医院旁)', '麦当劳(万达广场店)', '长春市', '25', 'http://img0.aibangjuxin.com/ipic/70de457d330544af_8.jpg', 'hotel', '0431-81936966 0431-85634189', '美食;小吃快餐;快餐');
INSERT INTO item VALUES ('736886901-431962129', '朝阳区高新开发区前进大街2818号', '天都大酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/890d63e152aa44c4_8.jpg', 'live', '0431-85597000 0431-85597027', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('825679310-695418718', '朝阳区新华路18号长春宾馆(近建政街口)', '长春宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/51f1a4edca35637e_8.jpg', 'live', '0431-88793155 0431-88793888', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('827843790-695466799', '高新区高新技术产业开发区震宇街', '巴渔人家', '长春市', '35', 'http://img0.aibangjuxin.com/ipic/9f1f081702b74f00_8.jpg', 'hotel', '0431-86886334', '美食;川菜;其他川菜');
INSERT INTO item VALUES ('827871726-695423064', '南关区亚泰大街1138号新天地购物公园A座4楼(近家乐福)', '芊雨叶咖喱元素', '长春市', '43', 'http://img0.aibangjuxin.com/ipic/575969202793c318_8.jpg', 'hotel', '0431-88762098', '美食;东南亚菜;其他东南亚菜');
INSERT INTO item VALUES ('827875182-695421118', '绿园区新竹路88号(新竹路与青年路交汇处)', '长春杰西卡商务主题宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/32cce726d6796c0f_8.jpg', 'live', '0431-81920555 0431-81920505', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('828029790-695595474', '高新区高新技术产业开发区硅谷大街4000号', '超达大酒店', '长春市', '0', '', 'live', '0431-85542444 0431-85542477', '宾馆酒店;三星级酒店');
INSERT INTO item VALUES ('828047806-695418678', '建设街621号', '长春聚缘假日商务宾馆', '长春市', '0', '', 'live', '0431-88590333 0431-88593802', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('828059358-695424315', '朝阳区西安大路58号(康平街口)', '火间土日本料理店(西安大路店)', '长春市', '141', 'http://img0.aibangjuxin.com/ipic/3c50f9133fbbc5fc_8.jpg', 'hotel', '0431-88587990', '美食;日本美食;日本料理');
INSERT INTO item VALUES ('828080366-695466951', '长春大街964号(肯德基对面)', '供销宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/ddbf457f5ef38a1c_8.jpg', 'live', '0431-88931166 0431-88956348', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('828080590-695428849', '朝阳区红旗街616号万达商业广场3楼(省医院旁)', '壹品大厨铁板烧(红旗万达店)', '长春市', '69', 'http://img0.aibangjuxin.com/ipic/eef02ad67ad89900_8.jpg', 'hotel', '0431-81936990', '美食;烧烤');
INSERT INTO item VALUES ('828089886-695423206', '景阳大路2299号', '长春开元名都大酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/58fc25eb1fc5a8d7_8.jpg', 'live', '0431-87068850 0431-87068888', '宾馆酒店;五星级酒店');
INSERT INTO item VALUES ('828121726-695430756', '经济开发区临河街4065号(东南湖大路与临河街十字的西北角)', '长春萨菲尔宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/cdb4d3ecf6d52b0a_8.jpg', 'live', '0431-86013555', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('828144094-695427036', '朝阳区人民大街2059号国贸饭店26楼', '国贸饭店旋转餐厅', '长春市', '54', 'http://img0.aibangjuxin.com/ipic/69ccc292519281de_8.jpg', 'hotel', '0431-88487570', '美食;自助餐');
INSERT INTO item VALUES ('828227486-695417950', '二道区民丰大街(安乐路口)', '立鼎源品味餐厅(吉林大路店)', '长春市', '34', '', 'hotel', '0431-84883456', '美食;东北菜;粤菜;其他粤菜');
INSERT INTO item VALUES ('829299966-695466951', '南关区人民大街8811号长春豪园附近(近卫星广场)', '渝乡人家', '长春市', '30', 'http://img0.aibangjuxin.com/ipic/e14f33fe7c1ce7e2_8.jpg', 'hotel', '0431-85312567', '美食;川菜;其他川菜');
INSERT INTO item VALUES ('829304430-695419678', '吉林省长春市绿园区西安大路2435号', '长客宾馆', '长春市', '0', '', 'live', '0431-87905186 0431-87905188', '宾馆酒店;三星级酒店');
INSERT INTO item VALUES ('829412046-695427043', '人民大街与自由大路交汇', '长春美家视界酒店(人民大街店)', '长春市', '0', '', 'live', '', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('829420094-695433163', '普阳街27号', '圣佳快捷商务宾馆(长春绿园店)', '长春市', '0', '', 'live', '0431-82600111 0431-82600333', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('829422782-695421089', '朝阳区清华路801号(牡丹街口)', '唐人客栈', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/c598aba06d29a6d4_8.jpg', 'live', '0431-85675711 0431-85675722', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('829464334-695466851', '朝阳区解放大路2228号', '吉祥饭店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/998748dc85133b47_8.jpg', 'live', '0431-85589888', '宾馆酒店;四星级酒店');
INSERT INTO item VALUES ('829679262-695423150', '长春市绿园区景阳大路2299号', '长春锦江花园大酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/7b81ef8b65a79e5c_8.jpg', 'live', '0431-82099999 0431-82099888', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('830911038-695424315', '长春人民大街6969号', '长春吉林物贸宾馆', '长春市', '0', '', 'live', '0431-85599399 0431-86547166', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('830913966-695419687', '朝阳区崇智胡同与康平街交汇处', '顶胜肚皮鸡养生火锅', '长春市', '48', '', 'hotel', '0431-88895960', '美食;火锅;其他火锅');
INSERT INTO item VALUES ('830914366-695424315', '朝阳区前进大街1377号(省委党校南侧)', '前进大厦', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/d1f76f45e05c0a9e_8.jpg', 'live', '0431-85159888 0431-85159777', '宾馆酒店;四星级酒店');
INSERT INTO item VALUES ('830922782-695418819', '朝阳区湖西路1028号长影世纪村旁(近红旗街)', '鼎鼎香', '长春市', '101', 'http://img0.aibangjuxin.com/ipic/26e2b7f2aac0abe0_8.jpg', 'hotel', '0431-85653311 0431-85660303', '美食;火锅;其他火锅;东北菜');
INSERT INTO item VALUES ('830923454-695418756', '吉林省长春市南关区解放大路1431号', '泰玖商务酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/a492e3a0ca66c169_8.jpg', 'live', '0431-82719999 0431-85813999', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('830925918-695466951', '朝阳区工农大路1802号(近红旗街)', '北国日本料理(工农大路店)', '长春市', '201', 'http://img0.aibangjuxin.com/ipic/932a7d6f27c78bbb_8.jpg', 'hotel', '0431-85674668 0431-85674608', '美食;日本美食;日本料理');
INSERT INTO item VALUES ('830932478-695418756', '朝阳区湖西路1028号长影世纪村内(近红旗街)', '异乡人自助公寓', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/e8c546f32866e2b3_8.jpg', 'live', '0431-86573010 13843163198', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('830932654-695466951', '朝阳区解放大路2518号(近百汇街口)', '交通宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/28564838ef9ac088_8.jpg', 'live', '0431-85630009 0431-85093800', '宾馆酒店;三星级酒店');
INSERT INTO item VALUES ('831001774-695421596', '长春市汽车产业开发区锦程大街3131号(近顺意路)', '长春高尔夫商务酒店', '长春市', '0', '', 'live', '0431-85982226 0431-85757077', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('831070862-695424323', '吉林省长春市绿园区皓月大路2170号', '一休斋宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/db0ee2a03e0ac950_8.jpg', 'live', '0431-87676815', '宾馆酒店;招待所');
INSERT INTO item VALUES ('831081550-695427034', '净月开发区新城大街(近南环城路)', '久久宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/fdadb3ec0977987c_8.jpg', 'live', '0431-86171000 0431-86171222', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('831092398-695420173', '朝阳区桂林路(丰顺街口)', '沸腾鱼乡', '长春市', '32', 'http://img0.aibangjuxin.com/ipic/3b937ccf2ed07ba2_8.jpg', 'hotel', '0431-85660674 0431-87771771', '美食;川菜;其他川菜');
INSERT INTO item VALUES ('831318366-695423230', '宽城区新发路5号(新发路与清明街交口处)', '长春恒悦宾馆(新发路店)', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/a7508f00ae4c7e28_8.jpg', 'live', '0431-82746788', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('831344334-695430756', '南关区重庆路亚泰大酒店旁', '德克士(亚泰店)', '长春市', '19', 'http://img0.aibangjuxin.com/ipic/783b456a36024cbd_8.jpg', 'hotel', '0431-88982511 0431-88912511', '美食;小吃快餐;快餐');
INSERT INTO item VALUES ('831368446-695415103', '朝阳区同志街626号(近桂林路)', 'Bobo家族概念酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/146361d5942983ee_8.jpg', 'live', '0431-88577901 0431-88577999', '宾馆酒店;招待所');
INSERT INTO item VALUES ('971584487-703442782', '自由大路509号', '新约客音乐厨房', '长春市', '71', 'http://img0.aibangjuxin.com/ipic/dcf26b95107f3fdd_8.jpg', 'hotel', '0431-85665550', '美食;西餐;其他西餐');
INSERT INTO item VALUES ('971585335-704139991', '朝阳区同志街(近隆礼路)', '天天健康煮(同志街店)', '长春市', '47', 'http://img0.aibangjuxin.com/ipic/510643da86451a52_8.jpg', 'hotel', '0431-85193555', '美食;火锅;其他火锅');
INSERT INTO item VALUES ('971592343-703448146', '南关区清明街868号(护国般若寺对面)', '泰格DNA商务自助酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/ee9c3da0a3a13cb8_8.jpg', 'live', '0431-85855755 0431-85855999', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('971594631-703448146', '长春市南关区通钢国际大厦后侧', '海参养生酒楼(亚泰店)', '长春市', '348', 'http://img0.aibangjuxin.com/ipic/e1583c555dab894e_8.jpg', 'hotel', '0431-88662999', '美食;其他美食');
INSERT INTO item VALUES ('971688679-703443485', '朝阳区同光路616号(近同志街)', '嘉宾时尚酒店(同光路店)', '长春市', '0', '', 'live', '0431-85633999 0431-85646666', '宾馆酒店;经济型酒店');
INSERT INTO item VALUES ('971695367-704136699', '朝阳区红旗街616号万达商业广场3楼382-386室(省医院旁)', '巴贝拉意式休闲餐厅', '长春市', '48', 'http://img0.aibangjuxin.com/ipic/e13278189a139982_8.jpg', 'hotel', '0431-81936787', '美食;小吃快餐;其他小吃;西餐;其他西餐');
INSERT INTO item VALUES ('971842647-703362408', '朝阳区同光路(百汇街口)', '鲍家老八件菜馆(同光路店)', '长春市', '40', '', 'hotel', '0431-82233397 0431-86761285', '美食;东北菜');
INSERT INTO item VALUES ('971881079-703396835', '朝阳区长治路(长久家苑小区内)', '长春甜馨家庭宾馆(家庭旅馆)', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/ecf9830b0c8b0766_8.jpg', 'live', '15904317188', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('972489111-704053150', '二道区吉林大路1211号(近临河街)', '韩庄狗肉城(旗舰店)', '长春市', '53', 'http://img0.aibangjuxin.com/ipic/e50e94b45552a519_8.jpg', 'hotel', '0431-84977758', '美食;韩国料理');
INSERT INTO item VALUES ('972489655-703448146', '吉林省长春市朝阳区清华路95号', '清华宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/d3cde435b1e8c025_8.jpg', 'live', '0431-85596220 0431-85596668', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('972544903-703362418', '朝阳区新华路499号(近建和街)', '金安大饭店西餐厅', '长春市', '121', 'http://img0.aibangjuxin.com/ipic/4a83955f0afb3966_8.jpg', 'hotel', '0431-85838888', '美食;西餐;其他西餐');
INSERT INTO item VALUES ('976962071-703372555', '吉林省长春市南关区南环城路1988号', '诺亚明珠酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/6cb2972a97b64b08_8.jpg', 'live', '0431-85851888', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('981660199-703256666', '宽城区辽宁路1188号(西安大路口)', '大味道精菜坊', '长春市', '84', 'http://img0.aibangjuxin.com/ipic/bf671618ae6a58fb_8.jpg', 'hotel', '0431-88595577 0431-85050800', '美食;其他美食');
INSERT INTO item VALUES ('981666775-703253831', '长春市高新区修正路1425号', '长春阳光时尚宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/cf35595aa3d1b526_8.jpg', 'live', '0431-82766888 0431-85194622', '宾馆酒店;经济型酒店;招待所');
INSERT INTO item VALUES ('981669703-703362465', '长春市高新开发区前进大街2255号(沃尔玛超市斜对面)', '长春华龙新洲商务会馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/2dbd350fb1a34257_8.jpg', 'live', '0431-85169555', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('981671047-703448146', '德昌路7号(红旗街口)', '宏源金福自助烤肉城(红旗街店)', '长春市', '19', 'http://img0.aibangjuxin.com/ipic/d2c85afcb69f27e5_8.jpg', 'hotel', '0431-85946575 0431-88753227', '美食;烧烤');
INSERT INTO item VALUES ('983199671-704140508', '南湖大路2222号天骄大厦B座', '新东方菌锅坊(南湖大路店)', '长春市', '66', 'http://img0.aibangjuxin.com/ipic/1849606be21b6c09_8.jpg', 'hotel', '0431-85807878 0431-85216655', '美食;火锅;其他火锅');
INSERT INTO item VALUES ('983206727-703448146', '清明街73号(大庙后面)', '25小时假日酒店', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/971c61752a98094a_8.jpg', 'live', '0431-87071111', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('983303927-703362408', '吉林省长春市朝阳区西安大路2099号', '圣豪宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/5cc1186172060f21_8.jpg', 'live', '0431-86152222 0431-86159999', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('984827319-703256565', '海口路563号北方市场南门', '长春龙泰商务宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/5de6253a67885d5e_8.jpg', 'live', '0431-81071111', '宾馆酒店;其他宾馆酒店');
INSERT INTO item VALUES ('984921783-703361853', '二道区机场路3500号(机场收费站对面)', '长春龙嘉国际机场宾馆', '长春市', '0', 'http://img0.aibangjuxin.com/ipic/46b3d9477760c18e_8.jpg', 'live', '0431-88798000 0431-88798000-8209', '宾馆酒店;三星级酒店');
INSERT INTO item VALUES ('985031495-704053398', '宽城区一匡街2号(与亚泰大街交汇处)', '长春A派时尚商务宾馆', '长春市', '0', '', 'live', '0431-82992888', '宾馆酒店;其他宾馆酒店');

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
-- Table structure for `topitem`
-- ----------------------------
DROP TABLE IF EXISTS `topitem`;
CREATE TABLE `topitem` (
  `goodsid` varchar(255) NOT NULL,
  `goodsname` varchar(255) default NULL,
  `introduce` varchar(255) default NULL,
  `image` varchar(255) default NULL,
  `addr` varchar(255) default NULL,
  `istop` varchar(255) default NULL,
  `price` varchar(255) default NULL,
  `time` datetime default NULL,
  PRIMARY KEY  (`goodsid`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of topitem
-- ----------------------------
INSERT INTO topitem VALUES ('068971601X', 'Mustang: Wild Spirit of the West', 'null', 'http://ecx.images-amazon.com/images/I/41GK1DZnfgL._SL160_.jpg', 'http://www.amazon.com/Mustang-Wild-Spirit-Marguerite-Henry/dp/068971601X%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D068971601X', 'is', '$1.89', '2013-04-06 16:29:24');
INSERT INTO topitem VALUES ('0760338302', 'The Complete Book of Mustang: Every Model Since 1964-1/2 (Complete Book Series)', 'null', 'http://ecx.images-amazon.com/images/I/51qFqLDZoQL._SL160_.jpg', 'http://www.amazon.com/The-Complete-Book-Mustang-1964-1/dp/0760338302%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D0760338302', 'is', '$21.97', '2013-04-06 16:29:24');
INSERT INTO topitem VALUES ('0895864029', 'Mustang Restoration Handbook', 'null', 'http://ecx.images-amazon.com/images/I/51MuDv2IrxL._SL160_.jpg', 'http://www.amazon.com/Mustang-Restoration-Handbook-Don-Taylor/dp/0895864029%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D0895864029', 'is', '$12.63', '2013-04-06 16:29:24');
INSERT INTO topitem VALUES ('B000005HAP', 'Mustang!', 'null', 'http://ecx.images-amazon.com/images/I/51XF0c-Q8JL._SL160_.jpg', 'http://www.amazon.com/Mustang-Donald-Byrd/dp/B000005HAP%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB000005HAP', 'is', '$16.98', '2013-04-06 16:29:27');
INSERT INTO topitem VALUES ('B0000DEW80', 'Revell 1:48 P - 51D Mustang', 'Illustrated assembly instructions', 'http://ecx.images-amazon.com/images/I/516DiF2NsOL._SL160_.jpg', 'http://www.amazon.com/Revell-RMXS5241-48-51D-Mustang/dp/B0000DEW80%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB0000DEW80', 'is', '$11.53', '2013-04-06 16:29:24');
INSERT INTO topitem VALUES ('B000F5NFTS', 'Mustang Low Profile Projector Mount (MV-PROJSP-FLAT-B)', 'Quick disconnection for simple maintenance', 'null', 'http://www.amazon.com/Mustang-Profile-Projector-Mount-MV-PROJSP-FLAT-B/dp/B000F5NFTS%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB000F5NFTS', 'is', 'Too low to display', '2013-04-06 16:29:26');
INSERT INTO topitem VALUES ('B000HH6KFA', 'Maisto R/C 1:24 1967 Ford Mustang - Colors / Mhz May Vary', 'Requires two AA batteries for the vehicle and two AA batteries for the controller', 'http://ecx.images-amazon.com/images/I/412X1Vi5vNL._SL160_.jpg', 'http://www.amazon.com/Maisto-1967-Ford-Mustang-Colors/dp/B000HH6KFA%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB000HH6KFA', 'is', '$14.99', '2013-04-06 16:29:25');
INSERT INTO topitem VALUES ('B000JJO9MC', 'Mustang Low Profile Projector Mount (MV-PROJSP-FLAT-W)', 'Quick disconnection for simple maintenance', 'http://ecx.images-amazon.com/images/I/31MdfH-AlRL._SL160_.jpg', 'http://www.amazon.com/Mustang-Profile-Projector-Mount-MV-PROJSP-FLAT-W/dp/B000JJO9MC%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB000JJO9MC', 'is', '$42.68', '2013-04-06 16:29:26');
INSERT INTO topitem VALUES ('B000TGSMQ4', 'Nothing Moves Like a Mustang Sign', 'Sign Reads: Nothing Moves Like A Mustang', 'http://ecx.images-amazon.com/images/I/51iSWNQCl1L._SL160_.jpg', 'http://www.amazon.com/Nothing-Moves-Like-Mustang-Sign/dp/B000TGSMQ4%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB000TGSMQ4', 'is', '$8.95', '2013-04-06 16:29:25');
INSERT INTO topitem VALUES ('B000U96L54', 'Microsoft Flight Simulator X Acceleration Expansion', 'Sold Individually', 'http://ecx.images-amazon.com/images/I/51VUbfgGXpL._SL160_.jpg', 'http://www.amazon.com/Microsoft-Flight-Simulator-Acceleration-Expansion-Pc/dp/B000U96L54%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB000U96L54', 'is', '$15.42', '2013-04-06 16:29:32');
INSERT INTO topitem VALUES ('B0013IHOJS', 'Ford Mustang Parking Only Sign', 'Pre-drilled holes for ease of hanging', 'http://ecx.images-amazon.com/images/I/517k5YoosNL._SL160_.jpg', 'http://www.amazon.com/Ford-Mustang-Parking-Only-Sign/dp/B0013IHOJS%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB0013IHOJS', 'is', '$8.79', '2013-04-06 16:29:24');
INSERT INTO topitem VALUES ('B001P05MG6', 'Wireless Mouse - Mustang GT Blue with White Stripes', 'Suitable: Desktop/laptop PC or Mac with available USB Port.', 'http://ecx.images-amazon.com/images/I/41m9cUfDsOL._SL160_.jpg', 'http://www.amazon.com/Wireless-Mouse-Mustang-White-Stripes/dp/B001P05MG6%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB001P05MG6', 'is', '$34.98', '2013-04-06 16:29:26');
INSERT INTO topitem VALUES ('B0026CEDIU', 'Mustang Vixskin Vanilla', 'The slender Mustang dildo is ready to pleasure you vaginally or anally, with soft, plush Vixskin-textured silicone.', 'http://ecx.images-amazon.com/images/I/316DeKb8JLL._SL160_.jpg', 'http://www.amazon.com/Vixen-Creations-Mustang-Vixskin-Vanilla/dp/B0026CEDIU%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB0026CEDIU', 'is', '$78.69', '2013-04-06 16:29:29');
INSERT INTO topitem VALUES ('B0026CGD74', 'Mustang Vixskin Caramel', 'The slender Mustang dildo is ready to pleasure you vaginally or anally, with soft, plush Vixskin-textured silicone', 'http://ecx.images-amazon.com/images/I/3185AMDZXjL._SL160_.jpg', 'http://www.amazon.com/Vixen-Creations-Mustang-Vixskin-Caramel/dp/B0026CGD74%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB0026CGD74', 'is', '$79.17', '2013-04-06 16:29:29');
INSERT INTO topitem VALUES ('B00283MJDI', 'Garmin Bluechart G2 - HXAE005R - Phillippines - Java - Mariana Islands - MicroSD & SD', 'GARMIN BLUECHART G2 HXAE005R PHILLIPPINES - JAVA -', 'http://ecx.images-amazon.com/images/I/41NK37Jpv%2BL._SL160_.jpg', 'http://www.amazon.com/Garmin-Bluechart-G2-HXAE005R-Phillippines/dp/B00283MJDI%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB00283MJDI', 'is', '$131.13', '2013-04-06 15:54:24');
INSERT INTO topitem VALUES ('B002MAPSQM', 'SanDisk Sansa Clip+ 2 GB MP3 Player (Black)', 'Built-in clip for easy carrying', 'http://ecx.images-amazon.com/images/I/41yqlipUq4L._SL160_.jpg', 'http://www.amazon.com/SanDisk-Sansa-Clip-Player-Black/dp/B002MAPSQM%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB002MAPSQM', 'is', '$30.00', '2013-04-06 15:36:56');
INSERT INTO topitem VALUES ('B002MAPT7U', 'SanDisk Sansa Clip+ 4 GB MP3 Player (Black)', 'Built-in clip for easy carrying', 'http://ecx.images-amazon.com/images/I/41yqlipUq4L._SL160_.jpg', 'http://www.amazon.com/SanDisk-Sansa-Clip-Player-Black/dp/B002MAPT7U%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB002MAPT7U', 'is', '$29.99', '2013-04-06 15:36:55');
INSERT INTO topitem VALUES ('B002MZZSHG', 'P51D Mustang', 'null', 'http://ecx.images-amazon.com/images/I/51XyHHWIyGL._SL160_.jpg', 'http://www.amazon.com/P51D-Mustang-Pc/dp/B002MZZSHG%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB002MZZSHG', 'is', '$41.61', '2013-04-06 16:29:33');
INSERT INTO topitem VALUES ('B002ZAKGCU', 'Ford Mustang Brushed Stainless Steel Travel Mug', 'Capacity: 14 oz. Brushed finish.', 'http://ecx.images-amazon.com/images/I/31DLF3h49UL._SL160_.jpg', 'http://www.amazon.com/Ford-Mustang-Brushed-Stainless-Travel/dp/B002ZAKGCU%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB002ZAKGCU', 'is', '$18.95', '2013-04-06 16:29:27');
INSERT INTO topitem VALUES ('B0035P4C06', 'Coby MP620-4GBLK 4 GB Video MP3 Player with FM Radio (Black)', 'One-year limited warranty', 'http://ecx.images-amazon.com/images/I/41wHCX8jyuL._SL160_.jpg', 'http://www.amazon.com/Coby-MP620-4GBLK-Video-Player-Radio/dp/B0035P4C06%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB0035P4C06', 'is', '$12.85', '2013-04-06 15:36:56');
INSERT INTO topitem VALUES ('B0035PBHX6', 'Coby MP620-8GBLK 8 GB 1.8-Inch Video MP3 Player with FM Radio (Black)', 'Integrated rechargeable battery,Media Support: ?Integrated Flash', 'http://ecx.images-amazon.com/images/I/41Li70m0QbL._SL160_.jpg', 'http://www.amazon.com/Coby-MP620-8GBLK-1-8-Inch-Video-Player/dp/B0035PBHX6%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB0035PBHX6', 'is', '$17.05', '2013-04-06 15:36:55');
INSERT INTO topitem VALUES ('B003IWAEH6', '99-04 Ford Mustang V6 WHITE GLOW EL GAUGES', 'RIG-0116', 'http://ecx.images-amazon.com/images/I/511SbRlwCrL._SL160_.jpg', 'http://www.amazon.com/99-04-Ford-Mustang-WHITE-GAUGES/dp/B003IWAEH6%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB003IWAEH6', 'is', '$30.50', '2013-04-06 16:29:25');
INSERT INTO topitem VALUES ('B003RRTXYW', 'Rock Band 3 Wireless Fender Mustang PRO-Guitar Controller for Xbox 360', 'Use as MIDI Guitar Controller when not playing Rock Band (compatible with most MIDI sequencers)', 'http://ecx.images-amazon.com/images/I/51qrQEDqfTL._SL160_.jpg', 'http://www.amazon.com/Wireless-Mustang-PRO-Guitar-Controller-Xbox-360/dp/B003RRTXYW%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB003RRTXYW', 'is', '$59.99', '2013-04-06 16:29:31');
INSERT INTO topitem VALUES ('B003RRTYEQ', 'Rock Band 3 Wireless Fender Mustang PRO-Guitar Controller for Wii', 'Plays Rock Band 3 Guitar & Bass Parts', 'http://ecx.images-amazon.com/images/I/51KSmU%2BOCJL._SL160_.jpg', 'http://www.amazon.com/Wireless-Mustang-PRO-Guitar-Controller-Wii-Nintendo/dp/B003RRTYEQ%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB003RRTYEQ', 'is', '$33.48', '2013-04-06 16:29:31');
INSERT INTO topitem VALUES ('B003SM4K44', 'Revell 2010 Ford Mustang GT Coupe', 'Contains 117 pieces', 'http://ecx.images-amazon.com/images/I/41raJBLpgcL._SL160_.jpg', 'http://www.amazon.com/Revell-2010-Ford-Mustang-Coupe/dp/B003SM4K44%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB003SM4K44', 'is', '$17.27', '2013-04-06 16:29:25');
INSERT INTO topitem VALUES ('B003ZCB2E8', '(2) Mirror Decals \" OBJECTS IN MIRROR ARE LOSING\" for FORD GT 500 40 MUSTANG SHELBY SALEEN KR FUNNY DECAL GT MUSTANG SVT COBRA MACH 1 BULLITT MUSTANG ROUSH FOCUS FLEX FUSION PROBE Expedition Excursion F250 F350 F450 Taurus F150 Ranger Escort Explorer', '4\" decal', 'http://ecx.images-amazon.com/images/I/518tDCQ4DcL._SL160_.jpg', 'http://www.amazon.com/OBJECTS-MUSTANG-Expedition-Excursion-Explorer/dp/B003ZCB2E8%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB003ZCB2E8', 'is', '$4.89', '2013-04-06 16:29:26');
INSERT INTO topitem VALUES ('B0043XN64W', 'Buckle-Down Ford Mustang Black Seatbelt Belt', 'One size fits most.', 'http://ecx.images-amazon.com/images/I/31GH-PrqcpL._SL160_.jpg', 'http://www.amazon.com/Buckle-Down-Ford-Mustang-Black-Seatbelt/dp/B0043XN64W%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB0043XN64W', 'is', '$11.00', '2013-04-06 16:29:30');
INSERT INTO topitem VALUES ('B0047IITTK', 'BLUE MP3 Metal Mini Clip Player Supports 8GB Micro SD Card', 'Can Be Used As A USB Drive', 'http://ecx.images-amazon.com/images/I/11jFlrS2hzL._SL160_.jpg', 'http://www.amazon.com/BLUE-Metal-Player-Supports-Micro/dp/B0047IITTK%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB0047IITTK', 'is', '$1.99', '2013-04-06 15:36:55');
INSERT INTO topitem VALUES ('B004UDXRBW', 'CENGAGE Beginning Java SE 6 Game Programming Third Edition - 9781435458086', 'null', 'http://ecx.images-amazon.com/images/I/41dp7gkhOfL._SL160_.jpg', 'http://www.amazon.com/CENGAGE-Beginning-Programming-Third-Edition/dp/B004UDXRBW%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB004UDXRBW', 'is', '$26.63', '2013-04-06 15:54:24');
INSERT INTO topitem VALUES ('B0056BIX6Q', 'Siskiyou Sports Ford Mustang  Travel Mug,  14-Ounce', 'Hand wash only', 'http://ecx.images-amazon.com/images/I/41a5fgt02hL._SL160_.jpg', 'http://www.amazon.com/Siskiyou-Sports-Mustang-Travel-14-Ounce/dp/B0056BIX6Q%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB0056BIX6Q', 'is', '$18.99', '2013-04-06 16:29:26');
INSERT INTO topitem VALUES ('B005F0YOAW', 'Learning To Program in Java - Training DVD - Tutorial Video', 'Comes with Extensive Working Files', 'http://ecx.images-amazon.com/images/I/51OFmQgh42L._SL160_.jpg', 'http://www.amazon.com/Learning-To-Program-Java-Training/dp/B005F0YOAW%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB005F0YOAW', 'is', '$99.95', '2013-04-06 15:54:24');
INSERT INTO topitem VALUES ('B005FVNGRS', 'SanDisk Sansa Clip Zip 4 GB MP3 Player (Black)', 'AAC for DRM-free iTunes compatibility', 'http://ecx.images-amazon.com/images/I/31qedA%2BEF6L._SL160_.jpg', 'http://www.amazon.com/SanDisk-Sansa-Clip-Player-Black/dp/B005FVNGRS%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB005FVNGRS', 'is', '$37.40', '2013-04-06 15:36:55');
INSERT INTO topitem VALUES ('B005P12LP6', 'Ford Motor Company Mustang Logo Chrome Zippo Lighter', 'Authentic Windproof Lighter', 'http://ecx.images-amazon.com/images/I/51geDcOSmhL._SL160_.jpg', 'http://www.amazon.com/Company-Mustang-Chrome-Zippo-Lighter/dp/B005P12LP6%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB005P12LP6', 'is', '$29.45', '2013-04-06 16:29:28');
INSERT INTO topitem VALUES ('B005ZHS82K', 'Ford Mustang Pilsner Set', 'Package measures 6W x 10.5H inches', 'http://ecx.images-amazon.com/images/I/41gG7tqGDRL._SL160_.jpg', 'http://www.amazon.com/Ford-FRD-48702-Mustang-Pilsner-Set/dp/B005ZHS82K%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB005ZHS82K', 'is', '$22.99', '2013-04-06 16:44:25');
INSERT INTO topitem VALUES ('B0062EWL50', 'Mustang Bi-Fold Leather Wallet', 'Gift boxed', 'http://ecx.images-amazon.com/images/I/41BNy4-TA7L._SL160_.jpg', 'http://www.amazon.com/ronzelli-Mustang-Bi-Fold-Leather-Wallet/dp/B0062EWL50%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB0062EWL50', 'is', '$18.99', '2013-04-06 16:29:30');
INSERT INTO topitem VALUES ('B006603V4U', 'Mad Catz Rock  Band 3 PRO-Guitar Bundle ? Includes: Red Hot Chili Peppers Bonus Tracks, Full  Game, and Fender Mustang PRO-Guitar Controller for Xbox 360', 'All-new Wireless Fender Mustang PRO-Guitar Controller for Rock Band 3', 'http://ecx.images-amazon.com/images/I/411QHQucgpL._SL160_.jpg', 'http://www.amazon.com/Catz-Rock-Band-PRO-Guitar-Bundle-Includes/dp/B006603V4U%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB006603V4U', 'is', '$52.39', '2013-04-06 16:29:31');
INSERT INTO topitem VALUES ('B0067SLSHS', '1999-2008 Blue Ford Mustang Keyless Entry Remote Key Fob w/ Free DIY Programming Instructions & WWR Guide', 'null', 'http://ecx.images-amazon.com/images/I/31SGIpCGZYL._SL160_.jpg', 'http://www.amazon.com/1999-2008-Mustang-Keyless-Programming-Instructions/dp/B0067SLSHS%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB0067SLSHS', 'is', '$5.09', '2013-04-06 16:29:24');
INSERT INTO topitem VALUES ('B00681BE2S', '1999-2008 Ford Mustang Keyless Entry Remote Key Fob w/ Free DIY Programming Instructions and World Wide Remotes Guide', 'REMOTELY ACTIVATE PANIC ALARM & TRUNK RELEASE', 'http://ecx.images-amazon.com/images/I/41bL5VAnu9L._SL160_.jpg', 'http://www.amazon.com/1999-2008-Ford-Mustang-Programming-Instructions/dp/B00681BE2S%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB00681BE2S', 'is', '$2.78', '2013-04-06 16:29:24');
INSERT INTO topitem VALUES ('B0073W3WVM', 'The Stubby Antenna for Ford Mustang 1994-2010', 'Made in the USA', 'http://ecx.images-amazon.com/images/I/31AIc0AhBML._SL160_.jpg', 'http://www.amazon.com/Stubby-Antenna-Ford-Mustang-1994-2010/dp/B0073W3WVM%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB0073W3WVM', 'is', '$25.00', '2013-04-06 16:29:24');
INSERT INTO topitem VALUES ('B007KAWFQU', 'Classic Mustang Distressed Retro Vintage Tin Sign', 'ships quickly and safely in a protective envelope', 'http://ecx.images-amazon.com/images/I/51Ge7CC1zZL._SL160_.jpg', 'http://www.amazon.com/Classic-Mustang-Distressed-Retro-Vintage/dp/B007KAWFQU%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB007KAWFQU', 'is', '$4.95', '2013-04-06 16:29:25');
INSERT INTO topitem VALUES ('B007NLSE1Q', 'Fury Mustang Parisso I Double Edge Wide Hoof Pick with Wood Handle, 8.3-Inch', '440 Stainless Steel', 'http://ecx.images-amazon.com/images/I/31vnHSgIaNL._SL160_.jpg', 'http://www.amazon.com/Fury-Mustang-Parisso-Double-8-3-Inch/dp/B007NLSE1Q%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB007NLSE1Q', 'is', '$8.71', '2013-04-06 16:29:26');
INSERT INTO topitem VALUES ('B007RKG9CE', 'Doublju Mens Polo Short Sleeve T-shirt in 2 Style', 'Low iron if necessary', 'http://ecx.images-amazon.com/images/I/41GglTO1IWL._SL160_.jpg', 'http://www.amazon.com/Doublju-Short-Sleeve-T-shirt-Style/dp/B007RKG9CE%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB007RKG9CE', 'is', 'null', '2013-04-06 15:19:46');
INSERT INTO topitem VALUES ('B007RZ2748', 'Ford Mustang V8 No Bra, Warning decal, sticker', 'If you have any questions or conserns please contact us.', 'http://ecx.images-amazon.com/images/I/41ZonukpU%2BL._SL160_.jpg', 'http://www.amazon.com/Ford-Mustang-Warning-decal-sticker/dp/B007RZ2748%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB007RZ2748', 'is', '$5.49', '2013-04-06 16:29:24');
INSERT INTO topitem VALUES ('B007VGRY64', 'AGT Aluminum Silver Valve Caps Tire Cap Stem for Ford Mustang Wheels (Pack of 4)', 'Improve the look of your wheels while upgrading to air tight Aluminum', 'http://ecx.images-amazon.com/images/I/41NuFXvNUNL._SL160_.jpg', 'http://www.amazon.com/AGT-Aluminum-Silver-Mustang-Wheels/dp/B007VGRY64%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB007VGRY64', 'is', '$0.01', '2013-04-06 16:29:23');
INSERT INTO topitem VALUES ('B008JG7NNO', 'Learning To Program in Java [Download]', 'Easy to follow step-by-step lessons, ideal for all', 'http://ecx.images-amazon.com/images/I/51Czk2SS0xL._SL160_.jpg', 'http://www.amazon.com/Learning-To-Program-Java-Download/dp/B008JG7NNO%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB008JG7NNO', 'is', '$99.95', '2013-04-06 15:54:24');
INSERT INTO topitem VALUES ('B008NP0IDI', 'Ford Mustang Screenprinted Black Matte Travel Mug, Official Licensed', 'Brand new official product of Ford.', 'http://ecx.images-amazon.com/images/I/31UvRy4WWaL._SL160_.jpg', 'http://www.amazon.com/Ford-Mustang-Screenprinted-Official-Licensed/dp/B008NP0IDI%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB008NP0IDI', 'is', '$21.95', '2013-04-06 16:29:27');
INSERT INTO topitem VALUES ('B0093OFC16', 'Lets Try This Shit Again', 'null', 'http://ecx.images-amazon.com/images/I/51y2xTvCv2L._SL160_.jpg', 'http://www.amazon.com/Lets-Try-This-Shit-Again/dp/B0093OFC16%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB0093OFC16', 'is', '$13.18', '2013-04-06 16:29:27');
INSERT INTO topitem VALUES ('B009RHMMEO', 'Doublju Mens Zip up Hoddies With Long Sleeve Napping in 2 Styles', 'Low iron if necessary', 'http://ecx.images-amazon.com/images/I/41Vot07wRiL._SL160_.jpg', 'http://www.amazon.com/Doublju-Hoddies-Sleeve-Napping-Styles/dp/B009RHMMEO%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB009RHMMEO', 'is', 'null', '2013-04-06 15:19:46');
INSERT INTO topitem VALUES ('B009ZMY50K', 'Advanced Java Programming - Training DVD', 'Comes with Extensive Working Files', 'http://ecx.images-amazon.com/images/I/51XVUScO4VL._SL160_.jpg', 'http://www.amazon.com/Advanced-Java-Programming-Training-DVD/dp/B009ZMY50K%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB009ZMY50K', 'is', '$99.95', '2013-04-06 15:54:24');
INSERT INTO topitem VALUES ('B009ZMZ7AC', 'Discounted Java Programming Training Bundle - Beginners to Advanced', 'Comes with Extensive Working Files', 'http://ecx.images-amazon.com/images/I/51BAg6owieL._SL160_.jpg', 'http://www.amazon.com/Discounted-Java-Programming-Training-Bundle/dp/B009ZMZ7AC%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB009ZMZ7AC', 'is', '$149.95', '2013-04-06 15:54:24');
INSERT INTO topitem VALUES ('B00BAZLP0I', 'Lenovo 0B50442 LANDesk Management Suite - Maintenance ( 1 year ) - 1 license - Win', 'null', 'http://ecx.images-amazon.com/images/I/11ytga59zJL._SL160_.jpg', 'http://www.amazon.com/Lenovo-0B50442-LANDesk-Management-Suite/dp/B00BAZLP0I%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB00BAZLP0I', 'is', '$48.00', '2013-04-06 15:58:48');
INSERT INTO topitem VALUES ('B00BKG5ALC', 'WWII Pilot Training P-51 Mustang', 'null', 'http://ecx.images-amazon.com/images/I/41Jro9bBvwL._SL160_.jpg', 'http://www.amazon.com/WWII-Pilot-Training-P-51-Mustang/dp/B00BKG5ALC%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB00BKG5ALC', 'is', '$1.99', '2013-04-06 16:29:28');
INSERT INTO topitem VALUES ('B00BKG5HHO', 'WWII Pilot Training P-51 Mustang [HD]', 'null', 'http://ecx.images-amazon.com/images/I/51Q3fXbUzbL._SL160_.jpg', 'http://www.amazon.com/WWII-Pilot-Training-P-51-Mustang/dp/B00BKG5HHO%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB00BKG5HHO', 'is', '$2.99', '2013-04-06 16:29:28');
INSERT INTO topitem VALUES ('B00BPDDXK0', 'DCS P-51 Mustang', 'Fly online with built-in server browser that supports up to 32 players in both head-to-head and cooperative gameplay. Fly online with other DCS aircraft like the Black Shark and the A-10C Warthog.', 'http://ecx.images-amazon.com/images/I/51lzJVZgAEL._SL160_.jpg', 'http://www.amazon.com/DCS-P-51-Mustang-Pc/dp/B00BPDDXK0%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB00BPDDXK0', 'is', '$39.99', '2013-04-06 16:29:32');
INSERT INTO topitem VALUES ('B00BPSH0RW', 'Lenovo IdeaCentre K330B Desktop PC series Driver Recovery and Drivers Installation DVD Disk from The Spare People', 'Operating System is NOT included and the software does NOT restore the computer to its default factory settings.', 'http://ecx.images-amazon.com/images/I/51H%2BtV1khTL._SL160_.jpg', 'http://www.amazon.com/IdeaCentre-Installation-The-Spare-People/dp/B00BPSH0RW%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB00BPSH0RW', 'is', '$7.50', '2013-04-06 15:58:47');
INSERT INTO topitem VALUES ('B00BPSJO1C', 'Lenovo ThinkPad Edge E420s Notebook / Laptop PC series Driver Recovery and Drivers Installation DVD Disk from The Spare People', 'Operating System is NOT included and the software does NOT restore the computer to its default factory settings.', 'http://ecx.images-amazon.com/images/I/51H%2BtV1khTL._SL160_.jpg', 'http://www.amazon.com/ThinkPad-Installation-The-Spare-People/dp/B00BPSJO1C%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB00BPSJO1C', 'is', '$7.50', '2013-04-06 15:58:47');
INSERT INTO topitem VALUES ('B00BPSLGCC', 'Lenovo C325 All-In-One /Desktop PC series Driver Recovery and Drivers Installation DVD Disk from The Spare People', 'Operating System is NOT included and the software does NOT restore the computer to its default factory settings.', 'http://ecx.images-amazon.com/images/I/51H%2BtV1khTL._SL160_.jpg', 'http://www.amazon.com/All-In-One-Installation-The-Spare-People/dp/B00BPSLGCC%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB00BPSLGCC', 'is', '$7.50', '2013-04-06 15:58:47');
INSERT INTO topitem VALUES ('B00BPSMWFW', 'Lenovo ThinkPad X200 Tablet Notebook / Laptop PC series Driver Recovery and Drivers Installation DVD Disk from The Spare People', 'Operating System is NOT included and the software does NOT restore the computer to its default factory settings.', 'http://ecx.images-amazon.com/images/I/51H%2BtV1khTL._SL160_.jpg', 'http://www.amazon.com/ThinkPad-Installation-The-Spare-People/dp/B00BPSMWFW%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB00BPSMWFW', 'is', '$7.50', '2013-04-06 15:58:47');
INSERT INTO topitem VALUES ('B00BPSN5Q2', 'Lenovo ThinkPad X61 Tablet Notebook / Laptop PC series Driver Recovery and Drivers Installation DVD Disk from The Spare People', 'Operating System is NOT included and the software does NOT restore the computer to its default factory settings.', 'http://ecx.images-amazon.com/images/I/51H%2BtV1khTL._SL160_.jpg', 'http://www.amazon.com/ThinkPad-Installation-The-Spare-People/dp/B00BPSN5Q2%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB00BPSN5Q2', 'is', '$7.50', '2013-04-06 15:58:47');
INSERT INTO topitem VALUES ('B00C23C2UE', 'Speed Of Love', 'null', 'http://ecx.images-amazon.com/images/I/51JOaFrUezL._SL160_.jpg', 'http://www.amazon.com/Speed-Of-Love-Mustangs/dp/B00C23C2UE%3FSubscriptionId%3DAKIAJNWS3SR5VVQFO7FA%26tag%3Dyao184447555-23%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB00C23C2UE', 'is', '$13.98', '2013-04-06 16:29:27');

-- ----------------------------
-- Table structure for `uptop`
-- ----------------------------
DROP TABLE IF EXISTS `uptop`;
CREATE TABLE `uptop` (
  `BusinessID` varchar(255) character set gb2312 NOT NULL default '',
  `address` varchar(255) default NULL,
  `businessName` varchar(255) default NULL,
  `city` varchar(255) default NULL,
  `cost` varchar(255) default NULL,
  `img` varchar(255) default NULL,
  `islive` varchar(255) default NULL,
  `teleNum` varchar(255) default NULL,
  `type` varchar(255) default NULL,
  PRIMARY KEY  (`BusinessID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uptop
-- ----------------------------
INSERT INTO uptop VALUES ('1093184912-1495814141', '上城区延安南路58号', '加勒比海餐厅', '杭州市', '66', 'http://img0.aibangjuxin.com/ipic/af0a1fc8e11addf9_8.jpg', 'no', '0571-87803311 0571-87809900', '美食;自助餐;西餐;其他西餐');
INSERT INTO uptop VALUES ('1094302768-1497491316', '汉滨区金州南路67号', '莲花池饭庄', '安康市', '0', '', 'no', '0915-3214721 0915-3226792', '美食;其他美食');
INSERT INTO uptop VALUES ('1094822224-1494365909', '安康市江北大道78号', '安康泊君岸酒店', '安康市', '0', 'http://img0.aibangjuxin.com/ipic/1b8446c38d51bf19_8.jpg', 'is', '0915-2230789', '宾馆酒店;其他宾馆酒店');
INSERT INTO uptop VALUES ('1227120761-422163346', '邯郸市陵西北大街52号(近城南街)', '邯郸金伯爵快捷酒店', '邯郸市', '0', 'http://img0.aibangjuxin.com/ipic/86b50c3d13b76400_8.jpg', 'is', '0310-3229888', '宾馆酒店;其他宾馆酒店');
INSERT INTO uptop VALUES ('1229934761-414995032', '邯郸市邯山区陵园路34号(市公安局对面)', '邯郸千泓商务酒店', '邯郸市', '0', 'http://img0.aibangjuxin.com/ipic/9f9989f9b55a6702_8.jpg', 'is', '0310-2053333', '宾馆酒店;其他宾馆酒店');
INSERT INTO uptop VALUES ('151527609-419172915', '民主街西环路交叉口', '汉中广厦大酒店', '汉中市', '0', 'http://img0.aibangjuxin.com/ipic/42148b6f2ab358ba_8.jpg', 'is', '0916-2622666 0916-2608666', '宾馆酒店;其他宾馆酒店');
INSERT INTO uptop VALUES ('1523912067-1606206905', '汉滨区滨江大道2号(安康市城建局旁)', '安康晶海国际商务酒店', '安康市', '0', 'http://img0.aibangjuxin.com/ipic/b5c6683e2e570d0_8.jpg', 'is', '0915-3336000 0915-3336002', '宾馆酒店;其他宾馆酒店');
INSERT INTO uptop VALUES ('1524243651-1606207169', '西湖区马塍路6-1号(最高人民法院对面)', '外婆家(马塍路店)', '杭州市', '49', 'http://img0.aibangjuxin.com/ipic/fa8cce9e9d7a79dd_8.jpg', 'no', '0571-88051987', '江浙菜;美食;浙江菜');
INSERT INTO uptop VALUES ('1539490707-1606201464', '人民路126号', '邯郸丛台大酒店', '邯郸市', '0', 'http://img0.aibangjuxin.com/ipic/d2987d994dc09138_8.jpg', 'is', '0310-5800888 0310-5800999', '宾馆酒店;其他宾馆酒店');
INSERT INTO uptop VALUES ('157672463-421507075', '滨江区江南大道3786号', '杭州香溪铭家大酒店(滨江店)', '杭州市', '0', '', 'is', '0571-56683777 0571-87859588', '宾馆酒店;其他宾馆酒店');
INSERT INTO uptop VALUES ('1655290204-1205091908', '西湖区文一路298号', '肯德基(文一店)', '杭州市', '23', 'http://img0.aibangjuxin.com/ipic/71df427a3c064caa_8.jpg', 'no', '0571-88919961', '美食;小吃快餐;快餐');
INSERT INTO uptop VALUES ('1673381852-1204474145', '汉台区兴汉路', '堰坝鱼庄', '汉中市', '45', '', 'no', '0916-2228658', '美食;川菜;其他川菜');
INSERT INTO uptop VALUES ('1673753916-1205405124', '人民路金世纪商业广场楼下(三期一楼)', '必胜客', '邯郸市', '74', 'http://img0.aibangjuxin.com/ipic/b655eb01ed603ece_8.jpg', 'no', '0310-2035108', '美食;小吃快餐;西餐;其他西餐;快餐');
INSERT INTO uptop VALUES ('17584088-419891634', '太白路西段', '小洞天火锅城', '汉中市', '35', '', 'no', '0916-2624444', '美食;火锅;其他火锅');
INSERT INTO uptop VALUES ('17613688-420703318', '兴安东路9号', '重庆老鸭汤火锅', '安康市', '50', 'http://img0.aibangjuxin.com/ipic/94d82d188ab54273_8.jpg', 'no', '0915-3219918', '美食;其他美食');
INSERT INTO uptop VALUES ('1805518869-1269446084', '益乐路37号', '友缘有色酒店(益乐店)', '杭州市', '48', 'http://img0.aibangjuxin.com/ipic/a41b8beb95804374_8.jpg', 'is', '0571-88858177 0571-88858977', '宾馆酒店;其他宾馆酒店');
INSERT INTO uptop VALUES ('1805570661-943975165', '教工路2号', '金都宾馆(教工路店)', '杭州市', '0', 'http://img0.aibangjuxin.com/ipic/65dd32427dbb638d_8.jpg', 'is', '0571-88805888', '宾馆酒店;婚宴酒店;结婚;三星级酒店');
INSERT INTO uptop VALUES ('1806204533-1269534895', '汉滨区江北张岭水电城', '张岭麻辣烫', '安康市', '22', '', 'no', '', '美食;小吃快餐;其他小吃;火锅;其他火锅');
INSERT INTO uptop VALUES ('1816639765-1269446063', '金州路华龙商厦1层', '德克士炸鸡(华龙商厦店)', '安康市', '29', 'http://img0.aibangjuxin.com/ipic/1223086f712b2fbd_8.jpg', 'no', '0915-3215151', '小吃快餐;美食;快餐');
INSERT INTO uptop VALUES ('1817110693-944009682', '香溪路6号(永兆商场一楼)', '肯德基金州店', '安康市', '0', 'http://img0.aibangjuxin.com/ipic/e50a32e33804f083_8.jpg', 'no', '0915-3208796 0915-3217880', '小吃快餐;美食;其他小吃');
INSERT INTO uptop VALUES ('1952069190-406131734', '华冶二建招待所路西(复兴商贸城东北门外)', '金盆水煮鱼', '邯郸市', '25', '', 'no', '0310-3159000 0310-6227231', '美食;川菜;其他川菜');
INSERT INTO uptop VALUES ('1953113398-409608063', '和平路122号康德商场1楼', '麦当劳', '邯郸市', '27', 'http://img0.aibangjuxin.com/ipic/70de457d330544af_8.jpg', 'no', '0310-3054777', '美食;小吃快餐;快餐');
INSERT INTO uptop VALUES ('1957890006-408278508', '西湖区文一西路99号(省财经学院隔壁)', '杭州君临大酒店', '杭州市', '0', 'http://img0.aibangjuxin.com/ipic/b3baba550053d162_8.jpg', 'is', '0571-88098111 0571-88097333 13967100256', '宾馆酒店;四星级酒店;美食;江浙菜;浙江菜;商务服务;律师');
INSERT INTO uptop VALUES ('1957987750-408278318', '汉台区中学巷(近北大街)', '宁强麻辣鸡', '汉中市', '0', '', 'no', '', '美食;川菜;其他川菜');
INSERT INTO uptop VALUES ('2032062735-421433145', '合肥市宿州路撮造山巷内(步行街李鸿章故居后门正对面)(原山水宾馆)', '合肥天庭商务酒店(步行街店)', '合肥市', '0', 'http://img0.aibangjuxin.com/ipic/6321d88e993c4f60_8.jpg', 'is', '0551-63691999 0551-62205588', '宾馆酒店;其他宾馆酒店');
INSERT INTO uptop VALUES ('285592178-420505160', '邯郸市复兴路94号', '邯郸赵王宾馆', '邯郸市', '0', 'http://img0.aibangjuxin.com/ipic/aaf7636f55cb7c98_8.jpg', 'is', '0310-4049888 0310-4044666', '宾馆酒店;其他宾馆酒店');
INSERT INTO uptop VALUES ('286330530-420547830', '杭州市建国南路42号', '方湖假日酒店(河坊街店)', '杭州市', '0', '', 'is', '0571-87808688 0571-56062699', '宾馆酒店;其他宾馆酒店');
INSERT INTO uptop VALUES ('286974114-420540802', '潜山路370号2层', '大地招待所', '合肥市', '0', '', 'is', '0551-5375649', '宾馆酒店;招待所;');
INSERT INTO uptop VALUES ('435628907-443221417', '下城区龙游路52号', '新白鹿酒店', '杭州市', '38', 'http://img0.aibangjuxin.com/ipic/50a9bc8ed4f4bb8f_8.jpg', 'no', '0571-87922071', '美食;江浙菜;浙江菜');
INSERT INTO uptop VALUES ('559439380-432050667', '西关十字红楼', '三棵树健康火锅(西关店)', '汉中市', '41', '', 'no', '0916-2621234', '美食;火锅;其他火锅');
INSERT INTO uptop VALUES ('562312532-424981363', '中华大街万达商场', '肯德基(万达商场店)', '邯郸市', '28', 'http://img0.aibangjuxin.com/ipic/71df427a3c064caa_8.jpg', 'no', '0310-5612766', '美食;小吃快餐;快餐');
INSERT INTO uptop VALUES ('562323156-431964938', '合肥市金寨路161号(步瑞祺大厦)', '合肥天庭商务酒店(科大店)', '合肥市', '0', 'http://img0.aibangjuxin.com/ipic/a030dc7915b2577c_8.jpg', 'is', '0551-63692222 0551-63692888', '宾馆酒店;其他宾馆酒店');
INSERT INTO uptop VALUES ('602655652-431998728', '光明北大街12号', '太阳花酒店(邯郸店)', '邯郸市', '0', 'http://img0.aibangjuxin.com/ipic/b46f0708b0060d56_8.jpg', 'is', '0310-3168888', '宾馆酒店;其他宾馆酒店');
INSERT INTO uptop VALUES ('691726467-423325548', '蜀山区石台路华府骏苑21栋', '合肥市蜀山区华府旅馆', '合肥市', '0', 'http://img0.aibangjuxin.com/ipic/d1b23da9f08e1405_8.jpg', 'is', '0551-5770102 15256050577', '宾馆酒店;客栈;');
INSERT INTO uptop VALUES ('693246741-432054561', '庐阳区长江中路111号', '黄山大厦城市商务酒店', '合肥市', '0', 'http://img0.aibangjuxin.com/ipic/ad79ea562e7f5986_8.jpg', 'is', '0551-2220888', '宾馆酒店;三星级酒店');
INSERT INTO uptop VALUES ('693495413-431999015', '陕西省安康市汉滨区滨江大道3号', '明江国际酒店', '安康市', '0', 'http://img0.aibangjuxin.com/ipic/2601df0672ff3e2d_8.jpg', 'is', '0915-8188888 0915-8166707', '宾馆酒店;其他宾馆酒店');
INSERT INTO uptop VALUES ('693532547-425202845', '西湖区天目山西路331号金都雅苑02省道旁', '杭州阿婆家', '杭州市', '0', '', 'no', '0571-85855777', '美食;其他美食');
INSERT INTO uptop VALUES ('693542021-431964722', '汉台区 劳动东路33号( 近海星超市)', '汉中红叶大酒店(劳动路店)', '汉中市', '0', 'http://img0.aibangjuxin.com/ipic/36a90975fd688a0e_8.jpg', 'is', '0916-2383838 0916-2383838-282', '宾馆酒店;其他宾馆酒店');
INSERT INTO uptop VALUES ('693574213-433541691', '汉台区天汉大道999号万邦时代广场 ( 市中心 )', '汉中百悦国际酒店', '汉中市', '0', 'http://img0.aibangjuxin.com/ipic/ff59945d2fd6b346_8.jpg', 'is', '0916-2129999 0916-2161670', '宾馆酒店;其他宾馆酒店');
INSERT INTO uptop VALUES ('827875054-695419626', '兴汉路248号(近天王歌城)', '七星椒烧烤', '汉中市', '48', '', 'no', '0916-2233355 0916-2235042', '美食;烧烤');
INSERT INTO uptop VALUES ('828223918-695418825', '安康市汉滨区环城西路汉江三桥南(城西客运站旁)', '安康三桥商务酒店', '安康市', '0', 'http://img0.aibangjuxin.com/ipic/d35085c40892d7_8.jpg', 'is', '13772227693 0915-3801111', '宾馆酒店;其他宾馆酒店');
INSERT INTO uptop VALUES ('829465614-695595449', '汉台区兴汉东路', '汉中申鹏假日酒店', '汉中市', '0', 'http://img0.aibangjuxin.com/ipic/8cb6eb6a9e01683_8.jpg', 'is', '0916-2120000 0916-2121111', '宾馆酒店;其他宾馆酒店');
INSERT INTO uptop VALUES ('830920414-695423153', '汉台区天汉大道中段19号', '邮政大酒店', '汉中市', '0', 'http://img0.aibangjuxin.com/ipic/7c6ca3d0f447aceb_8.jpg', 'is', '0916-2118888 0916-2118889', '宾馆酒店;其他宾馆酒店');
INSERT INTO uptop VALUES ('977244487-703256506', '汉滨区解放路23号(华润万家超市对面)', '安康锦龙快捷酒店', '安康市', '0', 'http://img0.aibangjuxin.com/ipic/2a9c9f50243d7a92_8.jpg', 'is', '0915-3332666 13359155355', '宾馆酒店;其他宾馆酒店');
INSERT INTO uptop VALUES ('983304775-704130422', '人民路26号金山宾馆门口', '蜀正园', '邯郸市', '36', 'http://img0.aibangjuxin.com/ipic/511d24704de91d27_8.jpg', 'no', '0310-3205222 0310-3299255', '美食;火锅;其他火锅');

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
