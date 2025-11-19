use azure_company;
-- Query para listar colaboradores e seus respectivos gerentes
SELECT 
    CONCAT(e.Fname, ' ', e.Lname) AS Employee_Name,
    CONCAT(m.Fname, ' ', m.Lname) AS Manager_Name
FROM employee e
INNER JOIN employee m 
    ON e.Super_ssn = m.Ssn
ORDER BY 
    Employee_Name,
    Manager_Name;
   
   
-- Query para listar gerentes e a quantidade de colaboradores está associado a cada um
    SELECT 
    CONCAT(m.Fname, ' ', m.Lname) AS Manager_Name,
    count(e.Ssn) AS Employee_Quantity
FROM employee e
INNER JOIN employee m 
    ON e.Super_ssn = m.Ssn
GROUP BY 
      Manager_Name
ORDER BY 
    Manager_Name;
