
-- Procedimiento registar_factura
DELIMITER //
CREATE PROCEDURE registrar_factura(
    IN p_id_tienda VARCHAR(4),
    IN p_fecha_venta DATE,
    IN p_tipo_comprobante VARCHAR(3),
    IN p_caja INT,
    IN p_legajo INT,
    IN p_nro_comprobante VARCHAR(20),
    IN p_importe_total DECIMAL(14,4),
    IN p_detalles JSON
)
BEGIN
    DECLARE v_id_factura INT;

    -- Insertamos la cabecera de la factura
    INSERT INTO FACTURACIONCAB (IDTIENDA, FECHAVENTA, TIPOCOMPROBANTE, CAJA, LEGAJO, NROCOMPROBANTE, IMPORTE)
    VALUES (p_id_tienda, p_fecha_venta, p_tipo_comprobante, p_caja, p_legajo, p_nro_comprobante, p_importe_total);

    -- Obtenemos el ID de la factura recién insertada
    SET v_id_factura = LAST_INSERT_ID();

    -- Insertamos los detalles de la factura
    INSERT INTO FACTURACIONDET (IDFACTURA, DESCRIPCION, IMPORTE)
    SELECT JSON_EXTRACT(p_detalles, CONCAT('$[', idx, '].descripcion')),
           JSON_EXTRACT(p_detalles, CONCAT('$[', idx, '].importe'))
    FROM (SELECT @i := @i + 1 AS idx FROM (SELECT 1 UNION ALL SELECT 1) x, (SELECT 1 UNION ALL SELECT 1) y, (SELECT 1 UNION ALL SELECT 1) z) a
    WHERE @i <= JSON_LENGTH(p_detalles);

END //
DELIMITER ;


-- Procedimiento registar_medio_pago

DELIMITER //
CREATE PROCEDURE registrar_medio_pago(
    IN p_id_tienda VARCHAR(4),
    IN p_fecha_venta DATE,
    IN p_tipo_comprobante VARCHAR(3),
    IN p_nro_comprobante VARCHAR(50),
    IN p_legajo INT,
    IN p_variedad INT,
    IN p_importe DECIMAL(14,4)
)
BEGIN
    DECLARE v_estado_variedad VARCHAR(1);

    -- Verificamos si la variedad (método de pago) existe y está activa
    SELECT ESTADO INTO v_estado_variedad
    FROM VARIEDADES
    WHERE ID = p_variedad;

    IF v_estado_variedad IS NULL OR v_estado_variedad <> 'A' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'La variedad de pago no existe o está inactiva';
    END IF;

    -- Insertamos el registro de medio de pago
    INSERT INTO MEDIODEPAGO (IDTIENDA, FHVENTA, TIPOCOMPROBANTE, NROCOMPROBATE, LEGAJO, VARIEDAD, IMPORTE)
    VALUES (p_id_tienda, p_fecha_venta, p_tipo_comprobante, p_nro_comprobante, p_legajo, p_variedad, p_importe);
END //
DELIMITER ;

-- Procedimiento registar_tienda 
DELIMITER //
CREATE PROCEDURE registrar_tienda(
    IN p_id VARCHAR(4),
    IN p_nombre VARCHAR(50),
    IN p_estado VARCHAR(1),
    IN p_ciudad VARCHAR(100)
)
BEGIN
    DECLARE tienda_existe INT;

    -- Verificar si la tienda ya existe
    SELECT COUNT(*) INTO tienda_existe
    FROM TIENDA
    WHERE ID = p_id;

    IF tienda_existe > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'La tienda ya existe';
    ELSE
        -- Insertar la nueva tienda
        INSERT INTO TIENDA (ID, NOMBRE, ESTADO, CIUDAD)
        VALUES (p_id, p_nombre, p_estado, p_ciudad);
    END IF;
END //

DELIMITER ;