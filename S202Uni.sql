USE universidad;

SELECT DISTINCT p.apellido1, p.apellido2, p.nombre  FROM alumno_se_matricula_asignatura a JOIN persona p ON a.id_alumno = p.id ORDER BY p.apellido1, p.apellido2, p.nombre;

SELECT DISTINCT p.apellido1, p.apellido2, p.nombre  FROM alumno_se_matricula_asignatura a JOIN persona p ON a.id_alumno = p.id WHERE p.telefono IS NULL;

SELECT DISTINCT p.apellido1, p.apellido2, p.nombre  FROM alumno_se_matricula_asignatura a JOIN persona p ON a.id_alumno = p.id WHERE YEAR(p.fecha_nacimiento) = 1999;
    
SELECT DISTINCT p.apellido1, p.apellido2, p.nombre  FROM profesor pro JOIN persona p ON pro.id_profesor = p.id WHERE p.telefono IS NULL AND p.nif REGEXP "K$";
    
SELECT * FROM asignatura a WHERE a.curso = 3 AND a.cuatrimestre = 1 AND id_grado = 7;

SELECT p.apellido1, p.apellido2, p.nombre, d.nombre FROM profesor pro JOIN persona p ON pro.id_profesor = p.id JOIN departamento d ON pro.id_departamento = d.id ORDER BY p.apellido1, p.apellido2, p.nombre;

SELECT p.apellido1, p.apellido2, p.nombre, ass.nombre, c.anyo_inicio, c.anyo_fin FROM alumno_se_matricula_asignatura a JOIN persona p ON a.id_alumno = p.id JOIN asignatura ass ON a.id_asignatura = ass.id JOIN curso_escolar c ON a.id_curso_escolar = c.id WHERE p.nif = "26902806M";
-- "anyo" lmao

--  SELECT d.nombre FROM asignatura a JOIN profesor p ON a.id_profesor = p.id_profesor JOIN departamento d ON p.id_departamento = d.id JOIN grado g ON a.id_grado = g.id WHERE g.nombre LIKE("Grau en Enginyeria Informàtica (Pla 2015)");

SELECT * FROM departamento d JOIN profesor p ON d.id = p.id_profesor JOIN asignatura a ON p.id_profesor = a.id_profesor JOIN grado g ON a.id_grado = g.id WHERE g.nombre LIKE("Grado en Ingeniería Informática (Plan 2015)");

-- select * FROM departamento

SELECT DISTINCT departamento.nombre FROM asignatura JOIN grado ON asignatura.id_grado = grado.id JOIN profesor ON asignatura.id_profesor = profesor.id_profesor JOIN departamento ON profesor.id_departamento = departamento.id WHERE grado.nombre LIKE("Grado en Ingeniería Informática (Plan 2015)");

SELECT DISTINCT p.apellido1, p.apellido2, p.nombre, curso_escolar.anyo_inicio, curso_escolar.anyo_fin FROM alumno_se_matricula_asignatura a JOIN persona p ON a.id_alumno = p.id JOIN curso_escolar ON a.id_curso_escolar = curso_escolar.id WHERE curso_escolar.anyo_inicio = 2018;

SELECT persona.apellido1, persona.apellido2, persona.nombre, departamento.nombre FROM profesor JOIN persona ON profesor.id_profesor = persona.id LEFT JOIN departamento ON profesor.id_departamento = departamento.id;

SELECT persona.apellido1, persona.apellido2, persona.nombre, departamento.nombre FROM profesor JOIN persona ON profesor.id_profesor = persona.id LEFT JOIN departamento ON profesor.id_departamento = departamento.id WHERE profesor.id_departamento IS NULL;
-- no hay nadie

SELECT departamento.nombre FROM profesor RIGHT JOIN departamento ON profesor.id_departamento = departamento.id WHERE profesor.id_departamento IS NULL;

SELECT persona.apellido1, persona.apellido2, persona.nombre FROM profesor JOIN persona ON profesor.id_profesor = persona.id LEFT JOIN asignatura ON profesor.id_profesor = asignatura.id_profesor WHERE asignatura.id_profesor IS NULL;

SELECT DISTINCT asignatura.nombre FROM asignatura LEFT JOIN profesor ON asignatura.id_profesor = profesor.id_profesor WHERE asignatura.id_profesor IS NULL;

SELECT DISTINCT departamento.nombre FROM profesor JOIN persona ON profesor.id_profesor = persona.id LEFT JOIN asignatura ON profesor.id_profesor = asignatura.id_profesor RIGHT JOIN departamento ON profesor.id_departamento = departamento.id WHERE asignatura.id_profesor IS NULL;

SELECT COUNT(alumno_se_matricula_asignatura.id_alumno) FROM alumno_se_matricula_asignatura;

SELECT COUNT(a.id_alumno) FROM alumno_se_matricula_asignatura a JOIN persona p ON a.id_alumno = p.id WHERE YEAR(p.fecha_nacimiento) = 1999;




