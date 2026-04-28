USE hospital_management_system;

-- Transaction 1 : Commit Example
START TRANSACTION;

UPDATE patient
SET P_ExitDate = '2026-05-10'
WHERE P_ID = 1;

COMMIT;

-- Transaction 2 : Rollback Example
START TRANSACTION;

UPDATE room
SET R_Number = 999
WHERE Room_ID = 1;

ROLLBACK;