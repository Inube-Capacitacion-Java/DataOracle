# DataOracle
📘 Sistema de Ventas – Unube (Oracle)
📌 Descripción del Proyecto

Como administrador del sistema de ventas de Unube, se requiere registrar categorías, productos, clientes y ventas, con el fin de disponer de un modelo de datos confiable que permita:

Consultar inventarios.

Validar stock disponible.

Registrar transacciones de venta.

Generar reportes que apoyen la operación del negocio.

El sistema fue desarrollado en Oracle Database 19c utilizando SQL y PL/SQL.

🗄 Modelado de Base de Datos

El modelo de base de datos está compuesto por tablas principales y tablas de bitácora para auditoría del sistema.

📌 Tablas Principales

CATEGORIA

PRODUCTO

CLIENTE

VENTA

📌 Tablas de Bitácora

CATEGORIA_BIT

PRODUCTO_BIT

CLIENTE_BIT

VENTA_BIT

Las tablas de bitácora registran acciones mediante triggers (disparadores) definidos sobre las tablas principales.

Se auditan las siguientes operaciones:

INSERT

UPDATE

DELETE

Incluyendo información como:

FECHA_CREACION

FECHA_MODIFICACION

ACCION

IP

Esto permite mantener trazabilidad y control de cambios en el sistema.

📋 Estructura de las Tablas
🔹 CATEGORIA

Contiene la información de cada categoría del sistema.

Campos:

ID_CATEGORIA

NOMBRE

DESCRIPCION

FECHA_CREACION

FECHA_MODIFICACION

🔹 PRODUCTO

Contiene la información de cada producto perteneciente a una categoría.

Campos:

ID_PRODUCTO

NOMBRE

PRECIO

STOCK

ID_CATEGORIA

DESCRIPCION

ESTATUS

FECHA_CREACION

FECHA_MODIFICACION

🔹 CLIENTE

Contiene la información de los clientes registrados en el sistema.

Campos:

ID_CLIENTE

NOMBRE

APELLIDOS

CORREO

TELEFONO

FECHA_REGISTRO

FECHA_CREACION

FECHA_MODIFICACION

🔹 VENTA

Registra cada transacción de venta realizada por los clientes.

Campos:

ID_VENTA

ID_CLIENTE

ID_PRODUCTO

CANTIDAD

FECHA_VENTA

USUARIO_REGISTRO

FECHA_CREACION

FECHA_MODIFICACION

📝 Documentación de las Tablas

Se utilizaron las siguientes sentencias para documentar la base de datos:

COMMENT ON TABLE

COMMENT ON COLUMN

Estas permiten describir el propósito de cada tabla y de cada campo dentro del modelo de datos.

👁 Vistas Implementadas

Se crearon dos vistas principales:

Vista de productos con su categoría.

Vista de ventas con información de cliente y producto.

Estas vistas facilitan la consulta de información y la generación de reportes.

⚙️ Lógica de Negocio (PL/SQL)
🔹 Stored Procedure

Se creó un procedimiento almacenado que:

Valida la existencia del cliente.

Valida la existencia del producto.

Verifica el stock disponible.

Genera automáticamente el ID de la venta mediante una secuencia.

Registra la venta.

Actualiza el stock del producto.

🔹 Funciones

Se desarrollaron las siguientes funciones:

Función para calcular el total de una venta.

Función que retorna el estatus de un producto.

🧪 Pruebas Unitarias

Se realizaron pruebas unitarias que incluyen:

Inserciones de datos.

Consultas a las tablas.

Ejecución del Stored Procedure.

Ejecución de ambas funciones.

📂 Organización de Scripts

Los scripts fueron organizados de manera estructurada para facilitar su ejecución:

01_creacion_tablas.sql

Incluye la creación de tablas y secuencias.

02_inserciones.sql

03_vistas.sql

04_funciones_sp.sql

08_triggers.sql

07_procedimientos_almacenados.sql

Script de pruebas unitarias

▶ Orden de Ejecución

El orden correcto de ejecución es:

01_creacion_tablas.sql (incluye secuencias)

04_funciones_sp.sql

08_triggers.sql

02_inserciones.sql

03_vistas.sql

07_procedimientos_almacenados.sql

Script de pruebas unitarias
