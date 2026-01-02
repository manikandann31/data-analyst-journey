
CREATE table stud(reg_no int,name varchar(30),result varchar(4)); --this create a table in the existing database
insert into stud(reg_no,name,result) values (1,"allen","pass");   --
insert into stud(reg_no,name,result) values (2,"som","pass");     --
insert into stud(reg_no,name,result) values (3,"cree","pass");    --
insert into stud(reg_no,name,result) values (4,"alpha","fail");   --these six lines insert the values to the created tavble
insert into stud(reg_no,name,result) values (5,"phen","pass");
insert into stud(reg_no,name,result) values (6,"deen","pass");
                                              --it shows all the inserted values as output (* means select all)
ALTER TABLE stud              --it tells the table that"im going to make some changwes to the table so be ready for it"
ADD MARKS INT;                 -- it do the actual updation i,e insertion of mark coloumn
UPDATE stud                   --it tells the name of the table that is going to update
SET marks = 70               -- it tells the actual vbalue to insert in the coloumn 
WHERE reg_no = 1;           
UPDATE stud
SET marks = 80
WHERE reg_no = 2;
UPDATE stud
SET marks = 100
WHERE reg_no = 3;
UPDATE stud
SET marks = 90
WHERE reg_no = 4;
UPDATE stud
SET marks = 80
WHERE reg_no = 5;
UPDATE stud
SET marks = 60
WHERE reg_no = 6;
--instead of writing same block of code several times , we use case insertion //UPDATE stud
--SET marks = CASE
   -- WHEN reg_no = 1 THEN 70
  --  WHEN reg_no = 2 THEN 80
    --WHEN reg_no = 3 THEN 100
   -- WHEN reg_no = 4 THEN 90
   -- WHEN reg_no = 5 THEN 80
  --  WHEN reg_no = 6 THEN 60
   -- ELSE marks
--END;                            //
select * from stud 
WHERE marks > '80' and result='pass'
order by reg_no










