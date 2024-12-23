USE FabricaDePastas;


-- Calcular costo producto
DELIMITER //
DROP FUNCTION IF EXISTS FabricaDePastas.Calcular_Costo_Producto //

CREATE FUNCTION FabricaDePastas.Calcular_Costo_Producto(id_producto INT) 
RETURNS DECIMAL(10, 2)
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE costo_total DECIMAL(10, 2);
    
    SELECT SUM(i.cantidad_disponible * i.precio_unitario) INTO costo_total
    FROM Ingredientes i
    JOIN Productos_Ingredientes pi ON i.id_ingrediente = pi.id_ingrediente
    WHERE pi.id_producto = id_producto;
    
    RETURN costo_total;
END;
//
DELIMITER ;

-- Total ventas por cliente
DELIMITER //
DROP FUNCTION IF EXISTS FabricaDePastas.Total_Ventas_Por_Cliente //
CREATE FUNCTION FabricaDePastas.Total_Ventas_Por_Cliente(id_cliente INT) 
RETURNS DECIMAL(10, 2)
NOT DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE total_ventas DECIMAL(10, 2);
    
    SELECT SUM(v.total_venta) INTO total_ventas
    FROM Ventas v
    WHERE v.id_cliente = id_cliente;
    
    RETURN total_ventas;
END; 
//
DELIMITER ;
