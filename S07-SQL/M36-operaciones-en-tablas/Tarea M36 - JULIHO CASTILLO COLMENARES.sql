USE AdventureWorks2022;
GO

CREATE TABLE dbo.Ventas (
    NumeroOrden INT PRIMARY KEY,
    FechaOrden DATETIME,
    FechaEntrega DATE,
    EstatusOrden VARCHAR(50),
    NombreCliente NVARCHAR(100),
    DomicilioEntrega NVARCHAR(255),
    CompraOnline CHAR(1), -- 'S' para Sí, 'N' para No
    MetodoPago NVARCHAR(50),
    MetodoEnvio NVARCHAR(50),
    Subtotal DECIMAL(10, 2),
    Impuestos DECIMAL(10, 2),
    CostoEnvio DECIMAL(10, 2),
    Total DECIMAL(10, 2),
    Moneda CHAR(3),
    Observaciones NVARCHAR(MAX)
);

-- Insertando el primer registro
INSERT INTO dbo.Ventas (
    NumeroOrden, FechaOrden, FechaEntrega, EstatusOrden, NombreCliente, 
    DomicilioEntrega, CompraOnline, MetodoPago, MetodoEnvio, Subtotal, 
    Impuestos, CostoEnvio, Total, Moneda, Observaciones
) VALUES (
    12345, '2022-08-05 18:58:46.867', '2022-08-15', 'Pendiente', 'Juan Pérez', 
    'Avenida Siempre Viva 742 Springfield', 'S', 'Tarjeta de Crédito', 'Express', 
    20565.62, 1971.51, 616.09, 23153.22, 'MXN', 
    'El cliente indica que solo puede recibir el envío entre semana'
);

-- Insertando el segundo registro
INSERT INTO dbo.Ventas (
    NumeroOrden, FechaOrden, FechaEntrega, EstatusOrden, NombreCliente, 
    DomicilioEntrega, CompraOnline, MetodoPago, MetodoEnvio, Subtotal, 
    Impuestos, CostoEnvio, Total, Moneda, Observaciones
) VALUES (
    12346, '2022-08-06 10:24:30.123', '2022-08-16', 'En Proceso', 'Ana López', 
    'Calle de la Rosa 15, Ciudad de México', 'N', 'Efectivo', 'Terrestre', 
    15200.00, 1368.00, 500.00, 17068.00, 'MXN', 
    'Preferible entregar por la mañana'
);

-- Actualizar el estatus de la orden con el Número de Orden 12345
UPDATE dbo.Ventas
SET EstatusOrden = 'Completada'
WHERE NumeroOrden = 12345;

-- Eliminar la orden con el Número de Orden 12346
DELETE FROM dbo.Ventas
WHERE NumeroOrden = 12346;