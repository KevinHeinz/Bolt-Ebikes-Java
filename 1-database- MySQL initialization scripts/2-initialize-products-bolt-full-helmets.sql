-- this initializer script creates or replaces MySQL db schema bolt-ebikes-site and products --


DROP SCHEMA IF EXISTS `bolt-ebikes-site`;

CREATE SCHEMA `bolt-ebikes-site`;
USE `bolt-ebikes-site` ;


-- Table `bolt-ebikes-site`.`product_category` 

CREATE TABLE IF NOT EXISTS `bolt-ebikes-site`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;


-- Table `bolt-ebikes-site`.`product` 

CREATE TABLE IF NOT EXISTS `bolt-ebikes-site`.`product` (
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
ENGINE=InnoDB
AUTO_INCREMENT = 1;


-- Categories --

INSERT INTO product_category(category_name) VALUES ('ebikes');
INSERT INTO product_category(category_name) VALUES ('helmets');
INSERT INTO product_category(category_name) VALUES ('accessories');


-- Ebikes --

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created) 
VALUES ('Ebike-22a', 'Flagship Ebike', 'The best ebike for under $1500, assembled and sold in the USA.', 'assets/images/products/ebikes/flagship-ebike.png', 1, 10, 1489.00, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('Ebike-21b', 'Foldable Ebike', 'For people who want to store their ebike in a tight space.', 'assets/images/products/ebikes/foldable-ebike.png', 1 , 10, 1089.00, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created) 
VALUES ('Ebike-22b', 'Monster Ebike', 'For people who want maximum ebike speed. DANGER, Will Robinson. DANGER!', 'assets/images/products/ebikes/monster-ebike.png', 1, 10, 2189.00, 1, NOW());


-- Helmets --

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('Helmet-22a', 'Unisex Helmet, Black', 'Features the highest safety rating in US.', 'assets/images/products/helmets/black-helmet.png', 1, 100, 34.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('Helmet-22b', 'Unisex Helmet, White', 'Features the highest safety rating in US.', 'assets/images/products/helmets/white-helmet.png', 1, 100, 34.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('Helmet-22c', 'Unisex Helmet, Vented Black', 'Features the highest safety rating in US.', 'assets/images/products/helmets/vented-black-helmet.png', 1, 100, 34.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('Helmet-22d', 'Unisex Helmet, Vented White', 'Features the highest safety rating in US.', 'assets/images/products/helmets/vented-white-helmet.png', 1, 100, 34.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('Helmet-22e', 'Unisex Helmet, Vented Dark Blue', 'Features the highest safety rating in US.', 'assets/images/products/helmets/vented-darkblue-helmet.png', 1, 100, 34.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('Helmet-22f', 'Unisex Helmet, Vented Dark Green', 'Features the highest safety rating in US.', 'assets/images/products/helmets/vented-darkgreen-helmet.png', 1, 100, 34.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('Helmet-22g', 'Unisex Helmet, Vented Maroon Red', 'Features the highest safety rating in US.', 'assets/images/products/helmets/vented-maroonred-helmet.png', 1, 100, 34.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('Helmet-22h', 'Unisex Helmet, Vented Olive Green', 'Features the highest safety rating in US.', 'assets/images/products/helmets/vented-olivegreen-helmet.png', 1, 100, 34.99, 2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('Helmet-22i', 'Unisex Helmet, Motorcycle-style Black Gloss', 'Features the highest safety rating in US.', 'assets/images/products/helmets/motorcycle-blackgloss-helmet.png', 1, 100, 34.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('Helmet-22j', 'Unisex Helmet, Camera Mount Black', 'Features the highest safety rating in US.', 'assets/images/products/helmets/camera-mount-black-helmet.png', 1, 100, 34.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('Helmet-22k', 'Unisex Helmet, Motorcycle-style Black Matte', 'Features the highest safety rating in US.', 'assets/images/products/helmets/motorcycle-blackmatte-helmet.png', 1, 100, 34.99, 2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('Helmet-22l', 'Unisex Helmet, Baseball Cap-Style Red', 'Features the highest safety rating in US.', 'assets/images/products/helmets/baseball-red-helmet.png', 1, 100, 34.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('Helmet-22m', 'Unisex Helmet, Baseball Cap-Style Blue', 'Features the highest safety rating in US.', 'assets/images/products/helmets/baseball-blue-helmet.png', 1, 100, 34.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('Helmet-22n', 'Unisex Helmet, Baseball Cap-Style Gray', 'Features the highest safety rating in US.', 'assets/images/products/helmets/baseball-gray-helmet.png', 1, 100, 34.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('Helmet-22o', 'Unisex Helmet, Baseball Cap-Style Black', 'Features the highest safety rating in US.', 'assets/images/products/helmets/baseball-black-helmet.png', 1, 100, 34.99, 2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('Helmet-22p', 'Unisex Helmet, Olive Green', 'Features the highest safety rating in US.', 'assets/images/products/helmets/olivegreen-helmet.png', 1, 100, 34.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('Helmet-22q', 'Unisex Helmet, Eggshell', 'Features the highest safety rating in US.', 'assets/images/products/helmets/eggshell-helmet.png', 1, 100, 34.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('Helmet-22r', 'Unisex Helmet, Light Gray', 'Features the highest safety rating in US.', 'assets/images/products/helmets/lightgray-helmet.png', 1, 100, 34.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('Helmet-22s', 'Unisex Helmet, Blue Matte', 'Features the highest safety rating in US.', 'assets/images/products/helmets/bluematte-helmet.png', 1, 100, 34.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('Helmet-22t', 'Unisex Helmet, Bright White', 'Features the highest safety rating in US.', 'assets/images/products/helmets/brightwhite-helmet.png', 1, 100, 34.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('Helmet-22u', 'Unisex Helmet, Orange', 'Features the highest safety rating in US.', 'assets/images/products/helmets/orange-helmet.png', 1, 100, 34.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('Helmet-22v', 'Unisex Helmet, Wood Finish', 'Features the highest safety rating in US.', 'assets/images/products/helmets/woodfinish-helmet.png', 1, 100, 34.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('Helmet-22w', 'Unisex Helmet, Spade Dark Blue', 'Features the highest safety rating in US.', 'assets/images/products/helmets/spade-blue-helmet.png', 1, 100, 34.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('Helmet-22x', 'Unisex Helmet, Spade Gray', 'Features the highest safety rating in US.', 'assets/images/products/helmets/spade-gray-helmet.png', 1, 100, 34.99, 2, NOW());


-- Accessories --

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('Speaker-22a', 'Speaker with bluetooth', 'Safely ride while listening to your favorite tunes.', 'assets/images/products/accessories/speakers/black-speaker.png', 1, 100, 24.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('Speaker-22b', 'Speaker with bluetooth', 'Safely ride while listening to your favorite tunes.', 'assets/images/products/accessories/speakers/gray-speaker.png', 1, 100, 24.99, 3, NOW());
