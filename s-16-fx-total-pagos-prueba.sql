--@Autor(es): Lázaro Martínez A. Ariadna y Santana Sánchez M. Yvette
--@Fecha creación: 02/02/2020
--@Descripción: Prueba la funcion para calcular el total de los pagos de una vivienda en venta

set serveroutput on
Prompt ===========================================
Prompt Prueba 1.
Prompt ===========================================

declare
  v_total number(20,0);
  v_esperado number(20,0):=250000;

begin
  select fx_total_pagos(26) into v_total from dual;

  dbms_output.put_line('El total de los importes de los pagos
  	para la vivienda con id: 26 es de: '
  	||v_total);
    
  if v_total=v_esperado then
    dbms_output.put_line('Prueba 1. Correcta');
  else
    dbms_output.put_line('Se esperaba el total de: '
    ||v_esperado||' pero se obtuvo:'
    ||v_total);
  end if;
  commit;

  exception
    when others then
      rollback;
      raise;
end;
/

Prompt ===========================================
Prompt Prueba 2.
Prompt ===========================================

declare
  v_total number(20,0);
  v_esperado number(20,0):=831140;

begin
  select fx_total_pagos(21) into v_total from dual;

  dbms_output.put_line('El total de los importes de los pagos
  	para la vivienda con id: 21 es de: '
  	||v_total);
    
  if v_total=v_esperado then
    dbms_output.put_line('Prueba 2. Correcta');
  else
    dbms_output.put_line('Se esperaba el total de: '
    ||v_esperado||' pero se obtuvo:'
    ||v_total);
  end if;
  commit;

  exception
    when others then
      rollback;
      raise;
end;
/

Prompt ===========================================
Prompt Prueba 3.
Prompt ===========================================

declare
  v_total number(20,0);
  v_esperado number(20,0):=813116.03;

begin
  select fx_total_pagos(27) into v_total from dual;

  dbms_output.put_line('El total de los importes de los pagos
  	para la vivienda con id: 27 es de: '
  	||v_total);
    
  if v_total=v_esperado then
    dbms_output.put_line('Prueba 3. Correcta');
  else
    dbms_output.put_line('Se esperaba el total de: '
    ||v_esperado||' pero se obtuvo:'
    ||v_total);
  end if;
  commit;

  exception
    when others then
      rollback;
      raise;
end;
/