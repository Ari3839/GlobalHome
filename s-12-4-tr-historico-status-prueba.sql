--@Autor(es): Lázaro Martínez A. Ariadna y Santana Sánchez M. Yvette
--@Fecha creación: 02/02/2020
--@Descripción: Prueba del trigger para la tabla pago

Prompt ===========================================
Prompt Prueba 1.
Prompt Modificar el status de una vivienda
Prompt ===========================================

set serveroutput on
begin
  update vivienda
  set estatus_vivienda_id=6,
    fecha_estatus=sysdate
  where vivienda_id=1;
  dbms_output.put_line('Prueba 1. Exitosa');
  commit;
  
  exception
	when others then
    rollback;
    raise;
end;
/

Prompt registros insertados:
select * from historico_estatus_vivienda
where estatus_vivienda_id=6
and vivienda_id=1;
