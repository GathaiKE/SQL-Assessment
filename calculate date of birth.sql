CREATE TABLE MyTable (
  ID INT PRIMARY KEY,
  Name VARCHAR(50),
  DateOfBirth DATE,
  Age INT
);

INSERT INTO MyTable (ID, Name, DateOfBirth, Age)
VALUES
  (1, 'John Maina', '1980-01-01', 42),
  (2, 'Jane Asake', '1995-03-15', 27),
  (3, 'Robert Singe', '1973-11-30', 48),
  (4, 'Emily Brown', '2000-07-22', 21),
  (5, 'Michael Low', '1989-05-10', 32),
  (6, 'Rachel Green', '1991-02-12', 30),
  (7, 'David BNekham', '1978-09-18', 44),
  (8, 'Amanda Claris', '1985-12-25', 36),
  (9, 'Jason Derulo', '1999-08-08', 22),
  (10, 'Melissa Chow', '1983-04-03', 38);

CREATE FUNCTION CalculateAgeFromDOB (
  @DOB DATE
)
RETURNS INT
AS
BEGIN
  DECLARE @Age INT

  SET @Age = DATEDIFF(YEAR, @DOB, GETDATE())

  IF (MONTH(@DOB) > MONTH(GETDATE()) OR (MONTH(@DOB) = MONTH(GETDATE()) AND DAY(@DOB) > DAY(GETDATE())))
  BEGIN
    SET @Age = @Age - 1
  END

  RETURN @Age
END

SELECT Name, DateOfBirth, dbo.CalculateAgeFromDOB(DateOfBirth) AS Age
FROM MyTable