SET SERVEROUTPUT ON;

DECLARE 
    V_FNAME VARCHAR(10);
    V_EMPID NUMBER;
    CURSOR D_CUR_EMP(VAR_EMPID NUMBER :=3) IS
    SELECT FIRST_NAME, EMPID FROM EMPLOYEE WHERE EMPID <= VAR_EMPID;
BEGIN
    OPEN D_CUR_EMP(2);
    LOOP 
        FETCH D_CUR_EMP INTO V_FNAME, V_EMPID;
        EXIT WHEN D_CUR_EMP%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(V_FNAME || ' ' || V_EMPID);
    END LOOP;
    CLOSE D_CUR_EMP;
END;
/
