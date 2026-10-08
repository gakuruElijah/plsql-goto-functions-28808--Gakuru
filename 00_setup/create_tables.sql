CREATE TABLE departments (
    department_id   NUMBER(4) PRIMARY KEY,
    department_name VARCHAR2(50) NOT NULL UNIQUE
);

CREATE TABLE employees (
    employee_id   NUMBER(6) PRIMARY KEY,
    first_name    VARCHAR2(30) NOT NULL,
    last_name     VARCHAR2(30) NOT NULL,
    salary        NUMBER(10, 2) NOT NULL CHECK (salary >= 0),
    hire_date     DATE NOT NULL,
    department_id NUMBER(4),
    CONSTRAINT fk_employees_department
        FOREIGN KEY (department_id)
        REFERENCES departments (department_id)
);

INSERT INTO departments (department_id, department_name)
VALUES (10, 'Finance');

INSERT INTO departments (department_id, department_name)
VALUES (20, 'Human Resources');

INSERT INTO departments (department_id, department_name)
VALUES (30, 'Information Technology');

INSERT INTO employees
    (employee_id, first_name, last_name, salary, hire_date, department_id)
VALUES
    (1001, 'Amina', 'Uwimana', 450000, DATE '2020-03-15', 10);

INSERT INTO employees
    (employee_id, first_name, last_name, salary, hire_date, department_id)
VALUES
    (1002, 'Eric', 'Niyonzima', 600000, DATE '2018-07-01', 30);

INSERT INTO employees
    (employee_id, first_name, last_name, salary, hire_date, department_id)
VALUES
    (1003, 'Diane', 'Mukamana', 350000, DATE '2023-01-10', 20);

INSERT INTO employees
    (employee_id, first_name, last_name, salary, hire_date, department_id)
VALUES
    (1004, 'Patrick', 'Habimana', 0, DATE '2024-06-01', 10);

COMMIT;