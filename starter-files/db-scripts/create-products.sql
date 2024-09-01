------------------
-- Create schema
------------------

DROP SCHEMA IF EXISTS `helvete`;

CREATE SCHEMA `helvete`;
USE `helvete`;

------------------
-- Table `helvete`.`product_category`
------------------

CREATE TABLE IF NOT EXISTS `helvete`.`product_category` (
	`id` BIGINT(20) NOT NULL AUTO_INCREMENT,
	`category_name` VARCHAR(255) DEFAULT NULL,
	PRIMARY KEY (`id`)
)
ENGINE = InnoDB
AUTO_INCREMENT = 1;

------------------
-- Table `helvete`.`product`
------------------

CREATE TABLE IF NOT EXISTS `helvete`.`product` (
	`id` BIGINT(20) NOT NULL AUTO_INCREMENT,
	`sku` VARCHAR(255) DEFAULT NULL,
	`name` VARCHAR(255) DEFAULT NULL,
	`description` VARCHAR(255) DEFAULT NULL,
	`unit_price` DECIMAL(13,2) DEFAULT NULL,
	`image_url` VARCHAR(255) DEFAULT NULL,
	`active` BIT DEFAULT 1,
	`units_in_stock` INT(11) DEFAULT NULL,
	`date_created` DATETIME(6) DEFAULT NULL,
	`last_updated` DATETIME(6) DEFAULT NULL,
	`category_id` BIGINT(20) NOT NULL,
	PRIMARY KEY (`id`),
	KEY `fk_category` (`category_id`),
	CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
)
ENGINE = InnoDB
AUTO_INCREMENT = 1; 

------------------
-- Add sample data 
------------------

INSERT INTO product_category(category_name) VALUES ('CDs');

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('CD-1000', 'BandName1 - AlbumTitle1', 'Lorem ipsum dolor sit amet', 'assets/images/products/placeholder.png', 1, 100, 19.99, 1, NOW()); 

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('CD-1001', 'BandName2 - AlbumTitle2', 'Lorem ipsum dolor sit amet', 'assets/images/products/placeholder.png', 1, 100, 24.99, 1, NOW()); 

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('CD-1002', 'BandName3 - AlbumTitle3', 'Lorem ipsum dolor sit amet', 'assets/images/products/placeholder.png', 1, 100, 29.99, 1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('CD-1003', 'BandName4 - AlbumTitle4', 'Lorem ipsum dolor sit amet', 'assets/images/products/placeholder.png', 1, 100, 19.99, 1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('CD-1004', 'BandName5 - AlbumTitle5', 'Lorem ipsum dolor sit amet', 'assets/images/products/placeholder.png', 1, 100, 14.99, 1, NOW());


