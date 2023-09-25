SELECT Profesores.Nombre AS Profesor, AVG(Calificaciones.Calificacion) AS NotaMedia
FROM Profesores
JOIN Cursos ON Profesores.ProfesorID = Cursos.ProfesorID
JOIN Calificaciones ON Cursos.CursoID = Calificaciones.CursoID
GROUP BY Profesores.Nombre;