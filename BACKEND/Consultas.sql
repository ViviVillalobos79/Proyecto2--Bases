--##################################################################################################
--##################					Administrador		            ############################
--##################################################################################################

--Retornar los Grupos que hay por Curso
SELECT C.Codigo_Curso, G.ID_Grupo, G.Numero_Grupo, G.Profesor 
FROM xtec.CURSO_GRUPO AS C JOIN xtec.GRUPO AS G ON C.ID_Grupo = G.ID_Grupo 
WHERE C.Codigo_Curso = 'EL1234'; 

--Retornar los Profesores que darán clases en un Semestre
SELECT S.Ano, S.Periodo, P.Cedula 
FROM xtec.SEMESTRE AS S JOIN xtec.CURSO_SEMESTRE AS C ON S.ID_Semestre = C.ID_Semestre
				JOIN xtec.CURSO AS U ON U.Codigo_Curso = C.Codigo_Curso 
				JOIN xtec.CURSO_PROFESOR AS P ON P.Codigo_Curso = C.Codigo_Curso
WHERE S.ID_Semestre = 1;

--Retornar los Profesores por Curso 
SELECT U.Codigo_Curso, U.Nombre_Curso, P.Cedula 
FROM xtec.SEMESTRE AS S JOIN xtec.CURSO_SEMESTRE AS C ON S.ID_Semestre = C.ID_Semestre
				JOIN xtec.CURSO AS U ON U.Codigo_Curso = C.Codigo_Curso 
				JOIN xtec.CURSO_PROFESOR AS P ON P.Codigo_Curso = C.Codigo_Curso
WHERE P.Codigo_Curso = 'CE3101';  --S.ID_Semestre = 1;

--Retornar Estudiantes de un Semestre
SELECT S.Ano, S.Periodo, E.Carnet 
FROM xtec.SEMESTRE AS S JOIN xtec.GRUPO AS G ON S.ID_Semestre = G.Semestre 
			    JOIN xtec.GRUPO_ESTUDIANTE AS E ON G.ID_Grupo = E.ID_Grupo
WHERE S.ID_Semestre = 1;

--Ver todos lo Cursos Habilitados
SELECT Codigo_Curso, Nombre_Curso, Creditos 
FROM xtec.CURSO AS C
WHERE C.Habilitado = 1;

--##################################################################################################
--##################						Profesor		            ############################
--##################################################################################################

--Ver los Cursos que Imparte un Profe y Obtener el ID del Grupo
SELECT C.Codigo_Curso, C.Nombre_Curso, G.ID_Grupo 
FROM xtec.CURSO AS C JOIN xtec.CURSO_PROFESOR AS P ON C.Codigo_Curso = P.Codigo_Curso
					 JOIN xtec.GRUPO AS G ON G.Profesor = P.Cedula
WHERE P.Cedula = 508880741;

--Lista de Estudiantes por Grupo 
SELECT E.Carnet 
FROM xtec.GRUPO AS G JOIN xtec.GRUPO_ESTUDIANTE AS E ON G.ID_Grupo = E.ID_Grupo
WHERE G.ID_Grupo = 1 AND G.Profesor = 508880741;

-- Gestión de documentos
-- Retorna fecha y tamaño de los documentos en una carpeta
SELECT D.Fecha, D.Tamano, D.Nombre_Documento 
FROM xtec.DOCUMENTO AS D
WHERE D.Carpeta = 1;

--Carpetas por Grupo
SELECT C.ID_Carpeta, C.Nombre
FROM xtec.GRUPO_CARPETA AS G JOIN xtec.CARPETA AS C ON G.ID_Carpeta = C.ID_Carpeta
WHERE G.ID_Grupo = 1;
--Lista de Notas por Estudiante por Curso


--##################################################################################################
--##################						Estudiante	                ############################
--##################################################################################################
--Reporte de Notas 
--Ver Notas del Estudiante En Un Grupo en Especifico // YA ESTA LA VISTA
SELECT V.Especificacion, E.Nota, R.ID_Rubro, R.Nombre_Rubro,(E.Nota * (R.Porcentaje * 0.01)) AS 'Porcentaje'FROM xtec.EVALUACION AS V JOIN xtec.ENTREGABLE AS E ON V.ID_Evaluacion = E.ID_Evaluacion						  JOIN xtec.MIEMBROS_GRUPO AS M ON M.ID_Entregable = E.ID_Entregable						  JOIN xtec.RUBRO AS R ON R.ID_Rubro = V.RubroWHERE M.Carnet = 2013053251 AND V.Grupo = 1;

--Ver las Notas de Todos los Estudiantes en un Grupo por Evaluacion 
SELECT M.Carnet, V.Especificacion, E.Nota
FROM xtec.EVALUACION AS V JOIN xtec.ENTREGABLE AS E ON V.ID_Evaluacion = E.ID_Evaluacion
						  JOIN xtec.MIEMBROS_GRUPO AS M ON M.ID_Entregable = E.ID_Entregable
						  JOIN xtec.GRUPO_ESTUDIANTE AS G ON G.Carnet = M.Carnet

SELECT M.Carnet, V.Especificacion, E.Nota, R.ID_Rubro, R.Nombre_Rubro,(E.Nota * (R.Porcentaje * 0.01)) AS 'Porcentaje'FROM xtec.EVALUACION AS V JOIN xtec.ENTREGABLE AS E ON V.ID_Evaluacion = E.ID_Evaluacion						  JOIN xtec.MIEMBROS_GRUPO AS M ON M.ID_Entregable = E.ID_Entregable						  JOIN xtec.RUBRO AS R ON R.ID_Rubro = V.Rubro
WHERE V.Grupo = 1
ORDER BY M.Carnet;

--Noticias de Un Grupo
SELECT Titulo, Fecha, Mensaje 
FROM xtec.NOTICIA
WHERE xtec.NOTICIA.Grupo = 1
ORDER BY Fecha DESC; 

SELECT Nombre_Curso, Numero_Grupo 
FROM xtec.GRUPO AS G JOIN xtec.CURSO_GRUPO AS P ON G.ID_Grupo = P.ID_Grupo
					 JOIN xtec.CURSO AS C ON C.Codigo_Curso = P.Codigo_Curso
WHERE G.ID_Grupo = 1;

SELECT SUM(Porcentaje) AS 'Suma' FROM xtec.RUBRO WHERE Grupo = 1;

SELECT * FROM xtec.ESTUDIANTE