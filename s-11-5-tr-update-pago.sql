--@Autor(es): Lázaro Martínez A. Ariadna y Santana Sánchez M. Yvette
--@Fecha creación: 02/02/2020
--@Descripción: Trigger que detecta la modificacion de importes de pagos.

set serveroutput on

create or replace trigger update_pago
  before update of importe on pago
  for each row

declare

begin
  if :new.importe>:old.importe then
    raise_application_error(-20001,'No puede modificar el importe de 
    	un pago a una cantidad mayor porque la evidencia podría no coincidir');
  elsif :new.importe=:old.importe then
    raise_application_error(-20002,'El precio es el mismo, no requiere
    	hacer ninguna actualizacion');
  else
    dbms_output.put_line('El nuevo importe es correcto, se 
    	procederá a la actualizacion');
  end if;
end;
/
show errors;
