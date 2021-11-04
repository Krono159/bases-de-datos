USE master
go
DROP DATABASE AgenciaA
CREATE DATABASE AgenciaA
GO
USE AgenciaA
GO

create table ARRENDATARIOS (
	idCedulaArrendatario INT PRIMARY KEY,
	nombreArrendatario VARCHAR(50),
	apellidoArrendatario VARCHAR(50),
	correoArrendatario VARCHAR(50),
	direccionArrendatario VARCHAR(50),
	celularArrendatario VARCHAR(50),
	telefonoArrendatario VARCHAR(50),
	nombreEmpresa VARCHAR(50),
	telefonoEmpresa VARCHAR(50),
	cartaLaboral VARCHAR(2)
);
create table ASESORES (
	idCedulaAsesor INT PRIMARY KEY,
	nombreAsesor VARCHAR(50),
	direccionAsesor VARCHAR(50),
	celularAsesor VARCHAR(50),
	correoAsesor VARCHAR(50),
	nombreContacto VARCHAR(50),
	telefonoContacto VARCHAR(50)
);


create table PROPIETARIOS (
	idCedulaPropietario INT PRIMARY KEY,
	nombrePropietario VARCHAR(50),
	apellidoPropietario VARCHAR(50),
	direccionPropietario VARCHAR(50),
	telefonoPropietario VARCHAR(50),
	celularPropietario VARCHAR(50),
	correoPropietario VARCHAR(50),
	numeroCuentaBancaria INT,
	tipoCuenta VARCHAR(9),
	matriculaCasa INT
);

create table USUARIOS (
	IDUsuario INT PRIMARY KEY,
	nombreUsuario VARCHAR(50),
	apellidoUsuario VARCHAR(50),
	nombreEmpresa VARCHAR(50),
	celularUsuario VARCHAR(50),
	correoUsuario VARCHAR(50)
);


create table SEDES (
	idSede INT PRIMARY KEY,
	nombreSede VARCHAR(6),
	direccionSede VARCHAR(50),
	telefonoSede VARCHAR(50),
	nombreBarrio VARCHAR(8),
	nombreAdministrador VARCHAR(50)
);

create table FIADORES (
	idCedulaFiador INT PRIMARY KEY,
	nombreFiador VARCHAR(50),
	apellidoFiador VARCHAR(50),
	nombreEmpresaFiador VARCHAR(50),
	celularFiador VARCHAR(50),
	correoFiador VARCHAR(50),
	salarioFiador DECIMAL(9,2),
	cartaLaboralFiador VARCHAR(2)
);

create table INMUEBLES (
	idInmueble INT PRIMARY KEY,
	idAsesor INT,
	idPropietario INT,
	idArrendatario INT,
	IdUsuario INT,
	tipoInmueble VARCHAR(14),
	tipoCocina VARCHAR(13),
	numeroHabitaciones INT,
	numeroPatios INT,
	numeroBaños INT,
	servicioAgua VARCHAR(2),
	serviicioGas VARCHAR(2),
	servicioLuz VARCHAR(2),
	redTelecomunicaciones VARCHAR(2),
	piscinaInmueble VARCHAR(2),
	unidadCerrada VARCHAR(2),
	barrioInmueble VARCHAR(18),
	direccionInmueble VARCHAR(50),
	estadoInmueble VARCHAR(12),
	estratoInmueble INT,
	garajeInmueble VARCHAR(2),
	gymInmueble VARCHAR(2),
	salonSocial VARCHAR(2),
	areaInmueble DECIMAL(5,2)
	FOREIGN KEY (idAsesor) REFERENCES ASESORES (idCedulaAsesor),
	FOREIGN KEY (idPropietario) REFERENCES PROPIETARIOS (idCedulaPropietario),
	FOREIGN KEY (idArrendatario) REFERENCES ARRENDATARIOS (idCedulaArrendatario),
);

create table INMU_SEDE (
	idInmuSede INT PRIMARY KEY,
	idSede INT,
	idInmueble INT,
	FOREIGN KEY (idSede) REFERENCES SEDES (idSede),
	FOREIGN KEY (idInmueble) REFERENCES INMUEBLES (idInmueble)
);

create table USUARIO_INMUEBLE (
	idUsuInmu INT PRIMARY KEY,
	idUsuario INT,
	idInmueble INT,
	cantidadVisitas INT,
	FOREIGN KEY (idUsuario) REFERENCES USUARIOS (idUsuario),
	FOREIGN KEY (idInmueble) REFERENCES INMUEBLES (idInmueble)
);




create table SOLICITUDES (
	IdSolicitud INT,
	IdUsuario INT,
	IdInmueble INT,
	IdCedulaFiador INT,
	CartaLaboralUsuario VARCHAR(50),
	SalarioUsuario VARCHAR(50),
	CertificadoPropiedad VARCHAR(50),
	FechaSolicitud VARCHAR (50),
	FOREIGN KEY (idUsuario) REFERENCES USUARIOS (idUsuario),
	FOREIGN KEY (IdInmueble) REFERENCES INMUEBLES (IdInmueble),
	FOREIGN KEY (IdCedulaFiador) REFERENCES FIADORES (IdCedulaFiador)

);

create table CONTRATOS (
	idContrato INT,
	idSede INT,
	idFiador INT,
	idArrendatario INT
	FOREIGN KEY (idSede) REFERENCES SEDES (idSede),
	FOREIGN KEY (idFiador) REFERENCES FIADORES (idCedulaFiador),
	FOREIGN KEY (idArrendatario) REFERENCES ARRENDATARIOS (idCedulaArrendatario)
);


insert into ARRENDATARIOS (idCedulaArrendatario, nombreArrendatario, apellidoArrendatario, correoArrendatario, direccionArrendatario, celularArrendatario, telefonoArrendatario, nombreEmpresa, telefonoEmpresa, cartaLaboral) values (204515408, 'Tiffani', 'Cocozza', 'tcocozza0@spotify.com', '64661 Sutherland Hill', '234 584 5128', '646 392 3684', 'Flipstorm', '163 334 6595', 'No');
insert into ARRENDATARIOS (idCedulaArrendatario, nombreArrendatario, apellidoArrendatario, correoArrendatario, direccionArrendatario, celularArrendatario, telefonoArrendatario, nombreEmpresa, telefonoEmpresa, cartaLaboral) values (195733399, 'Marga', 'Lenoir', 'mlenoir1@cmu.edu', '26144 Westend Park', '261 845 9154', '257 967 3922', 'Avavee', '134 635 9768', 'Si');
insert into ARRENDATARIOS (idCedulaArrendatario, nombreArrendatario, apellidoArrendatario, correoArrendatario, direccionArrendatario, celularArrendatario, telefonoArrendatario, nombreEmpresa, telefonoEmpresa, cartaLaboral) values (847016041, 'Karlee', 'Ousby', 'kousby2@1und1.de', '6562 Larry Alley', '586 761 9915', '948 744 7882', 'Jetwire', '758 939 6620', 'No');
insert into ARRENDATARIOS (idCedulaArrendatario, nombreArrendatario, apellidoArrendatario, correoArrendatario, direccionArrendatario, celularArrendatario, telefonoArrendatario, nombreEmpresa, telefonoEmpresa, cartaLaboral) values (868003840, 'Ange', 'Colam', 'acolam3@mlb.com', '1683 Talisman Hill', '682 851 6354', '429 251 1046', 'Blogtag', '560 440 4539', 'No');
insert into ARRENDATARIOS (idCedulaArrendatario, nombreArrendatario, apellidoArrendatario, correoArrendatario, direccionArrendatario, celularArrendatario, telefonoArrendatario, nombreEmpresa, telefonoEmpresa, cartaLaboral) values (188312453, 'Alanson', 'Ousbie', 'aousbie4@samsung.com', '0882 Upham Trail', '811 417 1267', '182 149 8903', 'Voomm', '412 152 4294', 'Si');
insert into ARRENDATARIOS (idCedulaArrendatario, nombreArrendatario, apellidoArrendatario, correoArrendatario, direccionArrendatario, celularArrendatario, telefonoArrendatario, nombreEmpresa, telefonoEmpresa, cartaLaboral) values (949203869, 'Sara-ann', 'Farrington', 'sfarrington5@ning.com', '2 Twin Pines Place', '879 209 7641', '246 562 1589', 'Feednation', '724 197 8830', 'No');
insert into ARRENDATARIOS (idCedulaArrendatario, nombreArrendatario, apellidoArrendatario, correoArrendatario, direccionArrendatario, celularArrendatario, telefonoArrendatario, nombreEmpresa, telefonoEmpresa, cartaLaboral) values (721437984, 'Hube', 'Hatherall', 'hhatherall6@nbcnews.com', '7 Sloan Drive', '212 654 6262', '244 660 9298', 'Trupe', '742 752 8147', 'Si');
insert into ARRENDATARIOS (idCedulaArrendatario, nombreArrendatario, apellidoArrendatario, correoArrendatario, direccionArrendatario, celularArrendatario, telefonoArrendatario, nombreEmpresa, telefonoEmpresa, cartaLaboral) values (744752842, 'Mark', 'Foucard', 'mfoucard7@squidoo.com', '31 Arizona Way', '205 995 5032', '744 937 8359', 'Eayo', '864 139 4151', 'No');
insert into ARRENDATARIOS (idCedulaArrendatario, nombreArrendatario, apellidoArrendatario, correoArrendatario, direccionArrendatario, celularArrendatario, telefonoArrendatario, nombreEmpresa, telefonoEmpresa, cartaLaboral) values (473055131, 'Ardath', 'Aishford', 'aaishford8@wired.com', '67708 Eagle Crest Road', '770 336 8274', '363 395 2800', 'Photobean', '524 790 4245', 'No');
insert into ARRENDATARIOS (idCedulaArrendatario, nombreArrendatario, apellidoArrendatario, correoArrendatario, direccionArrendatario, celularArrendatario, telefonoArrendatario, nombreEmpresa, telefonoEmpresa, cartaLaboral) values (382841423, 'Tremaine', 'Kinleyside', 'tkinleyside9@clickbank.net', '9604 Muir Court', '170 648 0233', '445 446 4500', 'Zava', '846 436 5157', 'Si');


insert into ASESORES (idCedulaAsesor, nombreAsesor, direccionAsesor, celularAsesor, correoAsesor, nombreContacto, telefonoContacto) values (323467777, 'Rozalie Goldthorp', '3017 Pierstorff Avenue', '742 133 1326', 'znuccii0@disqus.com', 'Zorah Nuccii', '146 834 9945');
insert into ASESORES (idCedulaAsesor, nombreAsesor, direccionAsesor, celularAsesor, correoAsesor, nombreContacto, telefonoContacto) values (849029947, 'Sisile Lavell', '7568 Prairie Rose Drive', '373 338 6933', 'buppett1@spiegel.de', 'Briny Uppett', '137 594 0791');
insert into ASESORES (idCedulaAsesor, nombreAsesor, direccionAsesor, celularAsesor, correoAsesor, nombreContacto, telefonoContacto) values (315057798, 'Seward Skelton', '76 Bunting Hill', '353 988 0799', 'cdilliston2@jugem.jp', 'Correy Dilliston', '456 274 0316');
insert into ASESORES (idCedulaAsesor, nombreAsesor, direccionAsesor, celularAsesor, correoAsesor, nombreContacto, telefonoContacto) values (248367564, 'Inness Roakes', '079 Union Lane', '750 741 3570', 'zvequaud3@bravesites.com', 'Zulema Vequaud', '728 403 5074');
insert into ASESORES (idCedulaAsesor, nombreAsesor, direccionAsesor, celularAsesor, correoAsesor, nombreContacto, telefonoContacto) values (245858956, 'Jennilee Eddy', '102 Tomscot Drive', '817 311 4609', 'rlandell4@youku.com', 'Raphael Landell', '495 743 4782');
insert into ASESORES (idCedulaAsesor, nombreAsesor, direccionAsesor, celularAsesor, correoAsesor, nombreContacto, telefonoContacto) values (476840658, 'Creight Leas', '20036 Sommers Street', '970 493 2451', 'jterbrugge5@amazon.de', 'Jillayne Terbrugge', '100 535 9106');
insert into ASESORES (idCedulaAsesor, nombreAsesor, direccionAsesor, celularAsesor, correoAsesor, nombreContacto, telefonoContacto) values (798334309, 'Debby Elster', '2801 Bartillon Park', '526 661 4245', 'kantonignetti6@diigo.com', 'Kristine Antonignetti', '525 229 0916');
insert into ASESORES (idCedulaAsesor, nombreAsesor, direccionAsesor, celularAsesor, correoAsesor, nombreContacto, telefonoContacto) values (472223383, 'Toma Ughini', '315 Moose Parkway', '828 473 3622', 'ncoyett7@vimeo.com', 'Noella Coyett', '507 264 1968');
insert into ASESORES (idCedulaAsesor, nombreAsesor, direccionAsesor, celularAsesor, correoAsesor, nombreContacto, telefonoContacto) values (742246243, 'Randie Dudin', '823 Hollow Ridge Road', '676 386 2124', 'cabbis8@google.com.br', 'Carlo Abbis', '629 116 1123');
insert into ASESORES (idCedulaAsesor, nombreAsesor, direccionAsesor, celularAsesor, correoAsesor, nombreContacto, telefonoContacto) values (445706658, 'Lucienne Kennsley', '09037 Westerfield Road', '366 912 6313', 'ttiuit9@mozilla.org', 'Terza Tiuit', '848 456 6130');


insert into PROPIETARIOS (idCedulaPropietario, nombrePropietario, apellidoPropietario, direccionPropietario, telefonoPropietario, celularPropietario, correoPropietario, numeroCuentaBancaria, tipoCuenta, matriculaCasa) values (908854893, 'Reinwald', 'Skowcraft', '9 Lawn Lane', '246 510 9862', '595 376 0216', 'rskowcraft0@unc.edu', 472357961, 'Ahorros', 873);
insert into PROPIETARIOS (idCedulaPropietario, nombrePropietario, apellidoPropietario, direccionPropietario, telefonoPropietario, celularPropietario, correoPropietario, numeroCuentaBancaria, tipoCuenta, matriculaCasa) values (831649143, 'Gilberta', 'Zolini', '8 Schiller Center', '987 584 8889', '515 624 4666', 'gzolini1@ocn.ne.jp', 314536757, 'Corriente', 339);
insert into PROPIETARIOS (idCedulaPropietario, nombrePropietario, apellidoPropietario, direccionPropietario, telefonoPropietario, celularPropietario, correoPropietario, numeroCuentaBancaria, tipoCuenta, matriculaCasa) values (474049097, 'Timoteo', 'Cescoti', '5 Nelson Terrace', '482 894 6507', '548 970 7594', 'tcescoti2@ihg.com', 136211047, 'Corriente', 603);
insert into PROPIETARIOS (idCedulaPropietario, nombrePropietario, apellidoPropietario, direccionPropietario, telefonoPropietario, celularPropietario, correoPropietario, numeroCuentaBancaria, tipoCuenta, matriculaCasa) values (440975218, 'Artemus', 'Romanetti', '04 Jenna Court', '924 996 3080', '247 427 3841', 'aromanetti3@miitbeian.gov.cn', 15819674, 'Corriente', 628);
insert into PROPIETARIOS (idCedulaPropietario, nombrePropietario, apellidoPropietario, direccionPropietario, telefonoPropietario, celularPropietario, correoPropietario, numeroCuentaBancaria, tipoCuenta, matriculaCasa) values (700563634, 'Petronella', 'Jaycox', '52 Center Circle', '288 783 3959', '803 481 5741', 'pjaycox4@who.int', 668953536, 'Ahorros', 953);
insert into PROPIETARIOS (idCedulaPropietario, nombrePropietario, apellidoPropietario, direccionPropietario, telefonoPropietario, celularPropietario, correoPropietario, numeroCuentaBancaria, tipoCuenta, matriculaCasa) values (432530325, 'Othelia', 'Kloska', '4 Pleasure Circle', '286 876 1953', '843 715 5271', 'okloska5@angelfire.com', 229108519, 'Ahorros', 586);
insert into PROPIETARIOS (idCedulaPropietario, nombrePropietario, apellidoPropietario, direccionPropietario, telefonoPropietario, celularPropietario, correoPropietario, numeroCuentaBancaria, tipoCuenta, matriculaCasa) values (754029860, 'Herta', 'Rive', '0718 Garrison Place', '969 983 3815', '109 928 4402', 'hrive6@microsoft.com', 328428451, 'Corriente', 858);
insert into PROPIETARIOS (idCedulaPropietario, nombrePropietario, apellidoPropietario, direccionPropietario, telefonoPropietario, celularPropietario, correoPropietario, numeroCuentaBancaria, tipoCuenta, matriculaCasa) values (952905643, 'Prentiss', 'Tivnan', '40269 Crescent Oaks Parkway', '375 924 1262', '199 780 4116', 'ptivnan7@upenn.edu', 140772412, 'Corriente', 451);
insert into PROPIETARIOS (idCedulaPropietario, nombrePropietario, apellidoPropietario, direccionPropietario, telefonoPropietario, celularPropietario, correoPropietario, numeroCuentaBancaria, tipoCuenta, matriculaCasa) values (944928465, 'Conrado', 'Swinfen', '709 Dorton Avenue', '396 469 9772', '846 744 4967', 'cswinfen8@com.com', 342715151, 'Corriente', 503);
insert into PROPIETARIOS (idCedulaPropietario, nombrePropietario, apellidoPropietario, direccionPropietario, telefonoPropietario, celularPropietario, correoPropietario, numeroCuentaBancaria, tipoCuenta, matriculaCasa) values (479646556, 'Melodie', 'Carnihan', '439 Havey Center', '794 381 2554', '479 187 8719', 'mcarnihan9@howstuffworks.com', 417333049, 'Ahorros', 284);


insert into SEDES (idSede, nombreSede, direccionSede, telefonoSede, nombreBarrio, nombreAdministrador) values (1, 'SEDE 1', '99 Holmberg Pass', '190 978 2595', 'Belen', 'Vilma Shaefer');
insert into SEDES (idSede, nombreSede, direccionSede, telefonoSede, nombreBarrio, nombreAdministrador) values (2, 'SEDE 2', '309 Summit Trail', '246 699 5465', 'Robledo', 'Rhea De Atta');
insert into SEDES (idSede, nombreSede, direccionSede, telefonoSede, nombreBarrio, nombreAdministrador) values (3, 'SEDE 3', '71321 Badeau Trail', '910 449 3975', 'Poblado', 'Dorise Hedan');
insert into SEDES (idSede, nombreSede, direccionSede, telefonoSede, nombreBarrio, nombreAdministrador) values (4, 'SEDE 4', '3 Hanover Junction', '997 502 7185', 'Manrique', 'Harlen Klos');
insert into SEDES (idSede, nombreSede, direccionSede, telefonoSede, nombreBarrio, nombreAdministrador) values (5, 'SEDE 5', '54 Magdeline Pass', '349 544 9419', 'Laureles', 'Pooh Frith');
insert into SEDES (idSede, nombreSede, direccionSede, telefonoSede, nombreBarrio, nombreAdministrador) values (6, 'SEDE 1', '240 Buell Hill', '240 617 9586', 'Belen', 'Glenden Smye');
insert into SEDES (idSede, nombreSede, direccionSede, telefonoSede, nombreBarrio, nombreAdministrador) values (7, 'SEDE 2', '1 Corscot Park', '181 792 1621', 'Robledo', 'Nicolais Galpin');
insert into SEDES (idSede, nombreSede, direccionSede, telefonoSede, nombreBarrio, nombreAdministrador) values (8, 'SEDE 3', '01 Melvin Trail', '950 275 6949', 'Poblado', 'Karmen Addicott');
insert into SEDES (idSede, nombreSede, direccionSede, telefonoSede, nombreBarrio, nombreAdministrador) values (9, 'SEDE 4', '0925 Beilfuss Avenue', '846 658 7734', 'Manrique', 'Hannis Culshaw');
insert into SEDES (idSede, nombreSede, direccionSede, telefonoSede, nombreBarrio, nombreAdministrador) values (10, 'SEDE 5', '80646 Lakeland Lane', '154 872 8991', 'Laureles', 'Paige Dorling');



insert into INMUEBLES (idInmueble, idAsesor, idPropietario, idArrendatario, tipoInmueble, tipoCocina, numeroHabitaciones, numeroPatios, numeroBaños, servicioAgua, serviicioGas, servicioLuz, redTelecomunicaciones, piscinaInmueble, unidadCerrada, barrioInmueble, direccionInmueble, estadoInmueble, estratoInmueble, garajeInmueble, gymInmueble, salonSocial, areaInmueble) values (1, 323467777, 908854893, 204515408, 'Apartamento', 'Semi Integral', 4, 2, 2, 'Si', 'Si', 'Si', 'Si', 'No', 'No', 'Robledo Pilarica', '9639 Homewood Terrace', 'Arrendado', 2, 'No', 'Si', 'Si', 70.22);
insert into INMUEBLES (idInmueble, idAsesor, idPropietario, idArrendatario, tipoInmueble, tipoCocina, numeroHabitaciones, numeroPatios, numeroBaños, servicioAgua, serviicioGas, servicioLuz, redTelecomunicaciones, piscinaInmueble, unidadCerrada, barrioInmueble, direccionInmueble, estadoInmueble, estratoInmueble, garajeInmueble, gymInmueble, salonSocial, areaInmueble) values (2, 849029947, 831649143, 195733399, 'Casa', 'Semi Integral', 4, 2, 1, 'Si', 'Si', 'No', 'Si', 'No', 'No', 'Poblado', '44 Haas Crossing', 'Arrendado', 4, 'No', 'No', 'No', 104.65);
insert into INMUEBLES (idInmueble, idAsesor, idPropietario, idArrendatario, tipoInmueble, tipoCocina, numeroHabitaciones, numeroPatios, numeroBaños, servicioAgua, serviicioGas, servicioLuz, redTelecomunicaciones, piscinaInmueble, unidadCerrada, barrioInmueble, direccionInmueble, estadoInmueble, estratoInmueble, garajeInmueble, gymInmueble, salonSocial, areaInmueble) values (3, 315057798, 474049097, 847016041, 'Casa', 'Semi Integral', 4, 2, 4, 'Si', 'Si', 'Si', 'No', 'No', 'No', 'Milagrosa', '5 Nobel Terrace', 'Por Arrendar', 1, 'Si', 'Si', 'No', 193.53);
insert into INMUEBLES (idInmueble, idAsesor, idPropietario, idArrendatario, tipoInmueble, tipoCocina, numeroHabitaciones, numeroPatios, numeroBaños, servicioAgua, serviicioGas, servicioLuz, redTelecomunicaciones, piscinaInmueble, unidadCerrada, barrioInmueble, direccionInmueble, estadoInmueble, estratoInmueble, garajeInmueble, gymInmueble, salonSocial, areaInmueble) values (4, 248367564, 440975218, 868003840, 'Aparta Estudio', 'Integral', 5, 3, 4, 'No', 'Si', 'No', 'No', 'Si', 'Si', 'Rodeo Alto', '65951 Michigan Trail', 'Arrendado', 3, 'No', 'No', 'Si', 229.62);
insert into INMUEBLES (idInmueble, idAsesor, idPropietario, idArrendatario, tipoInmueble, tipoCocina, numeroHabitaciones, numeroPatios, numeroBaños, servicioAgua, serviicioGas, servicioLuz, redTelecomunicaciones, piscinaInmueble, unidadCerrada, barrioInmueble, direccionInmueble, estadoInmueble, estratoInmueble, garajeInmueble, gymInmueble, salonSocial, areaInmueble) values (5, 245858956, 700563634, 188312453, 'Casa', 'Semi Integral', 4, 2, 1, 'No', 'Si', 'No', 'No', 'Si', 'No', 'Campo Valdez', '0278 Oak Trail', 'Arrendado', 1, 'No', 'Si', 'Si', 85.78);
insert into INMUEBLES (idInmueble, idAsesor, idPropietario, idArrendatario, tipoInmueble, tipoCocina, numeroHabitaciones, numeroPatios, numeroBaños, servicioAgua, serviicioGas, servicioLuz, redTelecomunicaciones, piscinaInmueble, unidadCerrada, barrioInmueble, direccionInmueble, estadoInmueble, estratoInmueble, garajeInmueble, gymInmueble, salonSocial, areaInmueble) values (6, 476840658, 432530325, 949203869, 'Casa', 'Integral', 2, 3, 5, 'Si', 'Si', 'Si', 'Si', 'No', 'No', 'Belen San Bernardo', '4273 Old Shore Junction', 'Arrendado', 2, 'Si', 'No', 'No', 178.11);
insert into INMUEBLES (idInmueble, idAsesor, idPropietario, idArrendatario, tipoInmueble, tipoCocina, numeroHabitaciones, numeroPatios, numeroBaños, servicioAgua, serviicioGas, servicioLuz, redTelecomunicaciones, piscinaInmueble, unidadCerrada, barrioInmueble, direccionInmueble, estadoInmueble, estratoInmueble, garajeInmueble, gymInmueble, salonSocial, areaInmueble) values (7, 798334309, 754029860, 721437984, 'Aparta Estudio', 'Semi Integral', 2, 1, 3, 'No', 'Si', 'No', 'Si', 'No', 'No', 'Milagrosa', '72 Laurel Pass', 'Arrendado', 5, 'No', 'Si', 'Si', 218.81);
insert into INMUEBLES (idInmueble, idAsesor, idPropietario, idArrendatario, tipoInmueble, tipoCocina, numeroHabitaciones, numeroPatios, numeroBaños, servicioAgua, serviicioGas, servicioLuz, redTelecomunicaciones, piscinaInmueble, unidadCerrada, barrioInmueble, direccionInmueble, estadoInmueble, estratoInmueble, garajeInmueble, gymInmueble, salonSocial, areaInmueble) values (8, 472223383, 952905643, 744752842, 'Bodega', 'Semi Integral', 3, 1, 4, 'Si', 'No', 'No', 'No', 'Si', 'No', 'Milagrosa', '70257 4th Plaza', 'Por Arrendar', 1, 'Si', 'Si', 'No', 109.98);
insert into INMUEBLES (idInmueble, idAsesor, idPropietario, idArrendatario, tipoInmueble, tipoCocina, numeroHabitaciones, numeroPatios, numeroBaños, servicioAgua, serviicioGas, servicioLuz, redTelecomunicaciones, piscinaInmueble, unidadCerrada, barrioInmueble, direccionInmueble, estadoInmueble, estratoInmueble, garajeInmueble, gymInmueble, salonSocial, areaInmueble) values (9, 742246243, 944928465, 473055131, 'Bodega', 'Integral', 3, 3, 3, 'No', 'No', 'No', 'No', 'No', 'Si', 'Robledo Aures', '4 International Point', 'Por Arrendar', 5, 'Si', 'No', 'Si', 282.03);
insert into INMUEBLES (idInmueble, idAsesor, idPropietario, idArrendatario, tipoInmueble, tipoCocina, numeroHabitaciones, numeroPatios, numeroBaños, servicioAgua, serviicioGas, servicioLuz, redTelecomunicaciones, piscinaInmueble, unidadCerrada, barrioInmueble, direccionInmueble, estadoInmueble, estratoInmueble, garajeInmueble, gymInmueble, salonSocial, areaInmueble) values (10, 445706658, 479646556, 382841423, 'Bodega', 'Semi Integral', 5, 3, 2, 'Si', 'No', 'No', 'No', 'No', 'No', 'Rodeo Alto', '2 Quincy Way', 'Arrendado', 4, 'No', 'No', 'No', 64.87);


insert into USUARIOS (idUsuario, nombreUsuario, apellidoUsuario, nombreEmpresa, celularUsuario, correoUsuario) values (699609278, 'Benita', 'Horsewood', 'Wordpedia', '139 155 0245', 'bhorsewood0@imgur.com');
insert into USUARIOS (idUsuario, nombreUsuario, apellidoUsuario, nombreEmpresa, celularUsuario, correoUsuario) values (735706006, 'Ilaire', 'Aspital', 'Fivespan', '281 195 5474', 'iaspital1@e-recht24.de');
insert into USUARIOS (idUsuario, nombreUsuario, apellidoUsuario, nombreEmpresa, celularUsuario, correoUsuario) values (927338113, 'Glennie', 'Degnen', 'Voonix', '144 348 2226', 'gdegnen2@zdnet.com');
insert into USUARIOS (idUsuario, nombreUsuario, apellidoUsuario, nombreEmpresa, celularUsuario, correoUsuario) values (155595912, 'Dre', 'Vasilechko', 'Feedmix', '976 776 3676', 'dvasilechko3@time.com');
insert into USUARIOS (idUsuario, nombreUsuario, apellidoUsuario, nombreEmpresa, celularUsuario, correoUsuario) values (126448440, 'Blair', 'Jorger', 'Topicstorm', '899 551 1141', 'bjorger4@psu.edu');
insert into USUARIOS (idUsuario, nombreUsuario, apellidoUsuario, nombreEmpresa, celularUsuario, correoUsuario) values (208438029, 'Emmerich', 'Pennock', 'Feedfire', '749 728 8834', 'epennock5@gnu.org');
insert into USUARIOS (idUsuario, nombreUsuario, apellidoUsuario, nombreEmpresa, celularUsuario, correoUsuario) values (529458490, 'Raynell', 'Bockman', 'Edgeclub', '936 382 3627', 'rbockman6@lulu.com');
insert into USUARIOS (idUsuario, nombreUsuario, apellidoUsuario, nombreEmpresa, celularUsuario, correoUsuario) values (969180679, 'Lon', 'Bouchier', 'Wikizz', '495 615 8403', 'lbouchier7@cloudflare.com');
insert into USUARIOS (idUsuario, nombreUsuario, apellidoUsuario, nombreEmpresa, celularUsuario, correoUsuario) values (369531145, 'Ulla', 'Matton', 'Photobug', '916 447 6848', 'umatton8@weibo.com');
insert into USUARIOS (idUsuario, nombreUsuario, apellidoUsuario, nombreEmpresa, celularUsuario, correoUsuario) values (293648893, 'Hewett', 'Ofener', 'Fatz', '653 231 3515', 'hofener9@sourceforge.net');



insert into INMU_SEDE (idInmuSede, idSede, idInmueble) values (1, 1, 1);
insert into INMU_SEDE (idInmuSede, idSede, idInmueble) values (2, 2, 2);
insert into INMU_SEDE (idInmuSede, idSede, idInmueble) values (3, 3, 3);
insert into INMU_SEDE (idInmuSede, idSede, idInmueble) values (4, 4, 4);
insert into INMU_SEDE (idInmuSede, idSede, idInmueble) values (5, 5, 5);
insert into INMU_SEDE (idInmuSede, idSede, idInmueble) values (6, 6, 6);
insert into INMU_SEDE (idInmuSede, idSede, idInmueble) values (7, 7, 7);
insert into INMU_SEDE (idInmuSede, idSede, idInmueble) values (8, 8, 8);
insert into INMU_SEDE (idInmuSede, idSede, idInmueble) values (9, 9, 9);
insert into INMU_SEDE (idInmuSede, idSede, idInmueble) values (10, 10, 10);



insert into USUARIO_INMUEBLE (idUsuInmu, idUsuario, idInmueble, cantidadVisitas) values (1,699609278, 1, 12);
insert into USUARIO_INMUEBLE (idUsuInmu, idUsuario, idInmueble, cantidadVisitas) values (2,735706006, 2, 37);
insert into USUARIO_INMUEBLE (idUsuInmu, idUsuario, idInmueble, cantidadVisitas) values (3,927338113, 3, 73);
insert into USUARIO_INMUEBLE (idUsuInmu, idUsuario, idInmueble, cantidadVisitas) values (4,155595912, 4, 5);
insert into USUARIO_INMUEBLE (idUsuInmu, idUsuario, idInmueble, cantidadVisitas) values (5,126448440, 5, 39);
insert into USUARIO_INMUEBLE (idUsuInmu, idUsuario, idInmueble, cantidadVisitas) values (6,208438029, 6, 16);
insert into USUARIO_INMUEBLE (idUsuInmu, idUsuario, idInmueble, cantidadVisitas) values (7,529458490, 7, 14);
insert into USUARIO_INMUEBLE (idUsuInmu, idUsuario, idInmueble, cantidadVisitas) values (8,969180679, 8, 3);
insert into USUARIO_INMUEBLE (idUsuInmu, idUsuario, idInmueble, cantidadVisitas) values (9,369531145, 9, 39);
insert into USUARIO_INMUEBLE (idUsuInmu, idUsuario, idInmueble, cantidadVisitas) values (10,293648893, 10, 98);


insert into FIADORES (idCedulaFiador, nombreFiador, apellidoFiador, nombreEmpresaFiador, celularFiador, correoFiador, salarioFiador, cartaLaboralFiador) values (1, 'Dex', 'Partridge', 'Linkbuzz', '125 980 7053', 'dpartridge0@kickstarter.com', 4735619.0, 'Si');
insert into FIADORES (idCedulaFiador, nombreFiador, apellidoFiador, nombreEmpresaFiador, celularFiador, correoFiador, salarioFiador, cartaLaboralFiador) values (2, 'Bettye', 'Parsley', 'Quinu', '343 211 4904', 'bparsley1@sohu.com', 2725185.57, 'No');
insert into FIADORES (idCedulaFiador, nombreFiador, apellidoFiador, nombreEmpresaFiador, celularFiador, correoFiador, salarioFiador, cartaLaboralFiador) values (3, 'Sissy', 'Dixcey', 'Gigaclub', '850 355 5869', 'sdixcey2@amazon.de', 4688283.44, 'Si');
insert into FIADORES (idCedulaFiador, nombreFiador, apellidoFiador, nombreEmpresaFiador, celularFiador, correoFiador, salarioFiador, cartaLaboralFiador) values (4, 'Fae', 'Dyball', 'Kaymbo', '122 108 4381', 'fdyball3@last.fm', 1972517.9, 'Si');
insert into FIADORES (idCedulaFiador, nombreFiador, apellidoFiador, nombreEmpresaFiador, celularFiador, correoFiador, salarioFiador, cartaLaboralFiador) values (5, 'Ari', 'Rengger', 'Yotz', '104 651 4132', 'arengger4@parallels.com', 1806709.0, 'Si');
insert into FIADORES (idCedulaFiador, nombreFiador, apellidoFiador, nombreEmpresaFiador, celularFiador, correoFiador, salarioFiador, cartaLaboralFiador) values (6, 'Dionne', 'Bristo', 'Livepath', '455 628 8461', 'dbristo5@youtube.com', 2462104.39, 'Si');
insert into FIADORES (idCedulaFiador, nombreFiador, apellidoFiador, nombreEmpresaFiador, celularFiador, correoFiador, salarioFiador, cartaLaboralFiador) values (7, 'Adele', 'Pottberry', 'Trudeo', '587 776 5801', 'apottberry6@about.com', 3417740.43, 'Si');
insert into FIADORES (idCedulaFiador, nombreFiador, apellidoFiador, nombreEmpresaFiador, celularFiador, correoFiador, salarioFiador, cartaLaboralFiador) values (8, 'Clemmie', 'Aland', 'Jaxbean', '685 847 7098', 'caland7@redcross.org', 4389350.28, 'Si');
insert into FIADORES (idCedulaFiador, nombreFiador, apellidoFiador, nombreEmpresaFiador, celularFiador, correoFiador, salarioFiador, cartaLaboralFiador) values (9, 'Ulrike', 'Morales', 'Yadel', '164 695 9564', 'umorales8@symantec.com', 3688854.49, 'No');
insert into FIADORES (idCedulaFiador, nombreFiador, apellidoFiador, nombreEmpresaFiador, celularFiador, correoFiador, salarioFiador, cartaLaboralFiador) values (10, 'Eugene', 'Mulroy', 'InnoZ', '535 638 3527', 'emulroy9@prnewswire.com', 4034552.52, 'No');

insert into SOLICITUDES (IdSolicitud, IdUsuario, IdInmueble, IdCedulaFiador, CartaLaboralUsuario, SalarioUsuario, CertificadoPropiedad, FechaSolicitud) values (1,699609278,1,1,1, '$707955.35', '29hM-IL4b-20LE', '11/09/2021');
insert into SOLICITUDES (IdSolicitud, IdUsuario, IdInmueble, IdCedulaFiador, CartaLaboralUsuario, SalarioUsuario, CertificadoPropiedad, FechaSolicitud) values (2,735706006,2,2,2, '$1391414.58', '49zA-AE5m-4171', '03/11/2020');
insert into SOLICITUDES (IdSolicitud, IdUsuario, IdInmueble, IdCedulaFiador, CartaLaboralUsuario, SalarioUsuario, CertificadoPropiedad, FechaSolicitud) values (3,927338113,3,3,3, '$8956636.45', '50rX-NZYt-54A0', '14/07/2021');
insert into SOLICITUDES (IdSolicitud, IdUsuario, IdInmueble, IdCedulaFiador, CartaLaboralUsuario, SalarioUsuario, CertificadoPropiedad, FechaSolicitud) values (4,155595912,4,4,4, '$8312612.66', '32bA-CFGm-21N0', '28/01/2021');
insert into SOLICITUDES (IdSolicitud, IdUsuario, IdInmueble, IdCedulaFiador, CartaLaboralUsuario, SalarioUsuario, CertificadoPropiedad, FechaSolicitud) values (5,126448440,5,5,5, '$7864609.78', '32xL-FKTg-35WY', '03/06/2021');
insert into SOLICITUDES (IdSolicitud, IdUsuario, IdInmueble, IdCedulaFiador, CartaLaboralUsuario, SalarioUsuario, CertificadoPropiedad, FechaSolicitud) values (6,208438029,6,6,6, '$9422152.53', '09kB-UAeq-90CM', '04/07/2021');
insert into SOLICITUDES (IdSolicitud, IdUsuario, IdInmueble, IdCedulaFiador, CartaLaboralUsuario, SalarioUsuario, CertificadoPropiedad, FechaSolicitud) values (7,529458490,7,7,7, '$9268615.19', '47pM-GZnv-228P', '04/01/2021');
insert into SOLICITUDES (IdSolicitud, IdUsuario, IdInmueble, IdCedulaFiador, CartaLaboralUsuario, SalarioUsuario, CertificadoPropiedad, FechaSolicitud) values (8,969180679,8,8,8, '$9139095.42', '96lD-UZvx-6276', '18/04/2021');
insert into SOLICITUDES (IdSolicitud, IdUsuario, IdInmueble, IdCedulaFiador, CartaLaboralUsuario, SalarioUsuario, CertificadoPropiedad, FechaSolicitud) values (9,369531145,9,9,9, '$8479813.71', '16aH-IDn5-59T5', '28/02/2021');
insert into SOLICITUDES (IdSolicitud, IdUsuario, IdInmueble, IdCedulaFiador, CartaLaboralUsuario, SalarioUsuario, CertificadoPropiedad, FechaSolicitud) values (10,293648893,10,10,10, '$4700889.66', '20nE-GWfb-83R3', '31/03/2021');




USE AgenciaA
GO
SELECT ASESORES.idCedulaAsesor,INMUEBLES.idInmueble
 from ASESORES
 	 INNER join INMUEBLES on INMUEBLES.idAsesor = ASESORES.idCedulaAsesor
 	 
						

select barrioInmueble, count(idInmueble) as 'inmuebles por area'
from INMUEBLES 
group by barrioInmueble
having count(IdInmueble)>0 



SELECT * FROM INMUEBLES 
	WHERE estadoInmueble = 'Por Arrendar'
	ORDER BY estratoInmueble
	

SELECT * FROM INMUEBLES 
	WHERE estadoInmueble = 'Por Arrendar'
	ORDER BY estratoInmueble
	

SELECT * FROM INMUEBLES 
	WHERE estadoInmueble = 'Por Arrendar'
	ORDER BY barrioInmueble
	

SELECT * FROM INMUEBLES 
	WHERE estadoInmueble = 'Por Arrendar'
	ORDER BY direccionInmueble	