CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `podprodukty` AS
    SELECT 
        `produkty`.`produkty__ID` AS `produkty__ID`,
        `produkty`.`prod__nazwa` AS `prod__nazwa`,
        `produkty`.`prod__opis` AS `prod__opis`,
        `produkty_zaleznosc`.`produkty_zaleznosc__ID` AS `produkty_zaleznosc__ID`,
        `produkty_zaleznosc`.`produkty_produkty__ID` AS `produkty_produkty__ID`,
        `produkty_zaleznosc`.`produkty_zaleznosc__parent__ID` AS `produkty_zaleznosc__parent__ID`
    FROM
        (`produkty`
        JOIN `produkty_zaleznosc`)
    WHERE
        (`produkty`.`produkty__ID` = `produkty_zaleznosc`.`produkty_produkty__ID`);
