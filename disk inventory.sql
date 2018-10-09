USE disk_inventory;

CREATE TABLE Artist_Info (
	ArtistName nchar(30),
	MusicGenre nchar(30),
	Year nchar(30),
);

CREATE TABLE Borrowers_Info (
	BorrowersName nchar(30),
	BorrowersEmail nchar(30),
	BorrowersAddress nchar(30),
	BorrowersCity nchar(30),
	BorrowersZip nchar(30),
);

CREATE TABLE Borrow_Date (
	BorrowDate nchar(30),
	ReturnDate nchar(30),
	BorrowerName nchar(30),
	BorrowedItem nchar(30),
);

INSERT INTO Artist_Info
VALUES ('Twenty-One Pilots', 'Alternative', '2011');

INSERT INTO Artist_Info
VALUES ('Metallica', 'Heavy Metal', '1981');

INSERT INTO Artist_Info
VALUES ('Jason Aldean', 'Country', '2001');

INSERT INTO Borrowers_Info
VALUES ('Mickey Mouse', 'mickeymouse@disney.com', '123 Disneyland Dr.', 'Anaheim, CA', '12345');

INSERT INTO Borrowers_Info
VALUES ('Tony Stark', 'iamironman@stark.email.com', '45 Stark Tower', 'New York City, NY', '22222');

INSERT INTO Borrow_Date
VALUES ('10/01/2018', '10/10/2018', 'Tony Stark', 'Metallica');

INSERT INTO Borrow_Date
VALUES ('09/24/2018', '09/30/2018', 'Mickey Mouse', 'Jason Aldean');