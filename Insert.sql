use BAR
go 

--Tabla Banda--
INSERT INTO Banda
values (0001, 'Blop', 'Pop')

INSERT INTO Banda
values (0002, 'Magnificos', 'Jazz')

INSERT INTO Banda
values (0003, 'AC/DC', 'Rock')

INSERT INTO Banda
values (0004, 'Kiss', 'Rock')

INSERT INTO Banda
values (0005, 'Cafe tacuba', 'Pop')

SELECT * from Banda

--Table Cliente --
INSERT INTO Cliente
values(0001,'Alberto Garcia')

INSERT INTO Cliente
values(0002,'Bernardo Reyes')

INSERT INTO Cliente
values(0003,'Consuelo Perez')

INSERT INTO Cliente
values(0004,'Daniel Arizpe')

INSERT INTO Cliente
values(0005,'Estefani Vazquez')

INSERT INTO Cliente
values(0006,'Fernanda Estrada')

INSERT INTO Cliente
values(0007,'Gabriel Marquez')

INSERT INTO Cliente
values(0008,'Hector Romero')

INSERT INTO Cliente
values(0009,'Isabela Martienez')

INSERT INTO Cliente
values(0010,'Josue Dominguez')

UPDATE Cliente set Nombre_Cli = 'Isabela Martinez'
WHERE Id_Cliente= 0009

SELECT * FROM Cliente

--Tabla Empresa --
INSERT INTO Empresa
values( 0001,'Bar La Cantante', 'BLC01253462','Chapultepec 247, San Nicolas',345578945,'servicioalcleinte@lacantante.com')

SELECT * from Empresa 

--Tipos de Proveedores--
--Proveedores 100 cerveza/licores, 200 alimentos, 300 platos y vasos--
INSERT INTO Tipos_Proveedores
values(100,'Cerveceria Cuauhtemoc')

INSERT INTO Tipos_Proveedores
values(101,'Tequila Cuervo La Rojeña')

INSERT INTO Tipos_Proveedores
values(102,'Brown-Forman')

INSERT INTO Tipos_Proveedores
values(200,'Bokados')

INSERT INTO Tipos_Proveedores
values(201,'Carnes rojas')

INSERT INTO Tipos_Proveedores
values(202,'HEB')

INSERT INTO Tipos_Proveedores
values(300,'Proveedora Diaz')

SELECT * FROM Tipos_Proveedores

--Tabla Proveedores--
--Proveedores 100 cerveza/licores, 200 alimentos, 300 platos y vasos--
INSERT INTO Proveedores
values( 0001,'Cerveceria Cuauhtemoc',100,'Tecate Rojo', 250, 81812569, 'cerveceriacuauhtemoc@gmail.com','Monterrey', 'Mexico')

INSERT INTO Proveedores
values( 0002,'Cerveceria Cuauhtemoc',100,'Tecate Light', 250, 81812952, 'cerveceriacuauhtemoc@gmail.com','Monterrey', 'Mexico')

INSERT INTO Proveedores
values( 0003,'Cerveceria Cuauhtemoc',100,'Caguama Carta Blanca', 250, 81812952, 'cerveceriacuauhtemoc@gmail.com','Monterrey', 'Mexico')

INSERT INTO Proveedores
values( 0004,'Cerveceria Cuauhtemoc',100,'Caguama Carta Blanca Light', 250, 81812562, 'cerveceriacuauhtemoc@gmail.com','Monterrey', 'Mexico')

INSERT INTO Proveedores
values( 0005,'Comercializadora Bts',100,'Johnnie Walker', 25, 81153242, 'licoresbts@hotmail.com','Delgancion Benito Juarez', 'Mexico')

INSERT INTO Proveedores
values( 0006,'Tequila Cuervo La Rojeña',100,'Jose Cuervo', 25, 68543688, 'josecuervo@gmail.com','Jalisco', 'Mexico')

INSERT INTO Proveedores
values( 0007,'Brown-Forman',100,'Jack Daniels', 25, 74269358, 'brownforman@gmail.com','Tennessee', 'Estados Unidos')

INSERT INTO Proveedores
values( 0008,'Bokados',200,'Botana',50 ,8003442 , 'contacto@bokados.com','Monterry', 'Mexico')

INSERT INTO Proveedores
values( 0009,'Carnes rojas',200,'Carne de res', 30, 85069914 , 'carnesrojas@hotmail.com','Monterrey', 'Mexico')

INSERT INTO Proveedores
values( 0010,'Carnes rojas',200,'Pollo',30 ,85069214 , 'carnesrojas@hotmail.com','Monterrey', 'Mexico')

INSERT INTO Proveedores
values( 0011,'HEB',200,'Verduras',25 ,81136920 , 'servicioheb@gmail.com','Monterrey', 'Mexico')

INSERT INTO Proveedores
values( 0012,'Proveedora Diaz',300,'Vasos y Platos',100 ,81427701 , 'proveedordiaz@outook.com','Delgacion Cuauhtemoc', 'Mexico')

SELECT * FROM Proveedores

--Tabla Tipo dePago--
--Pago 10 efectivo, 20 tarjeta--
INSERT INTO Tipo_Pago
values( 10,'Efectivo')

INSERT INTO Tipo_Pago
values( 20,'Tarjeta')

SELECT * FROM Tipo_Pago

--Tabla Pago--
--Pago 10 efectivo, 20 tarjeta--
INSERT INTO Pago
values( 0001,10,170)

INSERT INTO Pago
values( 0005,10,250)

INSERT INTO Pago
values( 0008,20,100)

INSERT INTO Pago
values( 0002,10,300)

INSERT INTO Pago
values( 0004,20,220)

INSERT INTO Pago
values( 0006,10,420)

INSERT INTO Pago
values( 0010,20,150)

SELECT * FROM Pago

--Tabla Cuenta--
INSERT INTO Cuenta
values(0001,0002,10,0001,290,GETDATE() )

INSERT INTO Cuenta
values(0002,0001,10,0001,160,GETDATE() )

INSERT INTO Cuenta
values(0003,0004,20,0001,210,GETDATE() )

INSERT INTO Cuenta
values(0004,0005,10,0001,240,GETDATE() )

INSERT INTO Cuenta
values(0005,0006,10,0001,400,GETDATE() )

INSERT INTO Cuenta
values(0006,0008,20,0001,90,GETDATE() )

INSERT INTO Cuenta
values(0007,0010,10,0001,140,GETDATE() )

UPDATE Cuenta set Id_Tipo_Pago = 20
WHERE Id_Cuenta= 0007

SELECT * FROM Cuenta

--Tabla Productos--
INSERT INTO Productos
values(01,'Tecate Rojo',25)

INSERT INTO Productos
values(02,'Tecate light',25)

INSERT INTO Productos
values(03,'Caguama Carta Blanca',35)

INSERT INTO Productos
values(04,'Caguama Light',35)

INSERT INTO Productos
values(05,'Plato de botana',20)

INSERT INTO Productos
values(06,'Platillo de carne',80)

INSERT INTO Productos
values(07,'Platillo de pollo',70)

INSERT INTO Productos
values(08,'Botella de tequila',160)

INSERT INTO Productos
values(09,'Botella de whisky',290)

SELECT *  FROM Productos

--Tabla Detalles Cuenta--
--Id, Id_Cuenta, Id_Prod, Cantidad_Prod, Precio_Unitario, SubTotal--
INSERT INTO Detalles_Compra
values (01, 0001,09,1,290,290)

INSERT INTO Detalles_Compra
values (02, 0002,08,1,160, 160)

INSERT INTO Detalles_Compra
values (03, 0003,04,6,35, 210)

INSERT INTO Detalles_Compra
values (04, 0004,06,3,80, 240)

INSERT INTO Detalles_Compra
values (05, 0005,01,16,25, 400)

INSERT INTO Detalles_Compra
values (06, 0006,03,4,25, 100)

INSERT INTO Detalles_Compra
values (07, 0007,03,4,35, 140)

SELECT * FROM Detalles_Compra