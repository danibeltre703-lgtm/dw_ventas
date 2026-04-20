USE dw_ventas;

CREATE TABLE fact_ventas (
    IdVenta INT PRIMARY KEY,
    IdCliente INT,
    IdProducto INT,
    IdFuente INT,
    Fecha DATE,
    Cantidad INT,
    PrecioUnitario DECIMAL(10,2),
    Total DECIMAL(10,2)
);

CREATE TABLE stg_ventas AS
SELECT * FROM sistemaventas.VENTAS;
