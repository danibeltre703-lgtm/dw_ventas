USE dw_ventas;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM stg_ventas
WHERE IdCliente IS NULL
   OR IdProducto IS NULL
   OR IdFuente IS NULL
   OR Fecha IS NULL
   OR Cantidad <= 0
   OR PrecioUnitario <= 0;

INSERT INTO fact_ventas (
    IdVenta,
    IdCliente,
    IdProducto,
    IdFuente,
    Fecha,
    Cantidad,
    PrecioUnitario,
    Total
)
SELECT
    IdVenta,
    IdCliente,
    IdProducto,
    IdFuente,
    Fecha,
    Cantidad,
    PrecioUnitario,
    Cantidad * PrecioUnitario
FROM stg_ventas;
