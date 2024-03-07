-- Deadline 3
-- Database schema and indexes creation with integrity constraints and data insertion.

create database petpals;
use petpals;

CREATE TABLE user (
  User_id int NOT NULL,
  first_name varchar(50) DEFAULT NULL,
  last_name varchar(50) DEFAULT NULL,
  dd int DEFAULT NULL,
  mm int DEFAULT NULL,
  yyyy int DEFAULT NULL,
  Email varchar(100) DEFAULT NULL,
  house_number varchar(45) DEFAULT NULL,
  street_name varchar(100) DEFAULT NULL,
  apt_number varchar(100) DEFAULT NULL,
  city varchar(45) DEFAULT NULL,
  state varchar(45) DEFAULT NULL,
  pincode int DEFAULT NULL,
  PRIMARY KEY (User_id),
  UNIQUE KEY Email (Email)
);


INSERT INTO user (User_id, first_name, last_name, Email, dd, mm, yyyy, house_number, street_name, apt_number, city, state, pincode) VALUES
    (1, 'Staffard', 'Fearn', 'sfearn0@sourceforge.net', 28, 3, 1977, '123', 'Main St', 'Apt 1', 'City1', 'State1', 12345),
    (2, 'Janifer', 'Simchenko', 'jsimchenko1@joomla.org', 2, 12, 1999, '456', 'Oak St', 'Apt 2', 'City2', 'State2', 67890),
    (3, 'Guntar', 'Piesing', 'gpiesing2@over-blog.com', 20, 4, 1971, '789', 'Maple St', 'Apt 3', 'City3', 'State3', 13579),
    (4, 'Riane', 'Casaccia', 'rcasaccia3@vistaprint.com', 21, 8, 1997, '101', 'Pine St', 'Apt 4', 'City4', 'State4', 24680),
    (5, 'Claresta', 'Edbrooke', 'cedbrooke4@census.gov', 30, 11, 1946, '202', 'Cedar St', 'Apt 5', 'City5', 'State5', 97531),
    (6, 'Cherianne', 'Shann', 'cshann5@ibm.com', 16, 6, 1972, '303', 'Birch St', 'Apt 6', 'City6', 'State6', 86420),
    (7, 'Fulton', 'Gummie', 'fgummie6@google.nl', 29, 10, 1994, '404', 'Spruce St', 'Apt 7', 'City7', 'State7', 75309),
    (8, 'Bennie', 'Josephoff', 'bjosephoff7@archive.org', 31, 10, 1997, '505', 'Fir St', 'Apt 8', 'City8', 'State8', 20817),
    (9, 'Clementia', 'Driuzzi', 'cdriuzzi8@oaic.gov.au', 29, 4, 1952, '606', 'Redwood St', 'Apt 9', 'City9', 'State9', 61349),
    (10, 'Kerry', 'Ingre', 'kingre9@angelfire.com', 24, 5, 2002, '707', 'Mahogany St', 'Apt 10', 'City10', 'State10', 79524),
    (11, 'Joli', 'Crease', 'jcreasea@gov.uk', 11, 3, 1973, '808', 'Beech St', 'Apt 11', 'City11', 'State11', 46803),
    (12, 'Kynthia', 'McMurtyr', 'kmcmurtyrb@pagesperso-orange.fr', 7, 1, 1992, '909', 'Oakwood St', 'Apt 12', 'City12', 'State12', 73210),
    (13, 'Heath', 'Ullyatt', 'hullyattc@soundcloud.com', 16, 6, 1953, '1010', 'Palm St', 'Apt 13', 'City13', 'State13', 91425),
    (14, 'Winnie', 'Meadows', 'wmeadowsd@indiegogo.com', 8, 4, 1955, '1111', 'Cypress St', 'Apt 14', 'City14', 'State14', 62738),
    (15, 'Corrie', 'Sparwell', 'csparwelle@theguardian.com', 6, 2, 1968, '1212', 'Chestnut St', 'Apt 15', 'City15', 'State15', 41856),
    (16, 'Haskel', 'Kubasiewicz', 'hkubasiewiczf@utexas.edu', 13, 12, 1962, '1313', 'Maplewood St', 'Apt 16', 'City16', 'State16', 53749),
    (17, 'Torey', 'Izakovitz', 'tizakovitzg@odnoklassniki.ru', 31, 5, 1939, '1414', 'Pinecrest St', 'Apt 17', 'City17', 'State17', 30682),
    (18, 'Daryn', 'Dameisele', 'ddameiseleh@constantcontact.com', 13, 4, 1937, '1515', 'Sprucewood St', 'Apt 18', 'City18', 'State18', 92513),
    (19, 'Maurise', 'Burtwell', 'mburtwelli@aboutads.info', 24, 12, 1955, '1616', 'Cedarwood St', 'Apt 19', 'City19', 'State19', 60472),
    (20, 'Barde', 'Klimochkin', 'bklimochkinj@cornell.edu', 24, 8, 1990, '1717', 'Birchwood St', 'Apt 20', 'City20', 'State20', 78901);

-- Indexes for the 'user' table
CREATE INDEX idx_user_email ON user (Email);
CREATE INDEX idx_user_state ON user (state);

CREATE TABLE pets (
  Pet_ID int NOT NULL,
  Name varchar(45) DEFAULT NULL,
  Breed varchar(45) DEFAULT NULL,
  Age int DEFAULT NULL,
  Size varchar(45) DEFAULT NULL,
  Type varchar(45) DEFAULT NULL,
  PRIMARY KEY (Pet_ID)
);


INSERT INTO pets (Pet_ID, Name, Breed, Age, Size, Type)
VALUES
(1, 'Reagan', 'Labrador', 10, NULL, 'Dog'),
(2, 'Erhart', 'Golden Retriever', 18, NULL, 'Dog'),
(3, 'Elvis', 'French Bulldog', 3, NULL, 'Dog'),
(4, 'Chilton', 'Retriever', 14, NULL, 'Dog'),
(5, 'Brody', 'Labrador', 13, NULL, 'Dog'),
(6, 'Sidonia', 'Labrador', 16, NULL, 'Dog'),
(7, 'Roxie', 'Retriever', 12, NULL, 'Dog'),
(8, 'Lazare', 'French Bulldog', 14, NULL, 'Dog'),
(9, 'Layla', 'Golden Retriever', 11, NULL, 'Dog'),
(10, 'Suzanne', 'German Shepherd', 19, NULL, 'Dog'),
(11, 'Boone', 'German Shepherd', 8, NULL, 'Dog'),
(12, 'Alaine', 'Poodle', 2, NULL, 'Dog'),
(13, 'Brietta', 'French Bulldog', 16, NULL, 'Dog'),
(14, 'Reena', 'German Shepherd', 16, NULL, 'Dog'),
(15, 'Law', 'Labrador', 8, NULL, 'Dog'),
(16, 'Misty', 'Poodle', 5, NULL, 'Dog'),
(17, 'Rocky', 'Labrador', 7, NULL, 'Dog'),
(18, 'Daisy', 'Golden Retriever', 6, NULL, 'Dog'),
(19, 'Buddy', 'Beagle', 4, NULL, 'Dog'),
(20, 'Sasha', 'Husky', 2, NULL, 'Dog'),
(21, 'Coco', 'Pomeranian', 3, NULL, 'Dog'),
(22, 'Teddy', 'Shih Tzu', 5, NULL, 'Dog'),
(23, 'Zoe', 'Dachshund', 2, NULL, 'Dog'),
(24, 'Milo', 'Boxer', 4, NULL, 'Dog'),
(25, 'Luna', 'Siberian Husky', 1, NULL, 'Dog'),
(26, 'Max', 'Great Dane', 3, NULL, 'Dog'),
(27, 'Lucy', 'Cavalier King Charles', 2, NULL, 'Dog'),
(28, 'Oliver', 'Doberman', 5, NULL, 'Dog'),
(29, 'Ziggy', 'Pug', 2, NULL, 'Dog'),
(30, 'Sadie', 'Rottweiler', 4, NULL, 'Dog');

-- Indexes for the 'pets' table
CREATE INDEX idx_pets_type ON pets (Type);


CREATE TABLE user_pets (
    user_pet_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    pet_id INT,
    acquisition_date DATE,
    FOREIGN KEY (user_id) REFERENCES user(User_id),
    FOREIGN KEY (pet_id) REFERENCES pets(Pet_ID)
);

INSERT INTO user_pets (user_id, pet_id) VALUES
    (1, 1), (1, 3), (1, 5), (1, 7), (1, 9),
    (2, 2), (2, 4), (2, 6), (2, 8), (2, 10),
    (3, 11), (3, 13),
    (4, 12), (4, 14), (4, 16), (4, 18), (4, 20),
    (5, 21),(5, 27), (5, 29),
    (6, 22), (6, 24), (6, 26), (6, 28), (6, 30);

-- Indexes for the 'user_pets' table
CREATE INDEX idx_user_pets_user_id ON user_pets (user_id);
CREATE INDEX idx_user_pets_pet_id ON user_pets (pet_id);

    
    
CREATE TABLE service (
  Service_ID int NOT NULL,
  Name varchar(45) DEFAULT NULL,
  Price int DEFAULT NULL,
  Duration int DEFAULT NULL,
  Pet_Type varchar(45) DEFAULT NULL,
  PRIMARY KEY (Service_ID)
);


INSERT INTO service (Service_ID, Name, Price, Duration, Pet_Type)
VALUES
(1, 'Pet Taxi', 999, 60, 'Dog'),
(2, 'Pet Walking', 999, 60, 'Dog'),
(3, 'Grooming', 999, 60, 'Cat'),
(4, 'Pet Taxi', 999, 60, 'Dog'),
(5, 'Grooming', 999, 60, 'Cat'),
(6, 'Pet Training', 999, 60, 'Cat');

-- Indexes for the 'service' table
CREATE INDEX idx_service_pet_type ON service (Pet_Type); 


CREATE TABLE employee (
  Employee_ID int NOT NULL,
  first_name varchar(45) DEFAULT NULL,
  last_name varchar(45) DEFAULT NULL,
  dd int DEFAULT NULL,
  mm int DEFAULT NULL,
  yyyy int DEFAULT NULL,
  Email varchar(100) DEFAULT NULL,
  Experience int DEFAULT NULL,
  Status varchar(45) DEFAULT NULL,
  Rating int DEFAULT NULL,
  PRIMARY KEY (Employee_ID)
);

INSERT INTO employee (Employee_ID, first_name, last_name, dd, mm, yyyy, Email, Experience, Status, Rating) VALUES
(1, 'Erda', 'Merrell', 12, 5, 1976, 'emerrell0@bbc.co.uk', 3, 'Unoccupied', 10),
(2, 'Elsy', 'Doore', 13, 7, 2000, 'edoore1@miitbeian.gov.cn', 1, 'Unoccupied', 7),
(3, 'Odell', 'Mochan', 14, 6, 1997, 'omochan2@histats.com', 9, 'Unoccupied', 10),
(4, 'Jewelle', 'Iwaszkiewicz', 13, 11, 1984, 'jiwaszkiewicz3@wikimedia.org', 10, 'Unoccupied',10),
(5, 'Lenette', 'Jaycock', 19, 1, 1973, 'ljaycock4@cisco.com', 4, 'Unoccupied', 8),
(6, 'Arielle', 'Ortsmann', 7, 9, 1983, 'aortsmann5@blogger.com', 10, 'Unoccupied', 7),
(7, 'Raddy', 'Petrina', 27, 4, 1990, 'rpetrina6@squarespace.com', 8, 'Unoccupied', 8),
(8, 'Vanya', 'Jotham', 15, 11, 1979, 'vjotham7@tripadvisor.com', 10, 'Occupied', 8),
(9, 'Duff', 'Tales', 18, 4, 1997, 'dtales8@chicagotribune.com', 2, 'Occupied', 7),
(10, 'Lula', 'Stanbridge', 7, 4, 1972, 'lstanbridge9@skype.com', 5, 'Occupied', 8),
(11, 'Cecilio', 'Shirland', 21, 10, 1997, 'cshirlanda@hc360.com', 6, 'Unoccupied', 7),
(12, 'Atlanta', 'Roan', 28, 1, 1993, 'aroanb@1688.com', 2, 'Unoccupied', 8),
(13, 'Fairleigh', 'Spurling', 3, 8, 1982, 'fspurlingc@ustream.tv', 6, 'Unoccupied', 9),
(14, 'Cissiee', 'Allmark', 10, 2, 2001, 'callmarkd@pen.io', 1, 'Unoccupied', 8),
(15, 'Nissa', 'Whild', 24, 8, 1992, 'nwhilde@linkedin.com', 3, 'Unoccupied', 9),
(16, 'Rochelle', 'Crisell', 11, 1, 1979, 'rcrisellf@icq.com', 2, 'Occupied', 10),
(17, 'Agnesse', 'Witton', 21, 7, 1991, 'awittong@aboutads.info', 7, 'Unoccupied', 9),
(18, 'Bessie', 'Izzat', 20, 1, 1976, 'bizzath@dropbox.com', 7, 'Unoccupied', 10),
(19, 'Druci', 'Daintier', 18, 9, 1978, 'ddaintieri@jimdo.com', 10, 'Unoccupied', 10),
(20, 'Sandor', 'Althrop', 19, 9, 1987, 'salthropj@gnu.org', 1, 'Unoccupied', 9);

-- Indexes for the 'employee' table
CREATE INDEX idx_employee_email ON employee (Email);
CREATE INDEX idx_employee_status ON employee (Status);

CREATE TABLE product (
  Product_ID int NOT NULL,
  Name varchar(50) DEFAULT NULL,
  Brand varchar(45) DEFAULT NULL,
  Description varchar(100) DEFAULT NULL,
  Rating int DEFAULT NULL,
  Product_Type varchar(45) DEFAULT NULL,
  Pet_Category varchar(45) DEFAULT NULL,
  Quantity int DEFAULT NULL,
  Price int DEFAULT NULL,
  PRIMARY KEY (Product_ID)
);


INSERT INTO product(Product_ID, Name, Brand, Description, Rating, Product_Type, Pet_category, Quantity, Price)
VALUES
(1, 'Dry Food', 'Poochmates', 'High-quality dry food for cats. Provides essential nutrients for a healthy feline diet.', 7, 'Toy', 'Cat', 8, 220),
(2, 'Dry Food', 'Petwale', 'Premium dry food for cats. Formulated to support overall health and vitality.', 10, 'Toy', 'Cat', 12, 1100),
(3, 'Canned Food', 'The Pet Boutique India', 'Delicious canned food for dogs. Made with high-quality ingredients for a nutritious meal.', 8, 'Clothing', 'Dog', 8, 400),
(4, 'Food Toppers', 'Pawlaland', 'Tasty food toppers for dogs. Enhances the flavor and nutrition of your pet\'s meal.', 4, 'Food', 'Dog', 8, 1100),
(5, 'Dry Food', 'Scooby Doo', 'Nutritious dry food for dogs. Supports healthy digestion and strong muscles.', 8, 'Toy', 'Dog', 14, 400),
(6, 'Treats', 'Petco', 'Irresistible treats for dogs. Perfect for training or rewarding good behavior.', 4, 'Grooming Essentials', 'Dog', 13, 1100),
(7, 'Treats', 'Petwale', 'Yummy treats for cats. Made with real meat for a delicious snack.', 8, 'Bedding and Furniture', 'Cat', 13, 300),
(8, 'Canned Food', 'Poochmates', 'High-quality canned food for dogs. Provides complete and balanced nutrition.', 7, 'Food', 'Dog', 14, 200),
(9, 'Food Toppers', 'Petco', 'Delicious food toppers for dogs. Adds flavor and nutrients to any meal.', 10, 'Food', 'Dog', 14, 400),
(10, 'Dry Food', 'Pawlaland', 'Soft and comfortable bedding for cats. Provides a cozy sleeping spot for your pet.', 6, 'Bedding and Furniture', 'Cat', 1, 500),
(11, 'Canned Food', 'Petco', 'Nourishing canned food for dogs. Supports overall health and well-being.', 5, 'Health & Wellness', 'Dog', 4, 200),
(12, 'Treats', 'The Pet Boutique India', 'Tasty treats for cats. Helps maintain dental health and freshens breath.', 8, 'Grooming Essentials', 'Cat', 5, 220),
(13, 'Dry Food', 'The Pet Boutique India', 'Wholesome dry food for cats. Provides essential nutrients for a balanced diet.', 7, 'Grooming Essentials', 'Cat', 10, 200),
(14, 'Treats', 'Pawlaland', 'Delicious treats for dogs. Made with natural ingredients for a tasty snack.', 6, 'Clothing', 'Dog', 3, 220),
(15, 'Food Toppers', 'The Pet Boutique India', 'Flavorful food toppers for dogs. Enhances the taste and texture of meals.', 9, 'Leash & Collars', 'Dog', 7, 1100),
(16, 'Canned Food', 'Scooby Doo', 'High-quality canned food for cats. Provides essential nutrients for feline health.', 8, 'Toy', 'Cat', 7, 1100),
(17, 'Food Toppers', 'Petco', 'Nutritious food toppers for dogs. Adds flavor and variety to your pet\'s diet.', 10, 'Bedding and Furniture', 'Dog', 13, 400),
(18, 'Food Toppers', 'Pawlaland', 'Premium food toppers for dogs. Adds flavor and nutrients to every meal.', 8, 'Leash & Collars', 'Dog', 7, 400),
(19, 'Food Toppers', 'Poochmates', 'Delicious food toppers for cats. Enhances the flavor and texture of meals.', 7, 'Clothing', 'Cat', 4, 800),
(20, 'Canned Food', 'Petwale', 'High-quality canned food for dogs. Made with real meat for a tasty meal.', 9, 'Food', 'Dog', 11, 1100);

-- Indexes for the 'product' table
CREATE INDEX idx_product_name ON product (Name);
CREATE INDEX idx_product_brand ON product (Brand);
CREATE INDEX idx_product_rating ON product (Rating);
CREATE INDEX idx_product_type ON product (Product_Type);
CREATE INDEX idx_product_pet_category ON product (Pet_Category);



CREATE TABLE product_order (
  Order_ID int NOT NULL,
  Status varchar(45) DEFAULT NULL,
  Quantity int NOT NULL,
  Order_Date date NOT NULL,
  User_ID int NOT NULL,
  product_id int not null,
  PRIMARY KEY (Order_ID),
 --  CONSTRAINT Order_ID_in_product_order FOREIGN KEY (Order_ID) REFERENCES payment_and_history (Product_order_ID),
  CONSTRAINT Product_ID_in_product_order FOREIGN KEY (product_id) REFERENCES product (Product_ID),
  CONSTRAINT User_ID_in_product_order FOREIGN KEY (User_ID) REFERENCES user (User_id)
);

INSERT INTO product_order (Order_ID, Status, Quantity, Order_Date, User_ID, product_id)
VALUES
(1, 'Delivered', 6, '2023-12-08', 1,2),
(2, 'Delivered', 9, '2020-11-18', 2,1),
(3, 'Delivered', 6, '2020-08-21', 3,3),
(4, 'Delivered', 6, '2023-06-04', 4,5),
(5, 'Delivered', 6, '2023-09-28', 5,1),
(6, 'Delivered', 9, '2021-05-12', 1,4),
(7, 'Delivered', 7, '2023-02-20', 7,7),
(8, 'Delivered', 10, '2022-12-03', 8,9),
(9, 'Delivered', 9, '2020-01-24', 9,5),
(10, 'Delivered', 10, '2023-05-02', 10,7),
(11, 'Delivered', 10, '2022-04-29', 11,6),
(12, 'Delivered', 10, '2023-10-24', 1,1),
(13, 'Delivered', 10, '2023-04-12', 13,2),
(14, 'Delivered', 3, '2020-08-20', 14,15),
(15, 'Delivered', 10, '2022-12-27', 1,14),
(16, 'Delivered', 5, '2022-03-09', 16,6),
(17, 'Delivered', 3, '2022-01-05', 17,2),
(18, 'Delivered', 8, '2022-02-03', 18,20),
(19, 'Delivered', 4, '2020-04-30', 1,15),
(20, 'Delivered', 5, '2022-03-20', 1,14);

-- Indexes for the 'product_order' table
CREATE INDEX idx_product_order_status ON product_order (Status);
CREATE INDEX idx_product_order_user_id ON product_order (User_ID);


CREATE TABLE payment_and_history (
  Payment_ID int NOT NULL,
  Amount int DEFAULT NULL,
  Payment_mode varchar(100) DEFAULT NULL,
  Order_type varchar(100) DEFAULT NULL,
  Payment_Date varchar(10) DEFAULT NULL,
  Product_Order_ID int DEFAULT NULL,
  Service_Order_ID int DEFAULT NULL,
  PRIMARY KEY (Payment_ID),
  CONSTRAINT paymnethistory_ibfk_1 FOREIGN KEY (Product_Order_ID) REFERENCES product_order (Order_ID),
  CONSTRAINT paymnethistory_ibfk_2 FOREIGN KEY (Service_Order_ID) REFERENCES service (Service_ID)
);

INSERT INTO payment_and_history (Payment_ID, Amount, Payment_mode, Order_type, Payment_Date, Product_Order_ID, Service_Order_ID) VALUES
(1, 8, 'Debit Card', 'Product', '2020-12-07', 1, NULL),
(2, 2, 'Credit Card', 'Product', '2022-05-24', 2, NULL),
(3, 7, 'COD', 'Product', '2020-04-04', 3, NULL),
(4, 6, 'Others', 'Product', '2023-03-17', 4, NULL),
(5, 7, 'Others', 'Product', '2020-03-14', 5, NULL),
(6, 2, 'UPI', 'Service', '2022-07-30', NULL, 1),
(7, 9, 'Debit Card', 'Service', '2021-11-25', NULL, 2),
(8, 10, 'UPI', 'Product', '2023-07-11', 6, NULL),
(9, 9, 'Others', 'Product', '2021-06-11', 7, NULL),
(10, 2, 'UPI', 'Product', '2023-12-17', 8, NULL),
(11, 2, 'Others', 'Product', '2022-04-15', 9, NULL),
(12, 9, 'Debit Card', 'Service', '2022-05-03', NULL, 3),
(13, 1, 'UPI', 'Service', '2022-02-06', NULL, 4),
(14, 8, 'COD', 'Service', '2020-11-10', NULL, 5),
(15, 3, 'UPI', 'Product', '2023-05-22', 10, NULL),
(16, 5, 'UPI', 'Service', '2020-05-11', NULL, 6),
(17, 2, 'COD', 'Product', '2020-04-28', 11, NULL),
(18, 8, 'COD', 'Product', '2020-03-07', 12, NULL),
(19, 10, 'Others', 'Product', '2020-05-09', 13, NULL),
(20, 7, 'UPI', 'Service', '2023-07-28', NULL, 3);


-- Indexes for the 'payment_and_history' table
CREATE INDEX idx_payment_history_amount ON payment_and_history (Amount);
CREATE INDEX idx_payment_history_payment_date ON payment_and_history (Payment_Date);
CREATE INDEX idx_payment_history_product_order_id ON payment_and_history (Product_Order_ID);
CREATE INDEX idx_payment_history_service_order_id ON payment_and_history (Service_Order_ID);

CREATE TABLE product_review (
  review_ID INT NOT NULL,
  Product_ID INT NOT NULL,
  User_id int not null,
  Rating INT DEFAULT NULL,
  Date VARCHAR(10) DEFAULT NULL,
  Description VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (review_ID),
  CONSTRAINT Product_ID_in_product_review FOREIGN KEY (Product_ID) REFERENCES product (Product_ID),
  CONSTRAINT User_ID_in_product_review FOREIGN KEY (User_id) REFERENCES user (User_id)
);

-- INSERT INTO product_review (review_ID, product_id, user_ID, Rating, Date, Description)
-- VALUES
-- (1, 1, 7, '24-03-2022', 'The dry food was innovative and kept my pet entertained for hours.'),
-- (2, 2, 7, '30-05-2023', 'The dry food was of high quality and fit my pet perfectly.'),
-- (3, 3, 8, '21-03-2022', 'The canned food was easy to use and effective in removing loose fur.'),
-- (4, 4, 4, '09-11-2020', 'The food toppers did not meet expectations and broke after minimal use.'),
-- (5, 5, 7, '10-07-2021', 'The dry food was fresh and my pet enjoyed it.'),
-- (6, 6, 10, '26-11-2021', 'The treats exceeded expectations and became my pet\'s favorite.'),
-- (7, 7, 10, '20-12-2021', 'The treats were stylish and well-made, my pet looked adorable in it.'),
-- (8, 8, 3, '29-10-2023', 'The canned food was difficult to handle and did not work as expected.'),
-- (9, 9, 6, '22-12-2020', 'The food toppers had a strange smell and my pet refused to eat it.'),
-- (10, 10, 1, '23-05-2020', 'The dry food arrived damaged and was not usable.'),
-- (11, 11, 6, '10-07-2021', 'The canned food was too small despite ordering the correct size.'),
-- (12, 12, 5, '31-12-2020', 'The treats were of average quality and did not last long.'),
-- (13, 13, 9, '30-11-2023', 'The dry food was of exceptional quality and my pet loved it.'),
-- (14, 14, 9, '16-04-2020', 'The treats were customizable and provided hours of entertainment for my pet.'),
-- (15, 15, 3, '24-05-2020', 'The canned food did not match the description and was of poor quality.'),
-- (16, 16, 3, '28-01-2023', 'The food toppers were ineffective and did not remove loose fur as advertised.'),
-- (17, 17, 5, '05-04-2022', 'The dry food exceeded expectations and provided excellent nutrition for my pet.'),
-- (18, 18, 9, '26-02-2021', 'The treats were comfortable and my pet seemed happy eating it.'),
-- (19, 19, 1, '01-06-2022', 'The canned food was not as described and did not meet expectations.'),
-- (20, 20, 5, '23-09-2020', 'The food toppers were easy to use and provided excellent results.');

INSERT INTO product_review (review_ID, product_id, user_ID, Rating, Date, Description)
VALUES
(1, 1, 7, 8, '2022-03-24', 'The dry food was innovative and kept my pet entertained for hours.'),
(2, 2, 7, 8, '2023-05-30', 'The dry food was of high quality and fit my pet perfectly.'),
(3, 3, 8, 8, '2022-03-21', 'The canned food was easy to use and effective in removing loose fur.'),
(4, 4, 4, 6, '2020-11-09', 'The food toppers did not meet expectations and broke after minimal use.'),
(5, 5, 7, 7, '2021-07-10', 'The dry food was fresh and my pet enjoyed it.'),
(6, 6, 10, 8, '2021-11-26', 'The treats exceeded expectations and became my pet\'s favorite.'),
(7, 7, 10, 7, '2021-12-20', 'The treats were stylish and well-made, my pet looked adorable in it.'),
(8, 8, 3, 9, '2023-10-29', 'The canned food was difficult to handle and did not work as expected.'),
(9, 9, 6, 9, '2020-12-22', 'The food toppers had a strange smell and my pet refused to eat it.'),
(10, 10, 1, 2, '2020-05-23', 'The dry food arrived damaged and was not usable.'),
(11, 11, 6, 7, '2021-07-10', 'The canned food was too small despite ordering the correct size.'),
(12, 12, 5, 5, '2020-12-31', 'The treats were of average quality and did not last long.'),
(13, 13, 9, 10, '2023-11-30', 'The dry food was of exceptional quality and my pet loved it.'),
(14, 14, 9, 8, '2020-04-16', 'The treats were customizable and provided hours of entertainment for my pet.'),
(15, 15, 3, 2, '2020-05-24', 'The canned food did not match the description and was of poor quality.'),
(16, 16, 3, 6, '2023-01-28', 'The food toppers were ineffective and did not remove loose fur as advertised.'),
(17, 17, 5, 9, '2022-04-05', 'The dry food exceeded expectations and provided excellent nutrition for my pet.'),
(18, 18, 9, 8, '2021-02-26', 'The treats were comfortable and my pet seemed happy eating it.'),
(19, 19, 1, 3, '2022-06-01', 'The canned food was not as described and did not meet expectations.'),
(20, 20, 5, 7, '2020-09-23', 'The food toppers were easy to use and provided excellent results.');


-- Indexes for the 'product_review' table
CREATE INDEX idx_product_review_rating ON product_review (Rating);
CREATE INDEX idx_product_review_date ON product_review (Date);

CREATE TABLE employee_service (
    employee_service_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    service_id INT,
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
    FOREIGN KEY (service_id) REFERENCES service(service_id)
);

INSERT INTO employee_service (employee_id, service_id) VALUES
(1, 2), (1, 4), (1, 6),
(2, 1), (2, 4), (2, 6),
(3, 2), (3, 5), (3, 6),
(4, 1), (4, 3),
(5, 3), (5, 5), (5, 6),
(6, 2), (6, 5), (6, 6),
(7, 2), (7, 4),
(8, 3), (8, 4), (8, 5),
(9, 5), (9, 6),
(10, 1), (10, 2), (10, 4),
(11, 1), (11, 2), (11, 3),
(12, 1), (12, 4), (12, 6),
(13, 3), (13, 6),
(15, 3), (15, 4),
(16, 6), (16, 1),
(17, 1), (17, 6), (17, 4),
(18, 2), (18, 3),
(19, 2), (19, 5), (19, 6),
(20, 4), (20, 2);


-- Indexes for the 'employee_service' table
CREATE INDEX idx_employee_service_employee_id ON employee_service (employee_id);
CREATE INDEX idx_employee_service_service_id ON employee_service (service_id);


CREATE TABLE wallet (
  User_id int,
  Wallet_id int ,
  Amount decimal(10,2),
  PRIMARY KEY (User_id, Wallet_id),
  FOREIGN KEY (User_id) REFERENCES user(User_id)
);


INSERT INTO wallet (User_id, Wallet_id, Amount) VALUES
(1, 1, 981),
(2, 2, 666),
(3, 3, 814),
(4, 4, 831),
(5, 19, 438),
(6, 5, NULL),
(7, 18, 788),
(8, 6, NULL),
(9, 7, 834),
(10, 8, NULL),
(11, 17, NULL),
(12, 9, NULL),
(13, 20, NULL),
(14, 10, NULL),
(15, 11, NULL),
(16, 12, NULL),
(17, 13, 408),
(18, 14, 365),
(19, 15, 245),
(20, 16, NULL);

-- Indexes for the 'wallet' table
CREATE INDEX idx_wallet_amount ON wallet (Amount);

CREATE TABLE cart (
  User_id int,
  Product_ID int,
  Quantity int,
  PRIMARY KEY (User_id, Product_ID),
  FOREIGN KEY (User_id) REFERENCES user(User_id),
  FOREIGN KEY (Product_ID) REFERENCES product(Product_ID)
);

INSERT INTO cart (User_id, Product_ID, Quantity) VALUES
(1, 16, 9),
(3, 16, 10),
(5, 7, 1),
(6, 10, 6),
(8, 20, 6),
(9, 8, 6),
(11, 13, 7),
(12, 11, 9),
(14, 4, 4),
(16, 11, 5),
(18, 9, 6),
(20, 20, 8);

-- Indexes for the 'cart' table
CREATE INDEX idx_cart_quantity ON cart (Quantity);


CREATE TABLE credentials (
  User_id INT,
  Email VARCHAR(100),
  Password VARCHAR(100),
  PRIMARY KEY (User_id),
  FOREIGN KEY (User_id) REFERENCES user(User_id),
  FOREIGN KEY (Email) REFERENCES user(Email)
);

INSERT INTO credentials (User_id, Email, Password) VALUES
(1, 'sfearn0@sourceforge.net', 'HappyPenguin123'),
(2, 'jsimchenko1@joomla.org', 'LuckyElephant@456'),
(3, 'gpiesing2@over-blog.com', 'RainbowGiraffe#789'),
(4, 'rcasaccia3@vistaprint.com', 'SunnyDragonfly*321'),
(5, 'cedbrooke4@census.gov', 'DancingSunflower!654'),
(6, 'cshann5@ibm.com', 'GentleWhale&987'),
(7, 'fgummie6@google.nl', 'MagicUnicorn$123'),
(8, 'bjosephoff7@archive.org', 'MysticMermaid@789'),
(9, 'cdriuzzi8@oaic.gov.au', 'WildTiger*321'),
(10, 'kingre9@angelfire.com', 'GoldenLion!654'),
(11, 'jcreasea@gov.uk', 'BraveBear&987'),
(12, 'kmcmurtyrb@pagesperso-orange.fr', 'MajesticEagle$123'),
(13, 'hullyattc@soundcloud.com', 'SingingBird@789'),
(14, 'wmeadowsd@indiegogo.com', 'FlyingButterfly*321'),
(15, 'csparwelle@theguardian.com', 'ColorfulPeacock!654'),
(16, 'hkubasiewiczf@utexas.edu', 'WhisperingWolf&987'),
(17, 'tizakovitzg@odnoklassniki.ru', 'GallopingHorse$123'),
(18, 'ddameiseleh@constantcontact.com', 'CleverFox@789'),
(19, 'mburtwelli@aboutads.info', 'WanderingDeer*321'),
(20, 'bklimochkinj@cornell.edu', 'PlayfulKitten!654');

-- Indexes for the 'credentials' table
CREATE INDEX idx_credentials_email ON credentials (Email);

CREATE TABLE service_order (
  Order_ID INT NOT NULL,
  Status VARCHAR(45) DEFAULT NULL,
  dd INT NOT NULL,
  mm INT NOT NULL,
  yyyy INT NOT NULL,
  PRIMARY KEY (Order_ID)
--   CONSTRAINT Employee_ID_in_service_Order FOREIGN KEY (Employee_ID) REFERENCES employee (Employee_ID),
--   CONSTRAINT Payment_ID_in_service_Order FOREIGN KEY (Payment_ID) REFERENCES payment_and_history (Payment_ID),
--   CONSTRAINT Pet_ID_in_service_Order FOREIGN KEY (Pet_ID) REFERENCES pets (Pet_ID),
--   CONSTRAINT Service_ID_in_service_Order FOREIGN KEY (Service_ID) REFERENCES service (Service_ID),
--   CONSTRAINT User_ID_in_service_Order FOREIGN KEY (User_ID) REFERENCES user (User_id)
);


INSERT INTO service_order (Order_ID, Status, dd, mm, yyyy)
VALUES
(1, 0, 24, 8, 2016),
(2, 0, 13, 9, 2020),
(3, 4, 25, 8, 2019),
(4, 2, 6, 3, 2023),
(5, 2, 4, 6, 2018),
(6, 5, 29, 9, 2022),
(7, 4, 4, 12, 2017),
(8, 4, 22, 9, 2012),
(9, 1, 7, 1, 2018),
(10, 3, 30, 2, 2012),
(11, 5, 15, 10, 2019),
(12, 3, 26, 9, 2016),
(13, 3, 13, 7, 2013),
(14, 4, 20, 3, 2018),
(15, 2, 15, 3, 2020),
(16, 3, 22, 6, 2015),
(17, 0, 23, 6, 2013),
(18, 1, 21, 0, 2016),
(19, 2, 10, 4, 2014),
(20, 1, 19, 9, 2016);


CREATE TABLE service_review (
  Service_review_ID int NOT NULL,
  Service_ID int not null,
  Rating int DEFAULT NULL,
  
  Date varchar(10) DEFAULT NULL,
  Description varchar(200) DEFAULT NULL,
  PRIMARY KEY (Service_review_ID),
  CONSTRAINT servicereview_ibfk_1 FOREIGN KEY (Service_review_ID) REFERENCES user (User_id),
   CONSTRAINT servicereview_ibfk_2 FOREIGN KEY (Service_ID) REFERENCES service (Service_ID),
   CONSTRAINT servicereview_ibfk_3 FOREIGN KEY (Service_review_ID) REFERENCES employee (Employee_ID)
);




INSERT INTO service_review (Service_review_ID, Service_ID, Rating, Date, Description)
VALUES
(1, 2, 3, '15-01-2024', 'The service was excellent. The pet walker was punctual and handled my pet with care.'),
(2, 1,1, '17-07-2023', 'The pet taxi service was satisfactory. The driver was friendly, but the vehicle seemed a bit cramped for larger pets.'),
(3, 3,3, '10-12-2023', 'The grooming session was satisfactory.'),
(4, 4,1, '02-02-2024', 'The pet taxi service was below expectations. The driver seemed inexperienced and arrived late.'),
(5, 5,4, '28-09-2023', 'The pet grooming service exceeded my expectations. The groomer was skilled and attentive to my pet.'),
(6, 2,2, '25-03-2023', 'The pet walking service was satisfactory. The walker followed instructions well, but my pet seemed a bit restless afterward.'),
(7, 3,5, '28-10-2023', 'The pet grooming service was exceptional. The groomer was friendly and provided useful tips for pet care.'),
(8, 2,0, '03-03-2023', 'The pet walking service was disappointing. The walker was late and seemed disinterested.'),
(9, 4,0, '28-12-2023', 'The pet taxi service was unsatisfactory. The vehicle was dirty, and the driver was rude.'),
(10, 2,3, '04-08-2023', 'The pet walking service was great. The walker was friendly and kept my pet entertained throughout the walk.'),
(11, 1,1, '28-06-2023', 'The pet taxi service was average. The driver was polite, but the vehicle seemed a bit old and uncomfortable.'),
(12, 3,4, '31-07-2023', 'The pet grooming service was excellent. The groomer was skilled and provided personalized care to my pet.'),
(13, 5,4, '10-10-2023', 'The pet grooming service was satisfactory. The groomer was efficient, but the waiting time was longer than expected.'),
(14, 2,0, '10-01-2024', 'The pet walking service was disappointing. The walker seemed inattentive, and my pet returned home restless.'),
(15, 4,2, '01-04-2023', 'The pet taxi service was satisfactory. The driver was friendly, but the vehicle seemed a bit cramped for larger pets.'),
(16, 5,1, '18-01-2024', 'The pet grooming service was average. The groomer was polite, but the waiting time was longer than expected.'),
(17, 3,4, '18-10-2023', 'The pet grooming service was exceptional. The groomer was skilled and provided useful advice for pet care.'),
(18, 2,4, '15-01-2024', 'The pet walking service was excellent. The walker was punctual and handled my pet with care.'),
(19, 1,5, '18-07-2023', 'The pet taxi service was exceptional. The driver was friendly and provided a comfortable ride for my pet.'),
(20, 2,2, '30-04-2023', 'The pet walking service was satisfactory. The walker was friendly, but the route seemed a bit short for the price paid.');