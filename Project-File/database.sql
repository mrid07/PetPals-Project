-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Apr 20, 2024 at 06:20 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit_trail`
--

CREATE TABLE `audit_trail` (
  `id` int(11) NOT NULL,
  `operation_type` varchar(10) DEFAULT NULL,
  `table_name` varchar(50) DEFAULT NULL,
  `primary_key` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `old_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`old_values`)),
  `new_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`new_values`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `User_id` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`User_id`, `Product_ID`, `Quantity`) VALUES
(5, 7, 1),
(14, 4, 4),
(16, 11, 5),
(6, 10, 6),
(8, 20, 6),
(9, 8, 6),
(18, 9, 6),
(20, 20, 8),
(10, 11, 9),
(3, 16, 10);

-- --------------------------------------------------------

--
-- Table structure for table `contact_form_entry`
--

CREATE TABLE `contact_form_entry` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_form_entry`
--

INSERT INTO `contact_form_entry` (`id`, `name`, `email`, `message`) VALUES
(1, 'ss', 'ss@gmail.com', 'sssss'),
(2, 'ss', 'ss@gmail.com', 'sssss'),
(3, 'sa', 'sa@gmail.com', 'cdnsdn\r\n'),
(4, 'sa', 'sa@gmail.com', 'cdnsdn\r\n'),
(5, 'sa', 'sa@gmail.com', 'cdnsdn\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

CREATE TABLE `credentials` (
  `User_id` int(11) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `credentials`
--

INSERT INTO `credentials` (`User_id`, `Email`, `Password`) VALUES
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
(11, 'abc', 'abc'),
(12, 'bcd\r\n', 'bcd\r\n'),
(13, 'hullyattc@soundcloud.com', 'SingingBird@789'),
(14, 'wmeadowsd@indiegogo.com', 'FlyingButterfly*321'),
(15, 'csparwelle@theguardian.com', 'ColorfulPeacock!654'),
(16, 'hkubasiewiczf@utexas.edu', 'WhisperingWolf&987'),
(17, 'tizakovitzg@odnoklassniki.ru', 'GallopingHorse$123'),
(18, 'ddameiseleh@constantcontact.com', 'CleverFox@789'),
(19, 'mburtwelli@aboutads.info', 'WanderingDeer*321'),
(20, 'bklimochkinj@cornell.edu', 'PlayfulKitten!654');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Employee_ID` int(11) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `dd` int(11) DEFAULT NULL,
  `mm` int(11) DEFAULT NULL,
  `yyyy` int(11) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Experience` int(11) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Employee_ID`, `first_name`, `last_name`, `dd`, `mm`, `yyyy`, `Email`, `Experience`, `Status`, `Rating`) VALUES
(1, 'Erda', 'Merrell', 12, 5, 1976, 'emerrell0@bbc.co.uk', 3, 'Unoccupied', 10),
(2, 'Elsy', 'Doore', 13, 7, 2000, 'edoore1@miitbeian.gov.cn', 1, 'Unoccupied', 7),
(3, 'Odell', 'Mochan', 14, 6, 1997, 'omochan2@histats.com', 9, 'Unoccupied', 10),
(4, 'Jewelle', 'Iwaszkiewicz', 13, 11, 1984, 'jiwaszkiewicz3@wikimedia.org', 10, 'Unoccupied', 10),
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

-- --------------------------------------------------------

--
-- Table structure for table `employee_service`
--

CREATE TABLE `employee_service` (
  `employee_service_id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_service`
--

INSERT INTO `employee_service` (`employee_service_id`, `employee_id`, `service_id`) VALUES
(1, 1, 2),
(2, 1, 4),
(3, 1, 6),
(4, 2, 1),
(5, 2, 4),
(6, 2, 6),
(7, 3, 2),
(8, 3, 5),
(9, 3, 6),
(10, 4, 1),
(11, 4, 3),
(12, 5, 3),
(13, 5, 5),
(14, 5, 6),
(15, 6, 2),
(16, 6, 5),
(17, 6, 6),
(18, 7, 2),
(19, 7, 4),
(20, 8, 3),
(21, 8, 4),
(22, 8, 5),
(23, 9, 5),
(24, 9, 6),
(25, 10, 1),
(26, 10, 2),
(27, 10, 4),
(28, 11, 1),
(29, 11, 2),
(30, 11, 3),
(31, 12, 1),
(32, 12, 4),
(33, 12, 6),
(34, 13, 3),
(35, 13, 6),
(36, 15, 3),
(37, 15, 4),
(38, 16, 6),
(39, 16, 1),
(40, 17, 1),
(41, 17, 6),
(42, 17, 4),
(43, 18, 2),
(44, 18, 3),
(45, 19, 2),
(46, 19, 5),
(47, 19, 6),
(48, 20, 4),
(49, 20, 2);

-- --------------------------------------------------------

--
-- Table structure for table `payment_and_history`
--

CREATE TABLE `payment_and_history` (
  `Payment_ID` int(11) NOT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Payment_mode` varchar(100) DEFAULT NULL,
  `Order_type` varchar(100) DEFAULT NULL,
  `Payment_Date` varchar(10) DEFAULT NULL,
  `Product_Order_ID` int(11) DEFAULT NULL,
  `Service_Order_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_and_history`
--

INSERT INTO `payment_and_history` (`Payment_ID`, `Amount`, `Payment_mode`, `Order_type`, `Payment_Date`, `Product_Order_ID`, `Service_Order_ID`) VALUES
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

-- --------------------------------------------------------

--
-- Table structure for table `pets`
--

CREATE TABLE `pets` (
  `Pet_ID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Breed` varchar(45) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Size` varchar(45) DEFAULT NULL,
  `Type` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pets`
--

INSERT INTO `pets` (`Pet_ID`, `Name`, `Breed`, `Age`, `Size`, `Type`) VALUES
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

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Product_ID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Brand` varchar(45) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL,
  `Product_Type` varchar(45) DEFAULT NULL,
  `Pet_Category` varchar(45) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product_ID`, `Name`, `Brand`, `Description`, `Rating`, `Product_Type`, `Pet_Category`, `Quantity`, `Price`) VALUES
(1, 'Royal Canin Dry Cat Food', 'Poochmates', 'High-quality dry food for cats. Provides essential nutrients for a healthy feline diet.', 7, 'Toy', 'Cat', 0, 220),
(2, 'Hills Science Diet Dry Cat Food', 'Petwale', 'Premium dry food for cats. Formulated to support overall health and vitality.', 10, 'Toy', 'Cat', 0, 1100),
(3, 'Pedigree Canned Dog Food', 'The Pet Boutique India', 'Delicious canned food for dogs. Made with high-quality ingredients for a nutritious meal.', 8, 'Clothing', 'Dog', 55, 400),
(4, 'Merrick Food Toppers for Dogs', 'Pawlaland', 'Tasty food toppers for dogs. Enhances the flavor and nutrition of your pet\'s meal.', 4, 'Food', 'Dog', 55, 1100),
(5, 'Blue Buffalo Dry Dog Food', 'Scooby Doo', 'Nutritious dry food for dogs. Supports healthy digestion and strong muscles.', 8, 'Toy', 'Dog', 55, 400),
(6, 'Greenies Dog Treats', 'Petco', 'Irresistible treats for dogs. Perfect for training or rewarding good behavior.', 4, 'Grooming Essentials', 'Dog', 55, 1100),
(7, 'Temptations Cat Treats', 'Petwale', 'Yummy treats for cats. Made with real meat for a delicious snack.', 8, 'Bedding and Furniture', 'Cat', 55, 300),
(8, 'Wellness Canned Dog Food', 'Poochmates', 'High-quality canned food for dogs. Provides complete and balanced nutrition.', 7, 'Food', 'Dog', 55, 200),
(9, 'Stella & Chewys Food Toppers for Dogs', 'Petco', 'Delicious food toppers for dogs. Adds flavor and nutrients to any meal.', 10, 'Food', 'Dog', 55, 400),
(10, 'Frisco Cat Bed', 'Pawlaland', 'Soft and comfortable bedding for cats. Provides a cozy sleeping spot for your pet.', 6, 'Bedding and Furniture', 'Cat', 55, 500),
(11, 'Purina Pro Plan Canned Dog Food', 'Petco', 'Nourishing canned food for dogs. Supports overall health and well-being.', 5, 'Health & Wellness', 'Dog', 55, 200),
(12, 'Meow Mix Cat Treats', 'The Pet Boutique India', 'Tasty treats for cats. Helps maintain dental health and freshens breath.', 8, 'Grooming Essentials', 'Cat', 55, 220),
(13, 'Iams Dry Cat Food', 'The Pet Boutique India', 'Wholesome dry food for cats. Provides essential nutrients for a balanced diet.', 7, 'Grooming Essentials', 'Cat', 55, 200),
(14, 'Rachael Ray Nutrish Dog Treats', 'Pawlaland', 'Delicious treats for dogs. Made with natural ingredients for a tasty snack.', 6, 'Clothing', 'Dog', 55, 220),
(15, 'Milos Kitchen Food Toppers for Dogs', 'The Pet Boutique India', 'Flavorful food toppers for dogs. Enhances the taste and texture of meals.', 9, 'Leash & Collars', 'Dog', 55, 1100),
(16, 'Fancy Feast Canned Cat Food', 'Scooby Doo', 'High-quality canned food for cats. Provides essential nutrients for feline health.', 8, 'Toy', 'Cat', 64, 1100),
(17, 'Purina Beneful Food Toppers for Dogs', 'Petco', 'Nutritious food toppers for dogs. Adds flavor and variety to your pet\'s diet.', 10, 'Bedding and Furniture', 'Dog', 55, 400),
(18, 'Instinct Freeze Dried Raw Dog Food Toppers', 'Pawlaland', 'Premium food toppers for dogs. Adds flavor and nutrients to every meal.', 8, 'Leash & Collars', 'Dog', 55, 400),
(19, 'Sheba Cat Food Toppers', 'Poochmates', 'Delicious food toppers for cats. Enhances the flavor and texture of meals.', 7, 'Clothing', 'Cat', 55, 800),
(20, 'Nutro Canned Dog Food', 'Petwale', 'High-quality canned food for dogs. Made with real meat for a tasty meal.', 9, 'Food', 'Dog', 55, 1100);

--
-- Triggers `product`
--
DELIMITER $$
CREATE TRIGGER `reorder_trigger` BEFORE UPDATE ON `product` FOR EACH ROW BEGIN
    IF NEW.Quantity < -2 THEN
        -- Reorder 20 quantities if the current quantity falls below 5
        SET NEW.Quantity = NEW.Quantity + 20;
        
        -- Insert a record into reorder_history
        INSERT INTO reorder_history (product_id, reorder_quantity)
        VALUES (NEW.Product_ID, 20);
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `product_order`
--

CREATE TABLE `product_order` (
  `Order_ID` int(11) NOT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `Quantity` int(11) NOT NULL,
  `Order_Date` date NOT NULL,
  `User_ID` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_order`
--

INSERT INTO `product_order` (`Order_ID`, `Status`, `Quantity`, `Order_Date`, `User_ID`, `product_id`) VALUES
(1, 'Delivered', 6, '2023-12-08', 1, 2),
(2, 'Delivered', 9, '2020-11-18', 2, 1),
(3, 'Delivered', 6, '2020-08-21', 3, 3),
(4, 'Delivered', 6, '2023-06-04', 4, 5),
(5, 'Delivered', 6, '2023-09-28', 5, 1),
(6, 'Delivered', 9, '2021-05-12', 1, 4),
(7, 'Delivered', 7, '2023-02-20', 7, 7),
(8, 'Delivered', 10, '2022-12-03', 8, 9),
(9, 'Delivered', 9, '2020-01-24', 9, 5),
(10, 'Delivered', 10, '2023-05-02', 10, 7),
(11, 'Delivered', 10, '2022-04-29', 11, 6),
(12, 'Delivered', 10, '2023-10-24', 1, 1),
(13, 'Delivered', 10, '2023-04-12', 13, 2),
(14, 'Delivered', 3, '2020-08-20', 14, 15),
(15, 'Delivered', 10, '2022-12-27', 1, 14),
(16, 'Delivered', 5, '2022-03-09', 16, 6),
(17, 'Delivered', 3, '2022-01-05', 17, 2),
(18, 'Delivered', 8, '2022-02-03', 18, 20),
(19, 'Delivered', 4, '2020-04-30', 1, 15),
(20, 'Pending', 1, '2024-03-31', 11, 1),
(21, 'Pending', 1, '2024-04-08', 11, 2),
(22, 'Pending', 1, '2024-04-08', 11, 3),
(23, 'Pending', 1, '2024-04-10', 11, 1),
(24, 'Pending', 1, '2024-04-20', 11, 1),
(25, 'Pending', 1, '2024-04-20', 11, 2),
(26, 'Pending', 2, '2024-04-20', 11, 2),
(27, 'Pending', 8, '2024-04-20', 11, 2),
(28, 'Pending', 4, '2024-04-20', 19, 2);

--
-- Triggers `product_order`
--
DELIMITER $$
CREATE TRIGGER `product_order_audit_trigger` AFTER INSERT ON `product_order` FOR EACH ROW BEGIN
    INSERT INTO product_order_audit (order_id, operation_type, user_id, details)
    VALUES (NEW.order_id, 'INSERT', NULL, CONCAT('New order created with ID ', NEW.order_id));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `product_order_audit_trigger_delete` AFTER DELETE ON `product_order` FOR EACH ROW BEGIN
    INSERT INTO product_order_audit (order_id, operation_type, user_id, details)
    VALUES (OLD.order_id, 'DELETE', NULL, CONCAT('Order with ID ', OLD.order_id, ' deleted'));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `product_order_audit_trigger_update` AFTER UPDATE ON `product_order` FOR EACH ROW BEGIN
    INSERT INTO product_order_audit (order_id, operation_type, user_id, details)
    VALUES (NEW.order_id, 'UPDATE', NULL, CONCAT('Order with ID ', NEW.order_id, ' updated'));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `reorder_products_trigger` AFTER UPDATE ON `product_order` FOR EACH ROW BEGIN
    DECLARE reorder_threshold INT;
    -- Set the reorder threshold value
    SET reorder_threshold = 10;

    -- Check if the updated quantity falls below the reorder threshold
    IF NEW.Quantity < reorder_threshold THEN
        -- Insert a reorder request into the reorder_requests table
        INSERT INTO reorder_requests (product_id, quantity_requested)
        VALUES (NEW.product_id, reorder_threshold );

        -- Log the reorder action into the reorder_log table
        INSERT INTO reorder_log (product_id, action_type)
        VALUES (NEW.product_id, 'Reorder triggered due to low inventory');
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `product_order_audit`
--

CREATE TABLE `product_order_audit` (
  `audit_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `operation_type` varchar(10) DEFAULT NULL,
  `operation_timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) DEFAULT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_order_audit`
--

INSERT INTO `product_order_audit` (`audit_id`, `order_id`, `operation_type`, `operation_timestamp`, `user_id`, `details`) VALUES
(1, 22, 'INSERT', '2024-03-31 07:00:01', NULL, 'New order created with ID 22'),
(2, 23, 'INSERT', '2024-03-31 07:31:44', NULL, 'New order created with ID 23'),
(3, 24, 'INSERT', '2024-03-31 11:14:48', NULL, 'New order created with ID 24'),
(4, 25, 'INSERT', '2024-03-31 11:57:33', NULL, 'New order created with ID 25'),
(5, 25, 'DELETE', '2024-03-31 11:58:54', NULL, 'Order with ID 25 deleted'),
(6, 20, 'DELETE', '2024-03-31 11:59:10', NULL, 'Order with ID 20 deleted'),
(7, 21, 'DELETE', '2024-03-31 11:59:10', NULL, 'Order with ID 21 deleted'),
(8, 22, 'DELETE', '2024-03-31 11:59:10', NULL, 'Order with ID 22 deleted'),
(9, 23, 'DELETE', '2024-03-31 11:59:10', NULL, 'Order with ID 23 deleted'),
(10, 24, 'DELETE', '2024-03-31 11:59:10', NULL, 'Order with ID 24 deleted'),
(11, 20, 'INSERT', '2024-03-31 15:30:15', NULL, 'New order created with ID 20'),
(12, 21, 'INSERT', '2024-04-08 08:10:44', NULL, 'New order created with ID 21'),
(13, 22, 'INSERT', '2024-04-08 08:10:44', NULL, 'New order created with ID 22'),
(14, 23, 'INSERT', '2024-04-10 12:52:49', NULL, 'New order created with ID 23'),
(15, 24, 'INSERT', '2024-04-20 07:31:50', NULL, 'New order created with ID 24'),
(16, 25, 'INSERT', '2024-04-20 12:19:19', NULL, 'New order created with ID 25'),
(17, 26, 'INSERT', '2024-04-20 13:47:08', NULL, 'New order created with ID 26'),
(18, 27, 'INSERT', '2024-04-20 16:09:14', NULL, 'New order created with ID 27'),
(19, 28, 'INSERT', '2024-04-20 16:09:14', NULL, 'New order created with ID 28');

-- --------------------------------------------------------

--
-- Table structure for table `product_review`
--

CREATE TABLE `product_review` (
  `review_ID` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `Rating` int(11) DEFAULT NULL,
  `Date` varchar(10) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_review`
--

INSERT INTO `product_review` (`review_ID`, `Product_ID`, `User_id`, `Rating`, `Date`, `Description`) VALUES
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

-- --------------------------------------------------------

--
-- Table structure for table `reorder_history`
--

CREATE TABLE `reorder_history` (
  `reorder_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `reorder_quantity` int(11) DEFAULT NULL,
  `reorder_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reorder_history`
--

INSERT INTO `reorder_history` (`reorder_id`, `product_id`, `reorder_quantity`, `reorder_date`) VALUES
(1, 1, 20, '2024-03-31 12:04:04'),
(2, 1, 20, '2024-03-31 12:04:11'),
(3, 1, 20, '2024-04-17 17:15:15'),
(4, 1, 20, '2024-04-17 17:15:36');

-- --------------------------------------------------------

--
-- Table structure for table `reorder_log`
--

CREATE TABLE `reorder_log` (
  `log_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `action_timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reorder_requests`
--

CREATE TABLE `reorder_requests` (
  `request_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity_requested` int(11) DEFAULT NULL,
  `reorder_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `Service_ID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Duration` int(11) DEFAULT NULL,
  `Pet_Type` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`Service_ID`, `Name`, `Price`, `Duration`, `Pet_Type`) VALUES
(1, 'Pet Taxi', 999, 60, 'Dog'),
(2, 'Pet Walking', 999, 60, 'Dog'),
(3, 'Grooming', 999, 60, 'Cat'),
(4, 'Pet Taxi', 999, 60, 'Dog'),
(5, 'Grooming', 999, 60, 'Cat'),
(6, 'Pet Training', 999, 60, 'Cat');

-- --------------------------------------------------------

--
-- Table structure for table `service_cart`
--

CREATE TABLE `service_cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_order`
--

CREATE TABLE `service_order` (
  `Order_ID` int(11) NOT NULL,
  `Service_ID` varchar(45) DEFAULT NULL,
  `Order_Date` date DEFAULT NULL,
  `Status` varchar(45) DEFAULT 'Done',
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_order`
--

INSERT INTO `service_order` (`Order_ID`, `Service_ID`, `Order_Date`, `Status`, `user_id`) VALUES
(1, '0', '2016-08-24', 'Done', 1),
(2, '0', '2020-09-13', 'Done', 2),
(3, '4', '2019-08-25', 'Done', 3),
(4, '2', '2023-03-06', 'Done', 4),
(5, '2', '2018-06-04', 'Done', 5),
(6, '5', '2022-09-29', 'Done', 6),
(7, '4', '2017-12-04', 'Done', 7),
(8, '4', '2012-09-22', 'Done', 8),
(9, '1', '2018-01-07', 'Done', 9),
(10, '3', '2012-02-28', 'Done', 10),
(11, '5', '2019-10-15', 'Done', 11),
(12, '3', '2016-09-26', 'Done', 12),
(13, '3', '2013-07-13', 'Done', 13),
(14, '4', '2018-03-20', 'Done', 14),
(15, '2', '2020-03-15', 'Done', 15),
(16, '3', '2015-06-22', 'Done', 16),
(17, '0', '2013-06-23', 'Done', 17),
(18, '1', '2016-01-21', 'Done', 18),
(19, '2', '2014-04-10', 'Done', 19),
(20, '1', '2016-09-19', 'Done', 20),
(21, '2', '2024-04-20', 'Pending', NULL),
(22, '1', '2024-04-20', 'Pending', 11),
(23, '5', '2024-04-20', 'Pending', 11),
(24, '5', '2024-04-20', 'Pending', 11),
(25, '1', '2024-04-20', 'Pending', 11),
(26, '1', '2024-04-20', 'Pending', 19),
(27, '1', '2024-04-20', 'Pending', 19);

-- --------------------------------------------------------

--
-- Table structure for table `service_review`
--

CREATE TABLE `service_review` (
  `Service_review_ID` int(11) NOT NULL,
  `Service_ID` int(11) NOT NULL,
  `Rating` int(11) DEFAULT NULL,
  `Date` varchar(10) DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_review`
--

INSERT INTO `service_review` (`Service_review_ID`, `Service_ID`, `Rating`, `Date`, `Description`) VALUES
(1, 2, 3, '15-01-2024', 'The service was excellent. The pet walker was punctual and handled my pet with care.'),
(2, 1, 1, '17-07-2023', 'The pet taxi service was satisfactory. The driver was friendly, but the vehicle seemed a bit cramped for larger pets.'),
(3, 3, 3, '10-12-2023', 'The grooming session was satisfactory.'),
(4, 4, 1, '02-02-2024', 'The pet taxi service was below expectations. The driver seemed inexperienced and arrived late.'),
(5, 5, 4, '28-09-2023', 'The pet grooming service exceeded my expectations. The groomer was skilled and attentive to my pet.'),
(6, 2, 2, '25-03-2023', 'The pet walking service was satisfactory. The walker followed instructions well, but my pet seemed a bit restless afterward.'),
(7, 3, 5, '28-10-2023', 'The pet grooming service was exceptional. The groomer was friendly and provided useful tips for pet care.'),
(8, 2, 0, '03-03-2023', 'The pet walking service was disappointing. The walker was late and seemed disinterested.'),
(9, 4, 0, '28-12-2023', 'The pet taxi service was unsatisfactory. The vehicle was dirty, and the driver was rude.'),
(10, 2, 3, '04-08-2023', 'The pet walking service was great. The walker was friendly and kept my pet entertained throughout the walk.'),
(11, 1, 1, '28-06-2023', 'The pet taxi service was average. The driver was polite, but the vehicle seemed a bit old and uncomfortable.'),
(12, 3, 4, '31-07-2023', 'The pet grooming service was excellent. The groomer was skilled and provided personalized care to my pet.'),
(13, 5, 4, '10-10-2023', 'The pet grooming service was satisfactory. The groomer was efficient, but the waiting time was longer than expected.'),
(14, 2, 0, '10-01-2024', 'The pet walking service was disappointing. The walker seemed inattentive, and my pet returned home restless.'),
(15, 4, 2, '01-04-2023', 'The pet taxi service was satisfactory. The driver was friendly, but the vehicle seemed a bit cramped for larger pets.'),
(16, 5, 1, '18-01-2024', 'The pet grooming service was average. The groomer was polite, but the waiting time was longer than expected.'),
(17, 3, 4, '18-10-2023', 'The pet grooming service was exceptional. The groomer was skilled and provided useful advice for pet care.'),
(18, 2, 4, '15-01-2024', 'The pet walking service was excellent. The walker was punctual and handled my pet with care.'),
(19, 1, 5, '18-07-2023', 'The pet taxi service was exceptional. The driver was friendly and provided a comfortable ride for my pet.'),
(20, 2, 2, '30-04-2023', 'The pet walking service was satisfactory. The walker was friendly, but the route seemed a bit short for the price paid.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `dd` int(11) DEFAULT NULL,
  `mm` int(11) DEFAULT NULL,
  `yyyy` int(11) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `house_number` varchar(45) DEFAULT NULL,
  `street_name` varchar(100) DEFAULT NULL,
  `apt_number` varchar(100) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_id`, `first_name`, `last_name`, `dd`, `mm`, `yyyy`, `Email`, `house_number`, `street_name`, `apt_number`, `city`, `state`, `pincode`) VALUES
(1, 'Staffard', 'Fearn', 28, 3, 1977, 'sfearn0@sourceforge.net', '123', 'Main St', 'Apt 1', 'City1', 'State1', 12345),
(2, 'Janifer', 'Simchenko', 2, 12, 1999, 'jsimchenko1@joomla.org', '456', 'Oak St', 'Apt 2', 'City2', 'State2', 67890),
(3, 'Guntar', 'Piesing', 20, 4, 1971, 'gpiesing2@over-blog.com', '789', 'Maple St', 'Apt 3', 'City3', 'State3', 13579),
(4, 'Riane', 'Casaccia', 21, 8, 1997, 'rcasaccia3@vistaprint.com', '101', 'Pine St', 'Apt 4', 'City4', 'State4', 24680),
(5, 'Claresta', 'Edbrooke', 30, 11, 1946, 'cedbrooke4@census.gov', '202', 'Cedar St', 'Apt 5', 'City5', 'State5', 97531),
(6, 'Cherianne', 'Shann', 16, 6, 1972, 'cshann5@ibm.com', '303', 'Birch St', 'Apt 6', 'City6', 'State6', 86420),
(7, 'Fulton', 'Gummie', 29, 10, 1994, 'fgummie6@google.nl', '404', 'Spruce St', 'Apt 7', 'City7', 'State7', 75309),
(8, 'Bennie', 'Josephoff', 31, 10, 1997, 'bjosephoff7@archive.org', '505', 'Fir St', 'Apt 8', 'City8', 'State8', 20817),
(9, 'Clementia', 'Driuzzi', 29, 4, 1952, 'cdriuzzi8@oaic.gov.au', '606', 'Redwood St', 'Apt 9', 'City9', 'State9', 61349),
(10, 'Kerry', 'Ingre', 24, 5, 2002, 'kingre9@angelfire.com', '707', 'Mahogany St', 'Apt 10', 'City10', 'State10', 79524),
(11, 'Joli', 'Crease', 11, 3, 1973, 'abc', '808', 'Beech St', 'Apt 11', 'City11', 'State11', 46803),
(12, 'Kynthia', 'McMurtyr', 7, 1, 1992, 'bcd\r\n', '909', 'Oakwood St', 'Apt 12', 'City12', 'State12', 73210),
(13, 'Heath', 'Ullyatt', 16, 6, 1953, 'hullyattc@soundcloud.com', '1010', 'Palm St', 'Apt 13', 'City13', 'State13', 91425),
(14, 'Winnie', 'Meadows', 8, 4, 1955, 'wmeadowsd@indiegogo.com', '1111', 'Cypress St', 'Apt 14', 'City14', 'State14', 62738),
(15, 'Corrie', 'Sparwell', 6, 2, 1968, 'csparwelle@theguardian.com', '1212', 'Chestnut St', 'Apt 15', 'City15', 'State15', 41856),
(16, 'Haskel', 'Kubasiewicz', 13, 12, 1962, 'hkubasiewiczf@utexas.edu', '1313', 'Maplewood St', 'Apt 16', 'City16', 'State16', 53749),
(17, 'Torey', 'Izakovitz', 31, 5, 1939, 'tizakovitzg@odnoklassniki.ru', '1414', 'Pinecrest St', 'Apt 17', 'City17', 'State17', 30682),
(18, 'Daryn', 'Dameisele', 13, 4, 1937, 'ddameiseleh@constantcontact.com', '1515', 'Sprucewood St', 'Apt 18', 'City18', 'State18', 92513),
(19, 'Maurise', 'Burtwell', 24, 12, 1955, 'mburtwelli@aboutads.info', '1616', 'Cedarwood St', 'Apt 19', 'City19', 'State19', 60472),
(20, 'Barde', 'Klimochkin', 24, 8, 1990, 'bklimochkinj@cornell.edu', '1717', 'Birchwood St', 'Apt 20', 'City20', 'State20', 78901);

-- --------------------------------------------------------

--
-- Table structure for table `user_pets`
--

CREATE TABLE `user_pets` (
  `user_pet_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `pet_id` int(11) DEFAULT NULL,
  `acquisition_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_pets`
--

INSERT INTO `user_pets` (`user_pet_id`, `user_id`, `pet_id`, `acquisition_date`) VALUES
(1, 1, 1, NULL),
(2, 1, 3, NULL),
(3, 1, 5, NULL),
(4, 1, 7, NULL),
(5, 1, 9, NULL),
(6, 2, 2, NULL),
(7, 2, 4, NULL),
(8, 2, 6, NULL),
(9, 2, 8, NULL),
(10, 2, 10, NULL),
(11, 3, 11, NULL),
(12, 3, 13, NULL),
(13, 4, 12, NULL),
(14, 4, 14, NULL),
(15, 4, 16, NULL),
(16, 4, 18, NULL),
(17, 4, 20, NULL),
(18, 5, 21, NULL),
(19, 5, 27, NULL),
(20, 5, 29, NULL),
(21, 6, 22, NULL),
(22, 6, 24, NULL),
(23, 6, 26, NULL),
(24, 6, 28, NULL),
(25, 6, 30, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `User_id` int(11) NOT NULL,
  `Wallet_id` int(11) NOT NULL,
  `Amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`User_id`, `Wallet_id`, `Amount`) VALUES
(6, 5, NULL),
(8, 6, NULL),
(10, 8, NULL),
(11, 17, NULL),
(12, 9, NULL),
(13, 20, NULL),
(14, 10, NULL),
(15, 11, NULL),
(16, 12, NULL),
(20, 16, NULL),
(19, 15, 245.00),
(18, 14, 365.00),
(17, 13, 408.00),
(5, 19, 438.00),
(2, 2, 666.00),
(7, 18, 788.00),
(3, 3, 814.00),
(4, 4, 831.00),
(9, 7, 834.00),
(1, 1, 981.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit_trail`
--
ALTER TABLE `audit_trail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`User_id`,`Product_ID`),
  ADD KEY `Product_ID` (`Product_ID`),
  ADD KEY `idx_cart_quantity` (`Quantity`);

--
-- Indexes for table `contact_form_entry`
--
ALTER TABLE `contact_form_entry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credentials`
--
ALTER TABLE `credentials`
  ADD PRIMARY KEY (`User_id`),
  ADD KEY `idx_credentials_email` (`Email`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Employee_ID`),
  ADD KEY `idx_employee_email` (`Email`),
  ADD KEY `idx_employee_status` (`Status`);

--
-- Indexes for table `employee_service`
--
ALTER TABLE `employee_service`
  ADD PRIMARY KEY (`employee_service_id`),
  ADD KEY `idx_employee_service_employee_id` (`employee_id`),
  ADD KEY `idx_employee_service_service_id` (`service_id`);

--
-- Indexes for table `payment_and_history`
--
ALTER TABLE `payment_and_history`
  ADD PRIMARY KEY (`Payment_ID`),
  ADD KEY `idx_payment_history_amount` (`Amount`),
  ADD KEY `idx_payment_history_payment_date` (`Payment_Date`),
  ADD KEY `idx_payment_history_product_order_id` (`Product_Order_ID`),
  ADD KEY `idx_payment_history_service_order_id` (`Service_Order_ID`);

--
-- Indexes for table `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`Pet_ID`),
  ADD KEY `idx_pets_type` (`Type`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_ID`),
  ADD KEY `idx_product_name` (`Name`),
  ADD KEY `idx_product_brand` (`Brand`),
  ADD KEY `idx_product_rating` (`Rating`),
  ADD KEY `idx_product_type` (`Product_Type`),
  ADD KEY `idx_product_pet_category` (`Pet_Category`);

--
-- Indexes for table `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`Order_ID`),
  ADD KEY `Product_ID_in_product_order` (`product_id`),
  ADD KEY `idx_product_order_status` (`Status`),
  ADD KEY `idx_product_order_user_id` (`User_ID`);

--
-- Indexes for table `product_order_audit`
--
ALTER TABLE `product_order_audit`
  ADD PRIMARY KEY (`audit_id`);

--
-- Indexes for table `product_review`
--
ALTER TABLE `product_review`
  ADD PRIMARY KEY (`review_ID`),
  ADD KEY `Product_ID_in_product_review` (`Product_ID`),
  ADD KEY `User_ID_in_product_review` (`User_id`),
  ADD KEY `idx_product_review_rating` (`Rating`),
  ADD KEY `idx_product_review_date` (`Date`);

--
-- Indexes for table `reorder_history`
--
ALTER TABLE `reorder_history`
  ADD PRIMARY KEY (`reorder_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `reorder_log`
--
ALTER TABLE `reorder_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `reorder_requests`
--
ALTER TABLE `reorder_requests`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`Service_ID`),
  ADD KEY `idx_service_pet_type` (`Pet_Type`);

--
-- Indexes for table `service_cart`
--
ALTER TABLE `service_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `service_order`
--
ALTER TABLE `service_order`
  ADD PRIMARY KEY (`Order_ID`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `service_review`
--
ALTER TABLE `service_review`
  ADD PRIMARY KEY (`Service_review_ID`),
  ADD KEY `servicereview_ibfk_2` (`Service_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_id`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `idx_user_email` (`Email`),
  ADD KEY `idx_user_state` (`state`);

--
-- Indexes for table `user_pets`
--
ALTER TABLE `user_pets`
  ADD PRIMARY KEY (`user_pet_id`),
  ADD KEY `idx_user_pets_user_id` (`user_id`),
  ADD KEY `idx_user_pets_pet_id` (`pet_id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`User_id`,`Wallet_id`),
  ADD KEY `idx_wallet_amount` (`Amount`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_trail`
--
ALTER TABLE `audit_trail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_form_entry`
--
ALTER TABLE `contact_form_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee_service`
--
ALTER TABLE `employee_service`
  MODIFY `employee_service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `product_order_audit`
--
ALTER TABLE `product_order_audit`
  MODIFY `audit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `reorder_history`
--
ALTER TABLE `reorder_history`
  MODIFY `reorder_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reorder_log`
--
ALTER TABLE `reorder_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reorder_requests`
--
ALTER TABLE `reorder_requests`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_cart`
--
ALTER TABLE `service_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_pets`
--
ALTER TABLE `user_pets`
  MODIFY `user_pet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `user` (`User_id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`);

--
-- Constraints for table `credentials`
--
ALTER TABLE `credentials`
  ADD CONSTRAINT `credentials_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `user` (`User_id`),
  ADD CONSTRAINT `credentials_ibfk_2` FOREIGN KEY (`Email`) REFERENCES `user` (`Email`);

--
-- Constraints for table `employee_service`
--
ALTER TABLE `employee_service`
  ADD CONSTRAINT `employee_service_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`Employee_ID`),
  ADD CONSTRAINT `employee_service_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `service` (`Service_ID`);

--
-- Constraints for table `payment_and_history`
--
ALTER TABLE `payment_and_history`
  ADD CONSTRAINT `paymnethistory_ibfk_1` FOREIGN KEY (`Product_Order_ID`) REFERENCES `product_order` (`Order_ID`),
  ADD CONSTRAINT `paymnethistory_ibfk_2` FOREIGN KEY (`Service_Order_ID`) REFERENCES `service` (`Service_ID`);

--
-- Constraints for table `product_order`
--
ALTER TABLE `product_order`
  ADD CONSTRAINT `Product_ID_in_product_order` FOREIGN KEY (`product_id`) REFERENCES `product` (`Product_ID`),
  ADD CONSTRAINT `User_ID_in_product_order` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_id`);

--
-- Constraints for table `product_review`
--
ALTER TABLE `product_review`
  ADD CONSTRAINT `Product_ID_in_product_review` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`),
  ADD CONSTRAINT `User_ID_in_product_review` FOREIGN KEY (`User_id`) REFERENCES `user` (`User_id`);

--
-- Constraints for table `reorder_history`
--
ALTER TABLE `reorder_history`
  ADD CONSTRAINT `reorder_history_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`Product_ID`);

--
-- Constraints for table `reorder_log`
--
ALTER TABLE `reorder_log`
  ADD CONSTRAINT `reorder_log_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`Product_ID`);

--
-- Constraints for table `reorder_requests`
--
ALTER TABLE `reorder_requests`
  ADD CONSTRAINT `reorder_requests_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`Product_ID`);

--
-- Constraints for table `service_cart`
--
ALTER TABLE `service_cart`
  ADD CONSTRAINT `service_cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`User_id`),
  ADD CONSTRAINT `service_cart_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `service` (`Service_ID`);

--
-- Constraints for table `service_order`
--
ALTER TABLE `service_order`
  ADD CONSTRAINT `service_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`User_id`);

--
-- Constraints for table `service_review`
--
ALTER TABLE `service_review`
  ADD CONSTRAINT `servicereview_ibfk_1` FOREIGN KEY (`Service_review_ID`) REFERENCES `user` (`User_id`),
  ADD CONSTRAINT `servicereview_ibfk_2` FOREIGN KEY (`Service_ID`) REFERENCES `service` (`Service_ID`),
  ADD CONSTRAINT `servicereview_ibfk_3` FOREIGN KEY (`Service_review_ID`) REFERENCES `employee` (`Employee_ID`);

--
-- Constraints for table `user_pets`
--
ALTER TABLE `user_pets`
  ADD CONSTRAINT `user_pets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`User_id`),
  ADD CONSTRAINT `user_pets_ibfk_2` FOREIGN KEY (`pet_id`) REFERENCES `pets` (`Pet_ID`);

--
-- Constraints for table `wallet`
--
ALTER TABLE `wallet`
  ADD CONSTRAINT `wallet_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `user` (`User_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
