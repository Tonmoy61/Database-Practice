CREATE DATABASE Class_one_assignment;

USE Class_one_assignment;

CREATE TABLE Customers(
customer_id INT AUTO_INCREMENT,
First_name VARCHAR(20) NOT NULL,
Last_name VARCHAR(20) NOT NULL,
Date_of_Birth DATE NOT NULL,
Phone VARCHAR(15) NOT NULL,
Address VARCHAR(30) NOT NULL,
City  VARCHAR(25) NOT NULL,
State VARCHAR(15) NOT NULL,
Points INT NOT NULL,
PRIMARY KEY(customer_id)
);

INSERT INTO customers(First_name,Last_name,Date_of_Birth,Phone,Address,City,State,Points) VALUES
('Babara','MacCaffrey','1986-03-28','781-932-9754','O Sage Terrece','Waltham','MA','2273'),
('Ines','Brushfield','1986-04-13','804-427-9456','14187 Commercial Trail','Hampton','VA','947'),
('Freddi','Boagey','1985-02-07','719-724-7869','251 Springs Junction','Colorado Springs','CO','2967'),
('Ambur','Roseburgh','1974-04-14','407-231-8017','30 Arapahoe Terrace','Orlando','FL','457'),
('Clemmie','Betchley','1973-11-07','','5 Spohn Circle','Arlington','TX','3675')
;

SELECT * FROM customers WHERE Points >1000 LIMIT 2;
SELECT * FROM customers WHERE Date_of_Birth BETWEEN '1980-01-01' AND '1990-01-01' OR Points <1000;

SELECT * FROM customers ORDER BY Points ASC;
SELECT * FROM customers ORDER BY Points DESC;
SELECT * FROM customers WHERE LOWER (CONCAT (First_name, ' ', last_name)) REGEXP 'burgh';

SELECT * FROM customers WHERE Phone = ' ';
ALTER TABLE customers CHANGE Date_of_Birth dob DATE;

SELECT CONCAT (First_name, ' ', MAX(Last_name)) AS full_name, (points) 
FROM customers WHERE Points =
(SELECT
MAX(Points) FROM customers);

SELECT   *,   CASE
    WHEN Points < 1000    THEN 'Bronze member'
    WHEN Points > 1000    AND Points < 2000
    THEN 'Silver member'    WHEN Points > 2000
    AND Points < 3000    THEN 'Gold member'
    WHEN Points > 3000    THEN 'Platinum member'
    ELSE 'No customer'   END AS Award
FROM customers;

SELECT * FROM Customers;