# 🏥 Healthcare Management System (MySQL Project)

I created this **Healthcare Management System** project using **MySQL Workbench** to simulate how hospitals manage patient data, treatment records, and performance metrics. This project was built with the intention of practicing advanced database concepts like **foreign key relations**, **cascading deletes**, and **medical data tracking**.

---

## 🧠 Project Overview

This SQL project involves three core components:

- Tracking **hospital performance** and success rates
- Managing **patients** and their personal info
- Logging **medical records** with doctor name, treatment, and diagnosis

---

## 🛠 Technologies Used

- MySQL Workbench 8.0
- SQL Queries (DDL, DML, DQL)
- InnoDB Engine with Foreign Keys
- Timestamp and ENUM usage

---

## 🗃️ Database Schema

### Tables Created:

- `patients` → Personal and demographic info
- `medicalrecords` → Diagnoses and treatment histories
- `hospitalmetrics` → Hospital-level analytics (success rate, avg time)

---

## 🚀 Features & Highlights

### ✔️ Relational Design
- Linked patients to their medical records using `FOREIGN KEY (PID)`
- Foreign key constraints ensure referential integrity

### ✔️ Realistic Metrics
- Average treatment time
- Hospital success rates
- Patient demographics

---

## 📊 Key Data Examples

-** 10 hospitals **inserted with metrics like:
  - Success rate (%)
  - Treatment time (days)
  - Total patient count

- **10 patients **with:
  - Gender, contact, and address
  - Connected medical records by doctor

---

## EER Snapshot below:-
![image 2](https://github.com/user-attachments/assets/34ddeb21-ecf5-4e61-85d2-3dc6ba10b825)

## 💡 SQL Example

```sql
-- See Most Successful Hospitals
SELECT HosName, SuccessRate
FROM hospitalmetrics
ORDER BY SuccessRate DESC
LIMIT 5;
