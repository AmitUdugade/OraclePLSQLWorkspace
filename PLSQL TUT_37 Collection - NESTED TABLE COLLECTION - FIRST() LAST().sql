------------------------NESTED TABLE COLLECTION - FIRST() LAST()---------------------------


SET SERVEROUTPUT ON;

DECLARE
    TYPE MY_NESTED_TABLE IS TABLE OF NUMBER;
    COL_VAR MY_NESTED_TABLE := MY_NESTED_TABLE (10,20,30,40,50);
BEGIN
    DBMS_OUTPUT.PUT_LINE(COL_VAR.FIRST);
    DBMS_OUTPUT.PUT_LINE(COL_VAR.LAST);
END;
/

---------------------------------------------------------------------------------
SET SERVEROUTPUT ON;

DECLARE
    TYPE MY_NESTED_TABLE IS TABLE OF NUMBER;
    COL_VAR MY_NESTED_TABLE := MY_NESTED_TABLE (10,20,30,40,50);
BEGIN
    COL_VAR.DELETE(1);
    DBMS_OUTPUT.PUT_LINE(COL_VAR.FIRST);
END;
/
--------------------------------------------------------------------------------
SET SERVEROUTPUT ON;

DECLARE
    TYPE MY_NESTED_TABLE IS TABLE OF NUMBER;
    COL_VAR MY_NESTED_TABLE := MY_NESTED_TABLE (10,20,30,40,50);
BEGIN
    COL_VAR.TRIM;
    DBMS_OUTPUT.PUT_LINE(COL_VAR.LAST);
END;
/
