/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  af.olivares10
 * Created: 03-abr-2017
 */
DELETE FROM FUNCIONENTITY_ARTISTAENTITY;
DELETE FROM REVIEWENTITY;
DELETE FROM CLIENTEENTITY;
DELETE FROM ENTRADAENTITY;
DELETE FROM CANCIONENTITY;
DELETE FROM DISCOENTITY;
DELETE FROM ARTISTAENTITY;
DELETE FROM FUNCIONENTITY;
DELETE FROM VENUEENTITY;
DELETE FROM FESTIVALENTITY;
DELETE FROM CIUDADENTITY;

insert into CIUDADENTITY (id, name) values (1001, 'Goim');
insert into CIUDADENTITY (id, name) values (1002, 'Kungsbacka');
insert into CIUDADENTITY (id, name) values (1003, 'Musina');
insert into CIUDADENTITY (id, name) values (1004, 'Frei Paulo');
insert into CIUDADENTITY (id, name) values (1005, 'Jiumen');

insert into FESTIVALENTITY (ID, FECHAFIN, FECHAINICIO, NOMBRE, CIUDADENTITY_ID,IMAGEN) values (1001, '2017-12-01', '2017-01-01', 'Lollapalooza' , 1001,'https://consequenceofsound.files.wordpress.com/2016/01/lollapalooza-2015.png');
insert into FESTIVALENTITY (ID, FECHAFIN, FECHAINICIO, NOMBRE, CIUDADENTITY_ID,IMAGEN) values (1002, '2017-12-01', '2017-01-01', 'Salsa al parque', 1002,'http://4.bp.blogspot.com/-1XOb4FGcvIo/UcuVi_oEu9I/AAAAAAAAErg/i3VhHH_g6ig/s1600/festival+salsa+al+parque.gif');
insert into FESTIVALENTITY (ID, FECHAFIN, FECHAINICIO, NOMBRE, CIUDADENTITY_ID,IMAGEN) values (1003, '2017-12-01', '2017-01-01', 'Woodstock', 1003,'https://pbs.twimg.com/profile_images/619207497883197440/j3kmzWJN.jpg');
insert into FESTIVALENTITY (ID, FECHAFIN, FECHAINICIO, NOMBRE, CIUDADENTITY_ID,IMAGEN) values (1004, '2017-12-01', '2017-01-01', 'Glastonburry', 1004,'http://cdn.glastonburyfestivals.co.uk/wp-content/themes/glasto/assets/gfx/glastonbury_festival_generic.png');
insert into FESTIVALENTITY (ID, FECHAFIN, FECHAINICIO, NOMBRE, CIUDADENTITY_ID,IMAGEN) values (1005, '2017-12-01', '2017-01-01', 'Coachella', 1005,'https://s-media-cache-ak0.pinimg.com/originals/90/47/3b/90473b91f75571e71468afcdb8fb42f5.jpg');

insert into VENUEENTITY (ID, CAPACIDADMAX, DIRECCION, NOMBRE, TIPO, CIUDADENTITY_ID, FESTIVALENTITY_ID, IMAGEN) values (1001, 201, '309 Claremont Court', 'Elmside', 'ABIERTO', 1001, 1001, 'http://www.cultura.ipn.mx/PublishingImages/2014/Espacios/Optimizadas/002---AUDITORIO-A.jpg');
insert into VENUEENTITY (ID, CAPACIDADMAX, DIRECCION, NOMBRE, TIPO, CIUDADENTITY_ID, FESTIVALENTITY_ID, IMAGEN) values (1002, 202, '60114 Fordem Drive', 'Carpenter', 'CUBIERTO', 1002, 1002, 'http://dceven.ufsc.br/files/2011/02/auditorio2_jpg.jpg');
insert into VENUEENTITY (ID, CAPACIDADMAX, DIRECCION, NOMBRE, TIPO, CIUDADENTITY_ID, FESTIVALENTITY_ID, IMAGEN) values (1003, 203, '9226 Namekagon Parkway', 'Bay', 'CUBIERTO', 1003, 1003, 'https://s3-sa-east-1.amazonaws.com/wwwmercadoec/items/sonido-y-amplificacin-profesional-djs-discomvil-tarimas-escenarios-para-eventos-0-0-1.jpg');
insert into VENUEENTITY (ID, CAPACIDADMAX, DIRECCION, NOMBRE, TIPO, CIUDADENTITY_ID, FESTIVALENTITY_ID, IMAGEN) values (1004, 204, '63077 Fair Oaks Hill', 'Randy', 'CUBIERTO', 1004, 1004, 'https://s-media-cache-ak0.pinimg.com/736x/bd/ce/8e/bdce8e9a495c2e7548c13c39af9d1d62.jpg');
insert into VENUEENTITY (ID, CAPACIDADMAX, DIRECCION, NOMBRE, TIPO, CIUDADENTITY_ID, FESTIVALENTITY_ID, IMAGEN) values (1005, 205, '47 Welch Terrace', 'Mockingbird', 'ABIERTO', 1005, 1005, 'http://www.estructurasvt.com.ar/altarimasogradasi/alquileractosmas.jpg');

insert into FUNCIONENTITY (ID, DURACION, ENTRADASDISPONIBLES, ESPAGA, FECHA, FESTIVALENTITY_ID, VENUEENTITY_ID, IMAGEN) values (1001, 110, 201, 1, '2017-04-21', 1001, 1001, 'http://thisnewband.com/wp-content/uploads/2015/09/IMG_7540.jpg');
insert into FUNCIONENTITY (ID, DURACION, ENTRADASDISPONIBLES, ESPAGA, FECHA, FESTIVALENTITY_ID, VENUEENTITY_ID, IMAGEN) values (1002, 120, 202, 1, '2017-04-21', 1002, 1002, 'http://thisnewband.com/wp-content/uploads/2015/09/IMG_7540.jpg');
insert into FUNCIONENTITY (ID, DURACION, ENTRADASDISPONIBLES, ESPAGA, FECHA, FESTIVALENTITY_ID, VENUEENTITY_ID, IMAGEN) values (1003, 130, 203, 0, '2017-04-21', 1003, 1003, 'http://img2.thejournal.ie/inline/1334434/original/?width=630&version=1334434');
insert into FUNCIONENTITY (ID, DURACION, ENTRADASDISPONIBLES, ESPAGA, FECHA, FESTIVALENTITY_ID, VENUEENTITY_ID, IMAGEN) values (1004, 140, 204, 0, '2017-04-21', 1004, 1004, 'http://hot94.fm/wp-content/uploads/2016/12/Rawayana730.gif');
insert into FUNCIONENTITY (ID, DURACION, ENTRADASDISPONIBLES, ESPAGA, FECHA, FESTIVALENTITY_ID, VENUEENTITY_ID, IMAGEN) values (1005, 150, 205, 0, '2017-04-21', 1005, 1005, 'https://s-media-cache-ak0.pinimg.com/564x/0b/1b/3f/0b1b3f8c262603c0ed91073356963fa6.jpg');
insert into FUNCIONENTITY (ID, DURACION, ENTRADASDISPONIBLES, ESPAGA, FECHA, FESTIVALENTITY_ID, VENUEENTITY_ID, IMAGEN) values (1006, 110, 201, 1, '2017-05-21', 1001, 1001, 'https://scontent-dft4-2.xx.fbcdn.net/v/t1.0-9/16142757_207642886367238_7745917909667270993_n.jpg?oh=cb8a7e0c1432f6c3109598ada3b3ca7c&oe=596A20BB');

insert into ARTISTAENTITY (ID, GENERO, NOMBRE, TRAYECTORIA, IMAGEN) values (1001, 'ROCK', 'Led zepellin', 'monetize magnetic relationships', 'http://img.wennermedia.com/social/led-zeppelin-bbc-album-review-fb72cd94-408c-4600-a911-f5a4f5d4730c.jpg');
insert into ARTISTAENTITY (ID, GENERO, NOMBRE,  TRAYECTORIA, IMAGEN) values (1002, 'ELECTRONICA', 'Skrillex',  'expedite granular technologies', 'http://www.revolution935.com//wp-content/uploads/2016/01/skrillex-headshot.jpg');
insert into ARTISTAENTITY (ID, GENERO, NOMBRE,   TRAYECTORIA, IMAGEN) values (1003, 'ELECTRONICA', 'DeadMau5',   'mesh enterprise networks', 'http://www.billboard.com/files/media/deadmau5-press-photo-2016-billboard-1548.jpg');
insert into ARTISTAENTITY (ID, GENERO, NOMBRE,   TRAYECTORIA, IMAGEN) values (1004, 'REGGAE', 'Dread Mar I',   'enhance e-business bandwidth', 'https://pbs.twimg.com/profile_images/800565248650571776/BhndJ8Rr.jpg');
insert into ARTISTAENTITY (ID, GENERO, NOMBRE,   TRAYECTORIA, IMAGEN) values (1005, 'ELECTRONICA', 'Knife Party',   'whiteboard interactive infomediaries', 'https://lh3.googleusercontent.com/-BhJrGzQLCa8/AAAAAAAAAAI/AAAAAAAAAA0/2Gn2_MDL1HM/photo.jpg');

insert into CLIENTEENTITY (USUARIO, ABONO, DOCUMENTO, NOMBRE, REGISTRADOBLOG, TIPODOCUMENTO) values ('1001', 1, '1001', 'Carlos', 0, 'TI');
insert into CLIENTEENTITY (USUARIO, ABONO, DOCUMENTO, NOMBRE, REGISTRADOBLOG, TIPODOCUMENTO) values ('1002', 2, '1002', 'Richard', 0, 'CC');
insert into CLIENTEENTITY (USUARIO, ABONO, DOCUMENTO, NOMBRE, REGISTRADOBLOG, TIPODOCUMENTO) values ('1003', 3, '1003', 'Thomas', 0, 'CC');
insert into CLIENTEENTITY (USUARIO, ABONO, DOCUMENTO, NOMBRE, REGISTRADOBLOG, TIPODOCUMENTO) values ('1004', 4, '1004', 'Angela', 0, 'TI');
insert into CLIENTEENTITY (USUARIO, ABONO, DOCUMENTO, NOMBRE, REGISTRADOBLOG, TIPODOCUMENTO) values ('1005', 5, '1005', 'Julie', 1, 'TI');

insert into REVIEWENTITY (ID, DESCRIPCION, CALIFICACION, FECHA, CLIENTE_USUARIO, FUNCION_ID) values (1001, 'Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', 1, '2017-04-01', '1001', 1001);
insert into REVIEWENTITY (ID, DESCRIPCION, CALIFICACION, FECHA, CLIENTE_USUARIO, FUNCION_ID) values (1002, 'Mauris lacinia sapien quis libero.', 2, '2017-04-01', '1002', 1002);
insert into REVIEWENTITY (ID, DESCRIPCION, CALIFICACION, FECHA, CLIENTE_USUARIO, FUNCION_ID) values (1003, 'Nullam varius.', 3, '2017-04-01', '1003', 1003);
insert into REVIEWENTITY (ID, DESCRIPCION, CALIFICACION, FECHA, CLIENTE_USUARIO, FUNCION_ID) values (1004, 'Proin eu mi.', 4, '2017-04-01', '1004', 1004);
insert into REVIEWENTITY (ID, DESCRIPCION, CALIFICACION, FECHA, CLIENTE_USUARIO, FUNCION_ID) values (1005, 'Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 5, '2017-04-01', '1005', 1005);


insert into DISCOENTITY (ID, NOMBRE, ARTISTAENTITY_ID, IMAGEN) values (1001, 'Led Zeppelin (1969)', 1001, 'https://www.rock.com/assets/products/60626/large/led-zeppelin-i-album-cover-sticker-s1506.jpg');
insert into DISCOENTITY (ID, NOMBRE, ARTISTAENTITY_ID, IMAGEN) values (1002, 'Bangarang', 1002, 'https://upload.wikimedia.org/wikipedia/en/4/46/Bangarang_cover.jpg');
insert into DISCOENTITY (ID, NOMBRE, ARTISTAENTITY_ID, IMAGEN) values (1003, '4X4=12 (2010)', 1003, 'http://www.themusicninja.com/wp-content/uploads/2010/12/deadmau5-4x412-review.jpg');
insert into DISCOENTITY (ID, NOMBRE, ARTISTAENTITY_ID, IMAGEN) values (1004, 'En el sendero (2014)', 1004, 'http://k31.kn3.net/taringa/F/9/3/8/7/D/BraaGranate/1E7.png');
insert into DISCOENTITY (ID, NOMBRE, ARTISTAENTITY_ID, IMAGEN) values (1005, 'Rage valley (2012)', 1005, 'https://upload.wikimedia.org/wikipedia/en/7/79/Rage_Valley_Album_Art.jpg');


insert into FUNCIONENTITY_ARTISTAENTITY (ARTISTAS_ID, FUNCIONES_ID) values (1001, 1001);
insert into FUNCIONENTITY_ARTISTAENTITY (ARTISTAS_ID, FUNCIONES_ID) values (1002, 1002);
insert into FUNCIONENTITY_ARTISTAENTITY (ARTISTAS_ID, FUNCIONES_ID) values (1003, 1003);
insert into FUNCIONENTITY_ARTISTAENTITY (ARTISTAS_ID, FUNCIONES_ID) values (1004, 1004);
insert into FUNCIONENTITY_ARTISTAENTITY (ARTISTAS_ID, FUNCIONES_ID) values (1005, 1005);

insert into CANCIONENTITY (ID, DURACION, NOMBRE, DISCOENTITY_ID) values (1001, 3, 'Freeman', 1001);
insert into CANCIONENTITY (ID, DURACION, NOMBRE, DISCOENTITY_ID) values (1002, 4, 'Bennett', 1002);
insert into CANCIONENTITY (ID, DURACION, NOMBRE, DISCOENTITY_ID) values (1003, 5, 'Hunter', 1003);
insert into CANCIONENTITY (ID, DURACION, NOMBRE, DISCOENTITY_ID) values (1004, 6, 'Watkins', 1004);
insert into CANCIONENTITY (ID, DURACION, NOMBRE, DISCOENTITY_ID) values (1005, 7, 'Collins', 1005);



