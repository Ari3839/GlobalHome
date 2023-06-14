--@Autor(es): Lázaro Martínez A. Ariadna y Santana Sánchez M. Yvette
--@Fecha creación: 31/01/2020
--@Descripción: Inserción de datos en las tablas catalogos


--Tabla estatus_vivienda
insert into estatus_vivienda(estatus_vivienda_id,clave,descripcion)
  values(1,'DISPONIBLE','La vivienda no se encuentra en uso');

insert into estatus_vivienda(estatus_vivienda_id,clave,descripcion)
	values(2,'EN RENTA','La vivienda ha sido rentada');

insert into estatus_vivienda(estatus_vivienda_id,clave,descripcion)
	values(3,'ALQUILADA','La vivienda ha sido alquilada');

insert into estatus_vivienda(estatus_vivienda_id,clave,descripcion)
	values(4,'EN VENTA','La vivienda solo se puede vender');

insert into estatus_vivienda(estatus_vivienda_id,clave,descripcion)
	values(5,'VENDIDA','La vivienda ha sido vendida');

insert into estatus_vivienda(estatus_vivienda_id,clave,descripcion)
	values(6,'INACTIVA','La vivienda no se encuentra activa');

--Servicio_general
insert into servicio_general(servicio_general_id,nombre,descripcion,icono)
	values(1,'AIRE ACONDICIONADO','MiniSplit sin calefaccion incluida',empty_blob());

insert into servicio_general(servicio_general_id,nombre,descripcion,icono)
	values(2,'WIFI','1500GB quincenales',empty_blob());

insert into servicio_general(servicio_general_id,nombre,descripcion,icono)
	values(3,'GIMNASIO','Gimnasio en casa',empty_blob());

insert into servicio_general(servicio_general_id,nombre,descripcion,icono)
	values(4,'TV DE PAGA','Television abierta y canales extra',empty_blob());

insert into servicio_general(servicio_general_id,nombre,descripcion,icono)
	values(5,'ALBERCA','Alberca con capacidad diversa',empty_blob());

--Usuario
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno) 
	values (seq_usr.nextval, 'HarryStyle', 'HarryStyles@gmail.com', 'HarryStyles123', 'Harry', 'Styles');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'dgantlett1', 'dgantlett1@bigcartel.com', 'ZshVIEss', 'Danita', 'Kauscher', 'Gantlett');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'kbygrave2', 'kbygrave2@technorati.com', 'pcXBiHdd', 'Kessiah', 'Knewstub', 'Bygrave');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'ccamellini', 'ccamellini3@miibeian.gov.cn', '4I0UFHnvj4', 'Colleen', 'Lassell', 'Camellini');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'rdrillin4', 'rdrillingcourt4@home.pl', 'cxmaJ6C7Ie', 'Rubia', 'Skeete', 'Drillingcourt');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'ehammill5', 'ehammill5@slate.com', '2CYhtZ5MA', 'Evonne', 'Devorill', 'Hammill');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'ltollady6', 'ltollady6@irs.gov', '3gkc1C19gtg6', 'Lane', 'Nevill', 'Tollady');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'ibernier7', 'ibernier7@hao123.com', 'WReIu2cbnS3', 'Ignacio', 'Adamovicz', 'Bernier');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'lelph8', 'lelph8@aboutads.info', 'oKr6hI11', 'Lesley', 'Schaumann', 'Elph');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'apowdrill9', 'apowdrill9@nyu.edu', 'hSKuYWMLBAf', 'Adelle', 'Poker', 'Powdrill');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'gbilneya', 'gbilneya@a8.net', 'hOVknonVG', 'Gaile', 'Sabathier', 'Bilney');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'sroxbeeb', 'sroxbeeb@reference.com', 'UeFvJ5BVJb4S', 'Silvio', 'Klassman', 'Roxbee');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'kshearac', 'kshearac@so-net.ne.jp', 'TDoteMYCF', 'Karel', 'Coverdale', 'Sheara');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'tsimcockd', 'tsimcockd@wikispaces.com', 'VJxhHyv9ruG', 'Timothee', 'Boshers', 'Simcock');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'tcogdelle', 'tcogdelle@barnesandnoble.com', 'xgl05vlv', 'Tyrone', 'Flaune', 'Cogdell');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'gjanjusevi', 'gjanjusevicf@yahoo.co.jp', 'WDl0vvr3Dgf', 'Gelya', 'Murby', 'Janjusevic');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'fmacauleyg', 'fmacauleyg@ox.ac.uk', 'e4kSvtiTa', 'Farra', 'Hockey', 'Macauley');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'tbatrickh', 'tbatrickh@ezinearticles.com', '4eNvPF1jgp8', 'Thorstein', 'Hickin', 'Batrick');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'ccridlini', 'ccridlini@desdev.cn', '3RutVNoAR7', 'Caroline', 'Pyburn', 'Cridlin');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'jmcwhinnie', 'jmcwhinniej@multiply.com', 'dLFYYlmmldn3', 'Jamie', 'Scrane', 'Mcwhinnie');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'nkoppk', 'nkoppk@ask.com', 'sXCoZ6t3', 'Norina', 'MacCartan', 'Kopp');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'hbeldingl', 'hbeldingl@cocolog-nifty.com', 'NM2vQm12', 'Hunt', 'Withull', 'Belding');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'gchastneym', 'gchastneym@indiegogo.com', 'DUfMX7UBXt', 'Gideon', 'Heindl', 'Chastney');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'mbridgemen', 'mbridgementn@stumbleupon.com', 'dfDjuh12', 'Marion', 'Nealy', 'Bridgement');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'ddevonisho', 'ddevonisho@mit.edu', 'pUx2FIb7IfKr', 'Daphene', 'Musk', 'Devonish');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'bvillaltap', 'bvillaltap@dailymail.co.uk', 'dRsYR82QFE', 'Bord', 'Maureen', 'Villalta');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'twerndleyq', 'twerndleyq@nationalgeographic.com', 'VmlTU14p1n', 'Tani', 'Merkel', 'Werndley');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'qwoodwardr', 'qwoodwardr@skype.com', '6DKTASqy0nIy', 'Quinton', 'Alen', 'Woodward');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'nscibseys', 'nscibseys@timesonline.co.uk', 'fERzQhvm1ST', 'Nesta', 'Naisbit', 'Scibsey');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'mtunnaht', 'mtunnaht@storify.com', 'EqhI7vMbGTCx', 'Martino', 'Doughtery', 'Tunnah');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'tchartresu', 'tchartresu@cbsnews.com', 'a0zYeCyV', 'Tobit', 'Franca', 'Chartres');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'lfennersv', 'lfennersv@reverbnation.com', 'mWi8IxS5La', 'Lind', 'Garthside', 'Fenners');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'jstaplesw', 'jstaplesw@is.gd', 'zZY14VQtx', 'Jeremias', 'Callaghan', 'Staples');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'ahebbesx', 'ahebbesx@netlog.com', 's0dwBJPfrH', 'Adi', 'Lackie', 'Hebbes');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'nramsbotto', 'nramsbottomy@paypal.com', 'HM5xAtA8H1JD', 'Neron', 'Darbey', 'Ramsbottom');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'syearnslez', 'syearnsleyz@studiopress.com', 'MrpF11muv', 'Saunders', 'Oldred', 'Yearnsley');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'vrawnsley0', 'vrawnsley10@ted.com', 'RXFlmS123', 'Vachel', 'Playden', 'Rawnsley');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'joakeby11', 'joakeby11@bbc.co.uk', 'Kl5k89KJ', 'Jarret', 'Dansey', 'Oakeby');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'cnusche12', 'cnusche12@xinhuanet.com', 'fqiuUEhwTGb', 'Caren', 'Thorogood', 'Nusche');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'neagell13', 'neagell13@si.edu', 'yfTVoeGBV9', 'Nikos', 'Threadgould', 'Eagell');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'jscohier14', 'jscohier14@istockphoto.com', 'LGmjjMaxJI', 'Jeri', 'Drust', 'Scohier');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'ckerkham15', 'ckerkham15@bbc.co.uk', 'Mt9Oyfghj', 'Cordie', 'Danielli', 'Kerkham');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'rcostello', 'rcostelloe16@symantec.com', 'o43cpsvz', 'Rae', 'Woodbridge', 'Costelloe');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'gtreweke17', 'gtreweke17@sciencedirect.com', '5kWvRYSm5Y', 'Giusto', 'Halsworth', 'Treweke');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'gvannah18', 'gvannah18@123-reg.co.uk', 'YRFsUto111', 'Georgeanne', 'Biaggetti', 'Vannah');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'lcabrals19', 'lcabrales19@plala.or.jp', 'N4f4utLmPT0P', 'Lula', 'Labbe', 'Cabrales');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'gdumpleton', 'gdumpleton1a@mysql.com', 'z63gY1iN', 'Gasper', 'Ferrino', 'Dumpleton');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'smatusson1', 'smatusson1b@walmart.com', 'uMRPN1fgJ', 'Saudra', 'Hearsey', 'Matusson');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'tharkins1c', 'tharkins1c@pbs.org', 'rQ8e28W0fsd2', 'Tiebold', 'Willoughby', 'Harkins');
insert into usuario (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (seq_usr.nextval, 'moller1d', 'moller1d@tripadvisor.com', '4PWXdiZD3I84', 'Malissia', 'Sitlinton', 'Oller');


--Tabla temporal usuario
insert into usuario_respaldo (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (100, 'klunbech0', 'klunbech0@ted.com', 'LV2GIwdsuEr', 'Kleon', 'Checchetelli', 'Lunbech');
insert into usuario_respaldo (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (101, 'cmarner1', 'cmarner1@fotki.com', 'OMTRZqkB', 'Courtnay', 'Minchinden', 'Marner');
insert into usuario_respaldo (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (102, 'mrsebarer2', 'mrisebarer2@dell.com', 'SSIVk4waYzK', 'Madelin', 'O''Grady', 'Risebarer');
insert into usuario_respaldo (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (103, 'edenisard3', 'edenisard3@bandcamp.com', 'zuJsFznRcWc', 'Enid', 'McEneny', 'Denisard');
insert into usuario_respaldo (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (104, 'scalveley4', 'scalveley4@mozilla.org', 'TMR0bI11', 'Salem', 'Coade', 'Calveley');
insert into usuario_respaldo (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (105, 'alockyear5', 'alockyear5@examiner.com', 'KEgKGs1lR', 'Annice', 'Valenti', 'Lockyear');
insert into usuario_respaldo (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (106, 'carchell6', 'carchell6@yale.edu', 'W4IPXIjuY', 'Christophorus', 'Kuhndel', 'Archell');
insert into usuario_respaldo (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (107, 'blewisham7', 'blewisham7@washingtonpost.com', 'TJfKmfP1', 'Bern', 'Najara', 'Lewisham');
insert into usuario_respaldo (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (108, 'bmeriguet8', 'bmeriguet8@goo.gl', 'TWN216HkR20', 'Bryan1ty', 'Stotherfield', 'Meriguet');
insert into usuario_respaldo (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (109, 'ieglese9', 'ieglese9@homestead.com', 'DvqyLz123', 'Ilario1', 'Geaveny', 'Eglese');
insert into usuario_respaldo (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (110, 'menda', 'menda@hp.com', 'HQMcme123', 'Madeline', 'Stanes', 'End');
insert into usuario_respaldo (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (111, 'mtantrumb', 'mtantrumb@shop-pro.jp', 'IulFcTaLhB11', 'Matelda', 'De Bruijne', 'Tantrum');
insert into usuario_respaldo (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (112, 'ietherseyc', 'ietherseyc@4shared.com', 'Pm21tBXn', 'Isis', 'Maleck', 'Ethersey');
insert into usuario_respaldo (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (113, 'hpunterd', 'hpunterd@mayoclinic.com', 'JvaHvOjn7', 'Herman', 'Le Gallo', 'Punter');
insert into usuario_respaldo (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (114, 'chembrowe', 'chembrowe@dmoz.org', '0umPBixVQ7Su', 'Cherin', 'Fores', 'Hembrow');
insert into usuario_respaldo (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (115, 'ckerwenf', 'ckerwenf@altervista.org', 'YaFVbC12', 'Crosby', 'Ilyas', 'Kerwen');
insert into usuario_respaldo (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (116, 'kfulung', 'kfulung@yale.edu', '5xGYQrJYtuJ', 'Kris', 'Semrad', 'Fulun');
insert into usuario_respaldo (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (117, 'lbrackryh', 'lbrackenburyh@list-manage.com', '0P09FGrIb8', 'Lorinda', 'Nucator', 'Brackenbury');
insert into usuario_respaldo (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (118, 'okempi', 'okempi@fastcompany.com', 'G7it0U14xI', 'Omar', 'Posnette', 'Kemp');
insert into usuario_respaldo (usuario_id, nombre_usuario, email, contrasenia, nombre_real, ap_paterno, ap_materno) 
	values (119, 'msanzj', 'msanzj@theglobeandmail.com', 'rg8D58901', 'Marty', 'Benedick', 'Sanz');

merge into usuario u using usuario_respaldo r
  on (u.usuario_id=r.usuario_id)
when matched then update
  set u.nombre_usuario=r.nombre_usuario,u.email=r.email,u.contrasenia=r.contrasenia,
    u.nombre_real=r.nombre_real,u.ap_paterno=r.ap_paterno,u.ap_materno=r.ap_materno
when not matched then 
  insert(u.usuario_id,u.nombre_usuario,u.email,u.contrasenia,u.nombre_real,u.ap_paterno,u.ap_materno)
  values(r.usuario_id,r.nombre_usuario,r.email,r.contrasenia,r.nombre_real,r.ap_paterno,r.ap_materno);

--Tarjeta
insert into tarjeta_credito (usuario_id, numero, numero_seguridad, fecha_expiracion) 
	values (10, '6763575404181039', 9671, to_date('07/21/2023','mm/dd/yyyy'));
insert into tarjeta_credito (usuario_id, numero, numero_seguridad, fecha_expiracion) 
	values (11, '3529537667040023', 8086, to_date('09/09/2043','mm/dd/yyyy'));
insert into tarjeta_credito (usuario_id, numero, numero_seguridad, fecha_expiracion) 
	values (12, '5602242101221391', 4731, to_date('09/11/2016','mm/dd/yyyy'));
insert into tarjeta_credito (usuario_id, numero, numero_seguridad, fecha_expiracion) 
	values (13, '5100176890105386', 7492, to_date('05/29/2050','mm/dd/yyyy'));
insert into tarjeta_credito (usuario_id, numero, numero_seguridad, fecha_expiracion) 
	values (14, '5018146162421784', 4945, to_date('09/24/2025','mm/dd/yyyy'));
insert into tarjeta_credito (usuario_id, numero, numero_seguridad, fecha_expiracion) 
	values (15, '30348730404925', 6909, to_date('07/16/2027','mm/dd/yyyy'));
insert into tarjeta_credito (usuario_id, numero, numero_seguridad, fecha_expiracion) 
	values (16, '5568604435077', 3968, to_date('09/22/2005','mm/dd/yyyy'));
insert into tarjeta_credito (usuario_id, numero, numero_seguridad, fecha_expiracion) 
	values (17, '5602215591125666', 8348, to_date('09/08/2003','mm/dd/yyyy'));
insert into tarjeta_credito (usuario_id, numero, numero_seguridad, fecha_expiracion) 
	values (18, '374622542558753', 6709, to_date('03/09/2039','mm/dd/yyyy'));
insert into tarjeta_credito (usuario_id, numero, numero_seguridad, fecha_expiracion) 
	values (19, '5602237482329579', 6388, to_date('03/16/2047','mm/dd/yyyy'));
insert into tarjeta_credito (usuario_id, numero, numero_seguridad, fecha_expiracion) 
	values (20, '30410838113640', 8476, to_date('08/15/2015','mm/dd/yyyy'));
insert into tarjeta_credito (usuario_id, numero, numero_seguridad, fecha_expiracion) 
	values (21, '3548873784385125', 7327, to_date('07/07/2033','mm/dd/yyyy'));
insert into tarjeta_credito (usuario_id, numero, numero_seguridad, fecha_expiracion) 
	values (22, '4175001410066525', 8681, to_date('02/05/2016','mm/dd/yyyy'));
insert into tarjeta_credito (usuario_id, numero, numero_seguridad, fecha_expiracion) 
	values (23, '4903372269258778', 6881, to_date('04/03/2049','mm/dd/yyyy'));
insert into tarjeta_credito (usuario_id, numero, numero_seguridad, fecha_expiracion) 
	values (24, '3571661022832143', 9752, to_date('01/23/2017','mm/dd/yyyy'));
insert into tarjeta_credito (usuario_id, numero, numero_seguridad, fecha_expiracion) 
	values (25, '4405456847366678', 9464, to_date('11/26/2048','mm/dd/yyyy'));
insert into tarjeta_credito (usuario_id, numero, numero_seguridad, fecha_expiracion) 
	values (26, '6761929609613506', 3328, to_date('05/03/2038','mm/dd/yyyy'));
insert into tarjeta_credito (usuario_id, numero, numero_seguridad, fecha_expiracion) 
	values (27, '6334573425149531', 1663, to_date('05/13/2013','mm/dd/yyyy'));
insert into tarjeta_credito (usuario_id, numero, numero_seguridad, fecha_expiracion) 
	values (28, '3571861618918922', 1015, to_date('01/23/2031','mm/dd/yyyy'));
insert into tarjeta_credito (usuario_id, numero, numero_seguridad, fecha_expiracion) 
	values (29, '670912321870713', 9622, to_date('11/01/2003','mm/dd/yyyy'));
insert into tarjeta_credito (usuario_id, numero, numero_seguridad, fecha_expiracion) 
	values (30, '4913653818165114', 5859, to_date('10/26/2002','mm/dd/yyyy'));
insert into tarjeta_credito (usuario_id, numero, numero_seguridad, fecha_expiracion) 
	values (31, '3551502877038010', 6969, to_date('02/10/2034','mm/dd/yyyy'));
insert into tarjeta_credito (usuario_id, numero, numero_seguridad, fecha_expiracion) 
	values (32, '677132601466183', 5282, to_date('07/30/2003','mm/dd/yyyy'));
insert into tarjeta_credito (usuario_id, numero, numero_seguridad, fecha_expiracion) 
	values (33, '3540005133235051', 6532, to_date('11/23/2034','mm/dd/yyyy'));
insert into tarjeta_credito (usuario_id, numero, numero_seguridad, fecha_expiracion) 
	values (34, '36193903684778', 9276, to_date('07/05/2005','mm/dd/yyyy'));

--Antes de realizar las demas inserciones, es necesario ejecutar la prueba del procedimiento
--agregar viviendas.
Prompt ===========================================
Prompt Insercion de datos con el procedimiento agrega_vivienda
start s-13-p-agrega-vivienda.sql;
start s-14-p-agrega-vivienda-prueba.sql;

--Contrato_renta
insert into contrato_renta (contrato_renta_id, folio, fecha_contrato, doc_firmas, usuario_id, vivienda_id) 
	values (seq_contrato.nextval, '07492312', to_date('02/01/2021','dd/mm/yyyy'), empty_blob(), 29, 14);
insert into contrato_renta (contrato_renta_id, folio, fecha_contrato, doc_firmas, usuario_id, vivienda_id) 
	values (seq_contrato.nextval, '41393420', to_date('04/04/2021','dd/mm/yyyy'), empty_blob(), 59, 18);
insert into contrato_renta (contrato_renta_id, folio, fecha_contrato, doc_firmas, usuario_id, vivienda_id) 
	values (seq_contrato.nextval, '28111531', to_date('02/12/2021','dd/mm/yyyy'), empty_blob(), 33, 17);
insert into contrato_renta (contrato_renta_id, folio, fecha_contrato, doc_firmas, usuario_id, vivienda_id) 
	values (seq_contrato.nextval, '14797085', to_date('12/08/2020','dd/mm/yyyy'), empty_blob(), 16, 19);
insert into contrato_renta (contrato_renta_id, folio, fecha_contrato, doc_firmas, usuario_id, vivienda_id) 
	values (seq_contrato.nextval, '37779971', to_date('11/11/2021','dd/mm/yyyy'), empty_blob(), 59, 11);
insert into contrato_renta (contrato_renta_id, folio, fecha_contrato, doc_firmas, usuario_id, vivienda_id) 
	values (seq_contrato.nextval, '29697628', to_date('06/12/2021','dd/mm/yyyy'), empty_blob(), 22, 16);
insert into contrato_renta (contrato_renta_id, folio, fecha_contrato, doc_firmas, usuario_id, vivienda_id) 
	values (seq_contrato.nextval, '71067163', to_date('11/02/2022','dd/mm/yyyy'), empty_blob(), 13, 12);
insert into contrato_renta (contrato_renta_id, folio, fecha_contrato, doc_firmas, usuario_id, vivienda_id) 
	values (seq_contrato.nextval, '59656739', to_date('12/12/2022','dd/mm/yyyy'), empty_blob(), 39, 15);

--Alquiler
insert into alquiler (alquiler_id, folio, fecha_inicio, fecha_fin, usuario_id, vivienda_id) 
  values (seq_alquiler.nextval, '09604881', to_date('10/02/2019','dd/mm/yyyy'), to_date('10/03/2019','dd/mm/yyyy'), 32, 1);
insert into alquiler (alquiler_id, folio, fecha_inicio, fecha_fin, usuario_id, vivienda_id) 
	values (seq_alquiler.nextval, '02792089', to_date('12/04/2018','dd/mm/yyyy'), to_date('12/05/2018','dd/mm/yyyy'), 54, 5);
insert into alquiler (alquiler_id, folio, fecha_inicio, fecha_fin, usuario_id, vivienda_id) 
	values (seq_alquiler.nextval, '23756093', to_date('30/04/2018','dd/mm/yyyy'), to_date('30/05/2018','dd/mm/yyyy'), 25, 4);
insert into alquiler (alquiler_id, folio, fecha_inicio, fecha_fin, usuario_id, vivienda_id) 
	values (seq_alquiler.nextval, '41754355', to_date('13/06/2018','dd/mm/yyyy'), to_date('13/07/2018','dd/mm/yyyy'), 46, 7);
insert into alquiler (alquiler_id, folio, fecha_inicio, fecha_fin,usuario_id, vivienda_id) 
	values (seq_alquiler.nextval, '51111003', to_date('10/12/2018','dd/mm/yyyy'), to_date('20/12/2018','dd/mm/yyyy'), 10, 9);
insert into alquiler (alquiler_id, folio, fecha_inicio, fecha_fin,  usuario_id, vivienda_id) 
	values (seq_alquiler.nextval, '42449705', to_date('20/05/2019','dd/mm/yyyy'), to_date('20/07/2019','dd/mm/yyyy'), 35, 40);
insert into alquiler (alquiler_id, folio, fecha_inicio, fecha_fin, usuario_id, vivienda_id)
  values (seq_alquiler.nextval, '69639610', to_date('10/12/2018','dd/mm/yyyy'), to_date('30/12/2018','dd/mm/yyyy'), 31, 35);
insert into alquiler (alquiler_id, folio, fecha_inicio, fecha_fin, usuario_id, vivienda_id)
  values (seq_alquiler.nextval, '49854880', to_date('07/11/2018','dd/mm/yyyy'), to_date('07/12/2018','dd/mm/yyyy'), 12, 33);


--pago
--Para realizar inserciones en la tabla pago, se hace el cambio en la tabla vivienda_venta
update vivienda_venta
	set usuario_id=12
	where vivienda_id=23;
insert into pago (pago_id, fecha, importe, evidencia, vivienda_id) 
	values (seq_pago.nextval, to_date('06/29/2019','mm/dd/yyyy'), 942790.83, empty_blob(), 23);

update vivienda_venta
	set usuario_id=13
	where vivienda_id=28;
insert into pago (pago_id, fecha, importe, evidencia, vivienda_id) 
	values (seq_pago.nextval, to_date('04/27/2022','mm/dd/yyyy'), 217336.23, empty_blob(), 28);

update vivienda_venta
	set usuario_id=14
	where vivienda_id=27;
insert into pago (pago_id, fecha, importe, evidencia, vivienda_id) 
	values (seq_pago.nextval, to_date('05/09/2020','mm/dd/yyyy'), 813116.03, empty_blob(), 27);

update vivienda_venta
	set usuario_id=15
	where vivienda_id=26;	
insert into pago (pago_id, fecha, importe, evidencia, vivienda_id) 
	values (seq_pago.nextval, to_date('01/16/2023','mm/dd/yyyy'), 62500, empty_blob(), 26);

insert into pago (pago_id, fecha, importe, evidencia, vivienda_id) 
	values (seq_pago.nextval, to_date('01/12/2024','mm/dd/yyyy'), 62500, empty_blob(), 26);

insert into pago (pago_id, fecha, importe, evidencia, vivienda_id) 
	values (seq_pago.nextval, to_date('11/20/2024','mm/dd/yyyy'), 62500, empty_blob(), 26);

insert into pago (pago_id, fecha, importe, evidencia, vivienda_id) 
	values (seq_pago.nextval, to_date('05/03/2025','mm/dd/yyyy'), 62500, empty_blob(), 26);

update vivienda_venta
	set usuario_id=12
	where vivienda_id=21;
insert into pago (pago_id, fecha, importe, evidencia, vivienda_id) 
	values (seq_pago.nextval, to_date('09/11/2023','mm/dd/yyyy'), 831140.27, empty_blob(), 21);


--Notificacion_vivienda
insert into notificacion_vivienda (notificacion_vivienda_id, numero_celular, notificacion_enviada, usuario_id, vivienda_id) 
	values (seq_notif.nextval, 7141499873, 0, 50, 6);
insert into notificacion_vivienda (notificacion_vivienda_id, numero_celular, notificacion_enviada, usuario_id, vivienda_id) 
	values (seq_notif.nextval, 9609631861, 0, 53, 2);
insert into notificacion_vivienda (notificacion_vivienda_id, numero_celular, notificacion_enviada, usuario_id, vivienda_id) 
	values (seq_notif.nextval, 8447335590, 1, 42, 7);
insert into notificacion_vivienda (notificacion_vivienda_id, numero_celular, notificacion_enviada, usuario_id, vivienda_id) 
	values (seq_notif.nextval, 9350028148, 1, 34, 1);
insert into notificacion_vivienda (notificacion_vivienda_id, numero_celular, notificacion_enviada, usuario_id, vivienda_id) 
	values (seq_notif.nextval, 6740940683, 1, 50, 5);
insert into notificacion_vivienda (notificacion_vivienda_id, numero_celular, notificacion_enviada, usuario_id, vivienda_id) 
	values (seq_notif.nextval, 8696915960, 0, 37, 8);
insert into notificacion_vivienda (notificacion_vivienda_id, numero_celular, notificacion_enviada, usuario_id, vivienda_id) 
	values (seq_notif.nextval, 4492524802, 1, 47, 9);
insert into notificacion_vivienda (notificacion_vivienda_id, numero_celular, notificacion_enviada, usuario_id, vivienda_id) 
	values (seq_notif.nextval, 5518288969, 0, 38, 4);

--vivienda_calificada
insert into vivienda_calificada (vivienda_calificada_id, calificacion, descripcion, fecha, alquiler_id) 
	values (seq_calif.nextval, 2.5, 'Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', to_date('10/25/2024','mm/dd/yyyy'), 1);
insert into vivienda_calificada (vivienda_calificada_id, calificacion, descripcion, fecha, alquiler_id) 
	values (seq_calif.nextval, 4.8, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy.', to_date('01/23/2025','mm/dd/yyyy'), 3);
insert into vivienda_calificada (vivienda_calificada_id, calificacion, descripcion, fecha, alquiler_id) 
	values (seq_calif.nextval, 9.9, 'Maecenas rhoncus aliquam lacus.', to_date('05/12/2023','mm/dd/yyyy'), 6);
insert into vivienda_calificada (vivienda_calificada_id, calificacion, descripcion, fecha, alquiler_id) 
	values (seq_calif.nextval, 9.1, 'Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus.', to_date('08/30/2022','mm/dd/yyyy'), 6);
insert into vivienda_calificada (vivienda_calificada_id, calificacion, descripcion, fecha, alquiler_id) 
	values (seq_calif.nextval, 2.7, 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit.', to_date('12/16/2023','mm/dd/yyyy'), 6);

--Mensaje
insert into mensaje (mensaje_id, titulo, cuerpo, leido, usuario_id, vivienda_id) 
	values (seq_msj.nextval, 'Donec posuere metus vitae ipsum.', 'Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 1, 24, 18);
insert into mensaje (mensaje_id, titulo, cuerpo, leido, usuario_id, vivienda_id) 
	values (seq_msj.nextval, 'Maecenas tincidunt lacus at velit.', 'Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst.', 0, 19, 37);
insert into mensaje (mensaje_id, titulo, cuerpo, leido, usuario_id, vivienda_id) 
	values (seq_msj.nextval, 'Mauris ullamcorper purus sit amet nulla.', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 1, 11, 11);
insert into mensaje (mensaje_id, titulo, cuerpo, leido, usuario_id, vivienda_id) 
	values (seq_msj.nextval, 'In est risus, auctor sed.', 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 0, 24, 15);
insert into mensaje (mensaje_id, titulo, cuerpo, leido, usuario_id, vivienda_id) 
	values (seq_msj.nextval, 'Integer ac leo.', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros.', 1, 25, 10);
insert into mensaje (mensaje_id, titulo, cuerpo, leido, usuario_id, vivienda_id) 
	values (seq_msj.nextval, 'Integer tincidunt ante vel ipsum.', 'Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.', 1, 28, 10);
insert into mensaje (mensaje_id, titulo, cuerpo, leido, usuario_id, vivienda_id) 
	values (seq_msj.nextval, 'Fusce posuere felis sed lacus.', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', 1, 19, 36);
insert into mensaje (mensaje_id, titulo, cuerpo, leido, usuario_id, vivienda_id) 
	values (seq_msj.nextval, 'Vestibulum rutrum rutrum neque.', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus.', 0, 56, 8);
insert into mensaje (mensaje_id, titulo, cuerpo, leido, usuario_id, vivienda_id) 
	values (seq_msj.nextval, 'Curabitur in libero ut massa.', 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', 1, 20, 33);
insert into mensaje (mensaje_id, titulo, cuerpo, leido, usuario_id, vivienda_id) 
	values (seq_msj.nextval, 'Lorem ipsum dolor sit amet.', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 0, 50, 25);

--Mensajes respuesta
insert into mensaje (mensaje_id, titulo, cuerpo, leido, usuario_id, vivienda_id, respuesta_mensaje_id) 
	values (seq_msj.nextval, 'Nulla justo.', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim.', 0, 33, 9, 2);
insert into mensaje (mensaje_id, titulo, cuerpo, leido, usuario_id, vivienda_id, respuesta_mensaje_id) 
	values (seq_msj.nextval, 'Suspendisse potenti.', 'Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus.', 0, 27, 40, 8);
insert into mensaje (mensaje_id, titulo, cuerpo, leido, usuario_id, vivienda_id, respuesta_mensaje_id) 
	values (seq_msj.nextval, 'In hac habitasse platea dictumst.', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy.', 0, 51, 35, 6);
insert into mensaje (mensaje_id, titulo, cuerpo, leido, usuario_id, vivienda_id, respuesta_mensaje_id) 
	values (seq_msj.nextval, 'Nam nulla.', 'Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 1, 44, 27, 11);
insert into mensaje (mensaje_id, titulo, cuerpo, leido, usuario_id, vivienda_id, respuesta_mensaje_id) 
	values (seq_msj.nextval, 'Fusce consequat.', 'Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 1, 34, 38, 1);

--IMAGEN se insertara hasta el uso de LOB's