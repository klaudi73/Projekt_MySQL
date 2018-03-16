CREATE TABLE `umowa` (
  `umowa__ID` int(11) NOT NULL AUTO_INCREMENT,
  `umowa__data_rozpoczecia` date DEFAULT NULL,
  `wniosek_wniosek__ID` int(11) NOT NULL,
  PRIMARY KEY (`umowa__ID`),
  KEY `fk_umowa_wniosek1_idx` (`wniosek_wniosek__ID`),
  CONSTRAINT `fk_umowa_wniosek1` FOREIGN KEY (`wniosek_wniosek__ID`) REFERENCES `wniosek` (`wniosek__ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabela zawierająca dane o uruchomionych umowach z klientami.';
