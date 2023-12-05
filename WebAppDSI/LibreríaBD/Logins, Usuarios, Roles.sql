Use LibreriaBD
Go

--Creción de Login's

--LOGIN GLOBAL
--Login creado para realizar las pruebas de funcionamiento sin mayores complicaciones
CREATE LOGIN login_admin_GLOB
WITH PASSWORD = 'glove';
GO

--------------------------------------------------

CREATE LOGIN login_admin_dev
WITH PASSWORD = 'root';
GO
CREATE LOGIN login_gerente_luisfernandez
WITH PASSWORD = 'gerente4321';
GO
CREATE LOGIN login_rrhh_juanperez
WITH PASSWORD = 'rrhh4321';
GO
CREATE LOGIN login_vendedor_mariagonzalez
WITH PASSWORD = '1vendedor4321';
GO
CREATE LOGIN login_vendedor_pedrosanchez
WITH PASSWORD = '2vendedor4321';
GO
CREATE LOGIN login_bodeguero_carloslopez
WITH PASSWORD = 'bodeguero4321';
GO
CREATE LOGIN login_contador_anamartinez
WITH PASSWORD = 'contador4321';
GO

--Creción de Usuarios

--USUARIO GLOBAL
--Usuario creado para realizar las pruebas de funcionamiento sin mayores complicaciones
CREATE USER usr_admin_GLOB
FOR LOGIN login_admin_GLOB;
GO

--------------------------------------------------

CREATE USER usr_admin_dev
FOR LOGIN	login_admin_dev;
GO
CREATE USER usr_gerente_luisfernandez
FOR LOGIN	login_gerente_luisfernandez;
GO
CREATE USER usr_rrhh_juanperez
FOR LOGIN	login_rrhh_juanperez;
GO
CREATE USER usr_vendedor_mariagonzalez
FOR LOGIN	login_vendedor_mariagonzalez;
GO
CREATE USER usr_vendedor_pedrosanchez
FOR LOGIN	login_vendedor_pedrosanchez;
GO
CREATE USER usr_bodeguero_carloslopez
FOR LOGIN	login_bodeguero_carloslopez;
GO
CREATE USER usr_contador_anamartinez
FOR LOGIN	login_contador_anamartinez;
GO

--Creción de Roles

--ROL GLOBAL
--Rol creado para realizar las pruebas de funcionamiento sin mayores complicaciones
CREATE ROLE admin_GLOB;

--------------------------------------------------

CREATE ROLE SysAdmin;
CREATE ROLE Gerente;
CREATE ROLE RRHH;
CREATE ROLE Vendedor;
CREATE ROLE Bodeguero;
CREATE ROLE Contador;


--Agregar usuarios como miembros de un rol

--USUARIO A ROL GLOBAL
ALTER ROLE admin_GLOB ADD MEMBER usr_admin_GLOB;

--------------------------------------------------

ALTER ROLE SysAdmin ADD MEMBER usr_admin_dev;
ALTER ROLE Gerente ADD MEMBER usr_gerente_luisfernandez;
ALTER ROLE RRHH ADD MEMBER usr_rrhh_juanperez;
ALTER ROLE Vendedor ADD MEMBER usr_vendedor_mariagonzalez;
ALTER ROLE Vendedor ADD MEMBER usr_vendedor_pedrosanchez;
ALTER ROLE Bodeguero ADD MEMBER usr_bodeguero_carloslopez;
ALTER ROLE Contador ADD MEMBER usr_contador_anamartinez;

-- Otorgar permisos (opciones habilitadas) a usuarios mediante roles

--PERMISOS GLOBALES
grant control on database::LibreriaBD to admin_GLOB;
--------------------------------------------------

-- Para SysAdmin
grant select, insert, update, delete on dbo.Direcciones to SysAdmin;
grant select, insert, update, delete on dbo.Distritos to SysAdmin;
grant select, insert, update, delete on dbo.Municipios to SysAdmin;
grant select, insert, update, delete on dbo.Departamentos to SysAdmin;
grant select, insert, update on dbo.Usuarios to SysAdmin;
grant select on dbo.Empleados to SysAdmin;
grant select on dbo.Roles to SysAdmin;
grant select on dbo.Personas to SysAdmin;

--Para Gerente

grant select, insert, update on dbo.Empleados to Gerente;
grant select, insert, update, delete on dbo.Roles to Gerente;
grant select, insert, update, delete on dbo.FormasPagos to Gerente;
grant select, insert, update, delete on dbo.Opciones to Gerente;
grant select, insert, update, delete on dbo.AsignacionRolesOpciones to Gerente;
grant select, insert, update, delete on dbo.Direcciones to Gerente;
grant select, insert, update, delete on dbo.Proveedores to Gerente;
grant select, update on dbo.Clientes to Gerente;
grant select, update, delete on dbo.Compras to Gerente;
grant select, update, delete on dbo.DetallesCompras to Gerente;
grant select, update, delete on dbo.Ventas to Gerente;
grant select, update, delete on dbo.DetallesVentas to Gerente;
grant select on dbo.Usuarios to Gerente;
grant select on dbo.Departamentos to Gerente;
grant select on dbo.Municipios to Gerente;
grant select on dbo.Distritos to Gerente;
grant select on dbo.FacturasCompras to Gerente;
grant select on dbo.FacturasVentas to Gerente;
grant select on dbo.Personas to Gerente;
grant select on dbo.Articulos to Gerente;

--Para RRHH

grant select, insert, update on dbo.Empleados to RRHH;
grant select, insert, update on dbo.Personas to RRHH;
grant select, insert, update on dbo.Direcciones to RRHH;
grant select on dbo.Departamentos to RRHH;
grant select on dbo.Municipios to RRHH;
grant select on dbo.Distritos to RRHH;

--Para Vendedor

grant select on dbo.Usuarios to Vendedor;
grant select on dbo.Empleados to Vendedor;
grant select on dbo.Roles to Vendedor;
grant select on dbo.Articulos to Vendedor;
grant select, insert on dbo.Clientes to Vendedor;
grant select, insert on dbo.Personas to Vendedor;
grant select, insert on dbo.Direcciones to Vendedor;
grant select on dbo.Departamentos to Vendedor;
grant select on dbo.Municipios to Vendedor;
grant select on dbo.Distritos to Vendedor;
grant select, insert on dbo.Ventas to Vendedor;
grant select, insert on dbo.DetallesVentas to Vendedor;

--Para Bodeguero

grant select, insert on dbo.Articulos to Bodeguero;
grant select, insert on dbo.Proveedores to Bodeguero;
grant select, insert on dbo.Direcciones to Bodeguero;
grant select on dbo.Departamentos to Bodeguero;
grant select on dbo.Municipios to Bodeguero;
grant select on dbo.Distritos to Bodeguero;
grant select, insert on dbo.Compras to Bodeguero;
grant select, insert on dbo.DetallesCompras to Bodeguero;

--Para Contador

grant select on dbo.Empleados to Contador;
grant select on dbo.Roles to Contador;
grant select on dbo.FormasPagos to Contador;
grant select on dbo.Opciones to Contador;
grant select on dbo.AsignacionRolesOpciones to Contador;
grant select on dbo.Direcciones to Contador;
grant select on dbo.Proveedores to Contador;
grant select on dbo.Clientes to Contador;
grant select on dbo.Compras to Contador;
grant select on dbo.DetallesCompras to Contador;
grant select on dbo.Ventas to Contador;
grant select on dbo.DetallesVentas to Contador;
grant select on dbo.Usuarios to Contador;
grant select on dbo.Departamentos to Contador;
grant select on dbo.Municipios to Contador;
grant select on dbo.Distritos to Contador;
grant select, insert on dbo.FacturasCompras to Contador;
grant select, insert on dbo.FacturasVentas to Contador;
grant select on dbo.Personas to Contador;
grant select on dbo.Articulos to Contador;