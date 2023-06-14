--@Autor(es): Lázaro Martínez A. Ariadna y Santana Sánchez M. Yvette
--@Fecha creación: 02/02/2020
--@Descripción: Prueba del trigger para la tabla contrato-renta

set serveroutput on


Prompt ===========================================
Prompt Prueba 1.
Prompt Contratar una vivienda sin cambiar el status
Prompt ===========================================

declare 
v_status_id number;
begin
  insert into contrato_renta(contrato_renta_id,folio,fecha_contrato,
    doc_firmas,usuario_id,vivienda_id)
  values(seq_contrato.nextval,'12345678',sysdate,empty_blob(),12,12);

  select estatus_vivienda_id
  into v_status_id
  from vivienda
  where vivienda_id=12;
  if v_status_id=2 then
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
  where vivienda_id=13;
  insert into contrato_renta(contrato_renta_id,folio,fecha_contrato,
    doc_firmas,usuario_id,vivienda_id)
  values(seq_contrato.nextval,'12345678',sysdate,empty_blob(),12,13);
  dbms_output.put_line('Prueba 2. exitosa');
  rollback;
  
  exception
  when others then
    rollback;
      raise;
end;
/
