--Vista de direcciones completas
Create view VistaDireccionCompleta as
	Select
		a.IdDireccion, a.DescripcionDireccion, b.IdDistrito, b.Distrito,
		c.IdMunicipio, c.Municipio, d.IdDepartamento, d.Departamento
	From Direcciones a
	Inner join Distritos b on a.FkDistrito = b.IdDistrito
	Inner join Municipios c on b.FkMunicipio = c.IdMunicipio
	Inner join Departamentos d on c.FkDepartamento = d.IdDepartamento
Go

--Vista de información completa de usuario/empleado
Create view VistaInformacionEmpleado as
	Select
		c.IdEmpleado, c.FkPersona, c.DUI, c.FechaNac, c.ISSS, c.FkDireccion,
		c.Telefono, c.Correo, d.Nombres, d.Apellidos, d.Sexo,
		e.DescripcionDireccion + ', ' + e.Distrito + ', ' +
		e.Municipio + ', ' +  e.Departamento as DireccionCompleta,
		a.IdUsuario, a.Usuario, b.IdRol, b.Rol
	From Usuarios a
	Inner join Roles b on a.FkRol = b.IdRol
	Inner join Empleados c on a.FkEmpleado = c.IdEmpleado
	Inner join Personas d on c.FkPersona = d.IdPersona
	Inner join VistaDireccionCompleta e on c.FkDireccion = e.IdDireccion
Go