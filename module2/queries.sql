SELECT * FROM patient;

SELECT * FROM doctor;

SELECT P_Name, Dr_Name
FROM patient
JOIN doctor ON patient.Dr_ID = doctor.Dr_ID;

SELECT COUNT(*) FROM patient;

SELECT * FROM room;