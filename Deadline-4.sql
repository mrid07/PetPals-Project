-- Deadline - 4

-- 10 Diverse queries containing various select, update, etc. commands showcasing adequate relational algebraic operations.
-- 3 Additional queries that violate contraints


-- 1. Query to update minimum wallet amount from NULL to the avg value of wallet

UPDATE wallet w
SET Amount = (
    SELECT AVG(tmp.Amount)
    FROM (
        SELECT Amount
        FROM wallet
        WHERE Amount IS NOT NULL
    ) tmp
)
WHERE w.Amount IS NULL;

-- 2. Query to view all users and their wallet amounts

SELECT u.User_id,
CONCAT(u.first_name, ' ', u.last_name) AS full_name,
w.Wallet_id, w.Amount
FROM user u
JOIN wallet w ON u.User_id = w.User_id;

-- 3. Query to view all user and their pets

SELECT u.User_id,
CONCAT(u.first_name, ' ', u.last_name) AS full_name,
p.Pet_ID,
p.Name AS pet_name
FROM user u
LEFT JOIN user_pets up ON u.User_id = up.user_id
LEFT JOIN pets p ON up.pet_id = p.Pet_ID;

-- 4. Query to find most sold products
SELECT p.product_id, p.name, p.product_type,
COUNT(po.product_id) AS total_sold
FROM product p
LEFT JOIN product_order po 
ON p.product_id = po.product_id
GROUP BY p.product_id, p.name, p.product_type
ORDER BY total_sold DESC;
    
-- 5. Query toUpdate product quantities based on product orders. Set product quantity to 0 if it goes below 0 after fulfilling orders; otherwise, subtract the ordered quantity.
UPDATE product p
JOIN product_order po ON p.Product_ID = po.product_id
SET p.Quantity = CASE
    WHEN (p.Quantity - po.Quantity) < 0 THEN 0
    ELSE (p.Quantity - po.Quantity)
END;

-- 6. Query to retrieve user reviews for a specific product: (Replace product_id with desired product_id)
SELECT CONCAT(u.first_name, ' ', u.last_name) AS full_name, pr.*
FROM product_review pr
JOIN user u ON pr.user_id = u.user_id
WHERE pr.product_id = 1;


-- 7. Query to find Average rating of each service
SELECT s.Service_ID, CONCAT(s.name, ' for ', s.Pet_type) as Service_Name,  COALESCE(AVG(sr.Rating), 0) AS Average_Rating
FROM service s
LEFT JOIN service_review sr ON s.Service_ID = sr.Service_ID
GROUP BY s.Service_ID;


-- 8. Query to list all the unoccupied employees for Pet Walking service who have rating greater than average rating.
Select e.employee_id, CONCAT(e.first_name, ' ', e.last_name) AS full_name
from employee e 
join employee_service es on e.employee_id = es.employee_id
where es.service_id = 2 and 
e.status = 'unoccupied' and 
e.rating > (select AVG(ee.rating) from employee ee);


-- 9. query to find the users who ordered a product with payment mode as COD
SELECT  CONCAT(u.first_name, ' ', u.last_name) AS User_name from user u where 
u.user_id in (select po.user_id from product_order po where 
po.order_id in (select ph.product_order_id from payment_and_history ph where 
ph.order_type = 'product' and ph.payment_mode = 'COD'))
order by yyyy;

-- 10. Top 5 most popular pet breed with its pet type among users, along with the total number of users who have that type of pet

SELECT pt.Type AS Most_Popular_Pet_Type, pt.Breed AS Most_Popular_Pet_Breed,
COUNT(u.User_id) AS Number_of_Users
FROM user u
JOIN user_pets up ON u.User_id = up.user_id
JOIN pets pt ON up.pet_id = pt.Pet_ID
GROUP BY pt.Type, pt.Breed
ORDER BY Number_of_Users DESC
LIMIT 5;


-- Queries that violate constraints 

-- Duplicate entry for unique constraint
INSERT INTO user (User_id, first_name, last_name, Email, dd, mm, yyyy, house_number, street_name, apt_number, city, state, pincode)
VALUES (21, 'Staffard', 'Fearn', 'sfearn0@sourceforge.net', 28, 3, 1977, '123', 'Main St', 'Apt 1', 'City1', 'State1', 12345);

-- Primary key can not be null
INSERT INTO pets (Pet_ID, Name, Breed, Age, Size, Type)
VALUES (null, 'Reagan', 'Labrador', 10, NULL, 'Dog');

-- Foreign key constraint fails
INSERT INTO user_pets (user_id, pet_id)
VALUES (1, 101);
