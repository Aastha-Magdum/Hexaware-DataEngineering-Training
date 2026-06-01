-- 1
SELECT * FROM patients;

-- 2
SELECT * FROM doctors;

-- 3
SELECT * FROM patients
WHERE city = 'Hyderabad';

-- 4
SELECT d.doctor_name, d.specialization, dep.department_name
FROM doctors d
JOIN departments dep ON d.department_id = dep.department_id
WHERE dep.department_name = 'Cardiology';

-- 5
SELECT * FROM appointments
WHERE appointment_date > '2026-01-01';

-- 6
SELECT * FROM appointments
WHERE appointment_status = 'Cancelled';

-- 7
SELECT * FROM bills
WHERE total_amount > 5000;

-- 8
SELECT * FROM payments
WHERE payment_mode = 'UPI';

-- 9
SELECT * FROM patients
WHERE age BETWEEN 30 AND 50;

-- 10
SELECT * FROM doctors
WHERE consultation_fee > 800;

-- 11
SELECT COUNT(*) AS total_patients FROM patients;

-- 12
SELECT COUNT(*) AS total_doctors FROM doctors;

-- 13
SELECT COUNT(*) AS total_appointments FROM appointments;

-- 14
SELECT AVG(consultation_fee) AS average_consultation_fee
FROM doctors;

-- 15
SELECT MAX(treatment_cost) AS highest_treatment_cost
FROM treatments;

-- 16
SELECT SUM(total_amount) AS total_billing_amount
FROM bills;

-- 17
SELECT SUM(paid_amount) AS total_paid_amount
FROM payments
WHERE payment_status IN ('Success','Partial');

-- 18
SELECT city, COUNT(*) AS total_patients
FROM patients
GROUP BY city;

-- 19
SELECT specialization, COUNT(*) AS total_doctors
FROM doctors
GROUP BY specialization;

-- 20
SELECT appointment_status, COUNT(*) AS total_appointments
FROM appointments
GROUP BY appointment_status;

-- 21
SELECT p.patient_name, a.appointment_date, a.appointment_status
FROM patients p
JOIN appointments a ON p.patient_id = a.patient_id;

-- 22
SELECT d.doctor_name, dep.department_name
FROM doctors d
JOIN departments dep ON d.department_id = dep.department_id;

-- 23
SELECT p.patient_name, d.doctor_name, a.appointment_date
FROM patients p
JOIN appointments a ON p.patient_id = a.patient_id
JOIN doctors d ON a.doctor_id = d.doctor_id;

-- 24
SELECT a.appointment_id, t.treatment_name, t.treatment_cost
FROM appointments a
JOIN treatments t ON a.appointment_id = t.appointment_id;

-- 25
SELECT b.bill_id, p.patient_name, b.total_amount
FROM bills b
JOIN patients p ON b.patient_id = p.patient_id;

-- 26
SELECT b.bill_id, pay.payment_mode, pay.paid_amount, pay.payment_status
FROM bills b
JOIN payments pay ON b.bill_id = pay.bill_id;

-- 27 
SELECT 
    p.patient_name,
    d.doctor_name,
    dep.department_name,
    a.appointment_date,
    a.appointment_status,
    t.treatment_name,
    t.treatment_cost,
    b.total_amount AS bill_amount,
    pay.payment_status
FROM appointments a
JOIN patients p ON a.patient_id = p.patient_id
JOIN doctors d ON a.doctor_id = d.doctor_id
JOIN departments dep ON d.department_id = dep.department_id
LEFT JOIN treatments t ON a.appointment_id = t.appointment_id
LEFT JOIN bills b ON a.appointment_id = b.appointment_id
LEFT JOIN payments pay ON b.bill_id = pay.bill_id;

-- 28
SELECT d.doctor_name, COUNT(a.appointment_id) AS total_appointments
FROM doctors d
LEFT JOIN appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_name;

-- 29
SELECT dep.department_name, COUNT(a.appointment_id) AS total_appointments
FROM departments dep
JOIN doctors d ON dep.department_id = d.department_id
LEFT JOIN appointments a ON d.doctor_id = a.doctor_id
GROUP BY dep.department_name;

-- 30
SELECT dep.department_name, SUM(b.total_amount) AS total_revenue
FROM departments dep
JOIN doctors d ON dep.department_id = d.department_id
JOIN appointments a ON d.doctor_id = a.doctor_id
JOIN bills b ON a.appointment_id = b.appointment_id
GROUP BY dep.department_name;

-- 31
SELECT treatment_name, SUM(treatment_cost) AS total_treatment_cost
FROM treatments
GROUP BY treatment_name;

-- 32
SELECT p.city, SUM(b.total_amount) AS total_billing
FROM patients p
JOIN bills b ON p.patient_id = b.patient_id
GROUP BY p.city;

-- 33
SELECT d.doctor_name, COUNT(a.appointment_id) AS total_appointments
FROM doctors d
JOIN appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_name
HAVING COUNT(a.appointment_id) > 2;

-- 34
SELECT dep.department_name, SUM(b.total_amount) AS revenue
FROM departments dep
JOIN doctors d ON dep.department_id = d.department_id
JOIN appointments a ON d.doctor_id = a.doctor_id
JOIN bills b ON a.appointment_id = b.appointment_id
GROUP BY dep.department_name
HAVING SUM(b.total_amount) > 20000;

-- 35
SELECT city, COUNT(*) AS total_patients
FROM patients
GROUP BY city
HAVING COUNT(*) > 2;

-- 36
SELECT * FROM patients
WHERE patient_id IN (
    SELECT patient_id FROM appointments
);

-- 37
SELECT * FROM patients
WHERE patient_id NOT IN (
    SELECT patient_id FROM appointments
);

-- 38
SELECT * FROM doctors
WHERE doctor_id NOT IN (
    SELECT doctor_id FROM appointments
);

-- 39
SELECT * FROM bills
WHERE total_amount > (
    SELECT AVG(total_amount) FROM bills
);

-- 40
SELECT p.patient_name, b.total_amount
FROM patients p
JOIN bills b ON p.patient_id = b.patient_id
WHERE b.total_amount = (
    SELECT MAX(total_amount) FROM bills
);

-- 41
SELECT * FROM doctors
WHERE consultation_fee > (
    SELECT AVG(consultation_fee) FROM doctors
);

-- 42
SELECT DISTINCT p.patient_name
FROM patients p
JOIN appointments a ON p.patient_id = a.patient_id
JOIN doctors d ON a.doctor_id = d.doctor_id
JOIN departments dep ON d.department_id = dep.department_id
WHERE dep.department_name = 'Cardiology';

-- 43
SELECT * FROM bills
WHERE bill_status IN ('Unpaid','Pending');

-- 44
SELECT * FROM appointments
WHERE appointment_id IN (
    SELECT appointment_id FROM treatments
);

-- 45
SELECT p.patient_name, SUM(b.total_amount) AS total_bill
FROM patients p
JOIN bills b ON p.patient_id = b.patient_id
GROUP BY p.patient_name
HAVING SUM(b.total_amount) > (
    SELECT AVG(patient_total)
    FROM (
        SELECT SUM(total_amount) AS patient_total
        FROM bills
        GROUP BY patient_id
    ) AS temp_table
);

-- 46
SELECT a.*
FROM appointments a
LEFT JOIN treatments t ON a.appointment_id = t.appointment_id
WHERE t.treatment_id IS NULL;

-- 47
SELECT b.*
FROM bills b
LEFT JOIN payments p ON b.bill_id = p.bill_id
WHERE p.payment_id IS NULL;

-- 48
SELECT * FROM payments
WHERE paid_amount IS NULL OR paid_amount = 0;

-- 49
SELECT a.appointment_id, a.appointment_status, b.bill_id, b.total_amount
FROM appointments a
JOIN bills b ON a.appointment_id = b.appointment_id
WHERE a.appointment_status = 'Cancelled';

-- 50
SELECT b.bill_id, b.total_amount, p.paid_amount, p.payment_status
FROM bills b
JOIN payments p ON b.bill_id = p.bill_id
WHERE b.bill_status = 'Paid'
AND p.paid_amount < b.total_amount;

-- 51
SELECT d.*
FROM doctors d
LEFT JOIN departments dep ON d.department_id = dep.department_id
WHERE dep.department_id IS NULL;

-- 52
SELECT a.*
FROM appointments a
LEFT JOIN patients p ON a.patient_id = p.patient_id
LEFT JOIN doctors d ON a.doctor_id = d.doctor_id
WHERE p.patient_id IS NULL OR d.doctor_id IS NULL;

-- Final Report Query
SELECT 
p.patient_name,
p.city,
COUNT(a.appointment_id) AS total_appointments,
COALESCE(SUM(b.total_amount),0) AS total_bill_amount,
COALESCE(SUM(pay.paid_amount),0) AS total_paid_amount,
COALESCE(SUM(b.total_amount),0) - COALESCE(SUM(pay.paid_amount),0) AS pending_amount
FROM patients p
LEFT JOIN appointments a ON p.patient_id = a.patient_id
LEFT JOIN bills b ON a.appointment_id = b.appointment_id
LEFT JOIN payments pay ON b.bill_id = pay.bill_id
GROUP BY p.patient_id, p.patient_name, p.city;