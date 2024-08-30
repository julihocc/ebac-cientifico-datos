USE AdventureWorks2022;
GO

INSERT INTO dbo.Ventas (NumeroOrden, FechaOrden, FechaEntrega, EstatusOrden, NombreCliente, 
                        DomicilioEntrega, CompraOnline, MetodoPago, MetodoEnvio, Subtotal, 
                        Impuestos, CostoEnvio, Total, Moneda, Observaciones)
VALUES
(12347, '2022-09-01 10:00:00', '2022-09-10', 'Pendiente', 'Cliente 1', 'Direccion 1', 'S', 'Tarjeta de Crédito', 'Express', 10000, 800, 200, 11000, 'MXN', 'Entrega por la tarde'),
(12348, '2022-09-02 11:00:00', '2022-09-11', 'En Proceso', 'Cliente 2', 'Direccion 2', 'N', 'Efectivo', 'Terrestre', 12000, 960, 240, 13200, 'MXN', 'Llamar antes de entregar'),
(12349, '2022-09-03 12:00:00', '2022-09-12', 'Pendiente', 'Cliente 3', 'Direccion 3', 'S', 'Tarjeta de Débito', 'Express', 15000, 1200, 300, 16500, 'MXN', 'Sin observaciones'),
(12350, '2022-09-04 09:30:00', '2022-09-13', 'Completada', 'Cliente 4', 'Direccion 4', 'N', 'Tarjeta de Crédito', 'Express', 11000, 880, 220, 12100, 'MXN', 'Entregar en recepción'),
(12351, '2022-09-05 08:45:00', '2022-09-14', 'Cancelada', 'Cliente 5', 'Direccion 5', 'S', 'Efectivo', 'Terrestre', 9500, 760, 190, 10450, 'MXN', 'Cancelada por el cliente'),
(12352, '2022-09-06 10:15:00', '2022-09-15', 'Pendiente', 'Cliente 6', 'Direccion 6', 'N', 'Tarjeta de Débito', 'Terrestre', 13000, 1040, 260, 14300, 'MXN', 'Confirmar dirección'),
(12353, '2022-09-07 11:20:00', '2022-09-16', 'En Proceso', 'Cliente 7', 'Direccion 7', 'S', 'Tarjeta de Crédito', 'Express', 14000, 1120, 280, 15400, 'MXN', 'Prioridad alta'),
(12354, '2022-09-08 14:00:00', '2022-09-17', 'Pendiente', 'Cliente 8', 'Direccion 8', 'N', 'Efectivo', 'Terrestre', 12500, 1000, 250, 13750, 'MXN', 'No entregar en fin de semana'),
(12355, '2022-09-09 16:30:00', '2022-09-18', 'Completada', 'Cliente 9', 'Direccion 9', 'S', 'Tarjeta de Débito', 'Express', 10500, 840, 210, 11550, 'MXN', 'Requiere firma al entregar'),
(12356, '2022-09-10 17:45:00', '2022-09-19', 'Cancelada', 'Cliente 10', 'Direccion 10', 'N', 'Efectivo', 'Terrestre', 8000, 640, 160, 8800, 'MXN', 'Cancelada por logística'),
(12357, '2022-09-11 09:00:00', '2022-09-20', 'Pendiente', 'Cliente 11', 'Direccion 11', 'S', 'Tarjeta de Crédito', 'Express', 11500, 920, 230, 12650, 'MXN', 'Entrega urgente solicitada'),
(12358, '2022-09-12 12:30:00', '2022-09-21', 'En Proceso', 'Cliente 12', 'Direccion 12', 'N', 'Tarjeta de Débito', 'Terrestre', 13500, 1080, 270, 14850, 'MXN', 'Verificar teléfono de contacto'),
(12359, '2022-09-13 15:00:00', '2022-09-22', 'Pendiente', 'Cliente 13', 'Direccion 13', 'S', 'Efectivo', 'Express', 14500, 1160, 290, 15950, 'MXN', 'Entregar solo en horario comercial'),
(12360, '2022-09-14 18:15:00', '2022-09-23', 'Completada', 'Cliente 14', 'Direccion 14', 'N', 'Tarjeta de Crédito', 'Terrestre', 16000, 1280, 320, 17600, 'MXN', 'No dejar en puerta'),
(12361, '2022-09-15 19:30:00', '2022-09-24', 'Cancelada', 'Cliente 15', 'Direccion 15', 'S', 'Tarjeta de Débito', 'Express', 9000, 720, 180, 9900, 'MXN', 'Cliente no disponible'),
(12362, '2022-09-16 08:00:00', '2022-09-25', 'Pendiente', 'Cliente 16', 'Direccion 16', 'N', 'Efectivo', 'Terrestre', 17000, 1360, 340, 18700, 'MXN', 'Confirmar antes de enviar'),
(12363, '2022-09-17 10:30:00', '2022-09-26', 'En Proceso', 'Cliente 17', 'Direccion 17', 'S', 'Tarjeta de Crédito', 'Express', 18000, 1440, 360, 19800, 'MXN', 'Cliente solicita embalaje discreto'),
(12364, '2022-09-18 13:45:00', '2022-09-27', 'Pendiente', 'Cliente 18', 'Direccion 18', 'N', 'Tarjeta de Débito', 'Terrestre', 19000, 1520, 380, 20900, 'MXN', 'Enviar a dirección alternativa'),
(12365, '2022-09-19 14:30:00', '2022-09-28', 'Completada', 'Cliente 19', 'Direccion 19', 'S', 'Efectivo', 'Express', 20000, 1600, 400, 22000, 'MXN', 'No entregar a menores'),
(12366, '2022-09-20 15:00:00', '2022-09-29', 'Cancelada', 'Cliente 20', 'Direccion 20', 'N', 'Tarjeta de Crédito', 'Terrestre', 21000, 1680, 420, 23100, 'MXN', 'Reprogramar entrega');
