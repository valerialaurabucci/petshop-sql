-- VISTA 1
CREATE VIEW vista_ventas_clientes AS
SELECT 
v.id_venta,
v.fecha,
c.nombre,
c.apellido,
v.total
FROM venta v
JOIN cliente c ON v.id_cliente = c.id_cliente;

-- VISTA 2
CREATE VIEW vista_productos_categoria AS
SELECT 
p.nombre AS producto,
p.precio,
p.stock,
c.nombre AS categoria
FROM producto p
JOIN categoria c ON p.id_categoria = c.id_categoria;

-- VISTA 3
CREATE VIEW vista_ventas_empleado AS
SELECT 
v.id_venta,
v.fecha,
e.nombre AS empleado,
v.total
FROM venta v
JOIN empleado e ON v.id_empleado = e.id_empleado;

-- FUNCION 1
DELIMITER //

CREATE FUNCTION total_gastado_cliente(id INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
DECLARE total DECIMAL(10,2);

SELECT SUM(total)
INTO total
FROM venta
WHERE id_cliente = id;

RETURN total;

END //

DELIMITER ;

-- FUNCION 2
DELIMITER //

CREATE FUNCTION verificar_stock(prod INT)
RETURNS INT
DETERMINISTIC
BEGIN
DECLARE cantidad INT;

SELECT stock
INTO cantidad
FROM producto
WHERE id_producto = prod;

RETURN cantidad;

END //

DELIMITER ;

-- STORED PROCEDURE 1

DELIMITER //

CREATE PROCEDURE registrar_venta(
IN cliente_id INT,
IN empleado_id INT,
IN total DECIMAL(10,2)
)
BEGIN

INSERT INTO venta(fecha,total,id_cliente,id_empleado)
VALUES (CURDATE(),total,cliente_id,empleado_id);

END //

DELIMITER ;

-- STORED PROCEDURE 2
DELIMITER //

CREATE PROCEDURE actualizar_stock(
IN producto_id INT,
IN cantidad INT
)
BEGIN

UPDATE producto
SET stock = stock - cantidad
WHERE id_producto = producto_id;

END //

DELIMITER ;

-- TIGGER 1

DELIMITER //

CREATE TRIGGER trigger_reducir_stock
AFTER INSERT ON detalle_venta
FOR EACH ROW
BEGIN

UPDATE producto
SET stock = stock - NEW.cantidad
WHERE id_producto = NEW.id_producto;

END //

DELIMITER ;

-- TIGGER 2

DELIMITER //

CREATE TRIGGER trigger_stock_negativo
BEFORE UPDATE ON producto
FOR EACH ROW
BEGIN

IF NEW.stock < 0 THEN
SET NEW.stock = 0;
END IF;

END //

DELIMITER ;
