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
	`category_name` NVARCHAR(255) DEFAULT NULL,
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
-- Categories
------------------
INSERT INTO product_category(category_name) VALUES ('Płyty CD');
INSERT INTO product_category(category_name) VALUES ('Płyty winylowe');
INSERT INTO product_category(category_name) VALUES ('Koszulki');
INSERT INTO product_category(category_name) VALUES ('Akcesoria');

------------------
-- CDs
------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('CD-1000', 'BandName1 - AlbumTitle1', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/cds/cd-placeholder.png', 1, 100, 19.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('CD-1001', 'BandName2 - AlbumTitle2', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/cds/cd-placeholder.png', 1, 100, 19.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('CD-1002', 'BandName3 - AlbumTitle3', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/cds/cd-placeholder.png', 1, 100, 19.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('CD-1003', 'BandName4 - AlbumTitle4', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/cds/cd-placeholder.png', 1, 100, 19.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('CD-1004', 'BandName5 - AlbumTitle5', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/cds/cd-placeholder.png', 1, 100, 19.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('CD-1005', 'BandName6 - AlbumTitle6', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/cds/cd-placeholder.png', 1, 100, 19.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('CD-1006', 'BandName7 - AlbumTitle7', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/cds/cd-placeholder.png', 1, 100, 19.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('CD-1007', 'BandName8 - AlbumTitle8', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/cds/cd-placeholder.png', 1, 100, 19.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('CD-1008', 'BandName9 - AlbumTitle9', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/cds/cd-placeholder.png', 1, 100, 19.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('CD-1009', 'BandName10 - AlbumTitle10', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/cds/cd-placeholder.png', 1, 100, 19.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('CD-1010', 'BandName11 - AlbumTitle11', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/cds/cd-placeholder.png', 1, 100, 19.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('CD-1011', 'BandName12 - AlbumTitle12', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/cds/cd-placeholder.png', 1, 100, 19.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('CD-1012', 'BandName13 - AlbumTitle13', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/cds/cd-placeholder.png', 1, 100, 19.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('CD-1013', 'BandName14 - AlbumTitle14', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/cds/cd-placeholder.png', 1, 100, 19.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('CD-1014', 'BandName15 - AlbumTitle15', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/cds/cd-placeholder.png', 1, 100, 19.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('CD-1015', 'BandName16 - AlbumTitle16', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/cds/cd-placeholder.png', 1, 100, 19.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('CD-1016', 'BandName17 - AlbumTitle17', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/cds/cd-placeholder.png', 1, 100, 19.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('CD-1017', 'BandName18 - AlbumTitle18', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/cds/cd-placeholder.png', 1, 100, 19.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('CD-1018', 'BandName19 - AlbumTitle19', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/cds/cd-placeholder.png', 1, 100, 19.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('CD-1019', 'BandName20 - AlbumTitle20', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/cds/cd-placeholder.png', 1, 100, 19.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('CD-1020', 'BandName21 - AlbumTitle21', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/cds/cd-placeholder.png', 1, 100, 19.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('CD-1021', 'BandName22 - AlbumTitle22', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/cds/cd-placeholder.png', 1, 100, 19.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('CD-1022', 'BandName23 - AlbumTitle23', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/cds/cd-placeholder.png', 1, 100, 19.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('CD-1023', 'BandName24 - AlbumTitle24', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/cds/cd-placeholder.png', 1, 100, 19.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('CD-1024', 'BandName25 - AlbumTitle25', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/cds/cd-placeholder.png', 1, 100, 19.99, 1, NOW());

------------------
-- Vinyls
------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('VINYL-1000', 'BandName1 - AlbumTitle1', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/vinyls/vinyl-placeholder.png', 1, 100, 29.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('VINYL-1001', 'BandName2 - AlbumTitle2', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/vinyls/vinyl-placeholder.png', 1, 100, 29.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('VINYL-1002', 'BandName3 - AlbumTitle3', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/vinyls/vinyl-placeholder.png', 1, 100, 29.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('VINYL-1003', 'BandName4 - AlbumTitle4', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/vinyls/vinyl-placeholder.png', 1, 100, 29.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('VINYL-1004', 'BandName5 - AlbumTitle5', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/vinyls/vinyl-placeholder.png', 1, 100, 29.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('VINYL-1005', 'BandName6 - AlbumTitle6', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/vinyls/vinyl-placeholder.png', 1, 100, 29.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('VINYL-1006', 'BandName7 - AlbumTitle7', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/vinyls/vinyl-placeholder.png', 1, 100, 29.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('VINYL-1007', 'BandName8 - AlbumTitle8', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/vinyls/vinyl-placeholder.png', 1, 100, 29.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('VINYL-1008', 'BandName9 - AlbumTitle9', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/vinyls/vinyl-placeholder.png', 1, 100, 29.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('VINYL-1009', 'BandName10 - AlbumTitle10', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/vinyls/vinyl-placeholder.png', 1, 100, 29.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('VINYL-1010', 'BandName11 - AlbumTitle11', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/vinyls/vinyl-placeholder.png', 1, 100, 29.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('VINYL-1011', 'BandName12 - AlbumTitle12', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/vinyls/vinyl-placeholder.png', 1, 100, 29.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('VINYL-1012', 'BandName13 - AlbumTitle13', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/vinyls/vinyl-placeholder.png', 1, 100, 29.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('VINYL-1013', 'BandName14 - AlbumTitle14', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/vinyls/vinyl-placeholder.png', 1, 100, 29.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('VINYL-1014', 'BandName15 - AlbumTitle15', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/vinyls/vinyl-placeholder.png', 1, 100, 29.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('VINYL-1015', 'BandName16 - AlbumTitle16', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/vinyls/vinyl-placeholder.png', 1, 100, 29.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('VINYL-1016', 'BandName17 - AlbumTitle17', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/vinyls/vinyl-placeholder.png', 1, 100, 29.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('VINYL-1017', 'BandName18 - AlbumTitle18', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/vinyls/vinyl-placeholder.png', 1, 100, 29.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('VINYL-1018', 'BandName19 - AlbumTitle19', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/vinyls/vinyl-placeholder.png', 1, 100, 29.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('VINYL-1019', 'BandName20 - AlbumTitle20', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/vinyls/vinyl-placeholder.png', 1, 100, 29.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('VINYL-1020', 'BandName21 - AlbumTitle21', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/vinyls/vinyl-placeholder.png', 1, 100, 29.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('VINYL-1021', 'BandName22 - AlbumTitle22', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/vinyls/vinyl-placeholder.png', 1, 100, 29.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('VINYL-1022', 'BandName23 - AlbumTitle23', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/vinyls/vinyl-placeholder.png', 1, 100, 29.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('VINYL-1023', 'BandName24 - AlbumTitle24', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/vinyls/vinyl-placeholder.png', 1, 100, 29.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('VINYL-1024', 'BandName25 - AlbumTitle25', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/vinyls/vinyl-placeholder.png', 1, 100, 29.99, 2, NOW());

------------------
-- Tshirts
------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('TSHIRT-1000', 'T-Shirt1', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/tshirts/tshirt-placeholder.png', 1, 100, 39.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('TSHIRT-1001', 'T-Shirt2', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/tshirts/tshirt-placeholder.png', 1, 100, 39.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('TSHIRT-1002', 'T-Shirt3', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/tshirts/tshirt-placeholder.png', 1, 100, 39.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('TSHIRT-1003', 'T-Shirt4', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/tshirts/tshirt-placeholder.png', 1, 100, 39.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('TSHIRT-1004', 'T-Shirt5', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/tshirts/tshirt-placeholder.png', 1, 100, 39.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('TSHIRT-1005', 'T-Shirt6', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/tshirts/tshirt-placeholder.png', 1, 100, 39.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('TSHIRT-1006', 'T-Shirt7', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/tshirts/tshirt-placeholder.png', 1, 100, 39.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('TSHIRT-1007', 'T-Shirt8', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/tshirts/tshirt-placeholder.png', 1, 100, 39.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('TSHIRT-1008', 'T-Shirt9', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/tshirts/tshirt-placeholder.png', 1, 100, 39.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('TSHIRT-1009', 'T-Shirt10', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/tshirts/tshirt-placeholder.png', 1, 100, 39.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('TSHIRT-1010', 'T-Shirt11', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/tshirts/tshirt-placeholder.png', 1, 100, 39.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('TSHIRT-1011', 'T-Shirt12', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/tshirts/tshirt-placeholder.png', 1, 100, 39.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('TSHIRT-1012', 'T-Shirt13', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/tshirts/tshirt-placeholder.png', 1, 100, 39.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('TSHIRT-1013', 'T-Shirt14', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/tshirts/tshirt-placeholder.png', 1, 100, 39.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('TSHIRT-1014', 'T-Shirt15', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/tshirts/tshirt-placeholder.png', 1, 100, 39.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('TSHIRT-1015', 'T-Shirt16', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/tshirts/tshirt-placeholder.png', 1, 100, 39.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('TSHIRT-1016', 'T-Shirt17', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/tshirts/tshirt-placeholder.png', 1, 100, 39.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('TSHIRT-1017', 'T-Shirt18', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/tshirts/tshirt-placeholder.png', 1, 100, 39.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('TSHIRT-1018', 'T-Shirt19', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/tshirts/tshirt-placeholder.png', 1, 100, 39.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('TSHIRT-1019', 'T-Shirt20', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/tshirts/tshirt-placeholder.png', 1, 100, 39.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('TSHIRT-1020', 'T-Shirt21', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/tshirts/tshirt-placeholder.png', 1, 100, 39.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('TSHIRT-1021', 'T-Shirt22', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/tshirts/tshirt-placeholder.png', 1, 100, 39.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('TSHIRT-1022', 'T-Shirt23', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/tshirts/tshirt-placeholder.png', 1, 100, 39.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('TSHIRT-1023', 'T-Shirt24', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/tshirts/tshirt-placeholder.png', 1, 100, 39.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('TSHIRT-1024', 'T-Shirt25', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/tshirts/tshirt-placeholder.png', 1, 100, 39.99, 3, NOW());

------------------
-- Accessories
------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('ACC-1000', 'Accessory1', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/accessories/acc-placeholder.png', 1, 100, 9.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('ACC-1001', 'Accessory2', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/accessories/acc-placeholder.png', 1, 100, 9.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('ACC-1002', 'Accessory3', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/accessories/acc-placeholder.png', 1, 100, 9.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('ACC-1003', 'Accessory4', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/accessories/acc-placeholder.png', 1, 100, 9.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('ACC-1004', 'Accessory5', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/accessories/acc-placeholder.png', 1, 100, 9.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('ACC-1005', 'Accessory6', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/accessories/acc-placeholder.png', 1, 100, 9.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('ACC-1006', 'Accessory7', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/accessories/acc-placeholder.png', 1, 100, 9.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('ACC-1007', 'Accessory8', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/accessories/acc-placeholder.png', 1, 100, 9.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('ACC-1008', 'Accessory9', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/accessories/acc-placeholder.png', 1, 100, 9.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('ACC-1009', 'Accessory10', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/accessories/acc-placeholder.png', 1, 100, 9.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('ACC-1010', 'Accessory11', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/accessories/acc-placeholder.png', 1, 100, 9.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('ACC-1011', 'Accessory12', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/accessories/acc-placeholder.png', 1, 100, 9.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('ACC-1012', 'Accessory13', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/accessories/acc-placeholder.png', 1, 100, 9.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('ACC-1013', 'Accessory14', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/accessories/acc-placeholder.png', 1, 100, 9.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('ACC-1014', 'Accessory15', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/accessories/acc-placeholder.png', 1, 100, 9.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('ACC-1015', 'Accessory16', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/accessories/acc-placeholder.png', 1, 100, 9.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('ACC-1016', 'Accessory17', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/accessories/acc-placeholder.png', 1, 100, 9.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('ACC-1017', 'Accessory18', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/accessories/acc-placeholder.png', 1, 100, 9.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('ACC-1018', 'Accessory19', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/accessories/acc-placeholder.png', 1, 100, 9.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('ACC-1019', 'Accessory20', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/accessories/acc-placeholder.png', 1, 100, 9.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('ACC-1020', 'Accessory21', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/accessories/acc-placeholder.png', 1, 100, 9.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('ACC-1021', 'Accessory22', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/accessories/acc-placeholder.png', 1, 100, 9.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('ACC-1022', 'Accessory23', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/accessories/acc-placeholder.png', 1, 100, 9.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('ACC-1023', 'Accessory24', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/accessories/acc-placeholder.png', 1, 100, 9.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('ACC-1024', 'Accessory25', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam doloremque dignissimos recusandae eius id sit quo assumenda itaque eos? Doloribus.', 'assets/images/products/accessories/acc-placeholder.png', 1, 100, 9.99, 4, NOW());

