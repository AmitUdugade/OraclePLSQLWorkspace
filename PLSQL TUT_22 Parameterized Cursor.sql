SET SERVEROUTPUT ON;

DECLARE
    V_NAME VARCHAR2(20);
    CURSOR p_cur_emp(var_empid VARCHAR2)IS
    SELECT FIRST_NAME FROM employee WHERE EMPID < var_empid;
BEGIN
    OPEN p_cur_emp(3);
    LOOP    
        FETCH p_cur_emp INTO V_NAME;
        EXIT WHEN p_cur_emp%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(V_NAME);
    END LOOP;
    CLOSE p_cur_emp;
END;
/



SET SERVEROUTPUT ON;

DECLARE
    V_EMPID NUMBER;
    V_FNAME VARCHAR2(10);
    V_LNAME VARCHAR2(10);
    V_HIREDATE DATE;
    V_SALARY NUMBER;
    CURSOR p_cur_emp(var_empid VARCHAR2)IS
    SELECT * FROM employee WHERE EMPID < var_empid;
BEGIN
    OPEN p_cur_emp(3);
    LOOP    
        FETCH p_cur_emp INTO V_EMPID, V_FNAME, V_LNAME, V_HIREDATE, V_SALARY;
        EXIT WHEN p_cur_emp%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(V_EMPID ||', '|| V_FNAME ||', '||V_LNAME || ', ' ||V_HIREDATE || ', ' || V_SALARY);
    END LOOP;
    CLOSE p_cur_emp;
END;
/
