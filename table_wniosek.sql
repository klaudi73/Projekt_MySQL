CREATE TABLE `wniosek` (
  `wniosek__ID` int(11) NOT NULL AUTO_INCREMENT,
  `wniosek__numer_wniosku` varchar(45) DEFAULT NULL,
  `wniosek__stawka_uroczniona` varchar(45) DEFAULT NULL,
  `wniosek__czestotliwosc` varchar(45) DEFAULT NULL,
  `wniosek__czas_trwania` varchar(45) DEFAULT NULL,
  `klient_klient__ID` int(11) NOT NULL,
  PRIMARY KEY (`wniosek__ID`),
  KEY `fk_wniosek_klient1_idx` (`klient_klient__ID`),
  CONSTRAINT `fk_wniosek_klient1` FOREIGN KEY (`klient_klient__ID`) REFERENCES `klient` (`klient__ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='Tabela zawierająca dane o podpisanych wnioskach z klientami.';
