--@Autor(es): Lázaro Martínez A. Ariadna y Santana Sánchez M. Yvette
--@Fecha creación: 02/02/2020
--@Descripción: Prueba del trigger que registra las eliminaciones de viviendas

set serveroutput on

Prompt ===========================================
Prompt Prueba 1.
Prompt ===========================================

declare
  v_viv_id number;

begin
  for i in 1 .. 20 loop
    insert into vivienda(vivienda_id,latitud,longitud,capacidad_max,direccion,descripcion,fecha_estatus,
      se_vende,se_renta,para_vacacionar,estatus_vivienda_id,usuario_id)
    values(seq_viv.nextval,11.11,-12.12,50,'122 Gotham, Black Alley','descripcion generica',sysdate,
      1,0,0,1,10);
  end loop;
  
  delete vivienda
  	where latitud=11.11
    and longitud=-12.12
    and capacidad_max=50
    and descripcion='descripcion generica';
  
  dbms_output.put_line('Prueba 1. exitosa');
  commit;

  exception
	when others then
      rollback;
      raise;
end;
/

set linesize window;
col usuario format a10;

select auditoria_vivienda_id,fecha_evento,usuario
from auditoria_vivienda
where fecha_evento=sysdate
and direccion='122 Gotham, Black Alley';