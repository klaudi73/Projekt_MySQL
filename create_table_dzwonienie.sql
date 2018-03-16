CREATE TABLE `dzwonienie` (
  `dzwonienie__ID` int(11) NOT NULL AUTO_INCREMENT,
  `dzw__kiedyzadzwonic` datetime DEFAULT NULL,
  `dzw__zadzwonione` tinyint(4) DEFAULT NULL,
  `klient_klient__ID` int(11) NOT NULL,
  PRIMARY KEY (`dzwonienie__ID`),
  KEY `fk_dzwonienie_klient1_idx` (`klient_klient__ID`),
  CONSTRAINT `fk_dzwonienie_klient1` FOREIGN KEY (`klient_klient__ID`) REFERENCES `klient` (`klient__ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Tabela zawierająca dane o połączeniach z klientami.';
