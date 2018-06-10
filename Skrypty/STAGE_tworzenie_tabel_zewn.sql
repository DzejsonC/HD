--DROPPING

 drop table ex_stg_companies;

drop table ex_stg_adresses;

-- TWORZENIE TABELEK "EXTERNAL"


CREATE TABLE   ex_stg_companies
(Nr_klienta VARCHAR2(255),
Nr_firmy VARCHAR2(255),
Nazwa_rejestrowa VARCHAR2(255),
REGON VARCHAR2(255),
KRS VARCHAR2(255),
NIP VARCHAR2(255)) 
ORGANIZATION EXTERNAL
(TYPE ORACLE_LOADER
DEFAULT DIRECTORY load_dir
ACCESS PARAMETERS
(
RECORDS DELIMITED BY newline fields terminated by ';' skip 1
)
LOCATION ('Companies.csv')
);




CREATE TABLE   ex_stg_adresses
(Nr_klienta VARCHAR2(255),
Typ_adresu VARCHAR2(255),
Nazwa_ulicy VARCHAR2(255),
NrNieruchomosci VARCHAR2(255),
NrLokalu VARCHAR2(255),
KodPocztowy VARCHAR2(255),
Miejscowosc VARCHAR2(255),
Wojewodztwo VARCHAR2(255)) 
ORGANIZATION EXTERNAL
(TYPE ORACLE_LOADER
DEFAULT DIRECTORY load_dir
ACCESS PARAMETERS
(
RECORDS DELIMITED BY newline fields terminated by ';' skip 1
)
LOCATION ('Adresses.csv')
);


CREATE TABLE   ex_stg_clients
(Nr_klienta VARCHAR2(255),
data_utworzenia VARCHAR2(255),
data_zakonczenia VARCHAR2(255),
firma VARCHAR2(255)) 
ORGANIZATION EXTERNAL
(TYPE ORACLE_LOADER
DEFAULT DIRECTORY load_dir
ACCESS PARAMETERS
(
RECORDS DELIMITED BY newline fields terminated by ';' skip 1
)
LOCATION ('Clients.csv')
);


CREATE TABLE  ex_stg_persons
(Nr_klienta VARCHAR(255),
PESEL VARCHAR(255),
Imie VARCHAR(255),
Imie2 VARCHAR(255),
Nazwisko VARCHAR(255),
Data_urodzenia VARCHAR2(255)) 
ORGANIZATION EXTERNAL
(TYPE ORACLE_LOADER
DEFAULT DIRECTORY load_dir
ACCESS PARAMETERS
(
RECORDS DELIMITED BY newline fields terminated by ';' skip 1
)
LOCATION ('Persons.csv')
);










