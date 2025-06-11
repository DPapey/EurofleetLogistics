INSERT INTO region (region_code, region_name) VALUES
('TYW', 'Tyne and Wear'),
('CDM', 'County Durham'),
('NBL', 'Northumberland'),
('TSD', 'Teesside'),
('YKS', 'Yorkshire'),
('EMD', 'East Midlands'),
('WMD', 'West Midlands'),
('NWT', 'North West'),
('SCT', 'Scotland'),
('LND', 'London'),
('DEU', 'Germany'),
('FRA', 'France'),
('NLD', 'Netherlands');

INSERT INTO address_type (address_type_name) VALUES
('Depot'),
('Home'),
('Client Site'),
('Warehouse'),
('Supplier'),
('Garage'),
('Dealership');

INSERT INTO powertrain (powertrain_type, powertrain_description) VALUES
('Diesel', 'Standard diesel engine'),
('Electric', 'Fully electric truck'),
('Hybrid', 'Combination of diesel and electric');

INSERT INTO vehicle_type (vehicle_type_name) VALUES
('HGV'),
('LGV'),
('Articulated Lorry'),
('Box Truck'),
('Flatbed Truck');

INSERT INTO postcode (postcode, town, region_code) VALUES
('NE1 4LP', 'Newcastle upon Tyne', 'TYW'),
('TS1 3BX', 'Middlesbrough', 'TSD'),
('DL1 5QP', 'Darlington', 'CDM'),
('LS1 4AB', 'Leeds', 'YKS'),
('YO1 6JF', 'York', 'YKS'),
('NG1 1AA', 'Nottingham', 'EMD'),
('B1 1AA', 'Birmingham', 'WMD'),
('EH1 3QR', 'Edinburgh', 'SCT'),
('10115', 'Berlin', 'DEU'),
('75001', 'Paris', 'FRA'),
('1101 AB', 'Amsterdam', 'NLD');


INSERT INTO contact_info (email_address, phone_number) VALUES
('depot1@eurofleet.co.uk', '01912345678'),
('garage1@eurofleet.co.uk', '01914567890'),
('leedsclient@shipco.com', '01134567891'),
('newcastle@dealer.com', '01917654321'),
('admin@eurofleet.co.uk', '01911234567'),
('driver.john@eurofleet.co.uk', '07700111222'),
('driver.jane@eurofleet.co.uk', '07700222333'),
('driver.steve@eurofleet.co.uk', '07700333444'),
('supplier1@logico.com', '02071234567'),
('supplier2@haulage.eu', '004930123456'),
('driver.lucy@eurofleet.co.uk', '07700444555'),
('supplier3@freight.fr', '003314223344');

INSERT INTO address (street, postcode_id, address_type_id) VALUES
('Fleet Depot Road', 1, 1),
('12 High Street', 2, 2),
('1 Client Way', 4, 3),
('100 Industrial Park', 5, 4),
('Supplier Lane', 6, 5),
('Garage Drive', 3, 6),
('Dealer Row', 1, 7),
('18 Castle Road', 7, 2),
('22 Transit Boulevard', 9, 4),
('48 Rue Centrale', 10, 4),
('Europark Zuid 1', 11, 4),
('6 Riverside Way', 5, 2),
('89 Quayside', 1, 2);

INSERT INTO garage (garage_name, contact_id, address_id) VALUES
('Central Garage', 2, 6);

INSERT INTO dealership (dealership_name, contact_id, address_id) VALUES
('Newcastle Trucks Ltd', 4, 7);

INSERT INTO vehicle_model (model_name, powertrain_id, vehicle_type_id) VALUES
('Scania R450', 1, 3),
('Volvo FH Electric', 2, 1),
('DAF XF Hybrid', 3, 3),
('Mercedes Actros', 1, 3),
('Iveco S-Way', 1, 1);

INSERT INTO vehicle (vehicle_number, model_id, manufactured_year, mileage) VALUES
('EF-TRK-001', 1, 2019, 180000),
('EF-TRK-002', 2, 2022, 50000),
('EF-TRK-003', 3, 2020, 120000),
('EF-TRK-004', 4, 2021, 90000),
('EF-TRK-005', 5, 2023, 25000);

INSERT INTO vehicle_registration (vehicle_id, number_plate, registration_period) VALUES
(100, 'NK19 ABC', '[2019-03-15,2025-03-14)'::daterange),
(101, 'NE22 EVC', '[2022-07-01,2026-07-01)'::daterange),
(102, 'DL20 HYB', '[2020-09-10,2024-09-09)'::daterange),
(103, 'LS21 TRK', '[2021-05-20,2025-05-19)'::daterange),
(104, 'EF23 NEW', '[2023-01-10,2027-01-09)'::daterange);
INSERT INTO clearance_level (clearance_type, clearance_description) VALUES
('Standard', 'Standard access for staff'),
('Secure', 'Access to sensitive shipment data'),
('Admin', 'Full administrative access');

INSERT INTO staff_role (role_name, clearance_id) VALUES
('Driver', 1),
('Mechanic', 1),
('Dispatcher', 2),
('Administrator', 3);

INSERT INTO staff (surname, forename, staff_role_id, hire_date, contact_id, address_id) VALUES
('Smith', 'John', 1, '2020-01-15', 6, 2),
('Doe', 'Jane', 1, '2021-04-10', 7, 8),
('Brown', 'Steve', 1, '2019-11-03', 8, 12),
('Wilson', 'Lucy', 1, '2022-06-20', 11, 13),
('Taylor', 'Alice', 3, '2018-03-12', 5, 1),
('Johnson', 'Emily', 4, '2017-05-05', 5, 1);

--App user will require creation app-level (for bcrypt hashed passwords)

INSERT INTO certification_type (cert_name) VALUES
('HGV Licence'),
('ADR Certificate'),
('CPC Qualification');

INSERT INTO staff_certification (staff_id, cert_type_id, expiry_date) VALUES
(100, 1, '2025-12-31'),
(100, 3, '2026-05-30'),
(101, 1, '2026-11-15'),
(102, 1, '2024-08-01'),
(103, 1, '2027-03-20'),
(104, 2, '2026-10-10');

INSERT INTO supplier (supplier_name, contact_id, address_id) VALUES
('LogiCo Freight', 9, 5),
('EuroHaulage GmbH', 10, 9),
('Transport Express France', 12, 10);

INSERT INTO supplier_contract (supplier_id, contract_start_date, contract_end_date, contract_terms, contract_value, contract_renewal_date) VALUES
(1, '2023-01-01', '2025-12-31', 'North England distribution contract', 150000.00, '2025-11-30'),
(2, '2024-01-15', '2026-01-14', 'Berlin outbound transport', 200000.00, '2025-12-01'),
(3, '2022-06-01', '2024-06-01', 'France imports and returns', 100000.00, '2024-05-01');

INSERT INTO assignment_status (assignment_status_name, status_description) VALUES
('Pending', 'Awaiting dispatch'),
('In Progress', 'Shipment in transit'),
('Completed', 'Delivered and confirmed'),
('Cancelled', 'Assignment voided');

INSERT INTO assignment (vehicle_id, staff_id, contract_id, assignment_start_date, assignment_deadline, assignment_status_id) VALUES
(102, 100, 1, '2024-06-01', '2024-06-03', 2),
(101, 101, 2, '2024-06-05', '2024-06-08', 1),
(100, 102, 1, '2024-05-20', '2024-05-22', 3),
(103, 103, 3, '2024-06-10', '2024-06-15', 1),
(104, 104, 2, '2024-06-12', '2024-06-18', 1);

INSERT INTO shipment (assignment_id, origin_address_id, dest_address_id, shipment_date, delivery_date) VALUES
(1, 1, 4, '2024-06-01', '2024-06-03'),
(2, 1, 9, '2024-06-05', NULL),
(3, 1, 5, '2024-05-20', '2024-05-22'),
(4, 1, 10, '2024-06-10', NULL),
(5, 1, 11, '2024-06-12', NULL);

