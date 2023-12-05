Use LibreriaBD
Go

INSERT INTO Departamentos (Departamento) VALUES
('Ahuachapán'),
('Sonsonate'),
('Santa Ana'),
('La Libertad'),
('Chalatenango'),
('San Salvador'),
('Cuscatlán'),
('La Paz'),
('Cabañas'),
('San Vicente'),
('Usulután'),
('San Miguel'),
('Morazán'),
('La Unión');

INSERT INTO Municipios (Municipio, FkDepartamento) VALUES
('Ahuachapán Norte',1),--1
('Ahuachapán Centro',1),--2
('Ahuachapán Sur',1),--3
('Sonsonate Norte',2),--4
('Sonsonate Centro',2),--5
('Sonsonate Este',2),--6
('Sonsonate Oeste',2),--7
('Santa Ana Norte',3),--8
('Santa Ana Centro',3),--9
('Santa Ana Este',3),--10
('Santa Ana Oeste',3),--11
('La Libertad Norte',4),--12
('La Libertad Centro',4),--13
('La Libertad Este',4),--14
('La Libertad Oeste',4),--15
('La Libertad Costa',4),--16
('La Libertad Sur',4),--17
('Chalatenango Norte',5),--18
('Chalatenango Centro',5),--19
('Chalatenango Sur',5),--20
('San Salvador Norte',6),--21
('San Salvador Centro',6),--22
('San Salvador Este',6),--23
('San Salvador Oeste',6),--24
('San Salvador Sur',6),--25
('Cuscatlán Norte',7),--26
('Cuscatlán Sur',7),--27
('La Paz Centro',8),--28
('La Paz Este',8),--29
('La Paz Oeste',8),--30
('Cabañas Este',9),--31
('Cabañas Oeste',9),--32
('San Vicente Norte',10),--33
('San Vicente Sur',10),--34
('Usulután Norte',11),--35
('Usulután Este',11),--36
('Usulután Oeste',11),--37
('San Miguel Norte',12),--38
('San Miguel Centro',12),--39
('San Miguel Oeste',12),--40
('Morazán Norte',13),--41
('Morazán Sur',13),--42
('La Unión Norte',14),--43
('La Unión Sur',14);--44

INSERT INTO Distritos (Distrito, FkMunicipio) VALUES
-- Ahuachapán
('Atiquizaya',1),--1
('El Refugio',1),--2
('San Lorenzo',1),--3
('Turín',1),--4
('Ahuachapán',2),--5
('Apaneca',2),--6
('Concepción de Ataco',2),--7
('Tacuba',2),--8
('Guaymango',3),--9
('Jujutla',3),--10
('San Francisco Menendez',3),--11
('San Pedro Puxtla',3),--12
-- Sonsonate
('Juayúa',4),--13
('Nahuizalco',4),--14
('Salcoatitán',4),--15
('Santa Catarina Masahuat',4),--16
('Sonsonate',5),--17
('Sonzacate',5),--18
('Nahulingo',5),--19
('San Antonio del Monte',5),--20
('Santo Domingo de Guzmán',5),--21
('lzalco',6),--22
('lzalco',6),--23
('lzalco',6),--24
('San Julián',6),--25
('Cuisnahuat',6),--26
('Santa Isabel lshuatán',6),--27
('Acajutla',7),--28
-- Santa Ana
('Masahuat',8),--29
('Metapán',8),--30
('Santa Rosa Guachipilín',8),--31
('Texistepeque',8),--32
('Santa Ana',9),--33
('Coatepeque',10),--34
('El congo',10),--35
('Candelaria de la Frontera', 11),--36
('Chalchuapa', 11),--37
('El Porvenir', 11),--38
('San Antonio Pajonal', 11),--39
('San Sebastián Salitrillo', 11),--40
('Santiago de La Frontera', 11),--41
-- La Libertad
('Quezaltepeque',12),--42
('San Matías',12),--43
('San Pablo Tacachico',12),--44
('San Juan Opico',13),--45
('Ciudad Arce',13),--46
('Antiguo Cuscatlán',14),--47
('Huizucar',14),--48
('Nuevo Cuscatlán',14),--49
('San José Villanueva',14),--50
('Zaragoza',14),--51
('Colón',15),--52
('Jayaque',15),--53
('Sacacoyo',15),--54
('Tepecoyo',15),--55
('Talnique',15),--56
('Chiltuipán',16),--57
('Jicalapa',16),--58
('La Libertad',16),--59
('Tamanique',16),--60
('Teotepeque',16),--61
('Comasagua',17),--62
('Santa Tecla',17),--63
-- Chalatenango
('La Palma',18),--64
('Citalá',18),--65
('San Ignacio',18),--66
('Nueva Concepción', 19),--67
('Tejutla', 19),--68
('La Reina', 19),--69
('Agua Caliente', 19),--70
('Dulce Nombre de María', 19),--71
('El Paraíso', 19),--72
('San Francisco Morazán', 19),--73
('San Rafael', 19),--74
('Santa Rita', 19),--75
('San Fernando', 19),--76
('Chalatenango', 20),--77
('Arcatao', 20),--78
('Azacualpa', 20),--79
('Comalapa', 20),--80
('Concepción Quezaltepeque', 20),--81
('El Carrizal', 20),--82
('La Laguna', 20),--83
('Las Vueltas', 20),--84
('Nombre de Jesús', 20),--85
('Nueva Trinidad', 20),--86
('Ojos de Agua', 20),--87
('Potonico', 20),--88
('San Antonio de La Cruz', 20),--89
('San Antonio Los Ranchos', 20),--90
('San Francisco Lempa', 20),--91
('San Isidro Labrador', 20),--92
('San José Cancasque', 20),--93
('San Miguel de Mercedes', 20),--94
('San José Las Flores', 20),--95
('San Luis del Carmen', 20),--96
-- San Salvador
('Aguilares',21),--97
('El Paisnal',21),--98
('Guazapa',21),--99
('Ayutuxtepeque',22),--100
('Mejicanos',22),--101
('San Salvador',22),--102
('Cuscatancingo',22),--103
('Ciudad Delgado',22),--104
('Ilopango',23),--105
('San Martín',23),--106
('Soyapango',23),--107
('Soyapango',23),--108
('Apopa',24),--109
('Apopa',24),--110
('Panchimalco',25),--111
('Rosario de Mora',25),--112
('San Marcos',25),--113
('Santo Tomás',25),--114
('Santiago Texacuangos',25),--115
-- Cuscatlán
('Suchitoto', 26),--116
('San José Guayabal', 26),--117
('Oratorio de Concepción', 26),--118
('San Bartolomé Perulapán', 26),--119
('San Pedro Perulapán', 26),--120
('Cojutepeque', 27),--121
('San Rafael Cedros', 27),--122
('Candelaria', 27),--123
('Monte San Juan', 27),--124
('El Carmen', 27),--125
('San Cristóbal', 27),--126
('Santa Cruz Michapa', 27),--127
('San Ramón', 27),--128
('El Rosario', 27),--129
('Santa Cruz Analquito', 27),--130
('Tenancingo', 27),--131
-- La Paz
('El Rosario', 28),--132
('Jerusalén', 28),--133
('Mercedes La Ceiba', 28),--134
('Paraíso de Osorio', 28),--135
('San Antonio Masahuat', 28),--136
('San Emigdio', 28),--137
('San Juan Tepezontes', 28),--138
('San Luis La Herradura', 28),--139
('San Miguel Tepezontes', 28),--140
('San Pedro Nonualco', 28),--141
('Santa María Ostuma', 28),--142
('Santiago Nonualco', 28),--143
('San Juan Nonualco', 29),--144
('San Rafael Obrajuelo', 29),--145
('Zacatecoluca', 29),--146
('Cuyultitán', 30),--147
('Olocuilta', 30),--148
('San Juan Talpa', 30),--149
('San Luis Talpa', 30),--150
('San Pedro Masahuat', 30),--151
('Tapalhuaca', 30),--152
('San Francisco Chinameca', 30),--153
-- Cabañas
('Sensuntepeque', 31),--154
('Victoria', 31),--155
('Dolores', 31),--156
('Guacotecti', 31),--157
('San Isidro', 31),--158
('Ilobasco', 32),--159
('Tejutepeque', 32),--160
('Jutiapa', 32),--161
('Cinquera', 32),--162
-- San Vicente
('Apastepeque', 33),--163
('Santa Clara', 33),--164
('San Ildefonso', 33),--165
('San Esteban Catarina', 33),--166
('San Sebastián', 33),--167
('San Lorenzo', 33),--168
('Santo Domingo', 33),--169
('San Vicente', 34),--170
('Guadalupe', 34),--171
('Verapaz', 34),--172
('Tepetitán', 34),--173
('Tecoluca', 34),--174
('San Cayetano lstepeque', 34),--175
-- Usulután
('Santiago de María', 35),--176
('Alegría', 35),--177
('Berlín', 35),--178
('Mercedes Umana', 35),--179
('Jucuapa', 35),--180
('El Triunfo', 35),--181
('Estanzuelas', 35),--182
('San Buenaventura', 35),--183
('Nueva Granada', 35),--184
('Usulután', 36),--185
('Jucuarán', 36),--186
('San Dionisio', 36),--187
('Concepción Batres', 36),--188
('Santa María', 36),--189
('Ozatlán', 36),--190
('Tecapán', 36),--191
('Santa Elena', 36),--192
('California', 36),--193
('Ereguayquín', 36),--194
('Jiquilisco', 37),--195
('Puerto El Triunfo', 37),--196
('San Agustín', 37),--197
('San Francisco Javier', 37),--198
--San Miguel
('Ciudad Barrios', 38),--199
('Sesori', 38),--200
('Nuevo Edén de San Juan', 38),--201
('San Gerardo', 38),--202
('San Luis de La Reina', 38),--203
('Carolina', 38),--204
('San Antonio del Mosco', 38),--205
('Chapeltique', 38),--206
('San Miguel', 39),--207
('Comacarán', 39),--208
('Uluazapa', 39),--209
('Moncagua', 39),--210
('Quelepa', 39),--211
('Chirilagua', 39),--212
('Chinameca', 40),--213
('Nueva Guadalupe', 40),--214
('Lolotique', 40),--215
('San Jorge', 40),--216
('San Rafael Oriente', 40),--217
('El Tránsito', 40),--218
-- Morazán
('Arambala', 41),--219
('Cacaopera', 41),--220
('Corinto', 41),--221
('El Rosario', 41),--222
('Joateca', 41),--223
('Jocoaitique', 41),--224
('Meanguera', 41),--225
('Perquín', 41),--226
('San Fernando', 41),--227
('San Isidro', 41),--228
('Torola', 41),--229
('Chilanga', 42),--230
('Delicias de Concepción', 42),--231
('El Divisadero', 42),--232
('Gualococti', 42),--233
('Guatajiagua', 42),--234
('Jocoro', 42),--235
('Lolotiquillo', 42),--236
('Osicala', 42),--237
('San Carlos', 42),--238
('San Francisco Gotera', 42),--239
('San Simón', 42),--240
('Sensembra', 42),--241
('Sociedad', 42),--242
('Yamabal', 42),--243
('Yoloaiquín', 42),--244
--La Unión
('Anamorós', 43),--245
('Bolivar', 43),--246
('Concepción de Oriente', 43),--247
('El Sauce', 43),--248
('Lislique', 43),--249
('Nueva Esparta', 43),--250
('Pasaquina', 43),--251
('Polorós', 43),--252
('San José La Fuente', 43),--253
('Santa Rosa de Lima', 43),--254
('Conchagua', 44),--255
('El Carmen', 44),--256
('lntipucá', 44),--257
('La Unión', 44),--258
('Meanguera del Golfo', 44),--259
('San Alejo', 44),--260
('Yayantique', 44),--261
('Yucuaiquín', 44);--262

INSERT INTO Direcciones (DescripcionDireccion, FkDistrito) VALUES
('Calle Flores, San Rafael',63),
('La Angélica',17),
('Calle El Bosque',192),
('Avenida San Martín',101),
('Barrio San Antonio',78),
('San Juan Loma Alta',117),
('Matarrita',258),
('Nahuaterique',219),
('Tempisque',154),
('Los Romeros',133);

INSERT INTO Personas (Nombres, Apellidos, Sexo) VALUES
('Juan', 'Pérez', 'Masculino'),
('María', 'González', 'Femenino'),
('Carlos', 'López', 'Masculino'),
('Ana', 'Martínez', 'Femenino'),
('Pedro', 'Sánchez', 'Masculino'),
('Luis', 'Fernández', 'Masculino'),
('Sofía', 'Ramírez', 'Femenino'),
('Javier', 'Gómez', 'Masculino'),
('Carmen', 'Hernández', 'Femenino'),
('Dolores', 'Contreras', 'Femenino'),
('Diego', 'Torres', 'Masculino');

INSERT INTO Empleados (FkPersona, DUI, FechaNac, ISSS, FkDireccion, Telefono, Correo) VALUES
(1, '00100200-1', '1990-05-15', 'ISSS-12345', 1, '7777-7777', 'empleado1@example.com'),
(2, '00400500-2', '1985-08-22', 'ISSS-67890', 2, '8888-8888', 'empleado2@example.com'),
(3, '00700800-3', '1992-02-10', 'ISSS-24680', 3, '9999-9999', 'empleado3@example.com'),
(4, '01001101-4', '1988-11-30', 'ISSS-13579', 4, '6666-6666', 'empleado4@example.com'),
(5, '01301401-5', '1995-07-03', 'ISSS-98765', 5, '5555-5555', 'empleado5@example.com'),
(6, '01103401-4', '1980-07-25', 'ISSS-97365', 2, '5555-5555', 'empleado5@example.com');

INSERT INTO Clientes (FkPersona, Correo) VALUES
(7, 'cliente1@example.com'),
(8, 'cliente2@example.com'),
(9, 'cliente3@example.com'),
(10, 'cliente4@example.com'),
(11, 'cliente5@example.com');

INSERT INTO Proveedores (NombreProveedor, FkDireccion, Telefono, Correo) VALUES
('Proveedor1', 1, '2222-3333', 'proveedor1@example.com'),
('Proveedor2', 2, '3333-4444', 'proveedor2@example.com'),
('Proveedor3', 3, '5555-6666', 'proveedor3@example.com'),
('Proveedor4', 4, '7777-8888', 'proveedor4@example.com'),
('Proveedor5', 5, '9999-0000', 'proveedor5@example.com');

INSERT INTO Articulos (NombreArticulo, Descripcion) VALUES
('Lapicero', 'BIC, Azul'),
('Resma de papel','Páginas blancas'),
('Estuche de geometría','Plástico, color anaranjado'),
('Pilo','BIC, negro'),
('Caja de colores','NORMA, 48 unidades');

INSERT INTO Roles (Rol) VALUES
('Administrador del sistema'),
('Gerente'),
('Recursos humanos'),
('Vendedor'),
('Bodeguero'),
('Contador');

INSERT INTO Usuarios (FkEmpleado, FkRol, Usuario, Clave) VALUES
(1,1,'Administrador1','Admin_1'),
(2,2,'Gerente1','Ger_1'),
(3,3,'RRHH_1','rrhh_1'),
(4,4,'Vendedor1','Vende_1'),
(5,5,'Bodeguero1','Bode_1'),
(6,6,'Contador1','Conta_1');

INSERT INTO Opciones (NombreOpcion) VALUES
('Insertar'),
('Leer'),
('Actualizar'),
('Eliminar');

INSERT INTO AsignacionRolesOpciones (FkRol, FkOpcion) VALUES
(1,1),
(1,2),
(1,3),
(1,4),
(2,1),
(2,2),
(2,3),
(2,4),
(3,1),
(3,2),
(3,3),
(4,1),
(4,2),
(5,1),
(5,2),
(6,1),
(6,2);

INSERT INTO Compras (FkProveedor, FkUsuario, FechaCompra) VALUES
(1, 5, '2023-09-14 10:00:00'),
(2, 5, '2023-09-14 10:30:00'),
(3, 5, '2023-09-14 11:00:00'),
(4, 5, '2023-09-14 11:30:00'),
(5, 5, '2023-09-14 12:00:00');

INSERT INTO DetallesCompras(FkArticulo, FkCompra, PrecioCompra, Cantidad) VALUES
(1, 1, 10.99, 5),
(2, 2, 15.99, 3),
(3, 3, 8.49, 7),
(4, 4, 12.75, 4),
(5, 5, 9.99, 6);

INSERT INTO Ventas (FkCliente, FkUsuario, FechaVenta) VALUES
(1, 4, '2023-09-15 08:30:00'),
(2, 4, '2023-09-15 09:15:00'),
(3, 4, '2023-09-15 10:00:00'),
(4, 4, '2023-09-15 11:30:00'),
(5, 4, '2023-09-15 12:45:00');

INSERT INTO DetallesVentas (FkArticulo, FkVenta, PrecioVenta, Cantidad) VALUES
(1, 1, 10.99, 3),
(2, 2, 15.50, 2),
(3, 3, 8.75, 4),
(4, 4, 12.25, 1),
(5, 5, 9.99, 5);

INSERT INTO FormasPagos (FormaPago) VALUES
('Efectivo'),
('Tarjeta de Crédito'),
('Transferencia Bancaria'),
('Cheque'),
('PayPal');

INSERT INTO FacturasVentas (NumFactura, CreditoFiscal, FkFormaPago, FkDetallesVenta, IVA, NIT) VALUES
(1001, 'CF001', 1, 1, '13%', '123456789-0'),
(1002, 'CF002', 2, 2, '13%', '987654321-0'),
(1003, 'CF003', 3, 3, '13%', '456789123-0'),
(1004, 'CF004', 4, 4, '13%', '789123456-0'),
(1005, 'CF005', 5, 5, '13%', '321654987-0');

INSERT INTO FacturasCompras (NumFactura, CreditoFiscal, FkFormaPago, FkDetallesCompra, IVA, NIT) VALUES
(2001, 'CF001', 1, 1, '13%', '223456789-3'),
(2002, 'CF002', 2, 2, '13%', '787654321-1'),
(2003, 'CF003', 3, 3, '13%', '356789123-3'),
(2004, 'CF004', 4, 4, '13%', '989123456-2'),
(2005, 'CF005', 5, 5, '13%', '221654987-1');

