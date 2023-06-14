--@Autor(es): Lázaro Martínez A. Ariadna y Santana Sánchez M. Yvette
--@Fecha creación: 02/02/2020
--@Descripción: Prueba la funcion para exportar datos de un usuario

set serveroutput on
Prompt ===========================================
Prompt Prueba 1.
Prompt ===========================================

declare
  v_datos varchar2(120);
  v_esperado varchar(120):='11,dgantlett1,dgantlett1@bigcartel.com,Danita,Kauscher,Gantlett';

begin
  select fx_exporta_datos_usr_csv(11) into v_datos from dual;
  
  if v_datos=v_esperado then
    dbms_output.put_line('Prueba 1 exitosa, el resultado es el esperado: '
      ||v_datos); 
  else
    dbms_output.put_line('El resultado esperado era: '
      ||v_esperado||' . Pero se obtuvo:'
      ||v_datos);
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
  v_datos varchar2(120);
  v_esperado varchar(120):='12,kbygrave2,kbygrave2@technorati.com,Kessiah,Knewstub,Bygrave';

begin
  select fx_exporta_datos_usr_csv(12) into v_datos from dual;
  
  if v_datos=v_esperado then
    dbms_output.put_line('Prueba 2 exitosa, el resultado es el esperado: '
      ||v_datos); 
  else
    dbms_output.put_line('El resultado esperado era: '
      ||v_esperado||' . Pero se obtuvo:'
      ||v_datos);
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
  v_datos varchar2(120);
  v_esperado varchar(120):='13,ccamellini,ccamellini3@miibeian.gov.cn,Colleen,Lassell,Camellini';
begin
  select fx_exporta_datos_usr_csv(13) into v_datos from dual;
  
  if v_datos=v_esperado then
    dbms_output.put_line('Prueba 3 exitosa, el resultado es el esperado: '
      ||v_datos); 
  else
    dbms_output.put_line('El resultado esperado era: '
      ||v_esperado||' . Pero se obtuvo:'
      ||v_datos);
  end if;
  commit;

  exception
    when others then
      rollback;
      raise;
end;
/