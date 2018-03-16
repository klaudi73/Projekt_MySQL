CREATE TABLE `klient` (
  `klient__ID` int(11) NOT NULL AUTO_INCREMENT,
  `klient__imie` varchar(45) DEFAULT NULL,
  `klient__nazwisko` varchar(100) DEFAULT NULL,
  `klient__pesel` varchar(11) DEFAULT NULL,
  `klient__numertelefonu` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`klient__ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Tabela zawierająca dane klientów';
