USE proyecto_cismo;
 
 -- insertar registros tienda
 INSERT INTO tienda (ID,NOMBRE,ESTADO,CIUDAD) VALUES
('C001','Cismo - San Fernando','A','Buenos Aires'),
('C002','Cismo - Castelar','A','Buenos Aires'),
('C003','Cismo - San Martin','A','Buenos Aires'),
('C004','Cismo - Vicente Lopez','A','Buenos Aires'),
('C005','Cismo - Palermo','A','Buenos Aires'),
('C006','Cismo - San Miguel','A','Buenos Aires'),
('C007','Cismo - Norte','A','Buenos Aires'),
('C008','Cismo - San luis','A','Buenos Aires'),
('C009','Cismo - Pilar','A','Buenos Aires'),
('C010','Cismo - Villa Adelina','A','Buenos Aires'),
('C011','Cismo - Villa Ballester','A','Buenos Aires'),
('C012','Cismo- La Matanza','A','Buenos Aires'),
('C013','Cismo - Moron','A','Buenos Aires'),
('C014','Cismo - Ituzaigo','A','Buenos Aires'),
('C015','Cismo - Santa fe','A','Santa Fe'),
('C016','Cismo - Rosario','A','Rosario'),
('C017','Cismo - Salta','A','Salta'),
('C018','Cismo - Mar del Plata','A','Buenos Aires'),
('C019','Cismo - Cordoba','A','Cordoba'),
('C020','Cismo -  San Luis','A','San Luis');

-- Insertar registros empleado_tienda
INSERT INTO empleado_tienda (ID,LEGAJO,IDTIENDA,ESTADO) Values
('00001','18675125','C002','A'),
('00002','03217618','C003','A'),
('00003','29854446','C002','A'),		
('00004','24093519','C004','A'),		
('00005','14981335','C003','A'),		
('00006','78817599','C004','A'),		
('00007','79402747','C006','A'),		
('00008','50073860','C006','A'),		
('00009','32456962','C001','A'),	
('00010','41061929','C001','A'),		
('00011','30206070','C008','A'),		
('00012','59362265','C008','A'),
('00013','89031903','C005','A'),
('00014','65578731','C005','A'),		
('00015','32725194','C007','A'),		
('00016','33709895','C009','A'),		
('00017','12127586','C009','A'),	
('00018','29854447','C010','A'),	
('00019','58305448','C010','A'),	
('00020','60546475','C011','A');

-- insertar registros de empleados
INSERT INTO empleado (ID,CUIL,APENOM,LEGAJOREAL,ESTADO) Values
('00001','18675125','Perez , Maria Laura','3263','A'),
('00002','03217618','Ambrosino,Facundo','6060','A'),
('00019','29854446','Ditale, Liliana Rosana','2161','A'),
('00003','24093519','Calderoli, Emanuel','7612','A'),
('00004','14981335','Gaitan, Daiana','6726','A'),
('00005','78817599','Espinosa, Fernanda','9664','A'),
('00006','79402747','Diaz, Pablo Andres','7395','A'),
('00020','50073860','Romero, Sofia Camila','8888','A'),
('00007','32456962','Fernandez, Nicolas Sebastian','8415','A'),
('00008','41061929','Moreno, Valentina Agustina','1864','A'),
('00009','30206070','JimÃ©nez, Lucas Emanuel','9374','A'),
('00010','59362265','Ruiz, Camila Belen','9227','A'),
('00011','89031903','Hernandez, Franco Agustin','5891','A'),
('00012','65578731','Alvarez, Florencia Micaela','8064','A'),
('00013','32725194','Gomez, Matias Ignacio','7516','A'),
('00014','33709895','Lopez, Camila Belen','4723','A'),
('00015','12127586','Martinez, Diego Ezequiel','6173','A'),
('00016','21587668','Sanchez, Marcela Natalia','2530','A'),
('00017','58305447','Diaz, Pablo Andrea','2576','A'),
('00018','60546475','Gonzalez, Carlos Alberto','9086','A');

-- insertar regitros a la tabla TIPOCOMPROBANTE

INSERT INTO TIPOCOMPROBANTE (ID, NOMBRE, ESTADO) VALUES
  ('FAC', 'Factura', 'A'),
  ('NC',  'Nota de Crédito', 'A'),
  ('ND',  'Nota de Débito', 'A'),
  ('REC', 'Recibo', 'A'),
  ('TKX', 'Ticket', 'A'),
  ('REM', 'Remito', 'A'),
  ('LIQ', 'Liquidación', 'A'),
  ('PRE', 'Presupuesto', 'A'),
  ('PED', 'Pedido', 'A'),
  ('DEV', 'Devolución', 'A');
  
  -- insertar regitros variedades
  
  INSERT INTO VARIEDADES (ID, NOMBRE, ESTADO) VALUES
  ('1','Efectivo Pesos ', 'A'),
  ('2','Efectivo Dolares', 'A'),
  ('3','Tj. de Credito Visa', 'A'),
  ('4','Tj de Credito Cabal', 'A'),
  ('5','Tj de America Express', 'A'),
  ('15','Tj de Credito Naranja','A'),
  ('6','Tj de Credito Nativa', 'A'),
  ('7','Tj de Credito Patagonia 365', 'A'),
  ('8','Tj de Credito Maestro', 'A'),
  ('9','Tj de Credito Naranja Plan Z', 'A'),
  ('10','Mercado Pago', 'A'),
  ('11','Tj de Debito Visa', 'A'),
  ('12','Tj de Debito Maestro', 'A'),
  ('13','Tj de Debito Cabal 24', 'A'),
  ('14','Modo', 'A');
-- Insertar regristos facturaciondet
INSERT INTO FACTURACIONDET ( IDFACTURA , DESCRIPCION, IMPORTE) VALUES
('00001','PRODUCTOS SELECIONADOS','33670'),
('00002','BATIDORA','22693'),
('00003','GALLETAS SURTIDAS','7500'),
('00004','CARNES MAGRA VARIAS','67890'),
('00005','EMBUTIDOS','8700'),
('00006','PRODUCTOS SELECCIONADOS','209784'),
('00007','GALLETAS SURTIDAS','4857642'),
('00008','EMBUTIDOS','67432'),
('00009','CARNES MAGRAS VARIAS ','45321'),
('00010','LACTEOS VARIOS','10543'),
('00011','PRODUCTOS SELECCIONADOS','87965'),
('00012','CARNES MAGRAS VARIAS','13965'),
('00013','VINOS SELECIONADOS','498763'),
('00014','VERDURAS SELECCIONADAS','67890'),
('00015','JUGUETERIA','265785');

-- Insertar registros facturacioncab
INSERT INTO FACTURACIONCAB ( ID , IDTIENDA, FECHAVENTA, TIPOCOMPROBANTE, CAJA, LEGAJO, NROCOMPROBANTE,IMPORTE)
VALUES
('00001','C001', '2024/11/23', 'FAC', '1', '32456962', 'FAC001', '33670'),
('00002','C002', '2024/11/24', 'NC',  '2', '29854446' , 'NC002',  '22693'),
('00003','C010', '2024/11/25', 'REC', '1', '29854446', 'REC003', '7500'),
('00004','C003', '2024/11/26', 'FAC', '3', '03217618', 'FAC004', '67890'),
('00005','C002', '2024/11/27', 'FAC', '2', '18675125', 'FACM005','8700'),
('00006','C008', '2024/11/28', 'FAC', '1', '59362265', 'FAC006', '209784'),
('00007','C005', '2024/11/29', 'NC' , '2', '89031903', 'NC007',  '4857642'),
('00008','C005', '2024/11/30', 'FAC', '3', '65578731', 'FAC008', '67432'),
('00009','C001', '2024/12/01', 'FAC', '1', '41061929', 'FAC009', '45321'),
('00010','C007', '2024/12/02', 'FAC', '2', '32725194', 'FAC010', '10543'),
('00011','C004', '2024/12/03', 'FAC', '3', '24093519', 'FAC011', '87965'),
('00012','C009', '2024/12/04', 'NC' , '1', '33709895', 'NC012',  '13965'),
('00013','C009', '2024/12/05', 'FAC', '2', '12127586', 'FAC013' ,'498763'),
('00014','C010', '2024/12/06', 'FAC', '3', '58305448', 'FAC014' ,'67890'),
('00015','C011', '2024/12/07', 'FAC', '1', '60546475', 'FAC015','265785');

-- Insertar regritos mediodepago
INSERT INTO mediodepago ( IDMEDIODEPAGO , IDTIENDA, FHVENTA, TIPOCOMPROBANTE,LEGAJO, NROCOMPROBATE, VARIEDAD,IMPORTE)
VALUES
('00001','C001', '2024/11/23', 'FAC', '32456962', 'FAC001', '1', '33670'),
('00002','C002', '2024/11/24', 'NC',  '29854446' ,'NC002',  '6','22693'),
('00003','C010', '2024/11/25', 'REC', '29854446', 'REC003', '1','7500'),
('00004','C003', '2024/11/26', 'FAC', '03217618', 'FAC004', '7','67890'),
('00005','C002', '2024/11/27', 'FAC', '18675125', 'FACM005','3','8700'),
('00006','C008', '2024/11/28', 'FAC', '59362265', 'FAC006', '2','209784'),
('00007','C005', '2024/11/29', 'NC' , '89031903', 'NC007',  '1','4857642'),
('00008','C005', '2024/11/30', 'FAC', '65578731', 'FAC008', '7' ,'67432'),
('00009','C001', '2024/12/01', 'FAC', '41061929', 'FAC009', '8' ,'45321'),
('00010','C007', '2024/12/02', 'FAC', '32725194', 'FAC010', '8' ,'10543'),
('00011','C004', '2024/12/03', 'FAC', '24093519', 'FAC011', '3' ,'87965'),
('00012','C009', '2024/12/04', 'NC' , '33709895', 'NC012',  '5','13965'),
('00013','C009', '2024/12/05', 'FAC', '12127586', 'FAC013', '9','498763'),
('00014','C010', '2024/12/06', 'FAC', '58305448', 'FAC014', '5','67890'),
('00015','C011', '2024/12/07', 'FAC', '60546475', 'FAC015', '7','265785');
