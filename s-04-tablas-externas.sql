--@Autor(es): Lázaro Martínez A. Ariadna y Santana Sánchez M. Yvette
--@Fecha creación: 07/01/2020
--@Descripción: Creación de tablas externas

--Se debe crear el directorio como usuario sys
prompt conectando usuario sys, ingrese contrasenia
connect sys as sysdba

--Se crea el objeto directorio
create or replace directory tmp_dir as '/tmp/bases';
grant read,write on directory tmp_dir to ls_proy_admin;

--Nos conectamos nuevamente a nuestra sesion
connect ls_proy_admin/admin;

--Se crea la tabla que contendrá los datos externos
create table banco(
  banco_id number(10,0) not null,
  nombre varchar2(20) not null,
  pais varchar2(20) not null,
  clabe_id number(10,0) not null
)
organization external(
  type oracle_loader
  default directory tmp_dir
  access parameters(
    records delimited by newline
    badfile tmp_dir: 'banco_bad.log'
    logfile tmp_dir: 'banco.log'
    fields terminated by ','
    lrtrim
    missing field values are null
    (
    banco_id,nombre,pais,clabe_id
    )
  )
  location ('tabla_externa.csv')
)
reject limit unlimited;

--Se realizan los cambios respectivos en el directorio físico
!mkdir -p /tmp/bases
!chmod 777 /tmp/bases
!cp tabla_externa.csv /tmp/bases

col nombre format a10;
col pais format a10;
set linesize window;

select * from banco;
