USE FabricaDePastas;

-- Tabla Clientes
INSERT INTO FabricaDePastas.Clientes (nombre_cliente, direccion, telefono) VALUES
('Cliente A', 'Calle Falsa 123', '123456789'),
('Cliente B', 'Avenida Siempre Viva 742', '987654321'),
('Cliente C', 'Boulevard de los Sueños Rotos 456', '456789123');

-- Tabla Productos
INSERT INTO FabricaDePastas.Productos (nombre_producto, tipo_producto, precio) VALUES
('Ravioles', 'Pasta fresca', 150.00),
('Fideos', 'Pasta seca', 80.00),
('Ñoquis', 'Pasta fresca', 120.00);

-- 	Tabla Proveedores
INSERT INTO FabricaDePastas.Proveedores (nombre_proveedor, direccion, telefono) VALUES
('Proveedor A', 'Calle falsa 123', '123456789'),
('Proveedor B', 'Avenida siempre viva 742', '987654321'),
('Proveedor C', 'Boulevard de los sueños rotos 456', '456789123');

-- Tabla Ingredientes
INSERT INTO FabricaDePastas.Ingredientes (nombre_ingrediente, cantidad_disponible, unidad_medida, id_proveedor) VALUES
('Harina', 100.00, 'kg', 1),
('Huevo', 200.00, 'unidades', 2),
('Agua', 500.00, 'litros', 3);

-- Tabla Pedidos_Proveedores
INSERT INTO FabricaDePastas.Pedidos_Proveedores (id_proveedor, fecha_pedido, fecha_entrega) VALUES
(1, '2024-12-01', '2024-12-05'),
(2, '2024-12-02', '2024-12-06'),
(3, '2024-12-03', '2024-12-07');

-- Tabla Detalles_Pedidos_Proveedores
INSERT INTO FabricaDePastas.Detalles_Pedidos_Proveedores (id_pedido, id_ingrediente, cantidad) VALUES
(1, 1, 50.00),
(2, 2, 100.00),
(3, 3, 200.00);

-- Tabla Empleados
INSERT INTO FabricaDePastas.Empleados (nombre_empleado, posicion, salario, fecha_contratacion) VALUES
('Juan Pérez', 'Cocinero', 30000.00, '2024-01-15'),
('Ana Gómez', 'Ayudante de Cocina', 25000.00, '2024-02-20'),
('Luis Martínez', 'Supervisor', 35000.00, '2024-03-10');

-- Tabla Produccion
INSERT INTO FabricaDePastas.Produccion (fecha_produccion, id_producto, id_empleado, cantidad_producida) VALUES
('2024-12-10', 1, 1, 100.00),
('2024-12-11', 2, 2, 200.00),
('2024-12-12', 3, 3, 150.00);

-- Tabla Ventas
INSERT INTO FabricaDePastas.Ventas (fecha_venta, id_cliente, id_empleado, total_venta) VALUES
('2024-12-15', 1, 1, 1500.00),
('2024-12-16', 2, 2, 3000.00),
('2024-12-17', 3, 3, 2500.00);

-- Tabla Detalles_Ventas
INSERT INTO FabricaDePastas.Detalles_Ventas (id_venta, id_producto, cantidad, precio_unitario) VALUES
(1, 1, 10.00, 150.00),
(2, 2, 20.00, 80.00),
(3, 3, 15.00, 120.00);

-- Tabla Productos_Ingredientes
INSERT INTO FabricaDePastas.Productos_Ingredientes (id_producto, id_ingrediente) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Tabla Proveedores_Ingredientes
INSERT INTO FabricaDePastas.Proveedores_Ingredientes (id_proveedor, id_ingrediente) VALUES
(1, 1),
(2, 2),
(3, 3);
