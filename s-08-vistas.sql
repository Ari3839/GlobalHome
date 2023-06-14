--@Autor(es): Lázaro Martínez A. Ariadna y Santana Sánchez M. Yvette
--@Fecha creación: 07/01/2020
--@Descripción: Creación de vistas para ocultar complejidad o proteger accesos

create or replace view viv_renta(
  vivienda_id,latitud,longitud,capacidad_max,direccion,descripcion,fecha_estatus,se_vende,se_renta,para_vacacionar,estatus_vivienda_id,
  usuario_id, renta_mensual, dia_deposito
) as select v.vivienda_id,latitud,longitud,capacidad_max,direccion,descripcion,fecha_estatus,se_vende,se_renta,para_vacacionar,
estatus_vivienda_id,usuario_id,renta_mensual,dia_deposito
from vivienda v, vivienda_renta vr
where v.vivienda_id=vr.vivienda_id;

create or replace view viv_vacacionar(
  vivienda_id,latitud,longitud,capacidad_max,direccion,descripcion,fecha_estatus,se_vende,se_renta,para_vacacionar,estatus_vivienda_id,
  usuario_id,costo_por_dia,maximo_de_dias,deposito
) as select v.vivienda_id,latitud,longitud,capacidad_max,direccion,descripcion,fecha_estatus,se_vende,se_renta,para_vacacionar,
estatus_vivienda_id,usuario_id,costo_por_dia,maximo_de_dias,deposito
from vivienda v, vivienda_vacacionar vv
where v.vivienda_id=vv.vivienda_id;

create or replace view viv_venta(
  vivienda_id,latitud,longitud,capacidad_max,direccion,descripcion,fecha_estatus,se_vende,se_renta,para_vacacionar,estatus_vivienda_id,
  usuario_id,folio_escritura,numero_catastral,precio_inicial
) as select v.vivienda_id,latitud,longitud,capacidad_max,direccion,descripcion,fecha_estatus,se_vende,se_renta,para_vacacionar,
estatus_vivienda_id,v.usuario_id,folio_escritura,numero_catastral,precio_inicial
from vivienda v, vivienda_venta ve
where v.vivienda_id=ve.vivienda_id;

create or replace view usuar(
  nombre_usuario,email,nombre_real,ap_paterno
) as select nombre_usuario,email,nombre_real,ap_paterno
from usuario;