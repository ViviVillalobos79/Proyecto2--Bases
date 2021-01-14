--Consultas XTEC Digital
--##################################################################################################
--##################					Administrador		            ############################
--##################################################################################################
--Retornar los Semestres Creados por un Administrador
SELECT Ano, Periodo FROM xtec.SEMESTRE AS S WHERE S.Administrador = 405640147; 
--Retornar los Cursos que se dan en un Semestre
SELECT C.Codigo_Curso, C.Nombre_Curso FROM xtec.CURSO_SEMESTRE AS S JOIN xtec.CURSO AS C ON S.Codigo_Curso = C.Codigo_Curso WHERE S.ID_Semestre = 1;
--Retornar los Grupos que hay por Curso
SELECT G.ID_Grupo, G.Numero_Grupo, G.Profesor FROM xtec.CURSO_GRUPO AS C JOIN xtec.GRUPO AS G ON C.ID_Grupo = G.ID_Grupo WHERE C.Codigo_Curso = 'EL1234'; 
--Retornar los Profesores que darán clases en un Semestre
SELECT S.Ano, S.Periodo, P.Cedula FROM xtec.SEMESTRE AS S JOIN xtec.CURSO_SEMESTRE AS C ON S.ID_Semestre = C.ID_Semestre
				JOIN xtec.CURSO AS U ON U.Codigo_Curso = C.Codigo_Curso 
				JOIN xtec.CURSO_PROFESOR AS P ON P.Codigo_Curso = C.Codigo_Curso
				WHERE S.ID_Semestre = 1;
--Retornar los Profesores por Curso 
SELECT U.Codigo_Curso, U.Nombre_Curso, P.Cedula FROM xtec.SEMESTRE AS S JOIN xtec.CURSO_SEMESTRE AS C ON S.ID_Semestre = C.ID_Semestre
				JOIN xtec.CURSO AS U ON U.Codigo_Curso = C.Codigo_Curso 
				JOIN xtec.CURSO_PROFESOR AS P ON P.Codigo_Curso = C.Codigo_Curso
				WHERE S.ID_Semestre = 1;
--Retornar Estudiantes de un Semestre
SELECT S.Ano, S.Periodo, E.Carnet FROM xtec.SEMESTRE AS S JOIN xtec.GRUPO AS G ON S.ID_Semestre = G.Semestre 
			    JOIN xtec.GRUPO_ESTUDIANTE AS E ON G.ID_Grupo = E.ID_Grupo
				WHERE S.ID_Semestre = 1;
--##################################################################################################
--##################						Profesor		            ############################
--##################################################################################################
--Lista de Cursos que Imparte
SELECT C.Codigo_Curso, C.Nombre_Curso, C.Carrera FROM xtec.CURSO AS C JOIN xtec.CURSO_PROFESOR AS P ON C.Codigo_Curso = P.Codigo_Curso
												 WHERE P.Cedula = 508880741;
--Lista de Estudiantes por Grupo 
SELECT E.Carnet FROM xtec.GRUPO AS G JOIN xtec.GRUPO_ESTUDIANTE AS E ON G.ID_Grupo = E.ID_Grupo
			    WHERE G.ID_Grupo = 1 AND G.Profesor = 508880741;
--Lista de Notas por Estudiante por Curso
--##################################################################################################
--##################						Estudiante	                ############################
--##################################################################################################
--Lista de Cursos
SELECT U.Nombre_Curso, G.Numero_Grupo, 'Semestre' + S.Periodo AS Periodo, S.Ano FROM xtec.GRUPO_ESTUDIANTE AS E JOIN xtec.GRUPO AS G ON E.ID_Grupo = G.ID_Grupo
								JOIN xtec.CURSO_GRUPO AS C ON C.ID_Grupo = G.ID_Grupo
								JOIN xtec.CURSO AS U ON U.Codigo_Curso = C.Codigo_Curso
								JOIN xtec.SEMESTRE AS S ON S.ID_Semestre = G.Semestre
								WHERE E.Carnet = 2013053251;
--Grupo con Profesor y Estudiantes 
SELECT E.Carnet, G.Profesor FROM xtec.GRUPO AS G JOIN xtec.GRUPO_ESTUDIANTE AS E ON G.ID_Grupo = E.ID_Grupo
			    WHERE G.ID_Grupo = 1;

SELECT G.Profesor FROM xtec.GRUPO AS G WHERE G.ID_Grupo = 1;
--Visualizar Noticias: Como en la pagina Principal al entrar
SELECT N.Titulo, N.Fecha, N.Mensaje FROM xtec.NOTICIA AS N JOIN xtec.GRUPO AS G ON N.Grupo = G.ID_Grupo
									JOIN xtec.GRUPO_ESTUDIANTE AS E ON E.ID_Grupo = G.ID_Grupo
									WHERE E.Carnet = 2013053251
									ORDER BY N.Fecha DESC;
--Visualizar Documentos Segun la Carpeta
--Los parametros serían el ID del Grupo y el nombre de la Carpeta que Quiere Ver
SELECT D.ID_Documento, D.Tamano, D.Fecha FROM xtec.DOCUMENTO AS D JOIN xtec.CARPETA AS C ON D.Carpeta = C.ID_Carpeta
								   JOIN xtec.GRUPO_CARPETA AS U ON U.ID_Carpeta = C.ID_Carpeta
								   JOIN xtec.GRUPO AS G ON G.ID_Grupo = U.ID_Grupo
								   WHERE G.ID_Grupo = 1 AND C.Nombre = 'Presentaciones';
SELECT Nombre FROM xtec.CARPETA;
--Reporte de Notas 

--Este es para tomar la Última Insercion Hecha 
SELECT TOP 1 ID_Semestre FROM xtec.SEMESTRE ORDER BY ID_SEMESTRE DESC;