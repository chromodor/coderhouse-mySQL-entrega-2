USE FabricaDePastas;

-- Productos y sus ingredientes

DROP VIEW IF EXISTS FabricaDePastas.Productos_Ingredientes_Vista;

CREATE VIEW FabricaDePastas.Productos_Ingredientes_Vista AS
SELECT 
    p.nombre_producto AS producto,
    i.nombre_ingrediente AS ingrediente,
    pi.id_productos_ingredientes AS id_productos_ingredientes
FROM 
    FabricaDePastas.Productos AS p
JOIN 
    FabricaDePastas.Productos_Ingredientes AS pi ON p.id_producto = pi.id_producto
JOIN 
    FabricaDePastas.Ingredientes AS i ON pi.id_ingrediente = i.id_ingrediente
WHERE 
    p.tipo_producto = 'Pasta fresca';

    
-- Ventas y detalles de ventas
DROP VIEW IF EXISTS FabricaDePastas.Ventas_Detalles_Vista;

CREATE VIEW FabricaDePastas.Ventas_Detalles_Vista AS
	SELECT 
		v.fecha_venta AS fechaVenta,
		c.nombre_cliente AS cliente,
		e.nombre_empleado AS empleado,
		dv.id_detalle_venta AS id_detalle_venta,
		p.nombre_producto AS producto,
		dv.cantidad AS cantidad,
		dv.precio_unitario AS precio_unitario
	FROM 
		FabricaDePastas.Ventas AS v
	JOIN 
		FabricaDePastas.Clientes AS c ON v.id_cliente = c.id_cliente
	JOIN 
		FabricaDePastas.Empleados AS e ON v.id_empleado = e.id_empleado
	JOIN 
		FabricaDePastas.Detalles_Ventas AS dv ON v.id_venta = dv.id_venta
	JOIN 
		FabricaDePastas.Productos AS p ON dv.id_producto = p.id_producto
	WHERE 
		v.fecha_venta = '2024-12-15';

