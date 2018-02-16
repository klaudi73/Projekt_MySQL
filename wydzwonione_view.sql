CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `agencja`.`wydzwonione` AS
    SELECT 
        `agencja`.`dzwonienie`.`dzwonienie__ID` AS `dzwonienie__ID`,
        `agencja`.`dzwonienie`.`dzw__kiedyzadzwonic` AS `dzw__kiedyzadzwonic`,
        `agencja`.`dzwonienie`.`dzw__zadzwonione` AS `dzw__zadzwonione`,
        `agencja`.`dzwonienie`.`klient_klient__ID` AS `klient_klient__ID`,
        `agencja`.`klient`.`klient__ID` AS `klient__ID`,
        `agencja`.`klient`.`klient__imie` AS `klient__imie`,
        `agencja`.`klient`.`klient__nazwisko` AS `klient__nazwisko`,
        `agencja`.`klient`.`klient__pesel` AS `klient__pesel`,
        `agencja`.`klient`.`klient__numertelefonu` AS `klient__numertelefonu`,
        `agencja`.`efekt_dzwonienia`.`efekt_dzwonienia__ID` AS `efekt_dzwonienia__ID`,
        `agencja`.`efekt_dzwonienia`.`efekt_dzwonienia__opis` AS `efekt_dzwonienia__opis`,
        `agencja`.`efekt_dzwonienia`.`dzwonienie_dzwonienie__ID` AS `dzwonienie_dzwonienie__ID`
    FROM
        ((`agencja`.`dzwonienie`
        LEFT JOIN `agencja`.`klient` ON ((`agencja`.`klient`.`klient__ID` = `agencja`.`dzwonienie`.`klient_klient__ID`)))
        LEFT JOIN `agencja`.`efekt_dzwonienia` ON ((`agencja`.`efekt_dzwonienia`.`dzwonienie_dzwonienie__ID` = `agencja`.`dzwonienie`.`dzwonienie__ID`)))
    WHERE
        (`agencja`.`dzwonienie`.`dzw__zadzwonione` = 1);
