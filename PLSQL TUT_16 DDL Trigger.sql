CREATE TABLE SCHEMA_AUDIT(
    DDL_DATE DATE,         -- Holds the date when DDL is performed.
    DDL_USER VARCHAR2(20),    -- Name of the user who created the DDL.
    OBJECT_CREATED VARCHAR2(20),  -- Type of object(index,view etc.)
    OBJECT_NAME VARCHAR2(20),    -- Object name
    DDL_OPERATION VARCHAR2(20)   -- Type of DDL Operation Executed.
    );
    

SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER tr_audit_schema
AFTER DDL ON SCHEMA
BEGIN
    Insert into SCHEMA_AUDIT Values(
        SYSDATE,
        SYS_Context('USERENV','CURRENT_USER'),
        ora_dict_obj_type,
        ora_dict_obj_name,
        ora_sysevent);
END;
/

SELECT * FROM SCHEMA_AUDIT;
CREATE TABLE DARKCAMPER(NAME VARCHAR2(10));
INSERT INTO darkcamper VALUES('Udugade');
truncate table darkcamper;
ALTER Table darkcamper MODIFY name varchar(30);
Drop table darkcamper;
