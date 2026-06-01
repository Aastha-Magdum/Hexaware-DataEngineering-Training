# Hospital Appointment and Billing Analytics Database

## Database Design

In this project, I created a hospital database using MySQL. The purpose of this database is to store information related to patients, doctors, departments, appointments, treatments, bills, and payments.

### Tables Used

The database contains seven tables:

- Patients
- Doctors
- Departments
- Appointments
- Treatments
- Bills
- Payments

Each table stores a different type of information:

- **Patients** table stores patient details.
- **Doctors** table stores doctor information.
- **Departments** table stores department names.
- **Appointments** table keeps records of patient appointments.
- **Treatments** table stores treatment details and costs.
- **Bills** table stores billing information.
- **Payments** table stores payment details.

Creating separate tables helped keep the data organized, reduced duplication, and improved report generation.

## Table Relationships

The following relationships were established between the tables:

- **Patients** and **Appointments** are connected through `patient_id`.
- **Doctors** and **Appointments** are connected through `doctor_id`.
- **Departments** and **Doctors** are connected through `department_id`.
- **Appointments** and **Treatments** are connected through `appointment_id`.
- **Bills** are linked with **Appointments** and **Patients**.
- **Payments** are connected with **Bills** through `bill_id`.

These relationships helped perform join operations and generate meaningful reports from multiple tables.

## Key Insights from Reports

After executing various SQL queries, the following observations were made:

### Appointment Analysis

- Identified the number of appointments handled by each doctor.
- Analyzed department-wise patient visits.
- Determined departments with higher appointment volumes.

### Billing Analysis

- Calculated total hospital revenue.
- Generated department-wise revenue reports.
- Identified departments contributing the highest earnings.

### Treatment Analysis

- Found the most frequently performed treatments.
- Compared treatment costs across different categories.
- Supported resource planning and hospital management.

### Payment Analysis

- Identified paid, unpaid, and partially paid bills.
- Tracked pending payments.
- Helped improve billing and collection processes.

### Patient Analysis

- Analyzed patient distribution across cities.
- Identified regions contributing the highest number of patients.

### Data Quality Checks

The following validation queries were performed:

- Appointments without treatments.
- Bills without payments.
- Missing payment amounts.
- Incomplete records affecting reporting accuracy.

These checks helped maintain data consistency and reliability.

## Conclusion

This project helped me understand database design, table relationships, SQL queries, joins, aggregate functions, subqueries, and report generation using real-world hospital data. It demonstrates how SQL can be used to manage healthcare information efficiently and generate valuable business insights.
