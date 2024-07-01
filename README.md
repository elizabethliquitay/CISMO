##  CISMO 


### Problematica:

 Por lo general  los suspermercados  tienen la dificultad para gestionar las diferentes transacciones que se produce durante el dia , CISMO va ser creado para llevar un control de las ventas que realizan las tiendas en el dia
 

### Descripción del Problema:

1. **Gestión de apertura y cierre  **:  se necesita llevar un control de la apertura y el cierre de la tiendas en cual se va poder registal la cantidad de ventas que realiza cada tienda en el dia.

2. **Gestión  empleados - tiendas **: permitir llevar un control de la cantidad de tiendas y  empleados que trabajan para en ella , como tambien poder tener registrados los clientes habituales de cada tienda.

3. **Gestión de  facturacion y medios pago**: se necesita poder registrar  de una manera mas detalla las compra que realiza cada cliente , y los medios de pago por cual realiza dicha compra , y tener un control de la cantidad de ventas que se realizan en el dia.

### Objetivo:
 Se necesita implementar una base de datos relacional que gestione de manera mas eficaz las ventas que se realizan en la diaria los supermercados , se lograra con esta implementacion un sistema  estable en todos los ambitos , permitira que el empleado pueda gestionar un mayor control de la venta


## Descripción de la Base de Datos - Gestión de Reservas en Restaurantes

Cismo permitira gestionar la venta que se realiza en el dia los supermercados  , tendra un sistema de alta y baja de empleados  y clientes, alta y baja de tiendas , una apertura de la fecha de venta asi como tambien el tipo de factura que se realiza, la descripcion de cada una de ellas y los medios de pago por el cual se hacen los distintos tipos de transsaciones 

### Tablas:
### Tablas:

1. **TIENDA**:
   - Almacena información de las tiendas que tiene un supermercado.
   - Atributos: ID, NOMBRE, ESTADO, CIUDAD.

2. ** FH_VENTA**:
   - contiene informacion de la fecha de venta de cada tienda , y el estado en que se encuentra
   - Atributos: FHVENTA, IDTIENDA, ESTADO.

3. **EMPLEADO**:
   - almacena informacion  detallada de los empleados y clientes.
   - Atributos: ID, CUIL, APENOM, LEGAJOREAL, ESTAD0

4. **EMPLEADO_TIENDA**:
   - contiene informacion de los empleados que pertenecen a la distintas tiendas y el estado en que estan
   - Atributos:   LEGAJO, IDTIENDA, ESTADO.

5. **FACTURACIONCAB**:
   - Almacena información  de las facturas que emite cada tienda en el dia , mes y año.
   - Atributos: ID, IDTIENDA, FHVENTA, TIPOCOMPROBANTE, CAJA, LEGAJO, NROCOMPROBANTE, IMPORTE.

6. **FACTURACIONDET**:
   - Contiene información detallada de la facturas.
   - Atributos: IDFACTURA, DESCRIPCION, IMPORTE.

7. **MEDIOEPAGO**:
   - Registra el medio de pago por el cual se realizan las distintas transsaciones.
   - Atributos: IDMEDIODEPAGO, IDTIENDA, FHVENTA, TIPOCOMPROBANTE, NROCOMPROBANTE, LEGAJO, VARIEDAD, IMPORTE.
   
8. **VARIEDADES**:
   - almacena informacion de los dintitos tipos de medios de pago que puede tener una tienda.
   - Atributos: ID, NOMBRE, ESTADO.

9. **TIPOCOMPROBANTE**:
   - almacena informacion de los dintitos tipos de comprobantes  que puede tener una tienda.
   - Atributos: ID, NOMBRE, ESTADO.



### Solucion detallada :

CISMO permite gestionar de manera mas eficaz el control de la ventas que ingresan en el dia , mes y año para cualquier tipo de RITAIL, llevar un control de los clientes y empleados.Esta extructura gestiona los diferentes tipos de operacion que genera una tienda , lo que va aportar un mayor rendimiento al sistema.

CISMO INLCUYE

- Apertura y cierre de la fecha de venta
- Alta y baja de empleados de cada tienda como de clientes.
- Alta y baja de tiendas (en el caso que requiera).
- Registro detallado de las transaciones que se realizan en  dia, mes y año



#### DIAGRAMA DE ENTIDAD Y RELACION 


![image](https://github.com/elizabethliquitay/CISMO/assets/173855632/66a060a3-384c-407e-b8e6-bd9b37cc5deb)



