----------------Procedure in PLSQL---------------------------------

SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE PR_DARKCAMPER
IS

NAME VARCHAR2(20) := 'Amit Udugade';
WEBSITE varchar2(20) := 'Amtswrld.com';

BEGIN
    DBMS_OUTPUT.PUT_LINE('Whats Up Internet? I am ' || name || ' from ' || website);
END PR_DARKCAMPER;
/

-- ways to execute the procedure
EXECUTE PR_DARKCAMPER;    --way 1

exec PR_DARKCAMPER;         -- way 2

begin                     -- way 3
    PR_DARKCAMPER;
end;


SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE PR_EMP 
IS
V_EMP EMPLOYEE%ROWTYPE;
BEGIN
    SELECT * INTO V_EMP FROM EMPLOYEE WHERE EMPID = 2;
    DBMS_OUTPUT.PUT_LINE(V_EMP.FIRST_NAME ||' ' || V_EMP.LAST_NAME || ' ' || V_EMP.SALARY || ' ' || V_EMP.HIRE_DATE);
END;
/

EXEC PR_EMP;
