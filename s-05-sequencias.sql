--@Autor(es): Lázaro Martínez A. Ariadna y Santana Sánchez M. Yvette
--@Fecha creación: 07/01/2020
--@Descripción: Creación de las secuencias necesarias para insertar datos en las tablas de la BD

Prompt conectando usuario admin
Prompt conectando como usuario admin
connect ls_proy_admin/admin;

create sequence seq_usr
  start with 10
  increment by 1
  nomaxvalue
  nominvalue
  nocycle
  cache 15;
  
create sequence seq_viv
  start with 1
  increment by 1
  nomaxvalue
  nominvalue
  nocycle;
  
create sequence seq_hist_status_viv
  start with 1
  increment by 1
  nomaxvalue
  nominvalue
  nocycle
  cache 10;
  
create sequence seq_clabe
  start with 2
  increment by 1
  nomaxvalue
  nominvalue
  nocycle;

create sequence seq_serv
  start with 1
  increment by 1
  nomaxvalue
  nominvalue
  nocycle;
  
create sequence seq_msj
  start with 1
  increment by 1
  nomaxvalue
  nominvalue
  nocycle
  cache 20;

create sequence seq_contrato
  start with 10
  increment by 2
  nomaxvalue
  nominvalue
  nocycle;

create sequence seq_notif
  start with 1000
  increment by 10
  nomaxvalue
  nominvalue
  nocycle
  cache 15;

create sequence seq_calif
  start with 1
  increment by 1
  nomaxvalue
  nominvalue
  nocycle;

create sequence seq_alquiler
  start with 1
  increment by 1
  nomaxvalue
  nominvalue
  nocycle
  cache 15;
  
create sequence seq_pago
  start with 1
  increment by 1
  nomaxvalue
  nominvalue
  nocycle
  cache 15;

create sequence seq_audit_viv
  start with 100
  increment by 5
  nomaxvalue
  nominvalue
  nocycle;