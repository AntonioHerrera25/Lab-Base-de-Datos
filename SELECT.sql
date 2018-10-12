USE BAR
go

SELECT Nombre_Cli FROM Cliente AS CLIENTE

SELECT AVG(SubTotal) as PROMEDIO FROM Cuenta

SELECT COUNT(Nombre_Cli) as CANTIDAD_CLIENTES FROM Cliente

SELECT MAX(Precio_Uniario) as PRECIO_MAYOR FROM Detalles_Compra;

SELECT MIN (Precio_Uniario) as PRECIO_MENOR FROM Detalles_Compra;

--SELECT con WHERE
SELECT * FROM Cliente where Id_Cliente >3  ORDER BY Nombre_Cli  ASC

SELECt * FROM Proveedores WHERE Id_Tipo_Prov=200 and (Pais_Origen = 'Mexico')

SELECT Nombre_Prod  FROM Tipos_Proveedores WHERE Id_Tipo_Prov!= 101 

SELECT Fecha FROM Cuenta WHERE Id_Tipo_Pago = 10

SELECT Monto FROM Pago WHERE Id_Cliente >= 5 

--Funciones de Agregacion --

SELECT AVG (Precio_Prod) as PROMEDIO FROM Productos

SELECT COUNT(*) as CANTIDAD_CLIENTES FROM Cliente

SELECT Nombre_Prod,  AVG (Precio_Prod)  as PROMEDIO FROM Productos GROUP BY Nombre_Prod

SELECT MIN (SubTotal) as Venta_Minima FROM Detalles_Compra
GROUP BY Id

SELECT COUNT(Id_Prov)AS CANITDAD,Pais_Origen as PAIS_PROVEEDORES FROM Proveedores
GROUP BY Pais_Origen
HAVING COUNT (Id_Prov)>5 

-- JOIN--

SELECT Cuenta.Id_Cuenta, Cliente.Id_Cliente, Cliente.Nombre_Cli
FROM Cuenta
INNER JOIN Cliente ON Cuenta.Id_Cuenta = Cliente.Id_Cliente 

SELECT Productos.Id_Prod, Productos.Nombre_Prod, Cuenta.Id_Cuenta
FROM Productos
LEFT JOIN Cuenta ON  Productos.Id_Prod = Cuenta.Id_Cuenta

