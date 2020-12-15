--Populacion Base de Datos
--##################################################################################################
--##################						ADMINISTRADOR	            ############################
--##################################################################################################

--Insercion de Datos en la Tabla Administrador
INSERT INTO xtec.ADMINISTRADOR(Cedula) VALUES(702360598);
INSERT INTO xtec.ADMINISTRADOR(Cedula) VALUES(608990512);
INSERT INTO xtec.ADMINISTRADOR(Cedula) VALUES(502310564);
INSERT INTO xtec.ADMINISTRADOR(Cedula) VALUES(405640147);
INSERT INTO xtec.ADMINISTRADOR(Cedula) VALUES(305550998);

SELECT * FROM xtec.ADMINISTRADOR;

--##################################################################################################
--##################						PROFESOR		            ############################
--##################################################################################################

--Insercion de Datos en la Tabla Profesor
INSERT INTO xtec.PROFESOR(Cedula) VALUES(508880741);
INSERT INTO xtec.PROFESOR(Cedula) VALUES(102150457);
INSERT INTO xtec.PROFESOR(Cedula) VALUES(201250325);
INSERT INTO xtec.PROFESOR(Cedula) VALUES(605120215);
INSERT INTO xtec.PROFESOR(Cedula) VALUES(508880745);
INSERT INTO xtec.PROFESOR(Cedula) VALUES(706350963);
INSERT INTO xtec.PROFESOR(Cedula) VALUES(302560111);
INSERT INTO xtec.PROFESOR(Cedula) VALUES(401230123);
INSERT INTO xtec.PROFESOR(Cedula) VALUES(503210321);
INSERT INTO xtec.PROFESOR(Cedula) VALUES(705140444);

SELECT * FROM xtec.PROFESOR;

--##################################################################################################
--##################						ESTUDIANTE		            ############################
--##################################################################################################

--Insercion de Datos en la Tabla ESTUDIANTE
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2013053251);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2013553251);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2013059951);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2015053251);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2014053251);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2012053251);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2011053251);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2019053251);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2018053251);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2017053251);

INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2013113251);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2013053265);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2013051245);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2013059977);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2013748596);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2013456235);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2011002211);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2011669988);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2011447788);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2011334877);

INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2012778845);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2012054444);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2012000022);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2012002323);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2012666666);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2013555555);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2014056651);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2014053351);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2014099999);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2019050021);

INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2019561000);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2019058585);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2018045121);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2014999888);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2013141414);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2013696969);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2013456554);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2012878787);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2012010000);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2013451245);

INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2013777777);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2015888888);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2013999999);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2018111111);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2013222222);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2017333333);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2013444444);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2011555555);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2013666666);
INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(2011000000);

SELECT * FROM xtec.ESTUDIANTE;
--##################################################################################################
--##################						SEMESTRE		            ############################
--##################################################################################################

--Insercion de Datos en la Tabla Semestre
INSERT INTO xtec.SEMESTRE(Periodo, Ano, Administrador) VALUES(1,2015,702360598);
INSERT INTO xtec.SEMESTRE(Periodo, Ano, Administrador) VALUES(2,2016,608990512);
INSERT INTO xtec.SEMESTRE(Periodo, Ano, Administrador) VALUES(1,2017,502310564);
INSERT INTO xtec.SEMESTRE(Periodo, Ano, Administrador) VALUES(2,2018,405640147);
INSERT INTO xtec.SEMESTRE(Periodo, Ano, Administrador) VALUES(1,2019,305550998);

SELECT * FROM xtec.SEMESTRE;

--##################################################################################################
--##################						CURSO   		            ############################
--##################################################################################################

--Insercion de Datos en la Tabla Curso
INSERT INTO xtec.CURSO(Codigo_Curso, Nombre_Curso, Creditos, Carrera, Administrador) VALUES('EL1234', 'Circuitos en Corriente Continua', 4, 'Ingenieria en Electronica', 702360598);
INSERT INTO xtec.CURSO(Codigo_Curso, Nombre_Curso, Creditos, Carrera, Administrador) VALUES('FI1414', 'Fisica Moderna', 3, 'Ingenieria en Fisica', 702360598);
INSERT INTO xtec.CURSO(Codigo_Curso, Nombre_Curso, Creditos, Carrera, Administrador) VALUES('CU9696', 'Bases de Datos Avanzadas', 2, 'Ingenieria en Computacion', 608990512);
INSERT INTO xtec.CURSO(Codigo_Curso, Nombre_Curso, Creditos, Carrera, Administrador) VALUES('CE4515', 'Arquitectura de Computadores', 4, 'Ingenieria en Computadores', 608990512);
INSERT INTO xtec.CURSO(Codigo_Curso, Nombre_Curso, Creditos, Carrera, Administrador) VALUES('EL1111', 'Circuitos en Corriente Alterna', 4, 'Ingenieria en Electronica', 502310564);
INSERT INTO xtec.CURSO(Codigo_Curso, Nombre_Curso, Creditos, Carrera, Administrador) VALUES('EL4512', 'Elementos Activos', 3, 'Ingenieria en Electronica', 502310564);
INSERT INTO xtec.CURSO(Codigo_Curso, Nombre_Curso, Creditos, Carrera, Administrador) VALUES('FI0101', 'Fisica 1', 3, 'Ingenieria en Fisica', 405640147);
INSERT INTO xtec.CURSO(Codigo_Curso, Nombre_Curso, Creditos, Carrera, Administrador) VALUES('CE3232', 'Sistemas Operativos', 2, 'Ingenieria en Computadores', 405640147);
INSERT INTO xtec.CURSO(Codigo_Curso, Nombre_Curso, Creditos, Carrera, Administrador) VALUES('CU8989', 'Programacion Orientada a Objetos', 2, 'Ingenieria en Computacion', 305550998);
INSERT INTO xtec.CURSO(Codigo_Curso, Nombre_Curso, Creditos, Carrera, Administrador) VALUES('CE3101', 'Bases de Datos', 4, 'Ingenieria en Computadores', 305550998);

SELECT * FROM xtec.CURSO;

--##################################################################################################
--##################						GRUPO			            ############################
--##################################################################################################

--Insercion de Datos en la Tabla Grupo
INSERT INTO xtec.GRUPO(Numero_Grupo, Semestre, Profesor) VALUES (1, 1, 508880741)
INSERT INTO xtec.GRUPO(Numero_Grupo, Semestre, Profesor) VALUES (1, 2, 102150457)
INSERT INTO xtec.GRUPO(Numero_Grupo, Semestre, Profesor) VALUES (1, 3, 201250325)
INSERT INTO xtec.GRUPO(Numero_Grupo, Semestre, Profesor) VALUES (1, 4, 605120215)
INSERT INTO xtec.GRUPO(Numero_Grupo, Semestre, Profesor) VALUES (1, 5, 508880745)
INSERT INTO xtec.GRUPO(Numero_Grupo, Semestre, Profesor) VALUES (1, 1, 706350963)
INSERT INTO xtec.GRUPO(Numero_Grupo, Semestre, Profesor) VALUES (1, 2, 302560111)
INSERT INTO xtec.GRUPO(Numero_Grupo, Semestre, Profesor) VALUES (1, 3, 401230123)
INSERT INTO xtec.GRUPO(Numero_Grupo, Semestre, Profesor) VALUES (1, 4, 503210321)
INSERT INTO xtec.GRUPO(Numero_Grupo, Semestre, Profesor) VALUES (1, 5, 705140444)

SELECT * FROM xtec.GRUPO;

--##################################################################################################
--##################						RUBRO			            ############################
--##################################################################################################

--Insercion de Datos en la Tabla Rubro
INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Quices', 20, 'EL1234')
INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Examenes', 30, 'EL1234')
INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Proyectos', 30, 'EL1234')
INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Tareas', 20, 'EL1234')

INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Quices', 20, 'FI1414')
INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Examenes', 30, 'FI1414')
INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Proyectos', 30, 'FI1414')
INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Tareas', 20, 'FI1414')

INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Quices', 20, 'CU9696')
INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Examenes', 30, 'CU9696')
INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Proyectos', 30, 'CU9696')
INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Tareas', 20, 'CU9696')

INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Quices', 20, 'CE4515')
INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Examenes', 30, 'CE4515')
INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Proyectos', 30, 'CE4515')
INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Tareas', 20, 'CE4515')

INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Quices', 20, 'EL1111')
INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Examenes', 30, 'EL1111')
INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Proyectos', 30, 'EL1111')
INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Tareas', 20, 'EL1111')

INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Quices', 20, 'EL4512')
INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Examenes', 30, 'EL4512')
INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Proyectos', 30, 'EL4512')

INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Quices', 20, 'FI0101')
INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Examenes', 30, 'FI0101')
INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Proyectos', 30, 'FI0101')

INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Quices', 20, 'CE3232')
INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Examenes', 30, 'CE3232')
INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Proyectos', 30, 'CE3232')

INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Quices', 20, 'CU8989')
INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Examenes', 30, 'CU8989')
INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Proyectos', 30, 'CU8989')

INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Quices', 20, 'CE3101')
INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Examenes', 30, 'CE3101')
INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Curso) VALUES ('Proyectos', 30, 'CE3101')

SELECT * FROM xtec.RUBRO;

--##################################################################################################
--##################						EVALUACION		            ############################
--##################################################################################################

--Insercion de Datos en la Tabla Evaluacion
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Individual', 'Tarea 1', '2020-12-18','23:55:00', 4, 1)
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Individual', 'Tarea 1', '2020-12-18','23:55:00', 8, 1)
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Individual', 'Tarea 1', '2020-12-18','23:55:00', 12, 1)
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Individual', 'Tarea 1', '2020-12-18','23:55:00', 16, 1)
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Individual', 'Tarea 1', '2020-12-18','23:55:00', 20, 1)
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Grupal', 'Proyecto 1', '2020-12-20','23:55:00', 23, 1)
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Grupal', 'Proyecto 1', '2020-12-28','23:55:00', 26, 1)
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Grupal', 'Proyecto 1', '2020-12-28','23:55:00', 29, 1)
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Grupal', 'Proyecto 1', '2020-12-28','23:55:00', 32, 1)
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Grupal', 'Proyecto 1', '2020-12-28','23:55:00', 35, 1)

SELECT * FROM xtec.EVALUACION;
--##################################################################################################
--##################						ENTREGABLE		            ############################
--##################################################################################################

--Insercion de Datos en la Tabla Entregable
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Carnet, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(1, 2013777777, 'Falto Problema 2', 80, '2020-12-08', 'URL 1', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Carnet, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(2, 2015888888, '', 90, '2020-12-08', '', 'URL 1')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Carnet, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(3, 2013999999, '', 85, '2020-12-08', '', 'URL 2')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Carnet, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(4,  2018111111, 'Falto Problema 4', 60, '2020-12-08', 'URL 2', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Carnet, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(5, 2013222222, '', 70, '2020-12-08', '', 'URL 3')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Carnet, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(6, 2017333333, '', 75, '2020-12-08', '', 'URL 4')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Carnet, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(7, 2013444444, 'Falto Problema 4', 78, '2020-12-08', 'URL 3', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Carnet, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(8, 2011555555, '', 100, '2020-12-08', '', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Carnet, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(9, 2013666666, '', 95, '2020-12-08', '', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Carnet, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(10, 2011000000, 'Falto Problema 1', 80, '2020-12-08', 'URL 4', '')

SELECT * FROM xtec.ENTREGABLE;

--##################################################################################################
--##################						DOCUMENTO		            ############################
--##################################################################################################

--Insercion de Datos en la Tabla Documento
INSERT INTO xtec.DOCUMENTO(Carpeta, Tamano, Fecha, Grupo) VALUES('Documentos', 45, '2020-12-08', 1)
INSERT INTO xtec.DOCUMENTO(Carpeta, Tamano, Fecha, Grupo) VALUES('Documentos', 45, '2020-12-08', 2)
INSERT INTO xtec.DOCUMENTO(Carpeta, Tamano, Fecha, Grupo) VALUES('Tareas', 45, '2020-12-08', 3)
INSERT INTO xtec.DOCUMENTO(Carpeta, Tamano, Fecha, Grupo) VALUES('Tareas', 45, '2020-12-08', 4)
INSERT INTO xtec.DOCUMENTO(Carpeta, Tamano, Fecha, Grupo) VALUES('Tareas', 45, '2020-12-08', 5)
INSERT INTO xtec.DOCUMENTO(Carpeta, Tamano, Fecha, Grupo) VALUES('Tareas', 45, '2020-12-08', 6)
INSERT INTO xtec.DOCUMENTO(Carpeta, Tamano, Fecha, Grupo) VALUES('Presentaciones', 45, '2020-12-08', 7)
INSERT INTO xtec.DOCUMENTO(Carpeta, Tamano, Fecha, Grupo) VALUES('Presentaciones', 45, '2020-12-08', 8)
INSERT INTO xtec.DOCUMENTO(Carpeta, Tamano, Fecha, Grupo) VALUES('Presentaciones', 45, '2020-12-08', 9)
INSERT INTO xtec.DOCUMENTO(Carpeta, Tamano, Fecha, Grupo) VALUES('Presentaciones', 45, '2020-12-08', 10)

SELECT * FROM xtec.DOCUMENTO;

--##################################################################################################
--##################						NOTICIA		            ############################
--##################################################################################################

--Insercion de Datos en la Tabla Noticia
INSERT INTO xtec.NOTICIA(Titulo, Autor, Fecha, Mensaje, Grupo) VALUES('Comienzo Leeciones', 508880741, '2020-12-08', 'Carta al Estudiante', 1)
INSERT INTO xtec.NOTICIA(Titulo, Autor, Fecha, Mensaje, Grupo) VALUES('Comienzo Leeciones', 102150457, '2020-12-08', 'Carta al Estudiante', 2)
INSERT INTO xtec.NOTICIA(Titulo, Autor, Fecha, Mensaje, Grupo) VALUES('Comienzo Leeciones', 201250325, '2020-12-08', 'Carta al Estudiante', 3)
INSERT INTO xtec.NOTICIA(Titulo, Autor, Fecha, Mensaje, Grupo) VALUES('Comienzo Leeciones', 605120215, '2020-12-08', 'Carta al Estudiante', 4)
INSERT INTO xtec.NOTICIA(Titulo, Autor, Fecha, Mensaje, Grupo) VALUES('Comienzo Leeciones', 508880745, '2020-12-08', 'Carta al Estudiante', 5)
INSERT INTO xtec.NOTICIA(Titulo, Autor, Fecha, Mensaje, Grupo) VALUES('Comienzo Leeciones', 706350963, '2020-12-08', 'Carta al Estudiante', 6)
INSERT INTO xtec.NOTICIA(Titulo, Autor, Fecha, Mensaje, Grupo) VALUES('Comienzo Leeciones', 302560111, '2020-12-08', 'Carta al Estudiante', 7)
INSERT INTO xtec.NOTICIA(Titulo, Autor, Fecha, Mensaje, Grupo) VALUES('Comienzo Leeciones', 401230123, '2020-12-08', 'Carta al Estudiante', 8)
INSERT INTO xtec.NOTICIA(Titulo, Autor, Fecha, Mensaje, Grupo) VALUES('Comienzo Leeciones', 503210321, '2020-12-08', 'Carta al Estudiante', 9)
INSERT INTO xtec.NOTICIA(Titulo, Autor, Fecha, Mensaje, Grupo) VALUES('Comienzo Leeciones', 705140444, '2020-12-08', 'Carta al Estudiante', 10)

SELECT * FROM xtec.NOTICIA;

--##################################################################################################
--##################					CURSO_PROFESOR		            ############################
--##################################################################################################

--Insercion de Datos en la Tabla Curso_Profesor
INSERT INTO xtec.CURSO_PROFESOR(Codigo_Curso, Cedula) VALUES('EL1234', 508880741)
INSERT INTO xtec.CURSO_PROFESOR(Codigo_Curso, Cedula) VALUES('FI1414', 102150457)
INSERT INTO xtec.CURSO_PROFESOR(Codigo_Curso, Cedula) VALUES('CU9696', 201250325)
INSERT INTO xtec.CURSO_PROFESOR(Codigo_Curso, Cedula) VALUES('CE4515', 605120215)
INSERT INTO xtec.CURSO_PROFESOR(Codigo_Curso, Cedula) VALUES('EL1111', 508880745)
INSERT INTO xtec.CURSO_PROFESOR(Codigo_Curso, Cedula) VALUES('EL4512', 706350963)
INSERT INTO xtec.CURSO_PROFESOR(Codigo_Curso, Cedula) VALUES('FI0101', 302560111)
INSERT INTO xtec.CURSO_PROFESOR(Codigo_Curso, Cedula) VALUES('CE3232', 401230123)
INSERT INTO xtec.CURSO_PROFESOR(Codigo_Curso, Cedula) VALUES('CU8989', 503210321)
INSERT INTO xtec.CURSO_PROFESOR(Codigo_Curso, Cedula) VALUES('CE3101', 705140444)

SELECT * FROM xtec.CURSO_PROFESOR;

--##################################################################################################
--##################					CURSO_GRUPO 		            ############################
--##################################################################################################

--Insercion de Datos en la Tabla Curso_Grupo
INSERT INTO xtec.CURSO_GRUPO(Codigo_Curso, ID_Grupo) VALUES('EL1234',1)
INSERT INTO xtec.CURSO_GRUPO(Codigo_Curso, ID_Grupo) VALUES('FI1414',2)
INSERT INTO xtec.CURSO_GRUPO(Codigo_Curso, ID_Grupo) VALUES('CU9696',3)
INSERT INTO xtec.CURSO_GRUPO(Codigo_Curso, ID_Grupo) VALUES('CE4515',4)
INSERT INTO xtec.CURSO_GRUPO(Codigo_Curso, ID_Grupo) VALUES('EL1111',5)
INSERT INTO xtec.CURSO_GRUPO(Codigo_Curso, ID_Grupo) VALUES('EL4512',6)
INSERT INTO xtec.CURSO_GRUPO(Codigo_Curso, ID_Grupo) VALUES('FI0101',7)
INSERT INTO xtec.CURSO_GRUPO(Codigo_Curso, ID_Grupo) VALUES('CE3232',8)
INSERT INTO xtec.CURSO_GRUPO(Codigo_Curso, ID_Grupo) VALUES('CU8989',9)
INSERT INTO xtec.CURSO_GRUPO(Codigo_Curso, ID_Grupo) VALUES('CE3101',10)

SELECT * FROM xtec.CURSO_GRUPO;

--##################################################################################################
--##################					GRUPO_ESTUDIANTE	            ############################
--##################################################################################################

--Insercion de Datos en la Tabla Grupo_Estudiante
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(1,2013053251);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(1,2013553251);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(1,2013059951);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(1,2015053251);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(1,2014053251);

INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(2,2012053251);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(2,2011053251);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(2,2019053251);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(2,2018053251);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(2,2017053251);

INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(3,2013113251);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(3,2013053265);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(3,2013051245);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(3,2013059977);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(3,2013748596);

INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(4,2013456235);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(4,2011002211);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(4,2011669988);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(4,2011447788);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(4,2011334877);

INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(5,2012778845);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(5,2012054444);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(5,2012000022);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(5,2012002323);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(5,2012666666);

INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(6,2013555555);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(6,2014056651);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(6,2014053351);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(6,2014099999);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(6,2019050021);

INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(7,2019561000);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(7,2019058585);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(7,2018045121);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(7,2014999888);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(7,2013141414);

INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(8,2013696969);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(8,2013456554);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(8,2012878787);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(8,2012010000);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(8,2013451245);

INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(9,2013777777);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(9,2015888888);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(9,2013999999);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(9,2018111111);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(9,2013222222);

INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(10,2017333333);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(10,2013444444);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(10,2011555555);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(10,2013666666);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(10,2011000000);

SELECT * FROM xtec.GRUPO_ESTUDIANTE;

--##################################################################################################
--##################				CURSO_SEMESTRE	            ############################
--##################################################################################################

--Insercion de Datos en la Tabla Curso_Semestre
INSERT INTO xtec.CURSO_SEMESTRE(Codigo_Curso, ID_Semestre) VALUES ('EL1234',1);
INSERT INTO xtec.CURSO_SEMESTRE(Codigo_Curso, ID_Semestre) VALUES ('FI1414',2);
INSERT INTO xtec.CURSO_SEMESTRE(Codigo_Curso, ID_Semestre) VALUES ('CU9696',3);
INSERT INTO xtec.CURSO_SEMESTRE(Codigo_Curso, ID_Semestre) VALUES ('CE4515',4);
INSERT INTO xtec.CURSO_SEMESTRE(Codigo_Curso, ID_Semestre) VALUES ('EL1111',5);
INSERT INTO xtec.CURSO_SEMESTRE(Codigo_Curso, ID_Semestre) VALUES ('EL4512',1);
INSERT INTO xtec.CURSO_SEMESTRE(Codigo_Curso, ID_Semestre) VALUES ('FI0101',2);
INSERT INTO xtec.CURSO_SEMESTRE(Codigo_Curso, ID_Semestre) VALUES ('CE3232',3);
INSERT INTO xtec.CURSO_SEMESTRE(Codigo_Curso, ID_Semestre) VALUES ('CU8989',4);
INSERT INTO xtec.CURSO_SEMESTRE(Codigo_Curso, ID_Semestre) VALUES ('CE3101',5);

SELECT * FROM xtec.CURSO_SEMESTRE;

SELECT A.Codigo_Curso, P.Nombre_Curso 
FROM xtec.CURSO_SEMESTRE AS A JOIN xtec.CURSO AS P ON A.Codigo_Curso = P.Codigo_Curso
WHERE A.ID_Semestre = 1;