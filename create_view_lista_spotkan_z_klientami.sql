CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `lista_spotkan_z_klientami` AS
    SELECT 
        `spotkanie`.`spotkanie__ID` AS `spotkanie__ID`,
        `spotkanie`.`spot__termin` AS `spot__termin`,
        `spotkanie`.`spot__przypomnienie_dni` AS `spot__przypomnienie_dni`,
        `spotkanie`.`spot__przypomnienie_godz` AS `spot__przypomnienie_godz`,
        `spotkanie`.`spot__przypomnienie_min` AS `spot__przypomnienie_min`,
        `spotkanie`.`spot__odbylo_sie` AS `spot__odbylo_sie`,
        `spotkanie`.`klient_klient__ID` AS `klient_klient__ID`,
        `klient`.`klient__ID` AS `klient__ID`,
        `klient`.`klient__imie` AS `klient__imie`,
        `klient`.`klient__nazwisko` AS `klient__nazwisko`,
        `klient`.`klient__pesel` AS `klient__pesel`,
        `klient`.`klient__numertelefonu` AS `klient__numertelefonu`,
        `spotkania_miejsca`.`spotkania_miejsca__ID` AS `spotkania_miejsca__ID`,
        `spotkania_miejsca`.`spotkania_miejsca__nazwa_miejsca` AS `spotkania_miejsca__nazwa_miejsca`,
        `spotkania_miejsca`.`spotkania_miejsca__ulica` AS `spotkania_miejsca__ulica`,
        `spotkania_miejsca`.`spotkania_miejsca__nr_domu` AS `spotkania_miejsca__nr_domu`,
        `spotkania_miejsca`.`spotkania_miejsca__nr_lokalu` AS `spotkania_miejsca__nr_lokalu`,
        `spotkania_miejsca`.`spotkania_miejsca__miasto` AS `spotkania_miejsca__miasto`,
        `spotkania_miejsca`.`spotkania_miejsca__panstwo` AS `spotkania_miejsca__panstwo`,
        `spotkanie_miejsce`.`spotkanie_miejsce__ID` AS `spotkanie_miejsce__ID`,
        `spotkanie_miejsce`.`spotkania_miejsca_spotkanie_miejsce__ID` AS `spotkania_miejsca_spotkanie_miejsce__ID`,
        `spotkanie_miejsce`.`spotkanie_spotkanie__ID` AS `spotkanie_miejsce__spotkanie_spotkanie__ID`
    FROM
        (((`spotkanie`
        JOIN `klient`)
        JOIN `spotkania_miejsca`)
        JOIN `spotkanie_miejsce`)
    WHERE
        ((`klient`.`klient__ID` = `spotkanie`.`klient_klient__ID`)
            AND (`spotkanie`.`spotkanie__ID` = `spotkanie_miejsce`.`spotkanie_spotkanie__ID`)
            AND (`spotkanie_miejsce`.`spotkania_miejsca_spotkanie_miejsce__ID` = `spotkania_miejsca`.`spotkania_miejsca__ID`)
            AND (`spotkanie`.`spot__odbylo_sie` = 0))