/* Transakcja 2 */
BEGIN TRANSACTION

SET IMPLICIT_TRANSACTIONS OFF;
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

/* odwiedzi� nas nasz sta�y klient, zwi�kszamy licznik wizyt */
UPDATE Klient SET Licznik_wizyt=Licznik_wizyt+1 WHERE PESEL_klient = 67060182700;


INSERT INTO Wizyta /* dodawana jest nowa wizyta */
VALUES
(15,'2012-02-08',105,62091635004);


UPDATE Termin SET Id_wizyty = 15 WHERE Id_klient = 67060182700;


INSERT INTO Wykonany_zabieg /* sk�adaj�cy si� z jednej us�ugi */
VALUES
(2,'Wyrywanie tr�jki','zabieg przebieg� poprawnie',120,15,88121241222,8);/* wizyta, dentysta, uslugi */

/*zwi�kszamy licznik sprzedanej us�ugi*/
UPDATE Uslugi SET Liczba_sprzedanych=Liczba_sprzedanych+1 WHERE ID_uslugi = 8;

/* relacja mi�dzy wykonanym zabiegiem a z�bem */
INSERT INTO Wykonany_zabieg_na_zebie
VALUES
(11,2);

UPDATE Zab SET stan_zeba = 'wyrwany' WHERE ID_zeba = 11;
UPDATE Zab SET co_jeszcze_do_zrobienia = 'wstawi� implant' WHERE ID_zeba = 11;

WAITFOR DELAY '00:00:10';
/* Pokazanie wszystkich klient�w, wizyt, termin�w, z�b�w, wykonanych zabieg�w */
SELECT * FROM Klient;
SELECT * FROM Wizyta;
SELECT * FROM Termin;
SELECT * FROM Zab;
SELECT * FROM Wykonany_zabieg;
COMMIT TRANSACTION