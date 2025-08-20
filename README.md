🏥 Hospital Database Management System (DBMS)
📌 Introduction

Hospitals and healthcare facilities generate and manage a vast amount of data — from patient records and staff details to prescriptions and registrations. Managing this data manually is prone to inefficiencies, errors, and delays, especially in critical care scenarios.

The Hospital Database Management System (DBMS) is designed to streamline these processes by providing a structured and secure way to store, retrieve, and manage healthcare data. This system improves operational workflows, enhances decision-making, and ultimately contributes to better patient care.

🎯 Problem Statement

Traditional methods of managing hospital data face challenges such as:

Inefficiency in retrieving and updating records

Risk of errors and data loss

Difficulty in managing relationships between different types of data

A robust DBMS is essential to ensure accuracy, security, and accessibility of hospital data across departments.

🎯 Objectives

Develop a structured and robust database for patients, doctors, nurses, prescriptions, and pharmaceuticals.

Maintain data integrity and consistency across hospital departments.

Support hospital administration and medical functions with efficient data handling.

Improve patient care by ensuring accurate and timely access to critical information.

📊 Entity-Relationship Diagram (ERD)

The system models relationships between key entities:

Patients, Doctors, Nurses, Prescriptions, and Pharmaceuticals

Patients are linked to Prescriptions and Registrations

Doctors and Nurses are linked to Prescriptions and Registrations respectively

Prescriptions are linked to the Pharmacy for medication details

🔑 Constraints

Primary Keys: Ensure uniqueness (PatientID, DoctorID, NurseID, MedicineID, PrescriptionID, RegistrationID).

Foreign Keys: Establish relationships (e.g., Prescription ↔ Patient/Doctor/Pharmacy, Registration ↔ Patient/Nurse).

Data Types & Lengths: Constraints (e.g., VARCHAR(100)) enforce data consistency.

🗂️ Relational Schema

The schema defines structured tables for:

Patients

Doctors

Nurses

Pharmacy

Prescriptions

Registrations

💻 Coding Section (DDL)

The project includes SQL scripts with:

CREATE TABLE statements for all entities

INSERT INTO statements to populate initial records

Example queries to view tables:

SELECT * FROM Patient;
SELECT * FROM Doctors;
SELECT * FROM Nurses;
SELECT * FROM Pharmacy;
SELECT * FROM Prescription;
SELECT * FROM Registration;

