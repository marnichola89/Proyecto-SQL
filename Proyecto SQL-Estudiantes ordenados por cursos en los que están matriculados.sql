SELECT Estudiantes.Nombre, Estudiantes.PrimerApellido AS Estudiante, GROUP_CONCAT(Cursos.Nombre ORDER BY Cursos.Nombre ASC SEPARATOR ', ') AS CursosMatriculados
FROM Estudiantes
JOIN Calificaciones ON Estudiantes.EstudianteID = Calificaciones.EstudianteID
JOIN Cursos ON Calificaciones.CursoID = Cursos.CursoID
GROUP BY Estudiantes.Nombre, Estudiantes.PrimerApellido;