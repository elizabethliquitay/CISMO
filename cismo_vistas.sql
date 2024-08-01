-- Vistas mostrar_empleados_tiendas 
-- muestra el detalle del empleado y que tienda trabaja
CREATE VIEW mostrar_empleados_tiendas AS
SELECT 
    e.APENOM as 'Nombre y Apellido',
    e.LEGAJOREAL,
    et.IDTIENDA as 'Tienda'
FROM 
    EMPLEADO e
INNER JOIN EMPLEADO_TIENDA et ON e.id = et.id
WHERE
    e.ESTADO = 'A' AND et.ESTADO = 'A';

SELECT 
* 
FROM mostrar_empleados_tiendas 
ORDER BY 'nombre y apellido' DESC;

-- vista tiendas_por_ciudad
-- Esta vista muestra la cantidad de ciudades y el número de tiendas en cada una
CREATE VIEW tiendas_por_ciudad AS
SELECT 
CIUDAD,
 COUNT(*) AS NUMERO_TIENDAS
FROM TIENDA
GROUP BY CIUDAD;

SELECT 
* 
FROM tiendas_por_ciudad ;

-- vista factura_completa
-- Unifica la información de la cabecera y el detalle de cada factura, proporcionando una visión completa de cada transacción.
CREATE VIEW factura_completa AS
SELECT 
fc.ID, 
fc.FECHAVENTA, 
fc.TIPOCOMPROBANTE, 
fd.DESCRIPCION,
fd.IMPORTE
FROM FACTURACIONCAB fc
INNER JOIN FACTURACIONDET fd ON fc.ID = fd.IDFACTURA;

SELECT 
* 
FROM factura_completa;

 -- FUNCIONES
 
 CREATE PROCEDURE dar_de_baja_empleado(legajo_empleado INT)
BEGIN
    UPDATE EMPLEADO SET ESTADO = 'B' WHERE LEGAJOREAL = legajo_empleado,
    UPDATE EMPLEADO_TIENDA SET ESTADO = 'B' WHERE LEGAJO = legajo_empleado,
END;