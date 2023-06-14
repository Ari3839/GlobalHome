--@Autor(es): Lázaro Martínez A. Ariadna y Santana Sánchez M. Yvette
--@Fecha creación: 07/01/2021
--@Descripción: Creación de tablas temporales

--Se usará una tabla temporal con informacion de usuarios que se juntará despues
create global temporary table usuario_respaldo(
  usuario_id number(10,0) constraint tarjeta_cliente_pk primary key,
  nombre_usuario varchar2(10) not null constraint tarjeta_cliente_nombre_usuario_uk unique,
  email varchar2(40) not null constraint tarjeta_cliente_email_uk unique,
  contrasenia varchar2(15) not null constraint tarjeta_cliente_contrasenia_chk check (length(contrasenia)>7 and length(contrasenia)<16),
  nombre_real varchar2(20) not null,
  ap_paterno varchar2(20) not null,
  ap_materno varchar2(20) not null
) on commit preserve rows;