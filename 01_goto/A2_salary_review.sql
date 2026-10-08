SET SERVEROUTPUT ON;

DECLARE
    v_salary NUMBER := 250000;
BEGIN
    IF v_salary >= 500000 THEN
        GOTO high_salary;
    ELSIF v_salary >= 300000 THEN
        GOTO review_salary;
    ELSE
        GOTO low_salary;
    END IF;

    <<high_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary ' || v_salary || ': high salary.');
    GOTO finish;

    <<review_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary ' || v_salary || ': salary is normal.');
    GOTO finish;

    <<low_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary ' || v_salary || ': low salary, needs review');

    <<finish>>
    NULL;
END;

