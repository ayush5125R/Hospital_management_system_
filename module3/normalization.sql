-- Hospital Management System
-- Normalization Process

-- UNNORMALIZED FORM (Example Raw Data)
-- PatientData(P_ID, P_Name, Doctor_Name, Doctor_Specialization, Room_Number, Nurse_Name)

-- 1NF: Atomic values only
CREATE TABLE patient_1nf (
    P_ID INT,
    P_Name VARCHAR(50),
    Doctor_Name VARCHAR(50),
    Doctor_Specialization VARCHAR(50),
    Room_Number INT,
    Nurse_Name VARCHAR(50)
);

-- 2NF: Remove partial dependency
CREATE TABLE patient (
    P_ID INT PRIMARY KEY,
    P_Name VARCHAR(50)
);

CREATE TABLE doctor (
    Dr_ID INT PRIMARY KEY,
    Dr_Name VARCHAR(50),
    Dr_Specialization VARCHAR(50)
);

-- 3NF: Remove transitive dependency
CREATE TABLE room (
    Room_ID INT PRIMARY KEY,
    Room_Number INT
);

CREATE TABLE nurse (
    N_ID INT PRIMARY KEY,
    N_Name VARCHAR(50)
);

-- Final normalized relation
CREATE TABLE patient_details (
    P_ID INT,
    Dr_ID INT,
    Room_ID INT,
    N_ID INT,
    FOREIGN KEY (P_ID) REFERENCES patient(P_ID),
    FOREIGN KEY (Dr_ID) REFERENCES doctor(Dr_ID),
    FOREIGN KEY (Room_ID) REFERENCES room(Room_ID),
    FOREIGN KEY (N_ID) REFERENCES nurse(N_ID)
);