--Table Employee
CREATE TABLE employee (
  emp_id INT,
  emp_name text,
  emp_phone INT,
  emp_email text,
  brunch_id INT
  );

INSERT INTO employee VALUES
(1, "Mona", 663987655,"mona@supercheap.com", 511),
(2, "Lily", 987887657, "lily@supercheap.com", 523),
(3, "Nana", 909543000, "nana@supercheap.com",515),
(4, "Blair",667089123, "blair@supercheap.com",511),
(5, "Rachel",565876444, "rachel@supercheap.com",515)
;

--Table giftshop
CREATE TABLE giftshop (
  brunch_id INT,
  brunch_address text,
  brunch_phone INT
  );

INSERT INTO giftshop VALUES
(511, "Terminal 21 Korat , Mittraphap RD, Nai Mueang, Mueang Nakhon Ratchasima , Nakhon Ratchasima" , 888777123),
(515, "Big C ChumPhuang ,ChumPhuang, ChumPhuang, Nakhon Ratchasima", 888765444),
(523, "Ptt Buri Ram ,Isan, Mueang Buri Ram , Buri Ram", 676888954)
;
--Table customer
CREATE TABLE customer(
  cust_id INT,
  cust_name text,
  cust_phone INT)
  ;

INSERT INTO customer VALUES
(011, "Vivi", 979676989),
(045, "PP", 098454878),
(048, "June", 458988389),
(051, "New", 675001342);


CREATE TABLE orders (
  orders_id INT,
  cust_id INT,
  brunch_id INT,
  payment_type INT,
  orders_amount number)
  ;

INSERT INTO orders VALUES
(1, 011 ,511 , 1, 100),
(2, 045 ,515 , 2 , 150),
(3, 048 ,515 , 1 , 99),
(4, 051 ,523 , 1 , 49);
  

CREATE TABLE orders_detail (
  orders_id INT,
  goods_id INT,
  orders_date date);
  
INSERT INTO orders_detail VALUES
(1,345, 23/02/2023),
(2,447, 23/02/2023),
(3,766, 24/02/2023),
(4, 676, 24/02/2023);
  
--table goods 
CREATE TABLE goods (
  goods_id INT,
  goods_name text,
  goods_price number);
  
INSERT INTO goods VALUES
  (345, "nemodoll", 100),
  (447, "ring", 50),
  (255, "vase", 199),
  (766, "bracelet",99),
  (676, "hairtie", 49);
  
CREATE TABLE payment (
  payment_type INT,
  payment_method text);

INSERT INTO payment VALUES
(1, "promtpay"),
(2, "cash"),
(3, "credit card");


.print
-- write subquery to find payment method do not use
SELECT payment_method, payment_type FROM payment
WHERE not EXISTS (SELECT payment_type
       FROM orders
       WHERE
  payment.payment_type = orders.payment_type);
  



