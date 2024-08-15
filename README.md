##  CISMO 


### Problematica:

 Por lo general  los suspermercados  tienen la dificultad para gestionar las diferentes transacciones que se produce durante el dia , CISMO va ser creado para llevar un control de las ventas que realizan las tiendas en el dia
 

### Descripción del Problema:

1. **Gestión de apertura y cierre  **:  se necesita llevar un control de la apertura y el cierre de la tiendas en cual se va poder registal la cantidad de ventas que realiza cada tienda en el dia.

2. **Gestión  empleados - tiendas **: permitir llevar un control de la cantidad de tiendas y  empleados que trabajan para en ella , como tambien poder tener registrados los clientes habituales de cada tienda.

3. **Gestión de  facturacion y medios pago**: se necesita poder registrar  de una manera mas detalla las compra que realiza cada cliente , y los medios de pago por cual realiza dicha compra , y tener un control de la cantidad de ventas que se realizan en el dia.

### Objetivo:
 Se necesita implementar una base de datos relacional que gestione de manera mas eficaz las ventas que se realizan en la diaria los supermercados , se lograra con esta implementacion un sistema  estable en todos los ambitos , permitira que el empleado pueda gestionar un mayor control de la venta


## Descripción de la Base de Datos 

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


# SEGUNDA PARTE DE LA ENTREGA


#### ISERCION DE TABLAS

Para la insercion de registros se  hizo mediantes insert, se insertaron regitros  de forma ordenada para las siguientes tablas

-tiendas : 20 regitros

 INSERT INTO tienda (ID,NOMBRE,ESTADO,CIUDAD) VALUES

![image](https://github.com/user-attachments/assets/6fac7ce0-9b53-4af0-8646-241524349381)

-empleado_tienda : 20 regritros

INSERT INTO empleado_tienda (ID,LEGAJO,IDTIENDA,ESTADO) Values

![image](https://github.com/user-attachments/assets/0a00b509-5825-41d4-a11c-dec174009014)

 - empleado: 20 registros
   
 INSERT INTO empleado (ID,CUIL,APENOM,LEGAJOREAL,ESTADO) Values
 
![image](https://github.com/user-attachments/assets/d43f9d22-a971-4088-9d2a-ecbdc3647e00)

-tipocomprobante: 10 registros

INSERT INTO TIPOCOMPROBANTE (ID, NOMBRE, ESTADO) VALUES

![image](https://github.com/user-attachments/assets/ecb6fe84-fb55-4208-8cc1-283c0f98ec49)


-variedades: 15 registros
INSERT INTO VARIEDADES (ID, NOMBRE, ESTADO) VALUES

 ![image](https://github.com/user-attachments/assets/7e2a60fa-65db-4508-9355-44a08bac52f5)


-facturaciondet : 15 registros

INSERT INTO FACTURACIONDET ( IDFACTURA , DESCRIPCION, IMPORTE) VALUES

![image](https://github.com/user-attachments/assets/5bcdb498-614a-445b-8fbb-9b362e34416b)

-facturacioncab: 15 registros

INSERT INTO FACTURACIONCAB ( ID , IDTIENDA, FECHAVENTA, TIPOCOMPROBANTE, CAJA, LEGAJO, NROCOMPROBANTE,IMPORTE)
VALUES

![image](https://github.com/user-attachments/assets/bc292b65-b92d-4d3e-bbd2-b7bd278bc909)

mediodepago: 15 registros

INSERT INTO mediodepago ( IDMEDIODEPAGO , IDTIENDA, FHVENTA, TIPOCOMPROBANTE,LEGAJO, NROCOMPROBATE, VARIEDAD,IMPORTE)
VALUES

![image](https://github.com/user-attachments/assets/a86549e4-2acb-4278-8316-940dc8417726)



Vista:  mostrar_empleados_tiendas 


**Descripción:**  Esta vista muestra la informacion de los empleados y a que tienda trabaja

empleado: Contiene información general de los empleados (ID, CUIL, nombre, legajo real, estado).

empleadotienda: Relaciona a los empleados con las tiendas donde trabajan (ID, legajo, ID de tienda, estado).

**consulta:**

```sql
SELECT 
* 
FROM mostrar_empleados_tiendas 
ORDER BY 'nombre y apellido' DESC;
```

Vista: tiendas_por_ciudad


**Descripción:** Esta vista muestra  las distintas ciudades que estan ubicadas CISMO y el número de tiendas que se encuentran 

tienda: contiene informacion de las tiendas que se encuentran en distindas provincias


**consulta:**


```sql
SELECT 
* 
FROM tiendas_por_ciudad ;

```

Vista: factura_completa


**Descripción:**  Unifica la información de la cabecera y el detalle de cada factura, proporcionando una visión completa de cada transacción.


facturacioncab: Contiene la información general de cada factura (fecha, tipo de comprobante, caja, legajo, etc.).
facturaciondet: Contiene los detalles de cada ítem de una factura (descripción, importe).

**consulta:**


```sql

SELECT 
* 
FROM factura_completa;d ;

```
## Documentación de Funciones 

### Fucion Total_diario 


**Descripción:** Esta diseñanda para calcular el total de ventas realizadas  


Parámetros

 - fecha_consulta (DATE): Este parámetro de entrada especifica la fecha para la cual se desea obtener el total de ventas.

Tipo de Retorno:

 - DECIMAL(14,4): La función devuelve un valor numérico de tipo decimal . Este tipo de dato representa valores monetarios con precisión.

**consulta:**


```sql

SELECT total_diario ('2024/11/30'); 

```
### Funcion es_medio_pago_activo 


**Descripción:** Determina si una determinada variedad de mediode pago se encuentra actualmente activa en el sistema



Parámetros 

 - id_variedad (INT): Este parámetro representa el identificador único de la variedad de medio de pago que se desea consultar.
 - 
Tipo de Retorno

 - BOOLEAN: La función devuelve un valor booleano. Si la variedad está activa, la función retorna TRUE; de lo contrario, retorna FALSE.


**consulta:**


```sql

SELECT es_medio_pago_activo(12) AS 'Es Activo';

```

### Funcion cliente_compro_mes 


**Descripción:** determina si un cliente espesifico realizo alguna compra durante  un mes o año determinado


Parámetros

 - legajo (INT): El legajo del cliente a consultar.
 - mes (INT): El número del mes a verificar (1-12).
 - anio (INT): El año a verificar.
 - 
Tipo de Retorno

BOOLEAN: La función devuelve un valor booleano (TRUE o FALSE). TRUE si el cliente realizó al menos una compra en el mes y año especificados, FALSE en caso contrario.



**consulta:**


```sql

SELECT cliente_compro_mes(329854446, 11, 2024) AS 'EL CLIENTE COMPRO ESTE MES ';

```

## Documentación de Triggers 



### Triggers tr_auditoria_facturacioncab

**Descripción:** Tiene como obsjetico registrar los cambios realizados en el campo 'IMPORTE' de la tabla FACTURACIONCAB

**Detalles:**

* **Tabla afectada:** FACTURACIONCAB
* **Acción:** MODIFICACION
* **Información registrada:** id_factura, importe , valor_anterior . valor_nuevo


  **Ejemplo:**

*  El tigger se activa despues que se realice una modificacion en la tabla facturacioncab
* si se modifica el campo importe , el trigger inserta un nuevo registro en la tabla de auditoria_factutacioncab con la siguiente informaccion

  - id_factura: El identificador de la factura afectada.
  - campo_modificado: El nombre del campo que se modificó (en este caso, siempre será 'IMPORTE').
  - valor_anterior: El valor original del campo antes de la modificación
  - valor_nuevo: El nuevo valor del campo después de la modificación.
  - fecha_modificacion: La fecha y hora en que se realizó la modificación.
  - usuario: El nombre del usuario que realizó la modificación.

### Triggers tr_verificar_importe_total


**Descripción:** tiene como objetivo garantizar que el importe total de los detalles de una factura no supere el importe total de la cabecera de la factura antes de insertar un nuevo detalle.

* **Tabla afectada:** FACTURACIONDET
* **Acción:** INSERCCION
* **Información registrada:**  importe

El trigger tr_verificar_importe_total Es importante para mantener la integridad de los datos en el sistema de facturación, evitando errores y asegurando que los importes totales de las facturas sean correctos.


### Triggers tr_validar_estado_empleado

**Descripción:** Queremos aegurarnos que solo los empleadps con estado 'activo' puedan realizar ventas , este triggers se ejecutara antes de intsetar un nuevo registro a la tabla facturacioncab.

* **Tabla afectada:** FACTURACIONCAN
* **Acción:** INSERCCION
* **Información registrada:**  empleado_tienda



## Documentación de Procedimientos 

### Procedimiento registar_factura

**Descripción:** Registra una nueva factura de forma mas estruturada y segura, evitando errores de inserccion de datos.


**Parámetros:**

**p_detalles:** son de tipo JSON para poder manejar los detalles de la factura de forma mas flexible


**Ejemplo de uso:**

```sql
CALL registrar_factura('0001', '2023-11-24', 'FAC', 1, 12345, 'FAC001234', 100.00, '[{"descripcion": "Producto A", "importe": 50.00}, {"descripcion": "Producto B", "importe": 50.00}]');
```


### Procedimiento registar_medio_pago

**Descripción:** resgista un nuevo medio de pago asociado a una determinada venta o transsaccion , este proceso se encarga de validar la informacion proporcionada y de insertar los dato en la tabla correspondiente

**Parámetros:**
- p_id_tienda: Identificador único de la tienda donde se realizó la venta.
- p_fecha_venta: Fecha en que se realizó la venta.
- p_tipo_comprobante: Tipo de comprobante emitido (factura, ticket, etc.).
- p_nro_comprobante: Número del comprobante.
- p_legajo: Identificador del empleado que procesó la venta.
- p_variedad: Identificador de la variedad de pago utilizada (efectivo, tarjeta, transferencia, etc.).
 -p_importe: Importe total de la transacción.

Si la variedad es válida, se inserta un nuevo registro en la tabla MEDIODEPAGO con los datos proporcionados en los parámetros de entrada.

**Ejemplo de uso:**

```sql
CALL registrar_medio_pago('0001', '2023-11-24', 'FAC', 'FAC001234', 12345, 1, 100.00);
```

### Procedimiento registar_tienda 

**Descripción:** tiene como objetivo principal registrar una nueva tienda en la base de datos, asegurando que el ID de la tienda sea único.

**Parámetros:**

- p_id: Identificador único de la tienda (clave primaria).
- p_nombre: Nombre de la tienda.
- p_estado: Estado de la tienda (activo, inactivo).
- p_ciudad: Ciudad donde se encuentra la tienda.

Si la tienda no existe, se inserta un nuevo registro en la tabla TIENDA con los valores de los parámetros de entrada, en caso contrario dispara un mensaje  '45000' SET MESSAGE_TEXT = 'La tienda ya existe'

```sql
CALL registrar_tienda('T001', 'Mi Tienda', 'A', 'Buenos Aires');
```

## Documentación de Usuarios y Roles


Permisos Específicos:

--------------------------------------------------------------
|      Rol	     | Tabla	   |          Permisos               |
--------------------------------------------------------------
| Administrador |	TIENDA	  |  SELECT, INSERT, UPDATE, DELETE |
| Administrador	| EMPLEADO |	 SELECT, INSERT, UPDATE, DELETE |
|   Vendedor	   | TIENDA   | 	SELECT                         |      
|   Vendedor	   | EMPLEADO	| SELECT, INSERT, UPDATE          |
|    Contador   |	TIENDA	  | SELECT                          |
|    Contador	  | EMPLEADO	| SELECT                          |
--------------------------------------------------------------
