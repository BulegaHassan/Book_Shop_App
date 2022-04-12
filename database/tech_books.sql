-- create and select the database
DROP DATABASE IF EXISTS tech_books;
CREATE DATABASE tech_books;
USE tech_books;  -- MySQL command

-- create the tables
CREATE TABLE categories (
  categoryID       INT(11)        NOT NULL   AUTO_INCREMENT,
  categoryName     VARCHAR(255)   NOT NULL,
  PRIMARY KEY (categoryID)
);

CREATE TABLE products (
  productID        INT(11)        NOT NULL   AUTO_INCREMENT,
  categoryID       INT(11)        NOT NULL,
  productCode      VARCHAR(10)    NOT NULL   UNIQUE,
  productName      VARCHAR(255)   NOT NULL,
  listPrice        DECIMAL(10,2)  NOT NULL,
  PRIMARY KEY (productID)
);

CREATE TABLE orders (
  orderID        INT(11)        NOT NULL   AUTO_INCREMENT,
  customerID     INT            NOT NULL,
  orderDate      DATETIME       NOT NULL,
  PRIMARY KEY (orderID)
);

-- insert data into the database
INSERT INTO categories VALUES
(1, 'Programming Languages'),
(2, 'Frameworks'),
(3, 'Databases'),
(4, 'Mobile Apps'),
(5, 'Stacks');




INSERT INTO products VALUES
(1, 1, 'HTML_CSS', 'Hasgotech Master HTML and CSS', '59.00'),
(2, 1, 'C', 'Hasgotech Master C Programming', '50.00'),
(3, 1, 'C#', 'Hasgotech Master C# Programming', '50.00'),
(4, 1, 'O-C', 'Hasgotech Master Objective-C Programming', '65.00'),
(5, 1, 'JV', 'Hasgotech Master Java Programming', '45.99'),
(6, 1, 'JS', 'Hasgotech Master JavaScript Programming', '55.55'),
(7, 1, 'PY', 'Hasgotech Master Python Programming', '49.99'),
(8, 1, 'PHP', 'Hasgotech Master PHP Programming', '49.99'),
(9, 1, 'GO', 'Hasgotech Master Go Programming', '41.79'),
(10, 1, 'HS', 'Hasgotech Master Haskell Programming', '49.99'),
(11, 2, 'VAR', 'Hasgotech React, Vue and Angular explained', '59.00'),
(12, 2, 'LRV', 'Hasgotech Laravel explained', '39.99'),
(13, 2, 'DJA', 'Hasgotech Django explained', '39.99'),
(14, 2, '.NET', 'Hasgotech .NET explained', '39.99'),
(15, 2, 'BS_SASS', 'Hasgotech Bootstrap and Sass explained', '39.99'),
(16, 3, 'MYSQL', 'Hasgotech MYSQL expounded', '55.00'),
(17, 3, 'PSQL', 'Hasgotech PostgreSQL expounded', '55.00'),
(18, 3, 'MONDB', 'Hasgotech MongoDB expounded', '55.00'),
(19, 4, 'RN', 'Hasgotech React-Native succinctly', '50.75'),
(20, 4, 'XMN', 'Hasgotech Xamarin succinctly', '50.75'),
(21, 4, 'SFT', 'Hasgotech Swiftic succinctly', '50.75'),
(22, 5, 'MERN', 'Hasgotech Become a MERN expert', '100.00'),
(23, 5, 'MEAN', 'Hasgotech Become a MEAN expert', '100.00'),
(24, 5, 'LAMP', 'Hasgotech Become a LAMP expert', '100.00');
-- create the users and grant priveleges to those users
GRANT SELECT, INSERT, DELETE, UPDATE
ON tech_books.*
TO prev_user@localhost
IDENTIFIED BY 'pa55word';

GRANT SELECT
ON products
TO normal_user@localhost
IDENTIFIED BY 'pa55word';

