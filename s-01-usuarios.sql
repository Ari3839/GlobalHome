--@Autor(es): Lázaro Martínez A. Ariadna y Santana Sánchez M. Yvette
--@Fecha creación: 06/01/2021
--@Descripción: Creación de usuarios y roles

--Se debe conectar como usuario sys para crear los usuarios y roles

set serveroutput on
declare
  v_count number(1,0);

begin
  select count(*) into v_count
  from dba_users
  where username='LS_PROY_ADMIN';

  if v_count>0 then
    execute immediate 'drop user LS_PROY_ADMIN cascade';
    dbms_output.put_line('Usuario LS_PROY_ADMIN eliminado');
  else
    dbms_output.put_line('El usuario LS_PROY_ADMIN
      no existe, no requiere eliminarse');
  end if;
end;
/

declare
  v_count number(1,0);

begin
  select count(*) into v_count
  from dba_users
  where username='LS_PROY_INVITADO';

  if v_count>0 then
    execute immediate 'drop user LS_PROY_INVITADO cascade';
    dbms_output.put_line('Usuario LS_PROY_INVITADO eliminado');
  else
    dbms_output.put_line('El usuario LS_PROY_INVITADO
      no existe, no requiere eliminarse');
  end if;
end;
/

declare
  v_count number(1,0);

begin
  select count(*) into v_count
  from dba_roles
  where role='ROL_ADMIN';

  if v_count>0 then
    execute immediate 'drop role ROL_ADMIN';
    dbms_output.put_line('Rol ROL_ADMIN eliminado');
  else
    dbms_output.put_line('El rol ROL_ADMIN
      no existe, no requiere eliminarse');
  end if;
end;
/

declare
  v_count number(1,0);

begin
  select count(*) into v_count
  from dba_roles
  where role='ROL_INVITADO';

  if v_count>0 then
    execute immediate 'drop role ROL_INVITADO';
    dbms_output.put_line('Rol ROL_INVITADO eliminado');
  else
    dbms_output.put_line('El rol ROL_INVITADO
      no existe, no requiere eliminarse');
  end if;
end;
/

--Creación de usuarios
create user ls_proy_invitado identified by invitado 
  quota unlimited on users;
create user ls_proy_admin identified by admin 
  quota unlimited on users;
--Creación de roles
create role rol_admin;
create role rol_invitado;
--El usuario invitado debe crear posteriormente un sinónimo privado, ¿se le asigna de una vez al rol o hasta que se cree el sinónimo?
grant create session, create synonym to rol_invitado;
grant create session, create table, create view, 
  create public synonym, create synonym, create procedure, 
  create trigger, create sequence,create type to rol_admin;
--Asignando roles a los usuarios
grant rol_admin to ls_proy_admin;
grant rol_invitado to ls_proy_invitado;
