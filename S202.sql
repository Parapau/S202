USE tienda;

SELECT nombre FROM producto;

SELECT nombre, precio FROM producto;

SHOW COLUMNS FROM producto;

SELECT nombre AS nom_de_producto, precio AS euros, ROUND(precio * 1.07, 2) AS dolars FROM producto;

SELECT UPPER(nombre) FROM producto;

SELECT LOWER(nombre) FROM producto;

SELECT nombre, SUBSTRING(nombre, 1, 2) AS primeres_dos_lletres FROM fabricante; 

SELECT nombre, ROUND(precio, 0) FROM producto;

SELECT nombre, TRUNCATE(precio, 0) FROM producto;

SELECT codigo_fabricante FROM producto;

SELECT DISTINCT codigo_fabricante FROM producto;

SELECT codigo_fabricante FROM producto ORDER BY codigo_fabricante ASC;

SELECT codigo_fabricante FROM producto ORDER BY codigo_fabricante DESC;

SELECT nombre FROM producto ORDER BY nombre ASC, precio DESC; -- no hay ninguno con el mismo nombre asi que ordenarlo dos veces es un poco inutil...

SELECT * FROM fabricante LIMIT 5;

SELECT * FROM fabricante WHERE codigo >= 4 LIMIT 2;

SELECT nombre, precio FROM producto ORDER BY precio ASC LIMIT 1;

SELECT nombre, precio FROM producto ORDER BY precio DESC LIMIT 1;

SELECT nombre FROM producto WHERE codigo_fabricante = 2;

SELECT producto.nombre, producto.precio, fabricante.nombre AS fabricante FROM producto JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo;

SELECT producto.nombre, producto.precio, fabricante.nombre AS fabricante FROM producto JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo ORDER BY fabricante.nombre ASC;

SELECT producto.codigo, producto.nombre, producto.codigo_fabricante, fabricante.nombre FROM producto JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo;

SELECT producto.nombre, producto.precio, fabricante.nombre FROM producto JOIN fabricante on producto.codigo_fabricante = fabricante.codigo ORDER BY producto.precio LIMIT 1;

SELECT producto.nombre, producto.precio, fabricante.nombre FROM producto JOIN fabricante on producto.codigo_fabricante = fabricante.codigo ORDER BY producto.precio DESC LIMIT 1;

SELECT producto.nombre FROM producto JOIN fabricante on producto.codigo_fabricante = fabricante.codigo WHERE fabricante.nombre = "Lenovo";

SELECT producto.nombre, producto.precio FROM producto JOIN fabricante on producto.codigo_fabricante = fabricante.codigo WHERE fabricante.nombre = "Lenovo" AND producto.precio > 200;

SELECT producto.nombre FROM producto JOIN fabricante on producto.codigo_fabricante = fabricante.codigo WHERE fabricante.nombre = "ASUS" OR fabricante.nombre = "Hewlett-Packardy Seagate";

SELECT producto.nombre FROM producto JOIN fabricante on producto.codigo_fabricante = fabricante.codigo WHERE fabricante.nombre IN ("ASUS", "Hewlett-Packardy Seagate");

SELECT producto.nombre, producto.precio, fabricante.nombre FROM producto JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo WHERE fabricante.nombre REGEXP "e$";

SELECT producto.nombre, producto.precio, fabricante.nombre FROM producto JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo WHERE fabricante.nombre LIKE "%w%";

SELECT producto.nombre, producto.precio, fabricante.nombre FROM producto JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo WHERE producto.precio >= 180 ORDER BY producto.precio DESC, producto.nombre ASC;

SELECT DISTINCT fabricante.nombre from producto JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo;

SELECT f.nombre, p.nombre, p.precio FROM fabricante f LEFT JOIN producto p ON f.codigo = p.codigo_fabricante;

SELECT f.nombre FROM fabricante f LEFT JOIN producto p ON f.codigo = p.codigo_fabricante WHERE p.nombre IS NULL;

SELECT f.nombre, p.nombre, p.precio FROM fabricante f LEFT JOIN producto p ON f.codigo = p.codigo_fabricante WHERE f.nombre = "Lenovo";

SELECT f.nombre, p.nombre, p.precio FROM fabricante f LEFT JOIN producto p ON f.codigo = p.codigo_fabricante WHERE p.precio = (p.precio;