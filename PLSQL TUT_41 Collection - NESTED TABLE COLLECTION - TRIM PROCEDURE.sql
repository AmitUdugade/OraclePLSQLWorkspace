------------------------ NESTED TABLE COLLECTION - TRIM PROCEDURE-------------------------------------
SET SERVEROUTPUT ON;

DECLARE
    TYPE MY_NESTED_TABLE IS TABLE OF NUMBER;
    NUM MY_NESTED_TABLE := MY_NESTED_TABLE (1,2,3,4,5);
BEGIN
    NUM.TRIM;
    FOR I IN 1..NUM.COUNT
    LOOP
        DBMS_OUTPUT.PUT_LINE(NUM(I));
    END LOOP;
END;
/
O/P:
1
2
3
4
5

-----------------------------------------------------------------------------------------------
SET SERVEROUTPUT ON;

DECLARE
    TYPE MY_NESTED_TABLE IS TABLE OF NUMBER;
    NUM MY_NESTED_TABLE := MY_NESTED_TABLE (1,2,3,4,5);
BEGIN
    NUM.TRIM(3);
    FOR I IN 1..NUM.COUNT
    LOOP
        DBMS_OUTPUT.PUT_LINE(NUM(I));
    END LOOP;
END;
/

O/P: 
1
2
