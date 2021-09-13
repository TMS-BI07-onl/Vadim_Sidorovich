/*1) ������� ����� � �� ������ ���������, ��� ������ ������� ���������� ��  4 � ������������� �� 5.
( ������� Person.PersonPhone, Person.Person)
*/
SELECT t1.Lastname, t1.Firstname, t2.PhoneNumber
FROM Person.Person t1
	JOIN Person.PersonPhone t2 ON t1.[BusinessEntityID]=t2.[BusinessEntityID]
WHERE PhoneNumber LIKE '4_5%'
ORDER BY PhoneNumber

--3) ������� ����� ������� ������� ��� ������� ����� �� [Production].[Product]

SELECT Color, MAX(StandardCost)
FROM [Production].[Product]
GROUP BY Color

/*2) ������� ������� �������� �� [HumanResources].[Employee] � ���� ���������� ���������:
Adolescence: 17-20
Adults: 21-59
Elderly: 60-75
Senile: 76-90
*/
SELECT BirthDate
FROM [HumanResources].[Employee]
ORDER BY BirthDate DESC

SELECT LoginID, BirthDate AS ADULTS
FROM [HumanResources].[Employee]
WHERE BirthDate BETWEEN '1962-01-01' AND'1991-01-01'

SELECT LoginID, BirthDate AS ELDERLY
FROM [HumanResources].[Employee]
WHERE BirthDate BETWEEN '1946-01-01' AND'1961-01-01'

	
	
