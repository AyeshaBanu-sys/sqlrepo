CREATE DATABASE PRACTICESQL;
USE practicesql;
CREATE TABLE EmployeeInfo (e_id INT , e_Name VARCHAR(30), e_Dept VARCHAR(30), e_Salary INT) ;

INSERT INTO EmployeeInfo(e_id , e_Name , e_Dept,e_Salary)
VALUES   (1, 'Ayesha' , 'QA' , 15000), (2, 'Shivani', 'QA' , 15000),(3,'Anusarika' , 'DEV', 20000);

SELECT * FROM EmployeeInfo;

DESCRIBE EmployeeInfo;

-- ADD NEW  COLUMN AND INSERT VALUE
ALTER TABLE EmployeeInfo ADD COLUMN e_Age INT ;
UPDATE EmployeeInfo SET e_Age = 23 WHERE e_id=1;
UPDATE EmployeeInfo SET e_Age = 24 WHERE e_id=2;
UPDATE EmployeeInfo SET e_Age = 25 WHERE e_id=3;
UPDATE EmployeeInfo SET  e_Salary = 15500 WHERE e_id = 1; 
  
  -- ADD DATA TYPES
ALTER TABLE EmployeeInfo ADD PRIMARY KEY (e_id) ;

-- MODIFY DATA TYPE
ALTER TABLE EmployeeInfo MODIFY e_Name VARCHAR(40);

-- RENAME COLUMN NAME 
ALTER TABLE EmployeeInfo RENAME COLUMN e_Name TO e_Names;

-- Use DROP to permanently delete the table structure along with its data.
-- DROP COLUMN
ALTER TABLE EmployeeInfo DROP COLUMN e_Age;

-- Use DELETE to remove specific or all rows from a table without removing the structure.
-- DELETE ROWS
DELETE FROM EmployeeInfo WHERE e_id=1;

-- Use TRUNCATE to remove all rows quickly, but keep the table structure.
-- TRUNCATE ALL ROWS OR TABLE
TRUNCATE TABLE EmployeeInfo;

-- WHERE
SELECT * FROM EmployeeInfo WHERE e_id BETWEEN 1 AND 2;

-- AND
SELECT * FROM EmployeeInfo WHERE e_id = 1 AND e_Age=23;

-- OR
SELECT * FROM EmployeeInfo WHERE e_id = 1 OR e_id =4;
SELECT * FROM EmployeeInfo WHERE e_id IN( 1 , 2);

-- NOT
SELECT * FROM EmployeeInfo WHERE e_Dept != 'QA';
SELECT * FROM EmployeeInfo WHERE NOT e_Dept = 'QA';

-- IN 
SELECT * FROM EmployeeInfo WHERE e_id IN(1,2,3);

 -- NOT IN
SELECT * FROM EmployeeInfo WHERE e_id NOT IN(1,2);

-- LIKE
SELECT * FROM EmployeeInfo WHERE e_Names LIKE 'A%';
SELECT * FROM EmployeeInfo WHERE e_Names LIKE '%I';
SELECT * FROM EmployeeInfo WHERE e_Names LIKE 'A_____';
SELECT * FROM EmployeeInfo WHERE e_Names LIKE 'S%i';
SELECT * FROM EmployeeInfo WHERE e_Names LIKE '%esh%';

-- NOT LIKE
SELECT * FROM EmployeeInfo WHERE e_Names NOT LIKE 'A%';

ALTER TABLE EmployeeInfo ADD COLUMN e_Loc VARCHAR(40);
UPDATE EmployeeInfo SET e_Loc = 'HYD' WHERE e_id=1;
UPDATE EmployeeInfo SET e_Loc = 'KNR' WHERE e_id=2;
UPDATE EmployeeInfo SET e_Loc = 'BPL' WHERE e_id=3;

-- NULL 
SELECT e_Names FROM EmployeeInfo WHERE e_Loc IS NULL ;
SELECT e_Names FROM EmployeeInfo WHERE e_Loc IS NULL AND e_id = 1;

-- NOT NULL
SELECT e_Names FROM EmployeeInfo  WHERE e_age IS NOT NULL;

-- ORDER BY 
SELECT * FROM EmployeeInfo  ORDER BY e_Names ASC;

SELECT * FROM EmployeeInfo  ORDER BY e_Age DESC;

SELECT * FROM EmployeeInfo
WHERE e_Names LIKE 'A%'
ORDER BY e_Age ASC;

-- SUM
SELECT  SUM(e_Salary) AS Total_Salary FROM EmployeeInfo;
SELECT  SUM(e_Salary) FROM EmployeeInfo WHERE e_id IN(1,2);

-- AVG
SELECT AVG(e_Salary) FROM EmployeeInfo;

-- MAX 
SELECT  MAX(e_Salary) FROM EmployeeInfo;

-- MIN 
SELECT  MIN(e_Salary) FROM EmployeeInfo;

-- COUNT
-- Counts only rows where e_id is not NULL
SELECT COUNT(e_id) FROM EmployeeInfo;

-- Counts all rows, even if all values are NULL
SELECT COUNT(*) FROM EmployeeInfo ;

-- DROP KEYS 
ALTER TABLE EmployeeInfo
DROP PRIMARY KEY;

-- SHOW KEYS
SHOW KEYS FROM EmployeeInfo WHERE Key_name = 'PRIMARY';

-- MODIFY NULL TO DEFAULT NULL
ALTER TABLE EmployeeInfo MODIFY E_id INT DEFAULT NULL;

-- INSERT NULL VALUES ROW
INSERT INTO EmployeeInfo (e_id, e_Names, e_Dept, e_Salary, e_Age)
VALUES (NULL, NULL, NULL, NULL, NULL);

SELECT * FROM EmployeeInfo;

-- GROUP BY
SELECT e_Dept
FROM EmployeeInfo
GROUP BY e_Dept;

-- GROUP BY, AGGREGATES
SELECT e_Dept, COUNT(*) AS Employee_Count
FROM EmployeeInfo
GROUP BY e_Dept;

-- GROUP BY, AGGREGATES, HAVING
SELECT e_Dept, COUNT(*) AS Employee_Count
FROM EmployeeInfo
GROUP BY e_Dept
HAVING COUNT(*) >= 2;

CREATE TABLE ProjectsInfo (
  e_id INT,
  project_name VARCHAR(50),
  project_status VARCHAR(20)
);

INSERT INTO ProjectsInfo (e_id, project_name, project_status)
VALUES 
  (1, 'AutomationSuite', 'Active'),
  (2, 'RegressionPack', 'Completed'),
  (3, 'UATSupport', 'Pending');
  
  SELECT * FROM ProjectsInfo;
  
  
