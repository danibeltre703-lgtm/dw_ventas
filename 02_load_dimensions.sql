USE dw_ventas;

INSERT INTO dim_cliente (IdCliente, Nombre, Email, Telefono)
SELECT DISTINCT
    IdCliente,
    Nombre,
    Email,
    Telefono
FROM sistemaventas.CLIENTES;

INSERT INTO dim_producto (IdProducto, Nombre, Categoria, Precio)
SELECT DISTINCT
    IdProducto,
    Nombre,
    Categoria,
    Precio
FROM sistemaventas.PRODUCTOS;

INSERT INTO dim_fuente (IdFuente, TipoFuente, FechaCarga, DetalleOrigen)
SELECT DISTINCT
    IdFuente,
    TipoFuente,
    FechaCarga,
    DetalleOrigen
FROM sistemaventas.FUENTE_DATOS;

INSERT INTO dim_tiempo (Fecha, Anio, Mes, Dia, Trimestre, Semana, NombreDia, EsFinDeSemana)
SELECT DISTINCT
    Fecha,
    YEAR(Fecha),
    MONTH(Fecha),
    DAY(Fecha),
    QUARTER(Fecha),
    WEEK(Fecha),
    DAYNAME(Fecha),
    CASE
        WHEN DAYOFWEEK(Fecha) IN (1,7) THEN 1
        ELSE 0
    END
FROM sistemaventas.VENTAS;
