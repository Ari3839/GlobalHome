--@Autor(es): Lázaro Martínez A. Ariadna y Santana Sánchez M. Yvette
--@Fecha creación: 02/02/2020
--@Descripción: Prueba del Procedimiento almacenado para insertar en las tablas relacionadas a vivienda

set serveroutput on
--Vivienda
begin
	--Viviendas para vacacionar
	p_agrega_vivienda(9.0578504, -72.233418, 457, '5664 Susan Circle',
    'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.',
     0, 0, 1, 31, null, null, null, 1000.50, 31, 1000, null, null, null, '123');
	p_agrega_vivienda(53.3758568, -3.1605843, 564, '66 Green Ridge Avenue', 
		'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 
		0, 0, 1, 11, null, null, null, 100, 100, 5000, null, null, null, '345');
	p_agrega_vivienda(30.221809, 121.399164, 501, '909 Center Point', 
		'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.',
		 0, 0, 1, 21, null, null, null, 2000, 365, 1500, null, null, null, '1');
	p_agrega_vivienda(25.112046, 99.161761, 936, '5957 Orin Center', 
		'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 
		0, 0, 1, 25, null, null, null, 5000.5, 7, 1000, null, null, null, '12345');
	p_agrega_vivienda(35.744798, 96.4077358, 758, '0 Emmet Lane', 
		'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 
		0, 0, 1, 17, null, null, null, 1200, 111, 1111.11, null, null, null, '12');
	p_agrega_vivienda(31.695648, 115.431153, 799, '5374 Eagle Crest Way', 
		'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.', 
		0, 0, 1, 39, null, null, null, 100, 100, 1800, null, null, null, '135');
	p_agrega_vivienda(-1.1939843, 34.6165033, 465, '69594 Ruskin Street', 
		'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 
		0, 0, 1, 29, null, null, null, 999, 10, 3333.33, null, null, null, '24');
	p_agrega_vivienda(30.063748, 113.562835, 333, '48935 Lindbergh Lane', 
		'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 
		0, 0, 1, 33, null, null, null, 1050, 11, 900, null, null, null, '1234');
	p_agrega_vivienda(45.5246959, 13.8311208, 299, '37246 Helena Place', 
		'In congue. Etiam justo. Etiam pretium iaculis justo.', 
		0, 0, 1, 23, null, null, null, 1001, 630, 1050, null, null, null, '34');
	p_agrega_vivienda(55.7677139, 38.132545, 254, '0826 Sunfield Road', 
		'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus.', 
		0, 0, 1, 19, null, null, null, 1000.55, 310, 1110, null, null, null, '5');

	
	--Viviendas en renta
	p_agrega_vivienda(-17.87665, 30.67750, 749, '4048 Knutson Pass', 
		'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 
		0, 1, 0, 28, 1000, 'MARTES','123456789101234567887654321098765432',null,null,null,null,null,null,'1');
	p_agrega_vivienda(-6.9707, 111.3203, 991, '51622 Dakota Lane', 
		'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 
		0, 1, 0, 18, 1100, 'MIERCOLES','123456789101234569',null,null,null,null,null,null,'13');
  p_agrega_vivienda(13.4291, 123.279, 637, '3506 Sutteridge Crossing', 
		'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 
		0, 1, 0, 38, 10000, 'JUEVES','976543210987654321',null,null,null,null,null,null,'354');
  p_agrega_vivienda(-17.14675, -46.98375, 14, '6 Center Pass', 
		'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 
		0, 1, 0, 12, 15000, 'VIERNES','111111111111111111',null,null,null,null,null,null,'42');
	p_agrega_vivienda(16.99052, 121.6093, 674, '41729 Warbler Drive', 
		'In congue. Etiam justo. Etiam pretium iaculis justo.', 
		0, 1, 0, 45, 13000, 'SABADO','222222222222222222',null,null,null,null,null,null,'12345');
	p_agrega_vivienda(41.58235, -8.46332, 679, '324 Utah Place', 
		'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui.', 
		0, 1, 0, 35, 1000, 'DOMINGO','111111111111111112222222222222222223',null,null,null,null,null,null,'3');
	p_agrega_vivienda(50.62863, 13.87153, 710, '55704 Sommers Park', 
		'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 
		0, 1, 0, 25, 18000, 'LUNES','222222222222222225',null,null,null,null,null,null,'54');
	p_agrega_vivienda(50.07069, 25.1942, 728, '3137 Browning Crossing', 
		'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 
		0, 1, 0, 40, 1300.5, 'SABADO','987123465378921345098712345673546784',null,null,null,null,null,null,'4');
	p_agrega_vivienda(-6.242, 106.64673, 635, '4 Superior Plaza', 
		'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 
		0, 1, 0, 31, 1333.33, 'MIERCOLES','11111122222233333',null,null,null,null,null,null,'12345');
	p_agrega_vivienda(54.1522, 74.625, 377, '12734 Lunder Center', 
		'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 
		0, 1, 0, 48, 3000.99, 'SABADO','22222233333111111444444555555666666777777888888999999',null,null,null,null,null,null,'1');
	
	
  --Viviendas en venta
	p_agrega_vivienda(38.7894166, -9.2036136, 143, '744 Fairfield Circle', 
		'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 
		1, 0, 0, 15, null,null,null,null,null,null,'539255686735367997','56909141056973467274',15000,'2');
	p_agrega_vivienda(23.074045, 112.76965, 709, '9 Emmet Park', 
		'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl.', 
		1, 0, 0, 25, null,null,null,null,null,null,'887168730354422932','88716873035442293200',25000,'24');
	p_agrega_vivienda(6.6999998, 124.7833328, 245, '78 Merry Plaza', 
		'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 
		1, 0, 0, 35, null,null,null,null,null,null,'984087129106803901','00984087129106803901',35500.5,'14');
	p_agrega_vivienda(43.5211998, 16.5578656, 550, '3 Gina Plaza', 
		'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 
		1, 0, 0, 13, null,null,null,null,null,null,'993645270010920758','11993645270010920758',45000.99,'135');
	p_agrega_vivienda(46.6328109, -1.811786, 761, '27 Village Place', 
		'Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 
		1, 0, 0, 23, null,null,null,null,null,null,'602096488002195640','66602096488002195640',500000,'1');
	p_agrega_vivienda(41.5752196, 26.2288126, 606, '7 Pepper Wood Hill', 
		'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 
		1, 0, 0, 33, null,null,null,null,null,null,'358726359206846841','33358726359206846841',250000,'2');
	p_agrega_vivienda(33.6682421, -117.7659237, 215, '18 Fuller Trail', 
		'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 
		1, 0, 0, 43, null,null,null,null,null,null,'300812533566941318','33300812533566941318',77000.77,'3');
	p_agrega_vivienda(-39.6415998, -72.3370089, 776, '07 Anniversary Road', 
		'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 
		1, 0, 0, 44, null,null,null,null,null,null,'738338357008255084','77738338357008255084',55000.55,'4');
	p_agrega_vivienda(36.9564827, 118.1147469, 658, '0 Kedzie Avenue', 
		'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 
		1, 0, 0, 45, null,null,null,null,null,null,'409220004137792738','44409220004137792738',99000.99,'5');
	p_agrega_vivienda(17.8261143, 121.714099, 521, '132 Trailsway Trail', 
		'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 
		1, 0, 0, 56, null,null,null,null,null,null,'209663414202187408','22096634142021874088',99999.88,'54321');

	
	--Viviendas en renta y para vacacionar
	p_agrega_vivienda(123.94441,107.562350,246, '82 Bay Way', 
		'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 
		0, 1, 1, 11, 952579.34, 'LUNES', '454579745746593309',717599.0, 2848, 3650.12, null,null,null,'2');
  p_agrega_vivienda(16.4498, 107.5623501, 771, '26570 Mccormick Avenue', 
		'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus.', 
		0, 1, 1, 21, 886079.33, 'MARTES', '159019256301059301', 511162.86, 3151, 4223.19, null,null,null,'1');
	p_agrega_vivienda(48.1392924, -1.9439194, 262, '9 Spaight Way', 
		'Fusce consequat. Nulla nisl. Nunc nisl.', 
		0, 1, 1, 31, 659557.0, 'MIERCOLES','161052933458939069', 576024.15, 3050, 6969.25, null,null,null, '123');
	p_agrega_vivienda(-6.2258, 106.7987, 983, '6203 Haas Drive', 
		'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 
		0, 1, 1, 41, 156371.24,'JUEVES', '813573129829078166', 319803.63, 3870, 8983.24, null,null,null, '42');
	p_agrega_vivienda(20.7337728, 105.7704551, 792, '3531 American Ash Terrace', 
		'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 
		0, 1, 1, 22, 633005.96, 'VIERNES', '202667283965556763', 670950.95, 4252, 9111.61, null,null,null, '13');
	p_agrega_vivienda(32.5887159, 74.5022234, 181, '5062 Rowland Hill', 
		'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 
		0, 1, 1, 32, 271466.74,'SABADO', '901229791839635808', 671865.34, 9127, 3092.41, null,null,null, '251');
	p_agrega_vivienda(34.8383901, 137.0770574, 217, '2210 Crescent Oaks Court', 
		'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 
		0, 1, 1, 42, 255944.14, 'DOMINGO','995525217731593314', 199238.75, 9674, 5391.71, null,null,null, '12345');
	p_agrega_vivienda(-31.5469052, 29.0213682, 138, '1 Lighthouse Bay Point', 
		'Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 
		0, 1, 1, 17, 639456.2,'LUNES' ,'279114353788480480', 313914.63, 9311, 8949.94, null,null,null, '25');
	p_agrega_vivienda(42.2020702, 25.3248541, 396, '4 Scoville Trail', 
		'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 
		0, 1, 1, 27, 174255.62,'MARTES' ,'145522528744808581601718032818460958', 704623.78, 1834, 2269.07, null,null,null, '5');
	p_agrega_vivienda(44.6962724, 39.8024873, 12, '8757 Melvin Avenue', 
		'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 
		0, 1, 1, 37, 611466.44,'MIERCOLES' , '109275916033573627193153302298382057268282783110895415', 687668.65, 5309, 1049.99, null,null,null,'52');
	--Si se ejecuto todo correctamente
	commit;

	exception
	  when others then
      dbms_output.put_line('Algo salió mal, se hará rollback');
	    --algo salio mal, se aplica rollback
	    rollback;
end;
/
