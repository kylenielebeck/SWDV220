/*IF ( OBJECT_ID('sp_Artist') IS NOT NULL )
	DROP PROCEDURE sp_Artist;
GO

--Inserts 'Foo Fighters' into Artist table
CREATE PROCEDURE sp_Artist 
	
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO [Artist] ([ArtistID], [ArtistName], [DiskNo], [Type], [ArtistFName], [ArtistLName])
		VALUES (21, 'Foo Fighters', 30, 'Group', 'Foo Fighters', NULL)

END
GO
--Updates/changes foo fighters to scotty mccreary in artist table
BEGIN
	SET NOCOUNT ON;
	UPDATE Artist
	SET ArtistFName = 'Scotty', ArtistLName = 'McCreary', ArtistName = 'Scotty McCreary', Type = 'Solo'
	WHERE ArtistID = 21;
END
GO
--deletes scotty mccreary from artist table
BEGIN
	SET NOCOUNT ON;
	DELETE FROM Artist
	WHERE ArtistID = 21;
END
GO

EXEC sp_Artist*/

/*IF ( OBJECT_ID('sp_Borrower') IS NOT NULL )
	DROP PROCEDURE sp_Borrower;
GO

--Inserts 'Mickey Mouse' into Borrower table
CREATE PROCEDURE sp_Borrower 
	
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO [Borrower] ([BorrowerFN], [BorrowerLN], [BorrowerID])
		VALUES ('Mickey','Mouse', 100)

END
GO
--Updates/changes mickey mouse in borrower table
BEGIN
	SET NOCOUNT ON;
	UPDATE Borrower
	SET BorrowerFN = 'Derek', BorrowerLN = 'Carr', BorrowerID = 300
	WHERE BorrowerID = 100
END
GO
--deletes mickey mouse from borrower table
BEGIN
	SET NOCOUNT ON;
	DELETE FROM Borrower
	WHERE BorrowerID = 300;
END
GO

EXEC sp_Borrower*/

IF ( OBJECT_ID('sp_Disk') IS NOT NULL )
	DROP PROCEDURE sp_Disk;
GO

--Inserts 'Sound of Silence' into disk table
CREATE PROCEDURE sp_Disk 
	
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO [Disk] ([DiskNo], [DiskGenre], [DiskName], [ReleaseDate])
		VALUES (255, 'Indie', 'The Sound of Silence', 1978)

END
GO
--Updates/changes sound of silence in disk table
BEGIN
	SET NOCOUNT ON;
	UPDATE Disk
	SET DiskNo = 999, DiskGenre = 'Alternative', DiskName = 'Sound of Silence: Simon and Garfunkle', ReleaseDate = 1988
	WHERE DiskNo = 255;
END
GO
--deletes sound of silence from disk table
BEGIN
	SET NOCOUNT ON;
	DELETE FROM Disk
	WHERE DiskNo = 999;
END
GO

EXEC sp_Disk

