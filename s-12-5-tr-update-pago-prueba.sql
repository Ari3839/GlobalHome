--@Autor(es): Lázaro Martínez A. Ariadna y Santana Sánchez M. Yvette
--@Fecha creación: 02/02/2020
--@Descripción: Prueba del trigger que detecta la modificacion de importes de pagos.

set serveroutput on

Prompt ===========================================
Prompt Prueba 1.
Prompt Aumentar el importe de un pago
Prompt ===========================================

declare
  v_codigo number;
  v_mensaje varchar2(1000);

begin
  update pago set importe=950000.00
  	where fecha=to_date('06/29/2019','mm/dd/yyyy')
  	and importe=942790.83
  	and vivienda_id=23;

  exception
	when others then
    v_codigo := sqlcode;
    v_mensaje := sqlerrm;
    if v_codigo=-20001 then
      dbms_output.put_line('Prueba 1. exitosa, se genero el error correspondiente');
      rollback;
    else
      dbms_output.put_line('Ocurrio un error');
      rollback;
      raise;
    end if;
end;
/

Prompt ===========================================
Prompt Prueba 2.
Prompt Actualizar el mismo valor de importe
Prompt ===========================================

declare
  v_codigo number;
  v_mensaje varchar2(1000);

begin
  update pago set importe=942790.83
  	where fecha=to_date('06/29/2019','mm/dd/yyyy')
  	and importe=942790.83
  	and vivienda_id=23;

  exception
	when others then
    v_codigo := sqlcode;
    v_mensaje := sqlerrm;
    if v_codigo=-20002 then
      dbms_output.put_line('Prueba 2. exitosa, se genero el error correspondiente');
      rollback;
    else
      dbms_output.put_line('Ocurrio un error');
      rollback;
      raise;
    end if;
end;
/


Prompt ===========================================
Prompt Prueba 3.
Prompt Disminuir el valor de un importe
Prompt ===========================================

declare
  v_codigo number;
  v_mensaje varchar2(1000);

begin
  update pago set importe=342790.83
  	where fecha=to_date('06/29/2019','mm/dd/yyyy')
  	and importe=942790.83
  	and vivienda_id=23;
  	dbms_output.put_line('Prueba 3. exitosa');
    rollback;

  exception
	when others then
      rollback;
      raise;
end;
/
