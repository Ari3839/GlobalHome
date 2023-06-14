--@Autor(es): Lázaro Martínez A. Ariadna y Santana Sánchez M. Yvette
--@Fecha creación: 02/02/2020
--@Descripción: Funcion para disminuir en 5% el precio inicial de una vivienda

set serveroutput on

create or replace function fx_precio_vivienda(
  p_vivienda_id in number, p_descuento in number
) return number is

--variables
v_nuevo_precio number(10,2);

begin
  select precio_inicial
  into v_nuevo_precio
  from vivienda_venta
  where vivienda_id=p_vivienda_id;

  v_nuevo_precio:=v_nuevo_precio-(v_nuevo_precio*p_descuento);
  return v_nuevo_precio;

end;
/
show errors; 