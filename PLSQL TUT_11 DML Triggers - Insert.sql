Create table superheroes(name VARCHAR2(20));

SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER bi_superheroes
BEFORE INSERT ON superheroes
FOR EACH ROW
ENABLE
DECLARE
    v_user VARCHAR2(20);
BEGIN
    SELECT user INTO v_user from dual;
    DBMS_OUTPUT.PUT_LINE('You Just Entered A Line Mr. ' || v_user);
END;
/

insert into superheroes values('Spiderman');

select * from superheroes;
