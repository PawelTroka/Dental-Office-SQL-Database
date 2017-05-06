/* zapytania */

/* widok + porz¹dkowanie */ /* wyœwietli widok oferowanych us³ug wraz z nazw¹ i cen¹, posortowanych wed³ug popularnoœci (liczby sprzedanych) us³ug */
CREATE VIEW Oferowane_uslugi
AS SELECT Nazwa, Cena_PLN, Liczba_sprzedanych
FROM Uslugi
WHERE Nazwa IS NOT NULL
WITH CHECK OPTION;

SELECT Nazwa, Cena_PLN
FROM Oferowane_uslugi
ORDER BY Liczba_sprzedanych DESC;



/* grupowanie + funkcja agregujaca */ /* ile u nas wyda³ dany klient */
SELECT Id_klienta, SUM(Kwota) AS 'Wyda³ u nas:'
FROM Wizyta
GROUP BY Id_klienta


/* podzapytanie i funkcja agreguj¹ca */
/* ilu jeszcze klientów ma cokolwiek do zrobienia z zêbami? */
SELECT COUNT(*)
FROM Klient
WHERE PESEL_Klient IN
(SELECT Id_klienta
FROM Zab
WHERE co_jeszcze_do_zrobienia IS NOT NULL);



/* z³¹czenie i podzapytanie */
/* wypisuje pe³ne informacje osób które maj¹ jeszcze coœ do zrobienia z zêbami */
SELECT *
FROM Klient JOIN Osoba
ON Klient.PESEL_klient = Osoba.PESEL
WHERE PESEL_Klient IN
(SELECT Id_klienta
FROM Zab
WHERE co_jeszcze_do_zrobienia IS NOT NULL);




/* z³¹czenie */
/* rezerwacje klientów na terminy (terminy które nie przesz³y jeszcze w wizytê) */
SELECT PESEL, IMIE, NAZWISKO, data_terminu, od_godziny, do_godziny
FROM Osoba JOIN Termin
ON Osoba.PESEL = Termin.Id_klient
WHERE Termin.Id_wizyty IS NULL;



/* grupowanie */
/* iloœæ chorych zêbów ka¿dego z klientów */
SELECT Id_klienta,COUNT(*) AS 'Iloœæ chorych zêbów'
FROM Zab
WHERE czy_zdrowy ='nie'
GROUP BY Id_klienta;



/* z³¹czenie */
/* wypisuje co dana osoba ma jeszcze do zrobienia z zêbami */
SELECT IMIE, NAZWISKO, nazwa_zeba, polozenie_szczeka_zuchwa, polozenie_lewo_prawo, co_jeszcze_do_zrobienia
FROM Osoba JOIN Zab
ON Zab.Id_klienta = Osoba.PESEL
WHERE co_jeszcze_do_zrobienia IS NOT NULL;