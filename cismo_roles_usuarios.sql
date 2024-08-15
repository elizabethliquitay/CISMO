

-- se crea usuarios
CREATE USER 'administrador'@'localhost' IDENTIFIED BY '1234';
CREATE USER 'vendedor'@'localhost' IDENTIFIED BY '1234';
CREATE USER 'contador'@'localhost' IDENTIFIED BY '1234';

-- se crea roles 

CREATE ROLE administrador;
CREATE ROLE vendedor;
CREATE ROLE contador;

-- ortogar permisos y roles

-- se otorga todos los permisos al administrador para la tabla tiendas y empleados  
GRANT ALL PRIVILEGES ON tienda.* TO admin;
GRANT ALL PRIVILEGES ON empleado.* TO admin;
-- se otorga el  los permisos  select , insert y update al usuario de vendedor 
GRANT SELECT ON tienda.* TO vendedor;
GRANT SELECT, INSERT, UPDATE ON empleado.* TO vendedor;

-- se otorga el usuario contador solo el permiso de select
GRANT SELECT ON tienda.* TO contador;
GRANT SELECT ON empleado.* TO contador;

-- asignar roles a usuarios

GRANT administrador TO 'admin'@'localhost';
GRANT vendedor TO 'vendedor'@'localhost';
GRANT contador TO 'contador'@'localhost';

use proyecto_cismo;
SELECT * FROM tienda;

GRANT SELECT ON proyecto_cismo.* TO 'contador'@'localhost';

 INSERT INTO tienda (ID,NOMBRE,ESTADO,CIUDAD) VALUES
('C021','Cismo - Catamarca','A','CATAMARCA');