#project
CREATE TABLE Patient (
    PatientID INT PRIMARY KEY,
    Name VARCHAR(100),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    Address VARCHAR(200),
    PhoneNumber VARCHAR(15)
);
CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100),
    Department VARCHAR(50)
);
CREATE TABLE Nurses (
    NurseID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Department VARCHAR(50),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100)
);
CREATE TABLE Pharmacy (
    MedicineID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    QuantityAvailable INT,
    Price DECIMAL(10, 2),
    Manufacturer VARCHAR(100)
);
CREATE TABLE Prescription (
    PrescriptionID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    MedicineID INT,
    Dosage VARCHAR(50),
    Duration DATE,
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID),
    FOREIGN KEY (MedicineID) REFERENCES Pharmacy(MedicineID)
);
CREATE TABLE Registration (
    RegistrationID INT PRIMARY KEY,
    PatientID INT,
    NurseID INT,
    DateOfVisit DATE,
    TimeOfVisit TIME,
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (NurseID) REFERENCES Nurses(NurseID) 
);

SELECT * FROM  Patient;
SELECT * FROM  Doctors;
SELECT * FROM  Nurses;
SELECT * FROM  Pharmacy;
SELECT * FROM  Prescription;
SELECT * FROM  Registration;

#Insertion 
INSERT INTO Patient (PatientID, Name, DateOfBirth, Gender, Address, PhoneNumber)
VALUES
  (0012, 'John Smith', '1980-01-15', 'Male', '123 Main St, City1, State1', '0510181101'),
  (0019, 'Jane Johnson', '1992-05-20', 'Female', '456 Elm St, City2, State2', '05305017710'),
  (0098, 'Robert Davis', '1975-11-10', 'Male', '789 Oak St, City3, State3', '0519991009'),
  (0023, 'Sara Andrwee', '1990-03-12', 'Female', '111 Pine St, City4, State4', '0539221996'),
  (0032, 'Jana James', '2000-05-20', 'Female', '222 Maple St, City5, State5', '0545061082'),
  (0017, 'Taim Hassan', '2000-11-12', 'Male', '333 Oak St, City6, State6', '0589238703'),
  (0066, 'Alic James', '2001-01-15', 'Female', '444 Elm St, City7, State7', '0538100511'),
  (0018, 'Mohammed Ali', '2002-05-25', 'Male', '555 Cedar St, City8, State8', '0534761009'),
  (0014, 'Ahmad Salem', '1970-11-09', 'Male', '666 Pine St, City9, State9', '0540987640');

INSERT INTO Doctors (DoctorID, Name, PhoneNumber, Email, Department)
VALUES
  (4010026, 'Dr. Michael Brown', '0510081201', 'michael.brown@gmail.com', 'Cardiology'),
  (4210089, 'Dr. Sarah Wilson', '0544487644', 'sarah.wilson@gmail.com', 'Internal Medicine'),
  (4044188, 'Dr. David Lee', '0550097755', 'david.lee@gmail.com', 'Cardiology'),
  (4018647, 'Prof. Noor Tareq', '0510476109', 'noor.tarq@gmail.com', 'Cardiology'),
  (4310033, 'Dr. Salem Aldawsari', '0504901119', 'salem.aldawsari@gmail.com', 'Internal Medicine'),
  (4010266, 'Dr. Reem Hussan', '0550923877', 'reem.hussan@gmail.com', 'Pediatrics'),
  (4010987, 'Dr. Emma Thompson', '0509241096', 'emma.thompson@gmail.com', 'Cardiology'),
  (4010092, 'Prof. Ahmed Khan', '0503822160', 'ahmed.khan@gmail.com', 'Cardiology'),
  (4410024, 'Dr. Sarah Ahmed', '0501220577', 'sarah.ahmed@gmail.com', 'Internal Medicine');

INSERT INTO Nurses (NurseID, Name, Department, PhoneNumber, Email)
VALUES
  (3810077, 'Nurse Emily Wilson', 'Cardiology', '0501330579', 'emily.wilson@gmail.com'),
  (3910334, 'Nurse Jennifer Thompson', 'Internal Medicine', '0504441044', 'jennifer.thompson@gmail.com'),
  (3910098, 'Nurse Andrew Davis', 'Pediatrics', '0501005519', 'andrew.davis@gmail.com'),
  (3910226, 'Nurse Jessica Roberts', 'Cardiology', '0538051981', 'jessica.roberts@gmail.com'),
  (3810025, 'Nurse Samantha Adams', 'Internal Medicine', '0532165101', 'samantha.adams@gmail.com'),
  (3810102, 'Nurse Rebecca Harris', 'Pediatrics', '0556678710', 'rebecca.harris@gmail.com'),
  (3810982, 'Nurse Ahmad Yousf', 'Cardiology', '0599887762', 'ahmad.yousf@gmail.com'),
  (3810089, 'Nurse Shahed Ali', 'Internal Medicine', '0599111122', 'shahed.ali@gmail.com'),
  (3910017, 'Nurse Samah Abd Alrahman', 'Pediatrics', '0500111145', 'samah_abdalrahman@gmail.com');

INSERT INTO Pharmacy (MedicineID, Name, QuantityAvailable, Price, Manufacturer)
VALUES
  (10, 'Atenolol (Tenormin)', 50, 9.99, 'PharmaCorp'),
  (11, 'Betaxolol (Kerlone)', 100, 19.99, 'MediPharm'),
  (12, 'Bisoprolol/hydrochlorothiazide (Ziac)', 75, 12.99, 'PharmaCorp'),
  (13, 'Insulin', 100, 8.99, 'PharmaCorp'),
  (14, 'Glipizide', 100, 8.99, 'PharmaCorp'),
  (15, 'Glimepiride', 100, 8.99, 'PharmaCorp'),
  (16, 'Pioglitazone', 100, 8.99, 'PharmaCorp'),
  (17, 'Propranolol (Inderal)', 50, 9.99, 'PharmaCorp'),
  (18, 'Sotalol (Betapace)', 100, 19.99, 'MediPharm');

INSERT INTO Prescription (PrescriptionID, PatientID, DoctorID, MedicineID, Dosage, Duration)
VALUES
  (01, 0012, 4010026, 10, '2 tablets daily', '2023-12-31'),
  (02, 0019, 4044188, 11,  '1 tablet daily', '2023-12-31'),
  (03, 0098, 4210089, 12,  '1 tablet daily', '2023-12-31'),
  (04, 0023, 4018647, 13, '2 tablets daily', '2023-12-31'),
  (05, 0032, 4310033, 14, '2 tablets daily', '2023-12-31'),
  (06, 0014, 4010987, 15, '2 tablets daily', '2023-12-31'), 
  (07, 0018, 4010266, 16, '1 tablet daily', '2023-12-31'),
  (08, 0066, 4010092, 17, '1 tablet daily', '2023-12-31'),
  (09, 0017, 4410024, 18, '1 tablet daily', '2023-12-31');
  
INSERT INTO Registration (RegistrationID, PatientID, NurseID, DateOfVisit, TimeOfVisit)
VALUES
  (100, 0012, 3810077, '2023-11-01', '09:00:00'),
  (101, 0019, 3910334, '2023-11-02', '03:30:00'),
  (102, 0098, 3910098, '2023-11-03', '10:00:00'),
  (103, 0023, 3910226, '2023-11-04', '10:30:00'),
  (104, 0032, 3810025, '2023-11-05', '11:55:00'),
  (105, 0014, 3810102, '2023-11-06', '11:00:00'),
  (106, 0018, 3810982, '2023-11-07', '03:00:00'),
  (107, 0066, 3810089, '2023-11-08', '01:00:00'),
  (108, 0017, 3910017, '2023-11-09', '02:00:00');

