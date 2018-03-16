CREATE TABLE `wniosek_produkty` (
  `wniosek_produkty__ID` int(11) NOT NULL AUTO_INCREMENT,
  `wniosek_wniosek__ID` int(11) NOT NULL,
  `wniosek_produkt__ID` int(11) NOT NULL,
  PRIMARY KEY (`wniosek_produkty__ID`),
  KEY `fk_wniosek_wniosek__ID_idx` (`wniosek_wniosek__ID`),
  KEY `fk_wniosek_produkt__ID_idx` (`wniosek_produkt__ID`),
  CONSTRAINT `fk_wniosek_produkt__ID` FOREIGN KEY (`wniosek_produkt__ID`) REFERENCES `produkty` (`produkty__ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_wniosek_wniosek__ID` FOREIGN KEY (`wniosek_wniosek__ID`) REFERENCES `wniosek` (`wniosek__ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='Tabela zawierająca dane o produktach umieszczonych we wniosku ubezpieczeniowym.';
