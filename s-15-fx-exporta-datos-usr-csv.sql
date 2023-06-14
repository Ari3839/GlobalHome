--@Autor(es): Lázaro Martínez A. Ariadna y Santana Sánchez M. Yvette
--@Fecha creación: 02/02/2020
--@Descripción: Funcion para calcular el total de los pagos de una vivienda en venta

create or replace function fx_exporta_datos_usr_csv(
  p_usuario_id in number
) return varchar2 is

--variables
v_datos varchar2(120);
v_nombre_usr varchar2(10);
v_email varchar2(40);
v_nombre varchar2(20);
v_ap_pat varchar2(20);
v_ap_mat varchar2(20);

begin
  select nombre_usuario,email,nombre_real,
    ap_paterno, ap_materno
  into v_nombre_usr,v_email,v_nombre,
    v_ap_pat,v_ap_mat
  from usuario
  where usuario_id=p_usuario_id;
  
  v_datos:=p_usuario_id||','
    ||v_nombre_usr||','
    ||v_email||','
    ||v_nombre||','
    ||v_ap_pat;

  if v_ap_mat is not null then
    v_datos:=v_datos||','||v_ap_mat;
  end if;

  return v_datos;
end;
/
show errors;