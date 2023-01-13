-----------------Raise Application Error---------------------------------

ACCEPT ENTER_A_AGE NUMBER PROMPT 'Enter your Age?';
DECLARE
    AGE NUMBER := &ENTER_A_AGE;
BEGIN
    IF AGE < 18 THEN
        RAISE_APPLICATION_ERROR(-20009, 'You should be 18 or above for the DRINKS!');
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('Sure, What would you like to have?');
    
    EXCEPTION WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/
