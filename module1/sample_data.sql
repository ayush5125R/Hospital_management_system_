INSERT INTO nurse (N_Name, N_Email)
VALUES ('Anita', 'anita@gmail.com');

INSERT INTO doctor (Dr_Name, Dr_Gender, Dr_Specialization)
VALUES ('Dr Sharma', 'Male', 'Cardiology');

INSERT INTO receptionist (R_Name, R_Gender, R_Add)
VALUES ('Priya', 'Female', 'Delhi');

INSERT INTO room (R_Number, R_Serial, R_EntryDate, R_ExitDate)
VALUES (101, 'A1', '2026-04-27', '2026-05-05');

INSERT INTO patient
(P_Name, P_Gender, P_EntryDate, P_ExitDate, Dr_ID, N_ID, R_ID, Room_ID)
VALUES
('Rahul', 'Male', '2026-04-27', '2026-05-02', 1, 1, 1, 1);