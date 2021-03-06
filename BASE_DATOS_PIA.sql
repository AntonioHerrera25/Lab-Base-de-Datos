USE [master]
GO
/****** Object:  Database [BAR]    Script Date: 26/10/2018 10:39:01 p. m. ******/
CREATE DATABASE [BAR]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BAR', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESSS\MSSQL\DATA\BAR.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BAR_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESSS\MSSQL\DATA\BAR_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BAR] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BAR].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BAR] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BAR] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BAR] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BAR] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BAR] SET ARITHABORT OFF 
GO
ALTER DATABASE [BAR] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BAR] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BAR] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BAR] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BAR] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BAR] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BAR] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BAR] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BAR] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BAR] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BAR] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BAR] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BAR] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BAR] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BAR] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BAR] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BAR] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BAR] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BAR] SET  MULTI_USER 
GO
ALTER DATABASE [BAR] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BAR] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BAR] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BAR] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [BAR]
GO
/****** Object:  Table [dbo].[Acceso_Empleados]    Script Date: 26/10/2018 10:39:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Acceso_Empleados](
	[Id_Acceso] [int] NOT NULL,
	[Id_Emp] [int] NOT NULL,
	[Hora_Entrada] [datetime] NOT NULL,
	[Hora_Salidad] [datetime] NOT NULL,
 CONSTRAINT [PK_Acceso_Empleados] PRIMARY KEY CLUSTERED 
(
	[Id_Acceso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Almacen]    Script Date: 26/10/2018 10:39:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Almacen](
	[Id_Producto] [int] NOT NULL,
	[Nombre_Prod] [varchar](50) NOT NULL,
	[Cantidad_Prod] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banda]    Script Date: 26/10/2018 10:39:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banda](
	[Id_Banda] [int] NOT NULL,
	[Nombre_Banda] [varchar](30) NULL,
	[Genero_Banda] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Banda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bebidas]    Script Date: 26/10/2018 10:39:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bebidas](
	[Id_Bebida] [int] NOT NULL,
	[Nombre_Bebida] [varchar](40) NOT NULL,
	[Precio] [bigint] NOT NULL,
 CONSTRAINT [PK_Bebidas] PRIMARY KEY CLUSTERED 
(
	[Id_Bebida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comanda]    Script Date: 26/10/2018 10:39:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comanda](
	[Id_Comanda] [int] NOT NULL,
	[Id_Emp] [int] NOT NULL,
	[Id_Mesa] [int] NOT NULL,
	[Id_Prod] [int] NOT NULL,
	[Cantidad_Prod] [bigint] NOT NULL,
	[Total] [bigint] NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_Comanda] PRIMARY KEY CLUSTERED 
(
	[Id_Comanda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comida]    Script Date: 26/10/2018 10:39:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comida](
	[Id_Comida] [int] NOT NULL,
	[Nombre_Comida] [varchar](30) NOT NULL,
	[Precio_Comida] [bigint] NOT NULL,
 CONSTRAINT [PK_Comida] PRIMARY KEY CLUSTERED 
(
	[Id_Comida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cuenta]    Script Date: 26/10/2018 10:39:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuenta](
	[Id_Cuenta] [int] NOT NULL,
	[Id_Comanda] [int] NOT NULL,
	[Id_Tipo_Pago] [int] NOT NULL,
	[SubTotal] [bigint] NOT NULL,
	[Fecha] [date] NOT NULL,
 CONSTRAINT [PK_Cuenta] PRIMARY KEY CLUSTERED 
(
	[Id_Cuenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalles_Cuenta]    Script Date: 26/10/2018 10:39:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalles_Cuenta](
	[Id_Detalle] [int] NOT NULL,
	[Id_Cuenta] [int] NOT NULL,
	[Id_Producto] [int] NOT NULL,
	[Cantidad_Prod] [bigint] NOT NULL,
	[Precio_Uniario] [money] NOT NULL,
 CONSTRAINT [PK_Detalles_Compra] PRIMARY KEY CLUSTERED 
(
	[Id_Detalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 26/10/2018 10:39:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[Id_Empleado] [int] NOT NULL,
	[Id_Turno_Empleado] [int] NOT NULL,
	[Nombre_Emp] [varchar](30) NOT NULL,
	[Apellidos_Emp] [varchar](30) NOT NULL,
	[Puesto_Emp] [varchar](20) NOT NULL,
	[Sueldo_Emp_Hora] [float] NOT NULL,
	[Direccion_Emp] [text] NOT NULL,
	[Telefono_Emp] [int] NOT NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[Id_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 26/10/2018 10:39:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresa](
	[Id_Empresa] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[RFC] [text] NOT NULL,
	[Direccion] [text] NOT NULL,
	[Telefono] [int] NOT NULL,
	[Correo] [text] NOT NULL,
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[Id_Empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evento]    Script Date: 26/10/2018 10:39:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evento](
	[Id_Evento] [int] NOT NULL,
	[Id_Banda] [int] NOT NULL,
	[Nombre_Evento] [varchar](30) NOT NULL,
	[Descripcion] [text] NOT NULL,
	[Costo] [bigint] NOT NULL,
 CONSTRAINT [PK_Evento] PRIMARY KEY CLUSTERED 
(
	[Id_Evento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 26/10/2018 10:39:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[Id_Factura] [int] NOT NULL,
	[Id_Empesa] [int] NOT NULL,
	[Id_Cuenta] [int] NOT NULL,
	[Nombre_Cli] [varchar](40) NOT NULL,
	[Apellido_Cli] [varchar](40) NOT NULL,
	[Id_Prod] [int] NOT NULL,
	[Canitdad_Prod] [bigint] NOT NULL,
	[Total] [bigint] NOT NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[Id_Factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mesa]    Script Date: 26/10/2018 10:39:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mesa](
	[Id_Mesa] [int] NOT NULL,
	[Id_Tipo_Mesa] [int] NOT NULL,
	[Status_Mesa] [bit] NOT NULL,
 CONSTRAINT [PK_Mesa] PRIMARY KEY CLUSTERED 
(
	[Id_Mesa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nomina]    Script Date: 26/10/2018 10:39:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nomina](
	[Id_Nominina] [int] NOT NULL,
	[Id_Emp] [int] NOT NULL,
	[Nombre_Emp] [varchar](30) NOT NULL,
	[Horas_Trabajadas] [bigint] NOT NULL,
	[Sueldo_Total] [float] NOT NULL,
 CONSTRAINT [PK_Nomina] PRIMARY KEY CLUSTERED 
(
	[Id_Nominina] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 26/10/2018 10:39:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago](
	[Id_Cuenta] [int] NOT NULL,
	[Id_Tipo_Pago] [int] NOT NULL,
	[Monto] [bigint] NOT NULL,
 CONSTRAINT [PK_Pago] PRIMARY KEY CLUSTERED 
(
	[Id_Cuenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pago_Tarjeta]    Script Date: 26/10/2018 10:39:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago_Tarjeta](
	[Id_Tipo_Pago] [int] NOT NULL,
	[Id_Pago] [int] NOT NULL,
	[Nombre_Banco] [varchar](30) NOT NULL,
	[Nuero_Tarjeta] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Pago_Tarjeta] PRIMARY KEY CLUSTERED 
(
	[Id_Tipo_Pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 26/10/2018 10:39:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedido](
	[Id_Pedido] [int] NOT NULL,
	[Id_Proveedor] [int] NOT NULL,
	[Nombre_Prod] [varchar](30) NOT NULL,
	[Cantidad] [bigint] NOT NULL,
	[Fecha_Pepido] [date] NOT NULL,
 CONSTRAINT [PK_Pedido] PRIMARY KEY CLUSTERED 
(
	[Id_Pedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 26/10/2018 10:39:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[Id_Producto] [int] NOT NULL,
	[Id_Tipo_Producto] [int] NOT NULL,
	[Nombre_Prod] [varchar](30) NOT NULL,
	[Precio] [bigint] NOT NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[Id_Producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 26/10/2018 10:39:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedores](
	[Id_Prov] [int] NOT NULL,
	[Nombre_Prov] [varchar](30) NOT NULL,
	[Id_Tipo_Prov] [int] NOT NULL,
	[Nombre_Prod] [varchar](40) NOT NULL,
	[Cantidad_Prod] [bigint] NOT NULL,
	[Telefono_Prov] [int] NOT NULL,
	[Correo_Prov] [text] NOT NULL,
	[Direccion] [text] NOT NULL,
	[Pais_Origen] [varchar](20) NOT NULL,
 CONSTRAINT [PK__Proveedo__3A592AE11D9139A2] PRIMARY KEY CLUSTERED 
(
	[Id_Prov] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Mesa]    Script Date: 26/10/2018 10:39:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Mesa](
	[Id_Tipo_Mesa] [int] NOT NULL,
	[Capacidad_Mesa] [bigint] NOT NULL,
 CONSTRAINT [PK_Tipo_Mesa] PRIMARY KEY CLUSTERED 
(
	[Id_Tipo_Mesa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Pago]    Script Date: 26/10/2018 10:39:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Pago](
	[Id_Tipo_Pago] [int] NOT NULL,
	[Nombre_Pago] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Tipo_Pago] PRIMARY KEY CLUSTERED 
(
	[Id_Tipo_Pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipos_Proveedores]    Script Date: 26/10/2018 10:39:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipos_Proveedores](
	[Id_Tipo_Prov] [int] NOT NULL,
	[Nombre_Prod] [varchar](40) NOT NULL,
 CONSTRAINT [PK_Tipos_Proveedores] PRIMARY KEY CLUSTERED 
(
	[Id_Tipo_Prov] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Turno_Empleado]    Script Date: 26/10/2018 10:39:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turno_Empleado](
	[Id_Turno_Empleado] [int] NOT NULL,
	[Turno_Desc] [varchar](40) NOT NULL,
 CONSTRAINT [PK_Tipo_Empleado] PRIMARY KEY CLUSTERED 
(
	[Id_Turno_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Agrupacion]    Script Date: 26/10/2018 10:39:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Agrupacion]
AS(SELECT Nombre_Prod,  AVG (Precio_Prod)  as PROMEDIO FROM Productos GROUP BY Nombre_Prod)
GO
/****** Object:  View [dbo].[E_DATOS]    Script Date: 26/10/2018 10:39:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[E_DATOS]
AS (SELECT Empleado.Nombre_Emp,Apellidos_Emp,Empleado.Telefono_Emp, Sueldo_Emp
FROM Empleado
WHERE Id_Empleado IN 
(SELECT Comanda.Id_Empleado FROM Comanda))
GO
/****** Object:  View [dbo].[JOINS]    Script Date: 26/10/2018 10:39:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[JOINS]
AS(
SELECT Cuenta.Id_Cuenta, Cliente.Id_Cliente, Cliente.Nombre_Cli
FROM Cuenta
INNER JOIN Cliente ON Cuenta.Id_Cuenta = Cliente.Id_Cliente )
GO
/****** Object:  View [dbo].[Relacion]    Script Date: 26/10/2018 10:39:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Relacion]
AS
SELECT        dbo.Proveedores.Id_Prov, dbo.Datos_Generales.Nombre
FROM            dbo.Tipos_Proveedores INNER JOIN
                         dbo.Proveedores ON dbo.Tipos_Proveedores.Id_Prov_Botellas = dbo.Proveedores.Id_Prov AND dbo.Tipos_Proveedores.Id_Prov_Botana = dbo.Proveedores.Id_Prov AND 
                         dbo.Tipos_Proveedores.Id_Prov_Comida = dbo.Proveedores.Id_Prov AND dbo.Tipos_Proveedores.Id_Prov_Cerveza = dbo.Proveedores.Id_Prov CROSS JOIN
                         dbo.Datos_Generales INNER JOIN
                         dbo.Cuenta ON dbo.Datos_Generales.Nombre = dbo.Cuenta.Datos_Bar CROSS JOIN
                         dbo.Banda
GO
/****** Object:  View [dbo].[Relacion_2]    Script Date: 26/10/2018 10:39:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Relacion_2]
AS
SELECT        dbo.Detalles_Compra.Id_Cuenta, dbo.Pago.Id_Tipo_Pago, dbo.Pago.Id_Cliente, dbo.Cuenta.Id_Cuenta AS Expr1, dbo.Tipos_Proveedores.Nombre_Prod
FROM            dbo.Tipo_Pago INNER JOIN
                         dbo.Pago ON dbo.Tipo_Pago.Id_Tipo_Pago = dbo.Pago.Id_Tipo_Pago INNER JOIN
                         dbo.Cuenta INNER JOIN
                         dbo.Detalles_Compra ON dbo.Cuenta.Id_Cuenta = dbo.Detalles_Compra.Id_Cuenta ON dbo.Pago.Id_Tipo_Pago = dbo.Cuenta.Id_Tipo_Pago INNER JOIN
                         dbo.Cliente ON dbo.Pago.Id_Cliente = dbo.Cliente.Id_Cliente AND dbo.Cuenta.Id_Cliente = dbo.Cliente.Id_Cliente INNER JOIN
                         dbo.Empresa ON dbo.Cuenta.Id_Empresa = dbo.Empresa.Id_Empresa CROSS JOIN
                         dbo.Tipos_Proveedores INNER JOIN
                         dbo.Proveedores ON dbo.Tipos_Proveedores.Id_Tipo_Prov = dbo.Proveedores.Id_Tipo_Prov AND dbo.Tipos_Proveedores.Nombre_Prod = dbo.Proveedores.Nomnre_Prod CROSS JOIN
                         dbo.Banda
GO
/****** Object:  View [dbo].[RELACION_F]    Script Date: 26/10/2018 10:39:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[RELACION_F]
AS
SELECT        dbo.Tipo_Mesa.Id_Tipo_Mesa, dbo.Menu.Nombre_Pla, dbo.Proveedores.Nombre_Prov, dbo.Factura.Id_Cliente, dbo.Factura.Nombre_Cli, dbo.Cuenta.Id_Cliente AS Expr1
FROM            dbo.Cliente INNER JOIN
                         dbo.Tipos_Proveedores INNER JOIN
                         dbo.Proveedores ON dbo.Tipos_Proveedores.Id_Tipo_Prov = dbo.Proveedores.Id_Tipo_Prov INNER JOIN
                         dbo.Comanda INNER JOIN
                         dbo.Bebidas ON dbo.Comanda.Id_Bebida = dbo.Bebidas.Id_Bebida INNER JOIN
                         dbo.Cuenta ON dbo.Comanda.Id_Cuenta = dbo.Cuenta.Id_Cuenta INNER JOIN
                         dbo.Detalles_Compra ON dbo.Cuenta.Id_Cuenta = dbo.Detalles_Compra.Id_Cuenta INNER JOIN
                         dbo.Empleado ON dbo.Comanda.Id_Empleado = dbo.Empleado.Id_Empleado INNER JOIN
                         dbo.Empresa ON dbo.Cuenta.Id_Empresa = dbo.Empresa.Id_Empresa INNER JOIN
                         dbo.Factura ON dbo.Cuenta.Id_Cuenta = dbo.Factura.Id_Cuenta INNER JOIN
                         dbo.Mesa ON dbo.Comanda.Id_Mesa = dbo.Mesa.Id_Mesa INNER JOIN
                         dbo.Pago ON dbo.Cuenta.Id_Cliente = dbo.Pago.Id_Cliente INNER JOIN
                         dbo.Platillos ON dbo.Comanda.Id_Platillo = dbo.Platillos.Id_Platillo INNER JOIN
                         dbo.Tipo_Empleado ON dbo.Empleado.Id_Tipo_Empleado = dbo.Tipo_Empleado.Id_Tipo_Empleado INNER JOIN
                         dbo.Tipo_Mesa ON dbo.Mesa.Id_Tipo_Mesa = dbo.Tipo_Mesa.Id_Tipo_Mesa INNER JOIN
                         dbo.Tipo_Pago ON dbo.Pago.Id_Tipo_Pago = dbo.Tipo_Pago.Id_Tipo_Pago INNER JOIN
                         dbo.Almacen INNER JOIN
                         dbo.Tipo_Almacen ON dbo.Almacen.Id_Tipo_Almacen = dbo.Tipo_Almacen.Id_Tipo_Almacen ON dbo.Tipo_Mesa.Id_Tipo_Mesa = dbo.Almacen.Id_Almacen INNER JOIN
                         dbo.Menu ON dbo.Platillos.Nombre_Platillo = dbo.Menu.Nombre_Pla AND dbo.Bebidas.Nombre_Beb = dbo.Menu.Nombre_Beb ON dbo.Proveedores.Nombre_Prov = dbo.Almacen.Nombre_Prod ON 
                         dbo.Cliente.Id_Cliente = dbo.Factura.Id_Cliente AND dbo.Cliente.Nombre_Cli = dbo.Factura.Nombre_Cli AND dbo.Cliente.Id_Cliente = dbo.Cuenta.Id_Cliente CROSS JOIN
                         dbo.Banda
GO
/****** Object:  View [dbo].[Total_Em]    Script Date: 26/10/2018 10:39:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Total_Em]
AS (SELECT Nombre_Emp  From Empleado)
GO
/****** Object:  View [dbo].[VENTA]    Script Date: 26/10/2018 10:39:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VENTA]
AS(SELECT MIN (SubTotal) as Venta_Minima FROM Detalles_Compra
GROUP BY Id)
GO
ALTER TABLE [dbo].[Acceso_Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Acceso_Empleados_Empleado] FOREIGN KEY([Id_Emp])
REFERENCES [dbo].[Empleado] ([Id_Empleado])
GO
ALTER TABLE [dbo].[Acceso_Empleados] CHECK CONSTRAINT [FK_Acceso_Empleados_Empleado]
GO
ALTER TABLE [dbo].[Almacen]  WITH CHECK ADD  CONSTRAINT [FK_Almacen_Productos] FOREIGN KEY([Id_Producto])
REFERENCES [dbo].[Productos] ([Id_Producto])
GO
ALTER TABLE [dbo].[Almacen] CHECK CONSTRAINT [FK_Almacen_Productos]
GO
ALTER TABLE [dbo].[Comanda]  WITH CHECK ADD  CONSTRAINT [FK_Comanda_Empleado] FOREIGN KEY([Id_Emp])
REFERENCES [dbo].[Empleado] ([Id_Empleado])
GO
ALTER TABLE [dbo].[Comanda] CHECK CONSTRAINT [FK_Comanda_Empleado]
GO
ALTER TABLE [dbo].[Comanda]  WITH CHECK ADD  CONSTRAINT [FK_Comanda_Mesa] FOREIGN KEY([Id_Mesa])
REFERENCES [dbo].[Mesa] ([Id_Mesa])
GO
ALTER TABLE [dbo].[Comanda] CHECK CONSTRAINT [FK_Comanda_Mesa]
GO
ALTER TABLE [dbo].[Comanda]  WITH CHECK ADD  CONSTRAINT [FK_Comanda_Productos] FOREIGN KEY([Id_Prod])
REFERENCES [dbo].[Productos] ([Id_Producto])
GO
ALTER TABLE [dbo].[Comanda] CHECK CONSTRAINT [FK_Comanda_Productos]
GO
ALTER TABLE [dbo].[Cuenta]  WITH CHECK ADD  CONSTRAINT [FK_Cuenta_Pago] FOREIGN KEY([Id_Cuenta])
REFERENCES [dbo].[Pago] ([Id_Cuenta])
GO
ALTER TABLE [dbo].[Cuenta] CHECK CONSTRAINT [FK_Cuenta_Pago]
GO
ALTER TABLE [dbo].[Detalles_Cuenta]  WITH CHECK ADD  CONSTRAINT [FK_Detalles_Cuenta_Cuenta] FOREIGN KEY([Id_Cuenta])
REFERENCES [dbo].[Cuenta] ([Id_Cuenta])
GO
ALTER TABLE [dbo].[Detalles_Cuenta] CHECK CONSTRAINT [FK_Detalles_Cuenta_Cuenta]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Turno_Empleado] FOREIGN KEY([Id_Turno_Empleado])
REFERENCES [dbo].[Turno_Empleado] ([Id_Turno_Empleado])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Turno_Empleado]
GO
ALTER TABLE [dbo].[Evento]  WITH CHECK ADD  CONSTRAINT [FK_Evento_Banda] FOREIGN KEY([Id_Banda])
REFERENCES [dbo].[Banda] ([Id_Banda])
GO
ALTER TABLE [dbo].[Evento] CHECK CONSTRAINT [FK_Evento_Banda]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Cuenta] FOREIGN KEY([Id_Cuenta])
REFERENCES [dbo].[Cuenta] ([Id_Cuenta])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Cuenta]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Empresa] FOREIGN KEY([Id_Empesa])
REFERENCES [dbo].[Empresa] ([Id_Empresa])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Empresa]
GO
ALTER TABLE [dbo].[Nomina]  WITH CHECK ADD  CONSTRAINT [FK_Nomina_Empleado] FOREIGN KEY([Id_Emp])
REFERENCES [dbo].[Empleado] ([Id_Empleado])
GO
ALTER TABLE [dbo].[Nomina] CHECK CONSTRAINT [FK_Nomina_Empleado]
GO
ALTER TABLE [dbo].[Pago]  WITH CHECK ADD  CONSTRAINT [FK_Pago_Tipo_Pago] FOREIGN KEY([Id_Tipo_Pago])
REFERENCES [dbo].[Tipo_Pago] ([Id_Tipo_Pago])
GO
ALTER TABLE [dbo].[Pago] CHECK CONSTRAINT [FK_Pago_Tipo_Pago]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Proveedores] FOREIGN KEY([Id_Proveedor])
REFERENCES [dbo].[Proveedores] ([Id_Prov])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Proveedores]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Bebidas] FOREIGN KEY([Id_Producto])
REFERENCES [dbo].[Bebidas] ([Id_Bebida])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Bebidas]
GO
ALTER TABLE [dbo].[Proveedores]  WITH CHECK ADD  CONSTRAINT [FK_Proveedores_Tipos_Proveedores] FOREIGN KEY([Id_Tipo_Prov])
REFERENCES [dbo].[Tipos_Proveedores] ([Id_Tipo_Prov])
GO
ALTER TABLE [dbo].[Proveedores] CHECK CONSTRAINT [FK_Proveedores_Tipos_Proveedores]
GO
ALTER TABLE [dbo].[Tipo_Pago]  WITH CHECK ADD  CONSTRAINT [FK_Tipo_Pago_Pago_Tarjeta] FOREIGN KEY([Id_Tipo_Pago])
REFERENCES [dbo].[Pago_Tarjeta] ([Id_Tipo_Pago])
GO
ALTER TABLE [dbo].[Tipo_Pago] CHECK CONSTRAINT [FK_Tipo_Pago_Pago_Tarjeta]
GO
/****** Object:  StoredProcedure [dbo].[NuevaComanda]    Script Date: 26/10/2018 10:39:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[NuevaComanda]
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
GO
/****** Object:  StoredProcedure [dbo].[NuevoEmpleado]    Script Date: 26/10/2018 10:39:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[NuevoEmpleado]
@Id int,
@Id_Tipo_Emp int,
@Nombre varchar(30),
@Apellidos varchar(30),
@Sueldo int,
@Direccion text,
@Telefono int
AS  INSERT INTO  Empleado(Id_Empleado,Id_Tipo_Empleado,Nombre_Emp,Apellidos_Emp,Sueldo_Emp,Direccion_Emp,Telefono_Emp)
VALUES (@Id,@Id_Tipo_Emp,@Nombre,@Apellidos,@Sueldo,@Direccion,@Telefono)

EXEC NuevoEmpleado '6','10','Antonio','Herrera','1000','Granado 165','853301'
GO
/****** Object:  StoredProcedure [dbo].[NuevoProveedor]    Script Date: 26/10/2018 10:39:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[NuevoProveedor]
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
GO
/****** Object:  StoredProcedure [dbo].[TotalVentas]    Script Date: 26/10/2018 10:39:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[TotalVentas]
@Total bigint
as SELECT AVG(Total) FROM  Comanda 
GO
/****** Object:  StoredProcedure [dbo].[TotalVentasEmp]    Script Date: 26/10/2018 10:39:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[TotalVentasEmp]
@Id_Emp bigint
as SELECT AVG(Total) FROM  Comanda 
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[57] 4[14] 2[10] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Banda"
            Begin Extent = 
               Top = 176
               Left = 107
               Bottom = 289
               Right = 278
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Cuenta"
            Begin Extent = 
               Top = 0
               Left = 0
               Bottom = 163
               Right = 175
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Datos_Generales"
            Begin Extent = 
               Top = 4
               Left = 216
               Bottom = 156
               Right = 386
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Proveedores"
            Begin Extent = 
               Top = 5
               Left = 651
               Bottom = 224
               Right = 821
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Tipos_Proveedores"
            Begin Extent = 
               Top = 8
               Left = 386
               Bottom = 193
               Right = 561
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
  ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Relacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'       Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Relacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Relacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[82] 4[4] 2[5] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Tipo_Pago"
            Begin Extent = 
               Top = 329
               Left = 972
               Bottom = 433
               Right = 1142
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Pago"
            Begin Extent = 
               Top = 339
               Left = 678
               Bottom = 484
               Right = 848
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Cuenta"
            Begin Extent = 
               Top = 144
               Left = 901
               Bottom = 316
               Right = 1071
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Detalles_Compra"
            Begin Extent = 
               Top = 52
               Left = 1137
               Bottom = 219
               Right = 1307
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Cliente"
            Begin Extent = 
               Top = 159
               Left = 476
               Bottom = 262
               Right = 646
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Empresa"
            Begin Extent = 
               Top = 7
               Left = 658
               Bottom = 177
               Right = 828
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Tipos_Proveedores"
            Begin Extent = 
               Top = 318
               Left = 413
               Bottom = 419
               Right = 583
            End
         ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Relacion_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'   DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Proveedores"
            Begin Extent = 
               Top = 207
               Left = 112
               Bottom = 422
               Right = 282
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Banda"
            Begin Extent = 
               Top = 13
               Left = 247
               Bottom = 128
               Right = 418
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Relacion_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Relacion_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[88] 4[0] 2[4] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4[30] 2[40] 3) )"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4[60] 2) )"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 3
   End
   Begin DiagramPane = 
      PaneHidden = 
      Begin Origin = 
         Top = 0
         Left = -288
      End
      Begin Tables = 
         Begin Table = "Almacen"
            Begin Extent = 
               Top = 380
               Left = 68
               Bottom = 518
               Right = 248
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Banda"
            Begin Extent = 
               Top = 16
               Left = 294
               Bottom = 129
               Right = 465
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Bebidas"
            Begin Extent = 
               Top = 136
               Left = 1083
               Bottom = 249
               Right = 1253
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Cliente"
            Begin Extent = 
               Top = 248
               Left = 585
               Bottom = 350
               Right = 755
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Comanda"
            Begin Extent = 
               Top = 0
               Left = 832
               Bottom = 254
               Right = 1002
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Cuenta"
            Begin Extent = 
               Top = 271
               Left = 1056
               Bottom = 401
               Right = 1226
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Detalles_Compra"
            Begin Extent = 
               Top = 228
               Left = 1305
               Bottom = 358
               Right = 1475
            ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RELACION_F'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Empleado"
            Begin Extent = 
               Top = 108
               Left = 466
               Bottom = 238
               Right = 652
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Empresa"
            Begin Extent = 
               Top = 555
               Left = 776
               Bottom = 685
               Right = 946
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Factura"
            Begin Extent = 
               Top = 346
               Left = 826
               Bottom = 476
               Right = 996
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Mesa"
            Begin Extent = 
               Top = 259
               Left = 360
               Bottom = 372
               Right = 530
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Pago"
            Begin Extent = 
               Top = 417
               Left = 1251
               Bottom = 530
               Right = 1421
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Platillos"
            Begin Extent = 
               Top = 11
               Left = 1057
               Bottom = 124
               Right = 1231
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Proveedores"
            Begin Extent = 
               Top = 475
               Left = 339
               Bottom = 623
               Right = 509
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Tipo_Empleado"
            Begin Extent = 
               Top = 205
               Left = 120
               Bottom = 318
               Right = 306
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Tipo_Mesa"
            Begin Extent = 
               Top = 377
               Left = 531
               Bottom = 473
               Right = 709
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Tipo_Pago"
            Begin Extent = 
               Top = 464
               Left = 1036
               Bottom = 560
               Right = 1206
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Tipos_Proveedores"
            Begin Extent = 
               Top = 626
               Left = 536
               Bottom = 722
               Right = 706
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Tipo_Almacen"
            Begin Extent = 
               Top = 722
               Left = 278
               Bottom = 835
               Right = 463
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Menu"
            Begin Extent = 
               Top = 12
               Left = 1284
               Bottom = 181
               Right = 1454
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RELACION_F'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane3', @value=N'900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RELACION_F'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=3 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RELACION_F'
GO
USE [master]
GO
ALTER DATABASE [BAR] SET  READ_WRITE 
GO
