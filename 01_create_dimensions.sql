CREATE DATABASE dw_ventas;
USE dw_ventas;

CREATE TABLE dim_cliente (
    IdCliente INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Email VARCHAR(100),
    Telefono VARCHAR(20)
);

CREATE TABLE dim_producto (
    IdProducto INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Categoria VARCHAR(50),
    Precio DECIMAL(10,2)
);

CREATE TABLE dim_fuente (
    IdFuente INT PRIMARY KEY,
    TipoFuente VARCHAR(50),
    FechaCarga DATE,
    DetalleOrigen VARCHAR(255)
);

CREATE TABLE dim_tiempo (
    Fecha DATE PRIMARY KEY,
    Anio INT,
    Mes INT,
    Dia INT,
    Trimestre INT,
    Semana INT,
    NombreDia VARCHAR(20),
    EsFinDeSemana INT
);
