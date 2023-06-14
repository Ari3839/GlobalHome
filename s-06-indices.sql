--@Autor(es): Lázaro Martínez A. Ariadna y Santana Sánchez M. Yvette
--@Fecha creación: 07/01/2020
--@Descripción: Creación de índices para mejorar el desempeño y/o verificar duplicidad de valores

--Indices unique
create unique index vivienda_venta_folio_escritura_iuk on vivienda_venta(folio_escritura);
create unique index contrato_renta_folio_iuk on contrato_renta(folio);

--Indices unique compuesto
create unique index servicio_vivienda_vivienda_id_servicio_general_id_iuk on servicio_vivienda(vivienda_id,servicio_general_id);

--Indice unique basados en funciones
create unique index usuario_nombre_usuario_iuk on usuario(upper(nombre_usuario));
create unique index usuario_email_iuk on usuario(lower(email));

--Indices no unique
create index servicio_general_nombre_ix on servicio_general(nombre);
create index pago_vivienda_id_ix on pago(vivienda_id);