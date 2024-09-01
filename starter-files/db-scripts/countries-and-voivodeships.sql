USE `helvete`;

SET foreign_key_checks = 0;

-- country

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
`id` smallint unsigned NOT NULL,
`code` varchar(2) DEFAULT NULL,
`name` varchar(255) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB;

INSERT INTO `country` VALUES
(1, 'PL', 'Polska');

-- voivodeship

DROP TABLE IF EXISTS `voivodeship`;

CREATE TABLE `voivodeship` (
`id` smallint unsigned NOT NULL AUTO_INCREMENT,
`name` nvarchar(255) DEFAULT NULL,
`country_id` smallint unsigned NOT NULL,
PRIMARY KEY (`id`),
KEY `fk_country` (`country_id`),
CONSTRAINT `fk_country` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

INSERT INTO `voivodeship` VALUES 
(1, 'dolnośląskie', 1),
(2, 'kujawsko-pomorskie', 1),
(3, 'lubelskie', 1),
(4, 'lubuskie', 1),
(5, 'łódzkie', 1),
(6, 'małopolskie', 1),
(7, 'mazowieckie', 1),
(8, 'opolskie', 1),
(9, 'podkarpackie', 1),
(10, 'podlaskie', 1),
(11, 'pomorskie', 1),
(12, 'śląskie', 1),
(13, 'świętokrzyskie', 1),
(14, 'warmińsko-mazurskie', 1),
(15, 'wielkopolskie', 1),
(16, 'zachodniopomorskie', 1);

SET foreign_key_checks = 1;