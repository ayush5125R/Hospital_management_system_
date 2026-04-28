USE hospital_management_system;

-- Concurrency Demonstration (Hospital Room Update Example)

-- First Transaction (Window 1)
-- A receptionist starts updating a room
START TRANSACTION;

UPDATE room
SET R_Number = 500
WHERE Room_ID = 1;

-- Note: We are NOT committing yet.
-- This keeps the row locked.


-- Second Transaction (Window 2)
-- Another receptionist tries to update the same room

START TRANSACTION;

UPDATE room
SET R_Number = 700
WHERE Room_ID = 1;

-- This query will wait because the first transaction is still active


-- Now we go back to Window 1 and commit

COMMIT;

-- After this, the second transaction will proceed


-- Final check

SELECT * FROM room;