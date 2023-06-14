--@Autor(es): Lázaro Martínez A. Ariadna y Santana Sánchez M. Yvette
--@Fecha creación: 02/02/2020
--@Descripción: Trigger que modifica el status de la vivienda cuando se inserta un registro en alquiler

set serveroutput on
create or replace trigger tr_historico_status
  after update of estatus_vivienda_id,fecha_estatus on vivienda
  for each row

declare
v_registros number(2,0);

begin
  insert into historico_estatus_vivienda(historico_estatus_vivienda_id,
  	fecha_estatus,estatus_vivienda_id,vivienda_id)
  values(seq_hist_status_viv.nextval,:new.fecha_estatus,:new.estatus_vivienda_id,
  	:new.vivienda_id);

  dbms_output.put_line('Insertado en historico: vivienda_id: '||:new.vivienda_id
  	||' fecha: '||:new.fecha_estatus
    ||' estatus: '||:new.estatus_vivienda_id);
    
  select count(*) into v_registros
  from historico_estatus_vivienda
  where estatus_vivienda_id=:new.estatus_vivienda_id
  and fecha_estatus=:new.fecha_estatus
  and vivienda_id=:new.vivienda_id;
  
  if v_registros>0 then
    dbms_output.put_line('Registro insertado correctamente');
  else
    raise_application_error(-20001,'No se insertó correctamente el registro en el historico');
  end if;
end;
/
show errors;