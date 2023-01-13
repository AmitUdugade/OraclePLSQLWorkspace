SET SERVEROUTPUT ON;

DECLARE
    V_EMP EMPLOYEE%ROWTYPE;
BEGIN
    SELECT * INTO V_EMP FROM EMPLOYEE WHERE EMPID = 1;
    DBMS_OUTPUT.PUT_LINE(V_EMP.FIRST_NAME || ' ' || V_EMP.LAST_NAME || ' ' || V_EMP.SALARY);
END;
/