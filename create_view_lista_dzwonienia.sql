CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `agencja`.`lista_dzwonienia` AS
    SELECT 
        `agencja`.`dzwonienie`.`dzwonienie__ID` AS `dzwonienie__ID`,
        `agencja`.`dzwonienie`.`dzw__kiedyzadzwonic` AS `dzw__kiedyzadzwonic`,
        `agencja`.`dzwonienie`.`dzw__zadzwonione` AS `dzw__zadzwonione`,
        `agencja`.`dzwonienie`.`klient_klient__ID` AS `klient_klient__ID`,
        `agencja`.`klient`.`klient__ID` AS `klient__ID`,
        `agencja`.`klient`.`klient__imie` AS `klient__imie`,
        `agencja`.`klient`.`klient__nazwisko` AS `klient__nazwisko`,
        `agencja`.`klient`.`klient__pesel` AS `klient__pesel`,
        `agencja`.`klient`.`klient__numertelefonu` AS `klient__numertelefonu`
    FROM
        (`agencja`.`dzwonienie`
        JOIN `agencja`.`klient`)
    WHERE
        (`agencja`.`klient`.`klient__ID` = `agencja`.`dzwonienie`.`klient_klient__ID`);
