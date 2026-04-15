CREATE DATABASE import_tech;  
USE import_tech;

CREATE TABLE proveedor(
	nip_proveedor INT PRIMARY KEY NOT NULL,
	nit_proveedor INT NOT NULL,
    nombre_proveedor VARCHAR(30) NOT NULL,
    dirreccion_proveedor VARCHAR(30) NOT NULL,
    telefono_proveedor VARCHAR(15) NOT NULL,
    pagweb_proveedor VARCHAR(30) NOT NULL
) engINe=INnoDB; -- en conocimientos previos, aconsejaban este comando


CREATE TABLE categoria(
	id_categoria INT PRIMARY KEY NOT NULL,
	nombre_categoria VARCHAR(20)  NOT NULL,
    descripcion_categoria VARCHAR(45) NOT NULL
) engINe=INnoDB;


CREATE TABLE producto(
	nombre_producto VARCHAR(30) PRIMARY KEY NOT NULL,
	precioActual_producto DECIMAL(24,4) NOT NULL,
	stock_producto INT NOT NULL,
    
	id_categoria INT,
	CONSTRAINT fk_producto_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria),
    
    nip_proveedor INT NOT NULL,
    CONSTRAINT fk_producto_proveedor FOREIGN KEY (nip_proveedor) REFERENCES proveedor(nip_proveedor)
) engINe=INnoDB;



CREATE TABLE cliente(
	nip_cliente INT PRIMARY KEY NOT NULL,
	nombre_cliente VARCHAR(30)  NOT NULL,
    direccion_cliente VARCHAR(30) NOT NULL,
    telefono_cliente VARCHAR(15) NOT NULL
) engINe=INnoDB;



CREATE TABLE venta(
	Nfactura_venta INT PRIMARY KEY NOT NULL,
    fecha_venta DATE NOT NULL,
    -- cliente_venta VARCHAR(30) NOT NULL,
    descuento_venta DECIMAL(24,4) NOT NULL,
    montoFinal_venta DECIMAL(24,4) NOT NULL,
    
    nip_cliente INT,
    CONSTRAINT fk_venta_cliente FOREIGN KEY (nip_cliente) REFERENCES cliente(nip_cliente)
) engINe = INnoDB;



CREATE TABLE producto_venta(
	Nfactura_venta INT,
    nombre_producto VARCHAR(30),
    
    PRIMARY KEY (Nfactura_venta , nombre_producto),
    
    CONSTRAINT fk_ProductoVenta_producto FOREIGN KEY (nombre_producto) REFERENCES producto(nombre_producto),
    CONSTRAINT fk_ProductoVenta_venta FOREIGN KEY (Nfactura_venta) REFERENCES venta(Nfactura_venta)
) engINe=INnoDB;
