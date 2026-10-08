

CREATE OR REPLACE FUNCTION fn_validate_payroll (
    p_monthly_salary IN NUMBER
) RETURN VARCHAR2
IS
BEGIN
    IF p_monthly_salary IS NULL OR p_monthly_salary <= 0 THEN
        RETURN 'Invalid salary';
    END IF;

    RETURN 'Valid salary';
END;

