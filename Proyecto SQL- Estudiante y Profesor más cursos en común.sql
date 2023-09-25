SELECT Estudiantes.Nombre, Estudiantes.PrimerApellido AS Estudiante, Profesores.Nombre AS Profesor, COUNT(*) AS CursosEnComun
FROM Estudiantes
JOIN Calificaciones ON Estudiantes.EstudianteID = Calificaciones.EstudianteID
JOIN Cursos ON Calificaciones.CursoID = Cursos.CursoID
JOIN Profesores ON Cursos.ProfesorID = Profesores.ProfesorID
GROUP BY Estudiantes.Nombre, Estudiantes.PrimerApellido, Profesores.Nombre, Profesores.PrimerApellido
ORDER BY CursosEnComun DESC
LIMIT 1;