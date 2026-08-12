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

USE food_delivery_db;

-- TASK 1

DROP TABLE IF EXISTS influencers;
DROP TABLE IF EXISTS brands;

CREATE TABLE influencers (
influencer_id INT PRIMARY KEY,
influencer_name VARCHAR(100),
city VARCHAR(50)
);

CREATE TABLE brands (
brand_id INT PRIMARY KEY,
brand_name VARCHAR(100),
city VARCHAR(50)
);

INSERT INTO influencers VALUES
(1,'Rahul','Surat'),
(2,'Priya','Ahmedabad'),
(3,'Amit','Vadodara');

INSERT INTO brands VALUES
(1,'Nike','Surat'),
(2,'Puma','Mumbai'),
(3,'Adidas','Vadodara');

SELECT i.influencer_name,
b.brand_name
FROM influencers i
LEFT JOIN brands b
ON i.city = b.city

UNION

SELECT i.influencer_name,
b.brand_name
FROM influencers i
RIGHT JOIN brands b
ON i.city = b.city;




TASK - 2
DROP TABLE IF EXISTS playlists;

CREATE TABLE playlists (
id INT PRIMARY KEY,
playlist_name VARCHAR(100),
parent_playlist_id INT
);

INSERT INTO playlists VALUES
(1,'My Playlist',NULL),
(2,'Workout Mix',1),
(3,'Gym Songs',2),
(4,'Travel Songs',1);




TASK -3 
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS offers;

CREATE TABLE users (
user_id INT PRIMARY KEY,
user_name VARCHAR(100)
);

CREATE TABLE offers (
offer_id INT PRIMARY KEY,
offer_title VARCHAR(100)
);

INSERT INTO users VALUES
(1,'Rahul'),
(2,'Priya'),
(3,'Amit');

INSERT INTO offers VALUES
(1,'10% OFF'),
(2,'Free Delivery'),
(3,'Buy 1 Get 1');

-- Generate every possible user-offer combination
-- for a Flipkart-style personalized offer campaign.

SELECT u.user_name,
o.offer_title
FROM users u
CROSS JOIN offers o;

-- TASK 4

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
id INT PRIMARY KEY,
name VARCHAR(100),
manager_id INT
);

INSERT INTO employees VALUES
(1,'Raj',NULL),
(2,'Amit',1),
(3,'Priya',1),
(4,'Neha',2);

SELECT e.name AS employee_name,
m.name AS manager_name
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.id;

SELECT name
FROM employees
WHERE manager_id IS NULL;

-- TASK 5

DROP TABLE IF EXISTS users;

CREATE TABLE users (
user_id INT PRIMARY KEY,
user_name VARCHAR(100),
city VARCHAR(50)
);

INSERT INTO users VALUES
(1,'Rahul','Surat'),
(2,'Priya','Surat'),
(3,'Amit','Ahmedabad'),
(4,'Neha','Ahmedabad'),
(5,'Karan','Rajkot');

SELECT
u1.user_name AS user1,
u2.user_name AS user2,
u1.city
FROM users u1
JOIN users u2
ON u1.city = u2.city
AND u1.user_id < u2.user_id;



SESSION -10

USE food_delivery_db;

-- TASK 1

DROP TABLE IF EXISTS AppOrders;
DROP TABLE IF EXISTS InStoreOrders;

CREATE TABLE AppOrders (
order_id INT PRIMARY KEY,
customer_name VARCHAR(100),
amount DECIMAL(10,2),
order_date DATE
);

CREATE TABLE InStoreOrders (
order_id INT PRIMARY KEY,
customer_name VARCHAR(100),
amount DECIMAL(10,2),
order_date DATE
);

INSERT INTO AppOrders VALUES
(1,'Rahul',350,'2025-07-01'),
(2,'Priya',450,'2025-07-02'),
(3,'Amit',300,'2025-07-03');

INSERT INTO InStoreOrders VALUES
(101,'Neha',500,'2025-07-01'),
(102,'Rahul',250,'2025-07-02'),
(103,'Karan',400,'2025-07-03');

select * from apporders;
select * from instoreorders;


TASK -2
SELECT customer_name
FROM AppOrders
UNION
SELECT customer_name
FROM InStoreOrders



TASK - 3
SELECT order_id,
customer_name,
amount,
order_date
FROM AppOrders

UNION ALL

SELECT order_id,
customer_name,
amount,
order_date
FROM InStoreOrders;



TASK 4: 

INSERT INTO AppOrders VALUES
(4,'Rahul',600,'2025-07-04');

INSERT INTO InStoreOrders VALUES
(104,'Rahul',700,'2025-07-05');

-- UNION (Duplicates Removed)

SELECT customer_name
FROM AppOrders

UNION

SELECT customer_name
FROM InStoreOrders;

-- UNION ALL (Duplicates Included)

SELECT customer_name
FROM AppOrders

UNION ALL

SELECT customer_name
FROM InStoreOrders;

-- Observation:
-- UNION removes duplicate customer names.
-- UNION ALL displays all customer names including duplicates




SESSION 11
-----------------------------------

TASK -1 
USE food_delivery_db;

DROP TABLE IF EXISTS Restaurants;

CREATE TABLE Restaurants (
restaurant_id INT PRIMARY KEY,
restaurant_name VARCHAR(100),
rating DECIMAL(2,1)
);

INSERT INTO Restaurants VALUES
(1,'Spice Villa',4.5),
(2,'Food Hub',3.8),
(3,'Royal Cafe',4.9),
(4,'Pizza Point',4.2);

SELECT RESTAURANT_NAME,RATING
FROM  RESTAURANTS
WHERE RATING > (SELECT AVG(RATING) FROM RESTAURANTS);



-- TASK 2

DROP TABLE IF EXISTS Products;

CREATE TABLE Products (
product_id INT PRIMARY KEY,
name VARCHAR(100),
price DECIMAL(10,2),
category VARCHAR(50)
);

INSERT INTO Products VALUES
(1,'iPhone 15',80000,'Mobile'),
(2,'Samsung S24',70000,'Mobile'),
(3,'HP Laptop',60000,'Laptop'),
(4,'Dell Laptop',65000,'Laptop');

SELECT * FROM  PRODUCTS
SELECT  NAME , PRICE ,AVG(PRICE) OVER(PARTITION BY CATEGORY)
FROM PRODUCTS



-- TASK 3

DROP TABLE IF EXISTS Playlists;
DROP TABLE IF EXISTS Users;

CREATE TABLE Users (
user_id INT PRIMARY KEY,
username VARCHAR(100)
);

CREATE TABLE Playlists (
playlist_id INT PRIMARY KEY,
user_id INT,
playlist_name VARCHAR(100)
);

INSERT INTO Users VALUES
(101,'Rahul'),
(102,'Priya'),
(103,'Amit'),
(104,'Neha');

INSERT INTO Playlists VALUES
(1,101,'Workout'),
(2,101,'Travel'),
(3,102,'Party'),
(4,103,'Study'),
(5,103,'Gym'),
(6,103,'Relax');

SELECT
u.username,
p.playlist_count
FROM
(
SELECT user_id,
COUNT() AS playlist_count
FROM Playlists
GROUP BY user_id
) p
JOIN Users u
ON u.user_id = p.user_id
WHERE p.playlist_count >
(
SELECT AVG(playlist_count)
FROM
(
SELECT COUNT() AS playlist_count
FROM Playlists
GROUP BY user_id
) avg_table
);





-- TASK 4

DROP TABLE IF EXISTS Orders;

CREATE TABLE Orders (
order_id INT PRIMARY KEY,
user_id INT,
total_amount DECIMAL(10,2)
);

INSERT INTO Orders VALUES
(1,101,350),
(2,102,700),
(3,103,450),
(4,101,900),
(5,104,250);
SELECT DISTINCT user_id
FROM Orders
WHERE total_amount >
(
SELECT AVG(total_amount)
FROM Orders
);



SESSION 12 
USE food_delivery_db;

-- TASK 1

DROP TABLE IF EXISTS SpotifyArtists;

CREATE TABLE SpotifyArtists (
artist_id INT PRIMARY KEY,
name VARCHAR(100),
followers INT
);

INSERT INTO SpotifyArtists VALUES
(1,'Arijit Singh',9500000),
(2,'Taylor Swift',12000000),
(3,'Ed Sheeran',11000000),
(4,'Shreya Ghoshal',7000000),
(5,'Atif Aslam',8500000);

WITH TOP_ARTISTS AS (
SELECT * FROM SPOTIFYARTISTS
order by FOLLOWERS DESC
LIMIT 3)

SELECT * FROM TOP_ARTISTS;



-- TASK 2

DROP TABLE IF EXISTS FlipkartOrders;

CREATE TABLE FlipkartOrders (
order_id INT PRIMARY KEY,
user_id INT,
order_date DATE,
total_amount DECIMAL(10,2)
);

INSERT INTO FlipkartOrders VALUES
(1,101,'2023-01-15',500),
(2,102,'2023-01-20',800),
(3,103,'2023-02-10',1200),
(4,101,'2023-02-25',700),
(5,102,'2023-03-12',1500),
(6,103,'2023-03-18',1000);

SELECT * FROM FLIPKARTORDERS;
WITH MONTHLYTOOL AS(
SELECT MONTH(ORDER_DATE),SUM(TOTAL_AMOUNT) AS TOTAL
FROM FLIPKARTORDERS
GROUP BY MONTH(ORDER_DATE)
)
SELECT * FROM MONTHLYTOOL
ORDER BY TOTAL  DESC
LIMIT 1



-- TASK 3

WITH RECURSIVE CalendarDays AS
(
SELECT CURDATE() AS day_date

UNION ALL

SELECT DATE_ADD(day_date,INTERVAL 1 DAY)
FROM CalendarDays
WHERE day_date < DATE_ADD(CURDATE(),INTERVAL 6 DAY)

)
SELECT *
FROM CalendarDays;



-- TASK 4

DROP TABLE IF EXISTS ZomatoRestaurants;

CREATE TABLE ZomatoRestaurants (
id INT PRIMARY KEY,
name VARCHAR(100),
city VARCHAR(50),
rating DECIMAL(2,1)
);

INSERT INTO ZomatoRestaurants VALUES
(1,'Spice Villa','Surat',4.5),
(2,'Food Hub','Surat',4.2),
(3,'Royal Cafe','Ahmedabad',3.8),
(4,'Pizza Point','Ahmedabad',4.0),
(5,'Tasty Bites','Vadodara',4.7),
(6,'Urban Kitchen','Vadodara',4.3);

SELECT * FROM ZOMATORESTAURANTS

WITH K AS(
SELECT AVG(RATING)AS A ,CITY
FROM ZOMATORESTAURANTS
GROUP BY CITY
)
SELECT * FROM K
WHERE A > 4;




-- TASK 5

DROP TABLE IF EXISTS IPLMatches;

CREATE TABLE IPLMatches (
match_id INT PRIMARY KEY,
team VARCHAR(100),
runs INT,
match_year INT
);

INSERT INTO IPLMatches VALUES
(1,'CSK',850,2023),
(2,'CSK',1300,2023),
(3,'MI',900,2023),
(4,'MI',1200,2023),
(5,'RCB',1800,2023),
(6,'RCB',500,2023),
(7,'GT',1700,2022);
SELECT * FROM IPLMATCHES
WITH TeamRuns AS(
SELECT TEAM,SUM(RUNS) AS RUN
FROM IPLMATCHES
WHERE MATCH_YEAR = 2023
GROUP BY TEAM
)
SELECT TEAM FROM TEAMRUNS
WHERE  RUN >  2000;




SESSION 13 : 
-----------------------------------

USE food_delivery_db;

-- TASK 1

DROP TABLE IF EXISTS Orders;

CREATE TABLE Orders (
order_id INT PRIMARY KEY,
user_id INT,
order_amount DECIMAL(10,2),
app_name VARCHAR(50)
);

INSERT INTO Orders VALUES
(1,101,350,'Zomato'),
(2,101,500,'Swiggy'),
(3,102,250,'Zomato'),
(4,102,700,'Flipkart'),
(5,103,450,'Swiggy'),
(6,103,800,'Zomato'),
(7,104,600,'Flipkart'),
(8,104,300,'Swiggy'),
(9,105,900,'Zomato'),
(10,105,550,'Flipkart');

SELECT * FROM ORDERS
SELECT
order_id,
user_id,
app_name,
order_amount,
SUM(order_amount) OVER() AS total_order_amount
FROM Orders;



TASK - 2
SELECT
user_id,
order_id,
order_amount,
AVG(order_amount) OVER(PARTITION BY user_id) AS average_order_amount
FROM Orders;



-- TASK 3

DROP TABLE IF EXISTS Playlist;

CREATE TABLE Playlist (
song_id INT PRIMARY KEY,
user_id INT,
duration_sec INT
);

INSERT INTO Playlist VALUES
(1,101,210),
(2,101,180),
(3,101,240),
(4,102,200),
(5,102,220),
(6,103,300),
(7,103,260);
select * from playlist

select * ,sum(duration_sec) over(partition by user_id) from playlist



-- TASK 4

DROP TABLE IF EXISTS MovieRatings;

CREATE TABLE MovieRatings (
rating_id INT PRIMARY KEY,
user_id INT,
movie_name VARCHAR(100),
rating DECIMAL(2,1)
);

INSERT INTO MovieRatings VALUES
(1,101,'Leo',4.5),
(2,102,'Leo',5.0),
(3,103,'Leo',4.0),
(4,104,'Jawan',3.5),
(5,105,'Jawan',4.5),
(6,106,'Animal',5.0),
(7,107,'Animal',4.0);

SELECT
rating_id,
user_id,
movie_name,
rating,
AVG(rating) OVER(PARTITION BY movie_name) AS average_movie_rating,
rating - AVG(rating) OVER(PARTITION BY movie_name) AS rating_difference
FROM MovieRatings;


SESSION -14
------------------------------------
USE food_delivery_db;

-- TASK 1

DROP TABLE IF EXISTS Orders;

CREATE TABLE Orders (
order_id INT PRIMARY KEY,
user_id INT,
order_date DATE,
total_amount DECIMAL(10,2)
);

INSERT INTO Orders VALUES
(1,101,'2025-07-01',350),
(2,101,'2025-07-05',500),
(3,102,'2025-07-02',250),
(4,102,'2025-07-06',700),
(5,103,'2025-07-03',450),
(6,103,'2025-07-08',800),
(7,104,'2025-07-04',600);

SELECT * FROM ORDERS
SELECT *, ROW_NUMBER() OVER(PARTITION BY ORDER_ID ORDER BY ORDER_DATE DESC) FROM ORDERS



TASK - 2

DROP TABLE IF EXISTS Songs;

CREATE TABLE Songs (
song_id INT PRIMARY KEY,
artist VARCHAR(100),
streams INT
);

INSERT INTO Songs VALUES
(1,'Arijit Singh',5000000),
(2,'Arijit Singh',7000000),
(3,'Arijit Singh',5000000),
(4,'Taylor Swift',9000000),
(5,'Taylor Swift',8500000),
(6,'Ed Sheeran',6000000);
SELECT * FROM SONGS

SELECT *, RANK() OVER(PARTITION BY ARTIST ORDER BY STREAMS DESC) FROM SONGS



-- TASK 3

DROP TABLE IF EXISTS Movies;

CREATE TABLE Movies (
movie_id INT PRIMARY KEY,
genre VARCHAR(50),
rating DECIMAL(2,1)
);

INSERT INTO Movies VALUES
(1,'Action',4.8),
(2,'Action',4.5),
(3,'Action',4.5),
(4,'Comedy',4.9),
(5,'Comedy',4.2),
(6,'Drama',4.7);

SELECT * FROM MOVIES
SELECT *, DENSE_RANK() OVER(PARTITION BY GENRE ORDER BY RATING DESC) FROM MOVIES




-- TASK 4

DROP TABLE IF EXISTS Influencers;

CREATE TABLE Influencers (
id INT PRIMARY KEY,
platform VARCHAR(50),
followers INT
);

INSERT INTO Influencers VALUES
(1,'Instagram',900000),
(2,'Instagram',850000),
(3,'Instagram',700000),
(4,'Instagram',650000),
(5,'YouTube',1200000),
(6,'YouTube',1100000),
(7,'YouTube',950000),
(8,'YouTube',900000);
SELECT * FROM INFLUENCERS
SELECT * FROM (
SELECT *,ROW_NUMBER() OVER(PARTITION BY PLATFORM ORDER BY FOLLOWERS DESC) AS RANKS FROM INFLUENCERS) AS DD
WHERE RANKS < 4 




SESSION 15 
--------------------------------

USE food_delivery_db;

-- TASK 1

SELECT NOW() AS CurrentDateTime;



-- TASK 2

DROP TABLE IF EXISTS Orders;

CREATE TABLE Orders (
order_id INT PRIMARY KEY,
order_date DATE
);

INSERT INTO Orders VALUES
(1,'2025-07-01'),
(2,'2025-07-05'),
(3,'2025-08-10'),
(4,'2025-09-15');
SELECT * FROM ORDERS
SELECT
order_id,
order_date,
YEAR(order_date) AS order_year,
MONTH(order_date) AS order_month,
DAY(order_date) AS order_day
FROM Orders;



-- TASK 3

DROP TABLE IF EXISTS Deliveries;

CREATE TABLE Deliveries (
delivery_id INT PRIMARY KEY,
delivery_date DATE
);

INSERT INTO Deliveries VALUES
(1,'2025-07-10'),
(2,'2025-07-15'),
(3,'2025-07-20');
SELECT * FROM DELIVERIES
SELECT
delivery_date,
DATE_SUB(delivery_date, INTERVAL 2 DAY) AS expected_pickup_date
FROM Deliveries;



-- TASK 4

DROP TABLE IF EXISTS Subscriptions;

CREATE TABLE Subscriptions (
user_id INT,
start_date DATE,
end_date DATE
);

INSERT INTO Subscriptions VALUES
(101,'2025-01-01','2025-03-01'),
(102,'2025-02-15','2025-05-15'),
(103,'2025-04-01','2025-04-30');

SELECT
user_id,
start_date,
end_date,
DATEDIFF(end_date, start_date) AS subscription_days
FROM Subscriptions;





-- TASK 5

DROP TABLE IF EXISTS AppLogins;

CREATE TABLE AppLogins (
user_id INT,
last_login_date DATE
);

INSERT INTO AppLogins VALUES
(101,'2025-06-01'),
(102,CURDATE()),
(103,DATE_SUB(CURDATE(), INTERVAL 40 DAY)),
(104,DATE_SUB(CURDATE(), INTERVAL 10 DAY)),
(105,DATE_SUB(CURDATE(), INTERVAL 60 DAY));

SELECT
user_id,
last_login_date
FROM AppLogins
WHERE DATEDIFF(NOW(), last_login_date) > 30;




SESSION 16 :-
---------------------------------------------

USE food_delivery_db;

-- TASK 1

DROP TABLE IF EXISTS users;

CREATE TABLE users (
user_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50)
);

INSERT INTO users VALUES
(1,'Rahul','Sharma'),
(2,'Priya','Patel'),
(3,'Amit','Verma');

SELECT
CONCAT(first_name,' ',last_name) AS full_name
FROM users;





-- TASK 2
DROP TABLE IF EXISTS playlists;

CREATE TABLE playlists (
song_id INT PRIMARY KEY,
song_title VARCHAR(100)
);

INSERT INTO playlists VALUES
(1,'Kesariya'),
(2,'Perfect'),
(3,'Believer');

SELECT
UPPER(song_title) AS song_title
FROM playlists;





-- TASK 3

DROP TABLE IF EXISTS food_items;

CREATE TABLE food_items (
item_id INT PRIMARY KEY,
item_code VARCHAR(50)
);

INSERT INTO food_items VALUES
(1,' FD101 '),
(2,' FD102'),
(3,'FD103 ');

SELECT
TRIM(item_code) AS item_code
FROM food_items;





-- TASK 4

DROP TABLE IF EXISTS movies;

CREATE TABLE movies (
movie_id INT PRIMARY KEY,
imdb_id VARCHAR(20)
);

INSERT INTO movies VALUES
(1,'tt1234567'),
(2,'tt7654321'),
(3,'tt9876543');

SELECT
imdb_id,
RIGHT(imdb_id,7) AS movie_number
FROM movies;





-- TASK 5

DROP TABLE IF EXISTS products;

CREATE TABLE products (
product_id INT PRIMARY KEY,
sku_code VARCHAR(50)
);

INSERT INTO products VALUES
(1,'MOB-123-XY'),
(2,'LAP-456-AB'),
(3,'TV-789-CD');

SELECT
sku_code,
REPLACE(sku_code,'-','_') AS updated_sku_code
FROM products;





SESSION - 17 
--------------------------------------------

USE food_delivery_db;

-- TASK 1

DROP TABLE IF EXISTS FoodOrders;

CREATE TABLE FoodOrders (
order_id INT PRIMARY KEY,
customer_name VARCHAR(100),
total_amount DECIMAL(10,2)
);

INSERT INTO FoodOrders VALUES
(1,'Rahul',250),
(2,'Priya',500),
(3,'Amit',1200),
(4,'Neha',900),
(5,'Karan',150);

SELECT * FROM FOODORDERS
SELECT *,
CASE 
WHEN TOTAL_AMOUNT < 300 THEN "Small"
WHEN TOTAL_AMOUNT > 300 OR TOTAL_AMOUNT<999 THEN "MEDIUM"
ELSE "LARGE"
END AS HBB
FROM FOODORDERS;



-- TASK 2

DROP TABLE IF EXISTS Movies;

CREATE TABLE Movies (
movie_id INT PRIMARY KEY,
movie_name VARCHAR(100),
rating DECIMAL(3,1)
);

INSERT INTO Movies VALUES
(1,'Leo',8.5),
(2,'Jawan',7.2),
(3,'Animal',4.8),
(4,'KGF',9.1);

SELECT
movie_name,
rating,
CASE
WHEN rating >= 8 THEN 'Blockbuster'
WHEN rating >= 5 THEN 'Hit'
ELSE 'Average'
END AS popularity
FROM Movies;




-- TASK 3

DROP TABLE IF EXISTS FlipkartProducts;

CREATE TABLE FlipkartProducts (
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
price DECIMAL(10,2)
);

INSERT INTO FlipkartProducts VALUES
(1,'Mouse',450),
(2,'Keyboard',1200),
(3,'Laptop',65000),
(4,'Power Bank',1800);
SELECT
product_name,
price,
CASE
WHEN price < 500 THEN 'Budget'
WHEN price BETWEEN 500 AND 2000 THEN 'Standard'
ELSE 'Premium'
END AS price_category
FROM FlipkartProducts;




-- TASK 4

DROP TABLE IF EXISTS SpotifyTracks;

CREATE TABLE SpotifyTracks (
track_id INT PRIMARY KEY,
track_name VARCHAR(100),
duration_sec INT
);

INSERT INTO SpotifyTracks VALUES
(1,'Song A',150),
(2,'Song B',220),
(3,'Song C',340),
(4,'Song D',180);

SELECT
track_name,
duration_sec,
CASE
WHEN duration_sec < 180 THEN 'Short'
WHEN duration_sec BETWEEN 180 AND 300 THEN 'Medium'
ELSE 'Long'
END AS duration_label
FROM SpotifyTracks;





SESSION - 18 :-
---------------------------------------
USE food_delivery_db;

-- TASK 1

DROP TABLE IF EXISTS Restaurants;
DROP TABLE IF EXISTS RestaurantReviews;
DROP VIEW IF EXISTS TopRatedRestaurants;

CREATE TABLE Restaurants (
restaurant_id INT PRIMARY KEY,
restaurant_name VARCHAR(100),
city VARCHAR(50)
);

CREATE TABLE RestaurantReviews (
review_id INT PRIMARY KEY,
restaurant_id INT,
rating DECIMAL(2,1)
);

INSERT INTO Restaurants VALUES
(1,'Spice Villa','Surat'),
(2,'Royal Cafe','Ahmedabad'),
(3,'Food Hub','Vadodara');

INSERT INTO RestaurantReviews VALUES
(1,1,4.5),
(2,1,4.8),
(3,2,3.9),
(4,2,4.0),
(5,3,4.7),
(6,3,4.6);

CREATE VIEW TopRatedRestaurants AS
SELECT
r.restaurant_name,
AVG(rv.rating) AS average_rating,
COUNT(rv.review_id) AS total_reviews
FROM Restaurants r
JOIN RestaurantReviews rv
ON r.restaurant_id = rv.restaurant_id
GROUP BY r.restaurant_name
HAVING AVG(rv.rating) > 4.0;

SELECT * FROM TopRatedRestaurants;





-- TASK 2

DROP VIEW IF EXISTS TopRatedRestaurants;

CREATE VIEW TopRatedRestaurants AS
SELECT
r.restaurant_name,
r.city,
AVG(rv.rating) AS average_rating,
COUNT(rv.review_id) AS total_reviews
FROM Restaurants r
INNER JOIN RestaurantReviews rv
ON r.restaurant_id = rv.restaurant_id
GROUP BY r.restaurant_id,r.restaurant_name,r.city
HAVING AVG(rv.rating) > 4.0;

SELECT * FROM TopRatedRestaurants;





-- TASK 3

UPDATE TopRatedRestaurants
SET average_rating = 5.0
WHERE restaurant_name = 'Spice Villa';




-- TASK 4

DROP TABLE IF EXISTS SwiggyOrders;
DROP VIEW IF EXISTS DailyOrderSummary;

CREATE TABLE SwiggyOrders (
order_id INT PRIMARY KEY,
order_date DATE,
total_amount DECIMAL(10,2)
);

INSERT INTO SwiggyOrders VALUES
(1,CURDATE(),350),
(2,DATE_SUB(CURDATE(),INTERVAL 5 DAY),450),
(3,DATE_SUB(CURDATE(),INTERVAL 10 DAY),600),
(4,DATE_SUB(CURDATE(),INTERVAL 20 DAY),500),
(5,DATE_SUB(CURDATE(),INTERVAL 35 DAY),700);

CREATE VIEW DailyOrderSummary AS
SELECT
order_date,
COUNT(order_id) AS total_orders,
SUM(total_amount) AS total_revenue
FROM SwiggyOrders
WHERE order_date >= DATE_SUB(CURDATE(),INTERVAL 30 DAY)
GROUP BY order_date;

SELECT * FROM DailyOrderSummary;

-- TASK 5

-- 1. Select only required columns.
-- Example: Include product_name and total_sales, not every column.

-- 2. Use meaningful view names.
-- Example: FlipkartMonthlySalesSummary.

-- 3. Filter unnecessary data inside the view.
-- Example: Show only completed Flipkart orders for reporting.





SESSION -19 : - 
-----------------------------------------
-- Task 1

SELECT *
FROM orders
WHERE user_id = 101;


-- Task 2

CREATE INDEX idx_user_id
ON orders(user_id);

SELECT *
FROM orders
WHERE user_id = 101;


-- Task 3

EXPLAIN
SELECT *
FROM orders
WHERE user_id = 101;


-- -- Task 4

-- CREATE INDEX idx_category
-- ON products(category);

-- SELECT *
-- FROM products
-- WHERE category = 'Electronics';


-- -- Task 5

-- EXPLAIN ANALYZE
-- SELECT order_id, order_amount, order_date
-- FROM orders
-- WHERE user_id = 101;

-- ANALYZE TABLE orders;

-- CREATE INDEX idx_user_amount
-- ON orders(user_id, order_amount);

-- SELECT order_id, order_amount
-- FROM orders
-- WHERE user_id = 101;





SESSION 20 
--------------------------------------

USE food_delivery_db;

-- TASK 1

DROP TABLE IF EXISTS ipl_matches;

CREATE TABLE ipl_matches (
    match_id INT PRIMARY KEY,
    season INT,
    match_date DATE,
    team1 VARCHAR(100),
    team2 VARCHAR(100),
    winner VARCHAR(100),
    venue VARCHAR(100)
);

INSERT INTO ipl_matches VALUES
(1,2023,'2023-04-01','Gujarat Titans','Chennai Super Kings','Gujarat Titans','Ahmedabad'),
(2,2023,'2023-04-02','Mumbai Indians','Royal Challengers Bangalore','Royal Challengers Bangalore','Mumbai'),
(3,2023,'2023-04-05','Mumbai Indians','Chennai Super Kings','Chennai Super Kings','Mumbai'),
(4,2023,'2023-04-08','Mumbai Indians','Delhi Capitals','Mumbai Indians','Delhi'),
(5,2023,'2023-04-12','Mumbai Indians','Kolkata Knight Riders','Mumbai Indians','Mumbai'),
(6,2023,'2023-04-15','Royal Challengers Bangalore','Delhi Capitals','Royal Challengers Bangalore','Bangalore'),
(7,2023,'2023-04-18','Mumbai Indians','Punjab Kings','Punjab Kings','Mumbai'),
(8,2023,'2023-04-22','Mumbai Indians','Gujarat Titans','Mumbai Indians','Mumbai'),
(9,2023,'2023-04-25','Rajasthan Royals','Mumbai Indians','Rajasthan Royals','Jaipur'),
(10,2023,'2023-04-28','Mumbai Indians','Lucknow Super Giants','Mumbai Indians','Mumbai');


-- TASK 2

SELECT *
FROM ipl_matches
WHERE team1 = 'Mumbai Indians'
   OR team2 = 'Mumbai Indians';


-- TASK 3

SELECT team1 AS team, COUNT(*) AS total_matches
FROM ipl_matches
GROUP BY team1

UNION ALL

SELECT team2 AS team, COUNT(*) AS total_matches
FROM ipl_matches
GROUP BY team2;


-- TASK 4

SELECT
winner AS team,
COUNT(*) AS total_wins
FROM ipl_matches
GROUP BY winner
ORDER BY total_wins DESC;


-- TASK 5

-- Export TASK 2 result as mi_matches.csv from MySQL Workbench.
-- Then run the following Python code separately:

-- import pandas as pd
-- from sqlalchemy import create_engine

-- df = pd.read_csv("mi_matches.csv")

-- mi_wins = df[df["winner"] == "Mumbai Indians"]

-- engine = create_engine(
--     "mysql+pymysql://root:YOUR_PASSWORD@localhost/food_delivery_db"
-- )

-- mi_wins.to_sql(
--     "mi_wins",
--     con=engine,
--     if_exists="replace",
--     index=False
-- )

-- print(mi_wins)





SESSION 21
---------------------------------------

USE food_delivery_db;

-- TASK 1

DROP TABLE IF EXISTS Restaurants;

CREATE TABLE Restaurants (
    restaurant_id INT PRIMARY KEY,
    name VARCHAR(100),
    cuisine VARCHAR(50),
    rating DECIMAL(2,1)
);

INSERT INTO Restaurants VALUES
(1,'Spice Villa','Indian',4.5),
(2,'Royal China','Chinese',4.2),
(3,'South Spice','South Indian',4.7),
(4,'Food Junction','Chinese',3.9),
(5,'Tasty Bites','Indian',4.3),
(6,'Dosa Corner','South Indian',4.6),
(7,'Dragon House','Chinese',4.8),
(8,'Urban Kitchen','Italian',4.1);


-- TASK 2

-- Parameterized query:
-- Replace 'Chinese' with the Power Query parameter value.

SELECT
    restaurant_id,
    name,
    cuisine,
    rating
FROM Restaurants
WHERE cuisine = 'Chinese';


-- TASK 3

-- Power Query:
-- Data -> Get Data -> From Database -> From SQL Server Database
-- Select Restaurants table.
-- Load to Excel.
-- For refresh:
-- Data -> Refresh All


-- TASK 4

SELECT
    restaurant_id,
    name,
    cuisine,
    rating
FROM Restaurants
WHERE rating > 4.0;


-- TASK 5

-- Parameterized rating-range query:
-- Power Query parameters:
-- MinRating = 3.5
-- MaxRating = 5.0

SELECT
    restaurant_id,
    name,
    cuisine,
    rating
FROM Restaurants
WHERE rating BETWEEN 3.5 AND 5.0
ORDER BY rating DESC;




SESSION 22
-----------------------------------------


-- TASK 1

SELECT
    name,
    rate AS average_rating,
    votes
FROM zomato
WHERE location = 'Koramangala'
  AND rate IS NOT NULL
ORDER BY rate DESC, votes DESC
LIMIT 5;


-- TASK 2

SELECT
    cuisines,
    COUNT(*) AS restaurant_count
FROM zomato
WHERE location = 'Indiranagar'
  AND cuisines IS NOT NULL
GROUP BY cuisines
ORDER BY restaurant_count DESC;


-- TASK 3

SELECT
    rest_type,
    AVG(approx_cost_for_two) AS average_cost_for_two
FROM zomato
WHERE approx_cost_for_two IS NOT NULL
GROUP BY rest_type
ORDER BY average_cost_for_two DESC;


-- TASK 4

SELECT
    name,
    location,
    rate AS rating,
    votes
FROM zomato
WHERE rate < 3.0
  AND votes > 200
ORDER BY votes DESC;

-- Marketing Action:
-- Restaurants with low ratings but high votes have good customer reach
-- but poor customer satisfaction.
-- Possible action: offer discounts, improve food/service quality,
-- run customer feedback campaigns and partner with food delivery apps.


-- TASK 5

SELECT
    name,
    approx_cost_for_two,
    CASE
        WHEN approx_cost_for_two < 500 THEN 'Budget'
        WHEN approx_cost_for_two BETWEEN 500 AND 1500 THEN 'Mid-range'
        ELSE 'Premium'
    END AS market_category
FROM zomato
WHERE approx_cost_for_two IS NOT NULL;

