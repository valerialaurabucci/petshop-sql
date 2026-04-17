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


