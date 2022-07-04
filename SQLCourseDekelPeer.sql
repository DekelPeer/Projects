CREATE DATABASE IF NOT EXISTS Sales;
USE Sales;
CREATE TABLE sales
(
   purchase_number INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   date_of_purchase DATE NOT NULL,
   customer_id INT,
   item_code VARCHAR(10) NOT NULL
   );
   
   CREATE TABLE customers
   (
     customer_id INT,
     first_name VARCHAR(25),
     last_name VARCHAR(25),
     email_adress VARCHAR(25),
     number_of_complaints INT
     );
     
     SELECT * FROM sales;
   #  SELECT * FROM sales.sales;
     
     DROP TABLE sales;
     #דרך נוספת להגדיר מפתח עיקרי
     
     CREATE TABLE sales
     (
     purchase_number INT AUTO_INCREMENT,
     date_of_purchase DATE,
     customer_id INT,
     item_code VARCHAR(10),
     PRIMARY KEY(purchase_number)
     );

     DROP TABLE customers;
     
     CREATE TABLE customers
     (
       customer_id INT,
       first_name VARCHAR(255),
       last_name VARCHAR(255),
       email_adress VARCHAR(255),
       number_of_complaints INT,
       PRIMARY KEY(customer_id)
       );
     
     CREATE TABLE items
     (
       item_code VARCHAR(255),
       item VARCHAR(255),
       unit_price NUMERIC(10,2),
       company_id VARCHAR(255),
       PRIMARY KEY(item_code)
       );
       
      CREATE TABLE companies
      (
        company_id VARCHAR(255),
        company_name VARCHAR(255),
        headquarters_phone_number INT(12),
        PRIMARY KEY(company_id)
        );
     
     DROP TABLE sales;
     
     CREATE TABLE sales
     (
     purchase_number INT AUTO_INCREMENT,
     date_of_purchase DATE,
     customer_id INT,
     item_code VARCHAR(10),
     PRIMARY KEY(purchase_number),
     FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE
     );
     
     #דרך נוספת להגדיר מפתח זר
   #  ALTER TABLE sales
    # ADD FOREIGN KEY(customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE;
     
     # דרך למחוק מפתח זר - לקחת את השם של המפתח הזר מהדידיאל, ולכתוב את הפקודה הבאה:
     #ALTER TABLE sales
     #DROP FOREIGN KEY sales_ibfk_1;

     DROP TABLE customers;

	 DROP TABLE items;

     CREATE TABLE customers
     (
       customer_id INT,
       first_name VARCHAR(255),
       last_name VARCHAR(255),
       email_adress VARCHAR(255),
       number_of_complaints INT,
       PRIMARY KEY(customer_id),
       UNIQUE KEY(email_adress)
       );
     
         DROP TABLE customers;
     
         CREATE TABLE customers
     (
       customer_id INT,
       first_name VARCHAR(255),
       last_name VARCHAR(255),
       email_adress VARCHAR(255),
       number_of_complaints INT,
       PRIMARY KEY(customer_id)
       );
     
       ALTER TABLE customers
       ADD UNIQUE KEY (email_adress);
     
       ALTER TABLE customers
       DROP INDEX email_adress;
     
	DROP TABLE customers;
     
     CREATE TABLE customers
     (
       customer_id INT AUTO_INCREMENT,
       first_name VARCHAR(255),
       last_name VARCHAR(255),
       email_adress VARCHAR(255),
       number_of_complaints INT,
       PRIMARY KEY(customer_id)
     );
     
     ALTER TABLE customers
     ADD COLUMN gender ENUM('M','F') AFTER last_name;
     
     INSERT INTO customers (first_name,last_name,gender,email_adress,number_of_complaints)
     VALUES('John','Mackinley','M','john.mckinley@365careers.com',0);
     
     ALTER TABLE customers
     CHANGE COLUMN number_of_complaints number_of_complaints INT DEFAULT 0;
     
     INSERT INTO customers (first_name,last_name,gender)
     VALUES('Peter','Figaro','M');
     
     SELECT * FROM customers;
     
     ALTER TABLE customers
     ALTER COLUMN number_of_complaints DROP DEFAULT;
     
     CREATE TABLE companies
     (
     company_id VARCHAR(255) DEFAULT 'X',
     company_name VARCHAR(255),
     headquarters_phone_number VARCHAR(255),
     PRIMARY KEY (company_id),
     UNIQUE KEY (headquarters_phone_number)
     );
     
     DROP TABLE companies;
     
     CREATE TABLE companies
     (
     company_id INT AUTO_INCREMENT,
     company_name VARCHAR(255)NOT NULL,
     headquarters_phone_number VARCHAR(255) ,
     PRIMARY KEY(company_id)
     );
     
     ALTER TABLE companies
     MODIFY company_name VARCHAR(255) NULL;
     
    #ALTER TABLE companies
     #CHANGE COLUMN coampany_name company_name VARCHAR(255) NOT NULL;
     
     INSERT INTO companies(headquarters_phone_number,company_name)
     VALUES('+1 (202) 555-0196','Company A');
     
     SELECT * FROM companies;
     
     ALTER TABLE companies
     MODIFY headquarters_phone_number VARCHAR(255) NULL;
     
     ALTER TABLE companies
     CHANGE COLUMN headquarters_phone_number headquarters_phone_number VARCHAR(255) NOT NULL;
     
     CREATE TABLE IF NOT EXISTS test (
		numbers 	INT(10),
		words 	    VARCHAR(10)
);
     
     SELECT 
    *
FROM
    test;
     
     DROP TABLE test;
     
 SELECT 
    first_name, last_name
FROM
    employees;
     
 SELECT 
    *
FROM
    employees;    
     
     SELECT 
    dept_no
FROM
    departments;
     
     SELECT 
    *
FROM
    departments;
    
    SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Denis' AND gender = 'M';
    
     
     SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Elvis';
     
        SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Kellie' AND gender = 'F';
     
     
     SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Elvis'
        OR first_name = 'Denis';
     
     SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Kellie'
        OR first_name = 'Aruna';
     
     SELECT 
    *
FROM
    employees
WHERE
    last_name = 'Denis'
        AND (gender = 'M' OR gender = 'F');
     
     
     SELECT 
    *
FROM
    employees
WHERE
    gender = 'F'
        AND (first_name = 'Kellie'
        OR first_name = 'Aruna'); 
        
        SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Cathie' , 'Mark', 'Nathan');
        
        SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('Cathie' , 'Mark', 'Nathan');
        
        
SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Denis' , 'Elvis');
    
    SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('Jacob' , 'Mark','John');
   
   
   SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mar%');
   
   SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mar_');
    
    SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mark%');
    
    SELECT 
    *
FROM
    employees
WHERE
    hire_date LIKE ('%2000%');
    
    
    SELECT 
    *
FROM
    employees
WHERE
    emp_no LIKE ('1000_');
    
    SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%jack%');
    
    SELECT 
    *
FROM
    employees
WHERE
    first_name NOT LIKE ('%jack%');
    
    SELECT 
    *
FROM
    employees
WHERE
    hire_date BETWEEN '1990-01-01' AND '2000-01-01';
    
    SELECT 
    *
FROM
    employees
WHERE
    emp_no NOT BETWEEN '10004' AND '10012';
    SELECT 
    *
FROM
    salaries
WHERE
    salary BETWEEN '66000' AND '70000'; 
    
    SELECT 
    *
FROM
    departments
WHERE
    dept_no BETWEEN 'dd03' AND 'dd06';
    
    SELECT 
    dept_name
FROM
    departments
WHERE
    dept_no IS NOT NULL;
    
    SELECT 
    *
FROM
    employees
WHERE
    gender = 'F'
        AND hire_date >= '2000-01-01';
        
	SELECT 
    *
FROM
    salaries
WHERE
    salary > 150000; 
        
     SELECT DISTINCT
    hire_date
FROM
    employees;
    
    SELECT 
    COUNT(emp_no)
FROM
    employees;
    
    
    SELECT 
    COUNT(*)
FROM
    salaries
WHERE
    salary >= 100000;
    
    SELECT 
    COUNT(*)
FROM
    dept_manager;
    
    SELECT 
    salary, COUNT(emp_no) AS emps_with_same_salary
FROM
    salaries
WHERE
    salary > 80000
GROUP BY salary
ORDER BY salary;

    
    SELECT 
    emp_no as emp_num, AVG(salary) AS avg_salary
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000
ORDER BY emp_no;
    
SELECT 
    emp_no
FROM
    dept_emp
WHERE
    from_date > '2000-01-01'
GROUP BY emp_no
HAVING COUNT(from_date) > 1
ORDER BY emp_no;


SELECT 
    *
FROM
    salaries
ORDER BY salary DESC
LIMIT 10;



insert into employees
(
emp_no,
birth_Date,
first_name,
last_name,
gender,
hire_date
) values
(
999901,
'1986-04-21',
'John',
'Smith',
'M',
'2011-01-01'
);

SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC;
    ;

INSERT INTO employees
VALUES
(
    999903,
    '1977-09-14',
    'Johnathan',
    'Creek',
    'M',
    '1999-01-01'
);

insert into titles(emp_no, title, from_date) values(999903,'Senior Engineer','1997-10-01');

   SELECT 
    *
FROM
    titles
ORDER BY emp_no DESC;
    ;

   
insert into dept_emp

(

                emp_no,

    dept_no,

    from_date,

    to_date

)

values

(

                999903,

    'd005',

    '1997-10-01',

    '9999-01-01'

);

 
    CREATE TABLE departments_dup (
    dept_no CHAR(4) NOT NULL,
    dept_name VARCHAR(40) NOT NULL
);
    
    
    SELECT 
    *
FROM
    departments_dup;
    
    insert into departments_dup
    (
    dept_no,
    dept_name
    )
    select * from departments;
    
    
    
    insert into departments
    values
    (
    'd010',
    'Buisness Analysis'
    );
    
    
    SELECT 
    *
FROM
    employees
WHERE
    emp_no = 999901;
    
    
    UPDATE employees 
SET 
    first_name = 'Stella',
    last_name = 'Parkinson',
    birth_date = '1990-12-31',
    gender = 'F'
WHERE
    emp_no = 999901;
    
    
    
    SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no;
    
    commit;
    
    UPDATE departments_dup 
SET 
    dept_no = 'dd01',
    dept_name = 'Quality Control';
    
    rollback;
    
    
    select * from departments;
    
    
    UPDATE departments 
SET 
    dept_name = 'Data Analysis'
WHERE
    dept_name = 'Buisness Analysis';
    
    
    
      SELECT 
    *
FROM
    titles
WHERE
    emp_no = 999903;  
    
 DELETE FROM employees 
WHERE
    emp_no = '999903';
    
    
    rollback;
    
INSERT INTO employees
VALUES
(
    999903,
    '1977-09-14',
    'Johnathan',
    'Creek',
    'M',
    '1999-01-01'
);
    
    INSERT INTO titles
VALUES
(
    999903,
    'Senior Engineer',
    '1999-01-01',
    null
);
    
    commit;
    
    
     DELETE FROM employees 
WHERE
    emp_no = '999903';
    
    commit;
    
    rollback;
    
    
    DELETE FROM departments_dup;
    
        select * from departments_dup;
    
    
        rollback;
    
    
    
    SELECT 
    *
FROM
    salaries
ORDER BY salary DESC
LIMIT 10;
    
    
    SELECT 
    COUNT(distinct from_date)
FROM
    salaries;
    
        SELECT 
    COUNT(distinct dept_no)
FROM
    dept_emp;
    
    
    SELECT 
    SUM(salary)
FROM
    salaries;
    
      SELECT 
    SUM(salary)
FROM
    salaries
WHERE
    from_date > '1997-01-01';
    
    
    SELECT 
    MIN(salary)
FROM
    salaries;
    
      SELECT 
    MIN(emp_no)
FROM
    employees;
    
    
     SELECT 
    AVG(salary)
FROM
    salaries; 
    
    
       SELECT 
    AVG(salary)
FROM
    salaries
WHERE
    from_date > '1997-01-01';  
    
    
          SELECT 
    ROUND(AVG(salary), 2)
FROM
    salaries
WHERE
    from_date > '1997-01-01';  
    
    
    
    SELECT 
    *
FROM
    departments_dup;
    
    alter table departments_dup
    change column dept_name dept_name VARCHAR(40) null;
    
    
    insert into departments_dup(dept_no) values ('d010'), ('d011');
    
    alter table departments_dup
    add column dept_manager varchar(255) null after dept_name;
    
    commit;
    
    SELECT 
    dept_no,
    IFNULL(dept_name,
            'Department name not provided') AS dept_name
FROM
    departments_dup;
    
    
        SELECT 
    dept_no,
    dept_name,
    COALESCE(dept_name, dept_manager, 'NA') AS dept_name
FROM
    departments_dup;
    
    
           SELECT 
    dept_no, dept_name,
    COALESCE(dept_no, dept_name) AS dept_info
FROM
    departments_dup;
    
   SELECT 
    dept_no,
    dept_name,
    IFNULL(dept_no, 'NA'),
    IFNULL(dept_name,
            'Department name not provided'),
    COALESCE(dept_no, dept_name) AS dept_info
FROM
    departments_dup;   
    
    
    SELECT 
    *
FROM
    departments_dup;
    
    
    drop table departments_dup;
    
    
    
    CREATE TABLE departments_dup (
    dept_no CHAR(4) NOT NULL,
    dept_name VARCHAR(40) NOT NULL
);
    
    insert into departments_dup
    (
    dept_no,
    dept_name
    )
    select * from departments;
    
    
      SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no ASC;
    
alter table departments_dup
change column dept_no dept_no char(4) null;

alter table departments_dup
change column dept_name dept_name varchar(40) null;

insert INTO departments_dup (dept_name)

VALUES('Public Relations');
    
DELETE FROM departments_dup 
WHERE
    dept_no = 'd002'; 
    
    
select * from department_manager_dup;
    
    
INSERT INTO departments_dup(dept_no) VALUES ('d010'), ('d011');


CREATE TABLE department_manager_dup (
    emp_no INT(11) NOT NULL,
    dept_no CHAR(4) NULL,
    from_date DATE NOT NULL,
    to_date DATE NULL
)
;

insert into department_manager_dup select * from dept_manager;

INSERT INTO department_manager_dup (emp_no, from_date)
VALUES (999904, '2017-01-01'),
(999905, '2017-01-01'),
(999906, '2017-01-01'),
(999907, '2017-01-01');

DELETE FROM department_manager_dup 
WHERE
    dept_no = 'd001';
    
  SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    department_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;
    
    
select * from departments_dup;


select m.emp_no, m.dept_no, d.first_name, d.last_name, d.hire_date
from
 department_manager_dup m
 inner join
 employees d on m.emp_no = d.emp_no;
 
 
SELECT 
    e.emp_no, e.first_name, e.last_name, d.dept_no, d.from_date
FROM
    employees e
        LEFT JOIN
    department_manager_dup d ON e.emp_no = d.emp_no
WHERE
    e.last_name = 'Markovitch'
ORDER BY d.dept_no DESC , e.emp_no;

#select * from employees where last_name = 'Markovitch';

SELECT 
    e.emp_no, e.first_name, e.last_name, dm.dept_no, e.hire_date
FROM
    employees e,
    dept_manager dm
WHERE
    e.emp_no = dm.emp_no;

set @@global.sql_mode := replace(@@global.sql_mode, 'ONLY_FULL_GROUP_BY', '');

SELECT 
    e.first_name, e.last_name, e.hire_date, t.title
FROM
    employees e
        JOIN
    titles t ON e.emp_no = t.emp_no
WHERE
    e.first_name = 'Margareta'
        AND e.last_name = 'Markovitch'
ORDER BY e.emp_no;


SELECT 
    dm.*, d.*
FROM
    departments d
        CROSS JOIN
    dept_manager dm
WHERE
    d.dept_no = 'd009'
ORDER BY d.dept_no;

SELECT 
    dm.*, d.*
FROM
     dept_manager dm
        CROSS JOIN
    departments d
WHERE
    d.dept_no = 'd009'
ORDER BY dm.dept_no;

SELECT 
    e.*, d.*
FROM
    employees e
        CROSS JOIN
    departments d
WHERE
    e.emp_no < 10011
ORDER BY e.emp_no , d.dept_name;


SELECT 
    e.gender, AVG(s.salary) AS average_salary
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
GROUP BY gender;

SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    m.from_date,
    d.dept_name
FROM
    employees e
        JOIN
    dept_manager m ON e.emp_no = m.emp_no
        JOIN
    departments d ON m.dept_no = d.dept_no;

SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    t.title,
    m.from_date,
    d.dept_name
FROM
    employees e
        JOIN
    dept_manager m ON e.emp_no = m.emp_no
        JOIN
    departments d ON m.dept_no = d.dept_no
        JOIN
    titles t ON e.emp_no = t.emp_no
WHERE
    t.title = 'Manager'
ORDER BY e.emp_no;
    
    
SELECT 
    d.dept_name, AVG(s.salary) AS average_salary
FROM
    dept_manager dm
        JOIN
    departments d ON dm.dept_no = d.dept_no
        JOIN
    salaries s ON dm.emp_no = s.emp_no
GROUP BY d.dept_name
ORDER BY average_salary DESC;


SELECT 
    COUNT(e.gender) AS number_of_employees, e.gender AS gender
FROM
    employees e
        JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
GROUP BY gender;


drop table if exists employees_dup;
CREATE TABLE employees_dup (
    emp_no INT(11),
    birth_date DATE,
    first_name VARCHAR(14),
    last_name VARCHAR(16),
    gender ENUM('M', 'F'),
    hire_date DATE
);

insert into employees_dup 
select e.*
from employees e limit 20;


select * from employees_dup;


insert into employees_dup values('10001','1953-09-02','Georgi','Facello','M','1986-06-26');

SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    NULL AS dept_no,
    NULL AS from_date
FROM
    employees_dup e
WHERE
    e.emp_no = 10001 
UNION ALL SELECT 
    NULL AS emp_no,
    NULL AS first_name,
    NULL AS last_name,
    m.dept_no,
    m.from_date
FROM
    dept_manager m;



SELECT 
    *
FROM
    (SELECT 
        e.emp_no,
            e.first_name,
            e.last_name,
            NULL AS dept_no,
            NULL AS from_date
    FROM
        employees e
    WHERE
        last_name = 'Denis' UNION SELECT 
        NULL AS emp_no,
            NULL AS first_name,
            NULL AS last_name,
            dm.dept_no,
            dm.from_date
    FROM
        dept_manager dm) AS a
ORDER BY -a.emp_no DESC;
    
    
    
    SELECT 
    e.first_name, e.last_name
FROM
    employees e
WHERE
    e.emp_no IN (SELECT 
            dm.emp_no
        FROM
            dept_manager dm);
    
    
    
SELECT 
    *
FROM
    dept_manager
WHERE
    emp_no IN (SELECT 
            emp_no
        FROM
            employees
        WHERE
            hire_date BETWEEN '1990-01-01' AND '1995-01-01');



SELECT 
    *
FROM
    employees e
WHERE
    EXISTS( SELECT 
            *
        FROM
            titles t
        WHERE
            t.emp_no = e.emp_no
                AND title = 'Assistant Engineer');


SELECT 
    a.*
FROM
    (SELECT 
        e.emp_no AS employee_ID,
            MIN(de.dept_no) AS department_code,
            (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = 110022) AS manager_ID
    FROM
        employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no <= 10020
    GROUP BY e.emp_no
    ORDER BY e.emp_no) AS A 
UNION SELECT 
    b.*
FROM
    (SELECT 
        e.emp_no AS employee_ID,
            MIN(de.dept_no) AS department_code,
            (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = 110039) AS manager_ID
    FROM
        employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no > 10020
    GROUP BY e.emp_no
    ORDER BY e.emp_no
    LIMIT 20) AS B;  
    
    
    drop table if exists emp_manager;
    CREATE TABLE emp_manager (
    emp_no INT(11) NOT NULL,
    dept_no CHAR(4) NULL,
    manager_no INT(11) NOT NULL
);
    
    
    
INSERT INTO emp_manager
SELECT 
    u.*
FROM
    (SELECT 
        a.*
    FROM
        (SELECT 
        e.emp_no AS employee_ID,
            MIN(de.dept_no) AS department_code,
            (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = 110022) AS manager_ID
    FROM
        employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no <= 10020
    GROUP BY e.emp_no
    ORDER BY e.emp_no) AS a UNION SELECT 
        b.*
    FROM
        (SELECT 
        e.emp_no AS employee_ID,
            MIN(de.dept_no) AS department_code,
            (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = 110039) AS manager_ID
    FROM
        employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no > 10020
    GROUP BY e.emp_no
    ORDER BY e.emp_no
    LIMIT 20) AS b UNION SELECT 
        c.*
    FROM
        (SELECT 
        e.emp_no AS employee_ID,
            MIN(de.dept_no) AS department_code,
            (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = 110039) AS manager_ID
    FROM
        employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no = 110022
    GROUP BY e.emp_no) AS c UNION SELECT 
        d.*
    FROM
        (SELECT 
        e.emp_no AS employee_ID,
            MIN(de.dept_no) AS department_code,
            (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = 110022) AS manager_ID
    FROM
        employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no = 110039
    GROUP BY e.emp_no) AS d) as u;
    
    
    CREATE OR REPLACE VIEW v_dept_latest_date AS
    SELECT 
        emp_no, MAX(from_date) AS from_date, MAX(to_date) AS to_date
    FROM
        dept_emp
    GROUP BY emp_no;
    
    
    
    CREATE OR REPLACE VIEW v_avg_salary_managers AS
    SELECT 
        ROUND(AVG(s.salary), 2) AS avg_salary
    FROM
        salaries s
            JOIN
        dept_manager d ON s.emp_no = d.emp_no;
    
    
    use employees;
    drop procedure if exists select_employees;
    
    DELIMITER $$
    create procedure select_employees()
    begin
    select * from employees
    limit 1000;
    end$$
    DELIMITER ;
    
    
    call employees.select_employees();
    
	DELIMITER $$
    create procedure avg_salary_employees()
    begin
    select avg(salary) from salaries;
    end$$
    DELIMITER ;
    
   call avg_salary_employees();


    drop procedure select_employees;

drop procedure if exists emp_salary;

DELIMITER $$
use employees$$
create procedure emp_avg_salary(in p_emp_no integer)
begin
select
e.first_name, e.last_name, avg(s.salary)
from 
employees e
join 
salaries s on e.emp_no = s.emp_no
where
e.emp_no = p_emp_no;
end$$

DELIMITER ;

call emp_avg_salary(11300);


DELIMITER $$
create procedure emp_avg_salary_out(in p_emp_no integer, out p_avg_salary decimal(10,2))
begin
select
avg(s.salary)
into p_avg_salary 
from 
employees e
join 
salaries s on e.emp_no = s.emp_no
where
e.emp_no = p_emp_no;
end$$

DELIMITER ;

DELIMITER $$
create procedure emp_ןinfo(in p_first_name varchar(255),in p_last_name varchar(255), out p_emp_num integer)
begin
select
e.emp_no
into p_emp_num 
from 
employees e
where
e.first_name = p_first_name
and e.last_name = p_last_name;
end$$

DELIMITER ;

Set @v_avg_salary = 0;
call employees.emp_avg_salary_out(11300,@v_avg_salary);
select @v_avg_salary;


set @v_emp_no = 0;
call employees.emp_info('Aruna','journel',@v_emp_no);
select @v_emp_no;

DELIMITER $$
create function f_emp_avg_salary(p_emp_no integer) returns decimal(10,2)
deterministic
begin
declare v_avg_salary decimal(10,2);
SELECT 
    AVG(s.salary)
INTO v_avg_salary FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.emp_no = p_emp_no;
return v_avg_salary;
end$$

DELIMITER ;

select f_emp_avg_salary(11300);


DELIMITER $$
CREATE FUNCTION emp_info(p_first_name varchar(255), p_last_name varchar(255)) RETURNS decimal(10,2)
DETERMINISTIC NO SQL READS SQL DATA
BEGIN
	DECLARE v_max_from_date date;
    DECLARE v_salary decimal(10,2);
SELECT 
    MAX(from_date)
INTO v_max_from_date FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.first_name = p_first_name
        AND e.last_name = p_last_name;
SELECT 
    s.salary
INTO v_salary FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.first_name = p_first_name
        AND e.last_name = p_last_name
        AND s.from_date = v_max_from_date;
                RETURN v_salary;
END$$
DELIMITER ;

SELECT EMP_INFO('Aruna', 'Journel');

DELIMITER $$

CREATE TRIGGER check_date
BEFORE INSERT on employees
FOR EACH ROW
BEGIN
IF NEW.hire_date > date_format(sysdate(), '%Y-%m-%d') THEN     
SET NEW.hire_date = date_format(sysdate(), '%Y-%m-%d');  
END IF;
END$$

DELIMITER ;



SELECT 
    *
FROM
    salaries
WHERE
    salary > 89000;


create index s_salary on salaries(salary);


SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    CASE
        WHEN dm.emp_no IS NOT NULL THEN 'Manager'
        ELSE 'Employee'
    END AS Position
FROM
    employees e
        LEFT JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
WHERE
    e.emp_no > 109990;


SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    MAX(s.salary) - MIN(s.salary) AS salary_diff,
    CASE
        WHEN MAX(s.salary) - MIN(s.salary) > 30000 THEN 'Higher'
        ELSE 'Not Higher'
    END AS is_higher
FROM
    employees e
        JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
        JOIN
    salaries s ON e.emp_no = s.emp_no
GROUP BY s.emp_no;



SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    CASE
        WHEN max(de.to_date) < sysdate() THEN 'Is still employeed'
        ELSE 'Not an employee anymore'
    END AS current_employee
FROM
    employees e
        JOIN
    dept_emp de ON e.emp_no = de.emp_no
GROUP BY e.emp_no 
limit 100;

use employees_mod;
SELECT 
    YEAR(de.from_date) AS calendar_year,
    e.gender AS gender,
    COUNT(e.gender) AS num_of_employees
FROM
    t_employees e
        JOIN
    t_dept_emp de ON e.emp_no = de.emp_no
WHERE
    de.from_date > '1990-01-01'
GROUP BY calendar_year , gender
ORDER BY calendar_year ASC;


SELECT 
    d.dept_name,
    ee.gender,
    dm.emp_no,
    dm.from_date,
    dm.to_date,
    e.calendar_year,
    CASE
        WHEN
            YEAR(dm.to_date) >= e.calendar_year
                AND YEAR(dm.from_date) <= e.calendar_year
        THEN
            1
        ELSE 0
    END AS active
FROM
    (SELECT 
        YEAR(hire_date) AS calendar_year
    FROM
        t_employees
    GROUP BY calendar_year) e
        CROSS JOIN
    t_dept_manager dm
        JOIN
    t_departments d ON dm.dept_no = d.dept_no
        JOIN
    t_employees ee ON dm.emp_no = ee.emp_no
ORDER BY dm.emp_no , calendar_year;


SELECT 
    e.gender AS Gender,
    d.dept_name AS Department,
    ROUND(AVG(s.salary), 2) AS AvgSalary,
    YEAR(s.from_date) AS Calendar_year
FROM
    t_employees e
        JOIN
    t_salaries s ON e.emp_no = s.emp_no
        JOIN
    t_dept_emp de ON e.emp_no = de.emp_no
        JOIN
    t_departments d ON de.dept_no = d.dept_no
GROUP BY d.dept_no,Calendar_year , e.gender 
HAVING Calendar_year <= 2002
ORDER BY d.dept_no;



DROP PROCEDURE IF EXISTS filter_salary;

DELIMITER $$
CREATE PROCEDURE filter_salary (IN p_min_salary FLOAT, IN p_max_salary FLOAT)
BEGIN
SELECT 
    e.gender, d.dept_name, AVG(s.salary) as avg_salary
FROM
    t_salaries s
        JOIN
    t_employees e ON s.emp_no = e.emp_no
        JOIN
    t_dept_emp de ON de.emp_no = e.emp_no
        JOIN
    t_departments d ON d.dept_no = de.dept_no
    WHERE s.salary BETWEEN p_min_salary AND p_max_salary
GROUP BY d.dept_no, e.gender;
END$$

DELIMITER ;

CALL filter_salary(50000, 90000);






