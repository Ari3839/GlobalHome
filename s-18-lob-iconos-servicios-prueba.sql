--@Autor(es): Lázaro Martínez A. Ariadna y Santana Sánchez M. Yvette
--@Fecha creación: 03/02/2020
--@Descripción: Prueba del procedimiento de insercion de fotos en la tabla imagen de viviendas


--Se genera el directorio y se copian las fotos de las viviendas
Prompt creando el directorio y copiando imagenes
!rm -rf /tmp/iconos_dir
!mkdir -p /tmp/iconos_dir
!chmod 777 /tmp/iconos_dir
!cp servicios/servicio-* /tmp/iconos_dir
!chmod 755 /tmp/iconos_dir/servicio-*

Prompt realizando la prueba
begin
  sp_iconos_servicio(5);
  commit;

  exception
  when others then
    dbms_output.put_line('Error al actualizar la carga, se hara rollback');
    dbms_output.put_line(dbms_utility.format_error_backtrace);
      rollback;
      raise;
end;
/

Prompt mostrando resultados
select servicio_general_id,
  dbms_lob.getlength(icono) as longitud_img
from servicio_general;