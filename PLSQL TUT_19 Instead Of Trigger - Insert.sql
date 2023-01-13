Create table trainer (full_name VARCHAR2(20));
Create table subject (Subject_name VARCHAR2(20));
insert into trainer values('Amit Udugade');
insert into subject values('Oracle');

Create view vw_darkcamper AS 
Select full_name, subject_name from trainer, subject;

insert into vw_darkcamper values('Sunny','Java');        ---- we'll get an error so use instead-of trigger

SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER tr_io_insert
INSTEAD OF INSERT ON vw_darkcamper 
FOR EACH ROW
BEGIN
    INSERT INTO Trainer (full_name) values(:NEW.full_name);
    INSERT INTO subject (Subject_name) values (:NEW.subject_name);
END;
/

insert into vw_darkcamper values('Sunny','Java');      -- Now no error.
select * from trainer;
select * from subject;
select * from vw_darkcamper;                 --cartesian product
