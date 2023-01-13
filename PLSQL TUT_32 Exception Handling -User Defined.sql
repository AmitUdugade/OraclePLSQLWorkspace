------------------Exception Handling -User-defined-------------------------

SET SERVEROUTPUT ON;

DECLARE
    DIVIDENT NUMBER := 24;
    DIVISOR NUMBER := 6;
    V_RESULT NUMBER;
    EX_DIVZERO EXCEPTION;
BEGIN
    IF DIVISOR = 0 THEN
        RAISE EX_DIVZERO;
    END IF;
    V_RESULT := DIVIDENT/DIVISOR;
    DBMS_OUTPUT.PUT_LINE('RESULT IS : '|| V_RESULT);
    EXCEPTION WHEN  EX_DIVZERO THEN
        DBMS_OUTPUT.PUT_LINE('Error! Your divisor is zero');
END;
/
