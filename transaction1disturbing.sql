/* Transakcja przeszkadzaj�ca transakcji 1 */
BEGIN TRANSACTION

/* Dodanie nowej osoby... */
INSERT INTO Osoba VALUES 
(91021407790, 'Pawe�', 'Troka', '1991-02-14', 'M', 'ptroka@fizyka.dk', '725-656-424', '80-404 Gda�sk, ul. Dzielna 11' );

/* ...kt�ra jest klientem... */
INSERT INTO Klient
VALUES
(91021407790, 'student',0);


/* ...ma kart� pacjenta... */
INSERT INTO Karta_pacjenta
VALUES
(6,NULL,NULL,NULL,NULL,NULL,91021407790); /* tutaj jest tak naprawd� kluczowa sprawa dotycz�ca faktu przeszkadzania tej transakcji transakcji 1, ot� dodajemy numer karty pacjenta identyczny z numerem karty pacjenta w transakcji 1, je�eli transakcja 1 by�aby dobrze zabezpieczona - powinna ta operacja (de facto nadpisuj�ca operacj� z transakcji 1) si� nie wykona� - powinien pojawi� si� b��d i� Karta_pacjenta o takim ID ju� istnieje i powinien by� wykonany rollback - transakcja przeszkadzaj�ca powinna si� nie wykona�  */

/* ...i z�by */
INSERT INTO Zab
VALUES
(161,'tak',NULL,NULL,NULL,'szcz�ka','prawo','jedynka',6,91021407790),
(162,'tak',NULL,NULL,NULL,'szcz�ka','prawo','dw�jka',6,91021407790),
(163,'tak',NULL,NULL,NULL,'szcz�ka','prawo','tr�jka',6,91021407790),
(164,'tak',NULL,NULL,NULL,'szcz�ka','prawo','czw�rka',6,91021407790),
(165,'tak',NULL,NULL,NULL,'szcz�ka','prawo','pi�tka',6,91021407790),
(166,'tak',NULL,NULL,NULL,'szcz�ka','prawo','sz�stka',6,91021407790),
(167,'tak',NULL,NULL,NULL,'szcz�ka','prawo','si�demka',6,91021407790),
(168,'tak',NULL,NULL,NULL,'szcz�ka','prawo','�semka',6,91021407790),

(169,'tak',NULL,NULL,NULL,'szcz�ka','lewo','jedynka',6,91021407790),
(170,'tak',NULL,NULL,NULL,'szcz�ka','lewo','dw�jka',6,91021407790),
(171,'tak',NULL,NULL,NULL,'szcz�ka','lewo','tr�jka',6,91021407790),
(172,'tak',NULL,NULL,NULL,'szcz�ka','lewo','czw�rka',6,91021407790),
(173,'tak',NULL,NULL,NULL,'szcz�ka','lewo','pi�tka',6,91021407790),
(174,'tak',NULL,NULL,NULL,'szcz�ka','lewo','sz�stka',6,91021407790),
(175,'tak',NULL,NULL,NULL,'szcz�ka','lewo','si�demka',6,91021407790),
(176,'tak',NULL,NULL,NULL,'szcz�ka','lewo','�semka',6,91021407790);


/* ostatnio nas odwiedzi�, trzeba update'owa� pewne informacje */


UPDATE Karta_pacjenta SET data_ostatniej_wizyty='2013-01-21' WHERE ID_karty_pacjenta = 6;

UPDATE Karta_pacjenta SET data_ostatniego_przegladu='2013-01-21' WHERE ID_karty_pacjenta = 6;

COMMIT TRANSACTION