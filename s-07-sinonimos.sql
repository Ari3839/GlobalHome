--@Autor(es): Lázaro Martínez A. Ariadna y Santana Sánchez M. Yvette
--@Fecha creación: 07/01/2020
--@Descripción: Creación de sinónimos publicos y privados

--sinonimos públicos
create or replace public synonym viv_ren for vivienda_renta;
create or replace public synonym viv_vac for vivienda_vacarionar;
create or replace public synonym viv_ven for vivienda_venta;

--Otorgando permisos al usuario invitado
grant select on usuario to ls_proy_invitado;
grant select on contrato_renta to ls_proy_invitado;
grant select on vivienda_calificada to ls_proy_invitado;

--Conectando como invitado para crear los sinónimos privados
prompt Conectando como invitado para crear los sinónimos privados
connect ls_proy_invitado/invitado;
create or replace synonym usuar for ls_proy_admin.usuario;
create or replace synonym contrato for ls_proy_admin.contrado_renta;
create or replace synonym viv_calif for ls_proy_admin.vivienda_calificada;

--Conectando como admin nuevamente
prompt Conectando admin
connect ls_proy_admin/admin;

--cursor
declare
  cursor cur_tablas is
  select table_name
  from user_tables;
  
  v_sql varchar2(200);

begin
  for t in cur_tablas loop
    v_sql:='create or replace synonym ls_'
    ||t.table_name
    ||' for '
    ||t.table_name;
    execute immediate v_sql;
  end loop;
end;
/

col synonym_name format a30;
Prompt sinonimos creados
select synonym_name
from user_synonyms
where synonym_name like 'LS_%';