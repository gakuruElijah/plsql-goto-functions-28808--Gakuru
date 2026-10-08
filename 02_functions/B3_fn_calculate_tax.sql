
CREATE OR REPLACE FUNCTION fn_calculate_tax (
    p_annual_salary IN NUMBER
) RETURN NUMBER
IS
BEGIN
    
    RETURN p_annual_salary * 0.10;
END;

