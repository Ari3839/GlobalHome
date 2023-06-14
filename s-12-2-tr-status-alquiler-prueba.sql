--@Autor(es): Lázaro Martínez A. Ariadna y Santana Sánchez M. Yvette
--@Fecha creación: 02/02/2020
--@Descripción: Prueba del trigger para la tabla alquiler

set serveroutput on


Prompt ===========================================
Prompt Prueba 1.
Prompt Alquilar una vivienda sin cambiar el status
Prompt ===========================================

declare 
  v_status_id number(1,0);

begin
  insert into alquiler(alquiler_id,folio,fecha_inicio,fecha_fin,
    usuario_id,vivienda_id)
  values(seq_alquiler.nextval,'11122233',sysdate,sysdate+1,25,5);

  select estatus_vivienda_id
  into v_status_id
  from vivienda
  where vivienda_id=5;
  if v_status_id=3 then
    dbms_output.put_line('Prueba 1. exitosa');
  else
    dbms_output.put_line('Ocurrió un error');
  end if;

  rollback;
  
  exception
  when others then
    rollback;
      raise;
end;
/


Prompt ===========================================
Prompt Prueba 2.
Prompt Contratar una vivienda cambiando el status
Prompt ===========================================

begin
  update vivienda
  set estatus_vivienda_id=2
  where vivienda_id=23;
  insert into alquiler(alquiler_id,folio,fecha_inicio,fecha_fin,
    usuario_id,vivienda_id)
  values(seq_alquiler.nextval,'11122233',sysdate,sysdate+1,25,35);
  dbms_output.put_line('Prueba 2. exitosa');

  rollback;
  
  exception
  when others then
    rollback;
      raise;
end;
/
Prompt ===========================================
Prompt Prueba 3.
Prompt Alquilar una vivienda sin registrar tarjeta
Prompt ===========================================

declare
  v_codigo number;
	v_mensaje varchar2(1000);
  
begin
  insert into alquiler(alquiler_id,folio,fecha_inicio,fecha_fin,
    usuario_id,vivienda_id)
  values(seq_alquiler.nextval,'11122233',sysdate,sysdate+1,35,3);
  rollback;

  exception
  when others then
    v_codigo := sqlcode;
    v_mensaje := sqlerrm;
    if v_codigo=-20000 then
      dbms_output.put_line('Prueba 3. exitosa, el error es el correcto');
    else
      dbms_output.put_line('Ocurrio un error');
      rollback;
      raise;
    end if;
end;
/