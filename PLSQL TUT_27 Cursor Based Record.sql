------------------CURSOR BASED RECORD [SINGLE RECORD}-----------------------------------------

SET SERVEROUTPUT ON;

DECLARE
    CURSOR CUR_RDV IS
    SELECT FIRST_NAME, LAST_NAME, HIRE_DATE FROM EMPLOYEE WHERE EMPID = 5;
    
    V_EMP CUR_RDV%ROWTYPE;
BEGIN
    OPEN CUR_RDV;
    FETCH CUR_RDV INTO V_EMP;
    DBMS_OUTPUT.PUT_LINE(V_EMP.FIRST_NAME);
    DBMS_OUTPUT.PUT_LINE(V_EMP.LAST_NAME);   
    DBMS_OUTPUT.PUT_LINE(V_EMP.HIRE_DATE);
    CLOSE CUR_RDV;
END;
/

--------------CURSOR BASED RECORD [MULTI RECORD]--------------------------------

SET SERVEROUTPUT ON;

DECLARE
    CURSOR CUR_RDV IS
    SELECT FIRST_NAME, LAST_NAME, HIRE_DATE FROM EMPLOYEE WHERE EMPID <= 5;
    
    V_EMP CUR_RDV%ROWTYPE;
BEGIN
    OPEN CUR_RDV;
    LOOP
        FETCH CUR_RDV INTO V_EMP;
        EXIT WHEN CUR_RDV%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(V_EMP.FIRST_NAME);
        DBMS_OUTPUT.PUT_LINE(V_EMP.LAST_NAME);   
        DBMS_OUTPUT.PUT_LINE(V_EMP.HIRE_DATE);
    END LOOP;
    CLOSE CUR_RDV;
END;
/
