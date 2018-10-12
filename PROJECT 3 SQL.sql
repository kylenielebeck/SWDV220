CREATE DATABASE AP;

USE disk_inventory;

INSERT INTO Artist 
VALUES ('Metallica', '1', '10');

INSERT INTO Artist 
VALUES ('Iron Maiden', '2', '11');

INSERT INTO Artist 
VALUES ('Motley Crue', '3', '12');

INSERT INTO Artist 
VALUES ('Whitesnake', '4', '13');

INSERT INTO Artist 
VALUES ('Skid Row', '5', '14');

INSERT INTO Artist 
VALUES ('Anthrax', '6', '15');

INSERT INTO Artist 
VALUES ('Megadeth', '7', '16');

INSERT INTO Artist 
VALUES ('Avenged Sevenfold', '8', '17');

INSERT INTO Artist 
VALUES ('Bon Jovi', '9', '18');

INSERT INTO Artist 
VALUES ('Aerosmith', '10', '19');

INSERT INTO Artist 
VALUES ('The Police', '11', '20');

INSERT INTO Artist 
VALUES ('The Gorillaz', '12', '21');

INSERT INTO Artist 
VALUES ('Ed Sheeran', '13', '22');

INSERT INTO Artist 
VALUES ('John Legend', '14', '23');

INSERT INTO Artist 
VALUES ('Disturbed', '15', '24');

INSERT INTO Artist 
VALUES ('Metallica', '16', '25');

INSERT INTO Artist 
VALUES ('Genesis', '17', '26');

INSERT INTO Artist 
VALUES ('Phil Collins', '18', '27');

INSERT INTO Artist 
VALUES ('Jason Aldean', '19', '28');

INSERT INTO Artist 
VALUES ('Ra', '20', '29');


/*Borrower and Disk #1*/
INSERT INTO DiskHasBorrower
VALUES ('Steve', 'Rogers','', '12', '10/10/2018', ' ');


/*Borrower and Disk #2, same disk borrowed twice*/
INSERT INTO DiskHasBorrower
VALUES ('Tony', 'Stark', '', '17', '09/24/2018', '10/02/2018');

INSERT INTO DiskHasBorrower
VALUES ('Tony', 'Stark', '', '17', '10/10/2018', ' ');


/*Borrower and Disk #3*/
INSERT INTO DiskHasBorrower
VALUES ('Bruce', 'Banner', '', '18', '10/10/2018', ' ');

/*Everyone else*/
INSERT INTO DiskHasBorrower
VALUES ('Peter', 'Quill', '', '10', '10/10/2018', '10/10/2018 ');
INSERT INTO DiskHasBorrower
VALUES ('Wanda', 'Maximoff', '', '10', '10/10/2018', ' ');
INSERT INTO DiskHasBorrower
VALUES ('Peter', 'Parker', '', '11', '05/10/2018', '06/10/2018 ');
INSERT INTO DiskHasBorrower
VALUES ('Steve', 'Rogers', '', '19', '01/10/2018', ' ');
INSERT INTO DiskHasBorrower
VALUES ('Jason', 'Voorhees', '', '15', '10/10/2018', ' ');
INSERT INTO DiskHasBorrower
VALUES ('Steve', 'Rogers', '', '12', '10/10/2018', ' ');
INSERT INTO DiskHasBorrower
VALUES ('Steve', 'Rogers', '', '12', '10/10/2018', ' ');
INSERT INTO DiskHasBorrower
VALUES ('Steve', 'Rogers', '', '12', '10/10/2018', ' ');
INSERT INTO DiskHasBorrower
VALUES ('Steve', 'Rogers', '', '12', '10/10/2018', ' ');
INSERT INTO DiskHasBorrower
VALUES ('Steve', 'Rogers', '', '12', '10/10/2018', ' ');
INSERT INTO DiskHasBorrower
VALUES ('Jim', 'Halpert', '', '20', '02/10/2018', '02/23/2018 ');
INSERT INTO DiskHasBorrower
VALUES ('Jim', 'Halpert', '', '20', '10/10/2018', ' ');
INSERT INTO DiskHasBorrower
VALUES ('Stephen', 'Strange', '', '12', '08/08/2017', ' ');
INSERT INTO DiskHasBorrower
VALUES ('Steve', 'Rogers', '', '1', '10/10/2018', '10/11/2018 ');
INSERT INTO DiskHasBorrower
VALUES ('Ben', 'Morrison', '', '1', '08/10/2018', ' ');
INSERT INTO DiskHasBorrower
VALUES ('Mindle', 'Hastings', '', '5', '10/10/2018', ' ');

/*Select only data disks that haven't been returned yet*/
SELECT *
FROM DiskHasBorrower
WHERE ReturnedDate = ' ';


INSERT INTO DiskHasArtist
VALUES ('10', 'Metallica', '1');
INSERT INTO DiskHasArtist
VALUES ('11', 'Iron Maiden', '2');
INSERT INTO DiskHasArtist
VALUES ('12', 'Motley Crue', '3');
INSERT INTO DiskHasArtist
VALUES ('13', 'Whitesnake', '4');
INSERT INTO DiskHasArtist
VALUES ('14', 'Skid Row', '5');
INSERT INTO DiskHasArtist
VALUES ('15', 'Anthrax', '6');
INSERT INTO DiskHasArtist
VALUES ('16', 'Megadeth', '7');
INSERT INTO DiskHasArtist
VALUES ('17', 'Avenged Sevenfold', '8');
INSERT INTO DiskHasArtist
VALUES ('18', 'Bon Jovi', '9');
INSERT INTO DiskHasArtist
VALUES ('19', 'Aerosmith', '10');
INSERT INTO DiskHasArtist
VALUES ('20', 'The Police', '11');
INSERT INTO DiskHasArtist
VALUES ('21', 'The Gorillaz', '12');
INSERT INTO DiskHasArtist
VALUES ('22', 'Ed Sheeran', '13');
INSERT INTO DiskHasArtist
VALUES ('23', 'John Legend', '14');
INSERT INTO DiskHasArtist
VALUES ('24', 'Disturbed', '15');
INSERT INTO DiskHasArtist
VALUES ('25', 'Metallica', '16');
INSERT INTO DiskHasArtist
VALUES ('26', 'Genesis', '17');
INSERT INTO DiskHasArtist
VALUES ('26', 'Phil Collins', '17');
INSERT INTO DiskHasArtist
VALUES ('28', 'Jason Aldean', '19');
INSERT INTO DiskHasArtist
VALUES ('29', 'Ra', '20');

/*Insert 20 rows of data*/
INSERT INTO Disk
VALUES ('10', 'Metal');
INSERT INTO Disk
VALUES ('11', 'Metal');
INSERT INTO Disk
VALUES ('12', 'Metal');
INSERT INTO Disk
VALUES ('13', 'Metal');
INSERT INTO Disk
VALUES ('14', 'Metal');
INSERT INTO Disk
VALUES ('15', 'Metal');
INSERT INTO Disk
VALUES ('16', 'Metal');
INSERT INTO Disk
VALUES ('17', 'Metal');
INSERT INTO Disk
VALUES ('18', 'Rock');
INSERT INTO Disk
VALUES ('29', 'Metal');
INSERT INTO Disk
VALUES ('19', 'Rock');
INSERT INTO Disk
VALUES ('20', 'Rock');
INSERT INTO Disk
VALUES ('21', 'Rock');
INSERT INTO Disk
VALUES ('28', 'Country');
INSERT INTO Disk
VALUES ('22', 'Pop');
INSERT INTO Disk
VALUES ('23', 'Pop');
INSERT INTO Disk
VALUES ('24', 'Metal');
INSERT INTO Disk
VALUES ('25', 'Metal');
INSERT INTO Disk
VALUES ('26', 'Metal');
INSERT INTO Disk
VALUES ('27', 'Metal');

/*Update 1 row using a where clause*/
UPDATE Disk
SET DiskNo = 28, DiskGenre = 'Alternative'
WHERE DiskNo = 27;

/*Insert 20 records into Borrower Table*/
INSERT INTO Borrower
VALUES ('Steve', 'Rogers', '100');

INSERT INTO Borrower
VALUES ('Tony', 'Stark', '101');

INSERT INTO Borrower
VALUES ('Bruce', 'Banner', '102');

INSERT INTO Borrower
VALUES ('Wanda', 'Maximoff', '103');

INSERT INTO Borrower
VALUES ('Stephen', 'Strange', '104');

INSERT INTO Borrower
VALUES ('Peter', 'Parker', '105');

INSERT INTO Borrower
VALUES ('Bruce', 'Wayne', '106');

INSERT INTO Borrower
VALUES ('Lex', 'Luthor', '107');

INSERT INTO Borrower
VALUES ('Harley', 'Quinn', '108');

INSERT INTO Borrower
VALUES ('Mindle', 'Hastings', '109');

INSERT INTO Borrower
VALUES ('Ben', 'Morrison', '110');

INSERT INTO Borrower
VALUES ('Kyle', 'Nielebeck', '111');

INSERT INTO Borrower
VALUES ('Dwight', 'Schrute', '112');

INSERT INTO Borrower
VALUES ('Jim', 'Halpert', '113');

INSERT INTO Borrower
VALUES ('Pam', 'Beesly', '114');

INSERT INTO Borrower
VALUES ('Michael', 'Scott', '115');

INSERT INTO Borrower
VALUES ('Angela', 'Martin', '116');

INSERT INTO Borrower
VALUES ('Phyllis', 'Vance', '117');

INSERT INTO Borrower
VALUES ('Creed', 'Bratton', '118');

INSERT INTO Borrower
VALUES ('Peter', 'Quill', '119');

/* Delete Peter Quill*/
DELETE FROM Borrower
WHERE BorrowerID = 119;
