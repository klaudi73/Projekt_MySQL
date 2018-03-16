CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `lista_wnioskow_bez_umow` AS
    SELECT 
        `w`.`wniosek__ID` AS `wniosek__ID`,
        `w`.`wniosek__numer_wniosku` AS `wniosek__numer_wniosku`,
        `w`.`wniosek__stawka_uroczniona` AS `wniosek__stawka_uroczniona`,
        `w`.`wniosek__czestotliwosc` AS `wniosek__czestotliwosc`,
        `w`.`wniosek__czas_trwania` AS `wniosek__czas_trwania`,
        `w`.`klient_klient__ID` AS `klient_klient__ID`
    FROM
        (`wniosek` `w`
        LEFT JOIN `umowa` `u` ON ((`w`.`wniosek__ID` = `u`.`wniosek_wniosek__ID`)))
    WHERE
        ISNULL(`u`.`wniosek_wniosek__ID`)