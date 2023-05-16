/* this .sql script initializes my website db user*/

CREATE USER 'bolt-ebikes'@'localhost' IDENTIFIED BY 'bolt-ebikes';
GRANT ALL PRIVILEGES ON * . * TO 'bolt-ebikes'@'localhost';