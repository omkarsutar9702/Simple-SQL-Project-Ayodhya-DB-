-- 1) Retrieve information about the Ram Mandir?
SELECT * FROM Temple

-- 2) List all construction phases for the Ram Mandir?
SELECT * FROM ConstructionPhase
WHERE TempleID = "1"

-- 3) Find the total amount of donations received for the Ram Mandir?
SELECT sum(Amount) AS Total_donation FROM Donations
WHERE TempleID = "1"

-- 4) Get details about the architecture of the Ram Mandir?
SELECT * FROM Architecture
WHERE TempleID = "1"

-- 5) Retrieve events associated with the Ram Mandir?
SELECT * FROM Events e
LEFT JOIN TempleEvents te 
ON e.EventID = te.EventID
WHERE TempleID = "1"

-- 6) Find donors who contributed more than 50000 towards the Ram Mandir?

SELECT DonorName FROM Donations
WHERE Amount > 5000

--7) Retrieve details about a specific deity (e.g., Rama) ?
SELECT * FROM Deity
WHERE Name LIKE "%rama%"

-- 8)Find the start and end dates of the construction phases for the Ram Mandir?
SELECT StartDate , CompletionDate 
FROM ConstructionPhase 
WHERE TempleID = "1"

-- 9)Count the number of events associated with each temple?
SELECT COUNT(TE.TempleID) AS COUNT FROM Events E
LEFT JOIN TempleEvents TE
ON TE.EventID = E.EventID
WHERE TE.TempleID = "1"
GROUP BY TE.TempleID

-- 10)Find the donors who made contributions on or after 2021-06-01'?

SELECT DonorName FROM Donations
WHERE DonationDate > "2021-06-01"