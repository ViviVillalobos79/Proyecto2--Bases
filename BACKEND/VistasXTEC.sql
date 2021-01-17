--##################################################################################################
--##################						Vistas			            ############################
--##################################################################################################
--Vista Reporte de Notas
--CREATE VIEW Reporte_Notas

--Vista Estudiantes Matriculados 
CREATE VIEW View_Estudiantes_Matriculados 
AS SELECT G.Numero_Grupo, C.Codigo_Curso, E.Carnet, G.ID_Grupo
FROM ((xtec.GRUPO_ESTUDIANTE AS E JOIN xtec.CURSO_GRUPO AS C ON E.ID_Grupo = C.ID_Grupo) 
	   JOIN xtec.GRUPO AS G ON G.ID_Grupo = E.ID_Grupo)

SELECT * FROM View_Estudiantes_Matriculados WHERE ID_Grupo = 1 ORDER BY Carnet;

-- Vista de cursos de un estudiante
CREATE VIEW View_Cursos_de_Estudiante 
AS SELECT U.Nombre_Curso, G.Numero_Grupo, 'Semestre' + S.Periodo AS Periodo, S.Ano, E.Carnet 
   FROM xtec.GRUPO_ESTUDIANTE AS E JOIN xtec.GRUPO AS G ON E.ID_Grupo = G.ID_Grupo
								JOIN xtec.CURSO_GRUPO AS C ON C.ID_Grupo = G.ID_Grupo
								JOIN xtec.CURSO AS U ON U.Codigo_Curso = C.Codigo_Curso
								JOIN xtec.SEMESTRE AS S ON S.ID_Semestre = G.Semestre;

--SELECT Nombre_Curso, Numero_Grupo, 'Semestre' + Periodo AS Periodo, Ano FROM View_Cursos_de_Estudiante WHERE Carnet = 2013053251;	

-- Vista de las noticias de todos los cursos de un estudiante
CREATE VIEW View_Noticias_Cursos
AS SELECT N.Titulo, N.Fecha, N.Mensaje, E.Carnet
   FROM xtec.NOTICIA AS N JOIN xtec.GRUPO AS G ON N.Grupo = G.ID_Grupo
									JOIN xtec.GRUPO_ESTUDIANTE AS E ON E.ID_Grupo = G.ID_Grupo;

--SELECT Titulo, Fecha, Mensaje FROM View_Noticias_Cursos WHERE Carnet = 2013053251 ORDER BY Fecha DESC;

-- Vista de los documentos en una carpeta 
CREATE VIEW View_Documentos_en_Carpeta
AS SELECT D.ID_Documento, D.Nombre_Documento, D.Tamano, D.Fecha, G.ID_Grupo, C.Nombre
   FROM xtec.DOCUMENTO AS D JOIN xtec.CARPETA AS C ON D.Carpeta = C.ID_Carpeta
								   JOIN xtec.GRUPO_CARPETA AS U ON U.ID_Carpeta = C.ID_Carpeta
								   JOIN xtec.GRUPO AS G ON G.ID_Grupo = U.ID_Grupo;

--SELECT ID_Documento, Nombre_Documento, Tamano, Fecha FROM View_Documentos_en_Carpeta WHERE ID_Grupo = 1 AND Nombre = 'Presentaciones';

--Ver todos los Cursos 
CREATE VIEW View_CursosImpartidos
AS SELECT C.Codigo_Curso, C.Nombre_Curso, C.Creditos, C.Carrera
   FROM xtec.CURSO_SEMESTRE AS S JOIN xtec.CURSO AS C ON S.Codigo_Curso = C.Codigo_Curso;

--SELECT * FROM View_CursosImpartidos;

--Ver las Notas de Cada Evaluacion 
CREATE VIEW View_Notas_Estudiante
AS
SELECT V.Especificacion, E.Nota, R.ID_Rubro, R.Nombre_Rubro,(E.Nota * (R.Porcentaje * 0.01)) AS 'Porcentaje',V.Grupo, M.CarnetFROM xtec.EVALUACION AS V JOIN xtec.ENTREGABLE AS E ON V.ID_Evaluacion = E.ID_Evaluacion						  JOIN xtec.MIEMBROS_GRUPO AS M ON M.ID_Entregable = E.ID_Entregable						  JOIN xtec.RUBRO AS R ON R.ID_Rubro = V.Rubro;--Notas de Todos los Estudiantes del Grupo						 CREATE VIEW View_Reporte_NotasASSELECT M.Carnet, V.Especificacion, E.Nota, R.ID_Rubro, R.Nombre_Rubro,(E.Nota * (R.Porcentaje * 0.01)) AS 'Porcentaje',V.GrupoFROM xtec.EVALUACION AS V JOIN xtec.ENTREGABLE AS E ON V.ID_Evaluacion = E.ID_Evaluacion						  JOIN xtec.MIEMBROS_GRUPO AS M ON M.ID_Entregable = E.ID_Entregable						  JOIN xtec.RUBRO AS R ON R.ID_Rubro = V.Rubro