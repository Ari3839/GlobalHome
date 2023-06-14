--@Autor(es): Lázaro Martínez A. Ariadna y Santana Sánchez M. Yvette
--@Fecha creación: 02/02/2020
--@Descripción: Trigger que modifica el status de la vivienda cuando se inserta un registro en alquiler

set serveroutput on

create or replace trigger tr_status_alquiler
  after insert on alquiler
  for each row

declare
v_num_tarjetas number(2,0);
v_status_id number(10,0);

begin
	select estatus_vivienda_id
  into v_status_id
	from vivienda
	where vivienda_id=:new.vivienda_id;

  select count(t.numero) into v_num_tarjetas
  from tarjeta_credito t right join usuario u
  on (t.usuario_id=u.usuario_id)
  where u.usuario_id=:new.usuario_id
  group by u.usuario_id;

	if(v_num_tarjetas=0) then
    raise_application_error(-20000,'El usuario con id:'
      ||:new.usuario_id
      ||' no puede alquilar la vivienda porque no ha registrado
      una tarjeta de credito');
  else
    if v_status_id=3 then
      dbms_output.put_line('No es necesario actualizar el status
        de la vivienda con id: '||:new.vivienda_id);
    else
      update vivienda 
      set estatus_vivienda_id=3,
        fecha_estatus=sysdate
      where vivienda_id=:new.vivienda_id;
      dbms_output.put_line('Status de la vivienda con id: '
      	||:new.vivienda_id
      	||' correctamente modificado a ALQUILADA');
    end if;
  end if;
  
end;
/
show errors;