SET SERVEROUTPUT ON;

DECLARE
    v_name emp.name%TYPE;   --Anchored Datatype
BEGIN
    Select name into v_name from emp
    WHERE empid = 2;
    DBMS_OUTPUT.PUT_LINE('Name is ' ||v_name);
END;
/
