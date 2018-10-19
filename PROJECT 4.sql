USE disk_inventory;

/*creates view*/
CREATE VIEW View_Individual_Artist AS
SELECT ArtistID, ArtistName
FROM Artist;

/*Select only individual artist, in my case most of mine are bands*/
SELECT * FROM View_Individual_Artist
WHERE ArtistName = 'Bon Jovi', 'Phil Collins', 'Ed Sheeran', 'John Legend';

/* Select everyone else */
SELECT * FROM View_Individual_Artist
WHERE ArtistName <> 'Bon Jovi', 'Phil Collins', 'Ed Sheeran', 'John Legend';

/*Adds DiskName to Disk table*/
ALTER TABLE Disk
ADD DiskName varchar(255);

/*Selects the artist name and disk name (most of mine don't have a disk name*/
SELECT ArtistName, DiskName
FROM Artist
FULL OUTER JOIN Disk ON Artist.ArtistName = Disk.DiskName;

/*Who borrowed what disk, by last name*/
SELECT BorrowerFN, BorrowerLN, DiskNo
FROM DiskHasBorrower
ORDER BY BorrowerLN;

/*show how many times a disk has been borrowed*/
SELECT COUNT(*) FROM DiskHasBorrower WHERE BorrowedDate <> NULL;

/*Show who borrowed what disk and when*/
SELECT DiskNo, BorrowedDate, ReturnedDate, BorrowerLN
FROM DiskHasBorrower
ORDER BY DiskNo;