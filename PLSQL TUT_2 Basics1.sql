SET SERVEROUTPUT ON;
DECLARE 
    v_salary number(8);
BEGIN
    Select salary into v_salary from emp 
    WHERE empid = 1;
    DBMS_OUTPUT.PUT_LINE('Salary is ' || v_salary);
END;
/
