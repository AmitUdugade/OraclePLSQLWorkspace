SET SERVEROUT ON;
DECLARE
    s VARCHAR2(20);
    s1 VARCHAR2(20) := 'Hello world';
BEGIN 
    s := 'Darkcamper';
    DBMS_OUTPUT.PUT_LINE(s);
       DBMS_OUTPUT.PUT(s);
    DBMS_OUTPUT.PUT_LINE(s1);
END;
/

