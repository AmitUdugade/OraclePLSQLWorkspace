SET SERVEROUTPUT ON;

CREATE OR REPLACE FUNCTION circle_area(radius NUMBER)
RETURN NUMBER IS

pi CONSTANT NUMBER(7,3) := 3.141;
area NUMBER(7,3);

BEGIN
    area := pi * (radius * radius);
    RETURN area;
END;
/

set serveroutput on; 
BEGIN
    DBMS_OUTPUT.PUT_LINE(circle_area(25));
END;
/
