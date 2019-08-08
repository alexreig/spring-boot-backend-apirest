/* tabla clientes */

INSERT INTO clases (id, nombre) VALUES (1, 'Elefantes');
INSERT INTO clases (id, nombre) VALUES (2, 'Leones');
INSERT INTO clases (id, nombre) VALUES (3, 'Delfines');
INSERT INTO clases (id, nombre) VALUES (4, 'Tortugas');


INSERT INTO clientes (clase_id, nombre, apellido, email, create_at) VALUES(1, 'Alex', 'Andrés', 'alexareig@gmail.com', '2019-01-01');
INSERT INTO clientes (clase_id, nombre, apellido, email, create_at) VALUES(2, 'Erik', 'Junior', 'ejunior@gmail.com', '2019-01-02');
INSERT INTO clientes (clase_id, nombre, apellido, email, create_at) VALUES(4, 'Carlota', 'Torvalds', 'torvalds@gmail.com', '2019-01-03');
INSERT INTO clientes (clase_id, nombre, apellido, email, create_at) VALUES(4, 'Jordi', 'Torres', 'jordit@gmail.com', '2019-01-04');
INSERT INTO clientes (clase_id, nombre, apellido, email, create_at) VALUES(4, 'Hugo', 'Sanchez', 'hugosan@gmail.com', '2019-02-01');
INSERT INTO clientes (clase_id, nombre, apellido, email, create_at) VALUES(3, 'Monica', 'Diaz', 'diazmonica@gmail.com', '2019-02-10');
INSERT INTO clientes (clase_id, nombre, apellido, email, create_at) VALUES(3, 'Ralph', 'Johnson', 'jjohnson@gmail.com', '2019-02-18');
INSERT INTO clientes (clase_id, nombre, apellido, email, create_at) VALUES(3, 'John', 'Cena', 'johncna@gmail.com', '2019-02-28');
INSERT INTO clientes (clase_id, nombre, apellido, email, create_at) VALUES(3, 'James', 'Lee', 'jameslee@gmail.com', '2019-03-03');
INSERT INTO clientes (clase_id, nombre, apellido, email, create_at) VALUES(5, 'Maria', 'Lee', 'malee@gmail.com', '2019-03-04');
INSERT INTO clientes (clase_id, nombre, apellido, email, create_at) VALUES(6, 'Sonia', 'Monroe', 'roesonia@gmail.com', '2019-03-05');
INSERT INTO clientes (clase_id, nombre, apellido, email, create_at) VALUES(7, 'Jose', 'Fernandez', 'josefer@gmail.com', '2019-03-06');

/* usuarios y roles */
INSERT INTO `usuarios` (username, password, enabled, nombre, apellido, email) VALUES ('Andres','$2a$10$C3Uln5uqnzx/GswADURJGOIdBqYrly9731fnwKDaUdBkt/M3qvtLq',1, 'Andres', 'Guzman','profesor@bolsadeideas.com');
INSERT INTO `usuarios` (username, password, enabled, nombre, apellido, email) VALUES ('admin','$2a$10$RmdEsvEfhI7Rcm9f/uZXPebZVCcPC7ZXZwV51efAvMAp1rIaRAfPK',1, 'John', 'Doe','jhon.doe@bolsadeideas.com');

INSERT INTO `roles` (nombre) VALUES ('ROLE_USER');
INSERT INTO `roles` (nombre) VALUES ('ROLE_ADMIN');

INSERT INTO `usuarios_roles` (usuario_id, role_id) VALUES (1, 1);
INSERT INTO `usuarios_roles` (usuario_id, role_id) VALUES (2, 2);
INSERT INTO `usuarios_roles` (usuario_id, role_id) VALUES (2, 1);

/* tabla productos */
INSERT INTO productos (nombre, precio, create_at) VALUES('Dieta 1', 120, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Dieta 2', 140, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Dieta 3', 160, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('1 hora extra', 50, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Pack 2 horas', 80, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Pack 4 horas', 150, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Pack 6 horas', 190 , NOW());

/* facturas de ejemplo */
INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES('Factura de junio', null, 1, NOW());

INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(1, 1, 1);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(2, 1, 4);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(1, 1, 5);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(1, 1, 7);

INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES('Factura de mayo', 'Pendiente de cobro!', 1, NOW());
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(3, 2, 6);