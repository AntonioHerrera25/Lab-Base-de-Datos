USE [BAR]
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RELACION_F'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RELACION_F'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RELACION_F'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RELACION_F'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Relacion_2'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Relacion_2'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Relacion_2'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Relacion'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Relacion'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Relacion'
GO
/****** Object:  Trigger [Trigger_UPDATE]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP TRIGGER [dbo].[Trigger_UPDATE]
GO
/****** Object:  Trigger [Trigger_UPD]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP TRIGGER [dbo].[Trigger_UPD]
GO
/****** Object:  Trigger [Trigger_DELE]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP TRIGGER [dbo].[Trigger_DELE]
GO
/****** Object:  Trigger [EJEMPLO1]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP TRIGGER [dbo].[EJEMPLO1]
GO
/****** Object:  Trigger [EJEMPLO]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP TRIGGER [dbo].[EJEMPLO]
GO
/****** Object:  Trigger [Trigger_INS]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP TRIGGER [dbo].[Trigger_INS]
GO
/****** Object:  StoredProcedure [dbo].[TotalVentasEmp]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP PROCEDURE [dbo].[TotalVentasEmp]
GO
/****** Object:  StoredProcedure [dbo].[TotalVentas]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP PROCEDURE [dbo].[TotalVentas]
GO
/****** Object:  StoredProcedure [dbo].[NuevoProveedor]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP PROCEDURE [dbo].[NuevoProveedor]
GO
/****** Object:  StoredProcedure [dbo].[NuevoEmpleado]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP PROCEDURE [dbo].[NuevoEmpleado]
GO
/****** Object:  StoredProcedure [dbo].[NuevaComanda]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP PROCEDURE [dbo].[NuevaComanda]
GO
ALTER TABLE [dbo].[Tipo_Pago] DROP CONSTRAINT [FK_Tipo_Pago_Pago_Tarjeta]
GO
ALTER TABLE [dbo].[Proveedores] DROP CONSTRAINT [FK_Proveedores_Tipos_Proveedores]
GO
ALTER TABLE [dbo].[Productos] DROP CONSTRAINT [FK_Productos_Bebidas]
GO
ALTER TABLE [dbo].[Pedido] DROP CONSTRAINT [FK_Pedido_Proveedores]
GO
ALTER TABLE [dbo].[Pago] DROP CONSTRAINT [FK_Pago_Tipo_Pago]
GO
ALTER TABLE [dbo].[Nomina] DROP CONSTRAINT [FK_Nomina_Empleado]
GO
ALTER TABLE [dbo].[Factura] DROP CONSTRAINT [FK_Factura_Empresa]
GO
ALTER TABLE [dbo].[Factura] DROP CONSTRAINT [FK_Factura_Cuenta]
GO
ALTER TABLE [dbo].[Evento] DROP CONSTRAINT [FK_Evento_Banda]
GO
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK_Empleado_Turno_Empleado]
GO
ALTER TABLE [dbo].[Detalles_Cuenta] DROP CONSTRAINT [FK_Detalles_Cuenta_Cuenta]
GO
ALTER TABLE [dbo].[Cuenta] DROP CONSTRAINT [FK_Cuenta_Pago]
GO
ALTER TABLE [dbo].[Comanda] DROP CONSTRAINT [FK_Comanda_Productos]
GO
ALTER TABLE [dbo].[Comanda] DROP CONSTRAINT [FK_Comanda_Mesa]
GO
ALTER TABLE [dbo].[Comanda] DROP CONSTRAINT [FK_Comanda_Empleado]
GO
ALTER TABLE [dbo].[Almacen] DROP CONSTRAINT [FK_Almacen_Productos]
GO
ALTER TABLE [dbo].[Acceso_Empleados] DROP CONSTRAINT [FK_Acceso_Empleados_Empleado]
GO
/****** Object:  View [dbo].[VENTA]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP VIEW [dbo].[VENTA]
GO
/****** Object:  View [dbo].[Total_Em]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP VIEW [dbo].[Total_Em]
GO
/****** Object:  View [dbo].[RELACION_F]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP VIEW [dbo].[RELACION_F]
GO
/****** Object:  View [dbo].[Relacion_2]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP VIEW [dbo].[Relacion_2]
GO
/****** Object:  View [dbo].[Relacion]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP VIEW [dbo].[Relacion]
GO
/****** Object:  View [dbo].[JOINS]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP VIEW [dbo].[JOINS]
GO
/****** Object:  View [dbo].[E_DATOS]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP VIEW [dbo].[E_DATOS]
GO
/****** Object:  View [dbo].[Agrupacion]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP VIEW [dbo].[Agrupacion]
GO
/****** Object:  Table [dbo].[Turno_Empleado]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP TABLE [dbo].[Turno_Empleado]
GO
/****** Object:  Table [dbo].[Tipos_Proveedores]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP TABLE [dbo].[Tipos_Proveedores]
GO
/****** Object:  Table [dbo].[Tipo_Pago]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP TABLE [dbo].[Tipo_Pago]
GO
/****** Object:  Table [dbo].[Tipo_Mesa]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP TABLE [dbo].[Tipo_Mesa]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP TABLE [dbo].[Proveedores]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP TABLE [dbo].[Productos]
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP TABLE [dbo].[Pedido]
GO
/****** Object:  Table [dbo].[Pago_Tarjeta]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP TABLE [dbo].[Pago_Tarjeta]
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP TABLE [dbo].[Pago]
GO
/****** Object:  Table [dbo].[Nomina]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP TABLE [dbo].[Nomina]
GO
/****** Object:  Table [dbo].[Mesa]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP TABLE [dbo].[Mesa]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP TABLE [dbo].[Factura]
GO
/****** Object:  Table [dbo].[Evento]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP TABLE [dbo].[Evento]
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP TABLE [dbo].[Empresa]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP TABLE [dbo].[Empleado]
GO
/****** Object:  Table [dbo].[Detalles_Cuenta]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP TABLE [dbo].[Detalles_Cuenta]
GO
/****** Object:  Table [dbo].[Cuenta]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP TABLE [dbo].[Cuenta]
GO
/****** Object:  Table [dbo].[Comida]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP TABLE [dbo].[Comida]
GO
/****** Object:  Table [dbo].[Comanda]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP TABLE [dbo].[Comanda]
GO
/****** Object:  Table [dbo].[Bebidas]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP TABLE [dbo].[Bebidas]
GO
/****** Object:  Table [dbo].[Banda]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP TABLE [dbo].[Banda]
GO
/****** Object:  Table [dbo].[Almacen]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP TABLE [dbo].[Almacen]
GO
/****** Object:  Table [dbo].[Acceso_Empleados]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP TABLE [dbo].[Acceso_Empleados]
GO
USE [master]
GO
/****** Object:  Database [BAR]    Script Date: 27/10/2018 12:35:19 a. m. ******/
DROP DATABASE [BAR]
GO
/****** Object:  Database [BAR]    Script Date: 27/10/2018 12:35:19 a. m. ******/
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
/****** Object:  Table [dbo].[Acceso_Empleados]    Script Date: 27/10/2018 12:35:19 a. m. ******/
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
/****** Object:  Table [dbo].[Almacen]    Script Date: 27/10/2018 12:35:20 a. m. ******/
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
/****** Object:  Table [dbo].[Banda]    Script Date: 27/10/2018 12:35:20 a. m. ******/
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
/****** Object:  Table [dbo].[Bebidas]    Script Date: 27/10/2018 12:35:20 a. m. ******/
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
/****** Object:  Table [dbo].[Comanda]    Script Date: 27/10/2018 12:35:20 a. m. ******/
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
/****** Object:  Table [dbo].[Comida]    Script Date: 27/10/2018 12:35:20 a. m. ******/
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
/****** Object:  Table [dbo].[Cuenta]    Script Date: 27/10/2018 12:35:20 a. m. ******/
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
/****** Object:  Table [dbo].[Detalles_Cuenta]    Script Date: 27/10/2018 12:35:20 a. m. ******/
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
/****** Object:  Table [dbo].[Empleado]    Script Date: 27/10/2018 12:35:20 a. m. ******/
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
/****** Object:  Table [dbo].[Empresa]    Script Date: 27/10/2018 12:35:20 a. m. ******/
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
/****** Object:  Table [dbo].[Evento]    Script Date: 27/10/2018 12:35:20 a. m. ******/
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
/****** Object:  Table [dbo].[Factura]    Script Date: 27/10/2018 12:35:20 a. m. ******/
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
/****** Object:  Table [dbo].[Mesa]    Script Date: 27/10/2018 12:35:20 a. m. ******/
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
/****** Object:  Table [dbo].[Nomina]    Script Date: 27/10/2018 12:35:20 a. m. ******/
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
/****** Object:  Table [dbo].[Pago]    Script Date: 27/10/2018 12:35:20 a. m. ******/
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
/****** Object:  Table [dbo].[Pago_Tarjeta]    Script Date: 27/10/2018 12:35:20 a. m. ******/
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
/****** Object:  Table [dbo].[Pedido]    Script Date: 27/10/2018 12:35:20 a. m. ******/
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
/****** Object:  Table [dbo].[Productos]    Script Date: 27/10/2018 12:35:20 a. m. ******/
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
/****** Object:  Table [dbo].[Proveedores]    Script Date: 27/10/2018 12:35:20 a. m. ******/
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
/****** Object:  Table [dbo].[Tipo_Mesa]    Script Date: 27/10/2018 12:35:20 a. m. ******/
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
/****** Object:  Table [dbo].[Tipo_Pago]    Script Date: 27/10/2018 12:35:20 a. m. ******/
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
/****** Object:  Table [dbo].[Tipos_Proveedores]    Script Date: 27/10/2018 12:35:20 a. m. ******/
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
/****** Object:  Table [dbo].[Turno_Empleado]    Script Date: 27/10/2018 12:35:20 a. m. ******/
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
/****** Object:  View [dbo].[Agrupacion]    Script Date: 27/10/2018 12:35:20 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Agrupacion]
AS(SELECT Nombre_Prod,  AVG (Precio_Prod)  as PROMEDIO FROM Productos GROUP BY Nombre_Prod)
GO
/****** Object:  View [dbo].[E_DATOS]    Script Date: 27/10/2018 12:35:20 a. m. ******/
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
/****** Object:  View [dbo].[JOINS]    Script Date: 27/10/2018 12:35:20 a. m. ******/
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
/****** Object:  View [dbo].[Relacion]    Script Date: 27/10/2018 12:35:20 a. m. ******/
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
/****** Object:  View [dbo].[Relacion_2]    Script Date: 27/10/2018 12:35:20 a. m. ******/
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
/****** Object:  View [dbo].[RELACION_F]    Script Date: 27/10/2018 12:35:20 a. m. ******/
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
/****** Object:  View [dbo].[Total_Em]    Script Date: 27/10/2018 12:35:20 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Total_Em]
AS (SELECT Nombre_Emp  From Empleado)
GO
/****** Object:  View [dbo].[VENTA]    Script Date: 27/10/2018 12:35:20 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VENTA]
AS(SELECT MIN (SubTotal) as Venta_Minima FROM Detalles_Compra
GROUP BY Id)
GO
INSERT [dbo].[Acceso_Empleados] ([Id_Acceso], [Id_Emp], [Hora_Entrada], [Hora_Salidad]) VALUES (1, 100, CAST(N'2018-10-15T12:00:00.000' AS DateTime), CAST(N'2018-10-15T19:00:00.000' AS DateTime))
INSERT [dbo].[Acceso_Empleados] ([Id_Acceso], [Id_Emp], [Hora_Entrada], [Hora_Salidad]) VALUES (2, 101, CAST(N'2018-10-15T12:00:00.000' AS DateTime), CAST(N'2018-10-15T19:00:00.000' AS DateTime))
INSERT [dbo].[Acceso_Empleados] ([Id_Acceso], [Id_Emp], [Hora_Entrada], [Hora_Salidad]) VALUES (3, 102, CAST(N'2018-10-15T12:00:00.000' AS DateTime), CAST(N'2018-10-15T19:00:00.000' AS DateTime))
INSERT [dbo].[Acceso_Empleados] ([Id_Acceso], [Id_Emp], [Hora_Entrada], [Hora_Salidad]) VALUES (4, 103, CAST(N'2018-10-15T12:00:00.000' AS DateTime), CAST(N'2018-10-15T19:00:00.000' AS DateTime))
INSERT [dbo].[Acceso_Empleados] ([Id_Acceso], [Id_Emp], [Hora_Entrada], [Hora_Salidad]) VALUES (5, 104, CAST(N'2018-10-15T19:00:00.000' AS DateTime), CAST(N'2018-10-16T02:00:00.000' AS DateTime))
INSERT [dbo].[Acceso_Empleados] ([Id_Acceso], [Id_Emp], [Hora_Entrada], [Hora_Salidad]) VALUES (6, 105, CAST(N'2018-10-15T19:00:00.000' AS DateTime), CAST(N'2018-10-16T02:00:00.000' AS DateTime))
INSERT [dbo].[Acceso_Empleados] ([Id_Acceso], [Id_Emp], [Hora_Entrada], [Hora_Salidad]) VALUES (7, 106, CAST(N'2018-10-15T19:00:00.000' AS DateTime), CAST(N'2018-10-16T02:00:00.000' AS DateTime))
INSERT [dbo].[Acceso_Empleados] ([Id_Acceso], [Id_Emp], [Hora_Entrada], [Hora_Salidad]) VALUES (8, 107, CAST(N'2018-10-15T19:00:00.000' AS DateTime), CAST(N'2018-10-16T02:00:00.000' AS DateTime))
INSERT [dbo].[Acceso_Empleados] ([Id_Acceso], [Id_Emp], [Hora_Entrada], [Hora_Salidad]) VALUES (9, 108, CAST(N'2018-10-15T19:00:00.000' AS DateTime), CAST(N'2018-10-16T02:00:00.000' AS DateTime))
INSERT [dbo].[Acceso_Empleados] ([Id_Acceso], [Id_Emp], [Hora_Entrada], [Hora_Salidad]) VALUES (10, 109, CAST(N'2018-10-15T19:00:00.000' AS DateTime), CAST(N'2018-10-16T02:00:00.000' AS DateTime))
INSERT [dbo].[Acceso_Empleados] ([Id_Acceso], [Id_Emp], [Hora_Entrada], [Hora_Salidad]) VALUES (11, 110, CAST(N'2018-10-15T19:00:00.000' AS DateTime), CAST(N'2018-10-16T02:00:00.000' AS DateTime))
INSERT [dbo].[Almacen] ([Id_Producto], [Nombre_Prod], [Cantidad_Prod]) VALUES (1, N'Cerveza', 250)
INSERT [dbo].[Almacen] ([Id_Producto], [Nombre_Prod], [Cantidad_Prod]) VALUES (2, N'Whiski', 30)
INSERT [dbo].[Almacen] ([Id_Producto], [Nombre_Prod], [Cantidad_Prod]) VALUES (3, N'Tequila', 30)
INSERT [dbo].[Almacen] ([Id_Producto], [Nombre_Prod], [Cantidad_Prod]) VALUES (4, N'Whiski', 30)
INSERT [dbo].[Almacen] ([Id_Producto], [Nombre_Prod], [Cantidad_Prod]) VALUES (5, N'Botana ', 200)
INSERT [dbo].[Almacen] ([Id_Producto], [Nombre_Prod], [Cantidad_Prod]) VALUES (6, N'Cachuates', 200)
INSERT [dbo].[Almacen] ([Id_Producto], [Nombre_Prod], [Cantidad_Prod]) VALUES (7, N'Semillas', 50)
INSERT [dbo].[Almacen] ([Id_Producto], [Nombre_Prod], [Cantidad_Prod]) VALUES (8, N'Carne Hamburguesa', 100)
INSERT [dbo].[Almacen] ([Id_Producto], [Nombre_Prod], [Cantidad_Prod]) VALUES (9, N'Salchicha', 100)
INSERT [dbo].[Almacen] ([Id_Producto], [Nombre_Prod], [Cantidad_Prod]) VALUES (10, N'Vasos y platos', 100)
INSERT [dbo].[Banda] ([Id_Banda], [Nombre_Banda], [Genero_Banda]) VALUES (1, N'Blop', N'Pop')
INSERT [dbo].[Banda] ([Id_Banda], [Nombre_Banda], [Genero_Banda]) VALUES (2, N'Magnificos', N'Jazz')
INSERT [dbo].[Banda] ([Id_Banda], [Nombre_Banda], [Genero_Banda]) VALUES (3, N'AC/DC', N'Rock')
INSERT [dbo].[Banda] ([Id_Banda], [Nombre_Banda], [Genero_Banda]) VALUES (4, N'Kiss', N'Rock')
INSERT [dbo].[Banda] ([Id_Banda], [Nombre_Banda], [Genero_Banda]) VALUES (5, N'Cafe tacuba', N'Pop')
INSERT [dbo].[Bebidas] ([Id_Bebida], [Nombre_Bebida], [Precio]) VALUES (1, N'Tequila Botella', 300)
INSERT [dbo].[Bebidas] ([Id_Bebida], [Nombre_Bebida], [Precio]) VALUES (2, N'Whisky Botella', 200)
INSERT [dbo].[Bebidas] ([Id_Bebida], [Nombre_Bebida], [Precio]) VALUES (3, N'Vodka Botella', 200)
INSERT [dbo].[Bebidas] ([Id_Bebida], [Nombre_Bebida], [Precio]) VALUES (4, N'Ron Botella', 250)
INSERT [dbo].[Bebidas] ([Id_Bebida], [Nombre_Bebida], [Precio]) VALUES (5, N'Cerveza ', 20)
INSERT [dbo].[Bebidas] ([Id_Bebida], [Nombre_Bebida], [Precio]) VALUES (6, N'Margarita', 40)
INSERT [dbo].[Bebidas] ([Id_Bebida], [Nombre_Bebida], [Precio]) VALUES (7, N'Caipirinha', 50)
INSERT [dbo].[Bebidas] ([Id_Bebida], [Nombre_Bebida], [Precio]) VALUES (8, N'Piña Colada', 45)
INSERT [dbo].[Bebidas] ([Id_Bebida], [Nombre_Bebida], [Precio]) VALUES (9, N'Vampiros', 40)
INSERT [dbo].[Bebidas] ([Id_Bebida], [Nombre_Bebida], [Precio]) VALUES (10, N'Mojito', 50)
INSERT [dbo].[Bebidas] ([Id_Bebida], [Nombre_Bebida], [Precio]) VALUES (11, N'Refresco', 20)
INSERT [dbo].[Bebidas] ([Id_Bebida], [Nombre_Bebida], [Precio]) VALUES (12, N'Agua', 20)
INSERT [dbo].[Bebidas] ([Id_Bebida], [Nombre_Bebida], [Precio]) VALUES (13, N'Jugo', 20)
INSERT [dbo].[Comanda] ([Id_Comanda], [Id_Emp], [Id_Mesa], [Id_Prod], [Cantidad_Prod], [Total], [Fecha]) VALUES (1, 100, 100, 2, 1, 40, CAST(N'2018-10-15T20:00:00.000' AS DateTime))
INSERT [dbo].[Comanda] ([Id_Comanda], [Id_Emp], [Id_Mesa], [Id_Prod], [Cantidad_Prod], [Total], [Fecha]) VALUES (2, 100, 100, 11, 6, 220, CAST(N'2018-10-15T20:00:00.000' AS DateTime))
INSERT [dbo].[Comanda] ([Id_Comanda], [Id_Emp], [Id_Mesa], [Id_Prod], [Cantidad_Prod], [Total], [Fecha]) VALUES (3, 101, 103, 1, 2, 50, CAST(N'2018-10-15T21:30:00.000' AS DateTime))
INSERT [dbo].[Comanda] ([Id_Comanda], [Id_Emp], [Id_Mesa], [Id_Prod], [Cantidad_Prod], [Total], [Fecha]) VALUES (4, 101, 103, 7, 1, 300, CAST(N'2018-10-15T21:00:00.000' AS DateTime))
INSERT [dbo].[Comanda] ([Id_Comanda], [Id_Emp], [Id_Mesa], [Id_Prod], [Cantidad_Prod], [Total], [Fecha]) VALUES (5, 100, 106, 9, 2, 400, CAST(N'2018-10-15T21:45:32.000' AS DateTime))
INSERT [dbo].[Comanda] ([Id_Comanda], [Id_Emp], [Id_Mesa], [Id_Prod], [Cantidad_Prod], [Total], [Fecha]) VALUES (6, 100, 106, 1, 3, 150, CAST(N'2018-10-15T21:56:10.000' AS DateTime))
INSERT [dbo].[Comanda] ([Id_Comanda], [Id_Emp], [Id_Mesa], [Id_Prod], [Cantidad_Prod], [Total], [Fecha]) VALUES (7, 101, 111, 11, 10, 200, CAST(N'2018-10-15T23:10:13.000' AS DateTime))
INSERT [dbo].[Comanda] ([Id_Comanda], [Id_Emp], [Id_Mesa], [Id_Prod], [Cantidad_Prod], [Total], [Fecha]) VALUES (8, 100, 112, 11, 8, 160, CAST(N'2018-10-15T23:18:33.000' AS DateTime))
INSERT [dbo].[Comanda] ([Id_Comanda], [Id_Emp], [Id_Mesa], [Id_Prod], [Cantidad_Prod], [Total], [Fecha]) VALUES (9, 100, 113, 11, 5, 100, CAST(N'2018-10-16T00:20:03.000' AS DateTime))
INSERT [dbo].[Comida] ([Id_Comida], [Nombre_Comida], [Precio_Comida]) VALUES (1, N'Hamburguesa', 50)
INSERT [dbo].[Comida] ([Id_Comida], [Nombre_Comida], [Precio_Comida]) VALUES (2, N'HotDog', 40)
INSERT [dbo].[Comida] ([Id_Comida], [Nombre_Comida], [Precio_Comida]) VALUES (3, N'Orden Tacos', 60)
INSERT [dbo].[Comida] ([Id_Comida], [Nombre_Comida], [Precio_Comida]) VALUES (4, N'Plato Cachuate', 20)
INSERT [dbo].[Comida] ([Id_Comida], [Nombre_Comida], [Precio_Comida]) VALUES (5, N'Plato Botana', 30)
INSERT [dbo].[Comida] ([Id_Comida], [Nombre_Comida], [Precio_Comida]) VALUES (6, N'Semillas', 20)
INSERT [dbo].[Cuenta] ([Id_Cuenta], [Id_Comanda], [Id_Tipo_Pago], [SubTotal], [Fecha]) VALUES (1, 1, 20, 40, CAST(N'2018-10-15' AS Date))
INSERT [dbo].[Cuenta] ([Id_Cuenta], [Id_Comanda], [Id_Tipo_Pago], [SubTotal], [Fecha]) VALUES (2, 2, 20, 220, CAST(N'2018-10-15' AS Date))
INSERT [dbo].[Cuenta] ([Id_Cuenta], [Id_Comanda], [Id_Tipo_Pago], [SubTotal], [Fecha]) VALUES (3, 4, 20, 300, CAST(N'2018-10-15' AS Date))
INSERT [dbo].[Cuenta] ([Id_Cuenta], [Id_Comanda], [Id_Tipo_Pago], [SubTotal], [Fecha]) VALUES (4, 5, 20, 400, CAST(N'2018-10-15' AS Date))
INSERT [dbo].[Cuenta] ([Id_Cuenta], [Id_Comanda], [Id_Tipo_Pago], [SubTotal], [Fecha]) VALUES (5, 7, 20, 200, CAST(N'2018-10-15' AS Date))
INSERT [dbo].[Empleado] ([Id_Empleado], [Id_Turno_Empleado], [Nombre_Emp], [Apellidos_Emp], [Puesto_Emp], [Sueldo_Emp_Hora], [Direccion_Emp], [Telefono_Emp]) VALUES (100, 10, N'Antonio ', N'Herrera', N'Mesero', 25, N'Granado 101', 25536614)
INSERT [dbo].[Empleado] ([Id_Empleado], [Id_Turno_Empleado], [Nombre_Emp], [Apellidos_Emp], [Puesto_Emp], [Sueldo_Emp_Hora], [Direccion_Emp], [Telefono_Emp]) VALUES (101, 10, N'Jose ', N'Tejada', N'Mesero', 25, N'Roma 102', 33255456)
INSERT [dbo].[Empleado] ([Id_Empleado], [Id_Turno_Empleado], [Nombre_Emp], [Apellidos_Emp], [Puesto_Emp], [Sueldo_Emp_Hora], [Direccion_Emp], [Telefono_Emp]) VALUES (102, 10, N'Jose ', N'Rodriguez', N'Cocinero', 30, N'Allende 103', 44552325)
INSERT [dbo].[Empleado] ([Id_Empleado], [Id_Turno_Empleado], [Nombre_Emp], [Apellidos_Emp], [Puesto_Emp], [Sueldo_Emp_Hora], [Direccion_Emp], [Telefono_Emp]) VALUES (103, 10, N'Ivan', N'Pedraza', N'Brtender', 40, N'Hidago 104', 55312642)
INSERT [dbo].[Empleado] ([Id_Empleado], [Id_Turno_Empleado], [Nombre_Emp], [Apellidos_Emp], [Puesto_Emp], [Sueldo_Emp_Hora], [Direccion_Emp], [Telefono_Emp]) VALUES (104, 20, N'David', N'Rodirguez', N'Mesero', 25, N'Escocia 15', 33665420)
INSERT [dbo].[Empleado] ([Id_Empleado], [Id_Turno_Empleado], [Nombre_Emp], [Apellidos_Emp], [Puesto_Emp], [Sueldo_Emp_Hora], [Direccion_Emp], [Telefono_Emp]) VALUES (105, 20, N'Ernesto', N'Briseño', N'Mesero', 25, N'Jazmin106', 88462201)
INSERT [dbo].[Empleado] ([Id_Empleado], [Id_Turno_Empleado], [Nombre_Emp], [Apellidos_Emp], [Puesto_Emp], [Sueldo_Emp_Hora], [Direccion_Emp], [Telefono_Emp]) VALUES (106, 20, N'Alejandro ', N'Batres', N'Mesero', 25, N'Arbol 107', 66425943)
INSERT [dbo].[Empleado] ([Id_Empleado], [Id_Turno_Empleado], [Nombre_Emp], [Apellidos_Emp], [Puesto_Emp], [Sueldo_Emp_Hora], [Direccion_Emp], [Telefono_Emp]) VALUES (107, 20, N'Gael', N'Dominguez', N'Cocinero', 30, N'Monte Kenya 105', 42100475)
INSERT [dbo].[Empleado] ([Id_Empleado], [Id_Turno_Empleado], [Nombre_Emp], [Apellidos_Emp], [Puesto_Emp], [Sueldo_Emp_Hora], [Direccion_Emp], [Telefono_Emp]) VALUES (108, 20, N'Samuel ', N'Marquez', N'Cocinero', 30, N'Galaxia 728', 55872013)
INSERT [dbo].[Empleado] ([Id_Empleado], [Id_Turno_Empleado], [Nombre_Emp], [Apellidos_Emp], [Puesto_Emp], [Sueldo_Emp_Hora], [Direccion_Emp], [Telefono_Emp]) VALUES (109, 20, N'Ramon', N'Barragan', N'Bartender', 40, N'Litio 233', 73015664)
INSERT [dbo].[Empleado] ([Id_Empleado], [Id_Turno_Empleado], [Nombre_Emp], [Apellidos_Emp], [Puesto_Emp], [Sueldo_Emp_Hora], [Direccion_Emp], [Telefono_Emp]) VALUES (110, 20, N'Daniel', N'Suarez', N'Bartender', 40, N'Chopo 876', 65542201)
INSERT [dbo].[Empleado] ([Id_Empleado], [Id_Turno_Empleado], [Nombre_Emp], [Apellidos_Emp], [Puesto_Emp], [Sueldo_Emp_Hora], [Direccion_Emp], [Telefono_Emp]) VALUES (111, 10, N'Josefina', N'Lozano', N'Mesero', 25, N'Calle 21', 55231002)
INSERT [dbo].[Empresa] ([Id_Empresa], [Nombre], [RFC], [Direccion], [Telefono], [Correo]) VALUES (1, N'Bar La Cantante', N'BLC01253462', N'Chapultepec 247, San Nicolas', 345578945, N'servicioalcleinte@lacantante.com')
INSERT [dbo].[Evento] ([Id_Evento], [Id_Banda], [Nombre_Evento], [Descripcion], [Costo]) VALUES (10, 1, N'Noches Magicas', N'Noche dedicada a la musica POP', 100)
INSERT [dbo].[Evento] ([Id_Evento], [Id_Banda], [Nombre_Evento], [Descripcion], [Costo]) VALUES (11, 2, N'Magnificante', N'Grupo Los magnificos en esta noche ', 75)
INSERT [dbo].[Evento] ([Id_Evento], [Id_Banda], [Nombre_Evento], [Descripcion], [Costo]) VALUES (12, 3, N'Clasica Velada', N'AC/DC Presente en nuestro bar', 250)
INSERT [dbo].[Evento] ([Id_Evento], [Id_Banda], [Nombre_Evento], [Descripcion], [Costo]) VALUES (13, 4, N'Give me a kiss', N'Toda la musica de este grupo se escuchara en nuestro bar ', 100)
INSERT [dbo].[Evento] ([Id_Evento], [Id_Banda], [Nombre_Evento], [Descripcion], [Costo]) VALUES (14, 5, N'Tacubar', N'Se presentara el grupo cafe tacuba durante la velada', 150)
INSERT [dbo].[Factura] ([Id_Factura], [Id_Empesa], [Id_Cuenta], [Nombre_Cli], [Apellido_Cli], [Id_Prod], [Canitdad_Prod], [Total]) VALUES (100, 1, 3, N'Eduardo Jesus', N'Martinez Lopezz', 7, 1, 300)
INSERT [dbo].[Factura] ([Id_Factura], [Id_Empesa], [Id_Cuenta], [Nombre_Cli], [Apellido_Cli], [Id_Prod], [Canitdad_Prod], [Total]) VALUES (101, 1, 4, N'Martin ', N'Lopez Hernandez', 9, 2, 400)
INSERT [dbo].[Mesa] ([Id_Mesa], [Id_Tipo_Mesa], [Status_Mesa]) VALUES (100, 10, 0)
INSERT [dbo].[Mesa] ([Id_Mesa], [Id_Tipo_Mesa], [Status_Mesa]) VALUES (101, 10, 1)
INSERT [dbo].[Mesa] ([Id_Mesa], [Id_Tipo_Mesa], [Status_Mesa]) VALUES (102, 10, 1)
INSERT [dbo].[Mesa] ([Id_Mesa], [Id_Tipo_Mesa], [Status_Mesa]) VALUES (103, 20, 0)
INSERT [dbo].[Mesa] ([Id_Mesa], [Id_Tipo_Mesa], [Status_Mesa]) VALUES (104, 20, 1)
INSERT [dbo].[Mesa] ([Id_Mesa], [Id_Tipo_Mesa], [Status_Mesa]) VALUES (105, 20, 1)
INSERT [dbo].[Mesa] ([Id_Mesa], [Id_Tipo_Mesa], [Status_Mesa]) VALUES (106, 30, 0)
INSERT [dbo].[Mesa] ([Id_Mesa], [Id_Tipo_Mesa], [Status_Mesa]) VALUES (107, 30, 1)
INSERT [dbo].[Mesa] ([Id_Mesa], [Id_Tipo_Mesa], [Status_Mesa]) VALUES (108, 30, 1)
INSERT [dbo].[Mesa] ([Id_Mesa], [Id_Tipo_Mesa], [Status_Mesa]) VALUES (109, 40, 1)
INSERT [dbo].[Mesa] ([Id_Mesa], [Id_Tipo_Mesa], [Status_Mesa]) VALUES (110, 40, 1)
INSERT [dbo].[Mesa] ([Id_Mesa], [Id_Tipo_Mesa], [Status_Mesa]) VALUES (111, 50, 0)
INSERT [dbo].[Mesa] ([Id_Mesa], [Id_Tipo_Mesa], [Status_Mesa]) VALUES (112, 50, 0)
INSERT [dbo].[Mesa] ([Id_Mesa], [Id_Tipo_Mesa], [Status_Mesa]) VALUES (113, 50, 0)
INSERT [dbo].[Mesa] ([Id_Mesa], [Id_Tipo_Mesa], [Status_Mesa]) VALUES (114, 50, 1)
INSERT [dbo].[Mesa] ([Id_Mesa], [Id_Tipo_Mesa], [Status_Mesa]) VALUES (115, 50, 1)
INSERT [dbo].[Mesa] ([Id_Mesa], [Id_Tipo_Mesa], [Status_Mesa]) VALUES (116, 50, 1)
INSERT [dbo].[Mesa] ([Id_Mesa], [Id_Tipo_Mesa], [Status_Mesa]) VALUES (117, 50, 1)
INSERT [dbo].[Mesa] ([Id_Mesa], [Id_Tipo_Mesa], [Status_Mesa]) VALUES (118, 50, 1)
INSERT [dbo].[Nomina] ([Id_Nominina], [Id_Emp], [Nombre_Emp], [Horas_Trabajadas], [Sueldo_Total]) VALUES (1, 100, N'Antonio Herrera', 7, 175)
INSERT [dbo].[Nomina] ([Id_Nominina], [Id_Emp], [Nombre_Emp], [Horas_Trabajadas], [Sueldo_Total]) VALUES (2, 101, N'Jose Tejada', 7, 175)
INSERT [dbo].[Nomina] ([Id_Nominina], [Id_Emp], [Nombre_Emp], [Horas_Trabajadas], [Sueldo_Total]) VALUES (3, 102, N'Jose rodriguez', 7, 210)
INSERT [dbo].[Nomina] ([Id_Nominina], [Id_Emp], [Nombre_Emp], [Horas_Trabajadas], [Sueldo_Total]) VALUES (4, 103, N'Ivan pedraza', 7, 230)
INSERT [dbo].[Nomina] ([Id_Nominina], [Id_Emp], [Nombre_Emp], [Horas_Trabajadas], [Sueldo_Total]) VALUES (5, 104, N'David Rodriguez', 7, 175)
INSERT [dbo].[Nomina] ([Id_Nominina], [Id_Emp], [Nombre_Emp], [Horas_Trabajadas], [Sueldo_Total]) VALUES (6, 105, N'Ernesto Briseño', 7, 175)
INSERT [dbo].[Nomina] ([Id_Nominina], [Id_Emp], [Nombre_Emp], [Horas_Trabajadas], [Sueldo_Total]) VALUES (7, 106, N'Alejandro Batres', 7, 175)
INSERT [dbo].[Nomina] ([Id_Nominina], [Id_Emp], [Nombre_Emp], [Horas_Trabajadas], [Sueldo_Total]) VALUES (8, 107, N'Gael Dominguez', 7, 210)
INSERT [dbo].[Nomina] ([Id_Nominina], [Id_Emp], [Nombre_Emp], [Horas_Trabajadas], [Sueldo_Total]) VALUES (9, 108, N'Samuel Marquez', 7, 210)
INSERT [dbo].[Nomina] ([Id_Nominina], [Id_Emp], [Nombre_Emp], [Horas_Trabajadas], [Sueldo_Total]) VALUES (10, 109, N'Ramon Barragan', 7, 230)
INSERT [dbo].[Nomina] ([Id_Nominina], [Id_Emp], [Nombre_Emp], [Horas_Trabajadas], [Sueldo_Total]) VALUES (11, 110, N'Daniel Suearez', 7, 230)
INSERT [dbo].[Pago] ([Id_Cuenta], [Id_Tipo_Pago], [Monto]) VALUES (1, 20, 40)
INSERT [dbo].[Pago] ([Id_Cuenta], [Id_Tipo_Pago], [Monto]) VALUES (2, 20, 220)
INSERT [dbo].[Pago] ([Id_Cuenta], [Id_Tipo_Pago], [Monto]) VALUES (3, 20, 300)
INSERT [dbo].[Pago] ([Id_Cuenta], [Id_Tipo_Pago], [Monto]) VALUES (4, 20, 400)
INSERT [dbo].[Pago] ([Id_Cuenta], [Id_Tipo_Pago], [Monto]) VALUES (5, 20, 200)
INSERT [dbo].[Pago_Tarjeta] ([Id_Tipo_Pago], [Id_Pago], [Nombre_Banco], [Nuero_Tarjeta]) VALUES (20, 1, N'Banorte', N'166485530142')
INSERT [dbo].[Productos] ([Id_Producto], [Id_Tipo_Producto], [Nombre_Prod], [Precio]) VALUES (1, 1, N'Hamburguesa', 50)
INSERT [dbo].[Productos] ([Id_Producto], [Id_Tipo_Producto], [Nombre_Prod], [Precio]) VALUES (2, 2, N'HotDog', 40)
INSERT [dbo].[Productos] ([Id_Producto], [Id_Tipo_Producto], [Nombre_Prod], [Precio]) VALUES (3, 3, N'Orden Tacos', 60)
INSERT [dbo].[Productos] ([Id_Producto], [Id_Tipo_Producto], [Nombre_Prod], [Precio]) VALUES (4, 4, N'Plato Cacahuate', 20)
INSERT [dbo].[Productos] ([Id_Producto], [Id_Tipo_Producto], [Nombre_Prod], [Precio]) VALUES (5, 5, N'Plato Botana', 30)
INSERT [dbo].[Productos] ([Id_Producto], [Id_Tipo_Producto], [Nombre_Prod], [Precio]) VALUES (6, 6, N'Semilas', 20)
INSERT [dbo].[Productos] ([Id_Producto], [Id_Tipo_Producto], [Nombre_Prod], [Precio]) VALUES (7, 100, N'Tequila Botella', 300)
INSERT [dbo].[Productos] ([Id_Producto], [Id_Tipo_Producto], [Nombre_Prod], [Precio]) VALUES (8, 101, N'Whisky Botella', 200)
INSERT [dbo].[Productos] ([Id_Producto], [Id_Tipo_Producto], [Nombre_Prod], [Precio]) VALUES (9, 102, N'Vodka Botella', 200)
INSERT [dbo].[Productos] ([Id_Producto], [Id_Tipo_Producto], [Nombre_Prod], [Precio]) VALUES (10, 103, N'Ron Botella', 250)
INSERT [dbo].[Productos] ([Id_Producto], [Id_Tipo_Producto], [Nombre_Prod], [Precio]) VALUES (11, 104, N'Cerveza', 20)
INSERT [dbo].[Productos] ([Id_Producto], [Id_Tipo_Producto], [Nombre_Prod], [Precio]) VALUES (12, 105, N'Margarita', 40)
INSERT [dbo].[Productos] ([Id_Producto], [Id_Tipo_Producto], [Nombre_Prod], [Precio]) VALUES (13, 106, N'Caipirinha', 40)
INSERT [dbo].[Proveedores] ([Id_Prov], [Nombre_Prov], [Id_Tipo_Prov], [Nombre_Prod], [Cantidad_Prod], [Telefono_Prov], [Correo_Prov], [Direccion], [Pais_Origen]) VALUES (1, N'Cerveceria Cuauhtemoc', 100, N'Cerveza', 250, 81812569, N'cerveceriacuauhtemoc@gmail.com', N'Monterrey', N'Mexico')
INSERT [dbo].[Proveedores] ([Id_Prov], [Nombre_Prov], [Id_Tipo_Prov], [Nombre_Prod], [Cantidad_Prod], [Telefono_Prov], [Correo_Prov], [Direccion], [Pais_Origen]) VALUES (2, N'Comercializadora Bts', 100, N'Whiski', 30, 81153242, N'licoresbts@hotmail.com', N'Delgancion Benito Juarez', N'Mexico')
INSERT [dbo].[Proveedores] ([Id_Prov], [Nombre_Prov], [Id_Tipo_Prov], [Nombre_Prod], [Cantidad_Prod], [Telefono_Prov], [Correo_Prov], [Direccion], [Pais_Origen]) VALUES (3, N'Licores S.A de C.V', 101, N'Tequila', 30, 68543688, N'josecuervo@gmail.com', N'Jalisco', N'Mexico')
INSERT [dbo].[Proveedores] ([Id_Prov], [Nombre_Prov], [Id_Tipo_Prov], [Nombre_Prod], [Cantidad_Prod], [Telefono_Prov], [Correo_Prov], [Direccion], [Pais_Origen]) VALUES (4, N'Brown-Forman', 102, N'Whiski', 30, 74269358, N'brownforman@gmail.com', N'Tennessee', N'Estados Unidos')
INSERT [dbo].[Proveedores] ([Id_Prov], [Nombre_Prov], [Id_Tipo_Prov], [Nombre_Prod], [Cantidad_Prod], [Telefono_Prov], [Correo_Prov], [Direccion], [Pais_Origen]) VALUES (5, N'Bokados', 200, N'Botana', 200, 8003442, N'contacto@bokados.com', N'Monterry', N'Mexico')
INSERT [dbo].[Proveedores] ([Id_Prov], [Nombre_Prov], [Id_Tipo_Prov], [Nombre_Prod], [Cantidad_Prod], [Telefono_Prov], [Correo_Prov], [Direccion], [Pais_Origen]) VALUES (6, N'Bokados', 200, N'Cachuates', 200, 85069914, N'carnesrojas@hotmail.com', N'Monterrey', N'Mexico')
INSERT [dbo].[Proveedores] ([Id_Prov], [Nombre_Prov], [Id_Tipo_Prov], [Nombre_Prod], [Cantidad_Prod], [Telefono_Prov], [Correo_Prov], [Direccion], [Pais_Origen]) VALUES (7, N'Bokados', 200, N'Semillas', 50, 85069214, N'carnesrojas@hotmail.com', N'Monterrey', N'Mexico')
INSERT [dbo].[Proveedores] ([Id_Prov], [Nombre_Prov], [Id_Tipo_Prov], [Nombre_Prod], [Cantidad_Prod], [Telefono_Prov], [Correo_Prov], [Direccion], [Pais_Origen]) VALUES (8, N'Carnes rojas', 201, N'Carne hamburguesa', 100, 81136920, N'servicioheb@gmail.com', N'Monterrey', N'Mexico')
INSERT [dbo].[Proveedores] ([Id_Prov], [Nombre_Prov], [Id_Tipo_Prov], [Nombre_Prod], [Cantidad_Prod], [Telefono_Prov], [Correo_Prov], [Direccion], [Pais_Origen]) VALUES (9, N'Carnes Rojas', 201, N'Salchichas ', 100, 81136920, N'carnesrojas@hotmail.com', N'Monterrey', N'Mexico')
INSERT [dbo].[Proveedores] ([Id_Prov], [Nombre_Prov], [Id_Tipo_Prov], [Nombre_Prod], [Cantidad_Prod], [Telefono_Prov], [Correo_Prov], [Direccion], [Pais_Origen]) VALUES (10, N'Proveedora Diaz', 300, N'Vasos y Platos', 100, 81427701, N'proveedordiaz@outook.com', N'Delgacion Cuauhtemoc', N'Mexico')
INSERT [dbo].[Tipo_Mesa] ([Id_Tipo_Mesa], [Capacidad_Mesa]) VALUES (10, 4)
INSERT [dbo].[Tipo_Mesa] ([Id_Tipo_Mesa], [Capacidad_Mesa]) VALUES (20, 6)
INSERT [dbo].[Tipo_Mesa] ([Id_Tipo_Mesa], [Capacidad_Mesa]) VALUES (30, 8)
INSERT [dbo].[Tipo_Mesa] ([Id_Tipo_Mesa], [Capacidad_Mesa]) VALUES (40, 10)
INSERT [dbo].[Tipo_Mesa] ([Id_Tipo_Mesa], [Capacidad_Mesa]) VALUES (50, 1)
INSERT [dbo].[Tipo_Pago] ([Id_Tipo_Pago], [Nombre_Pago]) VALUES (20, N'Tarjeta')
INSERT [dbo].[Tipos_Proveedores] ([Id_Tipo_Prov], [Nombre_Prod]) VALUES (100, N'Cerveceria Cuauhtemoc')
INSERT [dbo].[Tipos_Proveedores] ([Id_Tipo_Prov], [Nombre_Prod]) VALUES (101, N'Licores S.A de C.V')
INSERT [dbo].[Tipos_Proveedores] ([Id_Tipo_Prov], [Nombre_Prod]) VALUES (102, N'Brown-Forman')
INSERT [dbo].[Tipos_Proveedores] ([Id_Tipo_Prov], [Nombre_Prod]) VALUES (200, N'Bokados')
INSERT [dbo].[Tipos_Proveedores] ([Id_Tipo_Prov], [Nombre_Prod]) VALUES (201, N'Carnes rojas')
INSERT [dbo].[Tipos_Proveedores] ([Id_Tipo_Prov], [Nombre_Prod]) VALUES (300, N'Proveedora Diaz')
INSERT [dbo].[Turno_Empleado] ([Id_Turno_Empleado], [Turno_Desc]) VALUES (10, N'12 pm  a 7 pm')
INSERT [dbo].[Turno_Empleado] ([Id_Turno_Empleado], [Turno_Desc]) VALUES (20, N'7pm a 2 am')
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
/****** Object:  StoredProcedure [dbo].[NuevaComanda]    Script Date: 27/10/2018 12:35:21 a. m. ******/
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
/****** Object:  StoredProcedure [dbo].[NuevoEmpleado]    Script Date: 27/10/2018 12:35:21 a. m. ******/
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
/****** Object:  StoredProcedure [dbo].[NuevoProveedor]    Script Date: 27/10/2018 12:35:21 a. m. ******/
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
/****** Object:  StoredProcedure [dbo].[TotalVentas]    Script Date: 27/10/2018 12:35:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[TotalVentas]
@Total bigint
as SELECT AVG(Total) FROM  Comanda 
GO
/****** Object:  StoredProcedure [dbo].[TotalVentasEmp]    Script Date: 27/10/2018 12:35:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[TotalVentasEmp]
@Id_Emp bigint
as SELECT AVG(Total) FROM  Comanda 
GO
/****** Object:  Trigger [dbo].[Trigger_INS]    Script Date: 27/10/2018 12:35:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Trigger [dbo].[Trigger_INS]
on [dbo].[Bebidas]
instead of update --delete/*instaed
as
begin
	select * 
	from INSERTED -->tabla temporal, se pone la info que va llegando, solo existe para update e insert
	Select *
	from deleted -->tabla temporal, tiene la info que se va a borrar o que va de salida
end
GO
ALTER TABLE [dbo].[Bebidas] ENABLE TRIGGER [Trigger_INS]
GO
/****** Object:  Trigger [dbo].[EJEMPLO]    Script Date: 27/10/2018 12:35:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Trigger [dbo].[EJEMPLO] ON [dbo].[Cuenta]		
 AFTER INSERT 
 as SELECT * FROM Cuenta
GO
ALTER TABLE [dbo].[Cuenta] ENABLE TRIGGER [EJEMPLO]
GO
/****** Object:  Trigger [dbo].[EJEMPLO1]    Script Date: 27/10/2018 12:35:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Trigger [dbo].[EJEMPLO1] ON [dbo].[Empleado]		
 AFTER INSERT 
 as SELECT * FROM Empleado

 INSERT INTO Empleado
 Values(112,10,'Josefina','Lozano','Mesero',25,'Calle 21',55231002)
GO
ALTER TABLE [dbo].[Empleado] ENABLE TRIGGER [EJEMPLO1]
GO
/****** Object:  Trigger [dbo].[Trigger_DELE]    Script Date: 27/10/2018 12:35:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Trigger [dbo].[Trigger_DELE] ON [dbo].[Empleado]		
 INSTEAD OF DELETE
 AS BEGIN
 DELETE FROM Empleado WHERE Id_Empleado=112
 END
GO
ALTER TABLE [dbo].[Empleado] ENABLE TRIGGER [Trigger_DELE]
GO
/****** Object:  Trigger [dbo].[Trigger_UPD]    Script Date: 27/10/2018 12:35:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE TRIGGER [dbo].[Trigger_UPD]	ON [dbo].[Empleado]		
 INSTEAD OF UPDATE
 AS BEGIN
 select * 
	from INSERTED -->tabla temporal, se pone la info que va llegando, solo existe para update e insert
	Select *
	from deleted -->tabla temporal, tiene la info que se va a borrar o que va de salida
end
GO
ALTER TABLE [dbo].[Empleado] ENABLE TRIGGER [Trigger_UPD]
GO
/****** Object:  Trigger [dbo].[Trigger_UPDATE]    Script Date: 27/10/2018 12:35:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE TRIGGER [dbo].[Trigger_UPDATE]	ON [dbo].[Empleado]		
 INSTEAD OF Insert
 AS BEGIN
 select * 
	from INSERTED -->tabla temporal, se pone la info que va llegando, solo existe para update e insert
	Select *
	from deleted -->tabla temporal, tiene la info que se va a borrar o que va de salida
end
GO
ALTER TABLE [dbo].[Empleado] ENABLE TRIGGER [Trigger_UPDATE]
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
