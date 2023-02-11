SELECT impresiones.nro_orden as Orden, clientes.nombre as Cliente, impresiones.tipo_trabajo as Tipo, impresiones.fecha_entrega as Fecha, impresiones.hora_entrega as Hora
FROM clientes
INNER JOIN impresiones
ON clientes.id = impresiones.id_cliente
WHERE impresiones.estado = 'pendiente'
ORDER BY impresiones.fecha_entrega DESC;