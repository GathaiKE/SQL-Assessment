select * from employee

CREATE PROCEDURE InsertOrUpdateEmployee (
  @ID INT,
  @Name VARCHAR(50),
  @Department VARCHAR(50)
)
AS
BEGIN
  -- Update the employee record if it exists, otherwise insert a new record
  UPDATE Employee
  SET Name = @Name, Department = @Department
  WHERE ID = @ID
  
  IF @@ROWCOUNT = 0
  BEGIN
    INSERT INTO Employees (ID, Name, Department)
    VALUES (@ID, @Name, @Department)
  END
END