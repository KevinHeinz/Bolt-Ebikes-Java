--                   Initialize delivery address states for North America --  

USE `bolt-ebikes-site`;

SET foreign_key_checks = 0;

--                                      create `country` table            -- 

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `id` smallint unsigned NOT NULL,
  `code` varchar(2) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

--                                      insert `country` values           --

INSERT INTO `country` VALUES 
(1,'US','United States'),
(2,'CA','Canada'),
(3,'MX','Mexico');

--                                        create `state` table            --

DROP TABLE IF EXISTS `state`;

CREATE TABLE `state` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `country_id` smallint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_country` (`country_id`),
  CONSTRAINT `fk_country` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

--                                        insert `state` values           --

INSERT INTO `state` VALUES 
(1,'Alabama',1),
(2,'Alaska',1),
(3,'Arizona',1),
(4,'Arkansas',1),
(5,'California',1),
(6,'Colorado',1),
(7,'Connecticut',1),
(8,'Delaware',1),
(9,'District Of Columbia',1),
(10,'Florida',1),
(11,'Georgia',1),
(12,'Hawaii',1),
(13,'Idaho',1),
(14,'Illinois',1),
(15,'Indiana',1),
(16,'Iowa',1),
(17,'Kansas',1),
(18,'Kentucky',1),
(19,'Louisiana',1),
(20,'Maine',1),
(21,'Maryland',1),
(22,'Massachusetts',1),
(23,'Michigan',1),
(24,'Minnesota',1),
(25,'Mississippi',1),
(26,'Missouri',1),
(27,'Montana',1),
(28,'Nebraska',1),
(29,'Nevada',1),
(30,'New Hampshire',1),
(31,'New Jersey',1),
(32,'New Mexico',1),
(33,'New York',1),
(34,'North Carolina',1),
(35,'North Dakota',1),
(36,'Ohio',1),
(37,'Oklahoma',1),
(38,'Oregon',1),
(39,'Pennsylvania',1),
(40,'Rhode Island',1),
(41,'South Carolina',1),
(42,'South Dakota',1),
(43,'Tennessee',1),
(44,'Texas',1),
(45,'Utah',1),
(46,'Vermont',1),
(47,'Virginia',1),
(48,'Washington',1),
(49,'West Virginia',1),
(50,'Wisconsin',1),
(51,'Wyoming',1),
(52,'Alberta',2),
(53,'British Columbia',2),
(54,'Manitoba',2),
(55,'New Brunswick',2),
(56,'Newfoundland and Labrador',2),
(57,'Northwest Territories',2),
(58,'Nova Scotia',2),
(59,'Nunavut',2),
(60,'Ontario',2),
(61,'Prince Edward Island',2),
(62,'Quebec',2),
(63,'Saskatchewan',2),
(64,'Yukon',2),
(65,'Aguascalientes',3),
(66,'Baja California',3),
(67,'Baja California Sur',3),
(68,'Campeche',3),
(69,'Chiapas',3),
(70,'Chihuahua',3),
(71,'Coahuila',3),
(72,'Colima',3),
(73,'Durango',3),
(74,'Guanajuato',3),
(75,'Guerrero',3),
(76,'Hidalgo',3),
(77,'Jalisco',3),
(78,'Mexico',3),
(79,'Mexico City',3),
(80,'Michoacan',3),
(81,'Morelos',3),
(82,'Nayarit',3),
(83,'Nuevo Leon',3),
(84,'Oaxaca',3),
(85,'Puebla',3),
(86,'Queretaro',3),
(87,'Quintana Roo',3),
(88,'San Luis Potosi',3),
(89,'Sinaloa',3),
(91,'Sonora',3),
(92,'Tabasco',3),
(93,'Tamaulipas',3),
(94,'Tlaxcala',3),
(95,'Veracruz',3),
(96,'Yucatan',3),
(97,'Zacatecas',3);

SET foreign_key_checks = 1;