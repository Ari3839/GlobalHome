--@Autor(es): Lázaro Martínez A. Ariadna y Santana Sánchez M. Yvette
--@Fecha creación: 03/02/2020
--@Descripción: Insercion de fotos en la tabla imagen de viviendas

Prompt conectando como usuario sys
connect sys as sysdba

create or replace directory iconos_dir as '/tmp/iconos_dir';
grant read,write on directory iconos_dir to ls_proy_admin;

Prompt conectando como usuario ls_proy_admin
connect ls_proy_admin/admin;

set serveroutput on

create or replace procedure sp_iconos_servicio(
  p_num_servicios in number
) is

--Variables:
--Para realizar el update:
v_sql varchar2(2000);
--Para hacer referencia al archivo:
v_bfile bfile;
--Referencia a la colunma que se actualiza (foto)
v_dest_blob blob;
--Para escribir el archivo en la variable blob:
v_src_offset number;
v_dest_offset number;
--Para comparar el archivo leido y el escrito, para detectar error
v_src_length number;
v_dest_length number;
--Variable auxiliar para calcular el fin del ciclo
v_name varchar2(20);

begin
	
	for i in 1 .. p_num_servicios loop

	  v_name:='servicio-'||i||'.jpg';

		dbms_output.put_line('Utilizando archivo '||v_name);
	
		--Referenciamos la imagen que se necesita
		v_bfile:=bfilename('ICONOS_DIR',v_name);
    
		--Si existe y no esta abierto, se abre para leer
		if dbms_lob.fileexists(v_bfile)=1 and not
		  dbms_lob.isopen(v_bfile)=1 then
				dbms_lob.open(v_bfile,dbms_lob.lob_readonly);
		else
			raise_application_error(-20001,'El archivo '||v_name
				||' no esiste en el directorio /TMP/ICONOS_DIR o el archivo esta abierto.');
		end if;

		--Sentencia dinamica
	    v_sql:='update servicio_general set icono=empty_blob()
	      where servicio_general_id=:ph_i
	      returning icono into :ph_blob';

		--Ejecucion de la sentencia dinamica
		execute immediate v_sql using i returning into v_dest_blob;
    
	    --Inicializando para la siguiente iteracion
	    v_src_offset:=1;
	    v_dest_offset:=1;
	    v_src_length:=0;
	    v_dest_length:=0;

		--Escribe el contenido del archivo en v_dest_blob
		dbms_lob.loadblobfromfile(
			dest_lob => v_dest_blob,
			src_bfile => v_bfile,
			amount => dbms_lob.getlength(v_bfile),
			dest_offset => v_dest_offset,
			src_offset => v_src_offset
		);
		dbms_lob.close(v_bfile);

		v_src_length:=dbms_lob.getlength(v_bfile);
		v_dest_length:=dbms_lob.getlength(v_dest_blob);

		if v_src_length=v_dest_length then
			dbms_output.put_line('Escritura correcta, bytes escritos: '
				||v_src_length);
		else
			raise_application_error(-20002,'Error al escribir datos.'
				||' Se esperaba escribir '
				||v_src_length
				||' pero solo se escribio '
				||v_dest_length);
		end if;
	end loop;

end;
/
Show errors;