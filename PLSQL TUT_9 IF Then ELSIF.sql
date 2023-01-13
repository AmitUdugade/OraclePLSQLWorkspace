SET SERVEROUTPUT ON;
DECLARE 
    v_num NUMBER := &Enter_a_Number;
BEGIN
    IF v_num = 0 THEN
        DBMS_OUTPUT.PUT_LINE(v_num ||' '||'ZERO');
    ELSIF V_NUM = 1 THEN 
        DBMS_OUTPUT.PUT_LINE(v_num || ' ' ||'ONE');
    ELSIF V_NUM = 2 THEN 
        DBMS_OUTPUT.PUT_LINE(v_num || ' ' ||'THREE');
    ELSE
        DBMS_OUTPUT.PUT_LINE('INVALID DIGIT');
    End IF;
END;
/
