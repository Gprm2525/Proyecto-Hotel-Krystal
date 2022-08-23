USE PROYECTOCERTIFICADOR

GO

insert into ESTADO_HABITACION(IdEstadoHabitacion,Descripcion) values
(1,'LIBRE'),
(2,'OCUPADO'),
(3,'LIMPIEZA')


go

insert into TIPO_PERSONA(IdTipoPersona, Descripcion) values
(1,'Administrador'),
(2,'Empleado'),
(3,'Cliente')

go

insert into PERSONA(TipoDocumento,documento,nombre,apellido,correo,clave,IdTipoPersona) values
('DNI','42369871','Giorgio','Ruiton','gprm@gmail.com','12345',1), --12345
('DNI','43534342','Fiorella','Bruno','fiorella@gmail.com','2468',2), --2468
('DNI','46587193','Mercedes','Rocha','mrocha@gmail.com','13579',2), --13579
('DNI','42587944','Briyan','Santiago','bsantiago@gmail.com','12345',2), --12345
('DNI','45987105','Rodrigo','Salazar','rodrigo@gmail.com','01234',2) --01234

GO

insert into PERSONA(TipoDocumento,documento,nombre,apellido,correo,IdTipoPersona) values

('DNI','78676756','Maria Sonia','Lillo','Lillo@gmail.com',3),
('DNI','48958938','Nagore','Quiros','Quiros@gmail.com',3),
('DNI','38958938','Jannina','Del Castillo','jandc@outlook.net',3),
('DNI','43029492','Danika','Estrada','danika@gmail.com',3),
('DNI','25493948','Raul','Ruiz','raulruiz@gmail.com',3),
('DNI','23948384','Carloncho','Renzo','carlonchor@gmail.com',3),
('DNI','72949382','Ana','Gamarra Samir','anag@outlook.net',3),
('DNI','44893894','Ivan','Castaneda','icastaneda@gmail.com',3),
('DNI','34898923','Yanay','Camposano','yanaycampo@gmail.com',3),
('DNI','78787979','Romulo','Rios','rrios@gmail.com',3)

GO

GO
INSERT INTO CATEGORIA(Descripcion) VALUES
('Matrimonial'),
('Doble'),
('Triple'),
('Individual')

GO

INSERT INTO PISO(Descripcion) VALUES
('PRIMERO'),
('SEGUNDO'),
('TERCERO')

GO

INSERT INTO HABITACION(numero,detalle,precio,IdEstadoHabitacion,IdPiso,IdCategoria) values
('001','WIFI + BAÑO + TV + CABLE','70',1,1,3),
('002','WIFI + BAÑO + TV + CABLE','80',1,1,2),
('003','BAÑO + TV + CABLE','60',1,1,3),
('004','WIFI + BAÑO + TV + CABLE','80',1,1,2),
('005','WIFI + BAÑO','50',1,1,3),

('006','WIFI + BAÑO + TV 4K + CABLE','80',1,2,3),
('007','WIFI + BAÑO + TV 4K + CABLE','90',1,2,2),
('008','WIFI + BAÑO + TV + CABLE','70',1,2,3),
('009','WIFI + BAÑO + TV + CABLE','80',1,2,2),
('010','WIFI + BAÑO + TV + CABLE','70',1,2,3),

('011','WIFI + BAÑO + TV 4K + CABLE','120',1,3,1),
('012','WIFI + BAÑO + TV 4K + CABLE','120',1,3,1),
('013','WIFI + BAÑO + TV 4K + CABLE','120',1,3,1),
('014','WIFI + BAÑO + TV + CABLE','85',1,3,2),
('015','WIFI + BAÑO + TV + CABLE','75',1,3,3)

