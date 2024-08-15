DELIMITER //

CREATE PROCEDURE insertar_factura(
    IN p_idtienda VARCHAR(4),
    IN p_fechaventa DATE,
    IN p_tipocomprobante VARCHAR(3),
    IN p_caja INT,
    IN p_legajo INT,
    IN p_nrocomprobante VARCHAR(20),
    IN p_importe_cabecera DECIMAL(14,4),
    IN p_descripcion VARCHAR(200),
    IN p_importe_detalle DECIMAL(14,4)
)
BEGIN
    START TRANSACTION;

    -- Insertar en la tabla cabecera
    INSERT INTO FACTURACIONCAB (IDTIENDA, FECHAVENTA, TIPOCOMPROBANTE, CAJA, LEGAJO, NROCOMPROBANTE, IMPORTE)
    VALUES (p_idtienda, p_fechaventa, p_tipocomprobante, p_caja, p_legajo, p_nrocomprobante, p_importe_cabecera);

    -- Obtener el ID de la factura recién insertada
    SET @id_factura = LAST_INSERT_ID();

    -- Insertar en la tabla detalle
    INSERT INTO FACTURACIONDET (IDFACTURA, DESCRIPCION, IMPORTE)
    VALUES (@id_factura, p_descripcion, p_importe_detalle);

    COMMIT;
END //

DELIMITER ;