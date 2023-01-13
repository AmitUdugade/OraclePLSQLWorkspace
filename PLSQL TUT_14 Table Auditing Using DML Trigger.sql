CREATE TABLE sh_audit(
        new_name VARCHAR2(30),
        old_name VARCHAR2(30),
        user_name VARCHAR2(30),
        entry_date VARCHAR2(30),
        operation VARCHAR2(10));
		
SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER superheroes_audit
BEFORE INSERT OR DELETE OR UPDATE ON superheroes
FOR EACH ROW
ENABLE
DECLARE
    v_user VARCHAR2(20);
    v_date VARCHAR2(20);
BEGIN
    SELECT user, TO_DATE(SYSDATE,'DD/MON/YYYY HH24:MI:SS') INTO v_user, v_date FROM Dual;
    IF INSERTING THEN
        INSERT INTO sh_audit(new_name, old_name, user_name, entry_date, operation)
        VALUES(:NEW.name, NULL, v_user, v_date, 'INSERT');
    ELSIF DELETING THEN
        INSERT INTO sh_audit(new_name, old_name, user_name, entry_date, operation)
        VALUES(NULL, :OLD.name, v_user, v_date, 'DELETE');
    ELSIF UPDATING THEN
        INSERT INTO sh_audit(new_name, old_name, user_name, entry_date, operation)
        VALUES(:NEW.name, :OLD.name, v_user, v_date, 'UPDATE');
    END IF;
END;
/
