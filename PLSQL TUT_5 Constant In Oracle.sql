SET SERVEROUTPUT ON;

DECLARE 
    v_pi CONSTANT NUMBER(7,6) :=3.141592;
    v_pi1 CONSTANT NUMBER(7,6) DEFAULT 3.141592;
    v_pi2 CONSTANT NUMBER(7,6) NOT NULL DEFAULT 3.141592;
BEGIN
    DBMS_OUTPUT.PUT_LINE(v_pi);
        DBMS_OUTPUT.PUT_LINE(v_pi1);
            DBMS_OUTPUT.PUT_LINE(v_pi2);
END;
/