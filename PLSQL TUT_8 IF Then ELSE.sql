SET SERVEROUTPUT ON;
DECLARE 
    v_num NUMBER := &Enter_a_Number;
BEGIN
    IF MOD(v_num, 2) = 0 THEN
        DBMS_OUTPUT.PUT_LINE(v_num ||' '||'is Even Number');
    ELSE 
        DBMS_OUTPUT.PUT_LINE(v_num || ' ' ||'is ODD Number');
    End IF;
        DBMS_OUTPUT.PUT_LINE('IF-THEN-ELSE Construct Complete');
END;
/
