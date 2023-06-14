--@Autor(es): Lázaro Martínez A. Ariadna y Santana Sánchez M. Yvette
--@Fecha creación: 03/02/2020
--@Descripción: Consultas de datos

set linesize window;


--La información de los clientes y la de sus tarjetas, si es que tienen 
--Outer join
Prompt Consulta 1
col nombre_usuario format a10;
col nombre_real format a20;
col ap_paterno format a20;
col ap_materno format a20;
select u.nombre_usuario,u.nombre_real,u.ap_paterno,
  u.ap_materno,t.numero,t.fecha_expiracion
from usuario u left join tarjeta_credito t
on (u.usuario_id=t.usuario_id)
where t.mes_expiracion=07
intersect
select u.nombre_usuario,u.nombre_real,u.ap_paterno,
  u.ap_materno,t.numero,t.fecha_expiracion
from usuario u left join tarjeta_credito t
on (u.usuario_id=t.usuario_id)
where t.anio_expiracion<=2027;

--El número de pagos por viviendas, solo las que tengan pagos registrados
--sinonimo viv_ven, funciones agreg, natural join
col numero_catastral format a20;
Prompt Consulta 2
select vv.numero_catastral,vv.usuario_id,q1.num_pagos
from (
  select vivienda_id,count(*) as num_pagos
  from pago
  group by vivienda_id) q1
natural join viv_ven vv;

--comparacion de los costos por dia con el maximo existente
--Vista viv_vacacionar, funciones.
Prompt Consulta 3
select vv.vivienda_id,vv.latitud,vv.longitud,
  vv.deposito,vv.costo_por_dia,
  (select max(costo_por_dia)
  from viv_vacacionar vv) as max_costo_por_dia
from viv_vacacionar vv;

--Tabla ext, inner join
Prompt Consulta 4
col nombre format a20;
col clabe format a18;
select b.banco_id,b.nombre,c.clabe,c.vivienda_id
from banco b, clabe_vivienda c
where b.clabe_id=c.clabe_vivienda_id;

--algebra relacional:
Prompt Consulta 5
select vivienda_id,latitud,longitud,capacidad_max 
from vivienda
minus
(select vivienda_id,latitud,longitud,capacidad_max 
  from vivienda
  where latitud>50
union
select vivienda_id,latitud,longitud,capacidad_max
  from vivienda
  where longitud>50);


--Usuarios que son dueños de mas de una vivienda
--inner join, having
col nombre_usuario format a10;
col nombre_real format a20;
col ap_paterno format a20;
col ap_materno format a20;
col email format a30;
Prompt Consulta 6
select us.usuario_id, us.nombre_usuario,
  us.ap_paterno,us.ap_materno,us.nombre_real, 
  us.email,count(*) as num_viviendas  
from usuario us join vivienda v
on (us.usuario_id=v.usuario_id)
group by us.usuario_id, us.nombre_usuario,
  us.ap_paterno,us.ap_materno,us.nombre_real, 
  us.email
having count(*)>1;

--Tablas temporales
Prompt Consulta 7
select nombre_usuario,email
from usuario_respaldo
where email like '%.com';