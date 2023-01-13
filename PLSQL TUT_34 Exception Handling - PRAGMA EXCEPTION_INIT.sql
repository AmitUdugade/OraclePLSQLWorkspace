-----------------PRAGMA EXCEPTION_INIT-------------------------------------------

ACCEPT ENTER_AGE NUMBER PROMPT 'ENTER YOUR AGE';
DECLARE
    EX_AGE EXCEPTION;
    AGE NUMBER := &ENTER_AGE;
    PRAGMA EXCEPTION_INIT(EX_AGE, -20009);
BEGIN
    IF AGE < 18 THEN
        RAISE_APPLICATION_ERROR(-20009,'You should be 18 or above for the DRINKS!');
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('Sure! What would you like to have?');
    
    EXCEPTION WHEN EX_AGE THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/
