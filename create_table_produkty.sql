CREATE TABLE `produkty` (
  `produkty__ID` int(11) NOT NULL AUTO_INCREMENT,
  `prod__nazwa` varchar(255) DEFAULT NULL,
  `prod__opis` text,
  PRIMARY KEY (`produkty__ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='Tabela produktów ubezpieczeniowych';
