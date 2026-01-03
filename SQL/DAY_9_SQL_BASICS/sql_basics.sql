SELECT * FROM students;                                   --this select all records of table students.*MEAN ALL COLOUMN

SELECT name, subject, marks FROM students;               -- this will select specific record from table

SELECT *
FROM students                                             --selection of record within specified limits, THE OUTPUT WILL PRINT ONLY TWO ROWS
LIMIT 2;

SELECT *
FROM students                                             --IT WILL RETURN THE MARK IN DESCENDING ORDER, IF YOU WRITE A CODE WITHOUT DESC IT WILL AUTO ASSIGN AND RETURN OUTPUT IN ASCENFDING ORDER         
ORDER BY marks DESC;
 
           --             python connect with sql
           -- 1. dictionary are considered as tables
           -- 2. loops are treated as SELECT
          -- 3. conditinal stmt are WHERE 
           -- 4. sorting in python is used as ORDER BY 
           -- 5. SLICING are LIMITS