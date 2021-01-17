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

SELECT Carnet FROM xtec.ESTUDIANTE;
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
INSERT INTO xtec.CURSO(Codigo_Curso, Nombre_Curso, Creditos, Carrera, Habilitado, Administrador) VALUES('EL1234', 'Circuitos en Corriente Continua', 4, 'Ingenieria en Electronica', 1, 702360598);
INSERT INTO xtec.CURSO(Codigo_Curso, Nombre_Curso, Creditos, Carrera, Habilitado, Administrador) VALUES('FI1414', 'Fisica Moderna', 3, 'Ingenieria en Fisica', 1, 702360598);
INSERT INTO xtec.CURSO(Codigo_Curso, Nombre_Curso, Creditos, Carrera, Habilitado, Administrador) VALUES('CU9696', 'Bases de Datos Avanzadas', 2, 'Ingenieria en Computacion', 1, 608990512);
INSERT INTO xtec.CURSO(Codigo_Curso, Nombre_Curso, Creditos, Carrera, Habilitado, Administrador) VALUES('CE4515', 'Arquitectura de Computadores', 4, 'Ingenieria en Computadores', 1, 608990512);
INSERT INTO xtec.CURSO(Codigo_Curso, Nombre_Curso, Creditos, Carrera, Habilitado, Administrador) VALUES('EL1111', 'Circuitos en Corriente Alterna', 4, 'Ingenieria en Electronica', 1, 502310564);
INSERT INTO xtec.CURSO(Codigo_Curso, Nombre_Curso, Creditos, Carrera, Habilitado, Administrador) VALUES('EL4512', 'Elementos Activos', 3, 'Ingenieria en Electronica', 1, 502310564);
INSERT INTO xtec.CURSO(Codigo_Curso, Nombre_Curso, Creditos, Carrera, Habilitado, Administrador) VALUES('FI0101', 'Fisica 1', 3, 'Ingenieria en Fisica', 1, 405640147);
INSERT INTO xtec.CURSO(Codigo_Curso, Nombre_Curso, Creditos, Carrera, Habilitado, Administrador) VALUES('CE3232', 'Sistemas Operativos', 2, 'Ingenieria en Computadores', 1, 405640147);
INSERT INTO xtec.CURSO(Codigo_Curso, Nombre_Curso, Creditos, Carrera, Habilitado, Administrador) VALUES('CU8989', 'Programacion Orientada a Objetos', 2, 'Ingenieria en Computacion', 1, 305550998);
INSERT INTO xtec.CURSO(Codigo_Curso, Nombre_Curso, Creditos, Carrera, Habilitado, Administrador) VALUES('CE3101', 'Bases de Datos', 4, 'Ingenieria en Computadores', 1, 305550998);
INSERT INTO xtec.CURSO(Codigo_Curso, Nombre_Curso, Creditos, Carrera, Habilitado, Administrador) VALUES('CE4204', 'Datos II', 4, 'Ingenieria en Computadores', 1, 305550998);

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

--Prueba de Trigger Borrado
DELETE FROM xtec.RUBRO WHERE Nombre_Rubro = 'Quices' AND Grupo = 1;

SELECT * FROM xtec.RUBRO;
SELECT * FROM xtec.CARPETA;
SELECT * FROM xtec.GRUPO_CARPETA;
--##################################################################################################
--##################						EVALUACION		            ############################
--##################################################################################################

--Insercion de Datos en la Tabla Evaluacion
--Evaluaciones Grupo 1 - EL1234
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Individual', 'Quiz 1', getdate(),'23:55:00', 1, 1)
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Individual', 'Parcial I', getdate(),'23:55:00', 2, 1)
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Individual', 'Proyecto I', getdate(),'23:55:00', 3, 1)

--Evaluaciones Grupo 1 - FI1414
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Individual', 'Quiz 1', getdate(),'23:55:00', 4, 2)
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Individual', 'Parcial I', getdate(),'23:55:00', 5, 2)
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Individual', 'Proyecto I', getdate(),'23:55:00', 6, 2)

--Evaluaciones Grupo 1 - CU9696
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Individual', 'Quiz 1', getdate(),'23:55:00', 7, 3)
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Individual', 'Parcial I', getdate(),'23:55:00', 8, 3)
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Individual', 'Proyecto I', getdate(),'23:55:00', 9, 3)

--Evaluaciones Grupo 1 - CE4515
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Individual', 'Quiz 1', getdate(),'23:55:00', 10, 4)
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Individual', 'Parcial I', getdate(),'23:55:00', 11, 4)
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Individual', 'Proyecto i', getdate(),'23:55:00', 12, 4)

--Evaluaciones Grupo 1 - EL1111
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Individual', 'Quiz 1', getdate(),'23:55:00', 13, 5)
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Individual', 'Parcial I', getdate(),'23:55:00', 14, 5)
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Individual', 'Proyecto I', getdate(),'23:55:00', 15, 5)

--Evaluaciones Grupo 1 - EL4512
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Individual', 'Quiz 1', getdate(),'23:55:00', 16, 6)
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Individual', 'Parcial I', getdate(),'23:55:00', 17, 6)
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Grupal', 'Proyecto 1', getdate(),'23:55:00', 18, 6)
--Evaluaciones Grupo 1 - FI0101
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Grupal', 'Quiz 1', getdate(),'23:55:00', 19, 7)
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Individual', 'Parcial I', getdate(),'23:55:00', 20, 7)
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Grupal', 'Proyecto 1', getdate(),'23:55:00', 21, 7)
--Evaluaciones Grupo 1 - CE3232
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Individual', 'Quiz 1', getdate(),'23:55:00', 22, 8)
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Grupal', 'Parcial I', getdate(),'23:55:00', 23, 8)
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Grupal', 'Proyecto 1', getdate(),'23:55:00', 24, 8)
--Evaluaciones Grupo 1 - CU8989
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Individual', 'Quiz 1', getdate(),'23:55:00', 25, 9)
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Individual', 'Parcial I', getdate(),'23:55:00', 26, 9)
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Grupal', 'Proyecto 1', getdate(),'23:55:00', 27, 9)
--Evaluaciones Grupo 1 - CE3101
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Grupal', 'Parcial I', getdate(),'23:55:00', 28, 10)
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Individual', 'Quiz 1', getdate(),'23:55:00', 29, 10)
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Grupal', 'Proyecto 1', getdate(),'23:55:00', 30, 10)
--Prueba Trigger
INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, Hora, Rubro, Grupo) VALUES('Individual', 'Proyecto II', '2020-12-28','23:55:00', 30, 1)
SELECT * FROM xtec.EVALUACION;
--##################################################################################################
--##################						ENTREGABLE		            ############################
--##################################################################################################

--Insercion de Datos en la Tabla Entregable
--Entregables de Quiz 1 Grupo 1 - Curso EL1234
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(1, 'Falto Problema 2', 80, '2020-12-08', 'URL 1', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(1, 'Falto Problema 5', 90, '2020-12-08', 'URL 1', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(1, 'Falto Problema 3', 75, '2020-12-08', 'URL 1', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(1, 'Falto Problema 2', 80, '2020-12-08', 'URL 1', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(1, 'Falto Problema 1,2 y 3', 50, '2020-12-08', 'URL 1', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(1, 'Falto Problema 1 y 2', 60, '2020-12-08', 'URL 1', '')
--Entregables de Examen 1 Grupo 1 - Curso EL1234
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(2, 'Falto Problema 1', 70, '2020-12-08', 'URL 1', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(2, 'Falto Problema 2', 50, '2020-12-08', 'URL 1', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(2, 'Falto Problema 3', 85, '2020-12-08', 'URL 1', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(2, 'Falto Problema 4', 70, '2020-12-08', 'URL 1', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(2, 'Falto Problema 1,2 y 3', 40, '2020-12-08', 'URL 1', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(2, 'Falto Problema 1 y 2', 60, '2020-12-08', 'URL 1', '')
--Entregables de Parcial 1 Grupo 1 - Curso EL1234
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(3, 'Falto Problema 3', 70, '2020-12-08', 'URL 1', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(3, 'Falto Problema 1', 85, '2020-12-08', 'URL 1', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(3, 'Falto Problema 6', 65, '2020-12-08', 'URL 1', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(3, 'Falto Problema 4', 80, '2020-12-08', 'URL 1', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(3, 'Falto Problema 1,5 y 3', 50, '2020-12-08', 'URL 1', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(3, 'Falto Problema 4 y 2', 65, '2020-12-08', 'URL 1', '')
--####################################################################
--Entregables de Quiz 1 Grupo 1 - Curso FI1414
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(4, '', 90, '2020-12-08', '', 'URL 1')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(4, '', 80, '2020-12-08', '', 'URL 1')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(4, '', 100, '2020-12-08', '', 'URL 1')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(4, '', 70, '2020-12-08', '', 'URL 1')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(4, '', 65, '2020-12-08', '', 'URL 1')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(4, '', 75, '2020-12-08', '', 'URL 1')
--Entregables de Examen 1 Grupo 1 - Curso FI1414
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(5, '', 90, '2020-12-08', '', 'URL 1')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(5, '', 80, '2020-12-08', '', 'URL 1')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(5, '', 100, '2020-12-08', '', 'URL 1')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(5, '', 70, '2020-12-08', '', 'URL 1')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(5, '', 65, '2020-12-08', '', 'URL 1')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(5, '', 75, '2020-12-08', '', 'URL 1')
--Entregables de Parcial 1 Grupo 1 - Curso FI1414
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(6, '', 90, '2020-12-08', '', 'URL 1')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(6, '', 80, '2020-12-08', '', 'URL 1')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(6, '', 100, '2020-12-08', '', 'URL 1')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(6, '', 70, '2020-12-08', '', 'URL 1')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(6, '', 65, '2020-12-08', '', 'URL 1')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(6, '', 75, '2020-12-08', '', 'URL 1')
--####################################################################
--Entregables de Quiz 1 Grupo 1 - Curso CU9696
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(7, '', 85, '2020-12-08', '', 'URL 2')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(7, '', 85, '2020-12-08', '', 'URL 2')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(7, '', 85, '2020-12-08', '', 'URL 2')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(7, '', 85, '2020-12-08', '', 'URL 2')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(7, '', 85, '2020-12-08', '', 'URL 2')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(7, '', 85, '2020-12-08', '', 'URL 2')
--Entregables de Examen 1 Grupo 1 - Curso CU9696
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(8, '', 85, '2020-12-08', '', 'URL 2')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(8, '', 85, '2020-12-08', '', 'URL 2')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(8, '', 85, '2020-12-08', '', 'URL 2')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(8, '', 85, '2020-12-08', '', 'URL 2')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(8, '', 85, '2020-12-08', '', 'URL 2')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(8, '', 85, '2020-12-08', '', 'URL 2')
--Entregables de Proyecto 1 Grupo 1 - Curso CU9696
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(9, '', 85, '2020-12-08', '', 'URL 2')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(9, '', 85, '2020-12-08', '', 'URL 2')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(9, '', 85, '2020-12-08', '', 'URL 2')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(9, '', 85, '2020-12-08', '', 'URL 2')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(9, '', 85, '2020-12-08', '', 'URL 2')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(9, '', 85, '2020-12-08', '', 'URL 2')

--####################################################################
--Entregables de Quiz 1 Grupo 1 - Curso CE4545
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(10,  'Falto Problema 4', 60, '2020-12-08', 'URL 2', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(10,  'Falto Problema 1', 70, '2020-12-08', 'URL 2', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(10,  'Falto Problema 3', 80, '2020-12-08', 'URL 2', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(10,  'Falto Problema 4', 60, '2020-12-08', 'URL 2', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(10,  'Falto Problema 5', 75, '2020-12-08', 'URL 2', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(10,  'Falto Problema 4', 60, '2020-12-08', 'URL 2', '')
--Entregables de Examen 1 Grupo 1 - Curso CE4545
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(11,  'Falto Problema 4', 60, '2020-12-08', 'URL 2', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(11,  'Falto Problema 1', 70, '2020-12-08', 'URL 2', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(11,  'Falto Problema 3', 80, '2020-12-08', 'URL 2', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(11,  'Falto Problema 4', 60, '2020-12-08', 'URL 2', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(11,  'Falto Problema 5', 75, '2020-12-08', 'URL 2', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(11,  'Falto Problema 4', 60, '2020-12-08', 'URL 2', '')
--Entregables de Proyecto 1 Grupo 1 - Curso CE4545
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(12,  'Falto Problema 4', 60, '2020-12-08', 'URL 2', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(12,  'Falto Problema 1', 70, '2020-12-08', 'URL 2', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(12,  'Falto Problema 3', 80, '2020-12-08', 'URL 2', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(12,  'Falto Problema 4', 60, '2020-12-08', 'URL 2', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(12,  'Falto Problema 5', 75, '2020-12-08', 'URL 2', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(12,  'Falto Problema 4', 60, '2020-12-08', 'URL 2', '')

--####################################################################
--Entregables de Quiz 1 Grupo 1 - Curso EL1111
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(13, '', 70, '2020-12-08', '', 'URL 3')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(13, '', 60, '2020-12-08', '', 'URL 3')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(13, '', 55, '2020-12-08', '', 'URL 3')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(13, '', 90, '2020-12-08', '', 'URL 3')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(13, '', 75, '2020-12-08', '', 'URL 3')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(13, '', 80, '2020-12-08', '', 'URL 3')
--Entregables de Examen 1 Grupo 1 - Curso EL1111
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(14, '', 70, '2020-12-08', '', 'URL 3')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(14, '', 60, '2020-12-08', '', 'URL 3')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(14, '', 55, '2020-12-08', '', 'URL 3')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(14, '', 90, '2020-12-08', '', 'URL 3')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(14, '', 75, '2020-12-08', '', 'URL 3')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(14, '', 80, '2020-12-08', '', 'URL 3')
--Entregables de Proyecto 1 Grupo 1 - Curso EL1111
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(15, '', 70, '2020-12-08', '', 'URL 3')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(15, '', 60, '2020-12-08', '', 'URL 3')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(15, '', 55, '2020-12-08', '', 'URL 3')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(15, '', 90, '2020-12-08', '', 'URL 3')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(15, '', 75, '2020-12-08', '', 'URL 3')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(15, '', 80, '2020-12-08', '', 'URL 3')

--####################################################################
--Entregables de Quiz 1 Grupo 1 - Curso EL4512
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(16, '', 75, '2020-12-08', '', 'URL 4')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(16, '', 45, '2020-12-08', '', 'URL 4')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(16, '', 65, '2020-12-08', '', 'URL 4')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(16, '', 75, '2020-12-08', '', 'URL 4')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(16, '', 95, '2020-12-08', '', 'URL 4')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(16, '', 55, '2020-12-08', '', 'URL 4')
--Entregables de Examen 1 Grupo 1 - Curso EL4512
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(17, '', 75, '2020-12-08', '', 'URL 4')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(17, '', 45, '2020-12-08', '', 'URL 4')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(17, '', 65, '2020-12-08', '', 'URL 4')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(17, '', 75, '2020-12-08', '', 'URL 4')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(17, '', 95, '2020-12-08', '', 'URL 4')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(17, '', 55, '2020-12-08', '', 'URL 4')
--Entregables de Proyecto 1 Grupo 1 - Curso EL4512
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(18, '', 75, '2020-12-08', '', 'URL 4')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(18, '', 45, '2020-12-08', '', 'URL 4')

--####################################################################
--Entregables de Quiz 1 Grupo 1 - Curso FI0101
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(19, 'Falto Problema 4', 78, '2020-12-08', 'URL 3', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(19, 'No Entrego', 0, '2020-12-08', 'URL 3', '')
--Entregables de Examen 1 Grupo 1 - Curso FI0101
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(20, 'Falto Problema 4', 78, '2020-12-08', 'URL 3', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(20, 'No Entrego', 0, '2020-12-08', 'URL 3', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(20, 'Falto Problema 4.1', 88, '2020-12-08', 'URL 3', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(20, 'Falto Problema 8', 58, '2020-12-08', 'URL 3', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(20, 'Falto Problema 5', 80, '2020-12-08', 'URL 3', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(20, 'Falto Problema 3', 70, '2020-12-08', 'URL 3', '')
--Entregables de Proyecto 1 Grupo 1 - Curso FI0101
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(21, 'Falto Problema 4', 78, '2020-12-08', 'URL 3', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(21, 'No Entrego', 0, '2020-12-08', 'URL 3', '')

--####################################################################
--Entregables de Quiz 1 Grupo 1 - Curso CE3232
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(22, '', 100, '2020-12-08', '', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(22, '', 90, '2020-12-08', '', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(22, '', 80, '2020-12-08', '', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(22, '', 70, '2020-12-08', '', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(22, '', 60, '2020-12-08', '', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(22, '', 50, '2020-12-08', '', '')
--Entregables de Examen 1 Grupo 1 - Curso CE3232
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(23, '', 100, '2020-12-08', '', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(23, '', 90, '2020-12-08', '', '')
--Entregables de Proyecto 1 Grupo 1 - Curso CE3232
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(24, '', 100, '2020-12-08', '', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(24, '', 90, '2020-12-08', '', '')

--####################################################################
--Entregables de Quiz 1 Grupo 1 - Curso CU8989
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(25, '', 95, '2020-12-08', '', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(25, '', 95, '2020-12-08', '', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(25, '', 85, '2020-12-08', '', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(25, '', 95, '2020-12-08', '', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(25, '', 75, '2020-12-08', '', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(25, '', 95, '2020-12-08', '', '')
--Entregables de Examen 1 Grupo 1 - Curso CU8989
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(26, '', 95, '2020-12-08', '', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(26, '', 95, '2020-12-08', '', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(26, '', 85, '2020-12-08', '', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(26, '', 95, '2020-12-08', '', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(26, '', 75, '2020-12-08', '', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(26, '', 95, '2020-12-08', '', '')
--Entregables de Proyecto 1 Grupo 1 - Curso CU8989
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(27, '', 95, '2020-12-08', '', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(27, '', 95, '2020-12-08', '', '')
--####################################################################
--Entregables de Quiz 1 Grupo 1 - Curso CE3101
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(28, 'Falto Problema 1', 80, '2020-12-08', 'URL 4', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(28, 'Falto Problema 1', 80, '2020-12-08', 'URL 4', '')
--Entregables de Examen 1 Grupo 1 - Curso CE3101
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(29, 'Falto Problema 1', 80, '2020-12-08', 'URL 4', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(29, 'Falto Problema 1', 80, '2020-12-08', 'URL 4', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(29, 'Falto Problema 1', 80, '2020-12-08', 'URL 4', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(29, 'Falto Problema 1', 80, '2020-12-08', 'URL 4', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(29, 'Falto Problema 1', 80, '2020-12-08', 'URL 4', '')
--Entregables de Proyecto 1 Grupo 1 - Curso CE3101
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(30, 'Falto Problema 1', 80, '2020-12-08', 'URL 4', '')
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor) VALUES(30, 'Falto Problema 1', 80, '2020-12-08', 'URL 4', '')


--Prueba de Trigger Noticia
INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Carnet, Observaciones, Nota,Fecha_Entrega, Docu_Estudiante, Docu_Profesor, Grupo) VALUES(10, 2014999888, 'Falto Problema 1', 80, '2020-12-08', 'URL 4', '', 10)
SELECT * FROM xtec.ENTREGABLE;
SELECT * FROM xtec.NOTICIA;
--Prueba de Trigger Noticia de Update
UPDATE xtec.ENTREGABLE SET xtec.ENTREGABLE.Nota = 70 WHERE xtec.ENTREGABLE.ID_Entregable = 147;
--##################################################################################################
--##################						DOCUMENTO		            ############################
--##################################################################################################

--Insercion de Datos en la Tabla Documento
INSERT INTO xtec.DOCUMENTO(Tamano, Fecha, Nombre_Documento, Carpeta) VALUES(45, '2020-12-08', 'README.md', 1)
INSERT INTO xtec.DOCUMENTO(Tamano, Fecha, Nombre_Documento, Carpeta) VALUES(45, '2020-12-08', 'README.md', 5)
INSERT INTO xtec.DOCUMENTO(Tamano, Fecha, Nombre_Documento, Carpeta) VALUES(45, '2020-12-08', 'README.md', 9)
INSERT INTO xtec.DOCUMENTO(Tamano, Fecha, Nombre_Documento, Carpeta) VALUES(45, '2020-12-08', 'README.md', 13)
INSERT INTO xtec.DOCUMENTO(Tamano, Fecha, Nombre_Documento, Carpeta) VALUES(45, '2020-12-08', 'README.md', 17)
INSERT INTO xtec.DOCUMENTO(Tamano, Fecha, Nombre_Documento, Carpeta) VALUES(45, '2020-12-08', 'README.md', 21)
INSERT INTO xtec.DOCUMENTO(Tamano, Fecha, Nombre_Documento, Carpeta) VALUES(45, '2020-12-08', 'README.md', 25)
INSERT INTO xtec.DOCUMENTO(Tamano, Fecha, Nombre_Documento, Carpeta) VALUES(45, '2020-12-08', 'README.md', 29)
INSERT INTO xtec.DOCUMENTO(Tamano, Fecha, Nombre_Documento, Carpeta) VALUES(45, '2020-12-08', 'README.md', 33)
INSERT INTO xtec.DOCUMENTO(Tamano, Fecha, Nombre_Documento, Carpeta) VALUES(45, '2020-12-08', 'README.md', 37)

UPDATE xtec.DOCUMENTO SET Tamano = 40 WHERE ID_Documento = 15;

SELECT * FROM xtec.DOCUMENTO;
SELECT TOP 1 ID_Documento FROM xtec.DOCUMENTO AS D ORDER BY D.ID_Documento DESC;
SELECT * FROM xtec.CARPETA;
EXEC SP_Grupo_Carpeta 1, Videos;
--INSERT INTO xtec.CARPETA(Nombre,Fecha) VALUES ('Videos', getdate());
--SELECT * FROM xtec.CARPETA;
SELECT * FROM xtec.GRUPO_CARPETA;
--##################################################################################################
--##################						NOTICIA		                ############################
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
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(1,2013777777);

INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(2,2012053251);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(2,2011053251);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(2,2019053251);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(2,2018053251);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(2,2017053251);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(2,2015888888);

INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(3,2013113251);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(3,2013053265);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(3,2013051245);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(3,2013059977);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(3,2013748596);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(3,2013999999);

INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(4,2013456235);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(4,2011002211);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(4,2011669988);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(4,2011447788);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(4,2011334877);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(4,2018111111);

INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(5,2012778845);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(5,2012054444);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(5,2012000022);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(5,2012002323);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(5,2012666666);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(5,2013222222);

INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(6,2013555555);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(6,2014056651);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(6,2014053351);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(6,2014099999);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(6,2019050021);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(6,2017333333);

INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(7,2019561000);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(7,2019058585);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(7,2018045121);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(7,2014999888);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(7,2013141414);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(7,2013444444);

INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(8,2013696969);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(8,2013456554);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(8,2012878787);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(8,2012010000);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(8,2013451245);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(8,2011555555);

INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(9,2013777777);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(9,2015888888);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(9,2013999999);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(9,2018111111);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(9,2013222222);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(9,2013666666);

INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(10,2017333333);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(10,2013444444);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(10,2011555555);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(10,2013666666);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(10,2011000000);
INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(10,2014999888);


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

--##################################################################################################
--##################					GRUPO_CARPETA		            ############################
--##################################################################################################
--Esta se hace con el Trigger las CARPETAS PRINCIPALES

--##################################################################################################
--##################					MIEMBRO_GRUPO		            ############################
--##################################################################################################

--Insercion de Datos en Miembro-Grupo
--Grupo1 Todas son Individuales
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(1,2013053251);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(2,2013553251);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(3,2013059951);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(4,2015053251);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(5,2014053251);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(6,2013777777);

INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(7,2013053251);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(8,2013553251);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(9,2013059951);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(10,2015053251);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(11,2014053251);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(12,2013777777);

INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(13,2013053251);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(14,2013553251);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(15,2013059951);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(16,2015053251);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(17,2014053251);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(18,2013777777);
--####################
--Grupo2 Todas son Individuales
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(19,2012053251);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(20,2011053251);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(21,2019053251);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(22,2018053251);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(23,2017053251);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(24,2015888888);

INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(25,2012053251);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(26,2011053251);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(27,2019053251);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(28,2018053251);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(29,2017053251);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(30,2015888888);

INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(31,2012053251);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(32,2011053251);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(33,2019053251);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(34,2018053251);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(35,2017053251);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(36,2015888888);
--####################
--Grupo 3 Todas son Individuales
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(37,2013113251);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(38,2013053265);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(39,2013051245);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(40,2013059977);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(41,2013748596);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(42,2013999999);

INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(43,2013113251);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(44,2013053265);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(45,2013051245);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(46,2013059977);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(47,2013748596);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(48,2013999999);

INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(49,2013113251);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(50,2013053265);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(51,2013051245);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(52,2013059977);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(53,2013748596);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(54,2013999999);
--####################
--Grupo 4 Todas son Individuales
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(55,2013456235);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(56,2011002211);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(57,2011669988);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(58,2011447788);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(59,2011334877);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(60,2018111111);

INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(61,2013456235);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(62,2011002211);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(63,2011669988);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(64,2011447788);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(65,2011334877);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(66,2018111111);

INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(67,2013456235);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(68,2011002211);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(69,2011669988);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(70,2011447788);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(71,2011334877);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(72,2018111111);
--####################
--Grupo 5 Todas son Individuales
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(73,2012778845);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(74,2012054444);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(75,2012000022);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(76,2012002323);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(77,2012666666);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(78,2013222222);

INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(79,2012778845);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(80,2012054444);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(81,2012000022);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(82,2012002323);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(83,2012666666);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(84,2013222222);

INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(85,2012778845);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(86,2012054444);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(87,2012000022);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(88,2012002323);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(89,2012666666);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(90,2013222222);
--####################
--Grupo 6 
--Individual
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(91,2013555555);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(92,2014056651);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(93,2014053351);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(94,2014099999);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(95,2019050021);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(96,2017333333);
--Individual
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(97,2013555555);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(98,2014056651);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(99,2014053351);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(100,2014099999);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(101,2019050021);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(102,2017333333);
--Grupal
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(103,2013555555);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(103,2014056651);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(103,2014053351);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(104,2014099999);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(104,2019050021);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(104,2017333333);
--####################
--Grupo 7
--Grupal
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(105,2019561000);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(105,2019058585);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(105,2018045121);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(106,2014999888);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(106,2013141414);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(106,2013444444);
--Individual
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(107,2019561000);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(108,2019058585);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(109,2018045121);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(110,2014999888);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(111,2013141414);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(112,2013444444);
--Grupal
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(113,2019561000);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(113,2019058585);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(113,2018045121);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(114,2014999888);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(114,2013141414);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(114,2013444444);
--####################
--Grupo 8
--Individual
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(115,2013696969);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(116,2013456554);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(117,2012878787);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(118,2012010000);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(119,2013451245);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(120,2011555555);
--Grupal
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(121,2013696969);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(121,2013456554);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(121,2012878787);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(122,2012010000);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(122,2013451245);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(122,2011555555);
--Grupal
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(123,2013696969);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(123,2013456554);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(123,2012878787);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(124,2012010000);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(124,2013451245);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(124,2011555555);
--####################
--Grupo 9
--Individual
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(125,2013777777);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(126,2015888888);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(127,2013999999);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(128,2018111111);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(129,2013222222);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(130,2013666666);
--Individual
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(131,2013777777);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(132,2015888888);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(133,2013999999);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(134,2018111111);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(135,2013222222);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(136,2013666666);
--Grupal
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(137,2013777777);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(137,2015888888);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(137,2013999999);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(138,2018111111);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(138,2013222222);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(138,2013666666);
--####################
--Grupo 10
--Grupal
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(139,2017333333);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(139,2013444444);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(139,2011555555);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(140,2013666666);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(140,2011000000);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(140,2014999888);
--Individual
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(141,2017333333);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(142,2013444444);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(143,2011555555);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(144,2013666666);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(145,2011000000);
--Grupal
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(146,2017333333);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(146,2013444444);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(146,2011555555);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(147,2013666666);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(147,2011000000);
INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet) VALUES(147,2014999888);

SELECT * FROM xtec.EVALUACION; 
SELECT * FROM xtec.ENTREGABLE;
--Consultas Varias 
SELECT A.Codigo_Curso, P.Nombre_Curso 
FROM xtec.CURSO_SEMESTRE AS A JOIN xtec.CURSO AS P ON A.Codigo_Curso = P.Codigo_Curso
WHERE A.ID_Semestre = 1;

--Para la Vista de Notas
SELECT A.Especificacion, E.Nota
FROM xtec.EVALUACION AS A JOIN xtec.ENTREGABLE AS E ON E.ID_Evaluacion = A.ID_Evaluacion
--WHERE E.Carnet = 2018111111;

SELECT * FROM xtec.RUBRO;