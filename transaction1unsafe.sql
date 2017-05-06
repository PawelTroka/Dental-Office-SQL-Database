/* Transakcja 1  - bez zabezpiecze� */
BEGIN TRANSACTION


/* Dodanie nowej osoby... */
INSERT INTO Osoba VALUES 
(92050907888, 'Athena', 'Hristanas', '1992-05-09', 'K', 'athena@fizyka.dk', '607-651-300', '80-404 Gda�sk, ul. Dzielna 11' );

/* ...kt�ra jest klientem... */
INSERT INTO Klient
VALUES
(92050907888, 'student',0);

/* ...ma kart� pacjenta... */
INSERT INTO Karta_pacjenta
VALUES
(6,NULL,NULL,NULL,NULL,NULL,92050907888);

/* ...i z�by */
INSERT INTO Zab
VALUES
(161,'tak',NULL,NULL,NULL,'szcz�ka','prawo','jedynka',6,92050907888),
(162,'tak',NULL,NULL,NULL,'szcz�ka','prawo','dw�jka',6,92050907888),
(163,'tak',NULL,NULL,NULL,'szcz�ka','prawo','tr�jka',6,92050907888),
(164,'tak',NULL,NULL,NULL,'szcz�ka','prawo','czw�rka',6,92050907888),
(165,'tak',NULL,NULL,NULL,'szcz�ka','prawo','pi�tka',6,92050907888),
(166,'tak',NULL,NULL,NULL,'szcz�ka','prawo','sz�stka',6,92050907888),
(167,'tak',NULL,NULL,NULL,'szcz�ka','prawo','si�demka',6,92050907888),
(168,'tak',NULL,NULL,NULL,'szcz�ka','prawo','�semka',6,92050907888),
(169,'tak',NULL,NULL,NULL,'szcz�ka','lewo','jedynka',6,92050907888),
(170,'tak',NULL,NULL,NULL,'szcz�ka','lewo','dw�jka',6,92050907888),
(171,'tak',NULL,NULL,NULL,'szcz�ka','lewo','tr�jka',6,92050907888),
(172,'tak',NULL,NULL,NULL,'szcz�ka','lewo','czw�rka',6,92050907888),
(173,'tak',NULL,NULL,NULL,'szcz�ka','lewo','pi�tka',6,92050907888),
(174,'tak',NULL,NULL,NULL,'szcz�ka','lewo','sz�stka',6,92050907888),
(175,'tak',NULL,NULL,NULL,'szcz�ka','lewo','si�demka',6,92050907888),
(176,'tak',NULL,NULL,NULL,'szcz�ka','lewo','�semka',6,92050907888)
(177,'tak',NULL,NULL,NULL,'�uchwa','prawo','jedynka',6,92050907888),
(178,'tak',NULL,NULL,NULL,'�uchwa','prawo','dw�jka',6,92050907888),
(179,'tak',NULL,NULL,NULL,'�uchwa','prawo','tr�jka',6,92050907888),
(180,'tak',NULL,NULL,NULL,'�uchwa','prawo','czw�rka',6,92050907888),
(181,'tak',NULL,NULL,NULL,'�uchwa','prawo','pi�tka',6,92050907888),
(182,'tak',NULL,NULL,NULL,'�uchwa','prawo','sz�stka',6,92050907888),
(183,'tak',NULL,NULL,NULL,'�uchwa','prawo','si�demka',6,92050907888),
(184,'tak',NULL,NULL,NULL,'�uchwa','prawo','�semka',6,92050907888),
(185,'tak',NULL,NULL,NULL,'�uchwa','lewo','jedynka',6,92050907888),
(186,'tak',NULL,NULL,NULL,'�uchwa','lewo','dw�jka',6,92050907888),
(187,'tak',NULL,NULL,NULL,'�uchwa','lewo','tr�jka',6,92050907888),
(188,'tak',NULL,NULL,NULL,'�uchwa','lewo','czw�rka',6,92050907888),
(189,'tak',NULL,NULL,NULL,'�uchwa','lewo','pi�tka',6,92050907888),
(190,'tak',NULL,NULL,NULL,'�uchwa','lewo','sz�stka',6,92050907888),
(191,'tak',NULL,NULL,NULL,'�uchwa','lewo','si�demka',6,92050907888),
(192,'tak',NULL,NULL,NULL,'�uchwa','lewo','�semka',6,92050907888);

/* ostatnio nas odwiedzi�a, trzeba update'owa� pewne informacje */
UPDATE Klient SET Licznik_wizyt=Licznik_wizyt+1 WHERE PESEL_klient = 92050907888;

UPDATE Karta_pacjenta SET data_ostatniej_wizyty='2013-01-21' WHERE ID_karty_pacjenta = 6;

UPDATE Karta_pacjenta SET data_ostatniego_przegladu='2013-01-21' WHERE ID_karty_pacjenta = 6;

WAITFOR DELAY '00:00:10';

/* Pokazanie wszystkich os�b, klient�w, kart pacjent�w */
SELECT * FROM Osoba;
SELECT * FROM Klient;
SELECT * FROM Karta_pacjenta;

COMMIT TRANSACTION