CREATE TABLE `spotkanie` (
  `spotkanie__ID` int(11) NOT NULL AUTO_INCREMENT,
  `spot__termin` datetime DEFAULT NULL,
  `spot__przypomnienie_dni` int(11) DEFAULT NULL,
  `spot__przypomnienie_godz` int(11) DEFAULT NULL,
  `spot__przypomnienie_min` int(11) DEFAULT NULL,
  `spot__odbylo_sie` tinyint(4) DEFAULT NULL,
  `klient_klient__ID` int(11) NOT NULL,
  PRIMARY KEY (`spotkanie__ID`),
  KEY `fk_spotkanie_klient1_idx` (`klient_klient__ID`),
  CONSTRAINT `fk_spotkanie_klient1` FOREIGN KEY (`klient_klient__ID`) REFERENCES `klient` (`klient__ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='Tabela pomagająca umówić spotkania';
