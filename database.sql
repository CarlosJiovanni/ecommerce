CREATE TABLE PRODUCTO(
	codpro int not null AUTO_INCREMENT,
	nompro varchar(50) null,
	despro varchar(100) null,
	prepro number(6,2) null,
	estado int null,
	CONSTRAINT pk_producto
	PRIMARY KEY (codpro)
);

alter table PRODUCTO add rutimapro varchar(100) null;

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,rutimapro)
VALUES ('Suministro y cobro de gas LP','','14.99',1,'gas.png')
,('Control de plagas','','3.49',1,'pla.png')
,('Lavado de tinacos y/o cisternas','','3.49',1,'ti.jpg')
,('Administración de recursos monetarios y financiero','','3.49',1,'fi.jpg')
,('Contratación de terceros para satisfacer servicios o trabajos determinados','','3.49',1,'se.jpg')
,('Administración de estacionamientos.','', '100.00',1,'es.jpg')
,('Protocolos de actuación de vigilancia','Internos y Externos','5.99',1,'gu.jpg')
,('Plomería, Electricidad, y Herrería','','3.49',1,'plo.jpg')
,('Convenios con Proveedores','','3.49',1,'pro.jpg')
,('Contratación de Proveedores','','3.49',1,'cont.jpg')
,('Asuntos legales','','3.49',1,'asu.jpg')
,('Pulido de pisos','','9.99',1,'puli.jpg')
,('Instalación y mantenimiento a circuito cerrado de televisión','','5.99',1,'tv.jpg')
,('Mantenimiento a elevadores','','6.99',1,'el.jpg')
,('Control de acceso general y de áreas restringidas','','3.99',1,'co.jpg')
,('Difusión de reglamento','','5.99',1,'di.jpg')
/*Mantenimiento*/
,('Limpieza diaria del inmueble a través de todas las áreas comunes','','5.99',1,'limpi.jpg')
,('Pintura. Incluye lijado o cepillado y limpieza de superficies','','5.99',1,'pint.jpg')
,('Impermeabilización patios y azoteas','Incluye remoción de material actual','5.99',1,'imper.jpg')
,('Poda de césped y Jardinería en general','','3.49',1,'pod.jpg')ffffffffffffffff
,('Funcionamiento de Albercas, limpieza, reciclado de agua','aplicación de químicos','3.49',1,'al.jpg')
,('Mantenimiento y remplazo de Bombas de agua','','3.49',1,'ag.jpg')
,('Recolección de basura','','3.49',1,'ba.jpg')
,('Funcionamiento óptimo de extintores u otros sistemas contra incendio','','3.49',1,'ex.jpg')
,('Mantenimiento a climas y calefacción en áreas comunes','','3.49',1,'ac.jpg')
/*Administrativos*/
,('Recaudación de cuotas de mantenimiento','','3.49',1,'ma.jpg')
,('Estados de ingresos y gastos','','3.49',1,'in.jpg')
,('Compra de materiales para obra y limpieza','','3.49',1,'lim.jpg')
,('Dinámicas de Asambleas','','3.49',1,'dina.jpg')
Difusión de reglamento
,('Mantenimiento a climas y calefacción en áreas comunes','','3.49',1,'po.jpg');

CREATE TABLE USUARIO(
	codusu int not null AUTO_INCREMENT,
	nomusu varchar(50) ,
	apeusu varchar(50) ,
	emausu varchar(50) not null,
	pasusu varchar(20) not null,
	estado int not null,
	CONSTRAINT pk_usuario
	PRIMARY KEY (codusu)
);

INSERT INTO USUARIO (nomusu,apeusu,emausu,pasusu,estado)
VALUES ('Jio','Prieto','carlosjiovannicavez@gmail.com','123456',1);

create table PEDIDO(
	codped int not null AUTO_INCREMENT,
	codusu int not null,
	codpro int not null,
	fecped datetime not null,
	estado int not null,
	dirusuped varchar(50) not null,
	telusuped varchar(12) not null,
	PRIMARY KEY (codped)
);
alter table PEDIDO add token varchar(30) null;