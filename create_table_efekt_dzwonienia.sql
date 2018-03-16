CREATE TABLE `efekt_dzwonienia` (
  `efekt_dzwonienia__ID` int(11) NOT NULL AUTO_INCREMENT,
  `efekt_dzwonienia__opis` varchar(255) DEFAULT NULL,
  `dzwonienie_dzwonienie__ID` int(11) NOT NULL,
  PRIMARY KEY (`efekt_dzwonienia__ID`),
  KEY `fk_efekt_dzwonienia_dzwonienie1_idx` (`dzwonienie_dzwonienie__ID`),
  CONSTRAINT `fk_efekt_dzwonienia_dzwonienie1` FOREIGN KEY (`dzwonienie_dzwonienie__ID`) REFERENCES `dzwonienie` (`dzwonienie__ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabela zawierająca dane o efektach połączeń z klientami.';
