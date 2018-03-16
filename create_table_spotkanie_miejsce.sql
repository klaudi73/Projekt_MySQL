CREATE TABLE `spotkanie_miejsce` (
  `spotkanie_miejsce__ID` int(11) NOT NULL AUTO_INCREMENT,
  `spotkania_miejsca_spotkanie_miejsce__ID` int(11) NOT NULL,
  `spotkanie_spotkanie__ID` int(11) NOT NULL,
  PRIMARY KEY (`spotkanie_miejsce__ID`),
  KEY `fk_spotkanie_miejsce_spotkania_miejsca1_idx` (`spotkania_miejsca_spotkanie_miejsce__ID`),
  KEY `fk_spotkanie_miejsce_spotkanie2_idx` (`spotkanie_spotkanie__ID`),
  CONSTRAINT `fk_spotkanie_miejsce_spotkania_miejsca1` FOREIGN KEY (`spotkania_miejsca_spotkanie_miejsce__ID`) REFERENCES `spotkania_miejsca` (`spotkania_miejsca__ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_spotkanie_miejsce_spotkanie2` FOREIGN KEY (`spotkanie_spotkanie__ID`) REFERENCES `spotkanie` (`spotkanie__ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Tabela zawierająca dane o miejcach spotkań z konkretnymi z klientami.';
