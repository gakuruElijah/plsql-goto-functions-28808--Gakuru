SET SERVEROUTPUT ON;

DECLARE
    v_number NUMBER := 0;
BEGIN
    IF v_number > 0 THEN
        DBMS_OUTPUT.PUT_LINE(v_number || ' is positive.');
    ELSIF v_number < 0 THEN
        DBMS_OUTPUT.PUT_LINE(v_number || ' is negative.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('The number is zero.');
    END IF;
END;
/