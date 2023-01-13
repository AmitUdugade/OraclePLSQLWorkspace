SET SERVEROUTPUT ON;
VARIABLE v_bind1 varchar2(10);
EXEC :v_bind1 :='Amit U';
/

SET SERVEROUTPUT ON;
BEGIN
    :V_bind1 := 'Amit';
    DBMS_OUTPUT.PUT_LINE(:v_bind1);
END;

SET AUTOPRINT ON;
VARIABLE v_bind2 VARCHAR2(10);
EXEC :v_bind2 := 'Amita';
