USE BAR
Go

Create Trigger Trigger_DELE ON Empleado		
 INSTEAD OF DELETE
 AS BEGIN
 DELETE FROM Empleado WHERE Id_Empleado=112
 END
 GO
 SELECT * FROM Empleado

 CREATE TRIGGER Trigger_UPDATE	ON Empleado		
 INSTEAD OF Insert
 AS BEGIN
 select * 
	from INSERTED -->tabla temporal, se pone la info que va llegando, solo existe para update e insert
	Select *
	from deleted -->tabla temporal, tiene la info que se va a borrar o que va de salida
end
GO

Create Trigger Trigger_INS
on Bebidas
instead of update --delete/*instaed
as
begin
	select * 
	from INSERTED -->tabla temporal, se pone la info que va llegando, solo existe para update e insert
	Select *
	from deleted -->tabla temporal, tiene la info que se va a borrar o que va de salida
end
GO