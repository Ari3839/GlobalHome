--@Autor(es): Lázaro Martínez A. Ariadna y Santana Sánchez M. Yvette
--@Fecha creación: 02/02/2020
--@Descripción: Trigger que modifica el status de la vivienda cuando se inserta un registro en contrato_renta

set serveroutput on

create or replace trigger tr_status_contrato_renta
  after insert on contrato_renta
  for each row

declare
v_status_id number(10,0);

begin
	select estatus_vivienda_id
	into v_status_id
	from vivienda
	where vivienda_id=:new.vivienda_id;

	if v_status_id=2 then
	  dbms_output.put_line('No es necesario actualizar el status
	    de la vivienda con id: '||:new.vivienda_id);
	else
		update vivienda 
		  set estatus_vivienda_id=2,
		  	fecha_estatus=sysdate
		where vivienda_id=:new.vivienda_id;
		dbms_output.put_line('Status de la vivienda con id: '
		  ||:new.vivienda_id
		  ||' correctamente modificado a EN RENTA');
	end if;
end;
/
show errors;