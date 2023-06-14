--@Autor(es): Lázaro Martínez A. Ariadna y Santana Sánchez M. Yvette
--@Fecha creación: 03/02/2021
--@Descripción: Creación de usuarios y roles

Prompt conectando como usuario sys, proporcione la contraseña
connect sys as sysdba

Prompt ===========================================
Prompt creacion de usuarios
start s-01-usuarios.sql

Prompt conectando como usuario admin
connect ls_proy_admin/admin;

Prompt ===========================================
Prompt creacion de entidades
start s-02-entidades.sql

Prompt ===========================================
Prompt creacion de tablas externas
--Aqui se usa el archivo tabla_externa.csv
start s-04-tablas-externas.sql

Prompt ===========================================
Prompt creacion de secuencias
start s-05-sequencias.sql

Prompt ===========================================
Prompt creacion de indices
start s-06-indices.sql

Prompt ===========================================
Prompt creacion de sinonimos
start s-07-sinonimos.sql

Prompt ===========================================
Prompt creacion de tablas temporales
start s-03-tablas-temporales.sql

Prompt ===========================================
Prompt insercion de datos
--Dentro de este script se llama a los archivos 
--y s-13-p-agrega-vivienda.sql y s-14-p-agrega-vivienda-prueba.sql
start s-09-carga-inicial.sql

Prompt ===========================================
Prompt creacion de vistas
start s-08-vistas.sql

Prompt ===========================================
Prompt Consultas
start s-10-consultas.sql

--Trigger 1 insert
Prompt ===========================================
Prompt Trigger para inserciones en contrato_renta
start s-11-1-tr-status-contrato-renta.sql
start s-12-1-tr-status-contrato-renta-prueba.sql

--Trigger 2 insert
Prompt ===========================================
Prompt Trigger para inserciones en alquiler
start s-11-2-tr-status-alquiler.sql
start s-12-2-tr-status-alquiler-prueba.sql

--Trigger 3 insert
Prompt ===========================================
Prompt Trigger para inserciones en pago
start s-11-3-tr-status-venta.sql
start s-12-3-tr-status-venta-prueba.sql

--Trigger 4 update*
Prompt ===========================================
Prompt Trigger para actualizaciones en el estatus de vivienda
start s-11-4-tr-historico-status.sql
start s-12-4-tr-historico-status-prueba.sql

--Trigger 5 update
Prompt ===========================================
Prompt Trigger para actualizaciones en la tabla pago
start s-11-5-tr-update-pago.sql
start s-12-5-tr-update-pago-prueba.sql

--Compound trigger delete
Prompt ===========================================
Prompt Trigger para eliminar en la tabla vivienda
start s-11-compound-tr-delete-vivienda.sql
start s-12-compound-tr-delete-vivienda-prueba.sql

--Procedimiento 1:
--Los script 13 y 14 se usan para la insercion en el script 9

--Funcion 1
Prompt ===========================================
Prompt Funcion para generar datos formato csv
start s-15-fx-exporta-datos-usr-csv.sql
start s-16-fx-exporta-datos-usr-csv-prueba.sql

--Funcion 2
Prompt ===========================================
Prompt Funcion para calcular una reduccion en el precio de una vivienda
start s-15-fx-precio-vivienda.sql
start s-16-fx-precio-vivienda-prueba.sql

--Funcion 3
Prompt ===========================================
Prompt Funcion para calcular el importe total de los pagos de una vivienda
start s-15-fx-total-pagos.sql
start s-16-fx-total-pagos-prueba.sql

--Procedimiento 2/datos lob
Prompt ===========================================
Prompt Procedimiento para crear registros en imagen
start s-17-lob-fotos-vivienda.sql
start s-18-lob-fotos-vivienda-prueba.sql

Prompt ===========================================
Prompt Procedimiento para actualizar iconos de los servicios
start s-17-lob-iconos-servicios.sql
start s-18-lob-iconos-servicios-prueba.sql

commit;
disconnect;