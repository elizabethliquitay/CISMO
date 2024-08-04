
-- FUNCIONES
-- carlcular el total de ventas realizadas

 
DELIMITER //

CREATE FUNCTION total_diario(fecha_consulta DATE) RETURNS DECIMAL(14,4)
DETERMINISTIC
READS SQL DATA
BEGIN
  DECLARE total_diario DECIMAL(14,2);
  SELECT SUM(IMPORTE) INTO total_diario
  FROM FACTURACIONCAB
  WHERE FECHAVENTA = fecha_consulta;
  RETURN total_diario;
END;
//
DELIMITER ;

SELECT total_diario ('2024/11/30'); 

-- FUNCION PARA VERIFICAR SI MEDIO DE PAGO ESTA ACTIVO 

DELIMITER //

CREATE FUNCTION es_medio_pago_activo(id_variedad INT) RETURNS BOOLEAN
DETERMINISTIC
READS SQL DATA
BEGIN
  DECLARE estado_variedad VARCHAR(1) ;
  SELECT ESTADO INTO estado_variedad
  FROM VARIEDADES
  WHERE ID = id_variedad;
  RETURN estado_variedad = 'A'; --  'A' significa activo
END;
//
DELIMITER ;

-- Verificar si el método de pago con ID 2 está activo
SELECT es_medio_pago_activo(12) AS 'Es Activo';

-- DETERMINA SI EL CLIENTE HIZP UNA COMPRA
DELIMITER //

CREATE FUNCTION cliente_compro_mes(legajo INT, mes INT, anio INT) RETURNS BOOLEAN
DETERMINISTIC
READS SQL DATA
BEGIN
  DECLARE compro BOOLEAN;
  SELECT COUNT(*) INTO compro
  FROM FACTURACIONCAB
  WHERE LEGAJO = legajo
    AND MONTH(FECHAVENTA) = mes
    AND YEAR(FECHAVENTA) = anio;
  RETURN compro > 0;
END;
//
DELIMITER ;
-- LLAMAR A LA FUNCION
SELECT cliente_compro_mes(329854446, 11, 2024) AS 'EL CLIENTE COMPRO ESTE MES ';