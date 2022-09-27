use master
CREATE DATABASE PROYECTOCERTIFICADOR
GO
USE PROYECTOCERTIFICADOR

GO

CREATE TABLE  CATEGORIA(
IdCategoria int primary key identity,
Descripcion varchar(50),
Estado bit default 1,
FechaCreacion datetime default getdate()
)


GO

CREATE TABLE  PISO(
IdPiso int primary key identity,
Descripcion varchar(50),
Estado bit default 1,
FechaCreacion datetime default getdate()
)

go

CREATE TABLE  ESTADO_HABITACION(
IdEstadoHabitacion int primary key,
Descripcion varchar(50),
Estado bit default 1,
FechaCreacion datetime default getdate()
)

go

CREATE TABLE  HABITACION(
IdHabitacion int primary key identity,
Numero varchar(50),
ValorNumero int,
Detalle varchar(100),
Precio decimal(10,2) not null,
IdEstadoHabitacion int references ESTADO_HABITACION(IdEstadoHabitacion),
IdPiso int references PISO(IdPiso),
IdCategoria int references CATEGORIA(IdCategoria),
Estado bit default 1,
FechaCreacion datetime default getdate()
)


go

create table PRODUCTO(
IdProducto int primary key identity,
Codigo varchar(100),
ValorCodigo int,
Nombre varchar(50),
Detalle varchar(100),
Precio decimal(10,2) not null,
Cantidad int not null,
Estado bit default 1,
FechaCreacion datetime default getdate()
)

go
CREATE TABLE TIPO_PERSONA(
IdTipoPersona  int primary key,
Descripcion varchar(50),
Estado bit default 1,
FechaCreacion datetime default getdate()
)

go

CREATE TABLE PERSONA(
IdPersona int primary key identity,
TipoDocumento  varchar(5) not null,
Documento varchar(8) not null,
Nombre varchar(50) not null,
Apellido varchar(50) not null,
Correo varchar(50) UNIQUE not null,
Clave varchar(100),
IdTipoPersona int references TIPO_PERSONA(IdTipoPersona),
Estado bit default 1,
FechaCreacion datetime default getdate()
)


go


CREATE TABLE RECEPCION(
IdRecepcion int primary key identity,
IdCliente int references PERSONA(IdPersona),
IdHabitacion int references HABITACION(IdHabitacion),
FechaEntrada datetime default getdate(),
FechaSalida datetime,
FechaSalidaConfirmacion datetime,
PrecioInicial decimal(10,2),
Adelanto decimal(10,2),
PrecioRestante decimal(10,2),
TotalPagado decimal(10,2) default 0,
CostoPenalidad decimal(10,2) default 0,
Observacion varchar(500),
Estado bit
)

go

create table VENTA(
IdVenta int primary key identity,
IdRecepcion int references RECEPCION(IdRecepcion),
Total decimal(10,2),
Estado varchar(50) 
)

go

create table DETALLE_VENTA(
IdDetalleVenta int primary key identity,
IdVenta int references VENTA(IdVenta),
IdProducto int references PRODUCTO(IdProducto),
Cantidad int,
SubTotal decimal(10,2)
)

go

create table PRERECEPCION(
IdEvento int primary key identity,
Tema varchar(100) not null,
Descripcion varchar(200) not null,
FechaEntrada datetime default getdate(),
FechaSalida datetime,
ColorTema varchar(100) not null,
IsFullDay bit
)