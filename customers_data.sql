-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: customersdata
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `account_id` int NOT NULL,
  `account_type_code` int DEFAULT NULL,
  `fk_customer_id` int DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `date_opened` date DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `current_balance` decimal(15,2) DEFAULT NULL,
  `other_account_details` text,
  PRIMARY KEY (`account_id`),
  KEY `account_type_code` (`account_type_code`),
  KEY `fk_customer_id` (`fk_customer_id`),
  CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`account_type_code`) REFERENCES `ref_account_types` (`account_type_code`),
  CONSTRAINT `accounts_ibfk_2` FOREIGN KEY (`fk_customer_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,1,1,'Savings Account','2020-01-01',NULL,5000.00,'Standard savings account.'),(2,2,2,'Checking Account','2019-05-10',NULL,2500.00,'Primary checking account.'),(3,3,3,'Investment Portfolio','2021-02-20',NULL,15000.00,'Diversified investment portfolio.'),(4,1,4,'Emergency Fund','2022-04-15',NULL,8000.00,'Emergency savings for unexpected expenses.'),(5,4,5,'Credit Card','2020-11-30',NULL,-1200.00,'Revolving credit card account.'),(6,2,6,'Business Checking','2023-01-03',NULL,5000.00,'Business operating account.'),(7,1,7,'Holiday Savings','2022-07-18',NULL,3000.00,'Savings for holiday expenses.'),(8,3,8,'Retirement Fund','2019-10-12',NULL,25000.00,'Long-term retirement savings.'),(9,1,9,'Education Fund','2023-05-05',NULL,6000.00,'Savings for educational expenses.'),(10,4,10,'Reward Points Card','2021-12-09',NULL,-500.00,'Credit card with reward points system.'),(11,2,11,'Joint Checking','2023-10-10',NULL,7000.00,'Joint checking account for couple.'),(12,1,12,'Vacation Fund','2023-08-15',NULL,4000.00,'Savings for future vacations.'),(13,3,13,'Stock Trading','2021-06-20',NULL,12000.00,'Active stock trading account.'),(14,2,14,'Secondary Checking','2020-09-18',NULL,3800.00,'Secondary checking account.'),(15,4,15,'Business Credit','2022-03-25',NULL,-3500.00,'Credit line for business expenses.'),(16,1,16,'House Down Payment','2022-02-12',NULL,15000.00,'Savings for future house down payment.'),(17,2,17,'Family Checking','2023-01-20',NULL,4200.00,'Family shared checking account.'),(18,1,18,'Car Maintenance','2022-12-05',NULL,2500.00,'Savings for car repairs and maintenance.'),(19,3,19,'Mutual Funds','2021-11-15',NULL,18000.00,'Diversified mutual funds portfolio.'),(20,1,20,'Healthcare Savings','2023-04-01',NULL,6000.00,'Savings for healthcare expenses.'),(21,4,21,'Travel Rewards Card','2022-10-18',NULL,-800.00,'Credit card with travel rewards.'),(22,2,22,'Joint Savings','2022-07-08',NULL,5500.00,'Savings account for partners.'),(23,1,23,'Children Education','2022-05-30',NULL,9000.00,'Savings for children education.'),(24,3,24,'IRA Account','2021-09-12',NULL,28000.00,'Individual retirement account.'),(25,1,25,'Emergency Backup','2023-07-20',NULL,3200.00,'Additional emergency savings.'),(26,2,26,'Teen Checking','2023-06-15',NULL,1800.00,'Checking account for teenagers.'),(27,1,27,'Pet Care Fund','2022-02-28',NULL,3500.00,'Savings for pet-related expenses.'),(28,3,28,'Real Estate Investment','2021-10-01',NULL,22000.00,'Investment in real estate properties.'),(29,1,29,'Wedding Savings','2023-05-15',NULL,7500.00,'Savings for future wedding expenses.'),(30,4,30,'Business Expense Card','2022-08-28',NULL,-1200.00,'Credit card for business expenses.'),(31,2,31,'Joint Checking','2023-04-20',NULL,4800.00,'Joint checking account for family.'),(32,1,32,'Emergency Fund II','2023-03-10',NULL,5500.00,'Additional emergency savings account.'),(33,3,33,'ETF Portfolio','2021-12-12',NULL,14000.00,'Exchange-traded funds portfolio.'),(34,2,34,'Secondary Checking','2021-08-05',NULL,3200.00,'Secondary checking account for expenses.'),(35,4,35,'Business Line of Credit','2022-01-22',NULL,-4000.00,'Line of credit for business needs.'),(36,1,36,'House Renovation','2022-05-28',NULL,18000.00,'Savings for home renovation.'),(37,2,37,'Family Savings','2023-02-10',NULL,6000.00,'Savings account for family needs.'),(38,1,38,'Travel Fund','2022-11-25',NULL,4200.00,'Savings for future travel expenses.'),(39,3,39,'401(k) Account','2021-07-18',NULL,32000.00,'Employer-sponsored retirement account.'),(40,1,40,'Medical Emergency','2023-06-05',NULL,5000.00,'Savings for medical emergencies.'),(41,4,41,'Rewards Card','2022-09-18',NULL,-1500.00,'Credit card with reward points system.'),(42,2,42,'Family Joint Account','2022-07-03',NULL,5600.00,'Joint account for family expenses.'),(43,1,43,'Child Education','2022-03-20',NULL,7200.00,'Savings for child education.'),(44,3,44,'Stock Market Investments','2021-09-05',NULL,25000.00,'Investment in stocks and equities.'),(45,1,45,'Home Appliances Fund','2023-08-12',NULL,3800.00,'Savings for home appliances.'),(46,2,46,'Teen Savings','2023-01-30',NULL,2000.00,'Savings account for teenagers.'),(47,1,47,'Pet Medical Expenses','2022-04-18',NULL,4200.00,'Savings for pet medical needs.'),(48,3,48,'Cryptocurrency Portfolio','2021-11-10',NULL,18000.00,'Investment in cryptocurrencies.'),(49,1,49,'Car Purchase Fund','2023-03-25',NULL,6000.00,'Savings for future car purchase.'),(50,4,50,'Business Expense Card','2022-12-15',NULL,-2200.00,'Credit card for business expenses.');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL,
  `customer_type_code` int DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_phone` varchar(20) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `date_became_customer` date DEFAULT NULL,
  `other_details` text,
  PRIMARY KEY (`customer_id`),
  KEY `customer_type_code` (`customer_type_code`),
  CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`customer_type_code`) REFERENCES `ref_customer_types` (`customer_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,5,'Emma Johnson','999-999-9999','emma.johnson@example.com','2022-03-15','Regular buyer, interested in new products.'),(2,3,'Liam Smith','+1987654321','liam.smith@example.com','2021-11-20','Enjoys discounts and loyalty rewards.'),(3,8,'Olivia Brown','+1122334455','olivia.brown@example.com','2023-01-10','Frequent shopper, active on social media.'),(4,2,'Noah Davis','+15550998877','noah.davis@example.com','2023-04-30','VIP member, purchases luxury goods.'),(5,4,'Ava Wilson','+1444412345','ava.wilson@example.com','2022-08-05','Small business owner, regular orders.'),(6,1,'James Taylor','+1777755555','james.taylor@example.com','2023-02-03','New customer, exploring available products.'),(7,9,'Sophia Martinez','+1888822222','sophia.martinez@example.com','2023-07-22','Occasional buyer, interested in seasonal deals.'),(8,7,'William Garcia','+1999912345','william.garcia@example.com','2021-05-18','New customer, curious about the service.'),(9,6,'Isabella Rodriguez','+1666633333','isabella.rodriguez@example.com','2023-09-12','Bronze level customer, occasional purchases.'),(10,10,'Mia Lee','+1777766666','mia.lee@example.com','2022-12-09','Corporate account, high-volume orders.'),(11,12,'Lucas Adams','+1888844444','lucas.adams@example.com','2022-11-25','Part of a family subscription, multiple users.'),(12,13,'Evelyn Walker','+1888877777','evelyn.walker@example.com','2022-07-10','Business customer, regular orders.'),(13,15,'Jackson Kelly','+1999999999','jackson.kelly@example.com','2023-05-15','Community member, active participant.'),(14,18,'Avery Cooper','+1444433333','avery.cooper@example.com','2023-09-20','Platinum member, exclusive benefits.'),(15,17,'Penelope Richardson','+1555123456','penelope.richardson@example.com','2022-12-30','Limited Edition customer, premium services.'),(16,16,'Mason Bennett','+1777888999','mason.bennett@example.com','2023-02-18','Exclusive membership, high-value purchases.'),(17,19,'Sofia Wood','+1666999888','sofia.wood@example.com','2021-11-05','Elite customer, exclusive deals.'),(18,20,'Henry Price','+1888999000','henry.price@example.com','2023-03-22','Trial member, exploring services.'),(19,22,'Scarlett Foster','+1999888777','scarlett.foster@example.com','2022-08-18','Reseller account, bulk purchases.'),(20,24,'Luna Bryant','+1444555666','luna.bryant@example.com','2023-10-01','Affiliate partner, collaborative projects.'),(21,26,'Logan Russell','+1555666777','logan.russell@example.com','2023-04-10','Educational institution, academic purchases.'),(22,25,'Gabriel Long','+1777555333','gabriel.long@example.com','2022-06-09','Student customer, occasional orders.'),(23,21,'Madison Price','+1666555444','madison.price@example.com','2023-01-25','Partnership account, collaborative efforts.'),(24,23,'Elijah Reed','+1888666555','elijah.reed@example.com','2022-05-12','Subscriber, regular content access.'),(25,27,'Aria Hughes','+1999777666','aria.hughes@example.com','2023-07-30','Charity supporter, occasional contributions.'),(26,28,'Carter Flores','+1444333222','carter.flores@example.com','2021-12-20','Foundation donor, regular contributions.'),(27,30,'Ellie Butler','+1555444333','ellie.butler@example.com','2023-02-28','Non-profit member, dedicated volunteer.'),(28,29,'Grayson Washington','+1777333222','grayson.washington@example.com','2022-08-15','Government entity, occasional purchases.'),(29,31,'Riley Cook','+1666222111','riley.cook@example.com','2022-04-05','Supporter of causes, occasional donations.'),(30,32,'Hudson Parker','+1888444333','hudson.parker@example.com','2023-01-10','Sponsor, active participant in events.'),(31,33,'Levi Sanders','+1999555444','levi.sanders@example.com','2022-09-18','Regular donor, supports various initiatives.'),(32,35,'Zoe Gonzalez','+1444222111','zoe.gonzalez@example.com','2023-05-30','Beneficiary of certain programs, occasional services.'),(33,36,'Nora Howard','+1555333444','nora.howard@example.com','2023-03-22','Patron of certain services, regular consumer.'),(34,34,'Leo Coleman','+1777111222','leo.coleman@example.com','2022-11-05','Contributor to certain causes, occasional support.'),(35,37,'Eli Gray','+1666888999','eli.gray@example.com','2023-04-20','Membership holder, occasional benefits.'),(36,39,'Stella Bell','+1888333222','stella.bell@example.com','2022-12-12','Ambassador for certain products, loyal consumer.'),(37,38,'Liam Brooks','+1999222111','liam.brooks@example.com','2022-10-01','Associate with certain programs, occasional participant.'),(38,40,'Willow Hayes','+1444111333','willow.hayes@example.com','2023-06-15','Delegate for specific activities, active involvement.'),(39,41,'Hazel Barnes','+1555222444','hazel.barnes@example.com','2022-09-28','Delegate representing certain interests, occasional involvement.'),(40,42,'Mila Foster','+1777000111','mila.foster@example.com','2022-05-10','Representative for particular programs, dedicated involvement.'),(41,43,'Mason Simmons','+1666777888','mason.simmons@example.com','2023-03-02','Leader in specific communities, active engagement.'),(42,45,'Kai Perry','+1888000222','kai.perry@example.com','2023-01-20','Visionary thinker, interested in innovative products.'),(43,44,'Nova Henderson','+1999111333','nova.henderson@example.com','2022-07-08','Innovator, explores new technological advancements.'),(44,46,'Emery Grayson','+1444000444','emery.grayson@example.com','2023-04-12','Pioneer in certain fields, exploring opportunities.'),(45,47,'Kinsley Carter','+1555111555','kinsley.carter@example.com','2023-02-18','Explorer of new territories, adventurous spirit.'),(46,48,'Phoenix Hayes','+1777222666','phoenix.hayes@example.com','2022-08-25','Adventurer, seeks new experiences and challenges.'),(47,49,'Rowan Harrison','+1666333777','rowan.harrison@example.com','2022-06-30','Trailblazer, explores uncharted territories.'),(48,50,'Avery Mason','+1888444888','avery.mason@example.com','2023-03-15','Revolutionary thinker, challenges traditional norms.'),(49,12,'Charlie Parker','+1999555999','charlie.parker@example.com','2022-11-01','Part of a family subscription, multiple users.'),(50,14,'Harper Thompson','+1444222333','harper.thompson@example.com','2023-10-15','Enterprise customer, bulk purchases.');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parties`
--

DROP TABLE IF EXISTS `parties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parties` (
  `party_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `other_details` text,
  PRIMARY KEY (`party_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parties`
--

LOCK TABLES `parties` WRITE;
/*!40000 ALTER TABLE `parties` DISABLE KEYS */;
INSERT INTO `parties` VALUES (1,'ABC Events','+1234567890','events@abc.com','Specializes in corporate events.'),(2,'XYZ Catering','+1987654321','info@xyzcatering.com','Offers diverse catering services.'),(3,'Elegant Affairs','+1122334455','contact@elegantaffairs.com','Provides upscale event planning.'),(4,'Sunny Party Rentals','+15550998877','info@sunnypartyrentals.com','Rents party equipment and supplies.'),(5,'Delightful Decorations','+1444412345','hello@delightfuldecor.com','Specializes in event decorations.'),(6,'Gourmet Galore','+1777755555','info@gourmetgalore.com','Offers gourmet food services.'),(7,'Fantastic Flowers','+1888822222','sales@fantasticflowers.com','Provides floral arrangements for events.'),(8,'Tasty Treats Bakery','+1999912345','orders@tastytreatsbakery.com','Specializes in custom desserts.'),(9,'Majestic Music','+1666633333','info@majesticmusic.com','Provides music entertainment for events.'),(10,'Capture It Photography','+1777766666','info@captureitphoto.com','Offers professional photography services.'),(11,'SoundScape DJ Services','+1888844444','info@soundscape.com','Provides DJ services for various events.'),(12,'Elite Entertainment','+1777777777','info@eliteentertainment.com','Specializes in high-end event entertainment.'),(13,'Swift Security Services','+1666888888','info@swiftsecurity.com','Offers event security and monitoring.'),(14,'Spectacular Staging','+1555999999','info@spectacularstaging.com','Provides stage and lighting services.'),(15,'Perfect Planning Solutions','+1444123456','info@perfectplanning.com','Offers comprehensive event planning.'),(16,'Magic Moments Magicians','+1333222222','info@magicmoments.com','Offers magical entertainment for events.'),(17,'Glamorous Get-Togethers','+1222333444','info@glamorousgettogethers.com','Specializes in upscale event coordination.'),(18,'Vibrant Vibes','+1111444555','info@vibrantvibes.com','Offers vibrant and lively event services.'),(19,'Charming Charcuterie','+1000111222','info@charmingcharcuterie.com','Specializes in artisanal food platters.'),(20,'Serene Spa & Wellness','+1999222333','info@serenespa.com','Offers relaxation services for events.'),(21,'Dreamy Destinations','+1888333444','info@dreamydestinations.com','Specializes in destination event planning.'),(22,'Wholesome Workshops','+1777444555','info@wholesomeworkshops.com','Offers interactive workshops for events.'),(23,'Bubbly Baristas','+1666555666','info@bubblybaristas.com','Provides specialty coffee services for events.'),(24,'Creative Cakes','+1555666777','info@creativecakes.com','Specializes in artistic cake designs.'),(25,'Radiant Rentals','+1444777888','info@radiantrentals.com','Offers various event equipment rentals.'),(26,'Tranquil Tranquility','+1333888999','info@tranquiltranquility.com','Provides relaxation services for events.'),(27,'Spirited Spirits','+1222999000','info@spiritedspirits.com','Offers alcoholic beverage services.'),(28,'Colorful Creations','+1111000111','info@colorfulcreations.com','Specializes in colorful event decor.'),(29,'Enchanted Entertainment','+1000111222','info@enchantedentertainment.com','Provides magical entertainment for events.'),(30,'Grand Gesture Gifts','+1999222333','info@grandgesturegifts.com','Offers personalized gifting services for events.'),(31,'Epic Event Essentials','+1888333444','info@epiceventessentials.com','Provides essential event services.'),(32,'Joyful Jams','+1777444555','info@joyfuljams.com','Offers musical entertainment for events.'),(33,'Dynamic Decorators','+1666555666','info@dynamicdecorators.com','Provides dynamic event decorations.'),(34,'Elite Experiences','+1555666777','info@eliteexperiences.com','Specializes in exclusive event planning.'),(35,'Glowing Gatherings','+1444777888','info@glowinggatherings.com','Creates glowing atmospheres for events.'),(36,'Divine Delights','+1333888999','info@divinedelights.com','Offers divine culinary experiences for events.'),(37,'Effortless Elegance','+1222999000','info@effortlesselegance.com','Provides elegant event planning services.'),(38,'Vivid Ventures','+1111000111','info@vividventures.com','Creates vivid event experiences.'),(39,'Pleasant Performers','+1000111222','info@pleasantperformers.com','Offers pleasant performances for events.'),(40,'Wonderful Workshops','+1999222333','info@wonderfulworkshops.com','Provides wonderful learning experiences for events.'),(41,'Magical Memories','+1888333444','info@magicalmemories.com','Creates magical moments for events.'),(42,'Deluxe Dining','+1777444555','info@deluxedining.com','Offers deluxe dining experiences for events.'),(43,'Elegant Entertainment','+1666555666','info@elegantentertainment.com','Provides elegant entertainment services.'),(44,'Enchanting Experiences','+1555666777','info@enchantingexperiences.com','Creates enchanting event experiences.'),(45,'Savory Selections','+1444777888','info@savoryselections.com','Offers savory culinary experiences for events.'),(46,'Bountiful Bites','+1333888999','info@bountifulbites.com','Provides bountiful culinary experiences for events.'),(47,'Radiant Revelries','+1222999000','info@radiantrevelries.com','Creates radiant event celebrations.'),(48,'Captivating Celebrations','+1111000111','info@captivatingcelebrations.com','Provides captivating event experiences.'),(49,'Lavish Luxuries','+1000111222','info@lavishluxuries.com','Offers lavish event services.'),(50,'Astonishing Affairs','+1999222333','info@astonishingaffairs.com','Creates astonishing event experiences.');
/*!40000 ALTER TABLE `parties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_account_types`
--

DROP TABLE IF EXISTS `ref_account_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ref_account_types` (
  `account_type_code` int NOT NULL,
  `account_type_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`account_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_account_types`
--

LOCK TABLES `ref_account_types` WRITE;
/*!40000 ALTER TABLE `ref_account_types` DISABLE KEYS */;
INSERT INTO `ref_account_types` VALUES (1,'Savings Account'),(2,'Checking Account'),(3,'Investment Account'),(4,'Credit Card Account'),(5,'Loan Account'),(6,'Money Market Account'),(7,'Certificate of Deposit'),(8,'Retirement Account'),(9,'Health Savings Account'),(10,'Business Account'),(11,'Joint Account'),(12,'Student Account'),(13,'Brokerage Account'),(14,'Reward Points Account'),(15,'Travel Rewards Account'),(16,'Teen Account'),(17,'IRA Account'),(18,'Education Savings Account'),(19,'ETF Account'),(20,'Line of Credit'),(21,'Cryptocurrency Account'),(22,'Emergency Fund Account'),(23,'Family Account'),(24,'Home Purchase Account'),(25,'Pet Expenses Account'),(26,'Wedding Fund Account'),(27,'Medical Expenses Account'),(28,'Home Renovation Account'),(29,'Car Purchase Account'),(30,'Business Line of Credit Account'),(31,'Real Estate Investment Account'),(32,'Mutual Fund Account'),(33,'401(k) Account'),(34,'Child Education Account'),(35,'Stock Trading Account'),(36,'Art Investment Account'),(37,'Vacation Savings Account'),(38,'Charity Donations Account'),(39,'Time Deposit Account'),(40,'Small Business Account'),(41,'E-commerce Account'),(42,'Utility Payment Account'),(43,'Online Payment Account'),(44,'Subscription Services Account'),(45,'Gaming Account'),(46,'Artificial Intelligence Investment Account'),(47,'Fitness Membership Account'),(48,'Music Streaming Account'),(49,'Video Streaming Account'),(50,'Travel Booking Account');
/*!40000 ALTER TABLE `ref_account_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_customer_types`
--

DROP TABLE IF EXISTS `ref_customer_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ref_customer_types` (
  `customer_type_code` int NOT NULL,
  `customer_type_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customer_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_customer_types`
--

LOCK TABLES `ref_customer_types` WRITE;
/*!40000 ALTER TABLE `ref_customer_types` DISABLE KEYS */;
INSERT INTO `ref_customer_types` VALUES (1,'Regular'),(2,'VIP'),(3,'Premium'),(4,'Gold'),(5,'Silver'),(6,'Bronze'),(7,'New'),(8,'Frequent'),(9,'Occasional'),(10,'Corporate'),(11,'Individual'),(12,'Family'),(13,'Business'),(14,'Enterprise'),(15,'Community'),(16,'Exclusive'),(17,'Limited Edition'),(18,'Platinum'),(19,'Elite'),(20,'Trial'),(21,'Partner'),(22,'Reseller'),(23,'Subscriber'),(24,'Affiliate'),(25,'Student'),(26,'Educational Institution'),(27,'Charity'),(28,'Foundation'),(29,'Government'),(30,'Non-Profit'),(31,'Supporter'),(32,'Sponsor'),(33,'Donor'),(34,'Contributor'),(35,'Beneficiary'),(36,'Patron'),(37,'Member'),(38,'Associate'),(39,'Ambassador'),(40,'Delegate'),(41,'Delegate'),(42,'Representative'),(43,'Leader'),(44,'Innovator'),(45,'Visionary'),(46,'Pioneer'),(47,'Explorer'),(48,'Adventurer'),(49,'Trailblazer'),(50,'Revolutionary'),(51,'Individual'),(52,'Business');
/*!40000 ALTER TABLE `ref_customer_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_transaction_types`
--

DROP TABLE IF EXISTS `ref_transaction_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ref_transaction_types` (
  `transaction_type_code` int NOT NULL,
  `transaction_type_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`transaction_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_transaction_types`
--

LOCK TABLES `ref_transaction_types` WRITE;
/*!40000 ALTER TABLE `ref_transaction_types` DISABLE KEYS */;
INSERT INTO `ref_transaction_types` VALUES (1,'Deposit'),(2,'Withdrawal'),(3,'Transfer'),(4,'Payment'),(5,'Purchase'),(6,'Refund'),(7,'Interest'),(8,'Fee'),(9,'Income'),(10,'Expense'),(11,'Salary'),(12,'Dividend'),(13,'Loan Payment'),(14,'Investment'),(15,'Credit'),(16,'Debit'),(17,'Utility Payment'),(18,'Online Purchase'),(19,'Cash Withdrawal'),(20,'Check Payment'),(21,'Automatic Transfer'),(22,'Direct Deposit'),(23,'Rent Payment'),(24,'Tax Payment'),(25,'Donation'),(26,'Subscription Payment'),(27,'Referral Bonus'),(28,'Reward Points Redemption'),(29,'Gift Card Purchase'),(30,'Stock Purchase'),(31,'Insurance Payment'),(32,'Loan Disbursement'),(33,'Scholarship Payment'),(34,'Retirement Contribution'),(35,'Medical Expense Payment'),(36,'Entertainment Purchase'),(37,'Travel Expense'),(38,'Membership Renewal'),(39,'Online Service Payment'),(40,'Wire Transfer'),(41,'Credit Card Payment'),(42,'Security Deposit'),(43,'Property Purchase'),(44,'Car Purchase'),(45,'Home Appliance Purchase'),(46,'Charitable Contribution'),(47,'Education Expense'),(48,'Grocery Purchase'),(49,'Electronics Purchase'),(50,'Furniture Purchase');
/*!40000 ALTER TABLE `ref_transaction_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_messages`
--

DROP TABLE IF EXISTS `transaction_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_messages` (
  `message_number` int NOT NULL,
  `account_id` int DEFAULT NULL,
  `counterparty_id` int DEFAULT NULL,
  `party_id` int DEFAULT NULL,
  `transaction_type_code` int DEFAULT NULL,
  `counterparty_role` varchar(255) DEFAULT NULL,
  `currency_code` varchar(20) DEFAULT NULL,
  `BAN_Number` varchar(20) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `balance` decimal(15,2) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `party_role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`message_number`),
  KEY `account_id` (`account_id`),
  KEY `counterparty_id` (`counterparty_id`),
  KEY `party_id` (`party_id`),
  KEY `transaction_type_code` (`transaction_type_code`),
  CONSTRAINT `transaction_messages_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`),
  CONSTRAINT `transaction_messages_ibfk_2` FOREIGN KEY (`counterparty_id`) REFERENCES `parties` (`party_id`),
  CONSTRAINT `transaction_messages_ibfk_3` FOREIGN KEY (`party_id`) REFERENCES `parties` (`party_id`),
  CONSTRAINT `transaction_messages_ibfk_4` FOREIGN KEY (`transaction_type_code`) REFERENCES `ref_transaction_types` (`transaction_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_messages`
--

LOCK TABLES `transaction_messages` WRITE;
/*!40000 ALTER TABLE `transaction_messages` DISABLE KEYS */;
INSERT INTO `transaction_messages` VALUES (2,2,3,4,2,'Sender','USD','BAN5678','2023-01-10',200.00,2300.00,'San Francisco','Receiver'),(3,3,4,5,3,'Sender','EUR','BAN9876','2023-01-15',800.00,1500.00,'London','Receiver'),(4,4,5,6,4,'Sender','GBP','BAN5432','2023-01-20',300.00,4000.00,'Paris','Receiver'),(5,5,6,7,5,'Sender','USD','BAN2468','2023-01-25',1200.00,7200.00,'Tokyo','Receiver'),(6,6,7,8,6,'Sender','CAD','BAN1357','2023-01-30',100.00,500.00,'Sydney','Receiver'),(7,7,8,9,7,'Sender','USD','BAN7890','2023-02-05',50.00,800.00,'Berlin','Receiver'),(8,8,9,10,8,'Sender','EUR','BAN1111','2023-02-10',20.00,2000.00,'Rome','Receiver'),(9,9,10,11,9,'Sender','USD','BAN2222','2023-02-15',1000.00,3000.00,'Madrid','Receiver'),(10,10,11,12,10,'Sender','GBP','BAN3333','2023-02-20',400.00,5000.00,'Seoul','Receiver'),(11,11,12,13,11,'Sender','USD','BAN4444','2023-03-01',150.00,1500.00,'Toronto','Receiver'),(12,12,13,14,12,'Sender','EUR','BAN5555','2023-03-06',750.00,2000.00,'Barcelona','Receiver'),(13,13,14,15,13,'Sender','GBP','BAN6666','2023-03-11',3000.00,5000.00,'Hong Kong','Receiver'),(14,14,15,16,14,'Sender','USD','BAN7777','2023-03-16',450.00,3000.00,'Dubai','Receiver'),(15,15,16,17,15,'Sender','CAD','BAN8888','2023-03-21',200.00,1500.00,'Amsterdam','Receiver'),(16,16,17,18,16,'Sender','USD','BAN1616','2023-04-01',600.00,3000.00,'Singapore','Receiver'),(17,17,18,19,17,'Sender','EUR','BAN1717','2023-04-06',1200.00,5000.00,'Vienna','Receiver'),(18,18,19,20,18,'Sender','GBP','BAN1818','2023-04-11',800.00,3500.00,'Moscow','Receiver'),(19,19,20,21,19,'Sender','USD','BAN1919','2023-04-16',250.00,4000.00,'Cape Town','Receiver'),(20,20,21,22,20,'Sender','CAD','BAN2020','2023-04-21',3000.00,7000.00,'Oslo','Receiver'),(21,21,22,23,21,'Sender','USD','BAN2121','2023-04-26',180.00,600.00,'Helsinki','Receiver'),(22,22,23,24,22,'Sender','EUR','BAN2222','2023-05-01',1000.00,4000.00,'Wellington','Receiver'),(23,23,24,25,23,'Sender','USD','BAN2323','2023-05-06',400.00,2000.00,'Lisbon','Receiver'),(24,24,25,26,24,'Sender','GBP','BAN2424','2023-05-11',750.00,3000.00,'Brussels','Receiver'),(25,25,26,27,25,'Sender','USD','BAN2525','2023-05-16',300.00,1500.00,'Brasilia','Receiver'),(26,26,27,28,26,'Sender','CAD','BAN2626','2023-05-21',650.00,3000.00,'Bangkok','Receiver'),(27,27,28,29,27,'Sender','USD','BAN2727','2023-05-26',1200.00,6000.00,'Manila','Receiver'),(28,28,29,30,28,'Sender','EUR','BAN2828','2023-06-01',450.00,2000.00,'Santiago','Receiver'),(29,29,30,31,29,'Sender','USD','BAN2929','2023-06-06',900.00,4000.00,'Jakarta','Receiver'),(30,30,31,32,30,'Sender','GBP','BAN3030','2023-06-11',3000.00,9000.00,'Kuala Lumpur','Receiver'),(31,31,32,33,31,'Sender','USD','BAN3131','2023-06-16',150.00,600.00,'Zurich','Receiver'),(32,32,33,34,32,'Sender','EUR','BAN3232','2023-06-21',1800.00,3000.00,'Athens','Receiver'),(33,33,34,35,33,'Sender','USD','BAN3333','2023-06-26',220.00,5000.00,'Dublin','Receiver'),(34,34,35,36,34,'Sender','GBP','BAN3434','2023-07-01',700.00,2000.00,'Stockholm','Receiver'),(35,35,36,37,35,'Sender','USD','BAN3535','2023-07-06',1600.00,4000.00,'Copenhagen','Receiver'),(36,36,37,38,36,'Sender','EUR','BAN3636','2023-07-11',120.00,600.00,'Hamburg','Receiver'),(37,37,38,39,37,'Sender','USD','BAN3737','2023-07-16',500.00,2500.00,'Edinburgh','Receiver'),(38,38,39,40,38,'Sender','GBP','BAN3838','2023-07-21',900.00,4500.00,'Vienna','Receiver'),(39,39,40,41,39,'Sender','USD','BAN3939','2023-07-26',300.00,1500.00,'Oslo','Receiver'),(40,40,41,42,40,'Sender','EUR','BAN4040','2023-08-01',800.00,4000.00,'Lisbon','Receiver'),(41,41,42,43,41,'Sender','USD','BAN4141','2023-08-06',450.00,2000.00,'Brussels','Receiver'),(42,42,43,44,42,'Sender','GBP','BAN4242','2023-08-11',3000.00,5000.00,'Dubai','Receiver'),(43,43,44,45,43,'Sender','USD','BAN4343','2023-08-16',720.00,3000.00,'Hong Kong','Receiver'),(44,44,45,46,44,'Sender','CAD','BAN4444','2023-08-21',850.00,1500.00,'Singapore','Receiver'),(45,45,46,47,45,'Sender','USD','BAN4545','2023-08-26',2000.00,4000.00,'Cape Town','Receiver'),(46,46,47,48,46,'Sender','EUR','BAN4646','2023-09-01',350.00,2000.00,'Brasilia','Receiver'),(47,47,48,49,47,'Sender','USD','BAN4747','2023-09-06',1800.00,4000.00,'Manila','Receiver'),(48,48,49,50,48,'Sender','GBP','BAN4848','2023-09-11',950.00,5000.00,'Bangkok','Receiver'),(49,49,50,1,1,'Sender','USD','BAN4949','2023-05-20',1000.00,4000.00,'Stockholm','Receiver'),(50,50,1,2,5,'Sender','USD','BAN5000','2023-05-25',300.00,4200.00,'Mumbai','Receiver');
/*!40000 ALTER TABLE `transaction_messages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-16 16:25:46
