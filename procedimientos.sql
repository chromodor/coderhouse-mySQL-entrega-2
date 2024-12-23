USE FabricaDePastas;

-- Insertar producto
DELIMITER //
DROP PROCEDURE IF EXISTS FabricaDePastas.Insertar_Producto //
CREATE PROCEDURE FabricaDePastas.Insertar_Producto(
    IN nombre_producto VARCHAR(255),
    IN tipo_producto VARCHAR(255),
    IN precio DECIMAL(10, 2)
)
BEGIN
    INSERT INTO Productos (nombre_producto, tipo_producto, precio)
    VALUES (nombre_producto, tipo_producto, precio);
END //

DELIMITER ;

-- Actualizar precio producto
DELIMITER //
DROP PROCEDURE IF EXISTS FabricaDePastas.Actualizar_Precio_Producto //
CREATE PROCEDURE FabricaDePastas.Actualizar_Precio_Producto(
    IN id_producto INT,
    IN nuevo_precio DECIMAL(10, 2)
)
BEGIN
    UPDATE Productos
    SET precio = nuevo_precio
    WHERE id_producto = id_producto;
END //

DELIMITER ;
