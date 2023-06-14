--@Autor(es): Lázaro Martínez A. Ariadna y Santana Sánchez M. Yvette
--@Fecha creación: 03/02/2020
--@Descripción: Prueba del procedimiento de insercion de fotos en la tabla imagen de viviendas


--Se genera el directorio y se copian las fotos de las viviendas
Prompt creando el directorio y copiando imagenes
!rm -rf /tmp/fotos_dir
!mkdir -p /tmp/fotos_dir
!chmod 777 /tmp/fotos_dir
!cp viviendas/vivienda-* /tmp/fotos_dir
!chmod 755 /tmp/fotos_dir/vivienda-*

Prompt realizando la prueba
begin
  sp_fotos_vivienda(5,12);
  sp_fotos_vivienda(4,7);
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
select imagen_id,vivienda_id,
  dbms_lob.getlength(imagen) as longitud_img
from imagen
where dbms_lob.getlength(imagen)>0;