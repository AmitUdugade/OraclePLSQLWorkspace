Note* Need administrative database trigger system privilege.
Use sys account

CREATE TABLE STARTUP_AUDIT(
    event_type VARCHAR2(20),
    event_date date,
    event_time VARCHAR2(20));
    
SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER tr_startup_audit
AFTER STARTUP ON DATABASE
BEGIN
    INSERT INTO startup_audit values(
        ora_sysevent,
        sysdate,
        TO_CHAR(sysdate, 'HH24:MM:SS'));
END;
/
