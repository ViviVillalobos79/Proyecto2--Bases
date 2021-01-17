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

--Crear Noticias si se Actualiza 
CREATE TRIGGER TR_AsignacionNota
ON xtec.ENTREGABLE FOR UPDATE
AS 
	DECLARE @Profesor INT
	DECLARE @Grupo INT
	DECLARE @Titulo VARCHAR(255)
	SELECT @Profesor = Profesor FROM inserted AS I JOIN xtec.EVALUACION AS E ON I.ID_Evaluacion = E.ID_Evaluacion
								JOIN xtec.GRUPO AS G ON G.ID_Grupo = E.Grupo
	SELECT @Grupo = Grupo FROM inserted AS I JOIN xtec.EVALUACION AS E ON I.ID_Evaluacion = E.ID_Evaluacion
	SELECT @Titulo = Especificacion FROM inserted AS I JOIN xtec.EVALUACION AS E ON I.ID_Evaluacion = E.ID_Evaluacion
	IF UPDATE(Nota)
		BEGIN
			INSERT INTO xtec.NOTICIA(Titulo, Autor, Fecha, Mensaje, Grupo) VALUES(@Titulo, @Profesor, getdate(), 'Ya se encuentra la Nota de'+ @Titulo, @Grupo)
		END

CREATE TRIGGER TR_EliminarCarpeta 
ON xtec.CARPETA INSTEAD OF DELETE
AS
	DECLARE @ID_Carpeta INT
	SELECT @ID_Carpeta = ID_Carpeta FROM deleted
	DELETE FROM xtec.GRUPO_CARPETA WHERE ID_Carpeta = @ID_Carpeta
	DELETE FROM xtec.DOCUMENTO WHERE Carpeta = @ID_Carpeta
	DELETE FROM xtec.CARPETA WHERE ID_Carpeta = @ID_Carpeta
GO