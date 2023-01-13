------------------------------SQL%ROWCOUNT-----------------------------------

SET SERVEROUTPUT ON;

DECLARE
    TOTAL_ROWS NUMBER(2);
BEGIN
    UPDATE EMPLOYEE SET SALARY = SALARY + 500 WHERE EMPID = 2;
    IF SQL%NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE('No Records Found.');
    ELSIF SQL%FOUND THEN
    TOTAL_ROWS :=  SQL%ROWCOUNT;
        DBMS_OUTPUT.PUT_LINE(TOTAL_ROWS || ' Rows Affected.');
    END IF;
END;
/
