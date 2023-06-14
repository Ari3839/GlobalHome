--@Autor(es): Lázaro Martínez A. Ariadna y Santana Sánchez M. Yvette
--@Fecha creación: 02/02/2020
--@Descripción: Trigger que registra las eliminaciones de viviendas

create or replace trigger delete_vivienda
  for delete on vivienda
  compound trigger

--Objeto que sirve como tabla
type audit_usr is record(
  auditoria_id auditoria_vivienda.auditoria_vivienda_id%type,
  fecha auditoria_vivienda.fecha_evento%type,
  usuario auditoria_vivienda.usuario%type,
  vivienda_id auditoria_vivienda.vivienda_id%type,
  direccion auditoria_vivienda.direccion%type,
  se_vende auditoria_vivienda.se_vende%type,
  se_renta auditoria_vivienda.se_renta%type,
  para_vacacionar auditoria_vivienda.para_vacacionar%type
);

--Objeto tipo collection
type audit_usr_type is table of audit_usr;

--Inicializa una coleccion
lista_auditoria audit_usr_type:=audit_usr_type();

after each row is

--Declaracion de variables
  v_indice number;

begin
  lista_auditoria.extend;
  v_indice:=lista_auditoria.last;

  lista_auditoria(v_indice).auditoria_id:= seq_audit_viv.nextval;
  lista_auditoria(v_indice).fecha:=sysdate;
  lista_auditoria(v_indice).usuario:=sys_context('USERENV','SESSION_USER');
  lista_auditoria(v_indice).vivienda_id:= :old.vivienda_id;
  lista_auditoria(v_indice).direccion:= :old.direccion;
  lista_auditoria(v_indice).se_vende:= :old.se_vende;
  lista_auditoria(v_indice).se_renta:= :old.se_renta;
  lista_auditoria(v_indice).para_vacacionar:= :old.para_vacacionar;
  
  dbms_output.put_line('Se inserto un registro en auditoria vivienda
      porque se elimino a la vivienda con id: '
      ||:old.vivienda_id);

end after each row;

after statement is
begin
  forall i in lista_auditoria.first .. lista_auditoria.last
    insert into auditoria_vivienda(auditoria_vivienda_id,fecha_evento,
    	usuario,vivienda_id,direccion,se_vende,se_renta,para_vacacionar)
  	values(lista_auditoria(i).auditoria_id,lista_auditoria(i).fecha,
  		lista_auditoria(i).usuario,lista_auditoria(i).vivienda_id,
  		lista_auditoria(i).direccion,lista_auditoria(i).se_vende,
  		lista_auditoria(i).se_renta,lista_auditoria(i).para_vacacionar);
  
  end after statement;

end;
/
show errors;