SET SERVEROUTPUT ON;

PROMPT Testing fn_annual_salary
SELECT fn_annual_salary(1000) AS expected_12000
FROM dual;

PROMPT Testing fn_years_of_service
SELECT fn_years_of_service(DATE '2020-01-01') AS years_of_service
FROM dual;

PROMPT Testing fn_calculate_tax
SELECT fn_calculate_tax(12000) AS expected_1200
FROM dual;

PROMPT Testing fn_dept_name
SELECT fn_dept_name(10) AS department_name
FROM dual;

PROMPT Testing fn_dept_name with an unknown department
SELECT fn_dept_name(-1) AS expected_department_not_found
FROM dual;
