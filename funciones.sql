ALTER TABLE cliente ADD email_cliente VARCHAR(40);

UPDATE cliente SET email_cliente = 'juanperez@gmail.com' WHERE nip_cliente = 5001;


SELECT nombre_producto, precioActual_producto, stock_producto FROM producto WHERE stock_producto > 10 ORDER BY precioActual_producto DESC LIMIT 2;





UPDATE producto SET precioActual_producto = precioActual_producto * 1.10 WHERE id_categoria = 1;

INSERT INTO categoria (id_categoria, nombre_categoria, descripcion_categoria) VALUES (4, 'Gaming', 'Accesorios para videojuegos');
DELETE FROM producto WHERE id_categoria = 4;




