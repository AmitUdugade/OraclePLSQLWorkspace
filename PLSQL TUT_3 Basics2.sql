SET SERVEROUTPUT ON;
DECLARE 
    v_salary number(8);
    v_empid number(2);
    v_name varchar2(10);
  
BEGIN
    Select salary, empid, name into v_salary, v_empid, v_name from emp 
    WHERE empid = 1;
    DBMS_OUTPUT.PUT_LINE('Employee ID is ' || v_empid || ',' || ' '  || 'Name is ' ||v_name || ',' || ' ' || 'Salary is ' || v_salary|| '.');
END;
/
