USE FabricaDePastas;

-- Actualizar cantidad de ingrediente despues de insertar
DELIMITER //
DROP TRIGGER IF EXISTS FabricaDePastas.Actualizar_Cantidad_Ingrediente_Despues_De_Insertar//
CREATE TRIGGER FabricaDePastas.Actualizar_Cantidad_Ingrediente_Despues_De_Insertar
AFTER INSERT ON Detalles_Pedidos_Proveedores
FOR EACH ROW
BEGIN
    UPDATE Ingredientes
    SET cantidad_disponible = cantidad_disponible + NEW.cantidad
    WHERE id_ingrediente = NEW.id_ingrediente;
END //
DELIMITER ;

-- Actualizar cantidad de ingrediente despues de produccion
DELIMITER //
DROP TRIGGER IF EXISTS FabricaDePastas.Actualizar_Cantidad_Ingrediente_Despues_De_Produccion//
CREATE TRIGGER FabricaDePastas.Actualizar_Cantidad_Ingrediente_Despues_De_Produccion
AFTER INSERT ON Produccion
FOR EACH ROW
BEGIN
    DECLARE cantidad_usada DECIMAL(10, 2);
    SET cantidad_usada = 10.00;
    UPDATE Ingredientes i
    JOIN Productos_Ingredientes pi ON i.id_ingrediente = pi.id_ingrediente
    SET i.cantidad_disponible = i.cantidad_disponible - cantidad_usada
    WHERE pi.id_producto = NEW.id_producto;
END //
DELIMITER ;
