SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER tr_superheroes
BEFORE INSERT OR DELETE OR UPDATE ON superheroes
FOR EACH ROW
ENABLE
DECLARE 
    v_name VARCHAR2(20);
BEGIN
    SELECT user INTO v_name FROM Dual;
    IF INSERTING THEN
        DBMS_OUTPUT.PUT_LINE('A new record has been inserted by Mr. ' || v_name);
    ELSIF DELETING THEN
        DBMS_OUTPUT.PUT_LINE('A record has been deleted by Mr. ' || v_name);
    ELSIF UPDATING THEN
        DBMS_OUTPUT.PUT_LINE('A record has been Updated by Mr. ' || v_name);
    END IF;
END;
/

select * from superheroes;
Insert into superheroes values('Captain America');
update superheroes set name = 'Avenger' where name = 'Captain America';
delete from superheroes where name = 'Avenger';
