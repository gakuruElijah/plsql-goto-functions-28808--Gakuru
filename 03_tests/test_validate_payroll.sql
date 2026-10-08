SET SERVEROUTPUT ON;

PROMPT Positive salary should be valid
SELECT fn_validate_payroll(450000) AS result
FROM dual;

PROMPT Zero salary should be invalid
SELECT fn_validate_payroll(0) AS result
FROM dual;

PROMPT Negative salary should be invalid
SELECT fn_validate_payroll(-1000) AS result
FROM dual;

PROMPT NULL salary should be invalid
SELECT fn_validate_payroll(NULL) AS result
FROM dual;
