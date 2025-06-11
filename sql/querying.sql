--Retrieving vehicle details with model and powertrain information
SELECT
  v.vehicle_number,
  vm.model_name,
  pt.powertrain_type,
  v.manufactured_year,
  v.mileage
FROM vehicle v
JOIN vehicle_model vm ON v.model_id = vm.model_id
JOIN powertrain pt ON vm.powertrain_id = pt.powertrain_id;


--Useful views for admin dashboard:
CREATE VIEW active_assignments AS 
SELECT a.assignment_id, v.vehicle_number, s.surname, asn.assignment_status_name
FROM assignment a 
JOIN staff s ON a.staff_id = s.staff_id 
JOIN vehicle v ON a.vehicle_id = v.vehicle_id 
JOIN assignment_status asn ON a.assignment_status_id = asn.assignment_status_id
WHERE asn.assignment_status_name IN ('Pending', 'In Progress');
