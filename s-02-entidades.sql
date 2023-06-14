--@Autor(es): Lázaro Martínez A. Ariadna y Santana Sánchez M. Yvette
--@Fecha creación: 06/01/2021
--@Descripción: Creación de las tablas que conforman nuestra base de datos


--1. Tabla usuario
create table usuario(
  usuario_id number(10,0) constraint usuario_pk primary key,
  nombre_usuario varchar2(10) not null,
  email varchar2(40) not null,
  contrasenia varchar2(15) not null constraint usuario_contrasenia_chk check (length(contrasenia)>7 and length(contrasenia)<16),
  nombre_real varchar2(20) not null,
  ap_paterno varchar2(20) not null,
  ap_materno varchar2(20) null
);

--2. Tabla tarjeta de crédito
create table tarjeta_credito(
  usuario_id number(10,0) constraint tarjeta_credito_pk primary key,
  numero number(16,0) not null constraint tarjeta_credito_numero_uk unique,
  mes_expiracion number(2,0) generated always as (to_char(fecha_expiracion,'MM')) virtual not null,
  anio_expiracion number(4,0) generated always as (to_char(fecha_expiracion,'YYYY')) virtual not null, 
  numero_seguridad number(4,0) not null,
  fecha_expiracion date not null,
  constraint tarjeta_credito_usuario_id_fk foreign key(usuario_id) references usuario(usuario_id)
);

--3. Tabla estatus vivienda
create table estatus_vivienda(
  estatus_vivienda_id number(10,0) constraint estatus_vivienda_pk primary key,
  clave varchar2(10) not null,
  descripcion varchar2(40) not null
);

--4. Tabla vivienda
create table vivienda(
  vivienda_id number(10,0) constraint vivienda_pk primary key,
  latitud number(10,5) not null,
  longitud number(15,5) not null, 
  capacidad_max number(3,0) not null,
  direccion varchar2(400) not null,
  descripcion varchar2(2000) not null,
  fecha_estatus date not null,
  se_vende number(1,0) not null,
  se_renta number(1,0) not null,
  para_vacacionar number(1,0) not null,
  estatus_vivienda_id not null constraint vivienda_estatus_vivienda_id_fk references estatus_vivienda(estatus_vivienda_id),
  usuario_id not null constraint vivienda_usuario_id_fk references usuario(usuario_id),
  constraint vivienda_discriminante_chk check ((se_vende=1 and se_renta=0) or (se_vende=0 and se_renta=1) or (se_vende=0 and se_renta=0))
);

--5. Tabla histórico_estátus
create table historico_estatus_vivienda(
  historico_estatus_vivienda_id number(10,0) constraint historico_estatus_vivienda_pk primary key,
  fecha_estatus date default sysdate not null,
  estatus_vivienda_id constraint historico_estatus_vivienda_estatus_vivienda_id_fk references estatus_vivienda(estatus_vivienda_id),
  vivienda_id constraint historico_estatus_vivienda_vivienda_id_fk references vivienda(vivienda_id)
);

--6. Tabla imagen
create table imagen(
  imagen_id number(10,0) not null,
  vivienda_id number(10,0) not null constraint imagen_vivienda_id_fk references vivienda(vivienda_id),
  imagen BLOB not null,
  constraint imagen_imagen_id_vivienda_id_pk primary key(imagen_id,vivienda_id)
);

--7. Tabla servicio general
create table servicio_general(
  servicio_general_id number(10,0) constraint servicio_general_pk primary key,
  nombre varchar2(40) not null,
  descripcion varchar2(40) not null,
  icono BLOB not null
);

--8. Tabla servicio_vivienda
create table servicio_vivienda(
  servicio_vivienda_id number(10,0) constraint servicio_vivienda_pk primary key,
  vivienda_id number(10,0) not null constraint servicio_vivienda_vivienda_id_fk references vivienda(vivienda_id),
  servicio_general_id number(10,0) not null constraint servicio_vivienda_servicio_general_id_fk
  references servicio_general(servicio_general_id)
);

--9. Tabla vivienda en renta
create table vivienda_renta(
  vivienda_id number(10,0) constraint vivienda_renta_pk primary key,
  renta_mensual number(8,2) not null,
  dia_deposito varchar(10) default 'LUNES' not null, 
  constraint vivienda_renta_vivienda_id_fk foreign key(vivienda_id) references vivienda(vivienda_id),
  constraint vivienda_renta_dia_deposito_chk check(dia_deposito in ('LUNES','MARTES','MIERCOLES','JUEVES','VIERNES','SABADO','DOMINGO'))
);

--10. Tabla clabe_vivienda
create table clabe_vivienda(
  clabe_vivienda_id number(10,0) constraint clabe_vivienda_pk primary key,
  clabe varchar2(18) not null constraint clabe_vivienda_clabe_uk unique,
  vivienda_id constraint clabe_vivienda_vivienda_id_fk references vivienda_renta(vivienda_id)
);

--11. Tabla vivienda para vacacionar
create table vivienda_vacacionar(
  vivienda_id number(10,0) not null constraint vivienda_vacacionar_vivienda_id_fk references vivienda(vivienda_id),
  costo_por_dia number(8,2) not null,
  maximo_de_dias number(4,0) not null,
  deposito number(6,2) not null,
  constraint vivienda_vacacionar_pk primary key(vivienda_id)
);

--12. Tabla vivienda para vender
create table vivienda_venta(
  vivienda_id number(10,0) not null constraint vivienda_venta_vivienda_id_fk references vivienda(vivienda_id),
  folio_escritura varchar(18) not null,
  numero_catastral varchar(20) not null constraint vivienda_venta_numero_catastral_uk unique,
  precio_inicial number(10,2) not null,
  archivo_del_avaluo BLOB not null,
  clave_interbancaria varchar2(40) null,
  comision number(6,2) null,
  usuario_id null constraint vivienda_venta_usuario_id_fk references usuario(usuario_id),
  constraint vivienda_venta_pk primary key(vivienda_id)
);

--13. Tabla mensaje
create table mensaje(
  mensaje_id number(10,0) constraint mensaje_pk primary key,
  titulo varchar2(40) not null,
  cuerpo varchar2(500) not null,
  leido number(1,0) not null,
  usuario_id not null constraint mensaje_usuario_id_fk references usuario(usuario_id),
  vivienda_id not null constraint mensaje_vivienda_id_fk references vivienda(vivienda_id),
  respuesta_mensaje_id constraint mensaje_respuesta_mensaje_id_fk references mensaje(mensaje_id),
  constraint mensaje_respuesta_mensaje_id_uk unique(respuesta_mensaje_id)
);

--14. Tabla contrato de renta
create table contrato_renta(
  contrato_renta_id number(10,0) constraint contrato_renta_pk primary key,
  folio varchar2(8) not null,
  fecha_contrato date not null,
  doc_firmas BLOB not null,
  usuario_id not null constraint contrato_renta_usuario_id_fk references usuario(usuario_id),
  vivienda_id not null constraint contrato_renta_vivienda_id_fk references vivienda_renta(vivienda_id)
);

--15. Tabla notificacion vivienda
create table notificacion_vivienda(
  notificacion_vivienda_id number(10,0) constraint notificacion_vivienda_pk primary key,
  numero_celular number(10,0) not null,
  notificacion_enviada number(1,0) not null,
  usuario_id not null constraint notificacion_vivienda_usuario_id_fk references usuario(usuario_id),
  vivienda_id not null constraint notificacion_vivienda_vivienda_id_fk references vivienda_vacacionar(vivienda_id)
);

--16. Tabla alquiler
create table alquiler(
  alquiler_id number(10,0) constraint alquiler_pk primary key,
  folio varchar2(8) not null constraint alquiler_folio_uk unique,
  fecha_inicio date not null,
  fecha_fin date not null,
  periodo_ocupacion number(3,0) generated always as (fecha_fin-fecha_inicio) virtual not null,
  usuario_id not null constraint alquiler_usuario_id_fk references usuario(usuario_id),
  vivienda_id not null constraint alquiler_vivienda_id_fk references vivienda_vacacionar(vivienda_id)
);

--17. Tabla vivienda_calificada
create table vivienda_calificada(
  vivienda_calificada_id number(10,0) constraint vivienda_calificada_pk primary key,
  calificacion number(3,1) not null,
  descripcion varchar2(400) not null,
  fecha date default sysdate not null,
  alquiler_id not null constraint vivienda_calificada_alquiler_id_fk references alquiler(alquiler_id)
);

--18. Tabla pago
create table pago(
  pago_id number(10,0) not null,
  fecha date default sysdate not null,
  importe number(8,2) not null,
  evidencia BLOB not null,
  vivienda_id not null constraint pago_vivienda_id_fk references vivienda_venta(vivienda_id)
);

--19. Auditoria para la aplicacion del trigger
create table auditoria_vivienda(
  auditoria_vivienda_id number(10,0) constraint auditoria_vivienda_pk primary key,
  fecha_evento date not null,
  usuario varchar2(40) not null,
  vivienda_id number(10,0) not null,
  direccion varchar2(400) not null,
  se_vende number(1,0) not null,
  se_renta number(1,0) not null,
  para_vacacionar number(1,0) not null
);