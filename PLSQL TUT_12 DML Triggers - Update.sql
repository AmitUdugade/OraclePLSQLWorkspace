SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER bu_superheroes
BEFORE UPDATE ON superheroes
FOR EACH ROW
ENABLE
DECLARE 
    v_name VARCHAR2(20);
BEGIN
    SELECT user INTO v_name FROM DUAL;
    DBMS_OUTPUT.PUT_LINE('You Just Have Updated A Record. Mr. ' ||v_name);
END;
/

update superheroes SET name = 'Hulk' where name = 'Spiderman';

Insert into superheroes values('Spiderman');

SELECT * FROM superheroes;
