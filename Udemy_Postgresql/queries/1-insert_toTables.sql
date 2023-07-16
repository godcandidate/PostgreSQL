
-- inserting into all columns
INSERT INTO "Customer_table"
VALUES (1, 'bee', 'cee',32,'bc@xyz.com');

-- inserting into sepcific columns
INSERT INTO "Customer_table" (customer_id, first_name, age, email)
VALUES (2, 'dee',23,'d@xyz.com');

-- inserting multiple values
INSERT INTO "Customer_table" VALUES 
(3, 'ee', 'ef',27,'ef@xyz.com'),
(4, 'gee', 'eh',35,'gh@xyz.com');


-- extract from csv file
COPY "Customer_table" FROM 'C:\Program Files\PostgreSQL\15\data\Data_copy\copy.csv' DELIMITER ',';
COPY "Customer_table" FROM 'C:\Program Files\PostgreSQL\15\data\Data_copy\copytext.txt' DELIMITER ',';

SELECT * FROM "Customer_table"

CREATE TABLE customer
(
	customer_id VARCHAR(10) PRIMARY KEY NOT NULL,
	customer_name VARCHAR(30) NOT NULL,
	segement  VARCHAR(20) NOT NULL,
	age SMALLINT NOT NULL,
	country  VARCHAR(15) NOT NULL,
	city  VARCHAR(20) NOT NULL,
	state  VARCHAR(20) NOT NULL,
	postal_code  VARCHAR(6) NOT NULL,
	region  VARCHAR(15) NOT NULL
);
COPY customer FROM 'C:\Program Files\PostgreSQL\15\data\Data_copy\Customer.csv' DELIMITER ',' csv header;
select * from customer