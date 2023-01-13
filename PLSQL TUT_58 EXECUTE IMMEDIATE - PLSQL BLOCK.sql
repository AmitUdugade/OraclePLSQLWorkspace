-----------------PLSQL BLOCK USING EXECUTE IMMEDIATE-----------------------------------------

SET SERVEROUTPUT ON;

DECLARE 
    PLSQL_BLK VARCHAR2(250);
BEGIN
    PLSQL_BLK := 'DECLARE
                    V_USER VARCHAR2(10);
                  BEGIN
                    SELECT USER INTO V_USER FROM DUAL;
                    DBMS_OUTPUT.PUT_LINE(''CURRENT USER IS  '' || V_USER);
                  END;';
                  
    EXECUTE IMMEDIATE PLSQL_BLK;
END;
/
