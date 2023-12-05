/*
NOTA: Para evitar problemas de match con Java en Apache NetBeans (IDE 19 en mi caso),
hay que tomar las siguientes consideraciones a la hora de crear las tablas en el gestor:

1)Si se nombra los campos(atributos) con un "_" de por medio las letras antes del "_"
deben ser todas mayúsculas y nombrarse tal cual en el modelo para cada tabla.

2)Si se nombra los campos(atributos) con inicial mayúscula(como en mi caso <<Estilo pascal>>)
basta con hacer el único cambio de nombrarse la inicial minúscula(<<Estilo camel>>)
en el modelo.

3)Si se da el caso de nombrar todo el campo(atributo) en mayúscula(P.Ejm: DUI) es recomendable
nombrarse en el modelo completamente en minúscula(P.Ejm: dui).
*/
create database LibreriaBD
go
use LibreriaBD;
go

create table Departamentos(
IdDepartamento int primary key identity not null,
Departamento varchar(13) not null
);

create table Municipios(
IdMunicipio int primary key identity not null,
Municipio varchar(25) not null,
FkDepartamento int foreign key references Departamentos(IdDepartamento) not null,
);

create table Distritos(
IdDistrito int primary key identity not null,
Distrito varchar(50) not null,
FkMunicipio int foreign key references Municipios(IdMunicipio) not null,
);

create table Direcciones(
IdDireccion int primary key identity not null,
DescripcionDireccion varchar(150) not null,
FkDistrito int foreign key references Distritos(IdDistrito) not null
);

create table Personas(
IdPersona int primary key identity not null,
Nombres varchar(50) not null,
Apellidos varchar(50) not null,
Sexo varchar(9)
);

create table Empleados(
IdEmpleado int primary key identity not null,
FkPersona int foreign key references Personas(IdPersona) not null,
DUI varchar(10) not null,
FechaNac date not null,
ISSS varchar(20) not null,
FkDireccion int foreign key references Direcciones(IdDireccion) not null,
Telefono varchar(9) not null,
Correo varchar(45) null
);

create table Clientes(
IdCliente int primary key identity not null,
FkPersona int foreign key references Personas(IdPersona) not null,
Correo varchar(45) null
);

create table Proveedores(
IdProveedor int primary key identity not null,
NombreProveedor varchar(70) not null,
FkDireccion int not null,
Telefono varchar(9) not null,
Correo varchar(45) null 
);

create table Articulos(
IdArticulo int primary key identity not null,
NombreArticulo varchar(100) not null,
Descripcion varchar(200) not null
);
---------------------------Tablas agregadas---------------------------------------------
create table Roles(
IdRol int primary key identity not null,
Rol varchar(50) not null
);

create table Usuarios(
IdUsuario int primary key identity not null,
FkEmpleado int foreign key references Empleados(IdEmpleado) not null,
FkRol int foreign key references Roles(IdRol),
Usuario varchar(50) not null,
Clave varchar(100) not null
);

create table Opciones(
IdOpcion int primary key identity not null,
NombreOpcion varchar(100) not null
);

create table AsignacionRolesOpciones(
IdAsignacionRol int primary key identity not null,
FkRol int foreign key references Roles(IdRol) not null,
FkOpcion int foreign key references Opciones(IdOpcion) not null
);

-------------------------------------------------------------------------------------------

--Tablas modificadas
create table Compras(
IdCompra int primary key identity not null,
FkProveedor int foreign key references Proveedores(IdProveedor) not null,
FkUsuario int foreign key references Usuarios(IdUsuario) not null,
FechaCompra datetime not null
);

create table Ventas(
IdVenta int primary key identity not null,
FkCliente int foreign key references Clientes(IdCliente) not null,
FkUsuario int foreign key references Usuarios(IdUsuario) not null,
FechaVenta datetime not null
);
-------------------------------------------------------------------------------------------

create table DetallesCompras(
IdDetalleCompra int primary key identity not null,
FkArticulo int foreign key references Articulos(IdArticulo) not null,
FkCompra int foreign key references Compras(IdCompra) not null,
PrecioCompra money not null,
Cantidad int not null
);

create table DetallesVentas(
IdDetalleVenta int primary key identity not null,
FkArticulo int foreign key references Articulos(IdArticulo) not null,
FkVenta int foreign key references Ventas(IdVenta) not null,
PrecioVenta money not null,
Cantidad int not null
);

create table FormasPagos(
IdFormaPago int primary key identity not null,
FormaPago varchar(75) not null
);

create table FacturasVentas(
IdFactura int primary key identity not null,
NumFactura int not null,
CreditoFiscal varchar(10) not null,
FkFormaPago int foreign key references FormasPagos(IdFormaPago) not null,
FkDetallesVenta int foreign key references DetallesVentas(IdDetalleVenta) not null,
IVA varchar(45) not null,
NIT varchar(45) not null
);

create table FacturasCompras(
IdFactura int primary key identity not null,
NumFactura int not null,
CreditoFiscal varchar(10) not null,
FkFormaPago int foreign key references FormasPagos(IdFormaPago) not null,
FkDetallesCompra int foreign key references DetallesCompras(IdDetalleCompra) not null,
IVA varchar(45) not null,
NIT varchar(45) not null
);

