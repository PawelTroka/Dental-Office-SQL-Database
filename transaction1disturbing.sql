/* Transakcja przeszkadzaj¹ca transakcji 1 */
BEGIN TRANSACTION

/* Dodanie nowej osoby... */
INSERT INTO Osoba VALUES 
(91021407790, 'Pawe³', 'Troka', '1991-02-14', 'M', 'ptroka@fizyka.dk', '725-656-424', '80-404 Gdañsk, ul. Dzielna 11' );

/* ...która jest klientem... */
INSERT INTO Klient
VALUES
(91021407790, 'student',0);


/* ...ma kartê pacjenta... */
INSERT INTO Karta_pacjenta
VALUES
(6,NULL,NULL,NULL,NULL,NULL,91021407790); /* tutaj jest tak naprawdê kluczowa sprawa dotycz¹ca faktu przeszkadzania tej transakcji transakcji 1, otó¿ dodajemy numer karty pacjenta identyczny z numerem karty pacjenta w transakcji 1, je¿eli transakcja 1 by³aby dobrze zabezpieczona - powinna ta operacja (de facto nadpisuj¹ca operacjê z transakcji 1) siê nie wykonaæ - powinien pojawiæ siê b³¹d i¿ Karta_pacjenta o takim ID ju¿ istnieje i powinien byæ wykonany rollback - transakcja przeszkadzaj¹ca powinna siê nie wykonaæ  */

/* ...i zêby */
INSERT INTO Zab
VALUES
(161,'tak',NULL,NULL,NULL,'szczêka','prawo','jedynka',6,91021407790),
(162,'tak',NULL,NULL,NULL,'szczêka','prawo','dwójka',6,91021407790),
(163,'tak',NULL,NULL,NULL,'szczêka','prawo','trójka',6,91021407790),
(164,'tak',NULL,NULL,NULL,'szczêka','prawo','czwórka',6,91021407790),
(165,'tak',NULL,NULL,NULL,'szczêka','prawo','pi¹tka',6,91021407790),
(166,'tak',NULL,NULL,NULL,'szczêka','prawo','szóstka',6,91021407790),
(167,'tak',NULL,NULL,NULL,'szczêka','prawo','siódemka',6,91021407790),
(168,'tak',NULL,NULL,NULL,'szczêka','prawo','ósemka',6,91021407790),

(169,'tak',NULL,NULL,NULL,'szczêka','lewo','jedynka',6,91021407790),
(170,'tak',NULL,NULL,NULL,'szczêka','lewo','dwójka',6,91021407790),
(171,'tak',NULL,NULL,NULL,'szczêka','lewo','trójka',6,91021407790),
(172,'tak',NULL,NULL,NULL,'szczêka','lewo','czwórka',6,91021407790),
(173,'tak',NULL,NULL,NULL,'szczêka','lewo','pi¹tka',6,91021407790),
(174,'tak',NULL,NULL,NULL,'szczêka','lewo','szóstka',6,91021407790),
(175,'tak',NULL,NULL,NULL,'szczêka','lewo','siódemka',6,91021407790),
(176,'tak',NULL,NULL,NULL,'szczêka','lewo','ósemka',6,91021407790);


/* ostatnio nas odwiedzi³, trzeba update'owaæ pewne informacje */


UPDATE Karta_pacjenta SET data_ostatniej_wizyty='2013-01-21' WHERE ID_karty_pacjenta = 6;

UPDATE Karta_pacjenta SET data_ostatniego_przegladu='2013-01-21' WHERE ID_karty_pacjenta = 6;

COMMIT TRANSACTION