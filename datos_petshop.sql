USE petshop_db;

-- CLIENTES
INSERT INTO cliente (nombre, apellido, telefono, email) VALUES
('Juan','Perez','111111111','juan@mail.com'),
('Ana','Gomez','222222222','ana@mail.com');
('Carlos','Lopez','333333333','carlos@mail.com'),
('Maria','Fernandez','444444444','maria@mail.com'),
('Pedro','Martinez','555555555','pedro@mail.com'),
('Lucia','Rodriguez','666666666','lucia@mail.com'),
('Diego','Sanchez','777777777','diego@mail.com'),
('Sofia','Ramirez','888888888','sofia@mail.com'),
('Jorge','Torres','999999999','jorge@mail.com'),
('Valeria','Flores','101010101','valeria@mail.com'),
('Martin','Acosta','111111112','martin@mail.com'),
('Paula','Herrera','121212121','paula@mail.com'),
('Lucas','Castro','131313131','lucas@mail.com'),
('Camila','Mendez','141414141','camila@mail.com'),
('Andres','Vega','151515151','andres@mail.com');

-- EMPLEADOS
INSERT INTO empleado (nombre, cargo, salario) VALUES
('Luis','Vendedor',200000),
('Carla','Cajera',180000);
('Mario','Vendedor',210000),
('Laura','Cajera',185000),
('Diego','Vendedor',220000),
('Sabrina','Cajera',190000),
('Pablo','Encargado',250000),
('Romina','Vendedor',205000),
('Fernando','Vendedor',215000),
('Gabriela','Cajera',180000),
('Nicolas','Vendedor',230000),
('Julieta','Cajera',195000),
('Esteban','Vendedor',225000),
('Marina','Cajera',200000),
('Hector','Encargado',260000);

-- CATEGORIAS
INSERT INTO categoria (nombre) VALUES
('Alimentos'),
('Accesorios');
('Higiene'),
('Juguetes'),
('Salud'),
('Ropa'),
('Transporte'),
('Camas'),
('Accesorios gatos'),
('Accesorios perros'),
('Acuarios'),
('Aves'),
('Reptiles'),
('Roedores'),
('Snacks'),
('Medicamentos'),
('Entrenamiento');

-- PROVEEDORES
INSERT INTO proveedor (nombre, telefono) VALUES
('Proveedor1','123456'),
('Proveedor2','654321');
('Proveedor3','111111'),
('Proveedor4','222222'),
('Proveedor5','333333'),
('Proveedor6','444444'),
('Proveedor7','555555'),
('Proveedor8','666666'),
('Proveedor9','777777'),
('Proveedor10','888888'),
('Proveedor11','999999'),
('Proveedor12','101010'),
('Proveedor13','121212'),
('Proveedor14','131313'),
('Proveedor15','141414');

-- PRODUCTO
INSERT INTO producto (nombre, precio, stock, id_categoria, id_proveedor) VALUES
-- Alimentos (1)
('Alimento perro', 5000, 50, 1, 1),
('Alimento gato', 4500, 40, 1, 1),
('Snack perro', 1200, 60, 13, 1),
-- Accesorios básicos (2, 8, 9)
('Collar', 1500, 30, 2, 2),
('Correa', 1800, 25, 8, 2),
('Comedero', 2200, 35, 9, 1),
('Bebedero', 2100, 28, 9, 1),
-- Higiene (3)
('Shampoo mascotas', 2500, 20, 3, 1),
('Arena sanitaria', 3000, 45, 3, 1),
-- Juguetes (4)
('Pelota perro', 900, 50, 4, 2),
('Rascador gato', 7000, 10, 4, 2),
-- Ropa (5)
('Campera perro', 8500, 12, 5, 2),
-- Transporte (6)
('Transportadora', 12000, 8, 6, 2),
-- Camas (7)
('Cucha', 15000, 6, 7, 2),
-- Aves (10)
('Semillas aves', 2800, 25, 10, 1),
-- Reptiles (11)
('Terrario', 20000, 4, 11, 2),
-- Roedores (12)
('Jaula hamster', 12000, 5, 12, 2),
-- Salud / medicamentos (14)
('Pipeta antipulgas', 3200, 18, 14, 1),
('Vitaminas', 3500, 15, 14, 2),
-- Entrenamiento (15)
('Clicker entrenamiento', 1800, 22, 15, 1);

-- VENTAS
INSERT INTO venta (fecha, total, id_cliente, id_empleado) VALUES
(CURDATE(), 6500, 1, 1),
(CURDATE(), 5000, 2, 1),
(CURDATE(), 3000, 3, 2),
(CURDATE(), 7000, 4, 1),
(CURDATE(), 4500, 5, 2),
(CURDATE(), 8000, 6, 1),
(CURDATE(), 2000, 7, 2),
(CURDATE(), 6000, 8, 1),
(CURDATE(), 7500, 9, 2),
(CURDATE(), 9000, 10, 1),
(CURDATE(), 3500, 11, 2),
(CURDATE(), 10000, 12, 1),
(CURDATE(), 6500, 13, 2),
(CURDATE(), 7200, 1, 1),
(CURDATE(), 4100, 2, 2);
(CURDATE(), 9500, 3, 3),
(CURDATE(), 12000, 4, 4),
(CURDATE(), 3000, 5, 5),
(CURDATE(), 15000, 6, 6),
(CURDATE(), 7000, 7, 3),
(CURDATE(), 20000, 8, 4),
(CURDATE(), 4000, 9, 5),
(CURDATE(), 11000, 10, 6),
(CURDATE(), 6000, 11, 3),
(CURDATE(), 8000, 12, 4),
(CURDATE(), 13500, 13, 5),
(CURDATE(), 5000, 14, 6),
(CURDATE(), 9000, 15, 3),
(CURDATE(), 7500, 1, 4),
(CURDATE(), 6200, 2, 5);

-- DETALLE VENTA
INSERT INTO detalle_venta (id_venta, id_producto, cantidad, precio_unitario) VALUES
(1, 1, 1, 5000),
(1, 2, 1, 1500),
(2, 3, 2, 2500),
(3, 4, 2, 1500),
(4, 5, 1, 7000),
(5, 6, 1, 4500),
(6, 7, 1, 8000),
(7, 8, 2, 1000),
(8, 9, 1, 6000),
(9, 10, 1, 7500),
(10, 11, 1, 9000),
(11, 12, 2, 1750),
(12, 13, 1, 10000),
(13, 14, 1, 6500),
(14, 15, 1, 7200),
(15, 2, 2, 2050);
(16, 1, 2, 5000),
(16, 3, 1, 1200),
(17, 2, 3, 4500),
(17, 4, 1, 1500),
(18, 5, 1, 7000),
(18, 10, 2, 900),
(19, 6, 2, 4500),
(19, 8, 1, 1000),
(20, 1, 1, 5000),
(20, 9, 1, 6000),
(21, 2, 2, 4500),
(21, 3, 1, 1200),
(22, 7, 1, 8000),
(22, 4, 2, 1500),
(23, 1, 3, 5000),
(23, 11, 1, 9000),
(24, 8, 2, 1000),
(24, 12, 1, 12000),
(25, 13, 1, 10000),
(25, 2, 1, 4500),
(26, 1, 2, 5000),
(26, 14, 1, 3200),
(27, 15, 1, 1800),
(27, 3, 2, 1200),
(28, 9, 1, 6000),
(28, 6, 1, 4500),
(29, 2, 1, 4500),
(29, 5, 1, 7000),
(30, 1, 2, 5000),
(30, 10, 1, 900);

-- METODO DE PAGO
INSERT INTO metodo_pago (nombre) VALUES
('Efectivo'),
('Tarjeta débito'),
('Tarjeta crédito'),
('Transferencia'),
('Mercado Pago');

-- ENVIO
INSERT INTO envio (tipo) VALUES
('Retiro en tienda'),
('Envío estándar'),
('Envío express');

-- SUCURSAL
INSERT INTO sucursal (nombre) VALUES
('Sucursal Centro'),
('Sucursal Norte'),
('Sucursal Sur');

-- DESCUENTO
INSERT INTO descuento (porcentaje) VALUES
(5),(10),(15),(20);

-- MARCA
INSERT INTO marca (nombre) VALUES
('Royal Canin'),
('Pedigree'),
('Whiskas'),
('Purina'),
('Pro Plan');

-- FACTURA
INSERT INTO factura (id_venta) VALUES
(1),(2),(3),(4),(5),(6),(7),(8),(9),(10),
(11),(12),(13),(14),(15);

-- HISTORIAL CLIENTE
INSERT INTO cliente_historial (id_cliente) VALUES
(1),(2),(3),(4),(5),(6),(7),(8),(9),(10),
(11),(12),(13),(14),(15);
