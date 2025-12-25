-- 1. Number of complaints in CA - 

SELECT 
  Count(Status) 
FROM 
  consumer_complaints_edit
Where State = 'CA';

-- 2. Number of Complaints in CA for 2022

SELECT
  Count(`Submitted via`)
FROM
  consumer_complaints_edit
Where
  EXTRACT(YEAR FROM `Date received`) = 2022
  AND State ='CA'

-- 3. Number of complaints in June 2022

SELECT
  Count(Status)
FROM
 consumer_complaints_edit
Where `Date received` BETWEEN '2022-06-01' AND '2022-06-30' 


-- 4. Number of opened tickets

SELECT
  Count(State)
FROM
  consumer_complaints_edit
Where `Timely response` = 'Open'

-- 5. Drop table in MySQL

DROP TABLE consumer_complaints_edit


-- 6. Rename table column

ALTER TABLE 
   consumer_complaints_edit 
RENAME COLUMN 
   `ï»¿Complaint ID` to `ComplainID`;



