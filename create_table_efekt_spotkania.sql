CREATE TABLE `efekt_spotkania` (
  `efekt__ID` int(11) NOT NULL AUTO_INCREMENT,
  `efekt__opis` text,
  `spotkanie_spotkanie__ID` int(11) NOT NULL,
  PRIMARY KEY (`efekt__ID`),
  KEY `fk_efekt_spotkania_spotkanie_idx` (`spotkanie_spotkanie__ID`),
  CONSTRAINT `fk_efekt_spotkania_spotkanie` FOREIGN KEY (`spotkanie_spotkanie__ID`) REFERENCES `spotkanie` (`spotkanie__ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='Tabela opisujaca efekt spotkania';
