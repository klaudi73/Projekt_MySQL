CREATE TABLE `users` (
  `users__ID` int(11) NOT NULL AUTO_INCREMENT,
  `users__login` varchar(45) DEFAULT NULL,
  `users__pass` varchar(45) DEFAULT NULL,
  `users__perm` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`users__ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
