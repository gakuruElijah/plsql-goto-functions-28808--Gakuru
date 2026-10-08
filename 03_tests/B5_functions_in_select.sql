SET SERVEROUTPUT ON;

SELECT employee_id,
       first_name,
       last_name,
       salary AS monthly_salary,
       fn_annual_salary(salary) AS annual_salary,
       fn_calculate_tax(fn_annual_salary(salary)) AS annual_tax,
       fn_years_of_service(hire_date) AS years_of_service,
       fn_dept_name(department_id) AS department_name
FROM employees
ORDER BY employee_id;
