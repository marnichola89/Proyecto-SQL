
CREATE DATABASE Universidad;
USE Universidad;

-- Tabla Estudiantes
CREATE TABLE Estudiantes (
    EstudianteID INT PRIMARY KEY,
    Nombre VARCHAR(50),
    PrimerApellido VARCHAR(50),
    SegundoApellido VARCHAR(50),
    FechaNacimiento DATE
);

-- Tabla Profesores
CREATE TABLE Profesores (
    ProfesorID INT PRIMARY KEY,
    Nombre VARCHAR(50),
    PrimerApellido VARCHAR(50),
    SegundoApellido VARCHAR(50),
    Especialidad VARCHAR(50)
);

-- Tabla Cursos
CREATE TABLE Cursos (
    CursoID INT PRIMARY KEY,
    Nombre VARCHAR(100),
    ProfesorID INT,
    FOREIGN KEY (ProfesorID) REFERENCES Profesores(ProfesorID)
);

-- Tabla Calificaciones
CREATE TABLE Calificaciones (
    CalificacionID INT PRIMARY KEY,
    EstudianteID INT,
    CursoID INT,
    Calificacion FLOAT,
    FOREIGN KEY (EstudianteID) REFERENCES Estudiantes(EstudianteID),
    FOREIGN KEY (CursoID) REFERENCES Cursos(CursoID)
);


-- Datos de muestra en la tabla Estudiantes
INSERT INTO Estudiantes (Nombre, FechaNacimiento)
VALUES
    ('Ana Quintanilla', '1990-06-11'),
    ('Fernando Cortes', '1970-09-22'),
    ('Maria Silva', '2000-09-25');
    



