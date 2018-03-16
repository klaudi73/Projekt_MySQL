START TRANSACTION;
INSERT INTO spotkanie (spot__termin, spot__przypomnienie_dni, spot__przypomnienie_godz, spot__przypomnienie_min, spot__odbylo_sie, klient_klient__ID) VALUES ("2018-02-02 02:02", "0", "0", "0", 0, "2");
INSERT INTO spotkanie_miejsce (spotkania_miejsca_spotkanie_miejsce__ID, spotkanie_spotkanie__ID) VALUES ("1", last_insert_id() );
COMMIT;