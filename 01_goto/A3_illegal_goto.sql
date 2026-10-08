SET SERVEROUTPUT ON;

-- ILLEGAL GOTO.

DECLARE
BEGIN
    GOTO inside_if;

    IF TRUE THEN
        <<inside_if>>
        DBMS_OUTPUT.PUT_LINE('This label is inside the IF statement.');
    END IF;
END;


-- Fix

DECLARE
    v_number NUMBER := 5;
BEGIN
    IF v_number > 0 THEN
        GOTO positive_number;
    END IF;

    DBMS_OUTPUT.PUT_LINE('The number is zero or negative.');
    GOTO finish;

    <<positive_number>>
    DBMS_OUTPUT.PUT_LINE('The number is positive.');

    <<finish>>
    NULL;
END;
