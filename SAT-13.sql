CREATE DATABASE ASSIGNMENT_1;
USE ASSIGNMENT_1;

CREATE TABLE PRODUCTS(
 USER_NAME CHAR(20),
 USER_ADDRESS VARCHAR(200),
 USER_PHONE_NUMBER INT,
 IP_ADDRESS BINARY(30),
 USER_CURRENTADDRESS varbinary(220),
 USER_CHILDNAME tinytext,
 USER_LETTER text,
 USER_EXPERINCE mediumtext,
 USER_KIDS BIT,
 USER_KIDSAGE tinyint,
 USER_ORIGINOFCOUNTRY_INDIA bool,
 USER_TRANSACTION_ID bigint,
 USER_HEIGHT float,
 USER_WEIGHT decimal,
 USER_TRAIN_PRICE double,
 TRAIN_ARRAVING time,
 DATE_OF_TRAIN date,
 DATEANDTIMEOFTRAIN datetime,
 TRAIN_DEPERATURER timestamp,
 USER_BORNTIME time,
 USER_BIRTH_YEAR year
 );
 SHOW TABLES;
 INSERT INTO PRODUCTS VALUES('DEVAN','HEETUR','8861666012','HASAN' ,'CHOTHA', 'LEAVE LETTER' , 'JOB EXPIRENCE ', 'LIFE STORY','TRUE' , 44 , 'TRUE', FALSE , 573201,1234,902345,189003456, );
 