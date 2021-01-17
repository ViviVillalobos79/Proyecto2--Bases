--Script Creacion Base XTecDigitalDB 
--Creación Esquema de la Base 
CREATE SCHEMA xtec;
GO
--##################################################################################################
--##################				Creación de las Tablas	            ############################
--##################################################################################################
--Tabla Administrador
CREATE TABLE xtec.ADMINISTRADOR(
	Cedula INT NOT NULL,
	PRIMARY KEY (Cedula)
);
--Tabla Estudiante
CREATE TABLE xtec.ESTUDIANTE(
	Carnet INT NOT NULL,
	PRIMARY KEY (Carnet)
);
--Tabla Profesor 
CREATE TABLE xtec.PROFESOR(
	Cedula INT NOT NULL,
	PRIMARY KEY (Cedula)
);
--Tabla Curso
CREATE TABLE xtec.CURSO (
	Codigo_Curso VARCHAR(8) NOT NULL,
	Nombre_Curso VARCHAR(300) NOT NULL,
	Creditos INT NOT NULL,
	Carrera VARCHAR(30) NOT NULL,
	Habilitado BIT NOT NULL,
	Administrador INT NOT NULL, 
	PRIMARY KEY (Codigo_Curso)
);
--Tabla Semestre
CREATE TABLE xtec.SEMESTRE (
	ID_Semestre INT IDENTITY(1,1) NOT NULL,
	Periodo VARCHAR(10) NOT NULL,
	Ano INT NOT NULL,
	Administrador INT NOT NULL
	PRIMARY KEY (ID_Semestre)
);
--Tabla Rubro
CREATE TABLE xtec.RUBRO(
	ID_Rubro INT IDENTITY(1,1) NOT NULL,
	Nombre_Rubro VARCHAR(30) NOT NULL,
	Porcentaje INT NOT NULL,
	Grupo INT NOT NULL
	PRIMARY KEY (ID_Rubro)
);
--Tabla Grupo
CREATE TABLE xtec.GRUPO(
	ID_Grupo INT IDENTITY(1,1) NOT NULL,
	Numero_Grupo INT NOT NULL,
	Semestre INT NOT NULL,
	Profesor INT NOT NULL,
	PRIMARY KEY (ID_Grupo)
);
--Tabla Evaluacion
CREATE TABLE xtec.EVALUACION(
	ID_Evaluacion INT IDENTITY(1,1) NOT NULL,
	Tipo_Evaluacion VARCHAR(255) NOT NULL,
	Especificacion VARCHAR(255),
	Fecha DATE NOT NULL,
	Hora TIME NOT NULL,
	Rubro INT NOT NULL,
	Grupo INT NOT NULL,
	PRIMARY KEY (ID_Evaluacion)
);
--Tabla Noticia
CREATE TABLE xtec.NOTICIA(
	ID_Noticia INT IDENTITY(1,1) NOT NULL,
	Titulo VARCHAR(255),
	Autor INT NOT NULL,
	Fecha DATE NOT NULL,
	Mensaje VARCHAR(255),
	Grupo INT NOT NULL,
	PRIMARY KEY (ID_Noticia)
);
--Tabla Entregable
CREATE TABLE xtec.ENTREGABLE(
	ID_Entregable INT IDENTITY(1,1) NOT NULL,
	ID_Evaluacion INT NOT NULL,
	Observaciones VARCHAR(255), 
	Nota INT NOT NULL,
	Fecha_Entrega DATE NOT NULL,
	Docu_Estudiante VARCHAR(255),
	Docu_Profesor VARCHAR(255),
	PRIMARY KEY (ID_Entregable)
);
--Tabla Documento
CREATE TABLE xtec.DOCUMENTO(
	ID_Documento INT IDENTITY(1,1) NOT NULL,
	Tamano INT NOT NULL,
	Fecha DATE NOT NULL, 
	Nombre_Documento VARCHAR(255) NOT NULL,
	Carpeta INT NOT NULL,
	PRIMARY KEY (ID_Documento)
);

--Tabla Carpeta
CREATE TABLE xtec.CARPETA(
	ID_Carpeta INT IDENTITY(1,1) NOT NULL,
	Nombre VARCHAR(30) NOT NULL,
	Fecha DATE NOT NULL,
	PRIMARY KEY(ID_Carpeta)
);

--Tabla Curso-Semestre
CREATE TABLE xtec.CURSO_SEMESTRE(
	Codigo_Curso VARCHAR(8) NOT NULL,
	ID_Semestre INT NOT NULL,
	PRIMARY KEY (Codigo_Curso, ID_Semestre)
);
--Tabla Curso-Profesor
CREATE TABLE xtec.CURSO_PROFESOR(
	Codigo_Curso VARCHAR(8) NOT NULL,
	Cedula INT NOT NULL,
	PRIMARY KEY (Codigo_Curso, Cedula)
);
--Tabla Curso-Grupo
CREATE TABLE xtec.CURSO_GRUPO(
	Codigo_Curso VARCHAR(8) NOT NULL,
	ID_Grupo INT NOT NULL,
	PRIMARY KEY (Codigo_Curso, ID_Grupo)
);
--Tabla Grupo-Estudiante
CREATE TABLE xtec.GRUPO_ESTUDIANTE(
	ID_Grupo INT NOT NULL,
	Carnet INT NOT NULL,
	PRIMARY KEY (ID_Grupo, Carnet)
);
--Tabla Grupo-Carpeta
CREATE TABLE xtec.GRUPO_CARPETA(
	ID_Carpeta INT NOT NULL,
	ID_Grupo INT NOT NULL,
	PRIMARY KEY(ID_Carpeta, ID_Grupo)
);
--Tabla Miembros-Grupos
CREATE TABLE xtec.MIEMBROS_GRUPO(
	ID_Entregable INT NOT NULL,
	Carnet INT NOT NULL,
	PRIMARY KEY(ID_Entregable, Carnet)
);
--##################################################################################################
--##################	    Alter Table para las Foreign Key 	        ############################
--##################################################################################################
--Agregar Foreign Key en Semestre
ALTER TABLE xtec.SEMESTRE
ADD FOREIGN KEY (Administrador) REFERENCES xtec.ADMINISTRADOR(Cedula);

--Agregar Foreign Key en Curso
ALTER TABLE xtec.CURSO
ADD FOREIGN KEY (Administrador) REFERENCES xtec.ADMINISTRADOR(Cedula);

--Agregar Foreign Key en Grupo
ALTER TABLE xtec.GRUPO
ADD FOREIGN KEY (Semestre) REFERENCES xtec.SEMESTRE(ID_Semestre);

--Agregar Foreign Key en Grupo
ALTER TABLE xtec.GRUPO
ADD FOREIGN KEY (Profesor) REFERENCES xtec.PROFESOR(Cedula);

--Agregar Foreign Key en Rubro
ALTER TABLE xtec.RUBRO
ADD FOREIGN KEY (Grupo) REFERENCES xtec.Grupo(ID_Grupo);

--Agregar Foreign Key en Evaluacion
ALTER TABLE xtec.EVALUACION
ADD FOREIGN KEY (Rubro) REFERENCES xtec.RUBRO(ID_Rubro);

--Agregar Foreign Key en Evaluacion
ALTER TABLE xtec.EVALUACION
ADD FOREIGN KEY (Grupo) REFERENCES xtec.GRUPO(ID_Grupo);

--Agregar Foreign Key en Noticia
ALTER TABLE xtec.NOTICIA
ADD FOREIGN KEY (Grupo) REFERENCES xtec.GRUPO(ID_Grupo);

--Agregar Foreign Key Entregable
ALTER TABLE xtec.ENTREGABLE
ADD FOREIGN KEY (ID_Evaluacion) REFERENCES xtec.EVALUACION(ID_Evaluacion);

--Agregar Foreign Key en Documento
ALTER TABLE xtec.DOCUMENTO
ADD FOREIGN KEY (Carpeta) REFERENCES xtec.CARPETA(ID_Carpeta);

--Agregar Foreign Key en Curso-Profesor
ALTER TABLE xtec.CURSO_PROFESOR
ADD FOREIGN KEY (Codigo_Curso) REFERENCES xtec.CURSO(Codigo_Curso);
--Agregar Foreign Key en Curso-Profesor
ALTER TABLE xtec.CURSO_PROFESOR
ADD FOREIGN KEY (Cedula) REFERENCES xtec.PROFESOR(Cedula);

--Agregar Foreign Key en Curso-Grupo
ALTER TABLE xtec.CURSO_GRUPO
ADD FOREIGN KEY (Codigo_Curso) REFERENCES xtec.CURSO(Codigo_Curso);
--Agregar Foreign Key en Curso-Grupo
ALTER TABLE xtec.CURSO_GRUPO
ADD FOREIGN KEY (ID_Grupo) REFERENCES xtec.GRUPO(ID_Grupo);

--Agregar Foreign Key en Grupo-Estudiante
ALTER TABLE xtec.GRUPO_ESTUDIANTE
ADD FOREIGN KEY (ID_Grupo) REFERENCES xtec.GRUPO(ID_Grupo);
--Agregar Foreign Key en Grupo-Estudiante
ALTER TABLE xtec.GRUPO_ESTUDIANTE
ADD FOREIGN KEY (Carnet) REFERENCES xtec.ESTUDIANTE(Carnet);

--Agregar Foreign Key en Curso-Semestre
ALTER TABLE xtec.CURSO_SEMESTRE
ADD FOREIGN KEY (Codigo_Curso) REFERENCES xtec.CURSO(Codigo_Curso);
--Agregar Foreign Key en Curso-Semestre
ALTER TABLE xtec.CURSO_SEMESTRE
ADD FOREIGN KEY (ID_Semestre) REFERENCES xtec.SEMESTRE(ID_Semestre);

--Agregar Foreign Key en Grupo-Carpeta
ALTER TABLE xtec.GRUPO_CARPETA
ADD FOREIGN KEY (ID_Carpeta) REFERENCES xtec.CARPETA(ID_Carpeta);
--Agregar Foreign Key en Grupo-Carpeta
ALTER TABLE xtec.GRUPO_CARPETA
ADD FOREIGN KEY (ID_Grupo) REFERENCES xtec.GRUPO(ID_Grupo);

--Agregar Foreign Key en Miembros-Grupo
ALTER TABLE xtec.MIEMBROS_GRUPO
ADD FOREIGN KEY (ID_Entregable) REFERENCES xtec.ENTREGABLE(ID_Entregable);
--Agregar Foreign Key en Miembros-Grupo
ALTER TABLE xtec.MIEMBROS_GRUPO
ADD FOREIGN KEY (Carnet) REFERENCES xtec.ESTUDIANTE(Carnet);