session - 1 

task -2
CREATE DATABASE music_streaming_db;

task -3
CREATE DATABASE food_delivery_db;

task -4 
-- | Feature       | MySQL                              | PostgreSQL                                                  |
-- | ------------- | ---------------------------------- | ----------------------------------------------------------- |
-- | Performance   | Faster for simple web applications | Better for complex queries and analytics                    |
-- | SQL Features  | Basic SQL features                 | Advanced SQL features (CTEs, Window Functions, JSONB, etc.) |
-- | Best Use Case | Websites, blogs, e-commerce        | Enterprise applications, GIS, Data Analytics                |





session - 2

task - 1
SELECT * FROM restaurants;

task - 2
SELECT name, rating
FROM zomato_reviews;

task - 3
SELECT movie_name AS 'Title',
       release_year AS 'Year Released'
FROM movies;

TASK -4
SELECT *
FROM products;




SESSION - 3

TASK -1 
USE FOOD_DELIVERY_DB
SELECT * FROM  RESTAURANTS
WHERE RATING >= 4.5


TASK - 2
SELECT *
FROM movies
WHERE release_year > 2020
AND genre = 'Action';


TASK - 3
SELECT * FROM PRODUCTS
WHERE CATEGORY != "Electronics" OR PRICE <500


TASK -4
SELECT * FROM users
WHERE NOT city = 'Ahmedabad'
AND followers > 1000;



-- SESSION - 4
USE food_delivery_db;

-- TASK -1
SELECT *
FROM Restaurants
WHERE restaurant_name LIKE '%Cafe';


-- TASK - 2
SELECT *
FROM Products
WHERE price BETWEEN 500 AND 1500;


-- TASK 3
SELECT *
FROM Users
WHERE city IN ('Ahmedabad', 'Surat', 'Vadodara');



TASK  -4 
SELECT *
FROM Songs
WHERE artist_name LIKE '%ar%';



-- SESSION  - 5

USE food_delivery_db;
-- TASK 1 : 
DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100),
    payment_method VARCHAR(50),
    amount DECIMAL(10,2)
);

INSERT INTO orders (customer_name, payment_method, amount)
VALUES
('Rahul','UPI',350),
('Priya','Cash',220),
('Amit','Credit Card',800),
('Neha','UPI',450),
('Karan','Debit Card',600),
('Riya','Cash',300);

SELECT DISTINCT payment_method
FROM orders;


-- TASK 2 :

DROP TABLE IF EXISTS users;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(100),
    city VARCHAR(50)
);

INSERT INTO users (user_name, city)
VALUES
('Rahul','Surat'),
('Priya','Ahmedabad'),
('Amit','Vadodara'),
('Neha','Surat'),
('Karan','Rajkot'),
('Riya','Ahmedabad');

SELECT DISTINCT city
FROM users
ORDER BY city ASC;



-- TASK 3 
DROP TABLE IF EXISTS bookings;

CREATE TABLE bookings (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100),
    movie_name VARCHAR(100),
    booking_date DATE
);

INSERT INTO bookings (customer_name,movie_name,booking_date)
VALUES
('Rahul','Pushpa','2025-01-10'),
('Priya','KGF 2','2025-01-15'),
('Amit','Leo','2025-02-05'),
('Neha','Jawan','2025-02-12'),
('Karan','Animal','2025-03-01'),
('Riya','Pathaan','2025-03-20'),
('Jay','Dunki','2025-04-01');

SELECT *
FROM bookings
ORDER BY booking_date DESC
LIMIT 5;



-- TASK 4 : 

DROP TABLE IF EXISTS products;

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    sold_count INT
);

INSERT INTO products (name,category,sold_count)
VALUES
('iPhone 15','Mobile',1500),
('Samsung TV','Electronics',800),
('Boat Earbuds','Accessories',2500),
('Laptop','Electronics',1200),
('Smart Watch','Accessories',950),
('Power Bank','Accessories',1700),
('Mixer','Home',650),
('Keyboard','Electronics',1100),
('Mouse','Electronics',1300),
('Printer','Electronics',500),
('Monitor','Electronics',900),
('Tablet','Electronics',1000);

select * from  products
order by sold_count desc
limit 10



-- SESSION - 6-----------


 TASK 1 : SUM() - Total Food Order Amount
-- ==========================================

DROP TABLE IF EXISTS food_orders;

CREATE TABLE food_orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    amount DECIMAL(10,2)
);

INSERT INTO food_orders (user_id, amount)
VALUES
(101, 250.00),
(102, 450.00),
(101, 300.00),
(103, 600.00),
(102, 200.00);

select sum(amount) from food_orders



- TASK 2 : 
-- ==========================================

DROP TABLE IF EXISTS spotify_playlists;

CREATE TABLE spotify_playlists (
    playlist_id INT,
    user_id INT,
    song_id INT
);

INSERT INTO spotify_playlists
VALUES
(1,101,1001),
(1,101,1002),
(1,101,1003),
(2,102,1004),
(2,102,1005),
(3,103,1006);

select * from  spotify_playlists
SELECT user_id,
       COUNT(song_id) AS total_songs
FROM spotify_playlists
GROUP BY user_id



-- TASK 3 : 
-- ==========================================

DROP TABLE IF EXISTS bookmyshow_reviews;

CREATE TABLE bookmyshow_reviews (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    movie_id INT,
    rating DECIMAL(2,1)
);

INSERT INTO bookmyshow_reviews (movie_id, rating)
VALUES
(1,4.5),
(1,5.0),
(1,4.0),
(2,3.5),
(2,4.5);
select * from bookmyshow_reviews;
select round(avg(rating),1),movie_id
from bookmyshow_reviews
group by movie_id;



TASK 4 :
-- ==========================================

DROP TABLE IF EXISTS paytm_transactions;

CREATE TABLE paytm_transactions (
    txn_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    amount DECIMAL(10,2)
);

INSERT INTO paytm_transactions (user_id, amount)
VALUES
(101,500),
(101,1200),
(101,250),
(102,800),
(102,1500),
(103,350);

select * from  paytm_transactions;
select min(amount),max(amount),user_id
from paytm_transactions
group by user_id;



-- TASK 5 :
-- ==========================================

DROP TABLE IF EXISTS myntra_orders;

CREATE TABLE myntra_orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    total_price DECIMAL(10,2)
);

INSERT INTO myntra_orders (user_id, total_price)
VALUES
(101,1200),
(101,1800),
(101,900),
(102,2500),
(102,3000),
(103,700),
(103,1100);

select * from myntra_orders;
select count(order_id),round(avg(total_price),2) as count ,max(total_price),user_id
from myntra_orders	
group by user_id




SESSION 7 : 
------------------------------

-- TASK 1 : 

DROP TABLE IF EXISTS food_orders;

CREATE TABLE food_orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    amount DECIMAL(10,2)
);

INSERT INTO food_orders (user_id, amount)
VALUES
(101,250),
(101,300),
(102,450),
(102,200),
(103,600),
(103,350),
(103,500);

SELECT user_id,
       COUNT(order_id) AS total_orders
FROM food_orders
GROUP BY user_id;



-- TASK 2 : 
-- ==========================================

DROP TABLE IF EXISTS transactions;

CREATE TABLE transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    amount DECIMAL(10,2),
    payment_method VARCHAR(50)
);

INSERT INTO transactions (user_id, amount, payment_method)
VALUES
(101,250,'UPI'),
(102,450,'Credit Card'),
(101,300,'UPI'),
(103,600,'Cash'),
(102,200,'Debit Card'),
(103,350,'Cash'),
(101,500,'Credit Card');

SELECT payment_method,
       SUM(amount) AS total_amount
FROM transactions
GROUP BY payment_method;



-- TASK 3 : 
-- ==========================================

DROP TABLE IF EXISTS movies;

CREATE TABLE movies (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    genre VARCHAR(50),
    box_office_collection DECIMAL(10,2)
);

INSERT INTO movies (genre, box_office_collection)
VALUES
('Action',5.5),
('Action',7.2),
('Comedy',3.5),
('Comedy',4.0),
('Drama',12.5),
('Drama',2.5),
('Thriller',9.0);

SELECT genre,
       SUM(box_office_collection) AS total_collection
FROM movies
GROUP BY genre
HAVING SUM(box_office_collection) > 10;



-- TASK -4
-- ==========================================

DROP TABLE IF EXISTS playlist;

CREATE TABLE playlist (
    playlist_id INT,
    user_id INT,
    song_id INT,
    duration INT
);

INSERT INTO playlist
VALUES
(1,101,1001,2400),
(1,101,1002,2500),
(1,101,1003,2600),
(2,102,1004,1800),
(2,102,1005,2000),
(3,103,1006,4000),
(3,103,1007,3500);

SELECT user_id,
       SUM(duration) AS total_duration
FROM playlist
GROUP BY user_id
HAVING SUM(duration) > 7200;



 
SESSION 8 : 
-----------------------------------

USE food_delivery_db;

-- TASK 1

DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS CustomerSegments;

CREATE TABLE Users (
user_id INT PRIMARY KEY,
username VARCHAR(100),
city VARCHAR(50)
);

CREATE TABLE Orders (
order_id INT PRIMARY KEY,
user_id INT,
product VARCHAR(100),
amount DECIMAL(10,2)
);

INSERT INTO Users VALUES
(101,'Rahul','Surat'),
(102,'Priya','Ahmedabad'),
(103,'Amit','Vadodara'),
(104,'Neha','Rajkot');

INSERT INTO Orders VALUES
(1,101,'Pizza',350),
(2,101,'Burger',250),
(3,102,'Pasta',450),
(4,103,'Biryani',500),
(5,105,'Sandwich',200);


SELECT * FROM ORDERS;
SELECT * FROM USERS;
SELECT * FROM CUSTOMERSEGMENTS;

-- TASK 2
SELECT u.username,
o.product
FROM Users u
INNER JOIN Orders o
ON u.user_id = o.user_id;



-- TASK 3
SELECT U.USERNAME,O.PRODUCT
FROM USERS U
LEFT JOIN ORDERS O
ON U.USER_ID = O.USER_ID




-- TASK 4
SELECT u.username,
o.order_id,
o.product,
o.amount
FROM Users u
RIGHT JOIN Orders o
ON u.user_id = o.user_id;



-- TASK 5
CREATE TABLE CustomerSegments (
segment_id INT PRIMARY KEY,
segment_name VARCHAR(50)
);

ALTER TABLE Users
ADD COLUMN segment_id INT;

ALTER TABLE Users
ADD CONSTRAINT fk_segment
FOREIGN KEY (segment_id)
REFERENCES CustomerSegments(segment_id);

INSERT INTO CustomerSegments VALUES
(1,'Silver'),
(2,'Gold'),
(3,'Platinum');

UPDATE Users SET segment_id=1 WHERE user_id=101;
UPDATE Users SET segment_id=2 WHERE user_id=102;
UPDATE Users SET segment_id=3 WHERE user_id=103;
UPDATE Users SET segment_id=1 WHERE user_id=104;


SELECT U.USERNAME,C.SEGMENT_NAME,SUM(O.AMOUNT)
FROM ORDERS O 
JOIN  USERS U
ON O.USER_ID = U.USER_ID
JOIN CUSTOMERSEGMENTS C
ON C.SEGMENT_ID = U.SEGMENT_ID
GROUP BY U.USERNAME,C.SEGMENT_NAME;




SESSION 9 :
-------------------------------------


