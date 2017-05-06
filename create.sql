/*CREATE DATABASE gabinet_dentystyczny3;

USE gabinet_dentystyczny3;*/
DROP TABLE  Wykonany_zabieg_na_zebie, Termin, Wykonany_zabieg, Uslugi, Wizyta, Dni_godziny_przyjec, Zab, Karta_pacjenta, Klient, Dentysta, Osoba;

/* Pawe³ Troka *//* 132334 *//* Gabinet dentystyczny */


CREATE TABLE Osoba
(PESEL bigint PRIMARY KEY,
IMIE nvarchar(35) NOT NULL,
NAZWISKO nvarchar(35) NOT NULL,
DATA_URODZENIA DATE NOT NULL,
PLEC varchar(2) NOT NULL,
E_MAIL varchar(40) NOT NULL,
TELEFON varchar(25) NOT NULL,
ADRES ntext);

CREATE TABLE Klient
(PESEL_klient bigint PRIMARY KEY REFERENCES Osoba ON DELETE CASCADE NOT NULL,
Typ_znizki varchar(10),
Licznik_wizyt int);

CREATE TABLE Dentysta
(Pesel_dentysta bigint PRIMARY KEY REFERENCES Osoba ON DELETE CASCADE NOT NULL,
Tytul_zawodowy varchar(35),
Stanowisko varchar(35) NOT NULL,
Pensja money NOT NULL,
Numer_konta_bankowego varchar(70),
NIP bigint NOT NULL);

CREATE TABLE Karta_pacjenta
(ID_karty_pacjenta bigint PRIMARY KEY,
przeciwskazania ntext,
uczulenia ntext,
przebyte_choroby ntext,
data_ostatniej_wizyty DATE,
data_ostatniego_przegladu DATE,
Id_pacjenta bigint REFERENCES Klient ON DELETE CASCADE NOT NULL);

CREATE TABLE Zab
(ID_zeba int PRIMARY KEY,
czy_zdrowy varchar(3) NOT NULL,
co_jeszcze_do_zrobienia ntext,
stan_zeba ntext,
jaka_proteza varchar(35),
polozenie_szczeka_zuchwa nvarchar(15) NOT NULL,
polozenie_lewo_prawo varchar(15) NOT NULL,
nazwa_zeba nvarchar(10) NOT NULL,
Id_pacjenta bigint REFERENCES Karta_pacjenta ON DELETE CASCADE NOT NULL,
Id_klienta bigint REFERENCES Klient NOT NULL);


CREATE TABLE Dni_godziny_przyjec
(ID_dni_godzin_przejec int PRIMARY KEY,
dzien_tygodnia varchar(20) NOT NULL,
od_godziny TIME NOT NULL,
do_godziny TIME NOT NULL,
Id_dentysty bigint REFERENCES Dentysta ON DELETE CASCADE NOT NULL);

CREATE TABLE Wizyta
(ID_wizyty int PRIMARY KEY,
data_odbycia_wizyty DATE,
Kwota smallmoney,
Id_klienta bigint REFERENCES Klient ON DELETE NO ACTION NOT NULL);

CREATE TABLE Uslugi
(ID_uslugi int PRIMARY KEY,
Nazwa nvarchar(35), /* nazwa nie jest NOT NULL, gdy¿ przewidujemy us³ui bez nazwy*/
Cena_PLN smallmoney NOT NULL,
Liczba_sprzedanych int);

CREATE TABLE Wykonany_zabieg
(ID_zabiegu int PRIMARY KEY,
Nazwa_zabiegu nvarchar(20) NOT NULL,
Opis_przebiegu_wykonywania_danego_zabiegu ntext,
Kwota_PLN smallmoney,
Id_wizyty int REFERENCES Wizyta ON DELETE CASCADE NOT NULL,
Id_dentysty bigint REFERENCES Dentysta ON DELETE CASCADE NOT NULL,
Id_uslugi int REFERENCES Uslugi ON DELETE NO ACTION NOT NULL); /* z jakiej us³ugi sk³ada³ siê zabieg */

CREATE TABLE Termin
(ID_terminu int PRIMARY KEY,
data_terminu DATE NOT NULL,
dzien_tygodnia varchar(20),
od_godziny TIME NOT NULL,
do_godziny TIME NOT NULL,
Id_klient bigint REFERENCES Klient ON DELETE CASCADE NOT NULL, /* na termin jest zapisany klient */
Id_dentysty bigint REFERENCES Dentysta ON DELETE NO ACTION NOT NULL, /* do terminu przypisany jest dentysta */
Id_wizyty int REFERENCES Wizyta ON DELETE SET NULL); /* termin przechodzi w wizytê, lub jeszcze nie przeszed³ (NULL) */

/* __ Relacje wiele do wiele __ */
/* zabieg na zebie */
CREATE TABLE Wykonany_zabieg_na_zebie
(Id_zeba int REFERENCES Zab ON DELETE CASCADE NOT NULL,
Id_zabiegu int REFERENCES Wykonany_zabieg ON DELETE NO ACTION NOT NULL);