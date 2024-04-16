CREATE DATABASE ASSIGMENT_2;
USE ASSIGMENT_2;

CREATE TABLE HELMETSS (
    ID INT,
    name VARCHAR(255),
    manufacturer TEXT,
    color ENUM('Red', 'Blue', 'Green', 'Yellow'),
    weight FLOAT,
    price DECIMAL(10, 2),
    size VARCHAR(10),
    is_full_face BOOLEAN,
    release_date DATE,
    rating INT,
    material BINARY(255),
    warranty_period  YEAR,
    production_location POINT,
    certification JSON,
    review VARCHAR (25)
);

    
    SHOW  TABLES;
    INSERT INTO HELMETSS VALUES (1, 'Helmet A', 'Manufacturer X', 'Red', 0.5, 49.99, 'M', TRUE, '2024-04-15', 4, 0x48656C6D6574204D6174657269616C, '5', POINT(1.23, 456), '{"certified": true}', 'Good');
   INSERT INTO HELMETSS VALUES (2, 'Helmet B', 'Manufacturer Y', 'Blue', 0.6, 59.99, 'L', FALSE, '2024-04-16', 5, 0x48656C6D6574204D6174657269616C, '3', POINT(2.34, 567), '{"certified": true}', 'Excellent');
INSERT INTO HELMETSS VALUES (3, 'Helmet C', 'Manufacturer Z', 'Green', 0.7, 69.99, 'XL', TRUE, '2024-04-17', 3, 0x48656C6D6574204D6174657269616C, '4', POINT(3.45, 678), '{"certified": false}', 'Fair');
INSERT INTO HELMETSS VALUES(4, 'Helmet D', 'Manufacturer X', 'Yellow', 0.8, 79.99, 'S', FALSE, '2024-04-18', 2, 0x48656C6D6574204D6174657269616C, '3', POINT(4.56, 789), '{"certified": true}', 'Average');
INSERT INTO HELMETSS VALUES (5, 'Helmet E', 'Manufacturer Y', 'Red', 0.9, 89.99, 'M', TRUE, '2024-04-19', 4, 0x48656C6D6574204D6174657269616C, '2', POINT(5.67, 890), '{"certified": false}', 'Poor');
INSERT INTO HELMETSS VALUES(6, 'Helmet F', 'Manufacturer Z', 'Blue', 1.0, 99.99, 'L', FALSE, '2024-04-20', 5, 0x48656C6D6574204D6174657269616C, '1', POINT(6.78, 901), '{"certified": true}', 'Very Good');
INSERT INTO HELMETSS VALUES(7, 'Helmet G', 'Manufacturer X', 'Green', 1.1, 109.99, 'XL', TRUE, '2024-04-21', 3, 0x48656C6D6574204D6174657269616C, '2', POINT(7.89, 123), '{"certified": false}', 'Great');
INSERT INTO HELMETSS VALUES(8, 'Helmet H', 'Manufacturer Y', 'Yellow', 1.2, 119.99, 'S', FALSE, '2024-04-22', 2, 0x48656C6D6574204D6174657269616C, '4', POINT(8.90, 234), '{"certified": true}', 'Average');
INSERT INTO HELMETSS VALUES(9, 'Helmet I', 'Manufacturer Z', 'Red', 1.3, 129.99, 'M', TRUE, '2024-04-23', 4, 0x48656C6D6574204D6174657269616C, '3', POINT(9.01, 345), '{"certified": false}', 'Poor');
INSERT INTO HELMETSS VALUES(10, 'Helmet J', 'Manufacturer X', 'Blue', 1.4, 139.99, 'L', FALSE, '2024-04-24', 5, 0x48656C6D6574204D6174657269616C, '2', POINT(10.12, 456), '{"certified": true}', 'Very Good');
INSERT INTO HELMETSS VALUES(11, 'Helmet K', 'Manufacturer Y', 'Green', 1.5, 149.99, 'XL', TRUE, '2024-04-25', 3, 0x48656C6D6574204D6174657269616C, '3', POINT(11.23, 567), '{"certified": false}', 'Great');
INSERT INTO HELMETSS VALUES(12, 'Helmet L', 'Manufacturer Z', 'Yellow', 1.6, 159.99, 'S', FALSE, '2024-04-26', 2, 0x48656C6D6574204D6174657269616C, '4', POINT(12.34, 678), '{"certified": true}', 'Average');
INSERT INTO HELMETSS VALUES(13, 'Helmet M', 'Manufacturer X', 'Red', 1.7, 169.99, 'M', TRUE, '2024-04-27', 4, 0x48656C6D6574204D6174657269616C, '5', POINT(13.45, 789), '{"certified": false}', 'Poor');
INSERT INTO HELMETSS VALUES(14, 'Helmet N', 'Manufacturer Y', 'Blue', 1.8, 179.99, 'L', FALSE, '2024-04-28', 5, 0x48656C6D6574204D6174657269616C, '3', POINT(14.56, 890), '{"certified": true}', 'Very Good');
INSERT INTO HELMETSS VALUES(15, 'Helmet O', 'Manufacturer Z', 'Green', 1.9, 189.99, 'XL', TRUE, '2024-04-29', 3, 0x48656C6D6574204D6174657269616C, '2', POINT(15.67, 901), '{"certified": false}', 'Great');
    SELECT * FROM HELMETSS;

    CREATE TABLE BATZ(
    ID INT,
    name VARCHAR(100),
    brand TEXT,
    weight DECIMAL(6,2),
    length INT,
    material VARCHAR(50),
    handle ENUM('Short Handle', 'Long Handle'),
    grip_type VARCHAR(50),
    price int,
    stock_quantity INT,
    is_autographed BOOLEAN,
    manufacturing_date DATE,
    warranty_period  YEAR,
    dimensions  VARCHAR(20),
    reviews VARCHAR (20) 
    );
    SHOW TABLES;
INSERT INTO BATZ VALUES (1,'Cricket Bat', 'SG', 2.7, 36, 'Willow', 'Short Handle', 'Rubber', 1500, 100, TRUE, '2024-04-16', 2, '38x4x2', 'Good');
INSERT INTO BATZ VALUES (2, 'Cricket Bat 2', 'SS', 2.8, 36, 'Willow', 'Short Handle', 'Rubber', 1800, 80, FALSE, '2024-04-16', 2, '39x4x2', 'Great');
INSERT INTO BATZ VALUES (3, 'Tennis Racket', 'Wilson', 0.3, 27, 'Graphite', 'Long Handle', 'Leather', 2000, 50, TRUE, '2024-04-16', 1, '27x10x2', 'Excellent');
INSERT INTO BATZ VALUES (4, 'Baseball Bat', 'Easton', 2.5, 34, 'Aluminum', 'Short Handle', 'Rubber', 1200, 120, FALSE, '2024-04-16', 3, '36x3x3', 'Awesome');
INSERT INTO BATZ VALUES(5, 'Cricket Bat 3', 'Kookaburra', 2.6, 35, 'Willow', 'Short Handle', 'Rubber', 1600, 90, TRUE, '2024-04-16', 2, '37x4x2', 'Satisfactory');
INSERT INTO BATZ VALUES(7, 'Hockey Stick', 'Bauer', 1.2, 36, 'Wood', 'Long Handle', 'Rubber', 800, 70, FALSE, '2024-04-16', 1, '36x4x2', 'Average');
INSERT INTO BATZ VALUES(8, 'Cricket Bat 4', 'GM', 2.9, 37, 'Willow', 'Short Handle', 'Rubber', 1700, 110, TRUE, '2024-04-16', 2, '38x4x2', 'Poor');
INSERT INTO BATZ VALUES(9, 'Squash Racket', 'Head', 0.2, 27, 'Graphite', 'Short Handle', 'Leather', 1500, 30, FALSE, '2024-04-16', 1, '27x10x2', 'Not Bad');
INSERT INTO BATZ VALUES(10, 'Softball Bat', 'Miken', 2.7, 34, 'Composite', 'Short Handle', 'Rubber', 1100, 80, FALSE, '2024-04-16', 3, '36x3x3', 'Terrible');
INSERT INTO BATZ VALUES(11, 'Cricket Bat 5', 'Gray-Nicolls', 2.8, 36, 'Willow', 'Short Handle', 'Rubber', 1750, 95, TRUE, '2024-04-16', 2, '39x4x2', 'Exceptional');
INSERT INTO BATZ VALUES(12, 'Table Tennis Racket', 'Butterfly', 0.1, 15, 'Wood', 'Short Handle', 'Rubber', 1000, 40, FALSE, '2024-04-16', 1, '15x6x2', 'Outstanding');
INSERT INTO BATZ VALUES(13, 'Table Tennis Racket', 'Butterfly', 0.1, 15, 'Wood', 'Short Handle', 'Rubber', 1000, 40, FALSE, '2024-04-16', 1, '15x6x2', 'Outstanding');
INSERT INTO BATZ VALUES(14, 'Cricket Bat 6', 'New Balance', 2.7, 36, 'Willow', 'Short Handle', 'Rubber', 1650, 85, TRUE, '2024-04-16', 2, '37x4x2', 'Magnificent');
INSERT INTO BATZ VALUES(15, 'Badminton Racket', 'Yonex', 0.1, 26, 'Graphite', 'Long Handle', 'Leather', 1200, 45, FALSE, '2024-04-16', 1, '26x8x2', 'Impressive');
SELECT * FROM BATZ;

CREATE TABLE RIDING_GEARES(
    ID INT,
    gear_name VARCHAR(100),
    category TEXT,
    brand VARCHAR(50),
    weight DECIMAL(6,2),
    size VARCHAR(10),
    is_waterproof BOOLEAN,
    color ENUM('Red', 'Blue', 'Green', 'Yellow'),
    purchase_date DATE,
    price INT,
    stock_quantity INT,
    is_discount_available BOOLEAN,
    material VARCHAR(50),
    dimensions INT,
    additional_info VARCHAR(50)
);
SHOW TABLES;
INSERT INTO RIDING_GEARES VALUES(1, 'Helmet', 'Head Protection', 'ABC', 1.2, 'M', TRUE, 'Red', '2023-05-15', 200, 50, FALSE, 'Plastic', 10, 'Adjustable');
INSERT INTO RIDING_GEARES VALUES(2, 'Jacket', 'Upper Body Protection', 'XYZ', 2.5, 'L', FALSE, 'Blue', '2023-06-20', 300, 30, TRUE, 'Leather', 20, 'Waterproof');
INSERT INTO RIDING_GEARES VALUES(3, 'Gloves', 'Hand Protection', 'PQR', 0.5, 'S', TRUE, 'Green', '2023-07-25', 50, 100, FALSE, 'Rubber', 5, 'Fingerless');
INSERT INTO RIDING_GEARES VALUES(4, 'Boots', 'Foot Protection', 'LMN', 1.8, 'XL', TRUE, 'Yellow', '2023-08-30', 150, 80, TRUE, 'Synthetic', 15, 'Steel Toe');
INSERT INTO RIDING_GEARES VALUES(5, 'Pants', 'Lower Body Protection', 'DEF', 1.7, 'M', FALSE, 'Red', '2023-09-05', 100, 70, FALSE, 'Polyester', 12, 'Breathable');
INSERT INTO RIDING_GEARES VALUES(6, 'Body Armor', 'Chest Protection', 'GHI', 3.0, 'XL', TRUE, 'Blue', '2023-10-10', 400, 40, TRUE, 'Carbon Fiber', 25, 'Shockproof');
INSERT INTO RIDING_GEARES VALUES(7, 'Neck Brace', 'Neck Protection', 'JKL', 0.8, 'M', TRUE, 'Green', '2023-11-15', 80, 90, FALSE, 'Foam', 8, 'Adjustable');
INSERT INTO RIDING_GEARES VALUES(8, 'Elbow Guards', 'Arm Protection', 'MNO', 0.3, 'S', FALSE, 'Yellow', '2023-12-20', 30, 120, TRUE, 'Plastic', 6, 'Lightweight');
INSERT INTO RIDING_GEARES VALUES(9, 'Knee Pads', 'Leg Protection', 'RST', 0.4, 'L', TRUE, 'Red', '2024-01-25', 40, 110, FALSE, 'Neoprene', 7, 'Flexible');
INSERT INTO RIDING_GEARES VALUES(10, 'Riding Glasses', 'Eye Protection', 'UVW', 0.1, 'M', FALSE, 'Blue', '2024-02-28', 20, 150, TRUE, 'Polycarbonate', 3, 'Anti-fog');
INSERT INTO RIDING_GEARES VALUES(11, 'Ear Plugs', 'Hearing Protection', 'XYZ', 0.05, 'S', TRUE, 'Green', '2024-03-05', 5, 200, FALSE, 'Silicone', 2, 'Reusable');
INSERT INTO RIDING_GEARES VALUES(12, 'Reflective Vest', 'Visibility Gear', 'ABC', 0.3, 'XL', TRUE, 'Yellow', '2024-04-10', 30, 100, TRUE, 'Mesh', 4, 'High-visibility');
INSERT INTO RIDING_GEARES VALUES(13, 'Rain Cover', 'Weather Protection', 'DEF', 0.2, 'M', TRUE, 'Red', '2024-05-15', 25, 80, FALSE, 'Nylon', 3, 'Waterproof');
INSERT INTO RIDING_GEARES VALUES(14, 'Tool Kit', 'Emergency Gear', 'GHI', 1.0, 'L', FALSE, 'Blue', '2024-06-20', 50, 50, TRUE, 'Metal', 10, 'Compact');
INSERT INTO RIDING_GEARES VALUES(15, 'First Aid Kit', 'Safety Gear', 'JKL', 0.5, 'S', TRUE, 'Green', '2024-07-25', 40, 70, FALSE, 'Plastic', 5, 'Portable');
SELECT * FROM RIDING_GEARES;

CREATE TABLE BIKE (
    ID INT,
    brand VARCHAR(50),
    model VARCHAR(50),
    type ENUM('Road', 'Mountain', 'Hybrid', 'BMX', 'Cruiser'),
    frame_material VARCHAR(50),
    wheel_size DECIMAL(4,2),
    speed INT,
    price VARCHAR(20),
    is_used BOOLEAN,
    purchase_date DATE,
    warranty_period INT,
    dimensions VARCHAR(50),
    color VARCHAR(20),
    accessories TEXT,
    owner_info JSON
);
SHOW TABLES;

INSERT INTO BIKE VALUES (1, 'Trek', 'FX 2', 'Hybrid', 'Aluminum', 28.0, 21, '$600', FALSE, '2023-01-10', 2, '72x25x40', 'Black', 'Bottle holder, Front and Rear Lights', '{"name": "John Doe", "age": 35, "location": "New York"}');
INSERT INTO BIKE VALUES(2, 'Specialized', 'Rockhopper Expert', 'Mountain', 'Aluminum', 29.0, 12, '$900', TRUE, '2023-02-15', 3, '76x30x42', 'Red', 'Helmet, Gloves, Pump', '{"name": "Alice Smith", "age": 28, "location": "California"}');
INSERT INTO BIKE VALUES(3, 'Cannondale', 'Synapse Carbon Disc Ultegra', 'Road', 'Carbon', 28.0, 22, '$2000', FALSE, '2023-03-20', 5, '70x28x38', 'Blue', 'Saddle Bag, Multi-tool', '{"name": "Michael Johnson", "age": 40, "location": "Texas"}');
INSERT INTO BIKE VALUES(4, 'Giant', 'Escape 3', 'Hybrid', 'Aluminum', 28.0, 21, '$400', TRUE, '2023-04-25', 1, '75x27x41', 'Yellow', 'Lock, Bell', '{"name": "Emily Wilson", "age": 32, "location": "Florida"}');
INSERT INTO BIKE VALUES(5, 'Diamondback', 'Overdrive 29', 'Mountain', 'Aluminum', 29.0, 11, '$700', FALSE, '2023-05-30', 4, '78x31x45', 'Green', 'Phone Mount, Kickstand', '{"name": "David Brown", "age": 45, "location": "Washington"}');
INSERT INTO BIKE VALUES(6, 'Raleigh', 'Cruiser', 'Cruiser', 'Steel', 26.0, 7, '$300', FALSE, '2023-06-05', 2, '68x29x39', 'Black', 'Basket, Fenders', '{"name": "Emma Taylor", "age": 27, "location": "Massachusetts"}');
INSERT INTO BIKE VALUES(7, 'Schwinn', 'Stingray', 'BMX', 'Steel', 20.0, 1, '$150', TRUE, '2023-07-10', 1, '62x24x35', 'Red', 'Handlebar Grips', '{"name": "James Anderson", "age": 38, "location": "Illinois"}');
INSERT INTO BIKE VALUES(8, 'Fuji', 'Touring', 'Road', 'Aluminum', 28.0, 18, '$800', FALSE, '2023-08-15', 3, '74x26x37', 'Blue', 'Rack, Panniers', '{"name": "Olivia Martinez", "age": 31, "location": "Georgia"}');
INSERT INTO BIKE VALUES(9, 'Kona', 'Dew Plus', 'Hybrid', 'Aluminum', 28.0, 24, '$650', TRUE, '2023-09-20', 2, '73x28x40', 'Green', 'Mudguards, Rear Light', '{"name": "Daniel Clark", "age": 33, "location": "Ohio"}');
INSERT INTO BIKE VALUES(10, 'Norco', 'Fluid FS 3', 'Mountain', 'Aluminum', 29.0, 11, '$1200', FALSE, '2023-10-25', 4, '77x30x43', 'Yellow', 'Water Bottle Cage, GPS', '{"name": "Sophia Lee", "age": 29, "location": "Michigan"}');
INSERT INTO BIKE VALUES(11, 'Electra', 'Townie Go! 7D', 'Hybrid', 'Aluminum', 27.5, 7, '$1300', FALSE, '2023-11-30', 2, '72x27x38', 'Orange', 'Kickstand, Rear Rack', '{"name": "William Garcia", "age": 36, "location": "Arizona"}');
INSERT INTO BIKE VALUES(12, 'Cervelo', 'Caledonia', 'Road', 'Carbon', 28.0, 22, '$3500', FALSE, '2024-01-05', 5, '70x28x38', 'Black', 'Pedals, Bike Computer', '{"name": "Ava Hernandez", "age": 30, "location": "Colorado"}');
INSERT INTO BIKE VALUES(13, 'Santa Cruz', 'Chameleon', 'Mountain', 'Aluminum', 27.5, 12, '$1600', TRUE, '2024-02-10', 3, '76x31x42', 'Blue', 'Bike Stand, Tire Repair Kit', '{"name": "Ethan Miller", "age": 34, "location": "Nevada"}');
INSERT INTO BIKE VALUES(14, 'Harley-Davidson', 'Low Rider S', 'Cruiser', 'Steel', 26.0, 6, '$18000', TRUE, '2024-03-15', 1, '68x30x40', 'Black', 'Windshield, Saddlebags', '{"name": "Isabella Taylor", "age": 37, "location": "Utah"}');
INSERT INTO BIKE VALUES(15, 'GT', 'Slammer', 'BMX', 'Steel', 20.0, 1, '$200', FALSE, '2024-04-20', 1, '62x24x35', 'Green', 'Pegs, Brake Pads', '{"name": "Alexander Johnson", "age": 32, "location": "California"}');
SELECT* FROM BIKE;

CREATE TABLE LAPTOP (
    ID INT,
    brand VARCHAR(50),
    model VARCHAR(50),
    processor TEXT,
    ram_size INT,
    storage_capacity DECIMAL(8,2),
    screen_size DECIMAL(4,2),
    operating_system VARCHAR(50),
    is_touchscreen BOOLEAN,
    purchase_date DATE,
    price INT,
    warranty_period VARCHAR(50),
    dimensions INT,
    color VARCHAR(15),
    additional_features VARCHAR(60)
);
SHOW TABLES ;
INSERT INTO LAPTOP VALUES (1, 'HP', 'Pavilion', 'Intel Core i5', 8, 512.00, 15.6, 'Windows 10', TRUE, '2023-01-10', 800, '1 year', 156785, 'Silver', 'Backlit Keyboard, Fingerprint Reader');
INSERT INTO LAPTOP VALUES(2, 'Dell', 'Inspiron', 'AMD Ryzen 7', 16, 1024.00, 14.0, 'Windows 11', FALSE, '2023-02-15', 1200, '2 years', 165824, 'Black', 'Touchscreen, Stylus Support');
INSERT INTO LAPTOP VALUES(3, 'Lenovo', 'ThinkPad', 'Intel Core i7', 16, 1000.00, 13.3, 'Windows 11', TRUE, '2023-03-20', 1500, '3 years', 174523, 'Gray', 'Convertible, Thunderbolt 4');
INSERT INTO LAPTOP VALUES(4, 'Apple', 'MacBook Air', 'Apple M1', 16, 512.00, 13.3, 'macOS', TRUE, '2023-04-25', 1800, '1 year', 183412, 'Silver', 'Retina Display, Touch ID');
INSERT INTO LAPTOP VALUES(5, 'Asus', 'ZenBook', 'Intel Core i9', 32, 2000.00, 15.6, 'Windows 11', TRUE, '2023-05-30', 2500, '2 years', 192756, 'Blue', 'NVIDIA RTX 3080, 4K OLED Display');
INSERT INTO LAPTOP VALUES(6, 'Acer', 'Swift', 'AMD Ryzen 5', 8, 512.00, 14.0, 'Windows 10', FALSE, '2023-06-05', 700, '1 year', 206745, 'Black', 'Long Battery Life, Ultra-Thin Design');
INSERT INTO LAPTOP VALUES(7, 'MSI', 'GS66 Stealth', 'Intel Core i7', 32, 1000.00, 15.6, 'Windows 10', TRUE, '2023-07-10', 2300, '2 years', 219384, 'Black', '144Hz Refresh Rate, RGB Keyboard');
INSERT INTO LAPTOP VALUES(8, 'Razer', 'Blade', 'Intel Core i7', 16, 512.00, 15.6, 'Windows 10', TRUE, '2023-08-15', 2400, '1 year', 225648, 'Black', 'Thin Bezel Display, Aluminum Chassis');
INSERT INTO LAPTOP VALUES(9, 'Samsung', 'Galaxy Book', 'Intel Core i5', 8, 256.00, 13.3, 'Windows 11', TRUE, '2023-09-20', 1000, '1 year', 231475, 'Silver', 'S Pen Support, AMOLED Display');
INSERT INTO LAPTOP VALUES(10, 'Microsoft', 'Surface Laptop', 'Intel Core i5', 8, 512.00, 13.5, 'Windows 11', TRUE, '2023-10-25', 1500, '2 years', 245986, 'Platinum', 'Alcantara Keyboard, Surface Pen Compatible');
INSERT INTO LAPTOP VALUES(11, 'Google', 'Pixelbook', 'Intel Core i7', 16, 256.00, 13.3, 'Chrome OS', TRUE, '2023-11-30', 1300, '1 year', 256398, 'White', 'Google Assistant Built-in, Pixelbook Pen Support');
INSERT INTO LAPTOP VALUES(12, 'Huawei', 'MateBook X Pro', 'Intel Core i7', 16, 1000.00, 14.0, 'Windows 10', TRUE, '2024-01-05', 1800, '1 year', 267841, 'Space Gray', '3K Touchscreen, NVIDIA GeForce MX250');
INSERT INTO LAPTOP VALUES(13, 'LG', 'Gram', 'Intel Core i5', 8, 512.00, 14.0, 'Windows 11', TRUE, '2024-02-10', 1200, '2 years', 275896, 'Silver', 'Ultra-Lightweight, MIL-STD-810G Certified');
INSERT INTO LAPTOP VALUES(14, 'Xiaomi', 'Mi Notebook', 'Intel Core i5', 8, 512.00, 15.6, 'Windows 11', TRUE, '2024-03-15', 1000, '1 year', 285614, 'Gray', 'NVIDIA GeForce MX450, Fingerprint Sensor');
INSERT INTO LAPTOP VALUES(15, 'Sony', 'VAIO', 'Intel Core i7', 16, 1000.00, 15.5, 'Windows 10', TRUE, '2024-04-20', 2000, '3 years', 297841, 'Black', '4K Display, Dolby Atmos Speakers');
SELECT* FROM LAPTOP

CREATE TABLE MOBILE (
    ID INT,
    brand VARCHAR(50),
    model VARCHAR(50),
    operating_system VARCHAR(50),
    screen_size DECIMAL(4,2),
    resolution TEXT,
    battery_capacity INT,
    is_5g_capable BOOLEAN,
    processor VARCHAR(100),
    ram_size INT,
    internal_storage DECIMAL(8,2),
    color VARCHAR(20),
    is_waterproof BOOLEAN,
    purchase_date DATE,
    price INT
);
SHOW TABLES;
INSERT INTO MOBILE VALUES(1, 'Samsung', 'Galaxy S20', 'Android', 6.2, '1440x3200 pixels', 4000, TRUE, 'Exynos 990', 8, 128.00, 'Cosmic Gray', FALSE, '2024-04-01', 999);
INSERT INTO MOBILE VALUES(2, 'Apple', 'iPhone 13', 'iOS', 6.1, '1170x2532 pixels', 3687, TRUE, 'A15 Bionic', 4, 128.00, 'Midnight', TRUE, '2024-04-02', 1099);
INSERT INTO MOBILE VALUES(3, 'OnePlus', '9 Pro', 'Android', 6.7, '1440x3216 pixels', 4500, TRUE, 'Snapdragon 888', 8, 256.00, 'Morning Mist', FALSE, '2024-04-03', 969);
INSERT INTO MOBILE VALUES(4, 'Xiaomi', 'Redmi Note 11 Pro', 'Android', 6.67, '1080x2400 pixels', 5000, TRUE, 'MediaTek Dimensity 920', 6, 128.00, 'Glacier Blue', TRUE, '2024-04-04', 499);
INSERT INTO MOBILE VALUES(5, 'Google', 'Pixel 6', 'Android', 6.4, '1080x2400 pixels', 4614, TRUE, 'Google Tensor', 8, 128.00, 'Stormy Black', TRUE, '2024-04-05', 799);
INSERT INTO MOBILE VALUES(6, 'Realme', 'GT 2 Pro', 'Android', 6.7, '1440x3216 pixels', 5000, TRUE, 'Snapdragon 8 Gen 1', 12, 256.00, 'Titanium', TRUE, '2024-04-06', 899);
INSERT INTO MOBILE VALUES(7, 'Oppo', 'Find X5 Pro', 'Android', 6.7, '1440x3216 pixels', 5000, TRUE, 'Snapdragon 8 Gen 1', 12, 256.00, 'Emerald Green', TRUE, '2024-04-07', 1099);
INSERT INTO MOBILE VALUES(8, 'Vivo', 'X70 Pro+', 'Android', 6.78, '1440x3200 pixels', 4500, TRUE, 'Snapdragon 888+', 12, 512.00, 'Classic Black', TRUE, '2024-04-08', 1199);
INSERT INTO MOBILE VALUES(9, 'Huawei', 'P50 Pro', 'Android', 6.6, '1228x2700 pixels', 4360, TRUE, 'Kirin 9000', 8, 256.00, 'Golden', TRUE, '2024-04-09', 999);
INSERT INTO MOBILE VALUES(10, 'Sony', 'Xperia 1 III', 'Android', 6.5, '1644x3840 pixels', 4500, TRUE, 'Snapdragon 888', 12, 256.00, 'Black', TRUE, '2024-04-10', 1299);
INSERT INTO MOBILE VALUES(11, 'Motorola', 'Edge 30 Pro', 'Android', 6.7, '1080x2400 pixels', 5000, TRUE, 'Snapdragon 8 Gen 1', 12, 512.00, 'Nebula', TRUE, '2024-04-11', 999);
INSERT INTO MOBILE VALUES(12, 'Nokia', 'G50', 'Android', 6.82, '720x1640 pixels', 5000, TRUE, 'Qualcomm Snapdragon 480', 4, 128.00, 'Midnight Sun', TRUE, '2024-04-12', 299);
INSERT INTO MOBILE VALUES(13, 'Asus', 'Zenfone 8', 'Android', 5.9, '1080x2400 pixels', 4000, TRUE, 'Qualcomm Snapdragon 888', 8, 256.00, 'Obsidian Black', FALSE, '2024-04-13', 799);
INSERT INTO MOBILE VALUES(14, 'Lenovo', 'Legion Phone Duel 2', 'Android', 6.92, '1080x2460 pixels', 5500, TRUE, 'Qualcomm Snapdragon 8 Gen 1', 12, 512.00, 'Titanium White', TRUE, '2024-04-14', 1099);
INSERT INTO MOBILE VALUES(15, 'BlackBerry', 'Key2', 'Android', 4.5, '1080x1620 pixels', 3500, FALSE, 'Qualcomm Snapdragon 660', 6, 64.00, 'Silver', FALSE, '2024-04-15', 599);
SELECT * FROM MOBILE

CREATE TABLE INSTAGRAMS (
    ID SERIAL PRIMARY KEY,
    username VARCHAR(50),
    full_name VARCHAR(100),
    bio TEXT,
    followers_count INT,
    following_count INT,
    post_count INT,
    is_verified BOOLEAN,
    is_private BOOLEAN,
    account_created_date DATE,
    last_post_date TIMESTAMP,
    engagement_rate DECIMAL(5,2),
    average_likes INT,
    average_comments INT,
    profile_picture VARCHAR(50)
);
SHOW TABLES;

INSERT INTO INSTAGRAMS VALUES ('user1', 'John Doe', 'Hello world!', 1000, 500, 50, TRUE, FALSE, '2023-01-01', '2024-04-14 08:00:00', 3.25, 50, 10, 'profile_pic1.jpg');
INSERT INTO INSTAGRAMS VALUES ('user2', 'Jane Smith', 'Travel enthusiast', 2000, 1000, 100, TRUE, FALSE, '2022-12-15', '2024-04-13 12:00:00', 4.75, 80, 20, 'profile_pic2.jpg');
INSERT INTO INSTAGRAMS VALUES ('user3', 'Alice Johnson', 'Food lover 🍔', 500, 300, 30, FALSE, FALSE, '2023-02-20', '2024-04-12 16:00:00', 2.80, 40, 15, 'profile_pic3.jpg');
INSERT INTO INSTAGRAMS VALUES ('user4', 'Bob Williams', 'Fitness freak 💪', 1500, 700, 75, TRUE, TRUE, '2023-03-10', '2024-04-11 20:00:00', 5.50, 100, 25, 'profile_pic4.jpg');
INSERT INTO INSTAGRAMS VALUES ('user5', 'Emily Brown', 'Nature lover 🌿', 3000, 2000, 200, TRUE, FALSE, '2023-04-05', '2024-04-10 10:00:00', 6.75, 120, 30, 'profile_pic5.jpg');
INSERT INTO INSTAGRAMS VALUES ('user6', 'Michael Wilson', 'Tech geek 📱', 800, 400, 40, FALSE, FALSE, '2023-05-20', '2024-04-09 14:00:00', 3.90, 60, 18, 'profile_pic6.jpg');
INSERT INTO INSTAGRAMS VALUES ('user7', 'Emma Taylor', 'Fashionista 👗', 2500, 1500, 150, TRUE, FALSE, '2023-06-15', '2024-04-08 18:00:00', 7.25, 140, 35, 'profile_pic7.jpg');
INSERT INTO INSTAGRAMS VALUES ('user8', 'Daniel Martinez', 'Gamer 🎮', 1200, 600, 60, TRUE, TRUE, '2023-07-10', '2024-04-07 22:00:00', 4.00, 70, 20, 'profile_pic8.jpg');
INSERT INTO INSTAGRAMS VALUES ('user10', 'David Thomas', 'Bookworm 📚', 4000, 3000, 300, TRUE, FALSE, '2023-09-20', '2024-04-05 16:00:00', 8.00, 160, 40, 'profile_pic10.jpg');
INSERT INTO INSTAGRAMS VALUES ('user11', 'Sophia Hall', 'Artist 🎨', 600, 300, 30, FALSE, FALSE, '2023-10-15', '2024-04-04 08:00:00', 3.20, 45, 12, 'profile_pic11.jpg');
INSERT INTO INSTAGRAMS VALUES ('user12', 'James Garcia', 'Music lover 🎵', 3500, 2000, 200, TRUE, FALSE, '2023-11-10', '2024-04-03 12:00:00', 6.50, 130, 35, 'profile_pic12.jpg');
INSERT INTO INSTAGRAMS VALUES ('user13', 'Ava Martinez', 'Coffee addict ☕', 900, 500, 50, FALSE, TRUE, '2024-01-05', '2024-04-02 16:00:00', 4.25, 75, 20, 'profile_pic13.jpg');
INSERT INTO INSTAGRAMS VALUES ('user14', 'Ethan Adams', 'Adventure seeker 🌍', 2200, 1500, 150, TRUE, FALSE, '2024-02-20', '2024-04-01 20:00:00', 7.00, 150, 30, 'profile_pic14.jpg');
INSERT INTO INSTAGRAMS VALUES ('user15', 'Mia Brown', 'Yoga enthusiast 🧘‍♀️', 1000, 600, 60, TRUE, FALSE, '2024-03-15', '2024-03-31 10:00:00', 4.50, 80, 25, 'profile_pic15.jpg');
SELECT * FROM INSTAGRAMS

CREATE TABLE MIXER_GRINDER (
    ID INT,
    brand VARCHAR(50),
    model VARCHAR(100),
    power_watts INT,
    speed_levels INT,
    jar_capacity DECIMAL(5,2),
    is_juicer BOOLEAN,
    is_grinder BOOLEAN,
    is_chopper BOOLEAN,
    is_warranty_available BOOLEAN,
    warranty_period INT,
    color VARCHAR(50),
    dimensions VARCHAR(50),
    price DECIMAL(10,2),
    additional_info VARCHAR (100)
);
 SHOW TABLE ;
 INSERT INTO MIXER_GRINDER VALUES ('Brand1', 'Model1', 750, 3, 1.5, TRUE, TRUE, FALSE, TRUE, 24, 'Red', '20x30x40 cm', 99.99, '{"features": ["Pulse function", "Overload protection"], "material": "Stainless steel"}');
INSERT INTO MIXER_GRINDER VALUES('Brand2', 'Model2', 1000, 4, 2.0, TRUE, TRUE, TRUE, TRUE, 36, 'Black', '25x35x45 cm', 149.99, '{"features": ["Variable speed control", "Safety lock mechanism"], "material": "Plastic"}');
INSERT INTO MIXER_GRINDER VALUES('Brand3', 'Model3', 800, 5, 1.8, TRUE, TRUE, TRUE, TRUE, 24, 'White', '22x32x42 cm', 129.99, '{"features": ["Multi-functional blades", "Easy to clean"], "material": "Glass"}');
INSERT INTO MIXER_GRINDER VALUES('Brand4', 'Model4', 600, 3, 1.2, TRUE, FALSE, TRUE, FALSE, 12, 'Silver', '18x28x38 cm', 79.99, '{"features": ["Compact design", "Dishwasher safe parts"], "material": "Metal"}');
INSERT INTO MIXER_GRINDER VALUES('Brand5', 'Model5', 900, 4, 2.5, TRUE, TRUE, TRUE, TRUE, 36, 'Blue', '27x37x47 cm', 179.99, '{"features": ["Heavy-duty motor", "Non-slip feet"], "material": "ABS plastic"}');
INSERT INTO MIXER_GRINDER VALUES('Brand6', 'Model6', 700, 3, 1.5, FALSE, TRUE, TRUE, FALSE, 24, 'Green', '21x31x41 cm', 109.99, '{"features": ["Durable blades", "Easy-grip handles"], "material": "Aluminum"}');
INSERT INTO MIXER_GRINDER VALUES('Brand7', 'Model7', 1200, 6, 2.0, TRUE, TRUE, FALSE, TRUE, 48, 'Yellow', '26x36x46 cm', 199.99, '{"features": ["High-speed motor", "BPA-free material"], "material": "Polycarbonate"}');
INSERT INTO MIXER_GRINDER VALUES('Brand8', 'Model8', 850, 5, 1.8, TRUE, TRUE, TRUE, TRUE, 36, 'Orange', '23x33x43 cm', 139.99, '{"features": ["Auto-shutoff function", "Easy assembly"], "material": "Titanium"}');
INSERT INTO MIXER_GRINDER VALUES('Brand9', 'Model9', 950, 4, 2.2, TRUE, TRUE, FALSE, TRUE, 36, 'Purple', '24x34x44 cm', 159.99, '{"features": ["Dual safety locking system", "LED indicator lights"], "material": "Ceramic"}');
INSERT INTO MIXER_GRINDER VALUES('Brand10', 'Model10', 700, 3, 1.5, FALSE, TRUE, FALSE, FALSE, 12, 'Pink', '20x30x40 cm', 89.99, '{"features": ["Compact design", "Stainless steel blades"], "material": "Glass"}');
INSERT INTO MIXER_GRINDER VALUES('Brand11', 'Model11', 1100, 5, 2.0, TRUE, TRUE, TRUE, TRUE, 48, 'Brown', '25x35x45 cm', 189.99, '{"features": ["Variable speed control", "Pulse function"], "material": "Plastic"}');
INSERT INTO MIXER_GRINDER VALUES('Brand12', 'Model12', 800, 4, 1.8, TRUE, TRUE, TRUE, TRUE, 24, 'Gray', '22x32x42 cm', 129.99, '{"features": ["Anti-slip feet", "Easy to clean"], "material": "Stainless steel"}');
INSERT INTO MIXER_GRINDER VALUES('Brand13', 'Model13', 950, 5, 2.5, TRUE, TRUE, TRUE, TRUE, 36, 'Silver', '27x37x47 cm', 179.99, '{"features": ["High-capacity jar", "Safety lock mechanism"], "material": "ABS plastic"}');
INSERT INTO MIXER_GRINDER VALUES('Brand14', 'Model14', 750, 4, 1.5, TRUE, TRUE, FALSE, TRUE, 24, 'Black', '21x31x41 cm', 119.99, '{"features": ["Multi-functional blades", "Easy-grip handles"], "material": "Aluminum"}');
INSERT INTO MIXER_GRINDER VALUES('Brand15', 'Model15', 850, 5, 2.0, TRUE, TRUE, TRUE, TRUE, 36, 'White', '26x36x46 cm', 169.99, '{"features": ["Powerful motor", "BPA-free material"], "material": "Polycarbonate"}');
 SELECT * FROM MIXER_GRINDER
 
 CREATE TABLE WASHING_MACHINE (
    ID SERIAL PRIMARY KEY,
    brand VARCHAR(50),
    model VARCHAR(100),
    capacity_kg DECIMAL(5,2),
    load_type ENUM('Top Load', 'Front Load', 'Semi-Automatic'),
    energy_rating CHAR(1),
    rpm INT,
    wash_programs TEXT[],
    is_warranty_available BOOLEAN,
    warranty_period_months INT,
    color VARCHAR(50),
    dimensions VARCHAR(50),
    price DECIMAL(10,2),
    additional_info VARCHAR (50)
);
 SHOW TABLE ;
 INSERT INTO WASHING_MACHINE VALUES ('Brand1', 'Model1', 7.5, 'Top Load', 'A', 1200, '{"Normal Wash", "Quick Wash"}', TRUE, 24, 'White', '60x70x80 cm', 499.99, 'AdditionalInfo1');
INSERT INTO WASHING_MACHINE VALUES('Brand2', 'Model2', 8.0, 'Front Load', 'B', 1400, '{"Delicate Wash", "Heavy Wash"}', TRUE, 36, 'Silver', '65x75x85 cm', 699.99, 'AdditionalInfo2');
INSERT INTO WASHING_MACHINE VALUES('Brand3', 'Model3', 6.5, 'Semi-Automatic', 'C', 1000, '{"Gentle Wash", "Spin Only"}', TRUE, 24, 'Blue', '55x65x75 cm', 399.99, 'AdditionalInfo3');
INSERT INTO WASHING_MACHINE VALUES('Brand4', 'Model4', 7.0, 'Top Load', 'B', 1100, '{"Normal Wash", "Rinse & Spin"}', TRUE, 24, 'Red', '58x68x78 cm', 449.99, 'AdditionalInfo4');
INSERT INTO WASHING_MACHINE VALUES('Brand5', 'Model5', 9.0, 'Front Load', 'A', 1600, '{"Allergen Wash", "Steam Clean"}', TRUE, 36, 'Black', '70x80x90 cm', 899.99, 'AdditionalInfo5');
INSERT INTO WASHING_MACHINE VALUES('Brand6', 'Model6', 6.0, 'Semi-Automatic', 'D', 900, '{"Soak Wash", "Pre-wash"}', TRUE, 24, 'Yellow', '50x60x70 cm', 349.99, 'AdditionalInfo6');
INSERT INTO WASHING_MACHINE VALUES('Brand7', 'Model7', 8.5, 'Top Load', 'A', 1300, '{"Stain Wash", "Wool Wash"}', TRUE, 24, 'Green', '63x73x83 cm', 549.99, 'AdditionalInfo7');
INSERT INTO WASHING_MACHINE VALUES('Brand8', 'Model8', 7.0, 'Front Load', 'C', 1200, '{"Hand Wash", "Bedding Wash"}', TRUE, 36, 'Brown', '60x70x80 cm', 599.99, 'AdditionalInfo8');
INSERT INTO WASHING_MACHINE VALUES('Brand9', 'Model9', 6.5, 'Semi-Automatic', 'B', 1000, '{"Baby Care", "Quick Wash"}', TRUE, 24, 'Gray', '55x65x75 cm', 379.99, 'AdditionalInfo9');
INSERT INTO WASHING_MACHINE VALUES('Brand10', 'Model10', 8.0, 'Top Load', 'A', 1400, '{"Silent Wash", "Tub Clean"}', TRUE, 24, 'Purple', '65x75x85 cm', 649.99, 'AdditionalInfo10');
INSERT INTO WASHING_MACHINE VALUES('Brand11', 'Model11', 7.5, 'Front Load', 'B', 1300, '{"Sports Wear", "Towel Wash"}', TRUE, 36, 'Orange', '62x72x82 cm', 699.99, 'AdditionalInfo11');
INSERT INTO WASHING_MACHINE VALUES('Brand12', 'Model12', 6.0, 'Semi-Automatic', 'C', 1100, '{"Jeans Wash", "Shirt Wash"}', TRUE, 24, 'Pink', '52x62x72 cm', 399.99, 'AdditionalInfo12');
INSERT INTO WASHING_MACHINE VALUES('Brand13', 'Model13', 8.5, 'Top Load', 'A', 1500, '{"Bed Linen Wash", "Cotton Wash"}', TRUE, 24, 'Beige', '68x78x88 cm', 699.99, 'AdditionalInfo13');
INSERT INTO WASHING_MACHINE VALUES('Brand14', 'Model14', 7.0, 'Front Load', 'D', 1400, '{"Delicate Wash", "Silk Wash"}', TRUE, 36, 'Turquoise', '60x70x80 cm', 749.99, 'AdditionalInfo14');
INSERT INTO WASHING_MACHINE VALUES('Brand15', 'Model15', 6.5, 'Semi-Automatic', 'A', 1200, '{"Duvet Wash", "Hygiene Wash"}', TRUE, 24, 'Lime', '55x65x75 cm', 429.99, 'AdditionalInfo15');

CREATE TABLE ICE_CREAM (
    ID INT,
    flavor VARCHAR(50),
    brand VARCHAR(100),
    calories INT,
    fat DECIMAL(5,2),
    sugar DECIMAL(5,2),
    is_vegan BOOLEAN,
    is_gluten_free BOOLEAN,
    is_dairy_free BOOLEAN,
    is_nut_free BOOLEAN,
    price DECIMAL(8,2),
    expiry_date DATE,
    country_of_origin VARCHAR(100),
    ingredients TEXT,
    packaging VARCHAR (800),
    additional_info VARCHAR(255)
);
CREATE TABLE ICE_CREAM (
    ID INT,
    flavor VARCHAR(50),
    brand VARCHAR(100),
    calories INT,
    fat DECIMAL(5,2),
    sugar DECIMAL(5,2),
    is_vegan BOOLEAN,
    is_gluten_free BOOLEAN,
    is_dairy_free BOOLEAN,
    is_nut_free BOOLEAN,
    price DECIMAL(8,2),
    expiry_date DATE,
    country_of_origin VARCHAR(100),
    ingredients TEXT,
    packaging VARCHAR (800),
    additional_info VARCHAR(255)
);
INSERT INTO ICE_CREAM VALUES (1, 'Vanilla', 'Brand1', 150, 8.5, 20.0, FALSE, TRUE, FALSE, TRUE, 5.99, '2024-12-31', 'USA', 'Milk, Sugar, Vanilla extract', '{"container": "Tub", "size": "500ml"}', 'Delicious and creamy');
INSERT INTO ICE_CREAM VALUES(2, 'Chocolate', 'Brand2', 180, 10.0, 25.0, FALSE, FALSE, FALSE, TRUE, 6.99, '2024-12-31', 'Belgium', 'Milk, Sugar, Cocoa powder', '{"container": "Carton", "size": "1L"}', 'Rich and indulgent');
INSERT INTO ICE_CREAM VALUES(3, 'Strawberry', 'Brand3', 120, 5.5, 15.0, TRUE, TRUE, TRUE, TRUE, 4.99, '2024-12-31', 'Italy', 'Milk, Sugar, Strawberry puree', '{"container": "Tube", "size": "750ml"}', 'Fruity and refreshing');
INSERT INTO ICE_CREAM VALUES(4, 'Mint Chocolate Chip', 'Brand4', 160, 7.0, 18.0, TRUE, FALSE, FALSE, TRUE, 6.49, '2024-12-31', 'USA', 'Milk, Sugar, Mint extract, Chocolate chips', '{"container": "Tub", "size": "1.5L"}', 'Cool and refreshing with chocolate crunch');
INSERT INTO ICE_CREAM VALUES(5, 'Cookies and Cream', 'Brand5', 200, 9.0, 22.0, FALSE, TRUE, FALSE, TRUE, 7.29, '2024-12-31', 'Australia', 'Milk, Sugar, Cookie crumbs', '{"container": "Box", "size": "2L"}', 'Crunchy and creamy');
INSERT INTO ICE_CREAM VALUES(6, 'Rocky Road', 'Brand6', 220, 10.5, 28.0, FALSE, TRUE, FALSE, TRUE, 7.99, '2024-12-31', 'USA', 'Milk, Sugar, Marshmallows, Nuts', '{"container": "Tub", "size": "1.5L"}', 'Loaded with marshmallows and nuts');
INSERT INTO ICE_CREAM VALUES(7, 'Pistachio', 'Brand7', 180, 8.0, 20.0, TRUE, TRUE, FALSE, TRUE, 6.79, '2024-12-31', 'Italy', 'Milk, Sugar, Pistachio nuts', '{"container": "Carton", "size": "750ml"}', 'Nutty and creamy');
INSERT INTO ICE_CREAM VALUES(8, 'Caramel Swirl', 'Brand8', 190, 9.5, 24.0, TRUE, FALSE, FALSE, TRUE, 7.49, '2024-12-31', 'France', 'Milk, Sugar, Caramel swirls', '{"container": "Jar", "size": "1L"}', 'Sweet and indulgent');
INSERT INTO ICE_CREAM VALUES(9, 'Coffee', 'Brand9', 140, 6.5, 18.0, TRUE, TRUE, TRUE, TRUE, 5.99, '2024-12-31', 'Brazil', 'Milk, Sugar, Coffee extract', '{"container": "Tub", "size": "500ml"}', 'Rich coffee flavor');
INSERT INTO ICE_CREAM VALUES(10, 'Bubblegum', 'Brand10', 200, 9.0, 22.0, TRUE, FALSE, TRUE, TRUE, 6.99, '2024-12-31', 'UK', 'Milk, Sugar, Bubblegum flavoring', '{"container": "Tube", "size": "1L"}', 'Fun and fruity');
INSERT INTO ICE_CREAM VALUES(11, 'Lemon Sorbet', 'Brand11', 120, 5.5, 15.0, TRUE, TRUE, TRUE, TRUE, 4.99, '2024-12-31', 'Italy', 'Water, Sugar, Lemon juice', '{"container": "Tub", "size": "750ml"}', 'Refreshing citrus flavor');
INSERT INTO ICE_CREAM VALUES(12, 'Raspberry Ripple', 'Brand12', 180, 8.0, 20.0, TRUE, TRUE, TRUE, TRUE, 6.79, '2024-12-31', 'France', 'Milk, Sugar, Raspberry sauce', '{"container": "Carton", "size": "1L"}', 'Sweet and tangy');
INSERT INTO ICE_CREAM VALUES(13, 'Hazelnut', 'Brand13', 170, 7.5, 19.0, TRUE, TRUE, FALSE, TRUE, 6.49, '2024-12-31', 'Turkey', 'Milk, Sugar, Hazelnut paste', '{"container": "Jar", "size": "500ml"}', 'Creamy hazelnut flavor');
INSERT INTO ICE_CREAM VALUES(14, 'Salted Caramel', 'Brand14', 200, 9.0, 22.0, FALSE, TRUE, FALSE, TRUE, 7.29, '2024-12-31', 'USA', 'Milk, Sugar, Caramel, Sea salt', '{"container": "Box", "size": "2L"}', 'Sweet and salty combination');
INSERT INTO ICE_CREAM VALUES(15, 'Coconut', 'Brand15', 160, 7.0, 18.0, TRUE, TRUE, TRUE, TRUE, 5.99, '2024-12-31', 'Philippines', 'Coconut milk, Sugar', '{"container": "Tube", "size": "1L"}', 'Creamy tropical flavor');
SELECT * FROM ICE_CREAM
CREATE TABLE MICRO_OVEN (
    ID INT,
    brand VARCHAR(50),
    model VARCHAR(100),
    capacity_liters DECIMAL(5,2),
    power_watts INT,
    color VARCHAR(50),
    is_gas BOOLEAN,
    is_electric BOOLEAN,
    is_convection BOOLEAN,
    is_self_cleaning BOOLEAN,
    price DECIMAL(10,2),
    warranty_period_years INT,
    dimensions VARCHAR(50),
    features TEXT[],
    additional_info VARCHAR(50)
);













NSERT INTO MICRO_OVEN 
VALUES 
(1, 'Brand1', 'Model1', 20.0, 1200, 'Black', FALSE, TRUE, TRUE, TRUE, 199.99, 2, '40x30x30 cm', '{"Defrost", "Timer", "Rotisserie"}', 'Compact size');
(2, 'Brand2', 'Model2', 25.0, 1500, 'White', TRUE, FALSE, TRUE, TRUE, 249.99, 3, '45x35x35 cm', '{"Grill", "Child lock", "Quick Heat"}', 'Sleek design');
(3, 'Brand3', 'Model3', 30.0, 1800, 'Stainless Steel', FALSE, TRUE, TRUE, FALSE, 299.99, 2, '50x40x40 cm', '{"Bake", "Keep Warm", "Pizza Mode"}', 'Modern look');
(4, 'Brand4', 'Model4', 35.0, 2000, 'Silver', TRUE, FALSE, FALSE, TRUE, 349.99, 3, '55x45x45 cm', '{"Defrost", "Dehydrate", "Steam Clean"}', 'High capacity');
(5, 'Brand5', 'Model5', 40.0, 2200, 'Red', FALSE, TRUE, TRUE, TRUE, 399.99, 2, '60x50x50 cm', '{"Convection", "Smart Controls", "Temperature Probe"}', 'Energy efficient');
(6, 'Brand6', 'Model6', 22.0, 1300, 'Black', TRUE, FALSE, TRUE, TRUE, 219.99, 2, '42x32x32 cm', '{"Rotating Tray", "Auto Cook", "Quick Defrost"}', 'Easy to use');
(7, 'Brand7', 'Model7', 28.0, 1600, 'White', FALSE, TRUE, TRUE, TRUE, 269.99, 3, '47x37x37 cm', '{"Multi-stage Cooking", "Sensor Reheat", "Turntable"}', 'Versatile features');
(8, 'Brand8', 'Model8', 32.0, 1900, 'Silver', TRUE, FALSE, FALSE, TRUE, 319.99, 2, '52x42x42 cm', '{"Crisp Function", "Even Heat", "Auto Menu"}', 'Durable construction');
(9, 'Brand9', 'Model9', 38.0, 2100, 'Black', FALSE, TRUE, TRUE, FALSE, 369.99, 3, '57x47x47 cm', '{"Slow Cook", "Thaw Function", "Memory Function"}', 'Modern design');
(10, 'Brand10', 'Model10', 45.0, 2400, 'White', TRUE, FALSE, TRUE, TRUE, 419.99, 2, '62x52x52 cm', '{"Browning Function", "Preheat", "Sabbath Mode"}', 'Large cooking space');
(11, 'Brand11', 'Model11', 26.0, 1400, 'Stainless Steel', FALSE, TRUE, TRUE, TRUE, 229.99, 3, '45x35x35 cm', '{"Defrost", "Keep Warm", "Auto Clean"}', 'Sleek appearance');
(12, 'Brand12', 'Model12', 34.0, 1700, 'Black', TRUE, FALSE, FALSE, TRUE, 299.99, 2, '55x45x45 cm', '{"Rotisserie", "Express Cooking", "Touch Controls"}', 'Efficient heating');
(13, 'Brand13', 'Model13', 42.0, 2000, 'Silver', FALSE, TRUE, TRUE, FALSE, 349.99, 3, '60x50x50 cm', '{"Quick Start", "Grill Rack", "Timer"}', 'Stylish design');
(14, 'Brand14', 'Model14', 20.0, 1200, 'Red', TRUE, FALSE, TRUE, TRUE, 199.99, 2, '40x30x30 cm', '{"Auto Reheat", "Quick Defrost", "Easy Clean"}', 'Compact and functional');
(15, 'Brand15', 'Model15', 28.0, 1500, 'White', FALSE, TRUE, FALSE, TRUE, 249.99, 3, '47x37x37 cm', '{"Convection", "Pizza Mode", "Defrost"}', 'Versatile and reliable');