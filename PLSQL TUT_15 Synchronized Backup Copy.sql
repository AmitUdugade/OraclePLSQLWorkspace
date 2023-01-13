CREATE TABLE SUPERHEROES_BACKUP AS SELECT * FROM SUPERHEROES WHERE 1=2;

SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER tr_superheroes_backup
BEFORE INSERT OR DELETE OR UPDATE ON superheroes
FOR EACH ROW
ENABLE
BEGIN
    IF INSERTING THEN
        INSERT INTO superheroes_backup VALUES(:NEW.name);
    ELSIF DELETING THEN
        DELETE FROM superheroes_backup WHERE name = :OLD.name;
    ELSIF UPDATING THEN
        UPDATE superheroes_backup SET name = :NEW.name WHERE name = :OLD.name;
    END IF;
END;
/

SELECT * FROM superheroes;

SELECT * FROM superheroes_backup;

Insert into superheroes values('Batma');

Delete from superheroes where name = 'Spiderma';

Update superheroes set name = 'Batman' where name = 'Batma';
