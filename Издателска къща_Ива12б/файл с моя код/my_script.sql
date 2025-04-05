/*CREATE DATABASE IF NOT EXISTS `publishing_house`;*/
USE `publishing_house`;

/*
CREATE TABLE IF NOT EXISTS `genres`(
`id` INT AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR(30) NOT NULL
)
*/
/*
CREATE TABLE IF NOT EXISTS `authors`(
`id` INT AUTO_INCREMENT PRIMARY KEY,
`first_name` VARCHAR(30) NOT NULL,
`last_name` VARCHAR(30) NOT NULL
)
*/
/*
CREATE TABLE IF NOT EXISTS `books`(
`id` INT AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR(50) NOT NULL,
`author_id` INT,
FOREIGN KEY(`author_id`) REFERENCES `authors`(`id`),
`book_price` DECIMAL(4,2) NOT NULL,
`genre_book_id` INT,
FOREIGN KEY(`genre_book_id`) REFERENCES `genres`(`id`)
)
*/
/*
CREATE TABLE IF NOT EXISTS `e-books`(
`id` INT AUTO_INCREMENT PRIMARY KEY,
`e_code` VARCHAR(10) NOT NULL UNIQUE,
CHECK (LENGTH(`e_code`)=10),
`name` VARCHAR(50) NOT NULL,
`author_id` INT,
FOREIGN KEY(`author_id`) REFERENCES `authors`(`id`),
`book_id` INT,
FOREIGN KEY(`book_id`) REFERENCES `books`(`id`),
`e_price` DECIMAL(4,2) NOT NULL,
`genre_ebook_id` INT,
FOREIGN KEY(`genre_ebook_id`) REFERENCES `genres`(`id`)
)
*/
/*
CREATE TABLE IF NOT EXISTS `editions`(
`id` INT AUTO_INCREMENT PRIMARY KEY,
`book_id` INT,
FOREIGN KEY(`book_id`) REFERENCES `books`(`id`),
`publishing_date` DATE NOT NULL
)
*/
/*
CREATE TABLE IF NOT EXISTS `clients`(
`id` INT AUTO_INCREMENT PRIMARY KEY,
`client_code` VARCHAR(10) NOT NULL UNIQUE,
CHECK (LENGTH(`client_code`)=10),
`name` VARCHAR(30) NOT NULL
)
*/
/*
CREATE TABLE IF NOT EXISTS `orders`(
`id` INT AUTO_INCREMENT PRIMARY KEY,
`book_id` INT,
FOREIGN KEY(`book_id`) REFERENCES `books`(`id`),
`edition_id` INT,
FOREIGN KEY(`edition_id`) REFERENCES `editions`(`id`),
`order_date` DATETIME NOT NULL,
`ordered_copies_count` INT NOT NULL,
`client_id` INT,
FOREIGN KEY(`client_id`) REFERENCES `clients`(`id`)
)
*/
/*
CREATE TABLE IF NOT EXISTS `editions_original`
AS
SELECT * FROM `editions`
*/
/*
insert into `editions`
SELECT 16, b.`id`, CONCAT('2020-0',SUBSTRING(b.`author_id`,1,1),'-1',SUBSTRING(b.`genre_book_id`,1,1))
FROM `books` b
WHERE b.`id`=6
*/
/*
insert into `editions`
SELECT 17, b.`id`, CONCAT('2020-0',SUBSTRING(b.`author_id`,1,1),'-1',SUBSTRING(b.`genre_book_id`,1,1))
FROM `books` b
WHERE b.`id`=7
*/
/*
insert into `editions`
SELECT 18, b.`id`, CONCAT('2020-0',SUBSTRING(b.`author_id`,1,1),'-1',SUBSTRING(b.`genre_book_id`,1,1))
FROM `books` b
WHERE b.`id`=8
*/
/*
insert into `editions`
SELECT 19, b.`id`, CONCAT('2020-0',SUBSTRING(b.`author_id`,1,1),'-1',SUBSTRING(b.`genre_book_id`,1,1))
FROM `books` b
WHERE b.`id`=9
*/
/*
insert into `editions`
SELECT 20, b.`id`, CONCAT('2020-0',SUBSTRING(b.`author_id`,1,1),'-1',SUBSTRING(b.`genre_book_id`,1,1))
FROM `books` b
WHERE b.`id`=10
*/
/*
CREATE TABLE IF NOT EXISTS `books_original`
AS
SELECT * FROM `books`
*/
/*
UPDATE `books`
SET `book_price`=`book_price`-((10/100)*`book_price`)
WHERE `id`mod 2 =0
*/
/*
UPDATE `books`
SET `book_price`=`book_price` + 0.50
WHERE `id`mod 3 =0
*/
/*
UPDATE `books`
SET `book_price`=`book_price`/2
WHERE `id`mod 5 =0
*/
/*
UPDATE `books`
SET `book_price`=`book_price` - 1.20
WHERE `id`mod 7 =0
*/
/*
CREATE VIEW `query1`
AS
SELECT o.`id` as 'order_id',o.`order_date`,o.`client_id`,c.`name` as 'client', (b.`book_price`*o.`ordered_copies_count`) AS 'sum',b.`name` as 'book'
FROM `orders` o
JOIN `clients` c ON c.`id`=o.`client_id`
JOIN `books` b ON b.`id`=o.`book_id`
ORDER BY o.`client_id` asc
*/
/*
CREATE VIEW `query2`
AS
SELECT a.`id` as 'author_id',a.`first_name`, a.`last_name`, b.`name` as 'book', g.`name` as 'genre'
FROM `authors` a
JOIN `books` b ON b.`author_id`=a.`id`
JOIN `genres` g ON g.`id`=b.`genre_book_id`
ORDER BY a.`first_name` desc, a.`last_name` desc,a.`id` desc
*/
/*
CREATE VIEW `query3`
AS
SELECT e.`id` as 'edition_id',e.`book_id`,e.`publishing_date` as 'edition_publishing_date', b.`book_price`
FROM `editions` e
JOIN `books` b ON b.`id`=e.`book_id`
ORDER BY b.`book_price` asc
limit 5
*/
/*
CREATE VIEW `query4`
AS
SELECT el.`id` as 'ebook_id',el.`e_code`,el.`name` as 'e-book',el.`author_id`,el.`book_id`,el.`e_price`,el.`genre_ebook_id`
FROM `e-books` el
LEFT OUTER JOIN `books` b ON b.`id`=el.`book_id`
LEFT OUTER JOIN `authors` a ON a.`id`=el.`author_id`
LEFT OUTER JOIN `genres` g ON g.`id`=el.`genre_ebook_id`
WHERE el.`book_id` IS NULL
ORDER BY el.`e_price` desc
*/
/*
CREATE VIEW `query5`
AS
SELECT c.`name` as 'client', o.`ordered_copies_count`, o.`order_date`
FROM `clients` c
JOIN `orders` o ON o.`client_id`=c.`id`
WHERE o.`ordered_copies_count`=(
SELECT MAX(`ordered_copies_count`) FROM `orders`
)
*/
/*
CREATE VIEW `query6`
AS
SELECT c.`name` as 'client', o.`ordered_copies_count`, o.`order_date`
FROM `clients` c
JOIN `orders` o ON o.`client_id`=c.`id`
WHERE o.`ordered_copies_count`=(
SELECT MIN(`ordered_copies_count`) FROM `orders`
)
*/
/*
CREATE VIEW `query7`
AS
SELECT b.`id` as 'book_id', b.`name` as 'book', COUNT(DISTINCT e.`id`) as 'editions_count'
FROM `books` b
JOIN `editions` e ON e.`book_id`=b.`id`
GROUP BY b.`id`
ORDER BY b.`name` desc
*/
/*
CREATE VIEW `query8`
AS
SELECT b.`id` as 'book_id', b.`name` as 'book', b.`book_price`,a.`id` as 'author_id', a.`first_name`, a.`last_name`
FROM `books` b
JOIN `authors` a ON a.`id`=b.`author_id`
JOIN `genres` g ON g.`id`=b.`genre_book_id`
WHERE g.`name`='romance'
ORDER BY a.`first_name` desc, b.`book_price` asc
*/
/*
CREATE VIEW `query9`
AS
SELECT e.`id` as 'edition_id', e.`book_id`, e.`publishing_date` as 'edition_publishing_date', CONCAT(a.`first_name`,' ',a.`last_name`) as 'author'
FROM `editions` e
JOIN `books` b ON b.`id`=e.`book_id`
JOIN `authors` a ON a.`id`=b.`author_id`
WHERE YEAR(e.`publishing_date`)>2020
ORDER BY e.`publishing_date` asc, e.`book_id` asc
*/
/*
CREATE TABLE IF NOT EXISTS `ebooks_copy`
AS
SELECT * FROM `e-books`
*/
/*
DELETE FROM `ebooks_copy` copy
WHERE copy.`book_id` IS NULL
*/