CREATE OR REPLACE PROCEDURE SP_REGISTRAR_VENTA (
    P_ID_CLIENTE        IN VENTA.ID_CLIENTE%TYPE,
    P_ID_PRODUCTO       IN VENTA.ID_PRODUCTO%TYPE,
    P_CANTIDAD          IN VENTA.CANTIDAD%TYPE,
    P_USUARIO_REGISTRO  IN VENTA.USUARIO_REGISTRO%TYPE,
    P_MENSAJE           OUT VARCHAR2
)
IS
    V_EXISTE_CLIENTE   NUMBER;
    V_STOCK_ACTUAL     PRODUCTO.STOCK%TYPE;
    V_ID_VENTA         VENTA.ID_VENTA%TYPE;
BEGIN

    -- Validar cliente
    SELECT COUNT(*)
    INTO V_EXISTE_CLIENTE
    FROM CLIENTE
    WHERE ID_CLIENTE = P_ID_CLIENTE;

    IF V_EXISTE_CLIENTE = 0 THEN
        P_MENSAJE := 'El cliente no existe.';
        RETURN;
    END IF;

    -- Validar producto y obtener stock
    SELECT STOCK
    INTO V_STOCK_ACTUAL
    FROM PRODUCTO
    WHERE ID_PRODUCTO = P_ID_PRODUCTO;

    -- Validar stock suficiente
    IF V_STOCK_ACTUAL < P_CANTIDAD THEN
        P_MENSAJE := 'Stock insuficiente.';
        RETURN;
    END IF;

    -- Generar ID
    V_ID_VENTA := SEC_ID_VENTA.NEXTVAL;

    -- Insertar venta
    INSERT INTO VENTA (
        ID_VENTA,
        ID_CLIENTE,
        ID_PRODUCTO,
        CANTIDAD,
        FECHA_VENTA,
        USUARIO_REGISTRO,
        FECHA_CREACION
    )
    VALUES (
        V_ID_VENTA,
        P_ID_CLIENTE,
        P_ID_PRODUCTO,
        P_CANTIDAD,
        SYSDATE,
        P_USUARIO_REGISTRO,
        SYSDATE
    );

    -- Actualizar stock
    UPDATE PRODUCTO
    SET STOCK = STOCK - P_CANTIDAD,
        FECHA_MODIFICACION = SYSDATE
    WHERE ID_PRODUCTO = P_ID_PRODUCTO;

    P_MENSAJE := 'Venta registrada correctamente. ID: ' || V_ID_VENTA;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        P_MENSAJE := 'El producto no existe.';
    WHEN OTHERS THEN
        P_MENSAJE := 'Error inesperado: ' || SQLERRM;
END SP_REGISTRAR_VENTA;
/