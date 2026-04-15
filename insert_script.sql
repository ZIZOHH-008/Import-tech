USE import_tech;

INSERT INTO proveedor (nip_proveedor, nit_proveedor, nombre_proveedor, dirreccion_proveedor, telefono_proveedor, pagweb_proveedor) 
VALUES (101, 900123456, 'TechGlobal', 'Calle 10 #5-20', 3124567890, 'techglobal.com');

INSERT INTO proveedor (nip_proveedor, nit_proveedor, nombre_proveedor, dirreccion_proveedor, telefono_proveedor, pagweb_proveedor) 
VALUES (102, 800987654, 'ImportCol', 'Carrera 45 #12-34', 3006549871, 'importcol.co');

INSERT INTO proveedor (nip_proveedor, nit_proveedor, nombre_proveedor, dirreccion_proveedor, telefono_proveedor, pagweb_proveedor) 
VALUES (103, 901555777, 'InfoParts', 'Av 6N #14-22', 3158899001, 'infoparts.com');



INSERT INTO categoria (id_categoria, nombre_categoria, descripcion_categoria) 
VALUES (1, 'Electrónica', 'Componentes y dispositivos electrónicos');

INSERT INTO categoria (id_categoria, nombre_categoria, descripcion_categoria) 
VALUES (2, 'Hogar', 'Artículos básicos para el hogar');

INSERT INTO categoria (id_categoria, nombre_categoria, descripcion_categoria) 
VALUES (3, 'Oficina', 'Suministros y accesorios de oficina');





INSERT INTO producto (nombre_producto, precioActual_producto, stock_producto, id_categoria, nip_proveedor) 
VALUES ('Teclado Gamer', 120000.50, 25, 1, 101);

INSERT INTO producto (nombre_producto, precioActual_producto, stock_producto, id_categoria, nip_proveedor) 
VALUES ('Licuadora XPower', 250000.00, 10, 2, 102);

INSERT INTO producto (nombre_producto, precioActual_producto, stock_producto, id_categoria, nip_proveedor) 
VALUES ('Silla Ejecutiva', 580000.99, 5, 3, 103);





INSERT INTO cliente (nip_cliente, nombre_cliente, direccion_cliente, telefono_cliente) 
VALUES (5001, 'Juan Pérez', 'Calle 3 #20-15', 3114567890);

INSERT INTO cliente (nip_cliente, nombre_cliente, direccion_cliente, telefono_cliente) 
VALUES (5002, 'María Gómez', 'Cra 12 #5-40', 3109876543);

INSERT INTO cliente (nip_cliente, nombre_cliente, direccion_cliente, telefono_cliente) 
VALUES (5003, 'Carlos Ruiz', 'Av 4N #6-30', 3157788990);




INSERT INTO venta (Nfactura_venta, fecha_venta, descuento_venta, montoFinal_venta, nip_cliente) 
VALUES (1001, '2024-11-01', 5000.00, 25000.00, 5001);

INSERT INTO venta (Nfactura_venta, fecha_venta, descuento_venta, montoFinal_venta, nip_cliente) 
VALUES (1002, '2024-11-05', 10000.00, 60000.00, 5002);

INSERT INTO venta (Nfactura_venta, fecha_venta, descuento_venta, montoFinal_venta, nip_cliente) 
VALUES (1003, '2024-11-10', 0.00, 150000.00, 5003);




INSERT INTO producto_venta (Nfactura_venta, nombre_producto) 
VALUES (1001, 'Teclado Gamer');

INSERT INTO producto_venta (Nfactura_venta, nombre_producto) 
VALUES (1002, 'Licuadora XPower');

INSERT INTO producto_venta (Nfactura_venta, nombre_producto) 
VALUES (1003, 'Silla Ejecutiva');

