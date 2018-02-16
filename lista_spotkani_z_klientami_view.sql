CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `agencja`.`lista_spotkan_z_klientami` AS
    SELECT 
        `agencja`.`spotkanie`.`spotkanie__ID` AS `spotkanie__ID`,
        `agencja`.`spotkanie`.`spot__termin` AS `spot__termin`,
        `agencja`.`spotkanie`.`spot__przypomnienie_dni` AS `spot__przypomnienie_dni`,
        `agencja`.`spotkanie`.`spot__przypomnienie_godz` AS `spot__przypomnienie_godz`,
        `agencja`.`spotkanie`.`spot__przypomnienie_min` AS `spot__przypomnienie_min`,
        `agencja`.`spotkanie`.`spot__odbylo_sie` AS `spot__odbylo_sie`,
        `agencja`.`spotkanie`.`klient_klient__ID` AS `klient_klient__ID`,
        `agencja`.`klient`.`klient__ID` AS `klient__ID`,
        `agencja`.`klient`.`klient__imie` AS `klient__imie`,
        `agencja`.`klient`.`klient__nazwisko` AS `klient__nazwisko`,
        `agencja`.`klient`.`klient__pesel` AS `klient__pesel`,
        `agencja`.`klient`.`klient__numertelefonu` AS `klient__numertelefonu`,
        `agencja`.`spotkania_miejsca`.`spotkania_miejsca__ID` AS `spotkania_miejsca__ID`,
        `agencja`.`spotkania_miejsca`.`spotkania_miejsca__nazwa_miejsca` AS `spotkania_miejsca__nazwa_miejsca`,
        `agencja`.`spotkania_miejsca`.`spotkania_miejsca__ulica` AS `spotkania_miejsca__ulica`,
        `agencja`.`spotkania_miejsca`.`spotkania_miejsca__nr_domu` AS `spotkania_miejsca__nr_domu`,
        `agencja`.`spotkania_miejsca`.`spotkania_miejsca__nr_lokalu` AS `spotkania_miejsca__nr_lokalu`,
        `agencja`.`spotkania_miejsca`.`spotkania_miejsca__miasto` AS `spotkania_miejsca__miasto`,
        `agencja`.`spotkania_miejsca`.`spotkania_miejsca__panstwo` AS `spotkania_miejsca__panstwo`,
        `agencja`.`spotkanie_miejsce`.`spotkanie_miejsce__ID` AS `spotkanie_miejsce__ID`,
        `agencja`.`spotkanie_miejsce`.`spotkania_miejsca_spotkanie_miejsce__ID` AS `spotkania_miejsca_spotkanie_miejsce__ID`,
        `agencja`.`spotkanie_miejsce`.`spotkanie_spotkanie__ID` AS `spotkanie_miejsce__spotkanie_spotkanie__ID`
    FROM
        (((`agencja`.`spotkanie`
        JOIN `agencja`.`klient`)
        JOIN `agencja`.`spotkania_miejsca`)
        JOIN `agencja`.`spotkanie_miejsce`)
    WHERE
        ((`agencja`.`klient`.`klient__ID` = `agencja`.`spotkanie`.`klient_klient__ID`)
            AND (`agencja`.`spotkanie`.`spotkanie__ID` = `agencja`.`spotkanie_miejsce`.`spotkania_miejsca_spotkanie_miejsce__ID`)
            AND (`agencja`.`spotkanie_miejsce`.`spotkania_miejsca_spotkanie_miejsce__ID` = `agencja`.`spotkania_miejsca`.`spotkania_miejsca__ID`))