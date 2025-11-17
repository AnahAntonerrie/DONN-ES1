SELECT id,first_name,last_name from employee where id_team is null;

SELECT employee.id, employee.first_name, employee.last_name FROM employee
LEFT JOIN leave ON employee.id = leave.id_employee
WHERE leave.id_employee IS NULL;

SELECT leave.id, leave.start_date, leave.end date, employee.fist_name, employee.last_name, team.last_name FROM employee
INNER JOIN Leave ON employee.id = leave.id_employee INNER JOIN team ON team.id = employee.id_team

SELECT contract_type, COUNT(*) As total_employees FROM employee
GROUP BY contract_type;

SELECT COUNT(*) As total_employee_en_conge FROM employee
INNER JOIN leave ON employee.id = leave.id_employee
WHERE current_date BETWEEN start_date and end_date;

SELECT employee.id, employee.last_name, employee.first_name, team.name FROM employee
INNER JOIN team ON team.id = employee.id_team LEFT JOIN leave ON employee.id = leave.id _employee
WHERE current_date BETWEEN start date and end_date;