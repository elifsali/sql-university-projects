-- Employee Management Database System
-- SQL Queries
-- Academic Project (MS Access)

-- ==========================================
-- Query 1
-- Employees with salary = 900 BGN
-- Displays employee names and position names
-- ==========================================
SELECT Служители.Ime, Длъжности.dlajnost, Длъжности.osnovna_zaplata
FROM Длъжности RIGHT JOIN Служители ON Длъжности.kod_dlajnost = Служители.kod_dlajnost
WHERE (((Длъжности.osnovna_zaplata)=900));

-- ==========================================
-- Query 2
-- Number of employees per department
-- ==========================================
SELECT Отдели.kod_otdel, Count(Служители.Ime) AS CountOfIme
FROM Отдели RIGHT JOIN Служители ON Отдели.kod_otdel = Служители.kod_otdel
GROUP BY Отдели.kod_otdel;

-- ==========================================
-- Query 3
-- Employees with salary less than or equal
-- to 1000 BGN
-- ==========================================
SELECT Служители.Ime, Служители.egn, Служители.data_postapvane, Служители.kod_dlajnost, Длъжности.dlajnost, Длъжности.osnovna_zaplata, Служители.kod_otdel, Отдели.otdel, Служители.godini_trudov_staj, Служители.grad, Служители.snimka
FROM Отдели RIGHT JOIN (Длъжности RIGHT JOIN Служители ON Длъжности.kod_dlajnost = Служители.kod_dlajnost) ON Отдели.kod_otdel = Служители.kod_otdel
WHERE (((Длъжности.osnovna_zaplata)<=1000));

-- ==========================================
-- Query 4
-- Employees whose first name starts with "И"
SELECT Служители.egn, Служители.Ime
FROM Служители
WHERE (((Служители.Ime) Like "И*"));

-- ==========================================
-- Query 5
-- Company statistics
-- Total employees and average salary
-- ==========================================

SELECT Count(Служители.Ime) AS CountOfIme, Avg(Длъжности.osnovna_zaplata) AS AvgOfosnovna_zaplata
FROM Длъжности RIGHT JOIN Служители ON Длъжности.kod_dlajnost = Служители.kod_dlajnost;

-- ==========================================
-- Query 6
-- Gross salary calculation
-- Gross Salary =
-- Base Salary + Base Salary * Work Experience * 0.01
-- ==========================================
SELECT Служители.Ime, Служители.egn, Служители.data_postapvane, Служители.godini_trudov_staj, Длъжности.dlajnost, Длъжности.osnovna_zaplata, [osnovna_zaplata]+[osnovna_zaplata]*[godini_trudov_staj]*0.01 AS brutna_zaplata
FROM Длъжности RIGHT JOIN Служители ON Длъжности.kod_dlajnost = Служители.kod_dlajnost;
-- ==========================================
жители;

