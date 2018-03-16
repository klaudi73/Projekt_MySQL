CREATE TABLE `spotkania_miejsca` (
  `spotkania_miejsca__ID` int(11) NOT NULL AUTO_INCREMENT,
  `spotkania_miejsca__nazwa_miejsca` varchar(100) DEFAULT NULL,
  `spotkania_miejsca__ulica` varchar(45) DEFAULT NULL,
  `spotkania_miejsca__nr_domu` varchar(45) DEFAULT NULL,
  `spotkania_miejsca__nr_lokalu` varchar(45) DEFAULT NULL,
  `spotkania_miejsca__miasto` varchar(45) DEFAULT NULL,
  `spotkania_miejsca__panstwo` varchar(45) DEFAULT NULL,
  `spotkania_miejsca__opis` blob,
  PRIMARY KEY (`spotkania_miejsca__ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Tabela zawierająca dane o miejscach spotkań z klientami.';
