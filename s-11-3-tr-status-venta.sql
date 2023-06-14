--@Autor(es): Lázaro Martínez A. Ariadna y Santana Sánchez M. Yvette
--@Fecha creación: 02/02/2020
--@Descripción: Trigger que modifica el status de la vivienda cuando se inserta un registro en contrato_renta

set serveroutput on

create or replace trigger tr_status_venta
  after insert on pago
  for each row

declare
  v_usuario_id number(10,0);
  v_status_id number(10,0);

begin
	select estatus_vivienda_id 
	into v_status_id
	from vivienda
	where vivienda_id=:new.vivienda_id;

	select usuario_id into v_usuario_id
	from vivienda_venta
	where vivienda_id=:new.vivienda_id;


  if v_usuario_id is not null then
    if v_status_id=4 or v_status_id=5 then
      dbms_output.put_line('No es necesario actualizar el status
        de la vivienda con id: '||:new.vivienda_id);
    else 
      update vivienda 
        set estatus_vivienda_id=4,
          fecha_estatus=sysdate
        where vivienda_id=:new.vivienda_id;
      dbms_output.put_line('Status de la vivienda con id: '
        ||:new.vivienda_id
        ||' correctamente modificado a EN VENTA');
    end if;
  else
    raise_application_error(-20001,'No se puede insertar un pago si no se ha registrado 
      al usuario que compro la vivienda');
  end if;
end;
/
show errors;