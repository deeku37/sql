CREATE DATABASE ASSIGNMENTS_3;
USE ASSIGNMENTS_3;

CREATE TABLE Trolleybag (
    ID INT PRIMARY KEY,
    Brand VARCHAR(50),
    Model VARCHAR(50),
    Material VARCHAR(50),
    Dimensions VARCHAR(20),
    Capacity DECIMAL(8,2),
    Weight DECIMAL(6,2),
    Wheels VARCHAR(50),
    Handles VARCHAR(50),
    Compartments INT
);
INSERT INTO Trolleybag (ID, Brand, Model, Material, Dimensions, Capacity, Weight, Wheels, Handles, Compartments) 
VALUES 
(1, 'Samsonite', 'Pro-DLX 5', 'Nylon', '20x14x9', 40.00, 6.5, '4 spinner wheels', 'Telescopic handle', 3),
(2, 'Travelpro', 'Maxlite 5', 'Polyester', '21x14x9', 38.00, 5.7, '2 inline skate wheels', 'Telescopic handle', 2),
(3, 'American Tourister', 'Moonlight', 'ABS', '22x15x10', 42.00, 8.2, '4 spinner wheels', 'Telescopic handle', 2),
(4, 'Delsey', 'Helium Aero', 'Polycarbonate', '25x17x11', 50.00, 8.9, '4 double spinner wheels', 'Telescopic handle', 2),
(5, 'RIMOWA', 'Essential Lite Cabin S', 'Polycarbonate', '21x15x7', 33.00, 4.1, '4 multiwheel system', 'Telescopic handle', 2),
(6, 'Briggs & Riley', 'Baseline Domestic', 'Ballistic Nylon', '22x14x9', 39.70, 9.3, '2 inline wheels', 'Telescopic handle', 2),
(7, 'Victorinox', 'Spectra 2.0 Global Carry-On', 'Polycarbonate', '21.7x15.7x7.9', 34.00, 6.2, 'Dual-caster wheels', 'Telescopic handle', 2),
(8, 'Tumi', 'Alpha 3 International Dual Access', 'Ballistic Nylon', '22x14x9', 35.00, 9.9, '4 dual spinner wheels', 'Telescopic handle', 2),
(9, 'Eagle Creek', 'Gear Warrior Wheeled Duffel 4-Wheel Carry On', 'Polyester', '22x14x9', 38.00, 6.6, '4 spinner wheels', 'Telescopic handle', 2),
(10, 'Osprey', 'Ozone Duplex 65', 'Nylon', '22x14x9', 65.00, 5.4, '2 inline skate wheels', 'Telescopic handle', 2);
 
ALTER TABLE Trolleybag RENAME COLUMN Material TO MaterialType;
ALTER TABLE Trolleybag DROP COLUMN Handles; 
ALTER TABLE Trolleybag DROP COLUMN WEIGHT;
ALTER TABLE Trolleybag ADD COLUMN Color VARCHAR(50);
ALTER TABLE Trolleybag MODIFY COLUMN  Compartments INT;

UPDATE  Trolleybag SET Brand = 'Travel Gear' WHERE ID = 1;
UPDATE  Trolleybag SET Capacity = Capacity + 2; 
UPDATE Trolleybag SET Material = 'Polyester' WHERE Weight < 5.0;
UPDATE Trolleybag SET Model = 'Baseline Series'   WHERE Model LIKE '%Baseline%';
UPDATE Trolleybag SET Weight = Weight - 1.0 WHERE Capacity > 40.0;


CREATE TABLE Electronics (
    ProductID INT UNIQUE,
    ProductName VARCHAR(255) NOT NULL,
    Brand VARCHAR(100),
    Model VARCHAR(100),
    Description TEXT,
    Category VARCHAR(50),
    Price INT,
    StockQuantity INT,
    AverageRating INT,
    Discount INT
);

INSERT INTO Electronics VALUES(1, 'Smartphone', 'Brand A', 'Model X', 'Description of smartphone', 'Mobile Phones', 599.99, 100, 4.5, 0.1),
    (2, 'Laptop', 'Brand B', 'Model Y', 'Description of laptop', 'Laptops', 999.99, 50, 4.8, 0.05),
    (3, 'Smartwatch', 'Brand C', 'Model Z', 'Description of smartwatch', 'Wearable Technology', 199.99, 80, 4.3, 0.0),
    (4, 'Wireless Earbuds', 'Brand D', 'Model W', 'Description of wireless earbuds', 'Audio', 79.99, 120, 4.6, 0.15),
    (5, 'Tablet', 'Brand E', 'Model V', 'Description of tablet', 'Tablets', 299.99, 30, 4.2, 0.2),
    (6, 'Digital Camera', 'Brand F', 'Model U', 'Description of digital camera', 'Cameras', 449.99, 25, 4.7, 0.1),
    (7, 'Gaming Console', 'Brand G', 'Model T', 'Description of gaming console', 'Gaming', 399.99, 40, 4.9, 0.0),
    (8, 'Smart Speaker', 'Brand H', 'Model S', 'Description of smart speaker', 'Smart Home', 149.99, 60, 4.4, 0.05),
    (9, 'External Hard Drive', 'Brand I', 'Model R', 'Description of external hard drive', 'Storage', 129.99, 70, 4.3, 0.1),
    (10, 'Wireless Router', 'Brand J', 'Model Q', 'Description of wireless router', 'Networking', 89.99, 90, 4.6, 0.0);

SET SQL_SAFE_UPDATES = 0;
UPDATE Electronics SET Price = 549.99 WHERE ProductID = 1;
UPDATE Electronics SET Discount = 0.07 WHERE ProductID = 2;
UPDATE Electronics SET StockQuantity = 85 WHERE ProductID = 3;
UPDATE Electronics SET AverageRating = 4.7 WHERE ProductID = 4;
UPDATE Electronics SET Price = 249.99, Discount = 0.25 WHERE ProductID = 5;
UPDATE Electronics SET AverageRating = 4.8 WHERE ProductID = 6;
UPDATE Electronics SET Price = 379.99, StockQuantity = 35 WHERE ProductID = 7;
UPDATE Electronics SET Discount = 0.1 WHERE ProductID = 8;
UPDATE Electronics SET Price = 109.99, StockQuantity = 65 WHERE ProductID = 9;
ALTER TABLE Electronics ADD Email varchar(255);
ALTER TABLE Electronics RENAME COLUMN Price TO AMOUNT;
ALTER TABLE  Electronics DROP COLUMN Discount;
ALTER TABLE Electronics MODIFY AMOUNT DOUBLE; 
ALTER TABLE Electronics MODIFY Brand VARCHAR(150); 
ALTER TABLE Electronics ADD Color VARCHAR(50);

CREATE TABLE Clothing (
    ProductID INT UNIQUE,
    ProductName VARCHAR(255) NOT NULL,
    Brand VARCHAR(100),
    Size VARCHAR(50),
    Color VARCHAR(50),
    Material VARCHAR(100),
    Description TEXT,
    Category VARCHAR(50),
    Price INT,
    StockQuantity INT
);

INSERT INTO Clothing VALUES(1, 'Men\'s T-Shirt', 'Brand A', 'M', 'Black', 'Cotton', 'Description of men\'s t-shirt', 'T-Shirts', 19.99, 50),
    (2, 'Women\'s Dress', 'Brand B', 'L', 'Red', 'Polyester', 'Description of women\'s dress', 'Dresses', 39.99, 30),
    (3, 'Men\'s Jeans', 'Brand C', '32W x 34L', 'Blue', 'Denim', 'Description of men\'s jeans', 'Jeans', 49.99, 40),
    (4, 'Women\'s Blouse', 'Brand D', 'S', 'White', 'Silk', 'Description of women\'s blouse', 'Blouses', 29.99, 60),
    (5, 'Men\'s Polo Shirt', 'Brand E', 'XL', 'Green', 'Cotton', 'Description of men\'s polo shirt', 'Polo Shirts', 24.99, 70),
    (6, 'Women\'s Skirt', 'Brand F', 'M', 'Pink', 'Cotton', 'Description of women\'s skirt', 'Skirts', 34.99, 45),
    (7, 'Men\'s Jacket', 'Brand G', 'L', 'Black', 'Leather', 'Description of men\'s jacket', 'Jackets', 79.99, 25),
    (8, 'Women\'s Sweater', 'Brand H', 'S', 'Gray', 'Wool', 'Description of women\'s sweater', 'Sweaters', 59.99, 55),
    (9, 'Men\'s Shorts', 'Brand I', 'M', 'Blue', 'Polyester', 'Description of men\'s shorts', 'Shorts', 29.99, 65),
    (10, 'Women\'s Leggings', 'Brand J', 'L', 'Black', 'Spandex', 'Description of women\'s leggings', 'Leggings', 19.99, 80);


UPDATE Clothing SET Price = 24.99 WHERE ProductID = 1;
UPDATE Clothing SET StockQuantity = 35 WHERE ProductID = 2;
UPDATE Clothing SET Description = 'New description for men\'s jeans' WHERE ProductID = 3;
UPDATE Clothing SET Price = 34.99,StockQuantity = 50 WHERE ProductID = 4;
UPDATE Clothing SET Brand = 'Brand F' WHERE ProductID = 5;
UPDATE Clothing SET Size = 'S',Color = 'Red' WHERE ProductID = 6;
UPDATE Clothing SET Price = 89.99 WHERE ProductID = 7;
UPDATE Clothing SET Description = 'Updated description for women\'s sweater' WHERE ProductID = 8;
UPDATE Clothing SET StockQuantity = 70 WHERE ProductID = 9;
UPDATE Clothing  SET Price = 24.99, Description = 'New description for women\'s leggings' WHERE ProductID = 10;

CREATE INDEX idx_category ON Clothing(Category);
ALTER TABLE Clothing DROP COLUMN StockQuantity;
ALTER TABLE Clothing ADD COLUMN DISCOUNT INT NOT NULL;
ALTER TABLE  Clothing DROP COLUMN Size;
ALTER TABLE Clothing MODIFY DETAIL VARCHAR(50); 
ALTER TABLE Clothing MODIFY Color VARCHAR(200); 

CREATE TEMPORARY TABLE Temp_CAP (
    ID INT PRIMARY KEY,
    Type VARCHAR(50),
    Color VARCHAR(50),
    Size VARCHAR(20),
    Material VARCHAR(50),
    Description TEXT,
    Price DECIMAL(10, 2),
    Stock INT
);

INSERT INTO Temp_CAP (ID, Type, Color, Size, Material, Description, Price, Stock)
VALUES
(1, 'Baseball Cap', 'Black', 'M', 'Cotton', 'Description of black baseball cap', 19.99, 50),
(2, 'Beanie', 'Gray', 'One Size', 'Wool', 'Description of gray beanie', 14.99, 30),
(3, 'Snapback Cap', 'Blue', 'Adjustable', 'Polyester', 'Description of blue snapback cap', 24.99, 40),
(4, 'Bucket Hat', 'Khaki', 'L', 'Canvas', 'Description of khaki bucket hat', 29.99, 60),
(5, 'Sun Hat', 'Beige', 'XL', 'Straw', 'Description of beige sun hat', 34.99, 70),
(6, 'Trucker Cap', 'Red', 'One Size', 'Mesh', 'Description of red trucker cap', 21.99, 45),
(7, 'Flat Cap', 'Brown', 'M', 'Leather', 'Description of brown flat cap', 39.99, 25),
(8, 'Fedora', 'Black', 'L', 'Felt', 'Description of black fedora', 49.99, 55),
(9, 'Visor', 'White', 'Adjustable', 'Plastic', 'Description of white visor', 9.99, 65),
(10, 'Cowboy Hat', 'Tan', 'XL', 'Faux Leather', 'Description of tan cowboy hat', 59.99, 80);

SELECT * FROM Temp_CAP;

ALTER TABLE Temp_CAP ADD Brand VARCHAR(50);
ALTER TABLE Temp_CAP RENAME COLUMN Description TO ProductDescription;
ALTER TABLE Temp_CAP ALTER COLUMN Size SET NOT  NULL;
ALTER TABLE Temp_CAP DROP COLUMN Stock;
CREATE INDEX idx_type ON Temp_CAP(Type);

CREATE TABLE Books (
    ProductID INT,
    Title VARCHAR(255),
    Author VARCHAR(255),
    Publisher VARCHAR(100),
    PublicationDate DATE,
    Genre VARCHAR(100),
    Language VARCHAR(50),
    Format VARCHAR(50),
    Pages INT,
    Price INT
);

INSERT INTO Books VALUES(1, 'To Kill a Mockingbird', 'Harper Lee', 'HarperCollins Publishers', '1960-07-11', 'Fiction', 'English', 'Paperback', 336, 12.99),
    (2, '1984', 'George Orwell', 'Signet Classic', '1949-06-08', 'Fiction', 'English', 'Paperback', 328, 9.99),
    (3, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Scribner', '1925-04-10', 'Fiction', 'English', 'Hardcover', 180, 14.99),
    (4, 'Pride and Prejudice', 'Jane Austen', 'Penguin Classics', '1813-01-28', 'Fiction', 'English', 'Paperback', 279, 11.99),
    (5, 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 'Scholastic', '1997-06-26', 'Fantasy', 'English', 'Hardcover', 320, 19.99),
    (6, 'The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company', '1951-07-16', 'Fiction', 'English', 'Paperback', 288, 10.99),
    (7, 'The Hobbit', 'J.R.R. Tolkien', 'Houghton Mifflin Harcourt', '1937-09-21', 'Fantasy', 'English', 'Paperback', 322, 13.99),
    (8, 'To Kill a Mockingbird', 'Harper Lee', 'HarperCollins Publishers', '1960-07-11', 'Fiction', 'English', 'Paperback', 336, 12.99),
    (9, 'The Da Vinci Code', 'Dan Brown', 'Anchor', '2003-03-18', 'Mystery', 'English', 'Paperback', 597, 16.99),
    (10, 'Lord of the Flies', 'William Golding', 'Penguin Books', '1954-09-17', 'Fiction', 'English', 'Paperback', 224, 9.99);
UPDATE Books SET Publisher = 'Random House' WHERE ProductID = 5;
UPDATE Books SET Price = 14.99 WHERE Title = 'To Kill a Mockingbird';
UPDATE Books SET Language = 'Spanish' WHERE Publisher = 'Penguin Classics';
UPDATE Books SET Price = Price * 1.1 WHERE PublicationDate < '1950-01-01';
UPDATE Books SET Format = 'Hardcover' WHERE Genre = 'Fantasy';
UPDATE Books SET Author = 'J.R.R. Tolkien' WHERE Title = 'The Hobbit';
UPDATE Books SET PublicationDate = '1952-04-05' WHERE Author = 'J.D. Salinger';
UPDATE Books SET Genre = 'Science Fiction' WHERE Pages >= 300 AND Pages <= 400;
UPDATE Books SET Language = 'French' WHERE Price BETWEEN 10 AND 15;
UPDATE Books SET Price = Price * 1.2 WHERE Genre = 'Mystery';
ALTER TABLE Books ADD COLUMN BESTSELLER INT NOT NULL;
ALTER TABLE Books RENAME COLUMN Pages TO Sheet;
ALTER TABLE  Books DROP COLUMN PublicationDate;
ALTER TABLE Books MODIFY Sheet VARCHAR(50); 
ALTER TABLE Books MODIFY Genre VARCHAR(200); 

CREATE TABLE HomeKitchen (
    ProductID INT UNIQUE,
    ProductName VARCHAR(255) NOT NULL,
    Brand VARCHAR(100),
    Material VARCHAR(100),
    Dimensions VARCHAR(100),
    Color VARCHAR(50),
    Description TEXT,
    Category VARCHAR(50),
    Price INT,
    StockQuantity INT
);

INSERT INTO HomeKitchen VALUES(1, 'Kitchen Knife Set', 'XYZ Kitchenware', 'Stainless Steel', '12 x 2 x 1 inches', 'Silver', 'High-quality knife set with ergonomic handles.', 'Kitchenware', 49.99, 50),
    (2, 'Non-Stick Cooking Pan', 'ABC Cookware', 'Aluminum', '10-inch diameter', 'Black', 'Durable non-stick cooking pan suitable for various recipes.', 'Cookware', 29.99, 30),
    (3, 'Glass Food Storage Containers', 'FreshLock', 'Glass', '6.5 x 4.5 x 3 inches', 'Clear', 'Set of 5 airtight food storage containers with lids.', 'Kitchen Storage', 24.99, 100),
    (4, 'Stainless Steel Mixing Bowls', 'MixingMaster', 'Stainless Steel', '7.5 x 7.5 x 3.5 inches (large)', 'Silver', 'Set of 3 mixing bowls with non-slip bases.', 'Kitchenware', 19.99, 80),
    (5, 'Silicone Baking Mat', 'BakeItEasy', 'Silicone', '16.5 x 11.6 inches', 'Red', 'Reusable and non-stick silicone baking mat for easy baking.', 'Bakeware', 12.99, 150),
    (6, 'Electric Kettle', 'QuickBoil', 'Stainless Steel', '9 x 7 x 10 inches', 'Silver', 'Fast-boiling electric kettle with automatic shutoff feature.', 'Appliances', 34.99, 40),
    (7, 'Kitchen Towel Set', 'SoftTouch', 'Cotton', '16 x 26 inches', 'Assorted colors', 'Set of 6 absorbent kitchen towels.', 'Kitchen Linens', 14.99, 200),
    (8, 'Dish Rack', 'DryAway', 'Stainless Steel', '17.5 x 13 x 5 inches', 'Silver', 'Compact dish rack with utensil holder and drip tray.', 'Kitchen Organization', 27.99, 60),
    (9, 'Food Processor', 'ChopMaster', 'Plastic', '10 x 8 x 15 inches', 'White', 'Multi-functional food processor with various attachments.', 'Appliances', 89.99, 25),
    (10, 'Wine Glasses Set', 'VinoDelight', 'Glass', '9 x 3 x 3 inches', 'Clear', 'Set of 4 elegant wine glasses suitable for any occasion.', 'Drinkware', 19.99, 70);

UPDATE HomeKitchen SET Brand = 'KitchenPro' WHERE ProductID = 1;
UPDATE HomeKitchen SET Price = 39.99 WHERE ProductName = 'Non-Stick Cooking Pan';
UPDATE HomeKitchen SET Material = 'Bamboo' WHERE Category = 'Kitchenware';
UPDATE HomeKitchen SET StockQuantity = StockQuantity + 10 WHERE Color = 'Silver';
UPDATE HomeKitchen SET Description = 'Set of 3 durable mixing bowls with lids.' WHERE ProductID = 4;
UPDATE HomeKitchen SET Dimensions = '8 x 8 x 2 inches' WHERE Brand = 'BakeItEasy';
UPDATE HomeKitchen SET Category = 'Cutlery' WHERE Material = 'Stainless Steel';
UPDATE HomeKitchen SET Price = Price * 0.9 WHERE Category = 'Appliances';
UPDATE HomeKitchen SET Color = 'White' WHERE Price > 30 AND Price < 50;
UPDATE HomeKitchen SET StockQuantity = 20 WHERE ProductName = 'Glass Food Storage Containers';
ALTER TABLE HomeKitchen ADD COLUMN SHIPPINGWEIGHT INT UNIQUE;
ALTER TABLE HomeKitchen ALTER COLUMN ProductName VARCHAR (255) ;
ALTER TABLE HomeKitchen ALTER COLUMN Material VARCHAR(100);
ALTER TABLE HomeKitchen DROP COLUMN StockQuantity;
 ALTER TABLE HomeKitchen ADD BrandCountry VARCHAR(50);
ALTER TABLE HomeKitchen ALTER COLUMN ProductName VARCHAR (255) NOT NULL SET NOT NULL;

 Color VARCHAR(50)

CREATE TABLE MilkProducts (
    ID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Brand VARCHAR(100),
    Type VARCHAR(50),
    Description TEXT,
    Category VARCHAR(50),
    Price DECIMAL(10, 2),
    Stock INT
);

INSERT INTO MilkProducts (ID, ProductName, Brand, Type, Description, Category, Price, Stock)
VALUES
(1, 'Whole Milk', 'FarmFresh', 'Dairy', 'Fresh whole milk with creamy texture', 'Dairy Products', 3.99, 100),
(2, 'Skimmed Milk', 'DairyDelight', 'Dairy', 'Low-fat skimmed milk for health-conscious individuals', 'Dairy Products', 2.99, 150),
(3, 'Yogurt', 'CulturedGoodness', 'Dairy', 'Creamy yogurt with live and active cultures', 'Dairy Products', 4.49, 80),
(4, 'Cheese', 'ArtisanCheeseCo', 'Dairy', 'Assorted cheese varieties for cheese lovers', 'Dairy Products', 6.99, 120),
(5, 'Butter', 'GoldenSpread', 'Dairy', 'Rich and creamy butter for cooking and baking', 'Dairy Products', 5.49, 90),
(6, 'Cream', 'FreshCreamery', 'Dairy', 'Whipping cream for desserts and sauces', 'Dairy Products', 4.99, 70),
(7, 'Condensed Milk', 'SweetDelights', 'Dairy', 'Sweetened condensed milk for desserts and beverages', 'Dairy Products', 3.79, 110),
(8, 'Evaporated Milk', 'SmoothBlend', 'Dairy', 'Concentrated evaporated milk for cooking and baking', 'Dairy Products', 2.49, 130),
(9, 'Almond Milk', 'NuttyNaturals', 'Alternative', 'Dairy-free almond milk for lactose-intolerant individuals', 'Non-Dairy Products', 4.99, 100),
(10, 'Coconut Milk', 'TropicalTaste', 'Alternative', 'Rich and creamy coconut milk for cooking and beverages', 'Non-Dairy Products', 3.49, 120);

UPDATE MilkProducts SET Price = 4.49 WHERE ProductName = 'Whole Milk';
UPDATE MilkProducts SET Stock = Stock + 20 WHERE ProductName = 'Skimmed Milk';
UPDATE MilkProducts SET Brand = 'HealthyBites' WHERE ProductName = 'Yogurt';
UPDATE MilkProducts SET Stock = Stock - 10 WHERE ProductName = 'Cheese';
UPDATE MilkProducts SET Price = Price + 1.00 WHERE ProductName = 'Cream';
UPDATE MilkProducts SET Category = 'Sweeteners' WHERE ProductName = 'Condensed Milk';
UPDATE MilkProducts SET Price = Price + 2.00 WHERE ProductName = 'Almond Milk';
UPDATE MilkProducts SET Description = 'Rich and creamy coconut milk for cooking, baking, and beverages' WHERE ProductName = 'Coconut Milk';

ALTER TABLE MilkProducts ADD ExpirationDate DATE;
ALTER TABLE MilkProducts RENAME COLUMN Category TO ProductCategory;
ALTER TABLE MilkProducts DROP COLUMN Type;
ALTER TABLE MilkProducts ALTER COLUMN Stock SET DEFAULT 0;
CREATE INDEX idx_brand ON MilkProducts(Brand);

CREATE TABLE Toys (
    ID INT PRIMARY KEY,
    ToyName VARCHAR(100),
    Brand VARCHAR(100),
    Type VARCHAR(50),
    Description TEXT,
    AgeGroup VARCHAR(50),
    Price DECIMAL(10, 2),
    Stock INT
);

INSERT INTO Toys (ID, ToyName, Brand, Type, Description, AgeGroup, Price, Stock)
VALUES
(1, 'LEGO Classic Creative Bricks', 'LEGO', 'Building Blocks', 'A set of classic LEGO bricks for creative building', '5-12 years', 24.99, 200),
(2, 'Barbie Dreamhouse', 'Mattel', 'Dollhouse', 'A dreamhouse for Barbie and friends with multiple rooms and accessories', '3-10 years', 179.99, 50),
(3, 'Hot Wheels 20 Car Gift Pack', 'Hot Wheels', 'Die-Cast Cars', 'A pack of 20 assorted die-cast cars for racing and collecting', '3+ years', 19.99, 150),
(4, 'Fisher-Price Laugh & Learn Smart Stages Chair', 'Fisher-Price', 'Educational Toy', 'An interactive chair that introduces learning concepts through songs and phrases', '6-36 months', 29.99, 100),
(5, 'Nerf N-Strike Elite Disruptor', 'Nerf', 'Blaster', 'A quick-draw blaster with 6-dart rotating drum for Nerf battles', '8+ years', 9.99, 300),
(6, 'Melissa & Doug Deluxe Wooden Standing Art Easel', 'Melissa & Doug', 'Art Supplies', 'A wooden art easel with a dry-erase board, chalkboard, paper roll holder, and storage trays', '3-8 years', 79.99, 80),
(7, 'Paw Patrol Ultimate Rescue Fire Truck', 'Spin Master', 'Action Figure', 'A fire truck with extendable ladder and water cannon launcher inspired by Paw Patrol', '3-5 years', 39.99, 120),
(8, 'Baby Einstein Take Along Tunes Musical Toy', 'Baby Einstein', 'Musical Toy', 'A portable musical toy with lights and melodies for infants', '0+ months', 8.99, 200),
(9, 'VTech Sit-to-Stand Learning Walker', 'VTech', 'Learning Toy', 'A two-in-one walker and activity center with interactive features for early learning', '9-36 months', 34.99, 150),
(10, 'Disney Frozen 2 Elsa Musical Doll', 'Disney', 'Doll', 'A musical Elsa doll inspired by Disney\'s Frozen 2 with lights and sounds', '3+ years', 24.99, 100);


UPDATE Toys SET Price = 29.99WHERE ToyName = 'LEGO Classic Creative Bricks';
UPDATE Toys SET Stock = Stock + 10 WHERE ToyName = 'Barbie Dreamhouse';
UPDATE Toys SET Description = 'A pack of 20 assorted die-cast cars for racing, collecting, and imaginative play' WHERE ToyName = 'Hot Wheels 20 Car Gift Pack';
UPDATE Toys SET Price = 24.99 WHERE ToyName = 'Fisher-Price Laugh & Learn Smart Stages Chair';
UPDATE Toys SET AgeGroup = '8-12 years' WHERE ToyName = 'Nerf N-Strike Elite Disruptor';
UPDATE Toys SET Brand = 'VTech Toys' WHERE ToyName = 'VTech Sit-to-Stand Learning Walker';
UPDATE Toys SET Type = 'Fashion Doll' WHERE ToyName = 'Disney Frozen 2 Elsa Musical Doll';
UPDATE Toys SET Price = 12.99 WHERE ToyName = 'Baby Einstein Take Along Tunes Mus ical Toy';
UPDATE Toys SET Stock = Stock - 20 WHERE ToyName = 'Paw Patrol Ultimate Rescue Fire Truck';
UPDATE Toys SET Description = 'A versatile wooden art easel with multiple functions including a dry-erase board, chalkboard, paper roll holder, and storage trays' WHERE ToyName = 'Melissa & Doug Deluxe Wooden Standing Art Easel';


ALTER TABLE Toys ADD Material VARCHAR(50);
ALTER TABLE Toys RENAME COLUMN AgeGroup TO RecommendedAge;
ALTER TABLE Toys ADD CONSTRAINT CHK_Stock_Non_Negative CHECK (Stock >= 0);
CREATE INDEX IDX_Brand ON Toys(Brand);
ALTER TABLE Toys RENAME TO ChildrensToys;

CREATE TABLE Bottles (
    ID INT PRIMARY KEY,
    BottleName VARCHAR(100),
    Brand VARCHAR(100),
    Material VARCHAR(50),
    Capacity DECIMAL(10, 2),
    Color VARCHAR(50),
    Description TEXT,
    Category VARCHAR(50),
    Price DECIMAL(10, 2),
    Stock INT
);

INSERT INTO Bottles (ID, BottleName, Brand, Material, Capacity, Color, Description, Category, Price, Stock)
VALUES
(1, 'Sports Water Bottle', 'HydroFlask', 'Stainless Steel', 32.0, 'Black', 'Insulated water bottle designed for outdoor activities', 'Water Bottles', 39.99, 100),
(2, 'Glass Water Bottle', 'Lifefactory', 'Glass', 22.0, 'Blue', 'Eco-friendly glass bottle with silicone sleeve for grip', 'Water Bottles', 24.99, 150),
(3, 'Plastic Water Bottle', 'Nalgene', 'Plastic', 24.0, 'Clear', 'Durable BPA-free plastic bottle with leak-proof lid', 'Water Bottles', 14.99, 200),
(4, 'Stainless Steel Water Bottle', 'Yeti', 'Stainless Steel', 18.0, 'Silver', 'Double-wall vacuum-insulated bottle for hot and cold drinks', 'Water Bottles', 29.99, 120),
(5, 'Infuser Water Bottle', 'OMorc', 'Plastic', 32.0, 'Green', 'Water bottle with fruit infuser for flavored water on-the-go', 'Water Bottles', 19.99, 180),
(6, 'Collapsible Water Bottle', 'Vapur', 'Plastic', 16.0, 'Purple', 'Reusable collapsible bottle for compact storage', 'Water Bottles', 12.99, 250),
(7, 'Ceramic Water Bottle', 'Soma', 'Ceramic', 20.0, 'White', 'Elegant ceramic bottle with bamboo lid and silicone sleeve', 'Water Bottles', 34.99, 80),
(8, 'Aluminum Water Bottle', 'Klean Kanteen', 'Aluminum', 27.0, 'Red', 'Lightweight and durable aluminum bottle with loop cap', 'Water Bottles', 21.99, 180),
(9, 'Insulated Water Bottle', 'Contigo', 'Stainless Steel', 24.0, 'Teal', 'Thermalock vacuum-insulated bottle with auto-seal technology', 'Water Bottles', 17.99, 200),
(10, 'Hydration Tracking Water Bottle', 'HidrateSpark', 'Plastic', 20.0, 'Pink', 'Smart water bottle that tracks hydration and syncs with a smartphone app', 'Water Bottles', 49.99, 100);

UPDATE Bottles SET Price = 45.99 WHERE BottleName = 'Sports Water Bottle';
UPDATE Bottles SET Stock = Stock - 20 WHERE BottleName = 'Glass Water Bottle';
UPDATE Bottles SET Description = 'Durable plastic bottle with a flip-top lid and wide mouth' WHERE BottleName = 'Plastic Water Bottle';
UPDATE Bottles SET Price = Price + 5 WHERE Material = 'Ceramic';
UPDATE Bottles SET Stock = Stock - 10;
UPDATE Bottles SET Category = 'Smart Bottles' WHERE BottleName = 'Hydration Tracking Water Bottle';
UPDATE Bottles SET Brand = 'Liberty Bottleworks' WHERE BottleName = 'Aluminum Water Bottle';
UPDATE Bottles SET Capacity = 20.0 WHERE BottleName = 'Stainless Steel Water Bottle';
UPDATE Bottles SET Color = 'Blue' WHERE BottleName = 'Collapsible Water Bottle';
UPDATE Bottles SET Description = 'High-quality insulated bottle with leak-proof lid'WHERE BottleName = 'Insulated Water Bottle';

ALTER TABLE Bottles ADD DiscountPercentage DECIMAL(5, 2);
ALTER TABLE Bottles RENAME COLUMN Description TO ProductDescription;
ALTER TABLE Bottles ADD PromotionEndDate DATE;
ALTER TABLE Bottles DROP COLUMN Color;
ALTER TABLE Bottles ADD CONSTRAINT Check_Stock_Non_Negative CHECK (Stock >= 0);
CREATE INDEX Brand_Index ON Bottles(Brand);

CREATE TABLE SportsOutdoors (
    ProductID INT,
    ProductName VARCHAR(255),
    Brand VARCHAR(100),
    Size VARCHAR(50),
    Color VARCHAR(50),
    Description TEXT,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    StockQuantity INT,
    AverageRating DECIMAL(3,2)
);

INSERT INTO SportsOutdoors VALUES(1, 'Camping Tent', 'OutdoorMaster', '4 Person', 'Green', 'Spacious camping tent suitable for family outings.', 'Camping Equipment', 99.99, 20, 4.5),
    (2, 'Hiking Backpack', 'TrailBlazer', '30 Liters', 'Black', 'Lightweight and durable hiking backpack with multiple compartments.', 'Hiking Gear', 49.99, 50, 4.7),
    (3, 'Running Shoes', 'SpeedRunner', 'US 10', 'Blue', 'Comfortable running shoes with breathable mesh upper.', 'Running Gear', 79.99, 100, 4.8),
    (4, 'Fishing Rod', 'AnglerPro', '6 Feet', 'Red', 'High-quality fishing rod suitable for freshwater and saltwater fishing.', 'Fishing Equipment', 59.99, 30, 4.6),
    (5, 'Yoga Mat', 'ZenFitness', '72 x 24 inches', 'Purple', 'Non-slip yoga mat with cushioned surface for comfortable workouts.', 'Yoga Accessories', 29.99, 80, 4.9),
    (6, 'Cycling Helmet', 'RideSafe', 'Medium', 'Yellow', 'Safety-certified cycling helmet with adjustable straps.', 'Cycling Gear', 39.99, 60, 4.7),
    (7, 'Soccer Ball', 'GoalMaster', 'Size 5', 'White/Black', 'Official size and weight soccer ball suitable for matches and training.', 'Soccer Equipment', 19.99, 150, 4.5),
    (8, 'Golf Club Set', 'FairwayPro', 'Standard', 'Silver/Black', 'Complete set of golf clubs including driver, irons, and putter.', 'Golf Equipment', 299.99, 10, 4.8),
    (9, 'Swimming Goggles', 'AquaClear', 'One Size', 'Clear', 'Anti-fog swimming goggles with UV protection.', 'Swimming Gear', 14.99, 200, 4.6),
    (10, 'Camping Chair', 'CampComfort', 'One Size', 'Blue/Grey', 'Foldable camping chair with cup holder and carrying bag.', 'Camping Furniture', 24.99, 120, 4.7);

UPDATE SportsOutdoors SET Brand = 'OutdoorAdventures' WHERE ProductID = 1;
UPDATE SportsOutdoors SET Price = 54.99 WHERE ProductName = 'Hiking Backpack';
UPDATE SportsOutdoors SET Color = 'Black/Red' WHERE AverageRating > 4.7;
UPDATE SportsOutdoors SET StockQuantity = StockQuantity + 15 WHERE Size = 'Standard';
UPDATE SportsOutdoors SET Description = 'Professional-grade fishing rod suitable for various fishing techniques.' WHERE ProductID = 4;
UPDATE SportsOutdoors SET Category = 'Outdoor Recreation' WHERE Price > 50 AND Price < 100;
UPDATE SportsOutdoors SET Price = Price * 0.9 WHERE Color = 'Blue';
UPDATE SportsOutdoors SET Size = 'Large' WHERE Category = 'Cycling Gear';
UPDATE SportsOutdoors SET AverageRating = 4.9 WHERE ProductName = 'Running Shoes';
UPDATE SportsOutdoors SET StockQuantity = 25 WHERE ProductID = 7;
ALTER TABLE SportsOutdoors ADD COLUMN DiscountPercentage INT UNIQUE;
ALTER TABLE SportsOutdoors ADD DiscountPercentage DECIMAL(5,2);
ALTER TABLE SportsOutdoors RENAME COLUMN Description TO ProductDescription;
CREATE INDEX Brand_Index ON SportsOutdoors(Brand);

CREATE TABLE BeautyPersonalCare (
    ProductID INT UNIQUE,
    ProductName VARCHAR(255) NOT NULL,
    Brand VARCHAR(100),
    Type VARCHAR(50),
    Description TEXT,
    Category VARCHAR(50),
    Price INT,
    StockQuantity INT,
    AverageRating INT,
    Discount INT
);

INSERT INTO BeautyPersonalCare VALUES(1, 'Moisturizing Cream', 'GlowBeauty', 'Face Moisturizer', 'Hydrating facial cream with vitamin E for all skin types.', 'Skincare', 24.99, 50, 4.7, 0),
    (2, 'Anti-Aging Serum', 'YouthfulGlow', 'Serum', 'Anti-aging serum enriched with collagen and hyaluronic acid.', 'Anti-Aging', 39.99, 30, 4.8, 0),
    (3, 'Hair Shampoo', 'SilkyLocks', 'Shampoo', 'Nourishing shampoo for smooth and shiny hair.', 'Hair Care', 12.99, 100, 4.5, 0),
    (4, 'Body Lotion', 'SoftTouch', 'Body Lotion', 'Moisturizing body lotion with shea butter for soft and supple skin.', 'Body Care', 9.99, 80, 4.6, 0),
    (5, 'Lipstick', 'ColorPop', 'Lipstick', 'Long-lasting matte lipstick available in various shades.', 'Makeup', 14.99, 120, 4.7, 0),
    (6, 'Cleansing Wipes', 'FreshFace', 'Facial Wipes', 'Gentle cleansing wipes infused with cucumber extract.', 'Skincare', 7.99, 150, 4.5, 0),
    (7, 'Perfume', 'FragranceElegance', 'Eau de Parfum', 'Elegant fragrance with floral and woody notes.', 'Fragrance', 49.99, 40, 4.8, 0),
    (8, 'Eyeliner', 'DefineLine', 'Liquid Eyeliner', 'Waterproof liquid eyeliner for precise and long-lasting makeup.', 'Makeup', 9.99, 200, 4.6, 0),
    (9, 'Sunscreen Lotion', 'SunShield', 'Sunscreen', 'Broad-spectrum sunscreen with SPF 50 for sun protection.', 'Sun Care', 19.99, 60, 4.7, 0),
    (10, 'Nail Polish', 'NailPerfection', 'Nail Polish', 'Fast-drying nail polish available in vibrant colors.', 'Nail Care', 6.99, 180, 4.5, 0);

UPDATE BeautyPersonalCare SET Brand = 'GlowUpBeauty' WHERE ProductID = 1;
UPDATE BeautyPersonalCare SET Price = 29.99 WHERE ProductName = 'Anti-Aging Serum';
UPDATE BeautyPersonalCare SET StockQuantity = StockQuantity + 20 WHERE Category = 'Makeup';
UPDATE BeautyPersonalCare SET Description = 'Hydrating facial cream with vitamin E and SPF 30 for all-day sun protection.' WHERE ProductID = 1;
UPDATE BeautyPersonalCare SET Price = Price * 0.95 WHERE AverageRating > 4.6;
UPDATE BeautyPersonalCare SET StockQuantity = 70 WHERE ProductName = 'Perfume';
UPDATE BeautyPersonalCare SET Price = Price * 0.95 WHERE AverageRating > 4.6;
UPDATE BeautyPersonalCare SET Category = 'Skin Care' WHERE Brand = 'SunShield';
UPDATE BeautyPersonalCare SET Discount = 10 WHERE Price > 15 AND Price < 25;
ALTER TABLE BeautyPersonalCare ADD COLUMN ExpirationDate DATE NOT NULL;
ALTER TABLE BeautyPersonalCare ADD Volume VARCHAR(20);
ALTER TABLE BeautyPersonalCare RENAME COLUMN Brand TO BrandName;
ALTER TABLE BeautyPersonalCare ADD ExpirationDate DATE;
ALTER TABLE BeautyPersonalCare DROP COLUMN Rating;
ALTER TABLE BeautyPersonalCare ADD CONSTRAINT Check_Stock_Non_Negative CHECK (Stock >= 0);


CREATE TABLE Paint (
    ID INT PRIMARY KEY,
    PaintName VARCHAR(100),
    Brand VARCHAR(100),
    Color VARCHAR(50),
    Finish VARCHAR(50),
    Volume DECIMAL(8, 2),
    Description TEXT,
    Category VARCHAR(50),
    Price DECIMAL(10, 2),
    Stock INT
);

INSERT INTO Paint (ID, PaintName, Brand, Color, Finish, Volume, Description, Category, Price, Stock)
VALUES
(1, 'Premium Interior Paint', 'Behr', 'White', 'Matte', 1.0, 'High-quality interior paint for walls and ceilings', 'Interior Paint', 29.99, 100),
(2, 'Exterior Acrylic Paint', 'Sherwin-Williams', 'Gray', 'Satin', 0.5, 'Weather-resistant acrylic paint for exterior surfaces', 'Exterior Paint', 39.99, 80),
(3, 'Metallic Spray Paint', 'Rust-Oleum', 'Gold', 'Metallic', 0.25, 'Spray paint for adding metallic finish to surfaces', 'Spray Paint', 9.99, 200),
(4, 'Chalked Paint', 'Rust-Oleum', 'Slate Gray', 'Chalk', 0.5, 'Chalked finish paint for furniture and decor', 'Specialty Paint', 14.99, 150),
(5, 'Acrylic Craft Paint', 'Apple Barrel', 'Assorted', 'Gloss', 2.0, 'Multi-surface acrylic paint for crafts and DIY projects', 'Craft Paint', 1.99, 300),
(6, 'Watercolor Paint Set', 'Winsor & Newton', 'Assorted', 'Watercolor', 12.0, 'Set of watercolor paints in assorted colors with brush', 'Art Supplies', 24.99, 50),
(7, 'Oil-Based Paint Marker', 'Sharpie', 'Black', 'Oil-Based', 0.02, 'Permanent paint marker for writing and drawing on various surfaces', 'Markers', 3.49, 200),
(8, 'Spray Primer', 'Krylon', 'White', 'Primer', 0.75, 'Primer spray paint for preparing surfaces before painting', 'Spray Paint', 6.99, 120),
(9, 'Concrete Stain', 'BEHR Premium', 'Terra Cotta', 'Stain', 1.0, 'Stain for enhancing the appearance of concrete surfaces', 'Concrete Paint', 19.99, 80),
(10, 'Glow in the Dark Paint', 'DecoArt', 'Green', 'Glow', 0.5, 'Specialty paint that glows in the dark after exposure to light', 'Specialty Paint', 7.99, 150);







 







