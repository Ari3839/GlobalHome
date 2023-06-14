--@Autor(es): Lázaro Martínez A. Ariadna y Santana Sánchez M. Yvette
--@Fecha creación: 02/02/2020
--@Descripción: Prueba la funcion para disminuir en 5% el precio inicial de una vivienda

set serveroutput on

Prompt ===========================================
Prompt Prueba 1.
Prompt ===========================================

declare
  v_nuevo_precio number(10,2);
  v_precio_esperado number(10,2):=475000;

begin
  select fx_precio_vivienda(25,0.05) into v_nuevo_precio from dual;

  dbms_output.put_line('El nuevo precio de la vivienda si se le
  	descontara el 5% sería de:'
  	||v_nuevo_precio);
  
  if v_precio_esperado=v_nuevo_precio then
    dbms_output.put_line('Prueba 1. Correcta');
  else
    dbms_output.put_line('El valor esperado era: '
    ||v_precio_esperado||' pero se obtuvo: '
    ||v_nuevo_precio);
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
  v_nuevo_precio number(10,2);
  v_precio_esperado number(10,2):=225000;

begin
  select fx_precio_vivienda(26,0.1) into v_nuevo_precio from dual;

  dbms_output.put_line('El nuevo precio de la vivienda si se le
  	descontara el 10% sería de:'
  	||v_nuevo_precio);
  
  if v_precio_esperado=v_nuevo_precio then
    dbms_output.put_line('Prueba 2. Correcta');
  else
    dbms_output.put_line('El valor esperado era: '
    ||v_precio_esperado||' pero se obtuvo: '
    ||v_nuevo_precio);
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
  v_nuevo_precio number(10,2);
  v_precio_esperado number(10,2):=65450.6545;

begin
  select fx_precio_vivienda(27,0.15) into v_nuevo_precio from dual;

  dbms_output.put_line('El nuevo precio de la vivienda si se le
  	descontara el 15% sería de:'
  	||v_nuevo_precio);
  
  if v_precio_esperado=v_nuevo_precio then
    dbms_output.put_line('Prueba 3. Correcta');
  else
    dbms_output.put_line('El valor esperado era: '
    ||v_precio_esperado||' pero se obtuvo: '
    ||v_nuevo_precio);
  end if;
  commit;

  exception
    when others then
      rollback;
      raise;
end;
/