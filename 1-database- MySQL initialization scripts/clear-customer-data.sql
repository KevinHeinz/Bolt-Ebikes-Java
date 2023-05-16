--  Clear out (truncate) customer data from MySQL db --  

USE `bolt-ebikes-site`;

SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE customer;
TRUNCATE orders;
TRUNCATE order_item;
TRUNCATE address;

SET FOREIGN_KEY_CHECKS = 1;