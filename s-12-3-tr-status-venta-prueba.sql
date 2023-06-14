--@Autor(es): Lázaro Martínez A. Ariadna y Santa Sánchez M. Yvette
--@Fecha creación: 02/02/2020
--@Descripción: Prueba del trigger para la tabla pago

set serveroutput on

Prompt ===========================================
Prompt Prueba 1.
Prompt Pagar una vivienda sin cambiar el status
Prompt ===========================================

declare
  v_status_id number(1,0);

begin
  insert into pago(pago_id,fecha,importe,evidencia,vivienda_id)
  values(seq_pago.nextval,sysdate,10000.99,empty_blob(),28);

  select estatus_vivienda_id
  into v_status_id
  from vivienda
  where vivienda_id=28;
  if v_status_id=4 then
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
Prompt Pagar una vivienda y actualizar el status
Prompt ===========================================

begin
  update vivienda
  set estatus_vivienda_id=2
  where vivienda_id=21;
  insert into pago(pago_id,fecha,importe,evidencia,vivienda_id)
  values(seq_pago.nextval,sysdate,10000.99,empty_blob(),21);
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
Prompt Pagar una vivienda sin actualizar al usuario que compra
Prompt ===========================================

declare
  v_codigo number;
	v_mensaje varchar2(1000);
  
begin
  insert into pago(pago_id,fecha,importe,evidencia,vivienda_id)
  values(seq_pago.nextval,sysdate,10000.99,empty_blob(),22);
  
  exception
  when others then
    v_codigo := sqlcode;
    v_mensaje := sqlerrm;
    if v_codigo=-20001 then
      dbms_output.put_line('Prueba 3. exitosa, el error es el esperado');
      rollback;
    else
      dbms_output.put_line('Ocurrio un error');
      rollback;
      raise;
    end if;
end;
/