CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW wydzwonione AS
    SELECT 
        dzwonienie.dzwonienie__ID AS dzwonienie__ID,
        dzwonienie.dzw__kiedyzadzwonic AS dzw__kiedyzadzwonic,
        dzwonienie.dzw__zadzwonione AS dzw__zadzwonione,
        dzwonienie.klient_klient__ID AS klient_klient__ID,
        klient.klient__ID AS klient__ID,
        klient.klient__imie AS klient__imie,
        klient.klient__nazwisko AS klient__nazwisko,
        klient.klient__pesel AS klient__pesel,
        klient.klient__numertelefonu AS klient__numertelefonu,
        efekt_dzwonienia.efekt_dzwonienia__ID AS efekt_dzwonienia__ID,
        efekt_dzwonienia.efekt_dzwonienia__opis AS efekt_dzwonienia__opis,
        efekt_dzwonienia.dzwonienie_dzwonienie__ID AS dzwonienie_dzwonienie__ID
    FROM
        dzwonienie
            LEFT JOIN
        klient ON klient.klient__ID = dzwonienie.klient_klient__ID
            LEFT JOIN
        efekt_dzwonienia ON efekt_dzwonienia.dzwonienie_dzwonienie__ID = dzwonienie.dzwonienie__ID
    WHERE
        dzwonienie.dzw__zadzwonione = 1;