SELECT Estudiantes.Nombre, Estudiantes.PrimerApellido, Estudiante, MAX(Calificaciones.Calificacion) AS MejorCalificacion
FROM Estudiantes
JOIN Calificaciones ON Estudiantes.EstudianteID = Calificaciones.EstudianteID
GROUP BY Estudiantes.Nombre, Estudiantes.PrimerApellido;
