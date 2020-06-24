use master
go
create database LibraryManagement
go
USE LibraryManagement
go

CREATE TABLE Books(
	BookID INT PRIMARY KEY  NOT NULL IDENTITY (1,1),
	Title nVARCHAR (50) NOT NULL,
	PublisherName nVARCHAR(50) NOT NULL
);


INSERT INTO Books
	(Title, PublisherName)
	VALUES
	('The Lost Tribe', 'Picador'),
	('2001: A Space Odyssey', 'New American Library'),
	('Slaughterhouse Five, or The Children''s Crusade', 'Delta'),
	('Breakfast of Champions', 'Delacorte Press'),
	('Animal Farm', 'Secker & Warburg'),
	('1984', 'Secker & Warburg'),
	('A Brave New World', 'Chatto & Windus'),
	('Of Mice and Men', 'Covici Friede'),
	('Lord of the Flies', 'Faber and Faber'),
	('On the Road', 'Viking Press'),
	('Heart of Darkness', 'Blackwood''s magazine'),
	('One Hundred Years of Solitude', 'Editorial Sudamericana'),
	('Moby Dick', 'Harper & Brothers'),
	('The Iliad', 'unknown'),
	('The Odyssey', 'unknown'),
	('Burr', 'Random House'),
	('Alice''s Adventures in Wonderland', 'Mcmillan'),
	('To Kill a Mockingbird', 'J.B. Lippincott & Co.'),
	('A Tale of Two Cities', 'Chapman & Hall'),
	('The Lord of the Rings', 'Allen & Unwin'),
	('The Picture of Dorian Gray', 'Ward, Lock and Company')
;

UPDATE Books
SET PublisherName = 'Macmillan'
WHERE	PublisherName = 'Mcmillan'
;

CREATE TABLE Book_Authors(
	AuthorName nVARCHAR(50) NOT NULL,
	BookID INT NOT NULL
	FOREIGN KEY REFERENCES Books(BookID)
);

INSERT INTO Book_Authors
	(BookID, AuthorName)
	VALUES
	(1, 'Mark Lee'),
	(2, 'Arthur C. Clarke'),
	(3, 'Kurt Vonnegut Jr.'),
	(4, 'Kurt Vonnegut Jr.'),
	(5, 'George Orwell'),
	(6, 'Geroge Orwell'),
	(7, 'Aldous Huxley'),
	(8, 'John Steinbeck'),
	(9, 'William Golding'),
	(10, 'Jack Kerouac'),
	(11, 'Joseph Conrad'),
	(12, 'Gabriel Garcia Marquez'),
	(13, 'Herman Melville'),
	(14, 'Homer'),
	(15, 'Homer'),
	(16, 'Gore Vidal'),
	(17, 'Lewis Carol'),
	(18, 'Harper Lee'),
	(19, 'Charles Dickens'),
	(20, 'J.R.R. Tolkien'),
	(21, 'Oscar Wilde')
;


CREATE TABLE Publisher(
	PublisherName nVARCHAR(50) PRIMARY KEY NOT NULL,
	Address nVARCHAR(50) NOT NULL,
	Phone nVARCHAR(50) NOT NULL
);

INSERT INTO Publisher
	(PublisherName, Address, Phone)
	VALUES
	('Picador', '120 Broadway New York, NY 10271', '646-307-5421'),
	('New American Library', '101 Main St. New York NY 10271', '212-404-3355'),
	('Delta', '55 N. Clinton Blvd Chicago, Illinois', ' 800-323-8270'),
	('Delacorte Press', '320 Front Street West, Suite 1400, Toronto, ON', '1-888-523-9292'),
	('Secker & Warburg', '1444 Oxford Ln. London,', '011-44-20-4567-6543'),
	('Secker & Warburg', '1444 Oxford Ln. London,', '011-44-20-4567-6543'),
	('Chatto & Windus', '80 Strand London', '44 (0) 12 0625 6000'),
	('Covici Friede', '101 Main St. New York NY 10271', '212-404-3355'),
	('Faber and Faber', 'Bloomsbury House74-77 Great Russell Street London', '44 (0)20 7927 3800'),
	('Viking Press', '101 Main St. New York NY 10271', '212-404-3355'),
	('Blackwood''s magazine', '334 Scrumbold St. Edinburgh,', '44-131-123-5432'),
	('Editorial Sudamericana', '54 Calle del Sol, Buenas Aires,', '54-33-4567-8765'),
	('Harper & Brothers', '345 N.E. Road Rd New York, NY', '212-555-1122'),
	('unknown', 'N/A', 'N/A'),
	('unknown', 'N/A', 'N/A'),
	('Random House', '101 Main St. New York NY 10271', '212-404-3355'),
	('Macmillan', '120 Broadway New York, NY 10271', '646-307-5421'),
	('J.B. Lippincott & Co.', '227 S. 6th St. Philadelphia, PA', '267-555-987-6543'),
	('Chapman & Hall', '193 Piccadilly London,', '44 (0)20 5928 6301'),
	('Allen & Unwin', '26-27 Boswell Street London', '44 (0) 20 7269 1610'),
	('Ward, Lock and Company', ' 158 Fleet St. London', '44 (0) 12 0625 6000')
;

--DROP TABLE Library_Branch

CREATE TABLE Library_Branch (
	BranchID INT PRIMARY KEY NOT NULL,
	BranchName nVARCHAR(50) NOT NULL,
	Address nVARCHAR(50) NOT NULL
);

INSERT INTO Library_Branch
	(BranchID, BranchName, Address)
	VALUES
	(1, 'Multnomah County Central Library', '801 SW 10th Ave, Portland, OR 97205'),
	(2, 'Multnomah County Library - Woodstock', '6008 SE 49th Ave, Portland, OR 97206'),
	(3, 'Multnomah County Library - Hollywood', '4040 NE Tillamook St, Portland, OR 97212'),
	(4, 'Portland Library and Learning Commons', '70 NW Couch St #172, Portland, OR 97209'),
	(5, 'Walter Neighborhood Library', '7660 Clarewood Dr, Houston, TX 77036')
;

CREATE TABLE Book_Copies(
	BookID INT NOT NULL,
	BranchID INT NOT NULL,
	Number_Of_Copies INT NOT NULL
);

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Copies)
	VALUES
	(1, 1, 5),
	(2, 1, 7),
	(3, 1, 8),
	(4, 1, 6),
	(5, 1, 9),
	(6, 1, 11),
	(7, 1, 9),
	(8, 1, 8),
	(9, 1, 7),
	(10, 1, 8),
	(11, 1, 7),
	(12, 1, 8),
	(13, 1, 6),
	(14, 1, 6),
	(15, 1, 4),
	(16, 1, 7),
	(17, 1, 5),
	(18, 1, 7),
	(19, 1, 8),
	(20, 1, 6),
	(21, 1, 5),

	(1, 1, 5),
	(2, 1, 7),
	(3, 1, 8),
	(4, 1, 6),
	(5, 1, 9),
	(6, 1, 11),
	(7, 1, 9),
	(8, 1, 8),
	(9, 1, 7),
	(10, 1, 8),
	(11, 1, 7),
	(12, 1, 8),
	(13, 1, 6),
	(14, 1, 6),
	(15, 1, 4),
	(16, 1, 7),
	(17, 1, 5),
	(18, 1, 7),
	(19, 1, 8),
	(20, 1, 6),
	(21, 1, 5),
;

CREATE TABLE Borrower(
	CardNo INT PRIMARY KEY NOT NULL,
	Name nVARCHAR(50) NOT NULL,
	Phone nVARCHAR(50) NOT NULL
);

select * from Book_Loans
select * from Books
select * from Book_Authors
select * from Library_Branch
select * from Book_Copies
select * from Borrower
select * from Publisher

CREATE TABLE Book_Loans(
	BookID INT NOT NULL,
	BranchID INT NOT NULL,
	CardNo INT NOT NULL,
	DateOut DATE NOT NULL,
	DateDue DATE NOT NULL
);

INSERT INTO Book_Loans
	(BookId, BranchID, CardNo, DateOut, DateDue)
	VALUES
	(1, 1, 221133, '1/22/20', '2/12/20'),
	(3, 1, 223311, '2/12/20', '3/1/20'),
	(4, 1, 223311, '2/12/20', '3/1/20'),
	(2, 1, 445533, '2/2/20', '2/28/20'),
	(7, 1, 445533, '2/2/20', '2/28/20'),
	(20, 1, 445533, '2/2/20', '2/28/20'),
	(6, 3, 556677, '2/16/20', '3/4/20'),
	(12, 3, 556677, '2/16/20', '3/4/20'),
	(19, 3, 556677, '2/16/20', '3/4/20'),
	(16, 4, 667788, '2/20/20', '3/14/20'),
	(11, 4, 667788, '2/20/20', '3/14/20'),
	(8, 5, 778899, '2/21/20', '3/15/20'),
	(13, 5, 778899, '2/21/20', '3/15/20'),
	(17, 5, 778899, '2/21/20', '3/15/20'),
	(21, 5, 778899, '2/21/20', '3/15/20')
;

SELECT Name 
FROM Borrower
WHERE Name = '%A';

UPDATE Library_Branch
SET BranchName = 'Sharpstown Neighborhood Library'
WHERE BranchName = 'Walter Neighborhood Library'
;

DROP PROC uspCountCopies;

CREATE PROCEDURE uspCountCopies (
	@BranchID INT,
	@Number_Of_Copies INT OUTPUT
	)AS
	BEGIN
		SELECT BookID, BranchID
		FROM Book_Copies
		WHERE BranchID = @BranchID;

		SELECT @Number_Of_Copies = SUM(Number_Of_Copies);
	END
;

DECLARE @count INT;

EXEC uspCountCopies 
	@BranchID = 1,
	@Number_Of_Copies = @count OUTPUT;


CREATE PROCEDURE uspCountCopies(
SELECT SUM(Number_Of_Copies)
FROM Book_Copies
WHERE BookID =1;


CREATE PROCEDURE uspNoBooks @NoBooks nVARCHAR(50) = NULL
AS 
SELECT *
FROM Book_Loans
WHERE CardNo != Book_Loans.CardNo
GO
;
EXEC uspNoBooks