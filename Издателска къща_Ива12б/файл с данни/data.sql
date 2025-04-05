USE `publishing_house`;
/*
INSERT INTO `genres`( `name`) VALUES 
( 'literaty fiction'),
( 'mystery'),
( 'thriller'),
( 'horror'),
( 'historical'),
( 'romance'),
( 'western'),
( 'bildungsroman'),
( 'speculative fiction'),
( 'science fiction'),
( 'fantasy'),
( 'dystopian'),
( 'magical realism'),
( 'realist literature'),
( 'tragedy')
*/
/*
INSERT INTO `authors`( `first_name`,`last_name`) VALUES 
( 'Vivian','Marcus'),
( 'Amelia','Gilbert'),
( 'Thomas','Peterson'),
( 'Hariet','Bronos'),
( 'Garet','Chezinski'),
( 'Julliet','Glorian'),
( 'Candice','Lever'),
( 'Bernand','Stone'),
( 'Klaudian','Wecker'),
( 'Lorete','Perien'),
( 'Daniel','Ukev'),
( 'Reneta','Simans'),
( 'Olive','Reyns'),
( 'Ben','Selester'),
( 'Timothy','Hilston')
*/
/*
INSERT INTO `books`( `name`,`author_id`,`book_price`,`genre_book_id`) VALUES
( 'The latest hour',3,15.60,4),
( 'Love and flames',11,20.00,6),
( 'Again and again',7,17.80,2),
( 'To love a loser',14,12.50,6),
( 'Give me explanation',5,21.10,15),
( 'The kingdom of dragons',3,16.20,11),
( 'Someday somewhere',14,17.10,5),
( 'Friendship for a lifetime',14,21.00,8),
( 'What is going on',10,20.20,3),
( 'Remember',7,19.90,3),
( 'The West',3,21.90,7),
( 'Margaret and Caleb',2,15.50,6),
( 'Hurry up',10,23.00,4),
( 'The heart of the robot',8,18.80,10),
( 'Look at me',9,19.30,8)
*/
/*
INSERT INTO `e-books`( `e_code`,`name`,`author_id`,`book_id`,`e_price`,`genre_ebook_id`) VALUES
('G18U920765','Love and flames(e-book)',11,2,12.50,6);
INSERT INTO `e-books`( `e_code`,`name`,`author_id`,`book_id`,`e_price`,`genre_ebook_id`) VALUES
('L8907PP531','What is going on(e-book)',10,9,15.00,3);
INSERT INTO `e-books`( `e_code`,`name`,`author_id`,`book_id`,`e_price`,`genre_ebook_id`) VALUES
('9KLU928711','The West(e-book)',3,11,13.50,7);
INSERT INTO `e-books`( `e_code`,`name`,`author_id` ,`e_price`,`genre_ebook_id`) VALUES
('PO68712GHJ','The huge wave(e-book)',7,7.90,10);
INSERT INTO `e-books`( `e_code`,`name`,`author_id`,`book_id`,`e_price`,`genre_ebook_id`) VALUES
('UV739023HH','Margaret and Caleb(e-book)',2,12,10.00,6);
INSERT INTO `e-books`( `e_code`,`name`,`author_id` ,`e_price`,`genre_ebook_id`) VALUES
('UGY372278I','Flashback(e-book)',13,9.50,15);
INSERT INTO `e-books`( `e_code`,`name`,`author_id`,`book_id`,`e_price`,`genre_ebook_id`) VALUES
('YUT298683W','Someday somewhere(e-book)',14,7,12.00,5);
INSERT INTO `e-books`( `e_code`,`name`,`author_id` ,`e_price`,`genre_ebook_id`) VALUES
('O939027GTF','Heavy Crown(e-book)',15,18.00,5);
INSERT INTO `e-books`( `e_code`,`name`,`author_id`,`book_id`,`e_price`,`genre_ebook_id`) VALUES
('JHU82253FF','The kingdom of dragons(e-book)',3,6,8.50,11);
INSERT INTO `e-books`( `e_code`,`name`,`author_id`,`book_id`,`e_price`,`genre_ebook_id`) VALUES
('T87372JIU6','The latest hour(e-book)',3,1,10.40,4);
INSERT INTO `e-books`( `e_code`,`name`,`author_id`,`book_id`,`e_price`,`genre_ebook_id`) VALUES
('HUKIU32667','To love a loser(e-book)',14,4,9.90,6);
INSERT INTO `e-books`( `e_code`,`name`,`author_id`,`book_id`,`e_price`,`genre_ebook_id`) VALUES
('BH839276GH','Remember(e-book)',7,10,17.20,3);
INSERT INTO `e-books`( `e_code`,`name`,`author_id` ,`e_price`,`genre_ebook_id`) VALUES
('IJO726154G','The best present(e-book)',5,13.10,11);
INSERT INTO `e-books`( `e_code`,`name`,`author_id` ,`e_price`,`genre_ebook_id`) VALUES
('JJIHY37752','Wish(e-book)',1,10.50,2);
INSERT INTO `e-books`( `e_code`,`name`,`author_id`,`book_id`,`e_price`,`genre_ebook_id`) VALUES
('8IH9812GFK','Give me explanation(e-book)',5,5,15.40,15);
*/
/*
INSERT INTO `editions`( `book_id`,`publishing_date`) VALUES
(2,'2020-12-02'),
(10,'2021-11-24'),
(1,'2019-09-12'),
(15,'2022-08-20'),
(3,'2021-07-10'),
(12,'2021-09-09'),
(14,'2018-10-18'),
(9,'2020-01-23'),
(2,'2022-03-15'),
(13,'2018-04-19'),
(11,'2017-09-13'),
(9,'2021-10-21'),
(8,'2022-06-25'),
(15,'2020-12-30'),
(7,'2022-07-17')
*/
/*
INSERT INTO `clients`( `client_code`,`name`) VALUES
('K9329312J6','Stevan'),
('HU970473JJ','Katherine'),
('H76327454Y','Blaga'),
('OUY83276GF','Jeremy'),
('HUI28879HG','Karen'),
('J38387GDJK','Loran'),
('JUYY32K889','Marcias'),
('BN938JHY39','Penelope'),
('HY09W37QQ2','Samantha'),
('D7832THGF1','Ben'),
('U3876FHGR1','Daria'),
('KH7326FFJ2','Susan'),
('IO38726FJD','Robert'),
('GUIL984762','Vivian'),
('UIIY837HHF','Peter')
*/
/*
INSERT INTO `orders`( `book_id`,`edition_id`,`order_date`,`ordered_copies_count`,`client_id`) VALUES
(7,15,'2022-09-15',2,4),
(8,13,'2022-10-11',1,8),
(13,10,'2019-01-09',1,10),
(15,14,'2021-12-03',2,9),
(7,15,'2022-10-18',3,14),
(2,9,'2022-05-07',4,15),
(12,6,'2022-02-15',1,1),
(13,10,'2020-10-23',2,2),
(11,11,'2018-10-01',3,6),
(9,8,'2021-03-12',5,11),
(2,9,'2022-12-04',2,12),
(14,7,'2022-03-19',4,3),
(14,7,'2019-02-03',4,7),
(8,13,'2022-12-11',1,5),
(11,11,'2020-12-08',3,13)
*/