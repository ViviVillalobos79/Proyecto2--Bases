--##################################################################################################
--##################				   Store Procedures		            ############################
--##################################################################################################
--SP Inicializar Semestre
--Store Procedure Creacion de Curso
CREATE PROCEDURE SP_CREACION_CURSO
AS
BEGIN 
	--Se crean Tablas Auxiliares
	CREATE TABLE #AUX_CURSO1 (COD VARCHAR(8))
	CREATE TABLE #AUX_CURSO2 (COD VARCHAR(8))
	--Se Insertan los Datos de la Tabla Temp Principal en una Tabla Temp Auxiliar
	INSERT INTO #CursoAux SELECT DISTINCT CodCurso,NomCurso,Creditos,Carrera,Habilitado,CedAdmin FROM #PRUEBA;
	--Se inserta solo el Codigo del Curso en una de las Tablas Auxiliares: Se usa como un tipo de Filtro
	INSERT INTO #AUX_CURSO1 SELECT Codigo_Curso FROM #CursoAux;
	--Se declaran 2 Contadores: Uno Usado para un While y el Otro para Comparacion
	DECLARE @CONT INT
	DECLARE @CONT2 INT
	--Se le indica que valor tendrá el Primer Contador (el del While)
	SELECT @CONT = COUNT(*) FROM #AUX_CURSO1;
	--Se comienza el Ciclo del While: Cuando es 0 ya no habría más Cursos que Verificar/Revisar por lo que Termina
	WHILE @CONT > 0
	BEGIN 
		--Se declara otra Variable: Esta se usa para Comparacion 
		DECLARE @CODAUX VARCHAR(8)
		--Se le Asigna como Valor el Primer Codigo de Curso que hay en la Tabla Auxiliar 1
		SET @CODAUX = (SELECT TOP 1 COD FROM #AUX_CURSO1)
		--En la Tabla Auxiliar 2 solo se insertan los Datos que sean iguales a la Variable de la Tabla Principal de los Cursos
		INSERT INTO #AUX_CURSO2 SELECT Codigo_Curso FROM CURSO WHERE CURSO.Codigo_Curso = @CODAUX;
		--Se le asigna el valor al Segundo Contador
		SELECT @CONT2 = COUNT(*) FROM #AUX_CURSO2
		--Si @CONT2 !=1 (para este caso sería 0) es porque no existe el Curso
		--Por lo que se Procede con la Insercion de este en la Tabla Principal de Cursos
		IF @CONT2 != 1
			BEGIN
				--Insertamos el nuevo Curso en la Tabla
				INSERT INTO CURSO SELECT TOP 1 Codigo_Curso, Nombre_Curso, Creditos, Carrera, Habilitado, Administrador FROM #CursoAux;
				--Eliminamos el Curso de la Tabla Auxiliar 1
				DELETE FROM #AUX_CURSO1 WHERE #AUX_CURSO1.COD = @CODAUX
				--Eliminamos el Curso de la Tabla Temp Auxiliar
				DELETE FROM #CursoAux WHERE #CursoAux.Codigo_Curso = @CODAUX
				--Asignamos el Nuevo valor al Primer Contador para el Ciclo del While
				SELECT @CONT = COUNT(*) FROM #AUX_CURSO1
				--Asignamos el nuevo valor de la Variable para la Siguiente Comparacion
				SET @CODAUX = (SELECT TOP 1 COD FROM #AUX_CURSO1)				
			END
		--Si @CONT2 = 1 es porque ya existe el Curso
		--Por lo que se Procede con la Eliminación de este en las Tablas Temp y Auxiliar de Cursos
		--Para seguir con la Verificación/Revision de los Otro Cursos
		ELSE
			BEGIN
				--Eliminamos el Curso de la Tabla Auxiliar 1
				DELETE FROM #AUX_CURSO1 WHERE #AUX_CURSO1.COD = @CODAUX
				--Eliminamos el Curso de la Tabla Temp Auxiliar
				DELETE FROM #CursoAux WHERE #CursoAux.Codigo_Curso = @CODAUX
				--Asignamos el Nuevo valor al Primer Contador para el Ciclo del While
				SELECT @CONT = COUNT(*) FROM #AUX_CURSO1
				--Asignamos el nuevo valor de la Variable para la Siguiente Comparacion
				SET @CODAUX = (SELECT TOP 1 COD FROM #AUX_CURSO1)
			END
	END
END

--Store Procedure Creacion de Semestre
CREATE PROCEDURE SP_CREACION_SEMESTRE
AS 
BEGIN
	--Se crea una Tabla Auxiliar
	CREATE TABLE #AUX1 (ANO INT, PERIODO VARCHAR(10))
	--Se declaran las Variables  
	DECLARE @ANOAUX INT
	DECLARE @PERIODOAUX VARCHAR(10)
	DECLARE @CONT INT
	--Se insertan los valores en la Tabla Temporal de Semestre
	INSERT INTO #SemAux SELECT DISTINCT Periodo,Ano,CedAdmin FROM #PRUEBA;
	--Se les pone el valor a las Variables 
	SET @ANOAUX = (SELECT TOP 1 Ano FROM #SemAux)
	SET @PERIODOAUX = (SELECT TOP 1 Periodo FROM #SemAux)
	--Se insertan datos en la Tabla Auxiliar
	INSERT INTO #AUX1 SELECT Ano,Periodo FROM SEMESTRE WHERE SEMESTRE.Ano = @ANOAUX AND SEMESTRE.Periodo = @PERIODOAUX
	--Se le asigna el valor a la Variable 
	SELECT @CONT = COUNT(*) FROM #AUX1
	--Si el Contador es 0 es porque no existe el Semestre
	IF @CONT = 0
		BEGIN
			--Se Crea el Semestre
			INSERT INTO SEMESTRE SELECT Periodo,Ano,Admin FROM #SemAux
		END
	ELSE
		BEGIN
			--Se elimina de la Tabla Auxiliar 
			DELETE FROM #AUX1 WHERE #AUX1.ANO = @ANOAUX
		END
END 

--Store Procedure Creacion de Grupo
CREATE PROCEDURE SP_CREACION_GRUPO
AS
BEGIN 
	--Se declaran/crean variables a Utilizar
	DECLARE @IDGRUPOAUX INT
	DECLARE @CODCURSOAUX VARCHAR(8)
	DECLARE @CONT1 INT
	--Se insertan los Datos que se Ocupan para la Creacion de Grupos en una Tabla Temporal
	INSERT INTO #GrupoAux SELECT DISTINCT CodCurso,NumGrupo,Periodo,CedProfe FROM #PRUEBA
	--Se asigna el valor a la Variable
	SELECT @CONT1 = COUNT(*) FROM #GrupoAux
	--Si el contador es != 1 es porque hay más de un Grupo por Crear
	IF @CONT1 != 1
		BEGIN
		--Mientras la Cantidad de Grupos sea Mayor que 0
		WHILE @CONT1 > 0
			BEGIN
				--Se crea un nuevo Grupo 
				INSERT INTO GRUPO SELECT TOP 1 Numero_Grupo, Semestre, Profesor FROM #GrupoAux
				--Se asigan el Valor a la Variable para el ID del Nuevo Grupo
				SET @IDGRUPOAUX = (SELECT TOP 1 ID_Grupo FROM GRUPO ORDER BY GRUPO.ID_Grupo DESC)
				--Insert en Tabla Cruzada para saber que Profesror tiene a cargo ese Grupo
				INSERT INTO CURSO_PROFESOR SELECT TOP 1 CodCurso, Profesor FROM #GrupoAux
				--Se asigna Valor a la Variable para saber a que Curso Corresponde
				SET @CODCURSOAUX = (SELECT TOP 1 CodCurso FROM #GrupoAux)
				--Insert en Tabla Cruzada para saber a que curso corresponde el Grupo
				INSERT INTO CURSO_GRUPO(Codigo_Curso,ID_Grupo) VALUES (@CODCURSOAUX, @IDGRUPOAUX)
				--Se declaran Variables a Utilizar
				DECLARE @AUX1 VARCHAR(8) --Codigo Curso
				DECLARE @AUX2 INT --Numero Grupo
				DECLARE @AUX3 INT --Semestre
				DECLARE @AUX4 INT --Cedula Profesor
				DECLARE @AUX5 INT --Estudiante
				--Se asigna el Valor a las Variables
				SET @AUX1 = (SELECT TOP 1 CodCurso FROM #GrupoAux)
				SET @AUX2 = (SELECT TOP 1 Numero_Grupo FROM #GrupoAux)
				SET @AUX3 = (SELECT TOP 1 Semestre FROM #GrupoAux)
				SET @AUX4 = (SELECT TOP 1 Profesor FROM #GrupoAux)
				--Se crea una Tabla Auxiliar
				CREATE TABLE #AUX (ESTUDIANTE INT)
				--Se meten los datos a la Tabla Auxiliar Creada
				INSERT INTO #AUX SELECT Carnet FROM #PRUEBA WHERE #PRUEBA.CodCurso = @AUX1 AND #PRUEBA.NumGrupo = @AUX2 AND #PRUEBA.Periodo = @AUX3 AND #PRUEBA.CedProfe = @AUX4
				--Se declara una Variable que sirve como Contador
				DECLARE @CONT2 INT
				--Se le asigna el Valor al Contador
				SELECT @CONT2 = COUNT(*) FROM #AUX
				--Mientras el Contador sea Mayor a 0 se vería que estudiantes estan en el grupo
				WHILE @CONT2 > 0
					BEGIN
						--Se asigna valor a la Variable
						SET @AUX5 = (SELECT TOP 1 ESTUDIANTE FROM #AUX)
						--Se hace Insert para saber a que grupo esta ligado el Estudiante
						INSERT INTO GRUPO_ESTUDIANTE VALUES (@IDGRUPOAUX, @AUX5)
						--Se Elimina el Estudiante que ya se ingreso
						DELETE FROM #AUX WHERE #AUX.ESTUDIANTE = @AUX5
						--Se le asigan el nuevo Valor a la Variable
						SELECT @CONT2 = COUNT(*) FROM #AUX
					END
				--Se elimina el Grupo que ya se ingreso
				DELETE FROM #GrupoAux WHERE #GrupoAux.CodCurso = @AUX1 AND #GrupoAux.Numero_Grupo = @AUX2 AND #GrupoAux.Semestre = @AUX3 AND #GrupoAux.Profesor = @AUX4
				--Se elimina la Tabla Auxiliar
				DROP TABLE #AUX
				--Se asigna nuevo Valor a la Variable
				SELECT @CONT1 = COUNT(*) FROM #GrupoAux
			END
		END
	ELSE
		BEGIN
				--Se crea un Nuevo Grupo
				INSERT INTO GRUPO SELECT TOP 1 Numero_Grupo, Semestre, Profesor FROM #GrupoAux
				--Se asigan el Valor a la Variable para el ID del Nuevo Grupo
				SET @IDGRUPOAUX = (SELECT TOP 1 ID_Grupo FROM GRUPO ORDER BY GRUPO.ID_Grupo DESC)
				--Insert en Tabla Cruzada para saber que Profesror tiene a cargo ese Grupo
				INSERT INTO CURSO_PROFESOR SELECT TOP 1 CodCurso, Profesor FROM #GrupoAux
				--Se asigna Valor a la Variable para saber a que Curso Corresponde
				SET @CODCURSOAUX = (SELECT TOP 1 CodCurso FROM #GrupoAux)
				--Insert en Tabla Cruzada para saber a que curso corresponde el Grupo
				INSERT INTO CURSO_GRUPO VALUES (@CODCURSOAUX, @IDGRUPOAUX)
				--Se declaran Variables a Utilizar
				DECLARE @AUX11 VARCHAR(8) --Codigo Curso
				DECLARE @AUX22 INT --Numero Grupo
				DECLARE @AUX33 INT --Semestre
				DECLARE @AUX44 INT --Cedula Profesor
				DECLARE @AUX55 INT --Estudiante
				--Se asigna el Valor a las Variables
				SET @AUX11 = (SELECT TOP 1 CodCurso FROM #GrupoAux)
				SET @AUX22 = (SELECT TOP 1 Numero_Grupo FROM #GrupoAux)
				SET @AUX33 = (SELECT TOP 1 Semestre FROM #GrupoAux)
				SET @AUX44 = (SELECT TOP 1 Profesor FROM #GrupoAux)
				--Se crea una Tabla Auxiliar
				CREATE TABLE #AUX2 (ESTUDIANTE INT)
				--Se meten los datos a la Tabla Auxiliar Creada
				INSERT INTO #AUX2 SELECT Carnet FROM #PRUEBA WHERE #PRUEBA.CodCurso = @AUX11 AND #PRUEBA.NumGrupo = @AUX22 AND #PRUEBA.Periodo = @AUX33 AND #PRUEBA.CedProfe = @AUX44
				--Se declara una Variable que sirve como Contador
				DECLARE @CONT22 INT
				--Se le asigna el Valor al Contador
				SELECT @CONT22 = COUNT(*) FROM #AUX
				--Mientras el Contador sea Mayor a 0 se vería que estudiantes estan en el grupo
				WHILE @CONT22 > 0
					BEGIN
						--Se asigna valor a la Variable
						SET @AUX55 = (SELECT TOP 1 ESTUDIANTE FROM #AUX2)
						--Se hace Insert para saber a que grupo esta ligado el Estudiante
						INSERT INTO GRUPO_ESTUDIANTE VALUES (@IDGRUPOAUX, @AUX55)
						--Se Elimina el Estudiante que ya se ingreso
						DELETE FROM #AUX2 WHERE #AUX.ESTUDIANTE = @AUX55
						--Se le asigan el nuevo Valor a la Variable
						SELECT @CONT22 = COUNT(*) FROM #AUX2
					END
			END
END

--Stored Procedure para Inicializar el Semestre: Recibe como parametro un JSON con la Información de Excel
CREATE PROCEDURE SP_INICIAR_SEMESTRE(@DATOS NVARCHAR(MAX))
AS
BEGIN 
	--Se crea una Tabla Temporal donde se Guardan los Datos del Excel (JSON)
	CREATE TABLE #PRUEBA (
		Carnet INT,
		CodCurso VARCHAR(8),
		NomCurso VARCHAR(300),
		Creditos INT,
		Carrera VARCHAR(30),
		Habilitado BIT,
		Ano INT, 
		Periodo VARCHAR(30),
		NumGrupo INT,
		CedProfe INT,
		CedAdmin INT);
	--Se insertan los Valores en la Tabla del JSON
	INSERT INTO #PRUEBA 
	SELECT Carnet,CodCurso,NomCurso,Creditos,Carrera,Habilitado,Ano,Periodo,NumGrupo,CedProfe,CedAdmin
	FROM OPENJSON(@DATOS)
		WITH (Carnet INT '$.Carnet',CodCurso VARCHAR(8) '$.CodCurso',NomCurso VARCHAR(300) '$.NomCurso',Creditos INT '$.Creditos',
		Carrera VARCHAR(30) '$.Carrera',Habilitado BIT '$.Habilitado',
		Ano INT '$.Ano',Periodo VARCHAR(30) '$.Periodo',NumGrupo INT '$.NumGrupo',CedProfe INT '$.CedProfe',CedAdmin INT '$.CedAdmin')
	--Tabla Temporal para la Creacion del Semestre
	CREATE TABLE #SemAux (	
		Periodo VARCHAR(10) NOT NULL,
		Ano INT NOT NULL,
		Admin INT NOT NULL
		);
	--Tabla Temporal para la Creacion de los Cursos
	CREATE TABLE #CursoAux(
		Codigo_Curso VARCHAR(8),
		Nombre_Curso VARCHAR(300),
		Creditos INT,
		Carrera VARCHAR(30),
		Habilitado BIT,
		Administrador INT 
		);
	--Tabla Temporal para la Creacion de Grupos 
	CREATE TABLE #GrupoAux(
		CodCurso VARCHAR(8),
		Numero_Grupo INT,
		Semestre INT,
		Profesor INT,
		);
	--Se llaman los Otros Stored Procedures para la Creacion del Semestre
	EXEC SP_CREACION_CURSO;
	EXEC SP_CREACION_SEMESTRE;
	EXEC SP_CREACION_GRUPO;
END
--SP 1: Obtener todos los Archivos que pertenecen a una Carpeta en un Grupo
CREATE PROCEDURE ArchivosPorCarpeta @ID_Grupo INT, @Nombre VARCHAR(30) 
AS 
SELECT * FROM xtec.CARPETA AS C JOIN xtec.DOCUMENTO AS D ON C.ID_Carpeta = D.Carpeta 
			  JOIN xtec.GRUPO_CARPETA AS G ON G.ID_Carpeta = C.ID_Carpeta WHERE G.ID_Grupo = @ID_Grupo AND C.Nombre = @Nombre; 
--Pruebas
--EXEC ArchivosPorCarpeta @ID_Grupo = 1, @Nombre = 'Presentaciones';
--EXEC ArchivosPorCarpeta @ID_Grupo = 1, @Nombre = 'Quices';
--SP 2

--##################################################################################################
--##################					   Triggers     	            ############################
--##################################################################################################

--Trigger Noticia
CREATE TRIGGER TR_NoticiaNota
ON xtec.EVALUACION FOR INSERT
AS
	DECLARE @Profesor INT
	DECLARE @Grupo INT
	DECLARE @Titulo VARCHAR(255)
	SELECT @Grupo = Grupo FROM inserted
	SELECT @Titulo = Especificacion FROM inserted
	SELECT @Profesor = Profesor FROM inserted JOIN xtec.GRUPO ON inserted.Grupo = xtec.GRUPO.ID_Grupo
	INSERT INTO xtec.NOTICIA(Titulo, Autor, Fecha, Mensaje, Grupo) VALUES(@Titulo, @Profesor, getdate(), 'Ya se encuentra en XTECDigital la especificación sobre'+ @Titulo, @Grupo)
GO

--Trigger Elegido 1: Cuando se crea el Curso se le generan las Evaluaciones
CREATE TRIGGER TR_GrupoEvaluaciones
ON xtec.GRUPO FOR INSERT
AS
	DECLARE @ID_Grupo INT
	SELECT @ID_Grupo = ID_Grupo FROM inserted
	INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Grupo) VALUES ('Quices', 30, @ID_Grupo)
	INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Grupo) VALUES ('Examenes', 30, @ID_Grupo)
	INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Grupo) VALUES ('Proyectos', 40, @ID_Grupo)
GO
--Trigger Elegido 2: Cuando se genera un Grupo se le generan las Carpetas 
CREATE TRIGGER TR_GrupoCarpetas
ON xtec.GRUPO FOR INSERT
AS
	DECLARE @ID_Grupo INT
	DECLARE @ID_Carpeta INT
	SELECT @ID_Grupo = ID_Grupo FROM inserted
	INSERT INTO xtec.CARPETA(Nombre, Fecha) VALUES ('Presentaciones', getdate())
	SELECT @ID_Carpeta = ID_Carpeta FROM xtec.CARPETA
	INSERT INTO xtec.GRUPO_CARPETA(ID_Carpeta, ID_Grupo) VALUES (@ID_Carpeta, @ID_Grupo)
	INSERT INTO xtec.CARPETA(Nombre, Fecha) VALUES ('Quices', getdate())
	SELECT @ID_Carpeta = ID_Carpeta FROM xtec.CARPETA
	INSERT INTO xtec.GRUPO_CARPETA(ID_Carpeta, ID_Grupo) VALUES (@ID_Carpeta, @ID_Grupo)
	INSERT INTO xtec.CARPETA(Nombre, Fecha) VALUES ('Exámenes', getdate())
	SELECT @ID_Carpeta = ID_Carpeta FROM xtec.CARPETA
	INSERT INTO xtec.GRUPO_CARPETA(ID_Carpeta, ID_Grupo) VALUES (@ID_Carpeta, @ID_Grupo)
	INSERT INTO xtec.CARPETA(Nombre, Fecha) VALUES ('Proyectos', getdate())
	SELECT @ID_Carpeta = ID_Carpeta FROM xtec.CARPETA
	INSERT INTO xtec.GRUPO_CARPETA(ID_Carpeta, ID_Grupo) VALUES (@ID_Carpeta, @ID_Grupo)
GO
--Trigger Elegido: No se pueden eliminar los Rubros por Defecto
CREATE TRIGGER TR_EliminarRubro
ON xtec.RUBRO FOR DELETE
AS
	DECLARE @Rubro VARCHAR(30)
	DECLARE @ID_Grupo INT
	SELECT @Rubro = Nombre_Rubro FROM deleted
	SELECT @ID_Grupo = Grupo FROM deleted
	IF @Rubro = 'Quices' 
		BEGIN 
			RAISERROR ('No se puede eliminar este Rubro',16,1)
			ROLLBACK TRANSACTION
		END
	ELSE IF @Rubro = 'Examenes' 
		BEGIN 
			RAISERROR ('No se puede eliminar este Rubro',16,1)
			ROLLBACK TRANSACTION
		END
	ELSE IF @Rubro = 'Proyectos'
		BEGIN 
			RAISERROR ('No se puede eliminar este Rubro',16,1)
			ROLLBACK TRANSACTION
		END
	ELSE
		BEGIN 
		--Buscar eliminar todo lo del Rubro en otro lado
			DELETE FROM xtec.RUBRO WHERE Nombre_Rubro = @Rubro AND Grupo = @ID_Grupo
		END
GO

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


SELECT * FROM View_Estudiantes_Matriculados WHERE ID_Grupo = 1;

-- Vista de cursos de un Estudiante
CREATE VIEW View_Cursos_de_Estudiante 
AS SELECT U.Nombre_Curso, U.Codigo_Curso, G.Numero_Grupo, 'Semestre' + S.Periodo AS Periodo, S.Ano, E.Carnet 
   FROM xtec.GRUPO_ESTUDIANTE AS E JOIN xtec.GRUPO AS G ON E.ID_Grupo = G.ID_Grupo
								JOIN xtec.CURSO_GRUPO AS C ON C.ID_Grupo = G.ID_Grupo
								JOIN xtec.CURSO AS U ON U.Codigo_Curso = C.Codigo_Curso
								JOIN xtec.SEMESTRE AS S ON S.ID_Semestre = G.Semestre;

SELECT Nombre_Curso, Codigo_Curso, Numero_Grupo, Periodo, Ano FROM View_Cursos_de_Estudiante WHERE Carnet = 2013053251;	

-- Vista de las noticias de todos los cursos de un estudiante
CREATE VIEW View_Noticias_Cursos
AS SELECT N.Titulo, N.Fecha, N.Mensaje, E.Carnet
   FROM xtec.NOTICIA AS N JOIN xtec.GRUPO AS G ON N.Grupo = G.ID_Grupo
									JOIN xtec.GRUPO_ESTUDIANTE AS E ON E.ID_Grupo = G.ID_Grupo;

SELECT Titulo, Fecha, Mensaje FROM View_Noticias_Cursos WHERE Carnet = 2013053251 ORDER BY Fecha DESC;

-- Vista de los documentos en una carpeta 
CREATE VIEW View_Documentos_en_Carpeta
AS SELECT D.ID_Documento, D.Tamano, D.Fecha, G.ID_Grupo, C.Nombre
   FROM xtec.DOCUMENTO AS D JOIN xtec.CARPETA AS C ON D.Carpeta = C.ID_Carpeta
								   JOIN xtec.GRUPO_CARPETA AS U ON U.ID_Carpeta = C.ID_Carpeta
								   JOIN xtec.GRUPO AS G ON G.ID_Grupo = U.ID_Grupo;

SELECT ID_Documento, Tamano, Fecha FROM View_Documentos_en_Carpeta WHERE ID_Grupo = 1 AND Nombre = 'Presentaciones';

--Ver todos los Cursos del Sistema - Administrador
CREATE VIEW View_CursosImpartidos
AS SELECT C.Codigo_Curso, C.Nombre_Curso, C.Creditos, C.Carrera
   FROM xtec.CURSO_SEMESTRE AS S JOIN xtec.CURSO AS C ON S.Codigo_Curso = C.Codigo_Curso;

SELECT * FROM View_CursosImpartidos;