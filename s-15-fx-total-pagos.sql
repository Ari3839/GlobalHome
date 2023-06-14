--@Autor(es): Lázaro Martínez A. Ariadna y Santana Sánchez M. Yvette
--@Fecha creación: 02/02/2020
--@Descripción: Funcion para calcular el total de los pagos de una vivienda en venta

create or replace function fx_total_pagos(
  p_vivienda_id in number
) return varchar2 is

--variables
v_total number(20,0):=0;
--cursor
cursor cur_pagos is
  select pago_id,importe
  from pago
  where vivienda_id=p_vivienda_id;

begin
  for p in cur_pagos loop
    v_total:=v_total+p.importe;
    dbms_output.put_line('Se suma la cantidad del pago con id: '
      ||p.pago_id);
  end loop;

  return v_total;
end;
/
show errors