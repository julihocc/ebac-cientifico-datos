SELECT COUNT(*) 
FROM HumanResources.Employee

SELECT COUNT(*) 
FROM HumanResources.Employee
WHERE Gender = 'M'

SELECT LoginID, SickLeaveHours 
FROM HumanResources.Employee
ORDER BY SickLeaveHours DESC

SELECT COUNT(BirthDate) 
FROM HumanResources.Employee
WHERE BirthDate BETWEEN '1980-01-01' AND '2000-12-31'