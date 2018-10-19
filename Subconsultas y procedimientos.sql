USE BAR
go 

SELECT Nombre_Cli From Cliente 
WHERE Id_Cliente  IN
(SELECT Cliente.Id_Cliente AS TOTAL_CLI From Cliente)

SELECT Empleado.Nombre_Emp,Apellidos_Emp,Empleado.Telefono_Emp, Sueldo_Emp
FROM Empleado
WHERE Id_Empleado IN 
(SELECT Comanda.Id_Empleado FROM Comanda)
ORDER BY Sueldo_Emp

SELECT Cliente.Id_Cliente,Cliente.Nombre_Cli
FROM Cliente
WHERE Id_Cliente IN 
(SELECT Comanda.Id_Empleado FROM Comanda)
ORDER BY Id_Cliente

--VISTAS--
CREATE VIEW Total_Em
AS (SELECT Nombre_Emp  From Empleado)
SELECT  * From Total_Em

CREATE VIEW E_DATOS
AS (SELECT Empleado.Nombre_Emp,Apellidos_Emp,Empleado.Telefono_Emp, Sueldo_Emp
FROM Empleado
WHERE Id_Empleado IN 
(SELECT Comanda.Id_Empleado FROM Comanda))
SELECT * FROM E_DATOS

CREATE VIEW JOINS
AS(
SELECT Cuenta.Id_Cuenta, Cliente.Id_Cliente, Cliente.Nombre_Cli
FROM Cuenta
INNER JOIN Cliente ON Cuenta.Id_Cuenta = Cliente.Id_Cliente )
SELECT* From JOINS

CREATE VIEW Agrupacion
AS(SELECT Nombre_Prod,  AVG (Precio_Prod)  as PROMEDIO FROM Productos GROUP BY Nombre_Prod)
SELECT *  FROM Agrupacion

CREATE VIEW VENTA
AS(SELECT MIN (SubTotal) as Venta_Minima FROM Detalles_Compra
GROUP BY Id)
SELECT *  FROM VENTA

--CONSULTA DINAMICA--
DECLARE @Instruccion NVARCHAR(500)
DECLARE @Tabla NVARCHAR(25)

SET @Tabla = 'Empleado'
SET @Instruccion = 'SELECT * FROM ' + @Tabla

EXEC(@Instruccion)

--PROCEDIMIEENTOS--

Create proc NuevoEmpleado
@Id int,
@Id_Tipo_Emp int,
@Nombre varchar(30),
@Apellidos varchar(30),
@Sueldo int,
@Direccion text,
@Telefono int
AS  INSERT INTO  Empleado(Id_Empleado,Id_Tipo_Empleado,Nombre_Emp,Apellidos_Emp,Sueldo_Emp,Direccion_Emp,Telefono_Emp)
VALUES (@Id,@Id_Tipo_Emp,@Nombre,@Apellidos,@Sueldo,@Direccion,@Telefono)

EXEC NuevoEmpleado 6,10,'Antonio','Herrera',1000,'Granado 165',853301
SELECT * FROM Empleado

Create proc NuevaComanda
@Id int,
@Id_Cuenta int,
@Id_Mesa int,
@Id_Platillo int ,
@Id_Bebida int ,
@Cantidad_P bigint,
@Cantidad_B bigint,
@Id_Emp int,
@Id_Pago int,
@Total bigint,
@Fecha datetime
AS  INSERT INTO  Comanda(Id_Comanda,Id_Cuenta,Id_Mesa,Id_Platillo,Id_Bebida,Cantidad_Pla,Cantidad_Beb,Id_Empleado,Id_Tipo_Pago,Total,Fecha)
VALUES (@Id,@Id_Cuenta,@Id_Mesa,@Id_Platillo,@Id_Bebida,@Cantidad_P,@Cantidad_B,@Id_Emp,@Id_Pago,@Total,@Fecha)
EXEC NuevaComanda 3,3,104,5,4,2,6,6,10,210,'2018-05-10 10:05:36'

SELECT * FROM Comanda

CREATE proc TotalVentasEmp
@Id_Emp bigint
as SELECT COUNT(Id_Empleado) FROM  Comanda 
Go
EXEC TotalVentasEmp 6

CREATE proc NuevoProveedor
@Id int,
@Nombre varchar(30),
@Tipo_Prov int,
@Producto varchar(40),
@Cantidad bigint,
@Telefono int,
@Correo text,
@Direccion text,
@Pais_Origen varchar(20)
AS INSERT INTO Proveedores(Id_Prov,Nombre_Prov,Id_Tipo_Prov,Nombre_Prod,Cantidad_Prod,Telefono_Prov,Correo_Prov,Direccion,Pais_Origen)
Values (@Id,@Nombre,@Tipo_Prov,@Producto,@Cantidad,@Telefono,@Correo,@Direccion,@Pais_Origen)

EXEC NuevoProveedor 13,'Corona Extra',100,'Cerveza Corona',200,81222301,'cervezacorona@modelo.com.mx','Ciudad Mexico','Mexico'

SELECT * From Proveedores