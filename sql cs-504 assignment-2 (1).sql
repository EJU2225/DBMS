
CREATE TABLE `customer` (
  `customer_id` int NOT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zip_code` int DEFAULT NULL,
  `street_name` varchar(45) DEFAULT NULL,
  `adress` varchar(45) NOT NULL,
  `review_id` varchar(45) NOT NULL,
  `order_id` varchar(45) NOT NULL,
  `product_id` varchar(45) NOT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
);





CREATE TABLE `orders` (
  `order_id` varchar(100) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `destination` varchar(45) DEFAULT NULL,
  `customer_id` varchar(100) DEFAULT NULL,
  `orientation` varchar(45) DEFAULT NULL,
  `products_id` int DEFAULT NULL,
  PRIMARY KEY (`order_id`)
);



CREATE TABLE `product` (
  `product_id` int NOT NULL,
  `productname` varchar(45) NOT NULL,
  `quantity` int DEFAULT NULL,
  `physical_or_digital` varchar(45) DEFAULT NULL,
  `price` int NOT NULL,
  `review_id` varchar(45) NOT NULL,
  `customer_id` varchar(45) NOT NULL,
  PRIMARY KEY (`product_id`)
);


CREATE TABLE `review` (
  `review_id` varchar(50) NOT NULL,
  `comments` varchar(100) DEFAULT NULL,
  `rating` varchar(45) DEFAULT NULL,
  `review_customer_id` int DEFAULT NULL,
  `customer_id` varchar(45) DEFAULT NULL,
  `review` varchar(45) DEFAULT NULL,
  `review_product_id` int NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `customer_id_idx` (`customer_id`),
  KEY `review_customer_id_idx` (`review_customer_id`),
  CONSTRAINT `review_customer_id` FOREIGN KEY (`review_customer_id`) REFERENCES `customer` (`customer_id`)
);

CREATE TABLE `tracking` (
  `tracking_id` varchar(50) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `order_id` varchar(45) DEFAULT NULL
);





--

select * from customer;
select * from orders;
select * from product;
select * from review;
select * from tracking;



delete from review;
delete from tracking;
delete from orders;
delete from product;
delete from customer;



INSERT INTO customer (customer_id, city, state, zip_code, street_name, adress, review_id, order_id, product_id,customer_name) 
VALUES (12, 'Dallas', 'TX', 75201, 'Elm St', '909 Elm St', 'rev909', 'ord909', 'prod909','Brown');
INSERT INTO customer (customer_id, city, state, zip_code, street_name, adress, review_id, order_id, product_id,customer_name) 
VALUES (13, 'Washington DC', 'DC', 20001, 'Pennsylvania Ave', '1010 Pennsylvania Ave', 'rev1010', 'ord1010', 'prod1010','Davis');
INSERT INTO customer (customer_id, city, state, zip_code, street_name, adress, review_id, order_id, product_id,customer_name) 
VALUES (14, 'Austin', 'TX', 78701, '6th St', '1111 6th St', 'rev1111', 'ord1111', 'prod1111','David Lee');
INSERT INTO customer (customer_id, city, state, zip_code, street_name, adress, review_id, order_id, product_id,customer_name) 
VALUES (15, 'Nashville', 'TN', 37201, 'Broadway', '1212 Broadway', 'rev1212', 'ord1212', 'prod1212','Lee');
INSERT INTO customer (customer_id, city, state, zip_code, street_name, adress, review_id, order_id, product_id,customer_name) 
VALUES (16, 'New Orleans', 'LA', 70112, 'Bourbon St', '1313 Bourbon St', 'rev1313', 'ord1313', 'prod1313','David');
INSERT INTO customer (customer_id, city, state, zip_code, street_name, adress, review_id, order_id, product_id,customer_name) 
VALUES (17, 'Seattle', 'WA', 98101, '1st Ave', '1414 1st Ave', 'rev1414', 'ord1414', 'prod1414','Davis');
INSERT INTO customer (customer_id, city, state, zip_code, street_name, adress, review_id, order_id, product_id,customer_name) 
VALUES (18, 'San Diego', 'CA', 92101, 'Gaslamp Quarter', '1515 Gaslamp Quarter', 'rev1515', 'ord1515', 'prod1515','David');
INSERT INTO customer (customer_id, city, state, zip_code, street_name, adress, review_id, order_id, product_id,customer_name) 
VALUES (19, 'Portland', 'OR', 97201, 'Burnside St', '1616 Burnside St', 'rev1616', 'ord1616', 'prod1616','Davis');
INSERT INTO customer (customer_id, city, state, zip_code, street_name, adress, review_id, order_id, product_id,customer_name) 
VALUES (20, 'Las Vegas', 'NV', 22030, 'Las Vegas Blvd', '1717 Las Vegas Blvd', 'rev1717', 'ord1717', 'prod1717','John smith');
INSERT INTO customer (customer_id, city, state, zip_code, street_name, adress, review_id, order_id, product_id,customer_name) 
VALUES (21, 'Boston', 'MA', 22030, 'Hanover St', '1818 Hanover St', 'rev1818', 'ord1818', 'prod1818','Brown');






INSERT INTO orders (order_id, status, date, destination, customer_id, orientation,products_id) 
VALUES ('ord909', 'delivered', '2023-02-25 15:50:00', '234 Pine Ave', 12 , 'vertical',9);
INSERT INTO orders (order_id, status, date, destination, customer_id, orientation,products_id) 
VALUES ('ord1010', 'pending', '2023-02-24 19:00:00', '567 Cedar St', 13 , 'horizontal',10);
INSERT INTO orders (order_id, status, date, destination, customer_id, orientation,products_id) 
VALUES ('ord1111', 'processing', '2023-02-23 09:10:00', '890 Oak Ln',14 , 'vertical',11);
INSERT INTO orders (order_id, status, date, destination, customer_id, orientation,products_id) 
VALUES ('ord1212', 'shipped', '2023-02-22 12:20:00', '123 Maple Blvd', 15 , 'horizontal',12);
INSERT INTO orders (order_id, status, date, destination, customer_id, orientation,products_id) 
VALUES ('ord1313', 'delivered', '2023-02-21 15:30:00', '456 Pine Ave', 16 , 'vertical',13);
INSERT INTO orders  (order_id, status, date, destination, customer_id, orientation,products_id) 
VALUES ('ord1414', 'pending', '2023-02-20 18:40:00', '789 Cedar St', 17 , 'horizontal',14);
INSERT INTO orders (order_id, status, date, destination, customer_id, orientation,products_id) 
VALUES ('ord1515', 'processing', '2023-02-19 11:50:00', '321 Oak Ln', 18, 'vertical',15);
INSERT INTO orders (order_id, status, date, destination, customer_id, orientation,products_id) 
VALUES ('ord1616', 'shipped', '2023-02-18 14:00:00', '654 Pine Blvd',19, 'horizontal',16);
INSERT INTO orders (order_id, status, date, destination, customer_id, orientation,products_id) 
VALUES ('ord1717', 'cancelled', '2023-02-17 16:10:00', '987 Cedar St', 20, 'vertical',17);
INSERT INTO orders (order_id, status, date, destination, customer_id, orientation,products_id) 
VALUES ('ord1818', 'stop', '2023-02-16 19:20:00', '234 Oak Ave', 21 , 'horizontal',18);





INSERT INTO product (product_id, productname, quantity, physical_or_digital, price, review_id, customer_id) 
VALUES (9, 'Apple TV 4K', 4, 'physical', 179, 'R901', 12);
INSERT INTO product (product_id, productname, quantity, physical_or_digital, price, review_id, customer_id) 
VALUES (10, 'HomePod mini', 2, 'physical', 99, 'R910', 13);
INSERT INTO product (product_id, productname, quantity, physical_or_digital, price, review_id, customer_id) 
VALUES (11, 'Data Science for Business', 6, 'physical', 29, 'R911', 14);
INSERT INTO product (product_id, productname, quantity, physical_or_digital, price, review_id, customer_id) 
VALUES (12, 'iMac', 1, 'physical', 1299, 'R912', 15);
INSERT INTO product (product_id, productname, quantity, physical_or_digital, price, review_id, customer_id) 
VALUES (13, 'Mac Pro', 1, 'physical', 5999, 'R913', 16);
INSERT INTO product (product_id, productname, quantity, physical_or_digital, price, review_id, customer_id) 
VALUES (14, 'Final Cut Pro X', 10, 'digital', 299, 'R914', 17);
INSERT INTO product (product_id, productname, quantity, physical_or_digital, price, review_id, customer_id) 
VALUES (15, 'Logic Pro X', 8, 'digital', 199, 'R915', 18);
INSERT INTO product (product_id, productname, quantity, physical_or_digital, price, review_id, customer_id) 
VALUES (16, 'GarageBand', 50, 'digital', 0, 'R916', 19);
INSERT INTO product (product_id, productname, quantity, physical_or_digital, price, review_id, customer_id) 
VALUES (17, 'Apple Music Subscription', 30, 'digital', 9.99, 'R917', 20);
INSERT INTO product (product_id, productname, quantity, physical_or_digital, price, review_id, customer_id) 
VALUES (18, 'Apple One Subscription', 20, 'digital', 14.95, 'R918', 21);




INSERT INTO review (review_id, comments, rating,review_customer_id,review_product_id) VALUES ('r015', 'Product exceeded my expectations', 5,12,9);
INSERT INTO review (review_id, comments, rating,review_customer_id,review_product_id) VALUES ('r016', 'Delivery was delayed, but product was good', 3,13,10);
INSERT INTO review (review_id, comments, rating,review_customer_id,review_product_id) VALUES ('r017', 'Not happy with the product quality', 2,14,11);
INSERT INTO review (review_id, comments, rating,review_customer_id,review_product_id) VALUES ('r018', 'The product is exactly as described', 4,15,12);
INSERT INTO review (review_id, comments, rating,review_customer_id,review_product_id) VALUES ('r019', 'Product works great, no issues', 5,16,13);
INSERT INTO review (review_id, comments, rating,review_customer_id,review_product_id) VALUES ('r020', 'The product was a bit expensive, but worth it', 4,17,14);
INSERT INTO review (review_id, comments, rating,review_customer_id,review_product_id) VALUES ('r021', 'Product arrived in perfect condition', 5,18,15);
INSERT INTO review (review_id, comments, rating,review_customer_id,review_product_id) VALUES ('r022', 'Product is not as described', 2,19,16);
INSERT INTO review (review_id, comments, rating,review_customer_id,review_product_id) VALUES ('r023', 'Great communication from seller', 4,20,17);
INSERT INTO review (review_id, comments, rating,review_customer_id,review_product_id) VALUES ('r024', 'Product did not work as expected', 2,21,18);






INSERT INTO tracking (tracking_id, address, date, order_id) VALUES ('TRK011', '7890 Orange St, Anytown, USA', '2022-01-11 22:15:00', 'ORD011');
INSERT INTO tracking (tracking_id, address, date, order_id) VALUES ('TRK012', '2345 Mango St, Anytown, USA', '2022-01-12 23:30:00', 'ORD012');
INSERT INTO tracking (tracking_id, address, date, order_id) VALUES ('TRK013', '6789 Grape St, Anytown, USA', '2022-01-13 12:45:00', 'ORD013');
INSERT INTO tracking (tracking_id, address, date, order_id) VALUES ('TRK014', '0123 Kiwi St, Anytown, USA', '2022-01-14 13:00:00', 'ORD014');
INSERT INTO tracking (tracking_id, address, date, order_id) VALUES ('TRK015', '4567 Peach St, Anytown, USA', '2022-01-15 14:15:00', 'ORD015');
INSERT INTO tracking (tracking_id, address, date, order_id) VALUES ('TRK006', '890 Cedar St, Anytown, USA', '2022-01-06 17:00:00', 'ORD006');
INSERT INTO tracking (tracking_id, address, date, order_id) VALUES ('TRK007', '1234 Birch St, Anytown, USA', '2022-01-07 18:15:00', 'ORD007');
INSERT INTO tracking (tracking_id, address, date, order_id) VALUES ('TRK008', '5678 Pineapple St, Anytown, USA', '2022-01-08 19:30:00', 'ORD008');
INSERT INTO tracking (tracking_id, address, date, order_id) VALUES ('TRK009', '9012 Cherry St, Anytown, USA', '2022-01-09 20:45:00', 'ORD009');
INSERT INTO tracking (tracking_id, address, date, order_id) VALUES ('TRK010', '3456 Lemon St, Anytown, USA', '2022-01-10 21:00:00', 'ORD010');

-- 1. List the names of all customers who have reviewed at least one product.

SELECT DISTINCT customer.customer_name
FROM customer
INNER JOIN review
ON customer.customer_id = review.review_customer_id;

-- 2. List the names of products which have a rating of 4 or better.

SELECT p.productname
FROM product p,review r
WHERE r.rating >=4 and p.customer_id = r.review_customer_id;


-- 3. List the Zip Codes of all customers who have purchased the book “Data Science for
-- Business” (which should be a physical product).

SELECT DISTINCT c.zip_code
FROM customer c
INNER JOIN product p
ON c.customer_id = p.customer_id
WHERE p.productname = 'Data Science for Business'
AND p.physical_or_digital = 'physical';


-- 4. Count the number of orders that have made a stop as part of their tracking history in the
-- zip code 22030.

SELECT COUNT(DISTINCT o.status) as count
FROM orders o, customer c
where o.order_id=c.order_id and c.zip_code LIKE '%22030%';


-- 5. List the usernames of all customers who have purchased two or more digital products.
SELECT distinct c.customer_name
FROM customer c , product p 
where p.physical_or_digital="digital";

-- 6. List the average rating of each product that has been included in one or more canceled
orders.

SELECT p.product_id, AVG(rating) AS average_rating
FROM product p,review r,orders o
where p.product_id = r.review_product_id and o.customer_id = p.customer_id
and  o.status = 'cancelled'
GROUP BY p.product_id;
