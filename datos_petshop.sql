USE petshop_db;

-- CLIENTES
INSERT INTO cliente (nombre, apellido, telefono, email) VALUES
('Juan','Perez','111111111','juan@mail.com'),
('Ana','Gomez','222222222','ana@mail.com');

-- EMPLEADOS
INSERT INTO empleado (nombre, cargo, salario) VALUES
('Luis','Vendedor',200000),
('Carla','Cajera',180000);

-- CATEGORIAS
INSERT INTO categoria (nombre) VALUES
('Alimentos'),
('Accesorios');

-- PROVEEDORES
INSERT INTO proveedor (nombre, telefono) VALUES
('Proveedor1','123456'),
('Proveedor2','654321');

-- PRODUCTOS
INSERT INTO producto (nombre, precio, stock, id_categoria, id_proveedor) VALUES
('Alimento perro', 5000, 50, 1, 1),
('Collar', 1500, 30, 2, 2);

-- VENTAS
INSERT INTO venta (fecha, total, id_cliente, id_empleado) VALUES
(CURDATE(), 6500, 1, 1);

-- DETALLE VENTA
INSERT INTO detalle_venta (id_venta, id_producto, cantidad, precio_unitario) VALUES
(1, 1, 1, 5000),
(1, 2, 1, 1500);


