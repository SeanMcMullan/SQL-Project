
--Get the fault id and the name of the staff member assigned to deal with faults of type ‘Printer’.

SELECT * FROM FAULT
SELECT "fault_id", "staff_id" FROM FAULT WHERE "type" LIKE '%Printer%';

