
---inserte de datos de CATEGORIA
INSERT INTO CATEGORIA (NOMBRE, DESCRIPCION)
VALUES ('Electrónica', 'Productos electrónicos y tecnología');

INSERT INTO CATEGORIA (NOMBRE, DESCRIPCION)
VALUES ('Ropa', 'Prendas de vestir y accesorios');

INSERT INTO CATEGORIA (NOMBRE, DESCRIPCION)
VALUES ('Hogar', 'Artículos para el hogar');

INSERT INTO CATEGORIA (NOMBRE, DESCRIPCION)
VALUES ('Deportes', 'Artículos y accesorios deportivos');

INSERT INTO CATEGORIA (NOMBRE, DESCRIPCION)
VALUES ('Libros', 'Libros educativos y de entretenimiento');
------insert productos
----aqui los id no son consecutivos por que hubo errores en los tigger aiu
INSERT INTO PRODUCTO
( NOMBRE, PRECIO, STOCK, ID_CATEGORIA, DESCRIPCION)
VALUES
('Laptop Lenovo', 18500.00, 10, 7, 'Laptop 16GB RAM, 512GB SSD');

INSERT INTO PRODUCTO
( NOMBRE, PRECIO, STOCK, ID_CATEGORIA, DESCRIPCION)
VALUES
( 'Playera Deportiva', 350.00, 50, 8, 'Playera de algodón talla M');

INSERT INTO PRODUCTO
( NOMBRE, PRECIO, STOCK, ID_CATEGORIA, DESCRIPCION)
VALUES
('Licuadora Oster', 1200.00, 20, 7, 'Licuadora 3 velocidades');

INSERT INTO PRODUCTO
(NOMBRE, PRECIO, STOCK, ID_CATEGORIA, DESCRIPCION)
VALUES
('Balón de Fútbol', 450.00, 30, 10, 'Balón profesional tamaño 5');

INSERT INTO PRODUCTO
(NOMBRE, PRECIO, STOCK, ID_CATEGORIA, DESCRIPCION)
VALUES
('Libro Java Avanzado', 600.00, 15, 11, 'Guía completa de programación en Java');
---select a la tabla de clientes para verificar los ergistros
SELECT * FROM PRODUCTO;

----inserccion de clientes
INSERT INTO CLIENTE
(NOMBRE, APELLIDOS, CORREO, TELEFONO)
VALUES
('Carlos', 'Ramírez López', 'carlos.ramirez@gmail.com', '5512345678');

INSERT INTO CLIENTE
(NOMBRE, APELLIDOS, CORREO, TELEFONO)
VALUES
('María', 'González Pérez', 'maria.gonzalez@gmail.com', '5523456789');

INSERT INTO CLIENTE
(NOMBRE, APELLIDOS, CORREO, TELEFONO)
VALUES
( 'Luis', 'Hernández Torres', 'luis.hernandez@gmail.com', '5534567890');

INSERT INTO CLIENTE
(NOMBRE, APELLIDOS, CORREO, TELEFONO)
VALUES
( 'Ana', 'Martínez Cruz', 'ana.martinez@gmail.com', '5545678901');

INSERT INTO CLIENTE
(NOMBRE, APELLIDOS, CORREO, TELEFONO)
VALUES
( 'Jorge', 'Sánchez Díaz', 'jorge.sanchez@gmail.com', '5556789012');
---select a la tabla de clientes para verificar los ergistros
SELECT * FROM CLIENTE;

--INSERTE DE TABLAS VENTA
INSERT INTO
VENTA (ID_CLIENTE, ID_PRODUCTO, CANTIDAD, FECHA_VENTA, USUARIO_REGISTRO)
VALUES (1,1,2,SYSDATE,USER);

INSERT INTO
VENTA (ID_CLIENTE, ID_PRODUCTO, CANTIDAD, FECHA_VENTA, USUARIO_REGISTRO)
VALUES (2,2,3,SYSDATE,USER);

INSERT INTO
VENTA (ID_CLIENTE, ID_PRODUCTO, CANTIDAD, FECHA_VENTA, USUARIO_REGISTRO)
VALUES (3,3,1,SYSDATE,USER);

INSERT INTO
VENTA (ID_CLIENTE, ID_PRODUCTO, CANTIDAD, FECHA_VENTA, USUARIO_REGISTRO)
VALUES (4,4,3,SYSDATE,USER);

INSERT INTO
VENTA (ID_CLIENTE, ID_PRODUCTO, CANTIDAD, FECHA_VENTA, USUARIO_REGISTRO)
VALUES (5,5,2,SYSDATE,USER);
---select a la tabla de ventas para verificar los ergistros
SELECT * FROM VENTA;
/COMMIT; ---que hasta aqui termina cualquier senctacia y moifica los ultimo en ejeucion
