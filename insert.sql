INSERT INTO Osoba
VALUES
(84020146212, 'Andrzej', 'Szujkowski', '1984-02-01', 'M', 'andszuj@gmail.com', '723-567-123', '83-404 Jankowo Dolne, ul. Jozefowa 8' ),
(88121241222, 'Bonifacy', 'Eurekowski', '1988-12-12', 'M', 'bonifacek@gmail.com', '623-667-623', '83-404 Jankowo Dolne, ul. Sloneczka 81' ),
(62091635004, 'Wac³awa', 'D¹browska', '1990-02-01', 'K', 'wclllakk@wp.pl', '666-117-992', '80-400 Gdañsk, ul. Dzielna 89' ),
(75112972931, 'Kupolina', 'Urkkaaz', '1975-11-29', 'K', 'sweetniunia69@buziaczek.pl', '665-131-001', '80-388 Pagorkowo Namolne, ul. Potyraly 3' ),
(67060182700, 'Apoloniusz', 'Hendrich', '1967-06-01', 'M', 'bistroooohendrich@wp.pl', '551-101-202', '80-401 Gdañsk, ul. Urugwajska 69' ),
(39111191111, 'Napoleon', 'Polskiski', '1939-11-11', 'M', 'polskajestnajwazniejsza@polska.pl', '722-000-001', '80-403 Gdañsk, ul. Patriotów 9' ),
(95092223159, 'Herkules', 'Stark', '1995-09-22', 'M', 'herkulesjest@gmail.com', '767-111-222', '83-408 Wizdrzychowo, ul. Zakopianska 43' );



INSERT INTO Dentysta
VALUES
(84020146212, 'dentysta z doktoratem', 'kierownik zespo³u dentystów', '3500.00', '66 1140 2004 0000 3902 7056 9758', '5911691508'),
(88121241222, 'technik dentystyczny', 'higienista', '1100.00', '34 1040 2224 1100 3902 7056 9758', '1913695578');


INSERT INTO Klient
VALUES
(62091635004, 'senior',2),
(75112972931, 'laseczka', 2),
(67060182700, '',4),
(39111191111, 'patriota', 5),
(95092223159, 'student', 1);


INSERT INTO Karta_pacjenta
VALUES
(1,'bierze leki zawieraj¹ce tetracyklinê',NULL,'paradontoza','2013-01-02','2013-01-02',62091635004),
(2,NULL,'nikiel',NULL,'2012-09-12','2012-09-12',75112972931),
(3,'wra¿liwoœæ na krew','lateks, chrom, kobalt',NULL,'2012-07-12','2012-07-12',67060182700),
(4,NULL,'chrom, kobalt',NULL,'2012-12-23','2013-01-12',39111191111),
(5,NULL,'srebro',NULL,'2013-01-09','2013-01-09',95092223159);





INSERT INTO Zab
VALUES
/* pierwszy goœciu i jego zêby */
(1,'tak',NULL,NULL,NULL,'szczêka','prawo','jedynka',1,62091635004),
(2,'tak',NULL,NULL,NULL,'szczêka','prawo','dwójka',1,62091635004),
(3,'tak',NULL,NULL,NULL,'szczêka','prawo','trójka',1,62091635004),
(4,'tak',NULL,NULL,NULL,'szczêka','prawo','czwórka',1,62091635004),
(5,'tak',NULL,NULL,NULL,'szczêka','prawo','pi¹tka',1,62091635004),
(6,'tak',NULL,NULL,NULL,'szczêka','prawo','szóstka',1,62091635004),
(7,'tak',NULL,NULL,NULL,'szczêka','prawo','siódemka',1,62091635004),
(8,'nie',NULL,'wyrwany',NULL,'szczêka','prawo','ósemka',1,62091635004),

(9,'tak',NULL,NULL,NULL,'szczêka','lewo','jedynka',1,62091635004),
(10,'tak',NULL,NULL,NULL,'szczêka','lewo','dwójka',1,62091635004),
(11,'nie','do wyrwania','martwy, zaawansowana próchnica',NULL,'szczêka','lewo','trójka',1,62091635004),
(12,'tak',NULL,NULL,NULL,'szczêka','lewo','czwórka',1,62091635004),
(13,'tak',NULL,NULL,NULL,'szczêka','lewo','pi¹tka',1,62091635004),
(14,'tak',NULL,NULL,NULL,'szczêka','lewo','szóstka',1,62091635004),
(15,'tak',NULL,NULL,NULL,'szczêka','lewo','siódemka',1,62091635004),
(16,'tak',NULL,NULL,NULL,'szczêka','lewo','ósemka',1,62091635004),


(17,'nie',NULL,'sztuczny','implant','¿uchwa','prawo','jedynka',1,62091635004),
(18,'tak',NULL,NULL,NULL,'¿uchwa','prawo','dwójka',1,62091635004),
(19,'tak',NULL,NULL,NULL,'¿uchwa','prawo','trójka',1,62091635004),
(20,'tak',NULL,NULL,NULL,'¿uchwa','prawo','czwórka',1,62091635004),
(21,'tak',NULL,NULL,NULL,'¿uchwa','prawo','pi¹tka',1,62091635004),
(22,'tak',NULL,NULL,NULL,'¿uchwa','prawo','szóstka',1,62091635004),
(23,'tak',NULL,NULL,NULL,'¿uchwa','prawo','siódemka',1,62091635004),
(24,'tak',NULL,NULL,NULL,'¿uchwa','prawo','ósemka',1,62091635004),

(25,'tak',NULL,NULL,NULL,'¿uchwa','lewo','jedynka',1,62091635004),
(26,'tak',NULL,NULL,NULL,'¿uchwa','lewo','dwójka',1,62091635004),
(27,'tak',NULL,NULL,NULL,'¿uchwa','lewo','trójka',1,62091635004),
(28,'tak',NULL,NULL,NULL,'¿uchwa','lewo','czwórka',1,62091635004),
(29,'tak',NULL,NULL,NULL,'¿uchwa','lewo','pi¹tka',1,62091635004),
(30,'tak',NULL,NULL,NULL,'¿uchwa','lewo','szóstka',1,62091635004),
(31,'tak',NULL,NULL,NULL,'¿uchwa','lewo','siódemka',1,62091635004),
(32,'tak',NULL,NULL,NULL,'¿uchwa','lewo','ósemka',1,62091635004),


/* drugi goœciu i jego zêby */
(33,'tak',NULL,NULL,NULL,'szczêka','prawo','jedynka',2,75112972931),
(34,'tak',NULL,NULL,NULL,'szczêka','prawo','dwójka',2,75112972931),
(35,'tak',NULL,NULL,NULL,'szczêka','prawo','trójka',2,75112972931),
(36,'tak',NULL,NULL,NULL,'szczêka','prawo','czwórka',2,75112972931),
(37,'tak',NULL,NULL,NULL,'szczêka','prawo','pi¹tka',2,75112972931),
(38,'tak',NULL,NULL,NULL,'szczêka','prawo','szóstka',2,75112972931),
(39,'tak',NULL,NULL,NULL,'szczêka','prawo','siódemka',2,75112972931),
(40,'tak',NULL,NULL,NULL,'szczêka','prawo','ósemka',2,75112972931),

(41,'tak',NULL,NULL,NULL,'szczêka','lewo','jedynka',2,75112972931),
(42,'tak',NULL,NULL,NULL,'szczêka','lewo','dwójka',2,75112972931),
(43,'tak',NULL,NULL,NULL,'szczêka','lewo','trójka',2,75112972931),
(44,'tak',NULL,NULL,NULL,'szczêka','lewo','czwórka',2,75112972931),
(45,'tak',NULL,NULL,NULL,'szczêka','lewo','pi¹tka',2,75112972931),
(46,'tak',NULL,NULL,NULL,'szczêka','lewo','szóstka',2,75112972931),
(47,'tak',NULL,NULL,NULL,'szczêka','lewo','siódemka',2,75112972931),
(48,'tak',NULL,NULL,NULL,'szczêka','lewo','ósemka',2,75112972931),

(49,'tak',NULL,NULL,NULL,'¿uchwa','prawo','jedynka',2,75112972931),
(50,'tak',NULL,NULL,NULL,'¿uchwa','prawo','dwójka',2,75112972931),
(51,'tak',NULL,NULL,NULL,'¿uchwa','prawo','trójka',2,75112972931),
(52,'tak',NULL,NULL,NULL,'¿uchwa','prawo','czwórka',2,75112972931),
(53,'tak',NULL,NULL,NULL,'¿uchwa','prawo','pi¹tka',2,75112972931),
(54,'tak',NULL,NULL,NULL,'¿uchwa','prawo','szóstka',2,75112972931),
(55,'tak',NULL,NULL,NULL,'¿uchwa','prawo','siódemka',2,75112972931),
(56,'tak',NULL,NULL,NULL,'¿uchwa','prawo','ósemka',2,75112972931),

(57,'tak',NULL,NULL,NULL,'¿uchwa','lewo','jedynka',2,75112972931),
(58,'tak',NULL,NULL,NULL,'¿uchwa','lewo','dwójka',2,75112972931),
(59,'tak',NULL,NULL,NULL,'¿uchwa','lewo','trójka',2,75112972931),
(60,'tak',NULL,NULL,NULL,'¿uchwa','lewo','czwórka',2,75112972931),
(61,'tak',NULL,NULL,NULL,'¿uchwa','lewo','pi¹tka',2,75112972931),
(62,'tak',NULL,NULL,NULL,'¿uchwa','lewo','szóstka',2,75112972931),
(63,'tak',NULL,NULL,NULL,'¿uchwa','lewo','siódemka',2,75112972931),
(64,'nie','borowanie','¿ywy, pocz¹tkuj¹ca próchnica',NULL,'¿uchwa','lewo','ósemka',2,75112972931),




/* trzeci goœciu i jego zêby */
(65,'nie','poprawki plombowe','¿ywy, próchnica',NULL,'szczêka','prawo','jedynka',3,67060182700),
(66,'tak',NULL,NULL,NULL,'szczêka','prawo','dwójka',3,67060182700),
(67,'tak',NULL,NULL,NULL,'szczêka','prawo','trójka',3,67060182700),
(68,'tak',NULL,NULL,NULL,'szczêka','prawo','czwórka',3,67060182700),
(69,'nie','borowanie','¿ywy, od³amany kawa³ek',NULL,'szczêka','prawo','pi¹tka',3,67060182700),
(70,'tak',NULL,NULL,NULL,'szczêka','prawo','szóstka',3,67060182700),
(71,'tak',NULL,NULL,NULL,'szczêka','prawo','siódemka',3,67060182700),
(72,'tak',NULL,NULL,NULL,'szczêka','prawo','ósemka',3,67060182700),

(73,'tak',NULL,NULL,NULL,'szczêka','lewo','jedynka',3,67060182700),
(74,'tak',NULL,NULL,NULL,'szczêka','lewo','dwójka',3,67060182700),
(75,'tak',NULL,NULL,NULL,'szczêka','lewo','trójka',3,67060182700),
(76,'nie',NULL,'martwy, zaplombowany',NULL,'szczêka','lewo','czwórka',3,67060182700),
(77,'tak',NULL,NULL,NULL,'szczêka','lewo','pi¹tka',3,67060182700),
(78,'tak',NULL,NULL,NULL,'szczêka','lewo','szóstka',3,67060182700),
(79,'tak',NULL,NULL,NULL,'szczêka','lewo','siódemka',3,67060182700),
(80,'tak',NULL,NULL,NULL,'szczêka','lewo','ósemka',3,67060182700),


(81,'tak',NULL,NULL,NULL,'¿uchwa','prawo','jedynka',3,67060182700),
(82,'nie','plombowanie','¿ywy, ubytki próchnicze',NULL,'¿uchwa','prawo','dwójka',3,67060182700),
(83,'tak',NULL,NULL,NULL,'¿uchwa','prawo','trójka',3,67060182700),
(84,'tak',NULL,NULL,NULL,'¿uchwa','prawo','czwórka',3,67060182700),
(85,'tak',NULL,NULL,NULL,'¿uchwa','prawo','pi¹tka',3,67060182700),
(86,'tak',NULL,NULL,NULL,'¿uchwa','prawo','szóstka',3,67060182700),
(87,'tak',NULL,NULL,NULL,'¿uchwa','prawo','siódemka',3,67060182700),
(88,'tak',NULL,NULL,NULL,'¿uchwa','prawo','ósemka',3,67060182700),

(89,'nie',NULL,NULL,NULL,'¿uchwa','lewo','jedynka',3,67060182700),
(90,'tak',NULL,NULL,NULL,'¿uchwa','lewo','dwójka',3,67060182700),
(91,'tak',NULL,NULL,NULL,'¿uchwa','lewo','trójka',3,67060182700),
(92,'tak',NULL,NULL,NULL,'¿uchwa','lewo','czwórka',3,67060182700),
(93,'tak',NULL,NULL,NULL,'¿uchwa','lewo','pi¹tka',3,67060182700),
(94,'nie',NULL,'sztuczny','proteza ko³kowa','¿uchwa','lewo','szóstka',3,67060182700),
(95,'tak',NULL,NULL,NULL,'¿uchwa','lewo','siódemka',3,67060182700),
(96,'tak',NULL,NULL,NULL,'¿uchwa','lewo','ósemka',3,67060182700),


/* czwarty goœciu i jego zêby */
(97,'nie',NULL,'sztuczny','implant','szczêka','prawo','jedynka',4,39111191111),
(98,'nie',NULL,'sztuczny','most','szczêka','prawo','dwójka',4,39111191111),
(99,'nie',NULL,'sztuczny','most','szczêka','prawo','trójka',4,39111191111),
(100,'tak',NULL,NULL,NULL,'szczêka','prawo','czwórka',4,39111191111),
(101,'tak',NULL,NULL,NULL,'szczêka','prawo','pi¹tka',4,39111191111),
(102,'tak',NULL,NULL,NULL,'szczêka','prawo','szóstka',4,39111191111),
(103,'tak',NULL,NULL,NULL,'szczêka','prawo','siódemka',4,39111191111),
(104,'tak',NULL,NULL,NULL,'szczêka','prawo','ósemka',4,39111191111),

(105,'nie',NULL,'sztuczny','implant','szczêka','lewo','jedynka',4,39111191111),
(106,'tak',NULL,NULL,NULL,'szczêka','lewo','dwójka',4,39111191111),
(107,'nie',NULL,'sztuczny','korona protetyczna','szczêka','lewo','trójka',4,39111191111),
(108,'tak',NULL,NULL,NULL,'szczêka','lewo','czwórka',4,39111191111),
(109,'nie',NULL,'sztuczny','wk³ad koronowo-korzeniowy','szczêka','lewo','pi¹tka',4,39111191111),
(110,'tak',NULL,NULL,NULL,'szczêka','lewo','szóstka',4,39111191111),
(111,'tak',NULL,NULL,NULL,'szczêka','lewo','siódemka',4,39111191111),
(112,'tak',NULL,NULL,NULL,'szczêka','lewo','ósemka',4,39111191111),


(113,'nie',NULL,'sztuczny','most','¿uchwa','prawo','jedynka',4,39111191111),
(114,'nie',NULL,'sztuczny','licówka','¿uchwa','prawo','dwójka',4,39111191111),
(115,'tak',NULL,NULL,NULL,'¿uchwa','prawo','trójka',4,39111191111),
(116,'tak',NULL,NULL,NULL,'¿uchwa','prawo','czwórka',4,39111191111),
(117,'nie','do wyrwania, proteza do za³o¿enia','martwy, zaawansowana próchnica',NULL,'¿uchwa','prawo','pi¹tka',4,39111191111),
(118,'tak',NULL,NULL,NULL,'¿uchwa','prawo','szóstka',4,39111191111),
(119,'tak',NULL,NULL,NULL,'¿uchwa','prawo','siódemka',4,39111191111),
(120,'tak',NULL,NULL,NULL,'¿uchwa','prawo','ósemka',4,39111191111),

(121,'nie',NULL,'sztuczny','implant','¿uchwa','lewo','jedynka',4,39111191111),
(122,'tak',NULL,NULL,NULL,'¿uchwa','lewo','dwójka',4,39111191111),
(123,'nie',NULL,'sztuczny','wk³ad koronowo-korzeniowy','¿uchwa','lewo','trójka',4,39111191111),
(124,'tak',NULL,NULL,NULL,'¿uchwa','lewo','czwórka',4,39111191111),
(125,'tak',NULL,NULL,NULL,'¿uchwa','lewo','pi¹tka',4,39111191111),
(126,'tak',NULL,NULL,NULL,'¿uchwa','lewo','szóstka',4,39111191111),
(127,'nie',NULL,'sztuczny','wk³ad koronowy','¿uchwa','lewo','siódemka',4,39111191111),
(128,'nie',NULL,'sztuczny','wk³ad koronowy','¿uchwa','lewo','ósemka',4,39111191111),



/* pi¹ty goœciu i jego zêby */
(129,'tak',NULL,NULL,NULL,'szczêka','prawo','jedynka',5,95092223159),
(130,'tak',NULL,NULL,NULL,'szczêka','prawo','dwójka',5,95092223159),
(131,'tak',NULL,NULL,NULL,'szczêka','prawo','trójka',5,95092223159),
(132,'tak',NULL,NULL,NULL,'szczêka','prawo','czwórka',5,95092223159),
(133,'tak',NULL,NULL,NULL,'szczêka','prawo','pi¹tka',5,95092223159),
(134,'tak',NULL,NULL,NULL,'szczêka','prawo','szóstka',5,95092223159),
(135,'tak',NULL,NULL,NULL,'szczêka','prawo','siódemka',5,95092223159),
(136,'tak',NULL,NULL,NULL,'szczêka','prawo','ósemka',5,95092223159),

(137,'nie','plomba lub wk³ad koronowy','¿ywy, odszczerbiony',NULL,'szczêka','lewo','jedynka',5,95092223159),
(138,'nie','licówka do za³o¿enia','¿ywy, od³amany kawa³ek',NULL,'szczêka','lewo','dwójka',5,95092223159),
(139,'tak',NULL,NULL,NULL,'szczêka','lewo','trójka',5,95092223159),
(140,'tak',NULL,NULL,NULL,'szczêka','lewo','czwórka',5,95092223159),
(141,'tak',NULL,NULL,NULL,'szczêka','lewo','pi¹tka',5,95092223159),
(142,'tak',NULL,NULL,NULL,'szczêka','lewo','szóstka',5,95092223159),
(143,'tak',NULL,NULL,NULL,'szczêka','lewo','siódemka',5,95092223159),
(144,'tak',NULL,NULL,NULL,'szczêka','lewo','ósemka',5,95092223159),


(145,'tak',NULL,NULL,NULL,'¿uchwa','prawo','jedynka',5,95092223159),
(146,'tak',NULL,NULL,NULL,'¿uchwa','prawo','dwójka',5,95092223159),
(147,'tak',NULL,NULL,NULL,'¿uchwa','prawo','trójka',5,95092223159),
(148,'tak',NULL,NULL,NULL,'¿uchwa','prawo','czwórka',5,95092223159),
(149,'tak',NULL,NULL,NULL,'¿uchwa','prawo','pi¹tka',5,95092223159),
(150,'tak',NULL,NULL,NULL,'¿uchwa','prawo','szóstka',5,95092223159),
(151,'tak',NULL,NULL,NULL,'¿uchwa','prawo','siódemka',5,95092223159),
(152,'tak',NULL,NULL,NULL,'¿uchwa','prawo','ósemka',5,95092223159),

(153,'tak',NULL,NULL,NULL,'¿uchwa','lewo','jedynka',5,95092223159),
(154,'tak',NULL,NULL,NULL,'¿uchwa','lewo','dwójka',5,95092223159),
(155,'tak',NULL,NULL,NULL,'¿uchwa','lewo','trójka',5,95092223159),
(156,'tak',NULL,NULL,NULL,'¿uchwa','lewo','czwórka',5,95092223159),
(157,'tak',NULL,NULL,NULL,'¿uchwa','lewo','pi¹tka',5,95092223159),
(158,'tak',NULL,NULL,NULL,'¿uchwa','lewo','szóstka',5,95092223159),
(159,'tak',NULL,NULL,NULL,'¿uchwa','lewo','siódemka',5,95092223159),
(160,'tak',NULL,NULL,NULL,'¿uchwa','lewo','ósemka',5,95092223159);




INSERT INTO Dni_godziny_przyjec
VALUES
(1,'poniedzia³ek','08:00','18:00',84020146212),
(2,'œroda','12:00','15:00',84020146212),
(3,'czwartek','06:00','23:00',84020146212),
(4,'sobota','15:00','22:00',84020146212),

(5,'wtorek','08:00','16:00',88121241222),
(6,'œroda','08:00','12:00',88121241222),
(7,'œroda','15:00','20:00',88121241222),
(8,'pi¹tek','10:00','15:00',88121241222),
(9,'pi¹tek','16:00','18:00',88121241222),
(10,'niedziela','15:00','18:00',88121241222);


INSERT INTO Wizyta /* sk³ada siê z jednego lub wiêcej zabiegów */
VALUES
(1,'2012-12-03',210,62091635004),
(2,'2013-01-02',300,62091635004),

(3,'2012-09-01',230,75112972931),
(4,'2012-09-12',70,75112972931),

(5,'2012-05-03',140,67060182700),
(6,'2012-06-20',90,67060182700),
(7,'2012-07-02',120,67060182700),
(8,'2012-07-12',400,67060182700),

(9,'2012-07-29',250,39111191111),
(10,'2012-09-21',270,39111191111),
(11,'2012-10-30',220,39111191111),
(12,'2012-12-23',245,39111191111),
(13,'2013-01-12',130,39111191111),

(14,'2013-01-09',110,95092223159);



INSERT INTO Uslugi
VALUES
(1,'wybielanie nadtlenkiem karbamidu',230,1),
(2,'plomba',230,1),
(3,'borowanie',230,1),
(4,'znieczulenie miejscowe',20,1),
(5,'narkoza',50,1),
(6,'proteza typu most',400,1),
(7,'proteza typu implant',1000,1),
(8,'wyrywanie',120,1),
(9,'wype³nianie ma³ego ubytku',110,1),
(10,'wype³nianie du¿ego ubytku',250,1),
(11,'wype³nianie diastemy',610,1),
(12,NULL,230,1),
(13,NULL,230,1);



INSERT INTO Wykonany_zabieg /* sk³adaj¹cy siê z jednej us³ugi */
VALUES
(1,'borowanie','zabieg przebieg³ poprawnie',230,14,84020146212,11);/* wizyta, dentysta, uslugi */






INSERT INTO Termin
VALUES
(1,'2012-12-03','poniedzia³ek','17:00','18:00',62091635004,84020146212,1),
(2,'2013-01-02','œroda','13:00','14:30',62091635004,84020146212,2),

(3,'2012-09-01','sobota','15:00','16:45',75112972931,84020146212,3),
(4,'2012-09-12','œroda','14:00','15:00',75112972931,84020146212,4),


(5,'2012-05-03','czwartek','12:00','13:30',67060182700,84020146212,5),
(6,'2012-06-20','œroda','08:00','9:30',67060182700,88121241222,6),
(7,'2012-07-02','poniedzia³ek','08:00','10:00',67060182700,84020146212,7),
(8,'2012-07-12','czwartek','20:00','21:00',67060182700,84020146212,8),


(9,'2012-07-29','niedziela','16:00','17:30',39111191111,88121241222,9),
(10,'2012-09-21','pi¹tek','17:00','18:00',39111191111,88121241222,10),
(11,'2012-10-30','wtorek','11:00','12:00',39111191111,88121241222,11),
(12,'2012-12-23','niedziela','16:00','18:00',39111191111,88121241222,12),
(13,'2013-01-12','wtorek','08:00','08:30',39111191111,88121241222,13),


(14,'2013-01-09','œroda','13:15','14:45',95092223159,84020146212,14),

/* zarezerwowane terminy który jeszcze nie przesz³y w wizytê */
(15,'2013-02-07','czwartek','18:00','20:15',95092223159,84020146212,NULL),
(16,'2013-02-08','pi¹tek','17:15','18:00',67060182700,88121241222,NULL),
(17,'2013-02-09','sobota','20:00','22:00',39111191111,84020146212,NULL);