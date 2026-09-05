--SUB QUERRY  

SELECT * FROM HR.TCS.EMPLOYEES  WHERE SALARY IN (
select MAX(salary) from HR.TCS.EMPLOYEES
);

SELECT * FROM HR.TCS.EMPLOYEES WHERE SALARY IN ( 
   SELECT MAX(SALARY) FROM HR.TCS.EMPLOYEES WHERE SALARY NOT IN (
                      SELECT MAX(SALARY) FROM HR.TCS.EMPLOYEES
   )
);



select * from hr.tcs.employees ;

SELECT * FROM HR.TCS.DEPENDENTS ;


CREATE TABLE HR.TCS.DEPENDENTS (
	dependent_id INT IDENTITY(1,1) PRIMARY KEY,
	first_name VARCHAR (50) NOT NULL,
	last_name VARCHAR (50) NOT NULL,
	relationship VARCHAR (25) NOT NULL,
	employee_id INT NOT NULL
);


INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (1,'Penelope','Gietz','Child',206);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (2,'Nick','Higgins','Child',205);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (3,'Ed','Whalen','Child',200);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (4,'Jennifer','King','Child',100);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (5,'Johnny','Kochhar','Child',101);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (6,'Bette','De Haan','Child',102);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (7,'Grace','Faviet','Child',109);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (8,'Matthew','Chen','Child',110);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (9,'Joe','Sciarra','Child',111);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (10,'Christian','Urman','Child',112);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (11,'Zero','Popp','Child',113);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (12,'Karl','Greenberg','Child',108);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (13,'Uma','Mavris','Child',203);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (14,'Vivien','Hunold','Child',103);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (15,'Cuba','Ernst','Child',104);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (16,'Fred','Austin','Child',105);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (17,'Helen','Pataballa','Child',106);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (18,'Dan','Lorentz','Child',107);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (19,'Bob','Hartstein','Child',201);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (20,'Lucille','Fay','Child',202);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (21,'Kirsten','Baer','Child',204);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (22,'Elvis','Khoo','Child',115);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (23,'Sandra','Baida','Child',116);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (24,'Cameron','Tobias','Child',117);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (25,'Kevin','Himuro','Child',118);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (26,'Rip','Colmenares','Child',119);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (27,'Julia','Raphaely','Child',114);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (28,'Woody','Russell','Child',145);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (29,'Alec','Partners','Child',146);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (30,'Sandra','Taylor','Child',176);



select * from hr.tcs.employees ;
SELECT * FROM HR.TCS.DEPENDENTS ;


-- THE EMPLOYEE ID SHOULD BE PRESENT IN  BOTH THE TABLES  .

SELECT * FROM HR.TCS.EMPLOYEES 
  WHERE EMPLOYEE_ID IN (
     SELECT EMPLOYEE_ID FROM HR.TCS.DEPENDENTS
);

-- THE VALUE PRESENT IN ONLY EMPLOYEE TABLE NOT IN DEPENDEDENTS TABLE
SELECT * FROM HR.TCS.EMPLOYEES 
  WHERE EMPLOYEE_ID NOT IN (
     SELECT EMPLOYEE_ID FROM HR.TCS.DEPENDENTS
);


-- THE VALUE PRESENT IN ONLY DEPENDENT TABLE NOT IN  EMPLOYEE TABLE

SELECT * FROM HR.TCS.DEPENDENTS
  WHERE EMPLOYEE_ID NOT IN (
     SELECT EMPLOYEE_ID FROM HR.TCS.EMPLOYEES
);

-- HANDELLING NULL VALUES 

SELECT * FROM HR.TCS.EMPLOYEES ;

SELECT * FROM HR.TCS.EMPLOYEES
 WHERE PHONE_NUMBER IS NULL ;

 SELECT * FROM HR.TCS.EMPLOYEES
 WHERE PHONE_NUMBER IS NOT NULL ;

 SELECT * FROM HR.TCS.EMPLOYEES 
 WHERE MANAGER_ID IS NULL ;

 -- TO  DESPLAY SOME VALUE INSTED OF NULL  

 SELECT EMPLOYEE_ID ,FIRST_NAME , 
 COALESCE(PHONE_NUMBER , 'NA'),
 COALESCE(MANAGER_ID ,'300')
 FROM HR.TCS.EMPLOYEES ;


 -- CONDITIONAL (IF AND ELSE  /CASE  STATEMENTS) 

 SELECT FIRST_NAME,
 EMPLOYEE_ID,SALARY ,
 IFF(SALARY > 10000 , 'SR EMPP', 'JR EMPP') AS DESIGNATION 
 FROM HR.TCS.EMPLOYEES ;


 create table TEST (ID INT) ;
 INSERT INTO TEST (ID) VALUES (1) ,(2),(3),(4),(5),(6),(7) ;

 SELECT * FROM TEST

 SELECT ID,
 
   CASE
   
    WHEN ID = 1 THEN 'MON'
    WHEN ID = 2 THEN 'TUE'
    WHEN ID = 3 THEN 'WED'
    WHEN ID = 4 THEN 'THR'
    WHEN ID = 5 THEN 'FRI'
    WHEN ID = 6 THEN 'SAT'
    
  END  AS DAY 
 
 FROM TEST ;



 SELECT ID,
 
   CASE
   
    WHEN ID = 1 THEN 'MON'
    WHEN ID = 2 THEN 'TUE'
    WHEN ID = 3 THEN 'WED'
    WHEN ID = 4 THEN 'THR'
    WHEN ID = 5 THEN 'FRI'
    WHEN ID = 6 THEN 'SAT' ELSE 'IN VALID'
    
  END  AS DAY
  FROM TEST ;

  CREATE TABLE test_status  (
    EID NUMBER(3),
    AGE NUMBER(3),
    STATUS VARCHAR2(10)
);

INSERT INTO test_status (EID, AGE, STATUS)
VALUES (101, 19, 'MINIOR');

INSERT INTO test_status (EID, AGE, STATUS)
VALUES (102, 20, 'MAJOR');

INSERT INTO test_status (EID, AGE, STATUS)
VALUES (103, 30, 'MAJOR');

select * from test_status ;


SELECT EID,
       AGE,
       CASE
           WHEN AGE >= 20 THEN 'MAJOR'
           ELSE 'MINOR'
       END AS STATUS
FROM test_status;



SELECT EID,
       AGE,
       CASE
           WHEN AGE < 20 THEN 'MINOR'
           WHEN AGE >= 20 THEN 'MAJOR'
       END AS STATUS
FROM test_status;

