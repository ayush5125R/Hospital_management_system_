CREATE TABLE nurse (
    N_ID INT PRIMARY KEY AUTO_INCREMENT,
    N_Name VARCHAR(50),
    N_Email VARCHAR(100)
);

CREATE TABLE doctor (
    Dr_ID INT PRIMARY KEY AUTO_INCREMENT,
    Dr_Name VARCHAR(50),
    Dr_Gender VARCHAR(10),
    Dr_Specialization VARCHAR(50)
);

CREATE TABLE receptionist (
    R_ID INT PRIMARY KEY AUTO_INCREMENT,
    R_Name VARCHAR(50),
    R_Gender VARCHAR(10),
    R_Add VARCHAR(100)
);

CREATE TABLE room (
    Room_ID INT PRIMARY KEY AUTO_INCREMENT,
    R_Number INT,
    R_Serial VARCHAR(30),
    R_EntryDate DATE,
    R_ExitDate DATE
);

CREATE TABLE patient (
    P_ID INT PRIMARY KEY AUTO_INCREMENT,
    P_Name VARCHAR(50),
    P_Gender VARCHAR(10),
    P_EntryDate DATE,
    P_ExitDate DATE,
    Dr_ID INT,
    N_ID INT,
    R_ID INT,
    Room_ID INT,
    FOREIGN KEY (Dr_ID) REFERENCES doctor(Dr_ID),
    FOREIGN KEY (N_ID) REFERENCES nurse(N_ID),
    FOREIGN KEY (R_ID) REFERENCES receptionist(R_ID),
    FOREIGN KEY (Room_ID) REFERENCES room(Room_ID)
);