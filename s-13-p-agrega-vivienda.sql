--@Autor(es): Lázaro Martínez A. Ariadna y Santana Sánchez M. Yvette
--@Fecha creación: 02/02/2020
--@Descripción: Procedimiento almacenado para insertar en las tablas relacionadas a vivienda

set serveroutput on

create or replace procedure p_agrega_vivienda(
  p_latitud in number, p_longitud in number,p_capacidad_max in number, 
  p_direccion in varchar2, p_descripcion in varchar2, p_se_vende in number,
  p_se_renta in number, p_para_vacacionar in number, p_usuario_id in number,
  p_renta_mensual in number default null, p_dia_deposito in varchar2 default null,
  p_clabes in varchar2 default null, p_costo_por_dia in number default null,
  p_maximo_dias in number default null, p_deposito in number default null,
  p_folio in varchar2 default null, p_numero_catastral in varchar2 default null,
  p_precio_inicial in number default null, p_servicios in varchar2 default null 
) is

v_fecha_estatus date;
v_servicio_id number(5,0);
v_clabe varchar2(90);

begin
  select to_date(sysdate,'dd/mm/yyyy hh24:mi:ss') 
  	into v_fecha_estatus
  from dual;

  insert into vivienda(vivienda_id,latitud,longitud,capacidad_max,direccion,descripcion,
  	fecha_estatus,se_vende,se_renta,para_vacacionar,estatus_vivienda_id,usuario_id)
  values(seq_viv.nextval,p_latitud,p_longitud,p_capacidad_max,p_descripcion,p_descripcion,
  	v_fecha_estatus,p_se_vende,p_se_renta,p_para_vacacionar,1,p_usuario_id);
  dbms_output.put_line('Vivienda insertada con id: '||seq_viv.currval);

  insert into historico_estatus_vivienda(historico_estatus_vivienda_id,fecha_estatus,estatus_vivienda_id,
  	vivienda_id)
  values(seq_hist_status_viv.nextval,v_fecha_estatus,1,seq_viv.currval);
  dbms_output.put_line('Registro en historico_estatus_vivienda insertado correctamente con id:'
  	||seq_hist_status_viv.currval);

  if p_se_vende=1 then
    insert into vivienda_venta(vivienda_id,folio_escritura,numero_catastral,precio_inicial,
    	archivo_del_avaluo,clave_interbancaria,comision,usuario_id)
    values (seq_viv.currval,p_folio,p_numero_catastral,p_precio_inicial,empty_blob(),null,null,null);
    dbms_output.put_line('La vivienda se vende, registro insertado correctamente');

  elsif p_se_renta=1 then
    insert into vivienda_renta(vivienda_id,renta_mensual,dia_deposito)
    values(seq_viv.currval,p_renta_mensual,p_dia_deposito);
    dbms_output.put_line('La vivienda se renta, registro insertado correctamente');

  end if;
  
  if p_para_vacacionar=1 then
    insert into vivienda_vacacionar(vivienda_id,costo_por_dia,maximo_de_dias,deposito)
    values(seq_viv.currval,p_costo_por_dia,p_maximo_dias,p_deposito);
    dbms_output.put_line('La vivienda se renta para vacacionar, registro insertado correctamente');
  end if;

  for i in 1 .. length(p_servicios) loop
    v_servicio_id:=to_number(substr(p_servicios,i,1));
    insert into servicio_vivienda(servicio_vivienda_id,vivienda_id,servicio_general_id)
    values(seq_serv.nextval,seq_viv.currval,v_servicio_id);
    dbms_output.put_line('Servicio con id '
    ||v_servicio_id
    ||' insertado correctamente');
  end loop;

  if p_clabes is not null then
	  for j in 1 .. (length(p_clabes)/18) loop
	  	v_clabe:=substr(p_clabes,((j-1)*18)+1,18);
	    insert into clabe_vivienda(clabe_vivienda_id,clabe,vivienda_id)
	    values(seq_clabe.nextval,v_clabe,seq_viv.currval);
	    dbms_output.put_line('La siguiente clabe '
	    ||v_clabe
	    ||' se ha registrado correctamente');
	  end loop;
	end if;
 
end;
/
show errors;