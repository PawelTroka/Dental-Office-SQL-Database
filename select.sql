/* zapytania */

/* widok + porz�dkowanie */ /* wy�wietli widok oferowanych us�ug wraz z nazw� i cen�, posortowanych wed�ug popularno�ci (liczby sprzedanych) us�ug */
CREATE VIEW Oferowane_uslugi
AS SELECT Nazwa, Cena_PLN, Liczba_sprzedanych
FROM Uslugi
WHERE Nazwa IS NOT NULL
WITH CHECK OPTION;

SELECT Nazwa, Cena_PLN
FROM Oferowane_uslugi
ORDER BY Liczba_sprzedanych DESC;



/* grupowanie + funkcja agregujaca */ /* ile u nas wyda� dany klient */
SELECT Id_klienta, SUM(Kwota) AS 'Wyda� u nas:'
FROM Wizyta
GROUP BY Id_klienta


/* podzapytanie i funkcja agreguj�ca */
/* ilu jeszcze klient�w ma cokolwiek do zrobienia z z�bami? */
SELECT COUNT(*)
FROM Klient
WHERE PESEL_Klient IN
(SELECT Id_klienta
FROM Zab
WHERE co_jeszcze_do_zrobienia IS NOT NULL);



/* z��czenie i podzapytanie */
/* wypisuje pe�ne informacje os�b kt�re maj� jeszcze co� do zrobienia z z�bami */
SELECT *
FROM Klient JOIN Osoba
ON Klient.PESEL_klient = Osoba.PESEL
WHERE PESEL_Klient IN
(SELECT Id_klienta
FROM Zab
WHERE co_jeszcze_do_zrobienia IS NOT NULL);




/* z��czenie */
/* rezerwacje klient�w na terminy (terminy kt�re nie przesz�y jeszcze w wizyt�) */
SELECT PESEL, IMIE, NAZWISKO, data_terminu, od_godziny, do_godziny
FROM Osoba JOIN Termin
ON Osoba.PESEL = Termin.Id_klient
WHERE Termin.Id_wizyty IS NULL;



/* grupowanie */
/* ilo�� chorych z�b�w ka�dego z klient�w */
SELECT Id_klienta,COUNT(*) AS 'Ilo�� chorych z�b�w'
FROM Zab
WHERE czy_zdrowy ='nie'
GROUP BY Id_klienta;



/* z��czenie */
/* wypisuje co dana osoba ma jeszcze do zrobienia z z�bami */
SELECT IMIE, NAZWISKO, nazwa_zeba, polozenie_szczeka_zuchwa, polozenie_lewo_prawo, co_jeszcze_do_zrobienia
FROM Osoba JOIN Zab
ON Zab.Id_klienta = Osoba.PESEL
WHERE co_jeszcze_do_zrobienia IS NOT NULL;