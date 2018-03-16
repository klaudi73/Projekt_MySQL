CREATE TABLE `produkty_zaleznosc` (
  `produkty_zaleznosc__ID` int(11) NOT NULL AUTO_INCREMENT,
  `produkty_produkty__ID` int(11) NOT NULL,
  `produkty_zaleznosc__parent__ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`produkty_zaleznosc__ID`),
  KEY `fk_produkty_zaleznosc_produkty1_idx` (`produkty_produkty__ID`),
  CONSTRAINT `fk_produkty_zaleznosc_produkty1` FOREIGN KEY (`produkty_produkty__ID`) REFERENCES `produkty` (`produkty__ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='Tabela zawierająca dane o zależnościach produktów ubezpieczeniowych.';
