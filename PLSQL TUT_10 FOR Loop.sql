SET SERVEROUTPUT ON;

BEGIN
    FOR v_counter IN 1 .. 10 LOOP
        DBMS_OUTPUT.PUT_LINE(v_counter);
    END LOOP;
END;
/


    
SET SERVEROUTPUT ON;

BEGIN
    FOR v_counter IN REVERSE 1 .. 10 LOOP
        DBMS_OUTPUT.PUT_LINE(v_counter);
    END LOOP;
END;
/


SET SERVEROUTPUT ON;

DECLARE 
    v_result NUMBER;
BEGIN
    FOR v_counter IN 1 .. 10 LOOP
        v_result := 10 * v_counter;
        DBMS_OUTPUT.PUT_LINE('19' || '*' || v_counter || ' = ' || v_result);
    END LOOP;
END;
/


SET SERVEROUTPUT ON;

DECLARE 
    v_num NUMBER := &Enter_a_Number;
    v_result NUMBER;
BEGIN
    FOR v_counter IN 1 .. 10 LOOP
        v_result := v_num * v_counter;
        DBMS_OUTPUT.PUT_LINE(v_num || '*' || v_counter || ' = ' || v_result);
    END LOOP;
END;
/
