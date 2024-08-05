DELIMITER //
CREATE TRIGGER auditoria_facturacioncab
AFTER UPDATE ON FACTURACIONCAB
FOR EACH ROW
BEGIN
  INSERT INTO auditoria_facturacioncab (
    id_factura, campo_modificado, valor_anterior, valor_nuevo, fecha_modificacion, usuario
  )
  VALUES (
    OLD.ID,
    'IMPORTE',
    OLD.IMPORTE,
    NEW.IMPORTE,
    NOW(),
    CURRENT_USER()
  );
END //
DELIMITER ;

-- verificar total de importe de las tablas facturacioncab y facturaciondet
 DELIMITER //
CREATE TRIGGER tr_verificar_importe_total
BEFORE INSERT ON FACTURACIONDET
FOR EACH ROW
BEGIN
  DECLARE total_detalle DECIMAL(14,4);
  SELECT SUM(IMPORTE) INTO total_detalle
  FROM FACTURACIONDET
  WHERE IDFACTURA = NEW.IDFACTURA;
  IF total_detalle + NEW.IMPORTE > (SELECT IMPORTE FROM FACTURACIONCAB WHERE ID = NEW.IDFACTURA) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El importe total del detalle excede el importe de la cabecera';
  END IF;
END //
DELIMITER ;

-- valida que solo los empleados que esten activos puedan realizar ventas
DELIMITER //
CREATE TRIGGER tr_validar_estado_empleado
BEFORE INSERT ON FACTURACIONCAB
FOR EACH ROW
BEGIN
  DECLARE estado_empleado VARCHAR(1);
  
  SELECT ESTADO INTO estado_empleado
  FROM EMPLEADO
  WHERE LEGAJO = NEW.LEGAJO;
  
  IF estado_empleado <> 'A' THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El empleado debe estar activo para registrar ventas';
  END IF;
END //
DELIMITER ;
