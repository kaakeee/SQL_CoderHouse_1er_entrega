CREATE DATABASE IF NOT EXISTS PYME_STICKERS; 
USE PYME_STICKERS;


CREATE TABLE IF NOT EXISTS Clientes (                             /*datos del cliente*/
cuit_cuil varchar(30) NOT NULL UNIQUE PRIMARY KEY,   /*lo cambie a varchar*/
email varchar(40) not null,
telefono varchar(30),  /*lo cambie a varchar*/
nombre VARCHAR(40)
);

CREATE TABLE IF NOT EXISTS Proveedores (
id_proveedor INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
email VARCHAR(50),
telefono VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Productos (
id_modelo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
id_proveedor INT NOT NULL,
categoria VARCHAR(20) NOT NULL,
FOREIGN KEY (id_proveedor) REFERENCES Proveedores (id_proveedor)
);

CREATE TABLE IF NOT EXISTS Pedidos (
id_pedido INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
cuit_cuil varchar(30) NOT NULL, /* elimine lo unico, esto provocaba que un cliente solo pueda comprar 1 vez  */
id_modelo INT NOT NULL, /* lo cambie a no es unico*/ 
cantidad DECIMAL(10,2) NOT NULL,
FOREIGN KEY (cuit_cuil) REFERENCES Clientes(cuit_cuil),
FOREIGN KEY (id_modelo) REFERENCES Productos (id_modelo)
);

CREATE TABLE IF NOT EXISTS Facturacion (
id_factura INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
cuit_cuil varchar(30) NOT NULL,  /* elimine lo unico, esto provocaba que un cliente solo pueda comprar 1 vez  */
total_compra DECIMAL(10,2),
FOREIGN KEY (cuit_cuil) REFERENCES Clientes(cuit_cuil)
);

CREATE TABLE IF NOT EXISTS Envios (
numero_de_seguimiento VARCHAR(60) NOT NULL PRIMARY KEY, /* se aumento en 10*/
id_pedido INT NOT NULL,
direccion VARCHAR(50) NOT NULL,  /* se aumento en 10*/
provincia VARCHAR(50) NOT NULL,  /* se aumento en 10*/
pais VARCHAR(30) NOT NULL, /*se cambio estado por pais*/
FOREIGN KEY (id_pedido) REFERENCES Pedidos (id_pedido)
);

insert into Clientes (cuit_cuil, email, telefono, nombre) 
values  
 ('770-89-9991', 'csoane0@census.gov', '7207130279', 'Cyndy Soane'),
 ('346-74-2607', 'eheball1@oaic.gov.au', '1713552116', 'Ewan Heball'),
 ('416-88-2651', 'rkilgannon2@istockphoto.com', '5018705876', 'Rutger Kilgannon'),
 ('304-56-9708', 'tmatherson3@ucsd.edu', '5726484436', 'Tanner Matherson'),
 ('568-84-8772', 'zstoodale4@netlog.com', '1509387412', 'Zonda Stoodale'),
 ('331-02-2388', 'lcleverly5@dot.gov', '2207716953', 'Lottie Cleverly'),
 ('594-15-3210', 'tbenito6@canalblog.com', '4188702524', 'Tiphany Benito'),
 ('311-32-3654', 'ceyckelberg7@google.ru', '9758000977', 'Chane Eyckelberg'),
 ('446-82-9519', 'kmorfield8@domainmarket.com', '2841022773', 'Korella Morfield'),
 ('743-87-4750', 'emewha9@google.pl', '3374998313', 'Evelin Mewha'),
 ('116-22-4326', 'obichenera@deliciousdays.com', '4548480390', 'Obediah Bichener'),
 ('214-24-6116', 'alaurantb@vimeo.com', '3729557718', 'Aube Laurant'),
 ('760-02-8167', 'dburnyeatc@smugmug.com', '6234934269', 'Dorthy Burnyeat'),
 ('102-07-6444', 'cmcguffogd@exblog.jp', '5569482008', 'Clevey McGuffog'),
 ('787-84-3855', 'akellere@constantcontact.com', '3694641173', 'Arthur Keller'),
 ('484-50-7886', 'awillattf@hhs.gov', '9913264316', 'Aleda Willatt'),
 ('327-46-3008', 'kchongg@jugem.jp', '8115360074', 'Krisha Chong'),
 ('212-79-4250', 'kantyukhinh@hubpages.com', '0547936885', 'Koressa Antyukhin'),
 ('490-11-5392', 'sfarrawayi@com.com', '5566709966', 'Shirleen Farraway'),
 ('215-26-8323', 'rkailj@skype.com', '7499630471', 'Reta Kail'),
 ('213-52-0744', 'tkyttork@mlb.com', '3807082956', 'Thatcher Kyttor'),
 ('882-78-0674', 'wbendal@addtoany.com', '3915751472', 'Wilona Benda'),
 ('109-21-2327', 'hgillogleym@virginia.edu', '4477603223', 'Hamel Gillogley'),
 ('393-81-2531', 'nvidyapinn@guardian.co.uk', '4517180638', 'Nissa Vidyapin'),
 ('158-17-8818', 'lastlatto@admin.ch', '6920556375', 'Leona Astlatt'),
 ('587-57-8300', 'ddurnellp@bbb.org', '2171331828', 'Dina Durnell'),
 ('478-01-0868', 'ahaydnq@liveinternet.ru', '6213424423', 'Athena Haydn'),
 ('853-65-0420', 'fknowlysr@samsung.com', '6604440915', 'Freida Knowlys'),
 ('622-81-6077', 'mlittledykes@whitehouse.gov', '3411658150', 'Melva Littledyke'),
 ('360-88-3656', 'hpatzeltt@gizmodo.com', '2377744745', 'Humfrid Patzelt'),
 ('120-69-2099', 'aokieranu@wp.com', '1829606158', 'Allistir O''Kieran'),
 ('741-32-0749', 'cshewanv@europa.eu', '5863732261', 'Corella Shewan'),
 ('237-82-8770', 'gtroakew@over-blog.com', '5700695030', 'Gerry Troake'),
 ('272-64-2475', 'tmaclachlanx@edublogs.org', '1574143425', 'Titus MacLachlan'),
 ('154-61-3297', 'rbagleyy@redcross.org', '8483138107', 'Roxi Bagley'),
 ('628-23-5311', 'wbredez@statcounter.com', '2209593352', 'Waring Brede'),
 ('251-18-2091', 'mlugton10@google.ca', '0584112556', 'Muire Lugton'),
 ('326-09-1987', 'dgavigan11@e-recht24.de', '1150669233', 'Daryl Gavigan'),
 ('572-95-3181', 'rgillfillan12@reuters.com', '7575023348', 'Reinold Gillfillan'),
 ('361-56-1069', 'gwordesworth13@microsoft.com', '5394009988', 'Graig Wordesworth'),
 ('717-43-6792', 'kredgate14@weebly.com', '0786886609', 'Kerwinn Redgate'),
 ('131-66-6433', 'bhallowes15@chron.com', '3664915402', 'Bess Hallowes'),
 ('428-34-6581', 'bhaverty16@timesonline.co.uk', '3414388766', 'Burgess Haverty'),
 ('562-38-4763', 'ojarratt17@mit.edu', '6729733012', 'Olivia Jarratt'),
 ('437-79-3252', 'dtorricina18@noaa.gov', '9261544185', 'Deina Torricina'),
 ('349-66-7233', 'espradbery19@elpais.com', '6445811388', 'Eulalie Spradbery'),
 ('124-51-6982', 'bboothebie1a@examiner.com', '6278264331', 'Brook Boothebie'),
 ('250-81-3132', 'rduetschens1b@berkeley.edu', '9124786276', 'Ronda Duetschens'),
 ('244-60-9610', 'hmorten1c@senate.gov', '2853780864', 'Hilario Morten'),
 ('128-38-5303', 'cdikes1d@mapquest.com', '6578847154', 'Carena Dikes'),
 ('350-10-9929', 'lkett1e@illinois.edu', '8811299055', 'Lennard Kett'),
 ('399-94-5814', 'lgrewer1f@geocities.com', '2487525967', 'L,urette Grewer'),
 ('832-49-0001', 'ewillavoys1g@networkadvertising.org', '0030462711', 'Eveleen Willavoys'),
 ('104-14-2862', 'plowen1h@ow.ly', '5202163037', 'Pieter Lowen'),
 ('312-83-8235', 'kphilpin1i@alibaba.com', '2126291448', 'Krystalle Philpin'),
 ('430-73-3159', 'ssharphouse1j@canalblog.com', '7287695723', 'Sofie Sharphouse'),
 ('273-37-2452', 'kfritschmann1k@webmd.com', '1643564757', 'Kelci Fritschmann'),
 ('169-84-9880', 'isandon1l@sourceforge.net', '0019918534', 'Ilario Sandon'),
 ('888-64-3651', 'lgheraldi1m@github.com', '0223423424', 'Lorrie Gheraldi'),
 ('753-43-9140', 'bthys1n@toplist.cz', '0010580913', 'Bettye Thys'),
 ('814-14-4162', 'rshawl1o@twitpic.com', '4365526766', 'Rutger Shawl'),
 ('823-87-9302', 'dchesworth1p@parallels.com', '9264661298', 'Dianemarie Chesworth'),
 ('844-95-4440', 'kmeadus1q@bravesites.com', '9949535662', 'Katherina Meadus'),
 ('516-47-3629', 'dvoase1r@ft.com', '0826788521', 'Devora Voase'),
 ('889-87-8851', 'boneill1s@elegantthemes.com', '8386249005', 'Burt O''Neill'),
 ('612-19-0558', 'blaite1t@biblegateway.com', '6627661616', 'Boothe Laite'),
 ('678-34-5332', 'jsorro1u@ow.ly', '8512934646', 'Joachim Sorro'),
 ('792-15-6345', 'rweekly1v@dot.gov', '6050266247', 'Ricoriki Weekly'),
 ('669-66-7577', 'hpach1w@livejournal.com', '2051709793', 'Heddi Pach'),
 ('455-75-4939', 'wkelemen1x@gmpg.org', '7861699196', 'Wallie Kelemen'),
 ('336-68-3126', 'jgymlett1y@163.com', '9862080515', 'Jedediah Gymlett'),
 ('826-11-7194', 'kluckey1z@skyrock.com', '3796494528', 'Kristel Luckey'),
 ('271-73-7810', 'vrolingson20@theguardian.com', '2261568819', 'Vinny Rolingson'),
 ('603-10-1384', 'aleavey21@lulu.com', '0795544235', 'Abby Leavey'),
 ('361-79-5659', 'ceustanch22@naver.com', '8314808520', 'Chelsy Eustanch'),
 ('110-12-2796', 'bbanishevitz23@edublogs.org', '3267038065', 'Blanche Banishevitz'),
 ('776-61-9836', 'eestrella24@bandcamp.com', '5644233227', 'Emmerich Estrella'),
 ('137-88-7763', 'akrzyzaniak25@csmonitor.com', '9930122826', 'Alonzo Krzyzaniak'),
 ('336-51-4048', 'pkhosa26@odnoklassniki.ru', '4056206503', 'Pippa Khosa'),
 ('570-58-6467', 'gmosconi27@springer.com', '6698285595', 'Genni Mosconi'),
 ('199-92-9998', 'cfahy28@gnu.org', '3573848656', 'Conrado Fahy'),
 ('302-12-9812', 'pfrancie29@ft.com', '0702523577', 'Pearline Francie'),
 ('551-70-1681', 'tbuckwell2a@trellian.com', '4649167167', 'Tuckie Buckwell'),
 ('862-68-4602', 'rgowthorpe2b@dell.com', '2419837452', 'Rufus Gowthorpe'),
 ('703-41-8025', 'crubenovic2c@netscape.com', '0351085181', 'Clotilda Rubenovic'),
 ('663-93-7972', 'ashorthouse2d@amazonaws.com', '1193266491', 'Atlanta Shorthouse'),
 ('835-91-0249', 'cofficer2e@howstuffworks.com', '4456653191', 'Chrissy Officer'),
 ('391-41-1784', 'ehapps2f@ftc.gov', '9733869589', 'Ev Happs'),
 ('574-94-1119', 'npastor2g@admin.ch', '9401922004', 'Nickolaus Pastor'),
 ('876-81-3644', 'gtheml2h@usgs.gov', '9952921403', 'Gisela Theml'),
 ('166-09-9517', 'gmckevin2i@opera.com', '1336100982', 'Glenda McKevin'),
 ('794-54-3789', 'jiorns2j@ucla.edu', '5075135234', 'Justis Iorns'),
 ('182-33-3558', 'npilfold2k@php.net', '4839368309', 'Nixie Pilfold'),
 ('746-99-3933', 'srogger2l@ihg.com', '4767322529', 'Shandee Rogger'),
 ('721-20-3815', 'mlantiffe2m@berkeley.edu', '3321850559', 'Muriel Lantiffe'),
 ('204-79-6543', 'eioannou2n@comsenz.com', '4481974346', 'Emmalee Ioannou'),
 ('575-54-1970', 'bblackborne2o@spiegel.de', '5347280727', 'Bertram Blackborne'),
 ('108-10-0386', 'pthrustle2p@si.edu', '6203384453', 'Petronilla Thrustle'),
 ('329-63-1279', 'mluckhurst2q@nymag.com', '0862210720', 'Mychal Luckhurst'),
 ('214-49-7340', 'dduignan2r@deliciousdays.com', '0965962725', 'Druci Duignan');



insert into proveedores (id_proveedor, email, telefono) 
values
 (1, 'spoppy0@lulu.com', '2280673827'),
 (2, 'hbox1@toplist.cz', '4792888468'),
 (3, 'flowings2@netlog.com', '0831611618'),
 (4, 'ngorsse3@dyndns.org', '8970037233'),
 (5, 'soliddy4@kickstarter.com', '1644055384'),
 (6, 'mgarmey5@discovery.com', '1085555224'),
 (7, 'mhanna6@columbia.edu', '0626871964'),
 (8, 'tcleaves7@time.com', '2917566337'),
 (9, 'wscamadine8@phpbb.com', '4788645319'),
 (10, 'clermouth9@auda.org.au', '0602232538'),
 (11, 'ashirta@istockphoto.com', '9393675317'),
 (12, 'ecorrisonb@1688.com', '1736867210'),
 (13, 'mbalazinc@cam.ac.uk', '0292121822'),
 (14, 'berangyd@hibu.com', '6191001770'),
 (15, 'hkirkmane@is.gd', '9319156204'),
 (16, 'kkarolyf@imdb.com', '2760540812'),
 (17, 'gyashanovg@ft.com', '4931281133'),
 (18, 'jrobiouh@deviantart.com', '4089915295'),
 (19, 'rcattermulli@yandex.ru', '7181423851'),
 (20, 'dhuxhamj@guardian.co.uk', '6830856590'),
 (21, 'modempseyk@w3.org', '4058130571'),
 (22, 'modempseyl@cornell.edu', '6602147714'),
 (23, 'pgibbensm@google.nl', '7710312403'),
 (24, 'cohdirscolln@infoseek.co.jp', '7126664923'),
 (25, 'amcarthuro@1688.com', '3908360412'),
 (26, 'evistep@ameblo.jp', '6845395578'),
 (27, 'asabbatierq@macromedia.com', '4317945436'),
 (28, 'sbertomierr@studiopress.com', '0150019130'),
 (29, 'skybirds@google.co.uk', '2164427602'),
 (30, 'lrizzottot@symantec.com', '9894461743'),
 (31, 'divashchenkou@sciencedirect.com', '6286150013'),
 (32, 'eferbrachev@g.co', '5971258737'),
 (33, 'ldeacockw@google.com.br', '0651259770'),
 (34, 'bstobbesx@amazon.co.jp', '5533982434'),
 (35, 'rgabitisy@histats.com', '5420739704'),
 (36, 'etrimmingz@wordpress.com', '1993911219'),
 (37, 'eisley10@ycombinator.com', '0201676710'),
 (38, 'dlett11@icq.com', '2527978495'),
 (39, 'llandy12@epa.gov', '3683141565'),
 (40, 'chuby13@php.net', '4299124626'),
 (41, 'jolenechan14@disqus.com', '0846561336'),
 (42, 'akytter15@eventbrite.com', '6003933976'),
 (43, 'jbrandts16@twitter.com', '3663308995'),
 (44, 'jdesouza17@cnbc.com', '7639441528'),
 (45, 'mellissen18@japanpost.jp', '3290981509'),
 (46, 'esayle19@pen.io', '9912249836'),
 (47, 'kvignaux1a@wired.com', '0896514366'),
 (48, 'lfenby1b@intel.com', '2092148567'),
 (49, 'gbrevetor1c@dell.com', '4354804999'),
 (50, 'ketuck1d@google.fr', '8940896394'),
 (51, 'lyakuntzov1e@arizona.edu', '8772670630'),
 (52, 'thargrave1f@phpbb.com', '7090375625'),
 (53, 'thammer1g@alexa.com', '9521455233'),
 (54, 'dferronet1h@prlog.org', '0635525089'),
 (55, 'bsaphin1i@yolasite.com', '3560464897'),
 (56, 'tcanfield1j@skype.com', '8220937904'),
 (57, 'drabat1k@howstuffworks.com', '5806076156'),
 (58, 'rfeuell1l@biblegateway.com', '3830749953'),
 (59, 'mranking1m@tiny.cc', '4370736315'),
 (60, 'egarbett1n@ftc.gov', '8054081626'),
 (61, 'vorgen1o@loc.gov', '9898716096'),
 (62, 'mconeau1p@webeden.co.uk', '7251444674'),
 (63, 'wygou1q@google.co.jp', '1976296455'),
 (64, 'clahiff1r@mlb.com', '9497138881'),
 (65, 'mhorribine1s@zdnet.com', '2332254110'),
 (66, 'jcottel1t@cbslocal.com', '9248853013'),
 (67, 'osteedman1u@1688.com', '4803782415'),
 (68, 'fhamby1v@google.pl', '1150755911'),
 (69, 'amcfie1w@mozilla.com', '4119561305'),
 (70, 'wbeagley1x@house.gov', '6219843991'),
 (71, 'kjoney1y@netvibes.com', '9399212270'),
 (72, 'parnell1z@admin.ch', '5199969986'),
 (73, 'fnoar20@arizona.edu', '2221512227'),
 (74, 'hellif21@tinyurl.com', '1459584562'),
 (75, 'jhousam22@diigo.com', '2143890214'),
 (76, 'oanfosso23@godaddy.com', '9604733265'),
 (77, 'rwalder24@oracle.com', '7664631122'),
 (78, 'mmcphelim25@yelp.com', '8049301729'),
 (79, 'dbresman26@arizona.edu', '2570093556'),
 (80, 'stennewell27@opensource.org', '0574023313'),
 (81, 'mwoolstenholmes28@goo.gl', '6272620691'),
 (82, 'edashper29@cbc.ca', '0056651783'),
 (83, 'vmattheeuw2a@unblog.fr', '1098465318'),
 (84, 'rfettes2b@economist.com', '5089021368'),
 (85, 'ohodjetts2c@hp.com', '8409077787'),
 (86, 'kmichael2d@pen.io', '6111667289'),
 (87, 'dlevett2e@bloomberg.com', '9999690009'),
 (88, 'jcardenoso2f@ft.com', '0403777208'),
 (89, 'ekuschke2g@webnode.com', '5719705961'),
 (90, 'wpurslow2h@weibo.com', '8138082348'),
 (91, 'hparadyce2i@engadget.com', '6362335740'),
 (92, 'eramshay2j@utexas.edu', '4377783289'),
 (93, 'csylvaine2k@hao123.com', '8158298060'),
 (94, 'ocrier2l@smugmug.com', '8108710391'),
 (95, 'hissacson2m@telegraph.co.uk', '3401923072'),
 (96, 'lbraunfeld2n@businessinsider.com', '2384715755'),
 (97, 'sbachelor2o@weibo.com', '3318127140'),
 (98, 'mluciani2p@sphinn.com', '8827718664'),
 (99, 'lscamerdine2q@google.ru', '3449349791'),
 (100, 'lskace2r@tamu.edu', '5731314942');
 
insert into Productos (id_modelo, id_proveedor, categoria) 
values
  (1, 66, 'L'),
 (2, 49, 'XS'),
 (3, 87, 'M'),
 (4, 28, 'L'),
 (5, 80, '2XL'),
 (6, 62, 'L'),
 (7, 32, 'S'),
 (8, 11, 'XL'),
 (9, 60, 'S'),
 (10, 45, 'XL'),
 (11, 86, 'S'),
 (12, 58, 'XS'),
 (13, 72, 'S'),
 (14, 83, 'M'),
 (15, 62, '2XL'),
 (16, 98, 'XL'),
 (17, 52, 'XL'),
 (18, 14, 'XS'),
 (19, 50, 'XS'),
 (20, 54, '2XL'),
 (21, 100, '3XL'),
 (22, 89, '3XL'),
 (23, 13, '3XL'),
 (24, 40, 'S'),
 (25, 78, 'M'),
 (26, 20, '3XL'),
 (27, 61, 'L'),
 (28, 1, 'XL'),
 (29, 2, 'XL'),
 (30, 86, 'M'),
 (31, 52, 'XL'),
 (32, 71, '3XL'),
 (33, 3, 'M'),
 (34, 85, 'S'),
 (35, 44, 'XL'),
 (36, 83, 'XS'),
 (37, 7, 'L'),
 (38, 84, 'XS'),
 (39, 48, 'S'),
 (40, 20, '2XL'),
 (41, 56, 'L'),
 (42, 89, 'L'),
 (43, 64, 'XL'),
 (44, 51, 'XS'),
 (45, 57, 'XL'),
 (46, 40, '2XL'),
 (47, 28, '2XL'),
 (48, 83, 'M'),
 (49, 53, '2XL'),
 (50, 92, 'L'),
 (51, 89, '3XL'),
 (52, 33, 'M'),
 (53, 60, '2XL'),
 (54, 82, 'M'),
 (55, 35, 'M'),
 (56, 9, 'XS'),
 (57, 17, 'L'),
 (58, 72, 'S'),
 (59, 18, 'L'),
 (60, 88, 'XL'),
 (61, 62, 'M'),
 (62, 58, '2XL'),
 (63, 82, 'XL'),
 (64, 26, 'XL'),
 (65, 65, 'S'),
 (66, 7, 'XS'),
 (67, 62, 'XS'),
 (68, 49, 'XL'),
 (69, 80, '3XL'),
 (70, 62, 'XS'),
 (71, 87, 'XS'),
 (72, 66, 'S'),
 (73, 37, '3XL'),
 (74, 52, '3XL'),
 (75, 56, 'XL'),
 (76, 14, 'S'),
 (77, 33, 'XS'),
 (78, 85, '3XL'),
 (79, 7, 'S'),
 (80, 47, 'L'),
 (81, 61, 'L'),
 (82, 56, 'XL'),
 (83, 46, 'S'),
 (84, 58, 'XS'),
 (85, 65, 'S'),
 (86, 23, 'XS'),
 (87, 75, 'L'),
 (88, 6, '2XL'),
 (89, 60, 'L'),
 (90, 81, '3XL'),
 (91, 86, 'S'),
 (92, 39, 'XS'),
 (93, 66, '2XL'),
 (94, 92, 'XS'),
 (95, 54, 'L'),
 (96, 83, 'M'),
 (97, 95, 'XS'),
 (98, 36, 'XS'),
 (99, 22, 'XS'),
 (100, 39, 'XS');

insert into Pedidos (id_pedido, cuit_cuil, id_modelo, cantidad)
values

(1, '770-89-9991', 39, 194),
(2, '346-74-2607', 76, 807),
(3, '416-88-2651', 77, 33),
(4, '304-56-9708', 82, 341),
(5, '568-84-8772', 60, 694),
(6, '331-02-2388', 61, 155),
(7, '594-15-3210', 50, 244),
(8, '311-32-3654', 49, 821),
(9, '446-82-9519', 61, 92),
(10, '743-87-4750', 6, 755),
(11, '116-22-4326', 20, 683),
(12, '214-24-6116', 73, 488),
(13, '760-02-8167', 41, 226),
(14, '102-07-6444', 62, 289),
(15, '787-84-3855', 95, 931),
(16, '484-50-7886', 69, 514),
(17, '327-46-3008', 84, 658),
(18, '212-79-4250', 75, 438),
(19, '490-11-5392', 94, 632),
(20, '215-26-8323', 28, 335),
(21, '213-52-0744', 76, 653),
(22, '882-78-0674', 56, 823),
(23, '109-21-2327', 95, 452),
(24, '393-81-2531', 57, 518),
(25, '158-17-8818', 57, 316),
(26, '587-57-8300', 61, 755),
(27, '478-01-0868', 72, 405),
(28, '853-65-0420', 53, 823),
(29, '622-81-6077', 44, 86),
(30, '360-88-3656', 51, 794),
(31, '120-69-2099', 68, 922),
(32, '741-32-0749', 31, 354),
(33, '237-82-8770', 51, 713),
(34, '272-64-2475', 60, 443),
(35, '154-61-3297', 26, 172),
(36, '628-23-5311', 30, 819),
(37, '251-18-2091', 92, 604),
(38, '326-09-1987', 90, 444),
(39, '572-95-3181', 92, 587),
(40, '361-56-1069', 84, 842),
(41, '717-43-6792', 42, 791),
(42, '131-66-6433', 64, 867),
(43, '428-34-6581', 30, 960),
(44, '562-38-4763', 23, 751),
(45, '437-79-3252', 4, 580),
(46, '349-66-7233', 65, 460),
(47, '124-51-6982', 21, 711),
(48, '250-81-3132', 17, 262),
(49, '244-60-9610', 46, 710),
(50, '128-38-5303', 61, 782),
(51, '350-10-9929', 18, 529),
(52, '399-94-5814', 1, 960),
(53, '832-49-0001', 59, 884),
(54, '104-14-2862', 71, 912),
(55, '312-83-8235', 47, 176),
(56, '430-73-3159', 19, 170),
(57, '273-37-2452', 70, 452),
(58, '169-84-9880', 10, 177),
(59, '888-64-3651', 40, 221),
(60, '753-43-9140', 55, 904),
(61, '814-14-4162', 61, 410),
(62, '823-87-9302', 88, 528),
(63, '844-95-4440', 74, 440),
(64, '516-47-3629', 42, 130),
(65, '889-87-8851', 15, 217),
(66, '612-19-0558', 78, 665),
(67, '678-34-5332', 53, 747),
(68, '792-15-6345', 74, 512),
(69, '669-66-7577', 80, 716),
(70, '455-75-4939', 35, 436),
(71, '336-68-3126', 87, 314),
(72, '826-11-7194', 74, 691),
(73, '271-73-7810', 23, 56),
(74, '603-10-1384', 6, 452),
(75, '361-79-5659', 21, 673),
(76, '110-12-2796', 74, 389),
(77, '776-61-9836', 21, 454),
(78, '137-88-7763', 13, 991),
(79, '336-51-4048', 30, 645),
(80, '570-58-6467', 38, 547),
(81, '199-92-9998', 22, 77),
(82, '302-12-9812', 3, 775),
(83, '551-70-1681', 6, 135),
(84, '862-68-4602', 25, 233),
(85, '703-41-8025', 78, 392),
(86, '663-93-7972', 90, 847),
(87, '835-91-0249', 83, 919),
(88, '391-41-1784', 42, 181),
(89, '574-94-1119', 44, 604),
(90, '876-81-3644', 17, 532),
(91, '166-09-9517', 85, 942),
(92, '794-54-3789', 52, 73),
(93, '182-33-3558', 72, 376),
(94, '746-99-3933', 45, 753),
(95, '721-20-3815', 28, 466),
(96, '204-79-6543', 5, 757),
(97, '575-54-1970', 9, 539),
(98, '108-10-0386', 67, 138),
(99, '329-63-1279', 22, 440),
(100, '214-49-7340', 47, 420);

insert into Facturacion (id_factura, cuit_cuil, total_compra)
values
(1, '770-89-9991', 6688.82),
(2, '346-74-2607', 5019.97),
(3, '416-88-2651', 2732.97),
(4, '304-56-9708', 627.9),
(5, '568-84-8772', 7593.15),
(6, '331-02-2388', 965.94),
(7, '594-15-3210', 6132.31),
(8, '311-32-3654', 5217.77),
(9, '446-82-9519', 9126.15),
(10, '743-87-4750', 7763.45),
(11, '116-22-4326', 2912.63),
(12, '214-24-6116', 4289.57),
(13, '760-02-8167', 7996.45),
(14, '102-07-6444', 3629.38),
(15, '787-84-3855', 5475.09),
(16, '484-50-7886', 449.95),
(17, '327-46-3008', 7026.77),
(18, '212-79-4250', 7523.32),
(19, '490-11-5392', 5299.88),
(20, '215-26-8323', 7088.24),
(21, '213-52-0744', 2237.56),
(22, '882-78-0674', 6930.98),
(23, '109-21-2327', 3206.43),
(24, '393-81-2531', 2693.91),
(25, '158-17-8818', 530.2),
(26, '587-57-8300', 7402.29),
(27, '478-01-0868', 6481.55),
(28, '853-65-0420', 6091.76),
(29, '622-81-6077', 5617.83),
(30, '360-88-3656', 4521.29),
(31, '120-69-2099', 6504.55),
(32, '741-32-0749', 6801.47),
(33, '237-82-8770', 5179.46),
(34, '272-64-2475', 8432.68),
(35, '154-61-3297', 8520.26),
(36, '628-23-5311', 7562.11),
(37, '251-18-2091', 851.38),
(38, '326-09-1987', 3951.74),
(39, '572-95-3181', 1075.77),
(40, '361-56-1069', 6521.0),
(41, '717-43-6792', 3820.41),
(42, '131-66-6433', 2894.99),
(43, '428-34-6581', 1124.12),
(44, '562-38-4763', 8705.63),
(45, '437-79-3252', 2449.32),
(46, '349-66-7233', 6440.68),
(47, '124-51-6982', 1565.67),
(48, '250-81-3132', 2110.83),
(49, '244-60-9610', 8581.93),
(50, '128-38-5303', 6122.54),
(51, '350-10-9929', 6978.52),
(52, '399-94-5814', 7045.74),
(53, '832-49-0001', 3183.12),
(54, '104-14-2862', 7463.3),
(55, '312-83-8235', 2179.41),
(56, '430-73-3159', 8149.69),
(57, '273-37-2452', 4294.13),
(58, '169-84-9880', 8709.87),
(59, '888-64-3651', 2685.52),
(60, '753-43-9140', 818.81),
(61, '814-14-4162', 6797.94),
(62, '823-87-9302', 4593.74),
(63, '844-95-4440', 6328.81),
(64, '516-47-3629', 9276.3),
(65, '889-87-8851', 5014.05),
(66, '612-19-0558', 7614.43),
(67, '678-34-5332', 2300.71),
(68, '792-15-6345', 1195.52),
(69, '669-66-7577', 3341.49),
(70, '455-75-4939', 7935.84),
(71, '336-68-3126', 4760.93),
(72, '826-11-7194', 1779.0),
(73, '271-73-7810', 466.02),
(74, '603-10-1384', 1689.51),
(75, '361-79-5659', 1966.92),
(76, '110-12-2796', 7765.06),
(77, '776-61-9836', 3424.8),
(78, '137-88-7763', 4342.17),
(79, '336-51-4048', 1236.1),
(80, '570-58-6467', 821.54),
(81, '199-92-9998', 8589.02),
(82, '302-12-9812', 9051.43),
(83, '551-70-1681', 9248.1),
(84, '862-68-4602', 9439.84),
(85, '703-41-8025', 9301.82),
(86, '663-93-7972', 870.16),
(87, '835-91-0249', 3064.07),
(88, '391-41-1784', 5117.57),
(89, '574-94-1119', 2488.83),
(90, '876-81-3644', 4140.4),
(91, '166-09-9517', 8514.81),
(92, '794-54-3789', 3312.87),
(93, '182-33-3558', 4838.17),
(94, '746-99-3933', 2376.49),
(95, '721-20-3815', 3494.42),
(96, '204-79-6543', 3600.79),
(97, '575-54-1970', 3976.93),
(98, '108-10-0386', 8393.91),
(99, '329-63-1279', 7927.0),
(100, '214-49-7340', 5043.39);

insert into Envios (numero_de_seguimiento, id_pedido, direccion, provincia, pais)
values


('60161235ff22ddccf0dfc28779c267e2db27b4b4', 1, '3 Commercial Parkway', 'Yong’an', 'China'),
('bee368c2ca3f79366e5e595c5cebc3dbd8e46f6a', 2, '15439 Burning Wood Street', 'Tonoshō', 'Japan'),
('fbf751cdda7abc283ca4e042a2f0c8231985c0ac', 3, '1157 Sloan Way', 'Janakkala', 'Finland'),
('cc7762d77623dd8a5a94d52bfee5a615b006567d', 4, '007 Harbort Road', 'Jorowaru Daya', 'Indonesia'),
('73f7f97e88e93dafeb1107513103f4a7c2e1171e', 5, '55923 Oxford Road', 'Haputale', 'Sri Lanka'),
('20b2f05efbb1719afda69f8419dc49afef950248', 6, '124 Butternut Place', 'Hengqu', 'China'),
('e586623001ecfe9396739a6ed615c0b00c9b999c', 7, '6985 Melody Point', 'Tangjiawan', 'China'),
('0fc4e9006a46255c3b4e064a8e00f8cc2f184b7b', 8, '45 Clarendon Pass', 'Ngurenrejo', 'Indonesia'),
('deacfd6b00beea2fbb67e2c7a54abae8b02c7740', 9, '49150 Muir Lane', 'Cuauhtemoc', 'Mexico'),
('bdac11b1aa117086f7d9f6ef51283539accb093a', 10, '9 Duke Parkway', 'Honiara', 'Solomon Islands'),
('f18ddb5ff49afffed4c46f2a6321786a6da788f7', 11, '972 Park Meadow Street', 'Colonia Wanda', 'Argentina'),
('316041d67f68ec009c157c6772f543afa8a66646', 12, '1 Ronald Regan Avenue', 'Zavidovo', 'Russia'),
('03c037a9c6d4f30f64e85b0be3e7cd4ad16eb6f9', 13, '4248 Claremont Plaza', 'Ruchihe', 'China'),
('87298f6cde418565ba5af4cda4130ac37a7dfc3e', 14, '7 Green Ridge Crossing', 'Naschel', 'Argentina'),
('795bf99d126d7de051b9be6b83bcc5a975db8e2c', 15, '1 Glendale Place', 'Xinxu', 'China'),
('592400d76e790a08f9867fe8904a2b833062f7eb', 16, '16243 Corry Parkway', 'Rennes', 'France'),
('03bf9005f9e84e6c372f6e39449792e3e03f8bb2', 17, '8 Sachs Crossing', 'Trŭn', 'Bulgaria'),
('777de681d32137bbf7a6abf1f02662c4998283a3', 18, '0 Burning Wood Junction', 'Milton', 'United Kingdom'),
('b2e74b3ab6fb1bdbb516deba3cdc1d1f23995ab6', 19, '274 Veith Court', 'København', 'Denmark'),
('cc36c923964a551e6bc7fe5556ae135b80000de0', 20, '47533 Lotheville Avenue', 'Dungang', 'China'),
('b32054dad37489540f0fe78317c46fcf62a7b337', 21, '603 Prentice Court', 'Gumel', 'Nigeria'),
('215263ba28b60684cb93234086362f25fbc68c5a', 22, '0807 La Follette Avenue', 'Lebedyn', 'Ukraine'),
('352d094b1600fd22cd453392865bd35d439af7b1', 23, '794 Killdeer Plaza', 'Chambray-lès-Tours', 'France'),
('6aa63ed9dc8cd015ccc330db22e764f6a1d742cb', 24, '9 Arrowood Drive', 'Bunga Mas', 'Indonesia'),
('5a0c946d043da60a4d6dc2d71c8dd751b58b45df', 25, '46011 Waubesa Drive', 'Huangshi', 'China'),
('d4cc320f76deeda2f8182f0079564cadd0b1918d', 26, '35 Marcy Plaza', 'Kawungsari', 'Indonesia'),
('d192a139c52212cd8dbad388cbcc01ba132b4dc4', 27, '78 Dixon Parkway', 'Tanjungbahagia', 'Indonesia'),
('bba056583054b260e6020d98f81429c79cdf719a', 28, '678 Cottonwood Circle', 'Stříbro', 'Czech Republic'),
('cbcd150ca8090b35bf793dfb4d01f4bd33d53c7f', 29, '2 Lakewood Road', 'Joubb Jannîne', 'Lebanon'),
('9f027286b9073300757672231755499197161811', 30, '27 Jana Park', 'San Isidro', 'Philippines'),
('4f1a28eb7a82248b79cc26137645ab5a7390e05b', 31, '9 Sullivan Point', 'Ingarö', 'Sweden'),
('2ed5ec9a8391a52c5e25ffe5c52f4f27b36a9b76', 32, '01738 Summer Ridge Trail', 'Shanhaiguan', 'China'),
('3e3a9c992a03739e1f58dea7910a332578a4ee18', 33, '50 Fuller Point', 'Panalingaan', 'Philippines'),
('274a04167fb47c94d9e6d351bf2a98af768ae0bc', 34, '0 Milwaukee Pass', 'Yishan', 'China'),
('392c2ff4f2dc7dbf9f42f309d61ca145a95a67e9', 35, '27 Clyde Gallagher Way', 'Sukaraja', 'Indonesia'),
('30d8f2130090a4b084294103abdb7a3b7f4051ee', 36, '7896 Thackeray Alley', 'Guararé', 'Panama'),
('612d4ba65b20f544106818eca94718e8eaea1fda', 37, '9 Esker Pass', 'Kerasochóri', 'Greece'),
('2feae9b06a9505691d23b0f2931079283f57a5bf', 38, '66577 Hoard Terrace', 'Pingpo', 'China'),
('0c279f84e3e12f1ca4db7eefd47b6f634615b1c1', 39, '5264 Hudson Center', 'Krajanbaturno', 'Indonesia'),
('e06d6c1e7cd13d421bb9869f1870d94098e49d84', 40, '9 Briar Crest Park', 'Hisings Kärra', 'Sweden'),
('e7ce2f80bd52dff81766ca25d2a48e6a3c428240', 41, '7 Springview Parkway', 'Hawassa', 'Ethiopia'),
('124b31bccdf26dc5ffcef032050c6b6730cd102b', 42, '8 Aberg Terrace', 'Pirot', 'Serbia'),
('c80bac5c00645e955f74f95188348de2e9b7c79c', 43, '6999 Buell Park', 'Chaguaní', 'Colombia'),
('6e8a73afe2671d1086227cc9a01c19d7198336f8', 44, '904 Straubel Lane', 'Majiao', 'China'),
('ee6608e6af1f9a15e221494a53e3455db8b44c78', 45, '32647 5th Point', 'Ambarakaraka', 'Madagascar'),
('79287930faf89e766f1140c68c6e4ace9ac83421', 46, '098 Lien Park', 'Fengyang Fuchengzhen', 'China'),
('4d1f4f012a60caba0b4518bd09231d9f088edd66', 47, '091 Drewry Road', 'Parada de Pinhão', 'Portugal'),
('9a8958163051f8a03d26a8d5d89431f0041856b2', 48, '37 Blaine Avenue', 'Khursā', 'Palestinian Territory'),
('bf77b8ea39b8ce1185c77bbec448b79cc4f89a66', 49, '03388 Bunting Pass', 'Shouchun', 'China'),
('8c623a1954a0b4f28fece3e0f79efbb4fe663e7d', 50, '0 Waxwing Park', 'Atafu Village', 'Tokelau'),
('186f9b9b2adf53df6d3ff7a11cf13c1a259ce035', 51, '26321 Clarendon Parkway', 'Guanqing', 'China'),
('8867ef1fe595614df0334c23ccdf91fa5514ff42', 52, '4733 Darwin Park', 'Guaçuí', 'Brazil'),
('d5babb1a7ec28e8a12970a09bc3e787d97e63c7a', 53, '841 Crest Line Crossing', 'Patrocinio', 'Philippines'),
('b4075bb8d04dfff1e2ff45239aad8cce5844c508', 54, '0160 American Parkway', 'Ballisodare', 'Ireland'),
('124e436351077e76ccb4abb263ab89d704869f16', 55, '2800 Northridge Center', 'Tangwang', 'China'),
('9daafb24ef47e6192b3585ba8f0aaa5b4115681a', 56, '8325 Russell Street', 'Rosetta', 'Egypt'),
('7a955a21ebcaf98922dca7bbdce6894d5478c6d4', 57, '31468 Portage Circle', 'Sypniewo', 'Poland'),
('58c8e9822ff927dd6df48bc9c278eb4875e1add8', 58, '58 American Ash Street', 'Nowe Grocholice', 'Poland'),
('bf560bedefc5e8364c8502c50d6659612a923cc9', 59, '3386 Twin Pines Road', 'Tandzut', 'Armenia'),
('034234deab1e3764d6439dad3dafcf3977f281d4', 60, '3 Ridge Oak Circle', 'Turgenevo', 'Russia'),
('0acb77884e12abe5805c51689f0584cfb76f802e', 61, '0 Scofield Road', 'Bắc Ninh', 'Vietnam'),
('9446eb48dcc922f10959108905d03e4126b5ccd3', 62, '4 Banding Hill', 'Henglin', 'China'),
('787d4529072a07eb6ffe4bb0b629a8fd1a26aee5', 63, '010 Moose Trail', 'Konakridee', 'Sierra Leone'),
('8940337a45f7eaa5ea992debc170af3a62fa6930', 64, '760 Fallview Crossing', 'Kungsbacka', 'Sweden'),
('e192c10f02f4b597d2b8d9101dd5e69f312083b7', 65, '73 Fallview Lane', 'Foča', 'Bosnia and Herzegovina'),
('815e50a7e6b0c877d239c4002112f84f1f8b7e67', 66, '7 Dorton Place', 'Zhongshanlu', 'China'),
('1879f0d64908fd1de8937010f62c11176b9f5d2d', 67, '78 Schlimgen Junction', 'Sri Jayewardenepura Kotte', 'Sri Lanka'),
('ce90c19f43d8dc02026eee893a761ad98da13b67', 68, '3 Kennedy Center', 'Khatanga', 'Russia'),
('e4077122c445cecceb83554f67c127cd3ff2851a', 69, '946 Porter Trail', 'Velventós', 'Greece'),
('75527c1273b093ffd3d07470755818fcd6186d61', 70, '317 Lakewood Plaza', 'Shaoha', 'China'),
('961fa8007789dc2dbcc0500eaffb3973608d5f2b', 71, '23 Elgar Lane', 'Chegang', 'China'),
('a9a47a343a12c9313113dcdfa7d34c55619f60b7', 72, '6 Sunfield Center', 'Zarumilla', 'Peru'),
('f4aa2c7c3da56212ecc335ea10e00ea40e962504', 73, '4414 Springview Drive', 'Jovellar', 'Philippines'),
('df4e54fe0dd90751dbbba662b837191ee9073059', 74, '734 Reindahl Crossing', 'Gambut', 'Indonesia'),
('a5507f9afc8d5ea1e60e3b293d957ce41fc4947b', 75, '861 Spohn Pass', 'Daleszyce', 'Poland'),
('cb8c7f256e8a174e3c721c51061df7d8cc5206a2', 76, '80 Declaration Place', 'Yidu', 'China'),
('beeb0258b7d5195e6578d65f4e66ce77a1e96d0d', 77, '4876 Rigney Plaza', 'Roanne', 'France'),
('ca9e11872efab83f2b4c9dac8a1b619b1aaab86b', 78, '844 Fremont Road', 'Pasarkayu', 'Indonesia'),
('c2790563ef0bf2aa9acb0a13690ea3d5e4419092', 79, '664 Melody Crossing', 'Podgorenskiy', 'Russia'),
('d3e079873d5b30ac15c61401e2421ba6c0fb3e92', 80, '97 Columbus Place', 'Kuznechikha', 'Russia'),
('3f50af12b6d2760755da834a4b7b0b2df46a9274', 81, '85700 Oriole Road', 'Duiwelskloof', 'South Africa'),
('79cc059fee2bf65f9797a06e9f153274417001f2', 82, '23 Ridgeview Drive', 'Matanzas', 'Dominican Republic'),
('c26cc43d3fbfee67c67b8d340d95ae35f17f0566', 83, '05 Hooker Trail', 'Malo', 'Indonesia'),
('f548e5bc16e0b1ef9d6ff44ff0c3fd1791ee6dd8', 84, '0 Di Loreto Circle', 'Vimmerby', 'Sweden'),
('f5cb77a3e1717ae0dabbe2bf502d211c58f45df8', 85, '1 Holy Cross Pass', 'Sokol’skoye', 'Russia'),
('57a6dee3a8c3abe7ee3cdc976b55d35dabaef9fc', 86, '759 Carberry Lane', 'Shiye', 'China'),
('54e917f27e008ecf35990e023fdb7ce03fb68433', 87, '1 Loomis Circle', 'Zhaobaoshan', 'China'),
('eccf54e58a8cdaba0d191ffcc33fd580f327488b', 88, '058 Caliangt Junction', 'Roma', 'Italy'),
('3afd3eed31aa473258d74f8f11ba224b08342f32', 89, '90714 Parkside Plaza', 'Soito', 'Portugal'),
('68619ecde7ffe89091e229cc2acdd9d362726ec6', 90, '64263 Lunder Park', 'Ash Shuyūkh', 'Palestinian Territory'),
('c7a759b001b68d8ffe6335f5eac03e021043afb4', 91, '579 Merchant Court', 'Liangchahe', 'China'),
('4583605195850afb66789b46a5aa7cedd00a31c6', 92, '0 Steensland Hill', 'Mengxingzhuang', 'China'),
('bd0cc9faabcdfdbb09d8cc48dda224a1abe203ee', 93, '9 Nevada Center', 'Kapsan-ŭp', 'North Korea'),
('a2d56a256614fb01a005887806e9d53386e4ee20', 94, '96 Rieder Plaza', 'Jiangyi', 'China'),
('952195615c7e9ea490be41032ce32a1d68ea2644', 95, '88445 Gerald Lane', 'Vyborg', 'Russia'),
('8a60189381b03051368957d8860b8bcaaff9a586', 96, '83837 8th Circle', 'Lille', 'France'),
('28e7ffabf54d629cfa18caa234f0ea85903993f9', 97, '89622 Ridgeview Place', 'Khirbat Tīn Nūr', 'Syria'),
('c3f53f3ca7a76b84447584fb89ac603091229da2', 98, '52 Vera Street', 'Altona', 'Canada'),
('40fc4ee41b298bd96e53b48c063cda4f435b5b4a', 99, '717 Weeping Birch Park', 'Yaguachi Nuevo', 'Ecuador'),
('ef589d5aca4f35b30423a7b1418137f219c4dabd', 100, '23316 Thierer Hill', 'Santo Aleixo', 'Portugal');
