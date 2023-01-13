SET SERVEROUTPUT ON;
DECLARE
    v_num NUMBER(2) :=9;
BEGIN
    IF v_num <= 9 THEN
        DBMS_OUTPUT.PUT_LINE('Inside the if');
    End if;
        DBMS_OUTPUT.PUT_LINE('Outside the if');
END;
/



SET SERVEROUTPUT ON;

DECLARE 
    v_book_name VARCHAR2(20) :='Hello World';
    v_author_name VARCHAR2(20) := 'Amit Udugade';
BEGIN
    IF v_book_name = 'Hello World' AND v_author_name = 'Amit Udugade' THEN
        DBMS_OUTPUT.PUT_LINE('Inside the IF');
    END iF;
        DBMS_OUTPUT.PUT_LINE('Outsite the IF');
END;
/
