SELECT Cursos.Nombre AS Curso, AVG(Calificaciones.Calificacion) AS CalificacionPromedio
FROM Cursos
JOIN Calificaciones ON Cursos.CursoID = Calificaciones.CursoID
GROUP BY Cursos.Nombre
ORDER BY CalificacionPromedio ASC;