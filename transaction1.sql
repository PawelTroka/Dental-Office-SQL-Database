/* Transakcja 1 */
BEGIN TRANSACTION

SET IMPLICIT_TRANSACTIONS OFF;
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

/* Dodanie nowej osoby... */
INSERT INTO Osoba VALUES 
(92050907888, 'Athena', 'Hristanas', '1992-05-09', 'K', 'athena@fizyka.dk', '607-651-300', '80-404 Gdañsk, ul. Dzielna 11' );

/* ...która jest klientem... */
INSERT INTO Klient
VALUES
(92050907888, 'student',0);

/* ...ma kartê pacjenta... */
INSERT INTO Karta_pacjenta
VALUES
(6,NULL,NULL,NULL,NULL,NULL,92050907888);

/* ...i zêby */
INSERT INTO Zab
VALUES
(161,'tak',NULL,NULL,NULL,'szczêka','prawo','jedynka',6,92050907888),
(162,'tak',NULL,NULL,NULL,'szczêka','prawo','dwójka',6,92050907888),
(163,'tak',NULL,NULL,NULL,'szczêka','prawo','trójka',6,92050907888),
(164,'tak',NULL,NULL,NULL,'szczêka','prawo','czwórka',6,92050907888),
(165,'tak',NULL,NULL,NULL,'szczêka','prawo','pi¹tka',6,92050907888),
(166,'tak',NULL,NULL,NULL,'szczêka','prawo','szóstka',6,92050907888),
(167,'tak',NULL,NULL,NULL,'szczêka','prawo','siódemka',6,92050907888),
(168,'tak',NULL,NULL,NULL,'szczêka','prawo','ósemka',6,92050907888),

(169,'tak',NULL,NULL,NULL,'szczêka','lewo','jedynka',6,92050907888),
(170,'tak',NULL,NULL,NULL,'szczêka','lewo','dwójka',6,92050907888),
(171,'tak',NULL,NULL,NULL,'szczêka','lewo','trójka',6,92050907888),
(172,'tak',NULL,NULL,NULL,'szczêka','lewo','czwórka',6,92050907888),
(173,'tak',NULL,NULL,NULL,'szczêka','lewo','pi¹tka',6,92050907888),
(174,'tak',NULL,NULL,NULL,'szczêka','lewo','szóstka',6,92050907888),
(175,'tak',NULL,NULL,NULL,'szczêka','lewo','siódemka',6,92050907888),
(176,'tak',NULL,NULL,NULL,'szczêka','lewo','ósemka',6,92050907888);


/* ostatnio nas odwiedzi³a, trzeba update'owaæ pewne informacje */
UPDATE Klient SET Licznik_wizyt=Licznik_wizyt+1 WHERE PESEL_klient = 92050907888;

UPDATE Karta_pacjenta SET data_ostatniej_wizyty='2013-01-21' WHERE ID_karty_pacjenta = 6;

UPDATE Karta_pacjenta SET data_ostatniego_przegladu='2013-01-21' WHERE ID_karty_pacjenta = 6;

WAITFOR DELAY '00:00:10';

/* Pokazanie wszystkich osób, klientów, kart pacjentów */
SELECT * FROM Osoba;
SELECT * FROM Klient;
SELECT * FROM Karta_pacjenta;

COMMIT TRANSACTION
