CREATE DATABASE  IF NOT EXISTS `controle_loja` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `controle_loja`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: controle_loja
-- ------------------------------------------------------
-- Server version	5.6.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acessorios_tipos`
--

DROP TABLE IF EXISTS `acessorios_tipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acessorios_tipos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acessorios_tipos`
--

LOCK TABLES `acessorios_tipos` WRITE;
/*!40000 ALTER TABLE `acessorios_tipos` DISABLE KEYS */;
INSERT INTO `acessorios_tipos` VALUES (1,'Jóia'),(2,'Semi-Jóia'),(3,'Bijuteria'),(4,'Artesanato');
/*!40000 ALTER TABLE `acessorios_tipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidade` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) NOT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_estado_idx` (`estado_id`),
  CONSTRAINT `FK_estado` FOREIGN KEY (`estado_id`) REFERENCES `estado` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5895 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (1,'Adamantina',26),(2,'Adolfo',26),(3,'Aguaí',26),(4,'Águas da Prata',26),(5,'Águas de Lindóia',26),(6,'Águas de Santa Bárbara',26),(7,'Águas de São Pedro',26),(8,'Agudos',26),(9,'Alambari',26),(10,'Alfredo Marcondes',26),(11,'Altair',26),(12,'Altinópolis',26),(13,'Alto Alegre',26),(14,'Alumínio',26),(15,'Álvares Florence',26),(16,'Álvares Machado',26),(17,'Álvaro de Carvalho',26),(18,'Alvinlândia',26),(19,'Americana',26),(20,'Américo Brasiliense',26),(21,'Américo de Campos',26),(22,'Amparo',26),(23,'Analândia',26),(24,'Andradina',26),(25,'Angatuba',26),(26,'Anhembi',26),(27,'Anhumas',26),(28,'Aparecida',26),(29,'Aparecida d`Oeste',26),(30,'Apiaí',26),(31,'Araçariguama',26),(32,'Araçatuba',26),(33,'Araçoiaba da Serra',26),(34,'Aramina',26),(35,'Arandu',26),(36,'Arapeí',26),(37,'Araraquara',26),(38,'Araras',26),(39,'Arco-Íris',26),(40,'Arealva',26),(41,'Areias',26),(42,'Areiópolis',26),(43,'Ariranha',26),(44,'Artur Nogueira',26),(45,'Arujá',26),(46,'Aspásia',26),(47,'Assis',26),(48,'Atibaia',26),(49,'Auriflama',26),(50,'Avaí',26),(51,'Avanhandava',26),(52,'Avaré',26),(53,'Bady Bassitt',26),(54,'Balbinos',26),(55,'Bálsamo',26),(56,'Bananal',26),(57,'Barão de Antonina',26),(58,'Barbosa',26),(59,'Bariri',26),(60,'Barra Bonita',26),(61,'Barra do Chapéu',26),(62,'Barra do Turvo',26),(63,'Barretos',26),(64,'Barrinha',26),(65,'Barueri',26),(66,'Bastos',26),(67,'Batatais',26),(68,'Bauru',26),(69,'Bebedouro',26),(70,'Bento de Abreu',26),(71,'Bernardino de Campos',26),(72,'Bertioga',26),(73,'Bilac',26),(74,'Birigui',26),(75,'Biritiba-Mirim',26),(76,'Boa Esperança do Sul',26),(77,'Bocaina',26),(78,'Bofete',26),(79,'Boituva',26),(80,'Bom Jesus dos Perdões',26),(81,'Bom Sucesso de Itararé',26),(82,'Borá',26),(83,'Boracéia',26),(84,'Borborema',26),(85,'Borebi',26),(86,'Botucatu',26),(87,'Bragança Paulista',26),(88,'Braúna',26),(89,'Brejo Alegre',26),(90,'Brodowski',26),(91,'Brotas',26),(92,'Buri',26),(93,'Buritama',26),(94,'Buritizal',26),(95,'Cabrália Paulista',26),(96,'Cabreúva',26),(97,'Caçapava',26),(98,'Cachoeira Paulista',26),(99,'Caconde',26),(100,'Cafelândia',26),(101,'Caiabu',26),(102,'Caieiras',26),(103,'Caiuá',26),(104,'Cajamar',26),(105,'Cajati',26),(106,'Cajobi',26),(107,'Cajuru',26),(108,'Campina do Monte Alegre',26),(109,'Campinas',26),(110,'Campo Limpo Paulista',26),(111,'Campos do Jordão',26),(112,'Campos Novos Paulista',26),(113,'Cananéia',26),(114,'Canas',26),(115,'Cândido Mota',26),(116,'Cândido Rodrigues',26),(117,'Canitar',26),(118,'Capão Bonito',26),(119,'Capela do Alto',26),(120,'Capivari',26),(121,'Caraguatatuba',26),(122,'Carapicuíba',26),(123,'Cardoso',26),(124,'Casa Branca',26),(125,'Cássia dos Coqueiros',26),(126,'Castilho',26),(127,'Catanduva',26),(128,'Catiguá',26),(129,'Cedral',26),(130,'Cerqueira César',26),(131,'Cerquilho',26),(132,'Cesário Lange',26),(133,'Charqueada',26),(134,'Chavantes',26),(135,'Clementina',26),(136,'Colina',26),(137,'Colômbia',26),(138,'Conchal',26),(139,'Conchas',26),(140,'Cordeirópolis',26),(141,'Coroados',26),(142,'Coronel Macedo',26),(143,'Corumbataí',26),(144,'Cosmópolis',26),(145,'Cosmorama',26),(146,'Cotia',26),(147,'Cravinhos',26),(148,'Cristais Paulista',26),(149,'Cruzália',26),(150,'Cruzeiro',26),(151,'Cubatão',26),(152,'Cunha',26),(153,'Descalvado',26),(154,'Diadema',26),(155,'Dirce Reis',26),(156,'Divinolândia',26),(157,'Dobrada',26),(158,'Dois Córregos',26),(159,'Dolcinópolis',26),(160,'Dourado',26),(161,'Dracena',26),(162,'Duartina',26),(163,'Dumont',26),(164,'Echaporã',26),(165,'Eldorado',26),(166,'Elias Fausto',26),(167,'Elisiário',26),(168,'Embaúba',26),(169,'Embu das Artes',26),(170,'Embu-Guaçu',26),(171,'Emilianópolis',26),(172,'Engenheiro Coelho',26),(173,'Espírito Santo do Pinhal',26),(174,'Espírito Santo do Turvo',26),(175,'Estiva Gerbi',26),(176,'Estrela do Norte',26),(177,'Estrela d`Oeste',26),(178,'Euclides da Cunha Paulista',26),(179,'Fartura',26),(180,'Fernando Prestes',26),(181,'Fernandópolis',26),(182,'Fernão',26),(183,'Ferraz de Vasconcelos',26),(184,'Flora Rica',26),(185,'Floreal',26),(186,'Flórida Paulista',26),(187,'Florínia',26),(188,'Franca',26),(189,'Francisco Morato',26),(190,'Franco da Rocha',26),(191,'Gabriel Monteiro',26),(192,'Gália',26),(193,'Garça',26),(194,'Gastão Vidigal',26),(195,'Gavião Peixoto',26),(196,'General Salgado',26),(197,'Getulina',26),(198,'Glicério',26),(199,'Guaiçara',26),(200,'Guaimbê',26),(201,'Guaíra',26),(202,'Guapiaçu',26),(203,'Guapiara',26),(204,'Guará',26),(205,'Guaraçaí',26),(206,'Guaraci',26),(207,'Guarani d`Oeste',26),(208,'Guarantã',26),(209,'Guararapes',26),(210,'Guararema',26),(211,'Guaratinguetá',26),(212,'Guareí',26),(213,'Guariba',26),(214,'Guarujá',26),(215,'Guarulhos',26),(216,'Guatapará',26),(217,'Guzolândia',26),(218,'Herculândia',26),(219,'Holambra',26),(220,'Hortolândia',26),(221,'Iacanga',26),(222,'Iacri',26),(223,'Iaras',26),(224,'Ibaté',26),(225,'Ibirá',26),(226,'Ibirarema',26),(227,'Ibitinga',26),(228,'Ibiúna',26),(229,'Icém',26),(230,'Iepê',26),(231,'Igaraçu do Tietê',26),(232,'Igarapava',26),(233,'Igaratá',26),(234,'Iguape',26),(235,'Ilha Comprida',26),(236,'Ilha Solteira',26),(237,'Ilhabela',26),(238,'Indaiatuba',26),(239,'Indiana',26),(240,'Indiaporã',26),(241,'Inúbia Paulista',26),(242,'Ipaussu',26),(243,'Iperó',26),(244,'Ipeúna',26),(245,'Ipiguá',26),(246,'Iporanga',26),(247,'Ipuã',26),(248,'Iracemápolis',26),(249,'Irapuã',26),(250,'Irapuru',26),(251,'Itaberá',26),(252,'Itaí',26),(253,'Itajobi',26),(254,'Itaju',26),(255,'Itanhaém',26),(256,'Itaóca',26),(257,'Itapecerica da Serra',26),(258,'Itapetininga',26),(259,'Itapeva',26),(260,'Itapevi',26),(261,'Itapira',26),(262,'Itapirapuã Paulista',26),(263,'Itápolis',26),(264,'Itaporanga',26),(265,'Itapuí',26),(266,'Itapura',26),(267,'Itaquaquecetuba',26),(268,'Itararé',26),(269,'Itariri',26),(270,'Itatiba',26),(271,'Itatinga',26),(272,'Itirapina',26),(273,'Itirapuã',26),(274,'Itobi',26),(275,'Itu',26),(276,'Itupeva',26),(277,'Ituverava',26),(278,'Jaborandi',26),(279,'Jaboticabal',26),(280,'Jacareí',26),(281,'Jaci',26),(282,'Jacupiranga',26),(283,'Jaguariúna',26),(284,'Jales',26),(285,'Jambeiro',26),(286,'Jandira',26),(287,'Jardinópolis',26),(288,'Jarinu',26),(289,'Jaú',26),(290,'Jeriquara',26),(291,'Joanópolis',26),(292,'João Ramalho',26),(293,'José Bonifácio',26),(294,'Júlio Mesquita',26),(295,'Jumirim',26),(296,'Jundiaí',26),(297,'Junqueirópolis',26),(298,'Juquiá',26),(299,'Juquitiba',26),(300,'Lagoinha',26),(301,'Laranjal Paulista',26),(302,'Lavínia',26),(303,'Lavrinhas',26),(304,'Leme',26),(305,'Lençóis Paulista',26),(306,'Limeira',26),(307,'Lindóia',26),(308,'Lins',26),(309,'Lorena',26),(310,'Lourdes',26),(311,'Louveira',26),(312,'Lucélia',26),(313,'Lucianópolis',26),(314,'Luís Antônio',26),(315,'Luiziânia',26),(316,'Lupércio',26),(317,'Lutécia',26),(318,'Macatuba',26),(319,'Macaubal',26),(320,'Macedônia',26),(321,'Magda',26),(322,'Mairinque',26),(323,'Mairiporã',26),(324,'Manduri',26),(325,'Marabá Paulista',26),(326,'Maracaí',26),(327,'Marapoama',26),(328,'Mariápolis',26),(329,'Marília',26),(330,'Marinópolis',26),(331,'Martinópolis',26),(332,'Matão',26),(333,'Mauá',26),(334,'Mendonça',26),(335,'Meridiano',26),(336,'Mesópolis',26),(337,'Miguelópolis',26),(338,'Mineiros do Tietê',26),(339,'Mira Estrela',26),(340,'Miracatu',26),(341,'Mirandópolis',26),(342,'Mirante do Paranapanema',26),(343,'Mirassol',26),(344,'Mirassolândia',26),(345,'Mococa',26),(346,'Mogi das Cruzes',26),(347,'Mogi Guaçu',26),(348,'Moji Mirim',26),(349,'Mombuca',26),(350,'Monções',26),(351,'Mongaguá',26),(352,'Monte Alegre do Sul',26),(353,'Monte Alto',26),(354,'Monte Aprazível',26),(355,'Monte Azul Paulista',26),(356,'Monte Castelo',26),(357,'Monte Mor',26),(358,'Monteiro Lobato',26),(359,'Morro Agudo',26),(360,'Morungaba',26),(361,'Motuca',26),(362,'Murutinga do Sul',26),(363,'Nantes',26),(364,'Narandiba',26),(365,'Natividade da Serra',26),(366,'Nazaré Paulista',26),(367,'Neves Paulista',26),(368,'Nhandeara',26),(369,'Nipoã',26),(370,'Nova Aliança',26),(371,'Nova Campina',26),(372,'Nova Canaã Paulista',26),(373,'Nova Castilho',26),(374,'Nova Europa',26),(375,'Nova Granada',26),(376,'Nova Guataporanga',26),(377,'Nova Independência',26),(378,'Nova Luzitânia',26),(379,'Nova Odessa',26),(380,'Novais',26),(381,'Novo Horizonte',26),(382,'Nuporanga',26),(383,'Ocauçu',26),(384,'Óleo',26),(385,'Olímpia',26),(386,'Onda Verde',26),(387,'Oriente',26),(388,'Orindiúva',26),(389,'Orlândia',26),(390,'Osasco',26),(391,'Oscar Bressane',26),(392,'Osvaldo Cruz',26),(393,'Ourinhos',26),(394,'Ouro Verde',26),(395,'Ouroeste',26),(396,'Pacaembu',26),(397,'Palestina',26),(398,'Palmares Paulista',26),(399,'Palmeira d`Oeste',26),(400,'Palmital',26),(401,'Panorama',26),(402,'Paraguaçu Paulista',26),(403,'Paraibuna',26),(404,'Paraíso',26),(405,'Paranapanema',26),(406,'Paranapuã',26),(407,'Parapuã',26),(408,'Pardinho',26),(409,'Pariquera-Açu',26),(410,'Parisi',26),(411,'Patrocínio Paulista',26),(412,'Paulicéia',26),(413,'Paulínia',26),(414,'Paulistânia',26),(415,'Paulo de Faria',26),(416,'Pederneiras',26),(417,'Pedra Bela',26),(418,'Pedranópolis',26),(419,'Pedregulho',26),(420,'Pedreira',26),(421,'Pedrinhas Paulista',26),(422,'Pedro de Toledo',26),(423,'Penápolis',26),(424,'Pereira Barreto',26),(425,'Pereiras',26),(426,'Peruíbe',26),(427,'Piacatu',26),(428,'Piedade',26),(429,'Pilar do Sul',26),(430,'Pindamonhangaba',26),(431,'Pindorama',26),(432,'Pinhalzinho',26),(433,'Piquerobi',26),(434,'Piquete',26),(435,'Piracaia',26),(436,'Piracicaba',26),(437,'Piraju',26),(438,'Pirajuí',26),(439,'Pirangi',26),(440,'Pirapora do Bom Jesus',26),(441,'Pirapozinho',26),(442,'Pirassununga',26),(443,'Piratininga',26),(444,'Pitangueiras',26),(445,'Planalto',26),(446,'Platina',26),(447,'Poá',26),(448,'Poloni',26),(449,'Pompéia',26),(450,'Pongaí',26),(451,'Pontal',26),(452,'Pontalinda',26),(453,'Pontes Gestal',26),(454,'Populina',26),(455,'Porangaba',26),(456,'Porto Feliz',26),(457,'Porto Ferreira',26),(458,'Potim',26),(459,'Potirendaba',26),(460,'Pracinha',26),(461,'Pradópolis',26),(462,'Praia Grande',26),(463,'Pratânia',26),(464,'Presidente Alves',26),(465,'Presidente Bernardes',26),(466,'Presidente Epitácio',26),(467,'Presidente Prudente',26),(468,'Presidente Venceslau',26),(469,'Promissão',26),(470,'Quadra',26),(471,'Quatá',26),(472,'Queiroz',26),(473,'Queluz',26),(474,'Quintana',26),(475,'Rafard',26),(476,'Rancharia',26),(477,'Redenção da Serra',26),(478,'Regente Feijó',26),(479,'Reginópolis',26),(480,'Registro',26),(481,'Restinga',26),(482,'Ribeira',26),(483,'Ribeirão Bonito',26),(484,'Ribeirão Branco',26),(485,'Ribeirão Corrente',26),(486,'Ribeirão do Sul',26),(487,'Ribeirão dos Índios',26),(488,'Ribeirão Grande',26),(489,'Ribeirão Pires',26),(490,'Ribeirão Preto',26),(491,'Rifaina',26),(492,'Rincão',26),(493,'Rinópolis',26),(494,'Rio Claro',26),(495,'Rio das Pedras',26),(496,'Rio Grande da Serra',26),(497,'Riolândia',26),(498,'Riversul',26),(499,'Rosana',26),(500,'Roseira',26),(501,'Rubiácea',26),(502,'Rubinéia',26),(503,'Sabino',26),(504,'Sagres',26),(505,'Sales',26),(506,'Sales Oliveira',26),(507,'Salesópolis',26),(508,'Salmourão',26),(509,'Saltinho',26),(510,'Salto',26),(511,'Salto de Pirapora',26),(512,'Salto Grande',26),(513,'Sandovalina',26),(514,'Santa Adélia',26),(515,'Santa Albertina',26),(516,'Santa Bárbara d`Oeste',26),(517,'Santa Branca',26),(518,'Santa Clara d`Oeste',26),(519,'Santa Cruz da Conceição',26),(520,'Santa Cruz da Esperança',26),(521,'Santa Cruz das Palmeiras',26),(522,'Santa Cruz do Rio Pardo',26),(523,'Santa Ernestina',26),(524,'Santa Fé do Sul',26),(525,'Santa Gertrudes',26),(526,'Santa Isabel',26),(527,'Santa Lúcia',26),(528,'Santa Maria da Serra',26),(529,'Santa Mercedes',26),(530,'Santa Rita do Passa Quatro',26),(531,'Santa Rita d`Oeste',26),(532,'Santa Rosa de Viterbo',26),(533,'Santa Salete',26),(534,'Santana da Ponte Pensa',26),(535,'Santana de Parnaíba',26),(536,'Santo Anastácio',26),(537,'Santo André',26),(538,'Santo Antônio da Alegria',26),(539,'Santo Antônio de Posse',26),(540,'Santo Antônio do Aracanguá',26),(541,'Santo Antônio do Jardim',26),(542,'Santo Antônio do Pinhal',26),(543,'Santo Expedito',26),(544,'Santópolis do Aguapeí',26),(545,'Santos',26),(546,'São Bento do Sapucaí',26),(547,'São Bernardo do Campo',26),(548,'São Caetano do Sul',26),(549,'São Carlos',26),(550,'São Francisco',26),(551,'São João da Boa Vista',26),(552,'São João das Duas Pontes',26),(553,'São João de Iracema',26),(554,'São João do Pau d`Alho',26),(555,'São Joaquim da Barra',26),(556,'São José da Bela Vista',26),(557,'São José do Barreiro',26),(558,'São José do Rio Pardo',26),(559,'São José do Rio Preto',26),(560,'São José dos Campos',26),(561,'São Lourenço da Serra',26),(562,'São Luís do Paraitinga',26),(563,'São Manuel',26),(564,'São Miguel Arcanjo',26),(565,'São Paulo',26),(566,'São Pedro',26),(567,'São Pedro do Turvo',26),(568,'São Roque',26),(569,'São Sebastião',26),(570,'São Sebastião da Grama',26),(571,'São Simão',26),(572,'São Vicente',26),(573,'Sarapuí',26),(574,'Sarutaiá',26),(575,'Sebastianópolis do Sul',26),(576,'Serra Azul',26),(577,'Serra Negra',26),(578,'Serrana',26),(579,'Sertãozinho',26),(580,'Sete Barras',26),(581,'Severínia',26),(582,'Silveiras',26),(583,'Socorro',26),(584,'Sorocaba',26),(585,'Sud Mennucci',26),(586,'Sumaré',26),(587,'Suzanápolis',26),(588,'Suzano',26),(589,'Tabapuã',26),(590,'Tabatinga',26),(591,'Taboão da Serra',26),(592,'Taciba',26),(593,'Taguaí',26),(594,'Taiaçu',26),(595,'Taiúva',26),(596,'Tambaú',26),(597,'Tanabi',26),(598,'Tapiraí',26),(599,'Tapiratiba',26),(600,'Taquaral',26),(601,'Taquaritinga',26),(602,'Taquarituba',26),(603,'Taquarivaí',26),(604,'Tarabai',26),(605,'Tarumã',26),(606,'Tatuí',26),(607,'Taubaté',26),(608,'Tejupá',26),(609,'Teodoro Sampaio',26),(610,'Terra Roxa',26),(611,'Tietê',26),(612,'Timburi',26),(613,'Torre de Pedra',26),(614,'Torrinha',26),(615,'Trabiju',26),(616,'Tremembé',26),(617,'Três Fronteiras',26),(618,'Tuiuti',26),(619,'Tupã',26),(620,'Tupi Paulista',26),(621,'Turiúba',26),(622,'Turmalina',26),(623,'Ubarana',26),(624,'Ubatuba',26),(625,'Ubirajara',26),(626,'Uchoa',26),(627,'União Paulista',26),(628,'Urânia',26),(629,'Uru',26),(630,'Urupês',26),(631,'Valentim Gentil',26),(632,'Valinhos',26),(633,'Valparaíso',26),(634,'Vargem',26),(635,'Vargem Grande do Sul',26),(636,'Vargem Grande Paulista',26),(637,'Várzea Paulista',26),(638,'Vera Cruz',26),(639,'Vinhedo',26),(640,'Viradouro',26),(641,'Vista Alegre do Alto',26),(642,'Vitória Brasil',26),(643,'Votorantim',26),(644,'Votuporanga',26),(645,'Zacarias',26),(646,'Abadia dos Dourados',11),(647,'Abaeté',11),(648,'Abre Campo',11),(649,'Acaiaca',11),(650,'Açucena',11),(651,'Água Boa',11),(652,'Água Comprida',11),(653,'Aguanil',11),(654,'Águas Formosas',11),(655,'Águas Vermelhas',11),(656,'Aimorés',11),(657,'Aiuruoca',11),(658,'Alagoa',11),(659,'Albertina',11),(660,'Além Paraíba',11),(661,'Alfenas',11),(662,'Alfredo Vasconcelos',11),(663,'Almenara',11),(664,'Alpercata',11),(665,'Alpinópolis',11),(666,'Alterosa',11),(667,'Alto Caparaó',11),(668,'Alto Jequitibá',11),(669,'Alto Rio Doce',11),(670,'Alvarenga',11),(671,'Alvinópolis',11),(672,'Alvorada de Minas',11),(673,'Amparo do Serra',11),(674,'Andradas',11),(675,'Andrelândia',11),(676,'Angelândia',11),(677,'Antônio Carlos',11),(678,'Antônio Dias',11),(679,'Antônio Prado de Minas',11),(680,'Araçaí',11),(681,'Aracitaba',11),(682,'Araçuaí',11),(683,'Araguari',11),(684,'Arantina',11),(685,'Araponga',11),(686,'Araporã',11),(687,'Arapuá',11),(688,'Araújos',11),(689,'Araxá',11),(690,'Arceburgo',11),(691,'Arcos',11),(692,'Areado',11),(693,'Argirita',11),(694,'Aricanduva',11),(695,'Arinos',11),(696,'Astolfo Dutra',11),(697,'Ataléia',11),(698,'Augusto de Lima',11),(699,'Baependi',11),(700,'Baldim',11),(701,'Bambuí',11),(702,'Bandeira',11),(703,'Bandeira do Sul',11),(704,'Barão de Cocais',11),(705,'Barão de Monte Alto',11),(706,'Barbacena',11),(707,'Barra Longa',11),(708,'Barroso',11),(709,'Bela Vista de Minas',11),(710,'Belmiro Braga',11),(711,'Belo Horizonte',11),(712,'Belo Oriente',11),(713,'Belo Vale',11),(714,'Berilo',11),(715,'Berizal',11),(716,'Bertópolis',11),(717,'Betim',11),(718,'Bias Fortes',11),(719,'Bicas',11),(720,'Biquinhas',11),(721,'Boa Esperança',11),(722,'Bocaina de Minas',11),(723,'Bocaiúva',11),(724,'Bom Despacho',11),(725,'Bom Jardim de Minas',11),(726,'Bom Jesus da Penha',11),(727,'Bom Jesus do Amparo',11),(728,'Bom Jesus do Galho',11),(729,'Bom Repouso',11),(730,'Bom Sucesso',11),(731,'Bonfim',11),(732,'Bonfinópolis de Minas',11),(733,'Bonito de Minas',11),(734,'Borda da Mata',11),(735,'Botelhos',11),(736,'Botumirim',11),(737,'Brás Pires',11),(738,'Brasilândia de Minas',11),(739,'Brasília de Minas',11),(740,'Braúnas',11),(741,'Brazópolis',11),(742,'Brumadinho',11),(743,'Bueno Brandão',11),(744,'Buenópolis',11),(745,'Bugre',11),(746,'Buritis',11),(747,'Buritizeiro',11),(748,'Cabeceira Grande',11),(749,'Cabo Verde',11),(750,'Cachoeira da Prata',11),(751,'Cachoeira de Minas',11),(752,'Cachoeira de Pajeú',11),(753,'Cachoeira Dourada',11),(754,'Caetanópolis',11),(755,'Caeté',11),(756,'Caiana',11),(757,'Cajuri',11),(758,'Caldas',11),(759,'Camacho',11),(760,'Camanducaia',11),(761,'Cambuí',11),(762,'Cambuquira',11),(763,'Campanário',11),(764,'Campanha',11),(765,'Campestre',11),(766,'Campina Verde',11),(767,'Campo Azul',11),(768,'Campo Belo',11),(769,'Campo do Meio',11),(770,'Campo Florido',11),(771,'Campos Altos',11),(772,'Campos Gerais',11),(773,'Cana Verde',11),(774,'Canaã',11),(775,'Canápolis',11),(776,'Candeias',11),(777,'Cantagalo',11),(778,'Caparaó',11),(779,'Capela Nova',11),(780,'Capelinha',11),(781,'Capetinga',11),(782,'Capim Branco',11),(783,'Capinópolis',11),(784,'Capitão Andrade',11),(785,'Capitão Enéas',11),(786,'Capitólio',11),(787,'Caputira',11),(788,'Caraí',11),(789,'Caranaíba',11),(790,'Carandaí',11),(791,'Carangola',11),(792,'Caratinga',11),(793,'Carbonita',11),(794,'Careaçu',11),(795,'Carlos Chagas',11),(796,'Carmésia',11),(797,'Carmo da Cachoeira',11),(798,'Carmo da Mata',11),(799,'Carmo de Minas',11),(800,'Carmo do Cajuru',11),(801,'Carmo do Paranaíba',11),(802,'Carmo do Rio Claro',11),(803,'Carmópolis de Minas',11),(804,'Carneirinho',11),(805,'Carrancas',11),(806,'Carvalhópolis',11),(807,'Carvalhos',11),(808,'Casa Grande',11),(809,'Cascalho Rico',11),(810,'Cássia',11),(811,'Cataguases',11),(812,'Catas Altas',11),(813,'Catas Altas da Noruega',11),(814,'Catuji',11),(815,'Catuti',11),(816,'Caxambu',11),(817,'Cedro do Abaeté',11),(818,'Central de Minas',11),(819,'Centralina',11),(820,'Chácara',11),(821,'Chalé',11),(822,'Chapada do Norte',11),(823,'Chapada Gaúcha',11),(824,'Chiador',11),(825,'Cipotânea',11),(826,'Claraval',11),(827,'Claro dos Poções',11),(828,'Cláudio',11),(829,'Coimbra',11),(830,'Coluna',11),(831,'Comendador Gomes',11),(832,'Comercinho',11),(833,'Conceição da Aparecida',11),(834,'Conceição da Barra de Minas',11),(835,'Conceição das Alagoas',11),(836,'Conceição das Pedras',11),(837,'Conceição de Ipanema',11),(838,'Conceição do Mato Dentro',11),(839,'Conceição do Pará',11),(840,'Conceição do Rio Verde',11),(841,'Conceição dos Ouros',11),(842,'Cônego Marinho',11),(843,'Confins',11),(844,'Congonhal',11),(845,'Congonhas',11),(846,'Congonhas do Norte',11),(847,'Conquista',11),(848,'Conselheiro Lafaiete',11),(849,'Conselheiro Pena',11),(850,'Consolação',11),(851,'Contagem',11),(852,'Coqueiral',11),(853,'Coração de Jesus',11),(854,'Cordisburgo',11),(855,'Cordislândia',11),(856,'Corinto',11),(857,'Coroaci',11),(858,'Coromandel',11),(859,'Coronel Fabriciano',11),(860,'Coronel Murta',11),(861,'Coronel Pacheco',11),(862,'Coronel Xavier Chaves',11),(863,'Córrego Danta',11),(864,'Córrego do Bom Jesus',11),(865,'Córrego Fundo',11),(866,'Córrego Novo',11),(867,'Couto de Magalhães de Minas',11),(868,'Crisólita',11),(869,'Cristais',11),(870,'Cristália',11),(871,'Cristiano Otoni',11),(872,'Cristina',11),(873,'Crucilândia',11),(874,'Cruzeiro da Fortaleza',11),(875,'Cruzília',11),(876,'Cuparaque',11),(877,'Curral de Dentro',11),(878,'Curvelo',11),(879,'Datas',11),(880,'Delfim Moreira',11),(881,'Delfinópolis',11),(882,'Delta',11),(883,'Descoberto',11),(884,'Desterro de Entre Rios',11),(885,'Desterro do Melo',11),(886,'Diamantina',11),(887,'Diogo de Vasconcelos',11),(888,'Dionísio',11),(889,'Divinésia',11),(890,'Divino',11),(891,'Divino das Laranjeiras',11),(892,'Divinolândia de Minas',11),(893,'Divinópolis',11),(894,'Divisa Alegre',11),(895,'Divisa Nova',11),(896,'Divisópolis',11),(897,'Dom Bosco',11),(898,'Dom Cavati',11),(899,'Dom Joaquim',11),(900,'Dom Silvério',11),(901,'Dom Viçoso',11),(902,'Dona Eusébia',11),(903,'Dores de Campos',11),(904,'Dores de Guanhães',11),(905,'Dores do Indaiá',11),(906,'Dores do Turvo',11),(907,'Doresópolis',11),(908,'Douradoquara',11),(909,'Durandé',11),(910,'Elói Mendes',11),(911,'Engenheiro Caldas',11),(912,'Engenheiro Navarro',11),(913,'Entre Folhas',11),(914,'Entre Rios de Minas',11),(915,'Ervália',11),(916,'Esmeraldas',11),(917,'Espera Feliz',11),(918,'Espinosa',11),(919,'Espírito Santo do Dourado',11),(920,'Estiva',11),(921,'Estrela Dalva',11),(922,'Estrela do Indaiá',11),(923,'Estrela do Sul',11),(924,'Eugenópolis',11),(925,'Ewbank da Câmara',11),(926,'Extrema',11),(927,'Fama',11),(928,'Faria Lemos',11),(929,'Felício dos Santos',11),(930,'Felisburgo',11),(931,'Felixlândia',11),(932,'Fernandes Tourinho',11),(933,'Ferros',11),(934,'Fervedouro',11),(935,'Florestal',11),(936,'Formiga',11),(937,'Formoso',11),(938,'Fortaleza de Minas',11),(939,'Fortuna de Minas',11),(940,'Francisco Badaró',11),(941,'Francisco Dumont',11),(942,'Francisco Sá',11),(943,'Franciscópolis',11),(944,'Frei Gaspar',11),(945,'Frei Inocêncio',11),(946,'Frei Lagonegro',11),(947,'Fronteira',11),(948,'Fronteira dos Vales',11),(949,'Fruta de Leite',11),(950,'Frutal',11),(951,'Funilândia',11),(952,'Galiléia',11),(953,'Gameleiras',11),(954,'Glaucilândia',11),(955,'Goiabeira',11),(956,'Goianá',11),(957,'Gonçalves',11),(958,'Gonzaga',11),(959,'Gouveia',11),(960,'Governador Valadares',11),(961,'Grão Mogol',11),(962,'Grupiara',11),(963,'Guanhães',11),(964,'Guapé',11),(965,'Guaraciaba',11),(966,'Guaraciama',11),(967,'Guaranésia',11),(968,'Guarani',11),(969,'Guarará',11),(970,'Guarda-Mor',11),(971,'Guaxupé',11),(972,'Guidoval',11),(973,'Guimarânia',11),(974,'Guiricema',11),(975,'Gurinhatã',11),(976,'Heliodora',11),(977,'Iapu',11),(978,'Ibertioga',11),(979,'Ibiá',11),(980,'Ibiaí',11),(981,'Ibiracatu',11),(982,'Ibiraci',11),(983,'Ibirité',11),(984,'Ibitiúra de Minas',11),(985,'Ibituruna',11),(986,'Icaraí de Minas',11),(987,'Igarapé',11),(988,'Igaratinga',11),(989,'Iguatama',11),(990,'Ijaci',11),(991,'Ilicínea',11),(992,'Imbé de Minas',11),(993,'Inconfidentes',11),(994,'Indaiabira',11),(995,'Indianópolis',11),(996,'Ingaí',11),(997,'Inhapim',11),(998,'Inhaúma',11),(999,'Inimutaba',11),(1000,'Ipaba',11),(1001,'Ipanema',11),(1002,'Ipatinga',11),(1003,'Ipiaçu',11),(1004,'Ipuiúna',11),(1005,'Iraí de Minas',11),(1006,'Itabira',11),(1007,'Itabirinha',11),(1008,'Itabirito',11),(1009,'Itacambira',11),(1010,'Itacarambi',11),(1011,'Itaguara',11),(1012,'Itaipé',11),(1013,'Itajubá',11),(1014,'Itamarandiba',11),(1015,'Itamarati de Minas',11),(1016,'Itambacuri',11),(1017,'Itambé do Mato Dentro',11),(1018,'Itamogi',11),(1019,'Itamonte',11),(1020,'Itanhandu',11),(1021,'Itanhomi',11),(1022,'Itaobim',11),(1023,'Itapagipe',11),(1024,'Itapecerica',11),(1025,'Itapeva',11),(1026,'Itatiaiuçu',11),(1027,'Itaú de Minas',11),(1028,'Itaúna',11),(1029,'Itaverava',11),(1030,'Itinga',11),(1031,'Itueta',11),(1032,'Ituiutaba',11),(1033,'Itumirim',11),(1034,'Iturama',11),(1035,'Itutinga',11),(1036,'Jaboticatubas',11),(1037,'Jacinto',11),(1038,'Jacuí',11),(1039,'Jacutinga',11),(1040,'Jaguaraçu',11),(1041,'Jaíba',11),(1042,'Jampruca',11),(1043,'Janaúba',11),(1044,'Januária',11),(1045,'Japaraíba',11),(1046,'Japonvar',11),(1047,'Jeceaba',11),(1048,'Jenipapo de Minas',11),(1049,'Jequeri',11),(1050,'Jequitaí',11),(1051,'Jequitibá',11),(1052,'Jequitinhonha',11),(1053,'Jesuânia',11),(1054,'Joaíma',11),(1055,'Joanésia',11),(1056,'João Monlevade',11),(1057,'João Pinheiro',11),(1058,'Joaquim Felício',11),(1059,'Jordânia',11),(1060,'José Gonçalves de Minas',11),(1061,'José Raydan',11),(1062,'Josenópolis',11),(1063,'Juatuba',11),(1064,'Juiz de Fora',11),(1065,'Juramento',11),(1066,'Juruaia',11),(1067,'Juvenília',11),(1068,'Ladainha',11),(1069,'Lagamar',11),(1070,'Lagoa da Prata',11),(1071,'Lagoa dos Patos',11),(1072,'Lagoa Dourada',11),(1073,'Lagoa Formosa',11),(1074,'Lagoa Grande',11),(1075,'Lagoa Santa',11),(1076,'Lajinha',11),(1077,'Lambari',11),(1078,'Lamim',11),(1079,'Laranjal',11),(1080,'Lassance',11),(1081,'Lavras',11),(1082,'Leandro Ferreira',11),(1083,'Leme do Prado',11),(1084,'Leopoldina',11),(1085,'Liberdade',11),(1086,'Lima Duarte',11),(1087,'Limeira do Oeste',11),(1088,'Lontra',11),(1089,'Luisburgo',11),(1090,'Luislândia',11),(1091,'Luminárias',11),(1092,'Luz',11),(1093,'Machacalis',11),(1094,'Machado',11),(1095,'Madre de Deus de Minas',11),(1096,'Malacacheta',11),(1097,'Mamonas',11),(1098,'Manga',11),(1099,'Manhuaçu',11),(1100,'Manhumirim',11),(1101,'Mantena',11),(1102,'Mar de Espanha',11),(1103,'Maravilhas',11),(1104,'Maria da Fé',11),(1105,'Mariana',11),(1106,'Marilac',11),(1107,'Mário Campos',11),(1108,'Maripá de Minas',11),(1109,'Marliéria',11),(1110,'Marmelópolis',11),(1111,'Martinho Campos',11),(1112,'Martins Soares',11),(1113,'Mata Verde',11),(1114,'Materlândia',11),(1115,'Mateus Leme',11),(1116,'Mathias Lobato',11),(1117,'Matias Barbosa',11),(1118,'Matias Cardoso',11),(1119,'Matipó',11),(1120,'Mato Verde',11),(1121,'Matozinhos',11),(1122,'Matutina',11),(1123,'Medeiros',11),(1124,'Medina',11),(1125,'Mendes Pimentel',11),(1126,'Mercês',11),(1127,'Mesquita',11),(1128,'Minas Novas',11),(1129,'Minduri',11),(1130,'Mirabela',11),(1131,'Miradouro',11),(1132,'Miraí',11),(1133,'Miravânia',11),(1134,'Moeda',11),(1135,'Moema',11),(1136,'Monjolos',11),(1137,'Monsenhor Paulo',11),(1138,'Montalvânia',11),(1139,'Monte Alegre de Minas',11),(1140,'Monte Azul',11),(1141,'Monte Belo',11),(1142,'Monte Carmelo',11),(1143,'Monte Formoso',11),(1144,'Monte Santo de Minas',11),(1145,'Monte Sião',11),(1146,'Montes Claros',11),(1147,'Montezuma',11),(1148,'Morada Nova de Minas',11),(1149,'Morro da Garça',11),(1150,'Morro do Pilar',11),(1151,'Munhoz',11),(1152,'Muriaé',11),(1153,'Mutum',11),(1154,'Muzambinho',11),(1155,'Nacip Raydan',11),(1156,'Nanuque',11),(1157,'Naque',11),(1158,'Natalândia',11),(1159,'Natércia',11),(1160,'Nazareno',11),(1161,'Nepomuceno',11),(1162,'Ninheira',11),(1163,'Nova Belém',11),(1164,'Nova Era',11),(1165,'Nova Lima',11),(1166,'Nova Módica',11),(1167,'Nova Ponte',11),(1168,'Nova Porteirinha',11),(1169,'Nova Resende',11),(1170,'Nova Serrana',11),(1171,'Nova União',11),(1172,'Novo Cruzeiro',11),(1173,'Novo Oriente de Minas',11),(1174,'Novorizonte',11),(1175,'Olaria',11),(1176,'Olhos-d`Água',11),(1177,'Olímpio Noronha',11),(1178,'Oliveira',11),(1179,'Oliveira Fortes',11),(1180,'Onça de Pitangui',11),(1181,'Oratórios',11),(1182,'Orizânia',11),(1183,'Ouro Branco',11),(1184,'Ouro Fino',11),(1185,'Ouro Preto',11),(1186,'Ouro Verde de Minas',11),(1187,'Padre Carvalho',11),(1188,'Padre Paraíso',11),(1189,'Pai Pedro',11),(1190,'Paineiras',11),(1191,'Pains',11),(1192,'Paiva',11),(1193,'Palma',11),(1194,'Palmópolis',11),(1195,'Papagaios',11),(1196,'Pará de Minas',11),(1197,'Paracatu',11),(1198,'Paraguaçu',11),(1199,'Paraisópolis',11),(1200,'Paraopeba',11),(1201,'Passa Quatro',11),(1202,'Passa Tempo',11),(1203,'Passa-Vinte',11),(1204,'Passabém',11),(1205,'Passos',11),(1206,'Patis',11),(1207,'Patos de Minas',11),(1208,'Patrocínio',11),(1209,'Patrocínio do Muriaé',11),(1210,'Paula Cândido',11),(1211,'Paulistas',11),(1212,'Pavão',11),(1213,'Peçanha',11),(1214,'Pedra Azul',11),(1215,'Pedra Bonita',11),(1216,'Pedra do Anta',11),(1217,'Pedra do Indaiá',11),(1218,'Pedra Dourada',11),(1219,'Pedralva',11),(1220,'Pedras de Maria da Cruz',11),(1221,'Pedrinópolis',11),(1222,'Pedro Leopoldo',11),(1223,'Pedro Teixeira',11),(1224,'Pequeri',11),(1225,'Pequi',11),(1226,'Perdigão',11),(1227,'Perdizes',11),(1228,'Perdões',11),(1229,'Periquito',11),(1230,'Pescador',11),(1231,'Piau',11),(1232,'Piedade de Caratinga',11),(1233,'Piedade de Ponte Nova',11),(1234,'Piedade do Rio Grande',11),(1235,'Piedade dos Gerais',11),(1236,'Pimenta',11),(1237,'Pingo-d`Água',11),(1238,'Pintópolis',11),(1239,'Piracema',11),(1240,'Pirajuba',11),(1241,'Piranga',11),(1242,'Piranguçu',11),(1243,'Piranguinho',11),(1244,'Pirapetinga',11),(1245,'Pirapora',11),(1246,'Piraúba',11),(1247,'Pitangui',11),(1248,'Piumhi',11),(1249,'Planura',11),(1250,'Poço Fundo',11),(1251,'Poços de Caldas',11),(1252,'Pocrane',11),(1253,'Pompéu',11),(1254,'Ponte Nova',11),(1255,'Ponto Chique',11),(1256,'Ponto dos Volantes',11),(1257,'Porteirinha',11),(1258,'Porto Firme',11),(1259,'Poté',11),(1260,'Pouso Alegre',11),(1261,'Pouso Alto',11),(1262,'Prados',11),(1263,'Prata',11),(1264,'Pratápolis',11),(1265,'Pratinha',11),(1266,'Presidente Bernardes',11),(1267,'Presidente Juscelino',11),(1268,'Presidente Kubitschek',11),(1269,'Presidente Olegário',11),(1270,'Prudente de Morais',11),(1271,'Quartel Geral',11),(1272,'Queluzito',11),(1273,'Raposos',11),(1274,'Raul Soares',11),(1275,'Recreio',11),(1276,'Reduto',11),(1277,'Resende Costa',11),(1278,'Resplendor',11),(1279,'Ressaquinha',11),(1280,'Riachinho',11),(1281,'Riacho dos Machados',11),(1282,'Ribeirão das Neves',11),(1283,'Ribeirão Vermelho',11),(1284,'Rio Acima',11),(1285,'Rio Casca',11),(1286,'Rio do Prado',11),(1287,'Rio Doce',11),(1288,'Rio Espera',11),(1289,'Rio Manso',11),(1290,'Rio Novo',11),(1291,'Rio Paranaíba',11),(1292,'Rio Pardo de Minas',11),(1293,'Rio Piracicaba',11),(1294,'Rio Pomba',11),(1295,'Rio Preto',11),(1296,'Rio Vermelho',11),(1297,'Ritápolis',11),(1298,'Rochedo de Minas',11),(1299,'Rodeiro',11),(1300,'Romaria',11),(1301,'Rosário da Limeira',11),(1302,'Rubelita',11),(1303,'Rubim',11),(1304,'Sabará',11),(1305,'Sabinópolis',11),(1306,'Sacramento',11),(1307,'Salinas',11),(1308,'Salto da Divisa',11),(1309,'Santa Bárbara',11),(1310,'Santa Bárbara do Leste',11),(1311,'Santa Bárbara do Monte Verde',11),(1312,'Santa Bárbara do Tugúrio',11),(1313,'Santa Cruz de Minas',11),(1314,'Santa Cruz de Salinas',11),(1315,'Santa Cruz do Escalvado',11),(1316,'Santa Efigênia de Minas',11),(1317,'Santa Fé de Minas',11),(1318,'Santa Helena de Minas',11),(1319,'Santa Juliana',11),(1320,'Santa Luzia',11),(1321,'Santa Margarida',11),(1322,'Santa Maria de Itabira',11),(1323,'Santa Maria do Salto',11),(1324,'Santa Maria do Suaçuí',11),(1325,'Santa Rita de Caldas',11),(1326,'Santa Rita de Ibitipoca',11),(1327,'Santa Rita de Jacutinga',11),(1328,'Santa Rita de Minas',11),(1329,'Santa Rita do Itueto',11),(1330,'Santa Rita do Sapucaí',11),(1331,'Santa Rosa da Serra',11),(1332,'Santa Vitória',11),(1333,'Santana da Vargem',11),(1334,'Santana de Cataguases',11),(1335,'Santana de Pirapama',11),(1336,'Santana do Deserto',11),(1337,'Santana do Garambéu',11),(1338,'Santana do Jacaré',11),(1339,'Santana do Manhuaçu',11),(1340,'Santana do Paraíso',11),(1341,'Santana do Riacho',11),(1342,'Santana dos Montes',11),(1343,'Santo Antônio do Amparo',11),(1344,'Santo Antônio do Aventureiro',11),(1345,'Santo Antônio do Grama',11),(1346,'Santo Antônio do Itambé',11),(1347,'Santo Antônio do Jacinto',11),(1348,'Santo Antônio do Monte',11),(1349,'Santo Antônio do Retiro',11),(1350,'Santo Antônio do Rio Abaixo',11),(1351,'Santo Hipólito',11),(1352,'Santos Dumont',11),(1353,'São Bento Abade',11),(1354,'São Brás do Suaçuí',11),(1355,'São Domingos das Dores',11),(1356,'São Domingos do Prata',11),(1357,'São Félix de Minas',11),(1358,'São Francisco',11),(1359,'São Francisco de Paula',11),(1360,'São Francisco de Sales',11),(1361,'São Francisco do Glória',11),(1362,'São Geraldo',11),(1363,'São Geraldo da Piedade',11),(1364,'São Geraldo do Baixio',11),(1365,'São Gonçalo do Abaeté',11),(1366,'São Gonçalo do Pará',11),(1367,'São Gonçalo do Rio Abaixo',11),(1368,'São Gonçalo do Rio Preto',11),(1369,'São Gonçalo do Sapucaí',11),(1370,'São Gotardo',11),(1371,'São João Batista do Glória',11),(1372,'São João da Lagoa',11),(1373,'São João da Mata',11),(1374,'São João da Ponte',11),(1375,'São João das Missões',11),(1376,'São João del Rei',11),(1377,'São João do Manhuaçu',11),(1378,'São João do Manteninha',11),(1379,'São João do Oriente',11),(1380,'São João do Pacuí',11),(1381,'São João do Paraíso',11),(1382,'São João Evangelista',11),(1383,'São João Nepomuceno',11),(1384,'São Joaquim de Bicas',11),(1385,'São José da Barra',11),(1386,'São José da Lapa',11),(1387,'São José da Safira',11),(1388,'São José da Varginha',11),(1389,'São José do Alegre',11),(1390,'São José do Divino',11),(1391,'São José do Goiabal',11),(1392,'São José do Jacuri',11),(1393,'São José do Mantimento',11),(1394,'São Lourenço',11),(1395,'São Miguel do Anta',11),(1396,'São Pedro da União',11),(1397,'São Pedro do Suaçuí',11),(1398,'São Pedro dos Ferros',11),(1399,'São Romão',11),(1400,'São Roque de Minas',11),(1401,'São Sebastião da Bela Vista',11),(1402,'São Sebastião da Vargem Alegre',11),(1403,'São Sebastião do Anta',11),(1404,'São Sebastião do Maranhão',11),(1405,'São Sebastião do Oeste',11),(1406,'São Sebastião do Paraíso',11),(1407,'São Sebastião do Rio Preto',11),(1408,'São Sebastião do Rio Verde',11),(1409,'São Thomé das Letras',11),(1410,'São Tiago',11),(1411,'São Tomás de Aquino',11),(1412,'São Vicente de Minas',11),(1413,'Sapucaí-Mirim',11),(1414,'Sardoá',11),(1415,'Sarzedo',11),(1416,'Sem-Peixe',11),(1417,'Senador Amaral',11),(1418,'Senador Cortes',11),(1419,'Senador Firmino',11),(1420,'Senador José Bento',11),(1421,'Senador Modestino Gonçalves',11),(1422,'Senhora de Oliveira',11),(1423,'Senhora do Porto',11),(1424,'Senhora dos Remédios',11),(1425,'Sericita',11),(1426,'Seritinga',11),(1427,'Serra Azul de Minas',11),(1428,'Serra da Saudade',11),(1429,'Serra do Salitre',11),(1430,'Serra dos Aimorés',11),(1431,'Serrania',11),(1432,'Serranópolis de Minas',11),(1433,'Serranos',11),(1434,'Serro',11),(1435,'Sete Lagoas',11),(1436,'Setubinha',11),(1437,'Silveirânia',11),(1438,'Silvianópolis',11),(1439,'Simão Pereira',11),(1440,'Simonésia',11),(1441,'Sobrália',11),(1442,'Soledade de Minas',11),(1443,'Tabuleiro',11),(1444,'Taiobeiras',11),(1445,'Taparuba',11),(1446,'Tapira',11),(1447,'Tapiraí',11),(1448,'Taquaraçu de Minas',11),(1449,'Tarumirim',11),(1450,'Teixeiras',11),(1451,'Teófilo Otoni',11),(1452,'Timóteo',11),(1453,'Tiradentes',11),(1454,'Tiros',11),(1455,'Tocantins',11),(1456,'Tocos do Moji',11),(1457,'Toledo',11),(1458,'Tombos',11),(1459,'Três Corações',11),(1460,'Três Marias',11),(1461,'Três Pontas',11),(1462,'Tumiritinga',11),(1463,'Tupaciguara',11),(1464,'Turmalina',11),(1465,'Turvolândia',11),(1466,'Ubá',11),(1467,'Ubaí',11),(1468,'Ubaporanga',11),(1469,'Uberaba',11),(1470,'Uberlândia',11),(1471,'Umburatiba',11),(1472,'Unaí',11),(1473,'União de Minas',11),(1474,'Uruana de Minas',11),(1475,'Urucânia',11),(1476,'Urucuia',11),(1477,'Vargem Alegre',11),(1478,'Vargem Bonita',11),(1479,'Vargem Grande do Rio Pardo',11),(1480,'Varginha',11),(1481,'Varjão de Minas',11),(1482,'Várzea da Palma',11),(1483,'Varzelândia',11),(1484,'Vazante',11),(1485,'Verdelândia',11),(1486,'Veredinha',11),(1487,'Veríssimo',11),(1488,'Vermelho Novo',11),(1489,'Vespasiano',11),(1490,'Viçosa',11),(1491,'Vieiras',11),(1492,'Virgem da Lapa',11),(1493,'Virgínia',11),(1494,'Virginópolis',11),(1495,'Virgolândia',11),(1496,'Visconde do Rio Branco',11),(1497,'Volta Grande',11),(1498,'Wenceslau Braz',11),(1499,'Acrelândia',1),(1500,'Assis Brasil',1),(1501,'Brasiléia',1),(1502,'Bujari',1),(1503,'Capixaba',1),(1504,'Cruzeiro do Sul',1),(1505,'Epitaciolândia',1),(1506,'Feijó',1),(1507,'Jordão',1),(1508,'Mâncio Lima',1),(1509,'Manoel Urbano',1),(1510,'Marechal Thaumaturgo',1),(1511,'Plácido de Castro',1),(1512,'Porto Acre',1),(1513,'Porto Walter',1),(1514,'Rio Branco',1),(1515,'Rodrigues Alves',1),(1516,'Santa Rosa do Purus',1),(1517,'Sena Madureira',1),(1518,'Senador Guiomard',1),(1519,'Tarauacá',1),(1520,'Xapuri',1),(1521,'Água Branca',2),(1522,'Anadia',2),(1523,'Arapiraca',2),(1524,'Atalaia',2),(1525,'Barra de Santo Antônio',2),(1526,'Barra de São Miguel',2),(1527,'Batalha',2),(1528,'Belém',2),(1529,'Belo Monte',2),(1530,'Boca da Mata',2),(1531,'Branquinha',2),(1532,'Cacimbinhas',2),(1533,'Cajueiro',2),(1534,'Campestre',2),(1535,'Campo Alegre',2),(1536,'Campo Grande',2),(1537,'Canapi',2),(1538,'Capela',2),(1539,'Carneiros',2),(1540,'Chã Preta',2),(1541,'Coité do Nóia',2),(1542,'Colônia Leopoldina',2),(1543,'Coqueiro Seco',2),(1544,'Coruripe',2),(1545,'Craíbas',2),(1546,'Delmiro Gouveia',2),(1547,'Dois Riachos',2),(1548,'Estrela de Alagoas',2),(1549,'Feira Grande',2),(1550,'Feliz Deserto',2),(1551,'Flexeiras',2),(1552,'Girau do Ponciano',2),(1553,'Ibateguara',2),(1554,'Igaci',2),(1555,'Igreja Nova',2),(1556,'Inhapi',2),(1557,'Jacaré dos Homens',2),(1558,'Jacuípe',2),(1559,'Japaratinga',2),(1560,'Jaramataia',2),(1561,'Jequiá da Praia',2),(1562,'Joaquim Gomes',2),(1563,'Jundiá',2),(1564,'Junqueiro',2),(1565,'Lagoa da Canoa',2),(1566,'Limoeiro de Anadia',2),(1567,'Maceió',2),(1568,'Major Isidoro',2),(1569,'Mar Vermelho',2),(1570,'Maragogi',2),(1571,'Maravilha',2),(1572,'Marechal Deodoro',2),(1573,'Maribondo',2),(1574,'Mata Grande',2),(1575,'Matriz de Camaragibe',2),(1576,'Messias',2),(1577,'Minador do Negrão',2),(1578,'Monteirópolis',2),(1579,'Murici',2),(1580,'Novo Lino',2),(1581,'Olho d`Água das Flores',2),(1582,'Olho d`Água do Casado',2),(1583,'Olho d`Água Grande',2),(1584,'Olivença',2),(1585,'Ouro Branco',2),(1586,'Palestina',2),(1587,'Palmeira dos Índios',2),(1588,'Pão de Açúcar',2),(1589,'Pariconha',2),(1590,'Paripueira',2),(1591,'Passo de Camaragibe',2),(1592,'Paulo Jacinto',2),(1593,'Penedo',2),(1594,'Piaçabuçu',2),(1595,'Pilar',2),(1596,'Pindoba',2),(1597,'Piranhas',2),(1598,'Poço das Trincheiras',2),(1599,'Porto Calvo',2),(1600,'Porto de Pedras',2),(1601,'Porto Real do Colégio',2),(1602,'Quebrangulo',2),(1603,'Rio Largo',2),(1604,'Roteiro',2),(1605,'Santa Luzia do Norte',2),(1606,'Santana do Ipanema',2),(1607,'Santana do Mundaú',2),(1608,'São Brás',2),(1609,'São José da Laje',2),(1610,'São José da Tapera',2),(1611,'São Luís do Quitunde',2),(1612,'São Miguel dos Campos',2),(1613,'São Miguel dos Milagres',2),(1614,'São Sebastião',2),(1615,'Satuba',2),(1616,'Senador Rui Palmeira',2),(1617,'Tanque d`Arca',2),(1618,'Taquarana',2),(1619,'Teotônio Vilela',2),(1620,'Traipu',2),(1621,'União dos Palmares',2),(1622,'Viçosa',2),(1623,'Alvarães',3),(1624,'Amaturá',3),(1625,'Anamã',3),(1626,'Anori',3),(1627,'Apuí',3),(1628,'Atalaia do Norte',3),(1629,'Autazes',3),(1630,'Barcelos',3),(1631,'Barreirinha',3),(1632,'Benjamin Constant',3),(1633,'Beruri',3),(1634,'Boa Vista do Ramos',3),(1635,'Boca do Acre',3),(1636,'Borba',3),(1637,'Caapiranga',3),(1638,'Canutama',3),(1639,'Carauari',3),(1640,'Careiro',3),(1641,'Careiro da Várzea',3),(1642,'Coari',3),(1643,'Codajás',3),(1644,'Eirunepé',3),(1645,'Envira',3),(1646,'Fonte Boa',3),(1647,'Guajará',3),(1648,'Humaitá',3),(1649,'Ipixuna',3),(1650,'Iranduba',3),(1651,'Itacoatiara',3),(1652,'Itamarati',3),(1653,'Itapiranga',3),(1654,'Japurá',3),(1655,'Juruá',3),(1656,'Jutaí',3),(1657,'Lábrea',3),(1658,'Manacapuru',3),(1659,'Manaquiri',3),(1660,'Manaus',3),(1661,'Manicoré',3),(1662,'Maraã',3),(1663,'Maués',3),(1664,'Nhamundá',3),(1665,'Nova Olinda do Norte',3),(1666,'Novo Airão',3),(1667,'Novo Aripuanã',3),(1668,'Parintins',3),(1669,'Pauini',3),(1670,'Presidente Figueiredo',3),(1671,'Rio Preto da Eva',3),(1672,'Santa Isabel do Rio Negro',3),(1673,'Santo Antônio do Içá',3),(1674,'São Gabriel da Cachoeira',3),(1675,'São Paulo de Olivença',3),(1676,'São Sebastião do Uatumã',3),(1677,'Silves',3),(1678,'Tabatinga',3),(1679,'Tapauá',3),(1680,'Tefé',3),(1681,'Tonantins',3),(1682,'Uarini',3),(1683,'Urucará',3),(1684,'Urucurituba',3),(1685,'Amapá',4),(1686,'Calçoene',4),(1687,'Cutias',4),(1688,'Ferreira Gomes',4),(1689,'Itaubal',4),(1690,'Laranjal do Jari',4),(1691,'Macapá',4),(1692,'Mazagão',4),(1693,'Oiapoque',4),(1694,'Pedra Branca do Amaparí',4),(1695,'Porto Grande',4),(1696,'Pracuúba',4),(1697,'Santana',4),(1698,'Serra do Navio',4),(1699,'Tartarugalzinho',4),(1700,'Vitória do Jari',4),(1701,'Abaíra',5),(1702,'Abaré',5),(1703,'Acajutiba',5),(1704,'Adustina',5),(1705,'Água Fria',5),(1706,'Aiquara',5),(1707,'Alagoinhas',5),(1708,'Alcobaça',5),(1709,'Almadina',5),(1710,'Amargosa',5),(1711,'Amélia Rodrigues',5),(1712,'América Dourada',5),(1713,'Anagé',5),(1714,'Andaraí',5),(1715,'Andorinha',5),(1716,'Angical',5),(1717,'Anguera',5),(1718,'Antas',5),(1719,'Antônio Cardoso',5),(1720,'Antônio Gonçalves',5),(1721,'Aporá',5),(1722,'Apuarema',5),(1723,'Araças',5),(1724,'Aracatu',5),(1725,'Araci',5),(1726,'Aramari',5),(1727,'Arataca',5),(1728,'Aratuípe',5),(1729,'Aurelino Leal',5),(1730,'Baianópolis',5),(1731,'Baixa Grande',5),(1732,'Banzaê',5),(1733,'Barra',5),(1734,'Barra da Estiva',5),(1735,'Barra do Choça',5),(1736,'Barra do Mendes',5),(1737,'Barra do Rocha',5),(1738,'Barreiras',5),(1739,'Barro Alto',5),(1740,'Barro Preto',5),(1741,'Barrocas',5),(1742,'Belmonte',5),(1743,'Belo Campo',5),(1744,'Biritinga',5),(1745,'Boa Nova',5),(1746,'Boa Vista do Tupim',5),(1747,'Bom Jesus da Lapa',5),(1748,'Bom Jesus da Serra',5),(1749,'Boninal',5),(1750,'Bonito',5),(1751,'Boquira',5),(1752,'Botuporã',5),(1753,'Brejões',5),(1754,'Brejolândia',5),(1755,'Brotas de Macaúbas',5),(1756,'Brumado',5),(1757,'Buerarema',5),(1758,'Buritirama',5),(1759,'Caatiba',5),(1760,'Cabaceiras do Paraguaçu',5),(1761,'Cachoeira',5),(1762,'Caculé',5),(1763,'Caém',5),(1764,'Caetanos',5),(1765,'Caetité',5),(1766,'Cafarnaum',5),(1767,'Cairu',5),(1768,'Caldeirão Grande',5),(1769,'Camacan',5),(1770,'Camaçari',5),(1771,'Camamu',5),(1772,'Campo Alegre de Lourdes',5),(1773,'Campo Formoso',5),(1774,'Canápolis',5),(1775,'Canarana',5),(1776,'Canavieiras',5),(1777,'Candeal',5),(1778,'Candeias',5),(1779,'Candiba',5),(1780,'Cândido Sales',5),(1781,'Cansanção',5),(1782,'Canudos',5),(1783,'Capela do Alto Alegre',5),(1784,'Capim Grosso',5),(1785,'Caraíbas',5),(1786,'Caravelas',5),(1787,'Cardeal da Silva',5),(1788,'Carinhanha',5),(1789,'Casa Nova',5),(1790,'Castro Alves',5),(1791,'Catolândia',5),(1792,'Catu',5),(1793,'Caturama',5),(1794,'Central',5),(1795,'Chorrochó',5),(1796,'Cícero Dantas',5),(1797,'Cipó',5),(1798,'Coaraci',5),(1799,'Cocos',5),(1800,'Conceição da Feira',5),(1801,'Conceição do Almeida',5),(1802,'Conceição do Coité',5),(1803,'Conceição do Jacuípe',5),(1804,'Conde',5),(1805,'Condeúba',5),(1806,'Contendas do Sincorá',5),(1807,'Coração de Maria',5),(1808,'Cordeiros',5),(1809,'Coribe',5),(1810,'Coronel João Sá',5),(1811,'Correntina',5),(1812,'Cotegipe',5),(1813,'Cravolândia',5),(1814,'Crisópolis',5),(1815,'Cristópolis',5),(1816,'Cruz das Almas',5),(1817,'Curaçá',5),(1818,'Dário Meira',5),(1819,'Dias d`Ávila',5),(1820,'Dom Basílio',5),(1821,'Dom Macedo Costa',5),(1822,'Elísio Medrado',5),(1823,'Encruzilhada',5),(1824,'Entre Rios',5),(1825,'Érico Cardoso',5),(1826,'Esplanada',5),(1827,'Euclides da Cunha',5),(1828,'Eunápolis',5),(1829,'Fátima',5),(1830,'Feira da Mata',5),(1831,'Feira de Santana',5),(1832,'Filadélfia',5),(1833,'Firmino Alves',5),(1834,'Floresta Azul',5),(1835,'Formosa do Rio Preto',5),(1836,'Gandu',5),(1837,'Gavião',5),(1838,'Gentio do Ouro',5),(1839,'Glória',5),(1840,'Gongogi',5),(1841,'Governador Mangabeira',5),(1842,'Guajeru',5),(1843,'Guanambi',5),(1844,'Guaratinga',5),(1845,'Heliópolis',5),(1846,'Iaçu',5),(1847,'Ibiassucê',5),(1848,'Ibicaraí',5),(1849,'Ibicoara',5),(1850,'Ibicuí',5),(1851,'Ibipeba',5),(1852,'Ibipitanga',5),(1853,'Ibiquera',5),(1854,'Ibirapitanga',5),(1855,'Ibirapuã',5),(1856,'Ibirataia',5),(1857,'Ibitiara',5),(1858,'Ibititá',5),(1859,'Ibotirama',5),(1860,'Ichu',5),(1861,'Igaporã',5),(1862,'Igrapiúna',5),(1863,'Iguaí',5),(1864,'Ilhéus',5),(1865,'Inhambupe',5),(1866,'Ipecaetá',5),(1867,'Ipiaú',5),(1868,'Ipirá',5),(1869,'Ipupiara',5),(1870,'Irajuba',5),(1871,'Iramaia',5),(1872,'Iraquara',5),(1873,'Irará',5),(1874,'Irecê',5),(1875,'Itabela',5),(1876,'Itaberaba',5),(1877,'Itabuna',5),(1878,'Itacaré',5),(1879,'Itaeté',5),(1880,'Itagi',5),(1881,'Itagibá',5),(1882,'Itagimirim',5),(1883,'Itaguaçu da Bahia',5),(1884,'Itaju do Colônia',5),(1885,'Itajuípe',5),(1886,'Itamaraju',5),(1887,'Itamari',5),(1888,'Itambé',5),(1889,'Itanagra',5),(1890,'Itanhém',5),(1891,'Itaparica',5),(1892,'Itapé',5),(1893,'Itapebi',5),(1894,'Itapetinga',5),(1895,'Itapicuru',5),(1896,'Itapitanga',5),(1897,'Itaquara',5),(1898,'Itarantim',5),(1899,'Itatim',5),(1900,'Itiruçu',5),(1901,'Itiúba',5),(1902,'Itororó',5),(1903,'Ituaçu',5),(1904,'Ituberá',5),(1905,'Iuiú',5),(1906,'Jaborandi',5),(1907,'Jacaraci',5),(1908,'Jacobina',5),(1909,'Jaguaquara',5),(1910,'Jaguarari',5),(1911,'Jaguaripe',5),(1912,'Jandaíra',5),(1913,'Jequié',5),(1914,'Jeremoabo',5),(1915,'Jiquiriçá',5),(1916,'Jitaúna',5),(1917,'João Dourado',5),(1918,'Juazeiro',5),(1919,'Jucuruçu',5),(1920,'Jussara',5),(1921,'Jussari',5),(1922,'Jussiape',5),(1923,'Lafaiete Coutinho',5),(1924,'Lagoa Real',5),(1925,'Laje',5),(1926,'Lajedão',5),(1927,'Lajedinho',5),(1928,'Lajedo do Tabocal',5),(1929,'Lamarão',5),(1930,'Lapão',5),(1931,'Lauro de Freitas',5),(1932,'Lençóis',5),(1933,'Licínio de Almeida',5),(1934,'Livramento de Nossa Senhora',5),(1935,'Luís Eduardo Magalhães',5),(1936,'Macajuba',5),(1937,'Macarani',5),(1938,'Macaúbas',5),(1939,'Macururé',5),(1940,'Madre de Deus',5),(1941,'Maetinga',5),(1942,'Maiquinique',5),(1943,'Mairi',5),(1944,'Malhada',5),(1945,'Malhada de Pedras',5),(1946,'Manoel Vitorino',5),(1947,'Mansidão',5),(1948,'Maracás',5),(1949,'Maragogipe',5),(1950,'Maraú',5),(1951,'Marcionílio Souza',5),(1952,'Mascote',5),(1953,'Mata de São João',5),(1954,'Matina',5),(1955,'Medeiros Neto',5),(1956,'Miguel Calmon',5),(1957,'Milagres',5),(1958,'Mirangaba',5),(1959,'Mirante',5),(1960,'Monte Santo',5),(1961,'Morpará',5),(1962,'Morro do Chapéu',5),(1963,'Mortugaba',5),(1964,'Mucugê',5),(1965,'Mucuri',5),(1966,'Mulungu do Morro',5),(1967,'Mundo Novo',5),(1968,'Muniz Ferreira',5),(1969,'Muquém de São Francisco',5),(1970,'Muritiba',5),(1971,'Mutuípe',5),(1972,'Nazaré',5),(1973,'Nilo Peçanha',5),(1974,'Nordestina',5),(1975,'Nova Canaã',5),(1976,'Nova Fátima',5),(1977,'Nova Ibiá',5),(1978,'Nova Itarana',5),(1979,'Nova Redenção',5),(1980,'Nova Soure',5),(1981,'Nova Viçosa',5),(1982,'Novo Horizonte',5),(1983,'Novo Triunfo',5),(1984,'Olindina',5),(1985,'Oliveira dos Brejinhos',5),(1986,'Ouriçangas',5),(1987,'Ourolândia',5),(1988,'Palmas de Monte Alto',5),(1989,'Palmeiras',5),(1990,'Paramirim',5),(1991,'Paratinga',5),(1992,'Paripiranga',5),(1993,'Pau Brasil',5),(1994,'Paulo Afonso',5),(1995,'Pé de Serra',5),(1996,'Pedrão',5),(1997,'Pedro Alexandre',5),(1998,'Piatã',5),(1999,'Pilão Arcado',5),(2000,'Pindaí',5),(2001,'Pindobaçu',5),(2002,'Pintadas',5),(2003,'Piraí do Norte',5),(2004,'Piripá',5),(2005,'Piritiba',5),(2006,'Planaltino',5),(2007,'Planalto',5),(2008,'Poções',5),(2009,'Pojuca',5),(2010,'Ponto Novo',5),(2011,'Porto Seguro',5),(2012,'Potiraguá',5),(2013,'Prado',5),(2014,'Presidente Dutra',5),(2015,'Presidente Jânio Quadros',5),(2016,'Presidente Tancredo Neves',5),(2017,'Queimadas',5),(2018,'Quijingue',5),(2019,'Quixabeira',5),(2020,'Rafael Jambeiro',5),(2021,'Remanso',5),(2022,'Retirolândia',5),(2023,'Riachão das Neves',5),(2024,'Riachão do Jacuípe',5),(2025,'Riacho de Santana',5),(2026,'Ribeira do Amparo',5),(2027,'Ribeira do Pombal',5),(2028,'Ribeirão do Largo',5),(2029,'Rio de Contas',5),(2030,'Rio do Antônio',5),(2031,'Rio do Pires',5),(2032,'Rio Real',5),(2033,'Rodelas',5),(2034,'Ruy Barbosa',5),(2035,'Salinas da Margarida',5),(2036,'Salvador',5),(2037,'Santa Bárbara',5),(2038,'Santa Brígida',5),(2039,'Santa Cruz Cabrália',5),(2040,'Santa Cruz da Vitória',5),(2041,'Santa Inês',5),(2042,'Santa Luzia',5),(2043,'Santa Maria da Vitória',5),(2044,'Santa Rita de Cássia',5),(2045,'Santa Teresinha',5),(2046,'Santaluz',5),(2047,'Santana',5),(2048,'Santanópolis',5),(2049,'Santo Amaro',5),(2050,'Santo Antônio de Jesus',5),(2051,'Santo Estêvão',5),(2052,'São Desidério',5),(2053,'São Domingos',5),(2054,'São Felipe',5),(2055,'São Félix',5),(2056,'São Félix do Coribe',5),(2057,'São Francisco do Conde',5),(2058,'São Gabriel',5),(2059,'São Gonçalo dos Campos',5),(2060,'São José da Vitória',5),(2061,'São José do Jacuípe',5),(2062,'São Miguel das Matas',5),(2063,'São Sebastião do Passé',5),(2064,'Sapeaçu',5),(2065,'Sátiro Dias',5),(2066,'Saubara',5),(2067,'Saúde',5),(2068,'Seabra',5),(2069,'Sebastião Laranjeiras',5),(2070,'Senhor do Bonfim',5),(2071,'Sento Sé',5),(2072,'Serra do Ramalho',5),(2073,'Serra Dourada',5),(2074,'Serra Preta',5),(2075,'Serrinha',5),(2076,'Serrolândia',5),(2077,'Simões Filho',5),(2078,'Sítio do Mato',5),(2079,'Sítio do Quinto',5),(2080,'Sobradinho',5),(2081,'Souto Soares',5),(2082,'Tabocas do Brejo Velho',5),(2083,'Tanhaçu',5),(2084,'Tanque Novo',5),(2085,'Tanquinho',5),(2086,'Taperoá',5),(2087,'Tapiramutá',5),(2088,'Teixeira de Freitas',5),(2089,'Teodoro Sampaio',5),(2090,'Teofilândia',5),(2091,'Teolândia',5),(2092,'Terra Nova',5),(2093,'Tremedal',5),(2094,'Tucano',5),(2095,'Uauá',5),(2096,'Ubaíra',5),(2097,'Ubaitaba',5),(2098,'Ubatã',5),(2099,'Uibaí',5),(2100,'Umburanas',5),(2101,'Una',5),(2102,'Urandi',5),(2103,'Uruçuca',5),(2104,'Utinga',5),(2105,'Valença',5),(2106,'Valente',5),(2107,'Várzea da Roça',5),(2108,'Várzea do Poço',5),(2109,'Várzea Nova',5),(2110,'Varzedo',5),(2111,'Vera Cruz',5),(2112,'Vereda',5),(2113,'Vitória da Conquista',5),(2114,'Wagner',5),(2115,'Wanderley',5),(2116,'Wenceslau Guimarães',5),(2117,'Xique-Xique',5),(2118,'Abaiara',6),(2119,'Acarape',6),(2120,'Acaraú',6),(2121,'Acopiara',6),(2122,'Aiuaba',6),(2123,'Alcântaras',6),(2124,'Altaneira',6),(2125,'Alto Santo',6),(2126,'Amontada',6),(2127,'Antonina do Norte',6),(2128,'Apuiarés',6),(2129,'Aquiraz',6),(2130,'Aracati',6),(2131,'Aracoiaba',6),(2132,'Ararendá',6),(2133,'Araripe',6),(2134,'Aratuba',6),(2135,'Arneiroz',6),(2136,'Assaré',6),(2137,'Aurora',6),(2138,'Baixio',6),(2139,'Banabuiú',6),(2140,'Barbalha',6),(2141,'Barreira',6),(2142,'Barro',6),(2143,'Barroquinha',6),(2144,'Baturité',6),(2145,'Beberibe',6),(2146,'Bela Cruz',6),(2147,'Boa Viagem',6),(2148,'Brejo Santo',6),(2149,'Camocim',6),(2150,'Campos Sales',6),(2151,'Canindé',6),(2152,'Capistrano',6),(2153,'Caridade',6),(2154,'Cariré',6),(2155,'Caririaçu',6),(2156,'Cariús',6),(2157,'Carnaubal',6),(2158,'Cascavel',6),(2159,'Catarina',6),(2160,'Catunda',6),(2161,'Caucaia',6),(2162,'Cedro',6),(2163,'Chaval',6),(2164,'Choró',6),(2165,'Chorozinho',6),(2166,'Coreaú',6),(2167,'Crateús',6),(2168,'Crato',6),(2169,'Croatá',6),(2170,'Cruz',6),(2171,'Deputado Irapuan Pinheiro',6),(2172,'Ererê',6),(2173,'Eusébio',6),(2174,'Farias Brito',6),(2175,'Forquilha',6),(2176,'Fortaleza',6),(2177,'Fortim',6),(2178,'Frecheirinha',6),(2179,'General Sampaio',6),(2180,'Graça',6),(2181,'Granja',6),(2182,'Granjeiro',6),(2183,'Groaíras',6),(2184,'Guaiúba',6),(2185,'Guaraciaba do Norte',6),(2186,'Guaramiranga',6),(2187,'Hidrolândia',6),(2188,'Horizonte',6),(2189,'Ibaretama',6),(2190,'Ibiapina',6),(2191,'Ibicuitinga',6),(2192,'Icapuí',6),(2193,'Icó',6),(2194,'Iguatu',6),(2195,'Independência',6),(2196,'Ipaporanga',6),(2197,'Ipaumirim',6),(2198,'Ipu',6),(2199,'Ipueiras',6),(2200,'Iracema',6),(2201,'Irauçuba',6),(2202,'Itaiçaba',6),(2203,'Itaitinga',6),(2204,'Itapagé',6),(2205,'Itapipoca',6),(2206,'Itapiúna',6),(2207,'Itarema',6),(2208,'Itatira',6),(2209,'Jaguaretama',6),(2210,'Jaguaribara',6),(2211,'Jaguaribe',6),(2212,'Jaguaruana',6),(2213,'Jardim',6),(2214,'Jati',6),(2215,'Jijoca de Jericoacoara',6),(2216,'Juazeiro do Norte',6),(2217,'Jucás',6),(2218,'Lavras da Mangabeira',6),(2219,'Limoeiro do Norte',6),(2220,'Madalena',6),(2221,'Maracanaú',6),(2222,'Maranguape',6),(2223,'Marco',6),(2224,'Martinópole',6),(2225,'Massapê',6),(2226,'Mauriti',6),(2227,'Meruoca',6),(2228,'Milagres',6),(2229,'Milhã',6),(2230,'Miraíma',6),(2231,'Missão Velha',6),(2232,'Mombaça',6),(2233,'Monsenhor Tabosa',6),(2234,'Morada Nova',6),(2235,'Moraújo',6),(2236,'Morrinhos',6),(2237,'Mucambo',6),(2238,'Mulungu',6),(2239,'Nova Olinda',6),(2240,'Nova Russas',6),(2241,'Novo Oriente',6),(2242,'Ocara',6),(2243,'Orós',6),(2244,'Pacajus',6),(2245,'Pacatuba',6),(2246,'Pacoti',6),(2247,'Pacujá',6),(2248,'Palhano',6),(2249,'Palmácia',6),(2250,'Paracuru',6),(2251,'Paraipaba',6),(2252,'Parambu',6),(2253,'Paramoti',6),(2254,'Pedra Branca',6),(2255,'Penaforte',6),(2256,'Pentecoste',6),(2257,'Pereiro',6),(2258,'Pindoretama',6),(2259,'Piquet Carneiro',6),(2260,'Pires Ferreira',6),(2261,'Poranga',6),(2262,'Porteiras',6),(2263,'Potengi',6),(2264,'Potiretama',6),(2265,'Quiterianópolis',6),(2266,'Quixadá',6),(2267,'Quixelô',6),(2268,'Quixeramobim',6),(2269,'Quixeré',6),(2270,'Redenção',6),(2271,'Reriutaba',6),(2272,'Russas',6),(2273,'Saboeiro',6),(2274,'Salitre',6),(2275,'Santa Quitéria',6),(2276,'Santana do Acaraú',6),(2277,'Santana do Cariri',6),(2278,'São Benedito',6),(2279,'São Gonçalo do Amarante',6),(2280,'São João do Jaguaribe',6),(2281,'São Luís do Curu',6),(2282,'Senador Pompeu',6),(2283,'Senador Sá',6),(2284,'Sobral',6),(2285,'Solonópole',6),(2286,'Tabuleiro do Norte',6),(2287,'Tamboril',6),(2288,'Tarrafas',6),(2289,'Tauá',6),(2290,'Tejuçuoca',6),(2291,'Tianguá',6),(2292,'Trairi',6),(2293,'Tururu',6),(2294,'Ubajara',6),(2295,'Umari',6),(2296,'Umirim',6),(2297,'Uruburetama',6),(2298,'Uruoca',6),(2299,'Varjota',6),(2300,'Várzea Alegre',6),(2301,'Viçosa do Ceará',6),(2302,'Brasília',7),(2303,'Afonso Cláudio',8),(2304,'Água Doce do Norte',8),(2305,'Águia Branca',8),(2306,'Alegre',8),(2307,'Alfredo Chaves',8),(2308,'Alto Rio Novo',8),(2309,'Anchieta',8),(2310,'Apiacá',8),(2311,'Aracruz',8),(2312,'Atilio Vivacqua',8),(2313,'Baixo Guandu',8),(2314,'Barra de São Francisco',8),(2315,'Boa Esperança',8),(2316,'Bom Jesus do Norte',8),(2317,'Brejetuba',8),(2318,'Cachoeiro de Itapemirim',8),(2319,'Cariacica',8),(2320,'Castelo',8),(2321,'Colatina',8),(2322,'Conceição da Barra',8),(2323,'Conceição do Castelo',8),(2324,'Divino de São Lourenço',8),(2325,'Domingos Martins',8),(2326,'Dores do Rio Preto',8),(2327,'Ecoporanga',8),(2328,'Fundão',8),(2329,'Governador Lindenberg',8),(2330,'Guaçuí',8),(2331,'Guarapari',8),(2332,'Ibatiba',8),(2333,'Ibiraçu',8),(2334,'Ibitirama',8),(2335,'Iconha',8),(2336,'Irupi',8),(2337,'Itaguaçu',8),(2338,'Itapemirim',8),(2339,'Itarana',8),(2340,'Iúna',8),(2341,'Jaguaré',8),(2342,'Jerônimo Monteiro',8),(2343,'João Neiva',8),(2344,'Laranja da Terra',8),(2345,'Linhares',8),(2346,'Mantenópolis',8),(2347,'Marataízes',8),(2348,'Marechal Floriano',8),(2349,'Marilândia',8),(2350,'Mimoso do Sul',8),(2351,'Montanha',8),(2352,'Mucurici',8),(2353,'Muniz Freire',8),(2354,'Muqui',8),(2355,'Nova Venécia',8),(2356,'Pancas',8),(2357,'Pedro Canário',8),(2358,'Pinheiros',8),(2359,'Piúma',8),(2360,'Ponto Belo',8),(2361,'Presidente Kennedy',8),(2362,'Rio Bananal',8),(2363,'Rio Novo do Sul',8),(2364,'Santa Leopoldina',8),(2365,'Santa Maria de Jetibá',8),(2366,'Santa Teresa',8),(2367,'São Domingos do Norte',8),(2368,'São Gabriel da Palha',8),(2369,'São José do Calçado',8),(2370,'São Mateus',8),(2371,'São Roque do Canaã',8),(2372,'Serra',8),(2373,'Sooretama',8),(2374,'Vargem Alta',8),(2375,'Venda Nova do Imigrante',8),(2376,'Viana',8),(2377,'Vila Pavão',8),(2378,'Vila Valério',8),(2379,'Vila Velha',8),(2380,'Vitória',8),(2381,'Abadia de Goiás',9),(2382,'Abadiânia',9),(2383,'Acreúna',9),(2384,'Adelândia',9),(2385,'Água Fria de Goiás',9),(2386,'Água Limpa',9),(2387,'Águas Lindas de Goiás',9),(2388,'Alexânia',9),(2389,'Aloândia',9),(2390,'Alto Horizonte',9),(2391,'Alto Paraíso de Goiás',9),(2392,'Alvorada do Norte',9),(2393,'Amaralina',9),(2394,'Americano do Brasil',9),(2395,'Amorinópolis',9),(2396,'Anápolis',9),(2397,'Anhanguera',9),(2398,'Anicuns',9),(2399,'Aparecida de Goiânia',9),(2400,'Aparecida do Rio Doce',9),(2401,'Aporé',9),(2402,'Araçu',9),(2403,'Aragarças',9),(2404,'Aragoiânia',9),(2405,'Araguapaz',9),(2406,'Arenópolis',9),(2407,'Aruanã',9),(2408,'Aurilândia',9),(2409,'Avelinópolis',9),(2410,'Baliza',9),(2411,'Barro Alto',9),(2412,'Bela Vista de Goiás',9),(2413,'Bom Jardim de Goiás',9),(2414,'Bom Jesus de Goiás',9),(2415,'Bonfinópolis',9),(2416,'Bonópolis',9),(2417,'Brazabrantes',9),(2418,'Britânia',9),(2419,'Buriti Alegre',9),(2420,'Buriti de Goiás',9),(2421,'Buritinópolis',9),(2422,'Cabeceiras',9),(2423,'Cachoeira Alta',9),(2424,'Cachoeira de Goiás',9),(2425,'Cachoeira Dourada',9),(2426,'Caçu',9),(2427,'Caiapônia',9),(2428,'Caldas Novas',9),(2429,'Caldazinha',9),(2430,'Campestre de Goiás',9),(2431,'Campinaçu',9),(2432,'Campinorte',9),(2433,'Campo Alegre de Goiás',9),(2434,'Campo Limpo de Goiás',9),(2435,'Campos Belos',9),(2436,'Campos Verdes',9),(2437,'Carmo do Rio Verde',9),(2438,'Castelândia',9),(2439,'Catalão',9),(2440,'Caturaí',9),(2441,'Cavalcante',9),(2442,'Ceres',9),(2443,'Cezarina',9),(2444,'Chapadão do Céu',9),(2445,'Cidade Ocidental',9),(2446,'Cocalzinho de Goiás',9),(2447,'Colinas do Sul',9),(2448,'Córrego do Ouro',9),(2449,'Corumbá de Goiás',9),(2450,'Corumbaíba',9),(2451,'Cristalina',9),(2452,'Cristianópolis',9),(2453,'Crixás',9),(2454,'Cromínia',9),(2455,'Cumari',9),(2456,'Damianópolis',9),(2457,'Damolândia',9),(2458,'Davinópolis',9),(2459,'Diorama',9),(2460,'Divinópolis de Goiás',9),(2461,'Doverlândia',9),(2462,'Edealina',9),(2463,'Edéia',9),(2464,'Estrela do Norte',9),(2465,'Faina',9),(2466,'Fazenda Nova',9),(2467,'Firminópolis',9),(2468,'Flores de Goiás',9),(2469,'Formosa',9),(2470,'Formoso',9),(2471,'Gameleira de Goiás',9),(2472,'Goianápolis',9),(2473,'Goiandira',9),(2474,'Goianésia',9),(2475,'Goiânia',9),(2476,'Goianira',9),(2477,'Goiás',9),(2478,'Goiatuba',9),(2479,'Gouvelândia',9),(2480,'Guapó',9),(2481,'Guaraíta',9),(2482,'Guarani de Goiás',9),(2483,'Guarinos',9),(2484,'Heitoraí',9),(2485,'Hidrolândia',9),(2486,'Hidrolina',9),(2487,'Iaciara',9),(2488,'Inaciolândia',9),(2489,'Indiara',9),(2490,'Inhumas',9),(2491,'Ipameri',9),(2492,'Ipiranga de Goiás',9),(2493,'Iporá',9),(2494,'Israelândia',9),(2495,'Itaberaí',9),(2496,'Itaguari',9),(2497,'Itaguaru',9),(2498,'Itajá',9),(2499,'Itapaci',9),(2500,'Itapirapuã',9),(2501,'Itapuranga',9),(2502,'Itarumã',9),(2503,'Itauçu',9),(2504,'Itumbiara',9),(2505,'Ivolândia',9),(2506,'Jandaia',9),(2507,'Jaraguá',9),(2508,'Jataí',9),(2509,'Jaupaci',9),(2510,'Jesúpolis',9),(2511,'Joviânia',9),(2512,'Jussara',9),(2513,'Lagoa Santa',9),(2514,'Leopoldo de Bulhões',9),(2515,'Luziânia',9),(2516,'Mairipotaba',9),(2517,'Mambaí',9),(2518,'Mara Rosa',9),(2519,'Marzagão',9),(2520,'Matrinchã',9),(2521,'Maurilândia',9),(2522,'Mimoso de Goiás',9),(2523,'Minaçu',9),(2524,'Mineiros',9),(2525,'Moiporá',9),(2526,'Monte Alegre de Goiás',9),(2527,'Montes Claros de Goiás',9),(2528,'Montividiu',9),(2529,'Montividiu do Norte',9),(2530,'Morrinhos',9),(2531,'Morro Agudo de Goiás',9),(2532,'Mossâmedes',9),(2533,'Mozarlândia',9),(2534,'Mundo Novo',9),(2535,'Mutunópolis',9),(2536,'Nazário',9),(2537,'Nerópolis',9),(2538,'Niquelândia',9),(2539,'Nova América',9),(2540,'Nova Aurora',9),(2541,'Nova Crixás',9),(2542,'Nova Glória',9),(2543,'Nova Iguaçu de Goiás',9),(2544,'Nova Roma',9),(2545,'Nova Veneza',9),(2546,'Novo Brasil',9),(2547,'Novo Gama',9),(2548,'Novo Planalto',9),(2549,'Orizona',9),(2550,'Ouro Verde de Goiás',9),(2551,'Ouvidor',9),(2552,'Padre Bernardo',9),(2553,'Palestina de Goiás',9),(2554,'Palmeiras de Goiás',9),(2555,'Palmelo',9),(2556,'Palminópolis',9),(2557,'Panamá',9),(2558,'Paranaiguara',9),(2559,'Paraúna',9),(2560,'Perolândia',9),(2561,'Petrolina de Goiás',9),(2562,'Pilar de Goiás',9),(2563,'Piracanjuba',9),(2564,'Piranhas',9),(2565,'Pirenópolis',9),(2566,'Pires do Rio',9),(2567,'Planaltina',9),(2568,'Pontalina',9),(2569,'Porangatu',9),(2570,'Porteirão',9),(2571,'Portelândia',9),(2572,'Posse',9),(2573,'Professor Jamil',9),(2574,'Quirinópolis',9),(2575,'Rialma',9),(2576,'Rianápolis',9),(2577,'Rio Quente',9),(2578,'Rio Verde',9),(2579,'Rubiataba',9),(2580,'Sanclerlândia',9),(2581,'Santa Bárbara de Goiás',9),(2582,'Santa Cruz de Goiás',9),(2583,'Santa Fé de Goiás',9),(2584,'Santa Helena de Goiás',9),(2585,'Santa Isabel',9),(2586,'Santa Rita do Araguaia',9),(2587,'Santa Rita do Novo Destino',9),(2588,'Santa Rosa de Goiás',9),(2589,'Santa Tereza de Goiás',9),(2590,'Santa Terezinha de Goiás',9),(2591,'Santo Antônio da Barra',9),(2592,'Santo Antônio de Goiás',9),(2593,'Santo Antônio do Descoberto',9),(2594,'São Domingos',9),(2595,'São Francisco de Goiás',9),(2596,'São João da Paraúna',9),(2597,'São João d`Aliança',9),(2598,'São Luís de Montes Belos',9),(2599,'São Luíz do Norte',9),(2600,'São Miguel do Araguaia',9),(2601,'São Miguel do Passa Quatro',9),(2602,'São Patrício',9),(2603,'São Simão',9),(2604,'Senador Canedo',9),(2605,'Serranópolis',9),(2606,'Silvânia',9),(2607,'Simolândia',9),(2608,'Sítio d`Abadia',9),(2609,'Taquaral de Goiás',9),(2610,'Teresina de Goiás',9),(2611,'Terezópolis de Goiás',9),(2612,'Três Ranchos',9),(2613,'Trindade',9),(2614,'Trombas',9),(2615,'Turvânia',9),(2616,'Turvelândia',9),(2617,'Uirapuru',9),(2618,'Uruaçu',9),(2619,'Uruana',9),(2620,'Urutaí',9),(2621,'Valparaíso de Goiás',9),(2622,'Varjão',9),(2623,'Vianópolis',9),(2624,'Vicentinópolis',9),(2625,'Vila Boa',9),(2626,'Vila Propício',9),(2627,'Afonso Cláudio',8),(2628,'Água Doce do Norte',8),(2629,'Águia Branca',8),(2630,'Alegre',8),(2631,'Alfredo Chaves',8),(2632,'Alto Rio Novo',8),(2633,'Anchieta',8),(2634,'Apiacá',8),(2635,'Aracruz',8),(2636,'Atilio Vivacqua',8),(2637,'Baixo Guandu',8),(2638,'Barra de São Francisco',8),(2639,'Boa Esperança',8),(2640,'Bom Jesus do Norte',8),(2641,'Brejetuba',8),(2642,'Cachoeiro de Itapemirim',8),(2643,'Cariacica',8),(2644,'Castelo',8),(2645,'Colatina',8),(2646,'Conceição da Barra',8),(2647,'Conceição do Castelo',8),(2648,'Divino de São Lourenço',8),(2649,'Domingos Martins',8),(2650,'Dores do Rio Preto',8),(2651,'Ecoporanga',8),(2652,'Fundão',8),(2653,'Governador Lindenberg',8),(2654,'Guaçuí',8),(2655,'Guarapari',8),(2656,'Ibatiba',8),(2657,'Ibiraçu',8),(2658,'Ibitirama',8),(2659,'Iconha',8),(2660,'Irupi',8),(2661,'Itaguaçu',8),(2662,'Itapemirim',8),(2663,'Itarana',8),(2664,'Iúna',8),(2665,'Jaguaré',8),(2666,'Jerônimo Monteiro',8),(2667,'João Neiva',8),(2668,'Laranja da Terra',8),(2669,'Linhares',8),(2670,'Mantenópolis',8),(2671,'Marataízes',8),(2672,'Marechal Floriano',8),(2673,'Marilândia',8),(2674,'Mimoso do Sul',8),(2675,'Montanha',8),(2676,'Mucurici',8),(2677,'Muniz Freire',8),(2678,'Muqui',8),(2679,'Nova Venécia',8),(2680,'Pancas',8),(2681,'Pedro Canário',8),(2682,'Pinheiros',8),(2683,'Piúma',8),(2684,'Ponto Belo',8),(2685,'Presidente Kennedy',8),(2686,'Rio Bananal',8),(2687,'Rio Novo do Sul',8),(2688,'Santa Leopoldina',8),(2689,'Santa Maria de Jetibá',8),(2690,'Santa Teresa',8),(2691,'São Domingos do Norte',8),(2692,'São Gabriel da Palha',8),(2693,'São José do Calçado',8),(2694,'São Mateus',8),(2695,'São Roque do Canaã',8),(2696,'Serra',8),(2697,'Sooretama',8),(2698,'Vargem Alta',8),(2699,'Venda Nova do Imigrante',8),(2700,'Viana',8),(2701,'Vila Pavão',8),(2702,'Vila Valério',8),(2703,'Vila Velha',8),(2704,'Vitória',8),(2705,'Abadia de Goiás',9),(2706,'Abadiânia',9),(2707,'Acreúna',9),(2708,'Adelândia',9),(2709,'Água Fria de Goiás',9),(2710,'Água Limpa',9),(2711,'Águas Lindas de Goiás',9),(2712,'Alexânia',9),(2713,'Aloândia',9),(2714,'Alto Horizonte',9),(2715,'Alto Paraíso de Goiás',9),(2716,'Alvorada do Norte',9),(2717,'Amaralina',9),(2718,'Americano do Brasil',9),(2719,'Amorinópolis',9),(2720,'Anápolis',9),(2721,'Anhanguera',9),(2722,'Anicuns',9),(2723,'Aparecida de Goiânia',9),(2724,'Aparecida do Rio Doce',9),(2725,'Aporé',9),(2726,'Araçu',9),(2727,'Aragarças',9),(2728,'Aragoiânia',9),(2729,'Araguapaz',9),(2730,'Arenópolis',9),(2731,'Aruanã',9),(2732,'Aurilândia',9),(2733,'Avelinópolis',9),(2734,'Baliza',9),(2735,'Barro Alto',9),(2736,'Bela Vista de Goiás',9),(2737,'Bom Jardim de Goiás',9),(2738,'Bom Jesus de Goiás',9),(2739,'Bonfinópolis',9),(2740,'Bonópolis',9),(2741,'Brazabrantes',9),(2742,'Britânia',9),(2743,'Buriti Alegre',9),(2744,'Buriti de Goiás',9),(2745,'Buritinópolis',9),(2746,'Cabeceiras',9),(2747,'Cachoeira Alta',9),(2748,'Cachoeira de Goiás',9),(2749,'Cachoeira Dourada',9),(2750,'Caçu',9),(2751,'Caiapônia',9),(2752,'Caldas Novas',9),(2753,'Caldazinha',9),(2754,'Campestre de Goiás',9),(2755,'Campinaçu',9),(2756,'Campinorte',9),(2757,'Campo Alegre de Goiás',9),(2758,'Campo Limpo de Goiás',9),(2759,'Campos Belos',9),(2760,'Campos Verdes',9),(2761,'Carmo do Rio Verde',9),(2762,'Castelândia',9),(2763,'Catalão',9),(2764,'Caturaí',9),(2765,'Cavalcante',9),(2766,'Ceres',9),(2767,'Cezarina',9),(2768,'Chapadão do Céu',9),(2769,'Cidade Ocidental',9),(2770,'Cocalzinho de Goiás',9),(2771,'Colinas do Sul',9),(2772,'Córrego do Ouro',9),(2773,'Corumbá de Goiás',9),(2774,'Corumbaíba',9),(2775,'Cristalina',9),(2776,'Cristianópolis',9),(2777,'Crixás',9),(2778,'Cromínia',9),(2779,'Cumari',9),(2780,'Damianópolis',9),(2781,'Damolândia',9),(2782,'Davinópolis',9),(2783,'Diorama',9),(2784,'Divinópolis de Goiás',9),(2785,'Doverlândia',9),(2786,'Edealina',9),(2787,'Edéia',9),(2788,'Estrela do Norte',9),(2789,'Faina',9),(2790,'Fazenda Nova',9),(2791,'Firminópolis',9),(2792,'Flores de Goiás',9),(2793,'Formosa',9),(2794,'Formoso',9),(2795,'Gameleira de Goiás',9),(2796,'Goianápolis',9),(2797,'Goiandira',9),(2798,'Goianésia',9),(2799,'Goiânia',9),(2800,'Goianira',9),(2801,'Goiás',9),(2802,'Goiatuba',9),(2803,'Gouvelândia',9),(2804,'Guapó',9),(2805,'Guaraíta',9),(2806,'Guarani de Goiás',9),(2807,'Guarinos',9),(2808,'Heitoraí',9),(2809,'Hidrolândia',9),(2810,'Hidrolina',9),(2811,'Iaciara',9),(2812,'Inaciolândia',9),(2813,'Indiara',9),(2814,'Inhumas',9),(2815,'Ipameri',9),(2816,'Ipiranga de Goiás',9),(2817,'Iporá',9),(2818,'Israelândia',9),(2819,'Itaberaí',9),(2820,'Itaguari',9),(2821,'Itaguaru',9),(2822,'Itajá',9),(2823,'Itapaci',9),(2824,'Itapirapuã',9),(2825,'Itapuranga',9),(2826,'Itarumã',9),(2827,'Itauçu',9),(2828,'Itumbiara',9),(2829,'Ivolândia',9),(2830,'Jandaia',9),(2831,'Jaraguá',9),(2832,'Jataí',9),(2833,'Jaupaci',9),(2834,'Jesúpolis',9),(2835,'Joviânia',9),(2836,'Jussara',9),(2837,'Lagoa Santa',9),(2838,'Leopoldo de Bulhões',9),(2839,'Luziânia',9),(2840,'Mairipotaba',9),(2841,'Mambaí',9),(2842,'Mara Rosa',9),(2843,'Marzagão',9),(2844,'Matrinchã',9),(2845,'Maurilândia',9),(2846,'Mimoso de Goiás',9),(2847,'Minaçu',9),(2848,'Mineiros',9),(2849,'Moiporá',9),(2850,'Monte Alegre de Goiás',9),(2851,'Montes Claros de Goiás',9),(2852,'Montividiu',9),(2853,'Montividiu do Norte',9),(2854,'Morrinhos',9),(2855,'Morro Agudo de Goiás',9),(2856,'Mossâmedes',9),(2857,'Mozarlândia',9),(2858,'Mundo Novo',9),(2859,'Mutunópolis',9),(2860,'Nazário',9),(2861,'Nerópolis',9),(2862,'Niquelândia',9),(2863,'Nova América',9),(2864,'Nova Aurora',9),(2865,'Nova Crixás',9),(2866,'Nova Glória',9),(2867,'Nova Iguaçu de Goiás',9),(2868,'Nova Roma',9),(2869,'Nova Veneza',9),(2870,'Novo Brasil',9),(2871,'Novo Gama',9),(2872,'Novo Planalto',9),(2873,'Orizona',9),(2874,'Ouro Verde de Goiás',9),(2875,'Ouvidor',9),(2876,'Padre Bernardo',9),(2877,'Palestina de Goiás',9),(2878,'Palmeiras de Goiás',9),(2879,'Palmelo',9),(2880,'Palminópolis',9),(2881,'Panamá',9),(2882,'Paranaiguara',9),(2883,'Paraúna',9),(2884,'Perolândia',9),(2885,'Petrolina de Goiás',9),(2886,'Pilar de Goiás',9),(2887,'Piracanjuba',9),(2888,'Piranhas',9),(2889,'Pirenópolis',9),(2890,'Pires do Rio',9),(2891,'Planaltina',9),(2892,'Pontalina',9),(2893,'Porangatu',9),(2894,'Porteirão',9),(2895,'Portelândia',9),(2896,'Posse',9),(2897,'Professor Jamil',9),(2898,'Quirinópolis',9),(2899,'Rialma',9),(2900,'Rianápolis',9),(2901,'Rio Quente',9),(2902,'Rio Verde',9),(2903,'Rubiataba',9),(2904,'Sanclerlândia',9),(2905,'Santa Bárbara de Goiás',9),(2906,'Santa Cruz de Goiás',9),(2907,'Santa Fé de Goiás',9),(2908,'Santa Helena de Goiás',9),(2909,'Santa Isabel',9),(2910,'Santa Rita do Araguaia',9),(2911,'Santa Rita do Novo Destino',9),(2912,'Santa Rosa de Goiás',9),(2913,'Santa Tereza de Goiás',9),(2914,'Santa Terezinha de Goiás',9),(2915,'Santo Antônio da Barra',9),(2916,'Santo Antônio de Goiás',9),(2917,'Santo Antônio do Descoberto',9),(2918,'São Domingos',9),(2919,'São Francisco de Goiás',9),(2920,'São João da Paraúna',9),(2921,'São João d`Aliança',9),(2922,'São Luís de Montes Belos',9),(2923,'São Luíz do Norte',9),(2924,'São Miguel do Araguaia',9),(2925,'São Miguel do Passa Quatro',9),(2926,'São Patrício',9),(2927,'São Simão',9),(2928,'Senador Canedo',9),(2929,'Serranópolis',9),(2930,'Silvânia',9),(2931,'Simolândia',9),(2932,'Sítio d`Abadia',9),(2933,'Taquaral de Goiás',9),(2934,'Teresina de Goiás',9),(2935,'Terezópolis de Goiás',9),(2936,'Três Ranchos',9),(2937,'Trindade',9),(2938,'Trombas',9),(2939,'Turvânia',9),(2940,'Turvelândia',9),(2941,'Uirapuru',9),(2942,'Uruaçu',9),(2943,'Uruana',9),(2944,'Urutaí',9),(2945,'Valparaíso de Goiás',9),(2946,'Varjão',9),(2947,'Vianópolis',9),(2948,'Vicentinópolis',9),(2949,'Vila Boa',9),(2950,'Vila Propício',9),(2951,'Água Clara',12),(2952,'Alcinópolis',12),(2953,'Amambai',12),(2954,'Anastácio',12),(2955,'Anaurilândia',12),(2956,'Angélica',12),(2957,'Antônio João',12),(2958,'Aparecida do Taboado',12),(2959,'Aquidauana',12),(2960,'Aral Moreira',12),(2961,'Bandeirantes',12),(2962,'Bataguassu',12),(2963,'Batayporã',12),(2964,'Bela Vista',12),(2965,'Bodoquena',12),(2966,'Bonito',12),(2967,'Brasilândia',12),(2968,'Caarapó',12),(2969,'Camapuã',12),(2970,'Campo Grande',12),(2971,'Caracol',12),(2972,'Cassilândia',12),(2973,'Chapadão do Sul',12),(2974,'Corguinho',12),(2975,'Coronel Sapucaia',12),(2976,'Corumbá',12),(2977,'Costa Rica',12),(2978,'Coxim',12),(2979,'Deodápolis',12),(2980,'Dois Irmãos do Buriti',12),(2981,'Douradina',12),(2982,'Dourados',12),(2983,'Eldorado',12),(2984,'Fátima do Sul',12),(2985,'Figueirão',12),(2986,'Glória de Dourados',12),(2987,'Guia Lopes da Laguna',12),(2988,'Iguatemi',12),(2989,'Inocência',12),(2990,'Itaporã',12),(2991,'Itaquiraí',12),(2992,'Ivinhema',12),(2993,'Japorã',12),(2994,'Jaraguari',12),(2995,'Jardim',12),(2996,'Jateí',12),(2997,'Juti',12),(2998,'Ladário',12),(2999,'Laguna Carapã',12),(3000,'Maracaju',12),(3001,'Miranda',12),(3002,'Mundo Novo',12),(3003,'Naviraí',12),(3004,'Nioaque',12),(3005,'Nova Alvorada do Sul',12),(3006,'Nova Andradina',12),(3007,'Novo Horizonte do Sul',12),(3008,'Paraíso das Águas',12),(3009,'Paranaíba',12),(3010,'Paranhos',12),(3011,'Pedro Gomes',12),(3012,'Ponta Porã',12),(3013,'Porto Murtinho',12),(3014,'Ribas do Rio Pardo',12),(3015,'Rio Brilhante',12),(3016,'Rio Negro',12),(3017,'Rio Verde de Mato Grosso',12),(3018,'Rochedo',12),(3019,'Santa Rita do Pardo',12),(3020,'São Gabriel do Oeste',12),(3021,'Selvíria',12),(3022,'Sete Quedas',12),(3023,'Sidrolândia',12),(3024,'Sonora',12),(3025,'Tacuru',12),(3026,'Taquarussu',12),(3027,'Terenos',12),(3028,'Três Lagoas',12),(3029,'Vicentina',12),(3030,'Açailândia',10),(3031,'Afonso Cunha',10),(3032,'Água Doce do Maranhão',10),(3033,'Alcântara',10),(3034,'Aldeias Altas',10),(3035,'Altamira do Maranhão',10),(3036,'Alto Alegre do Maranhão',10),(3037,'Alto Alegre do Pindaré',10),(3038,'Alto Parnaíba',10),(3039,'Amapá do Maranhão',10),(3040,'Amarante do Maranhão',10),(3041,'Anajatuba',10),(3042,'Anapurus',10),(3043,'Apicum-Açu',10),(3044,'Araguanã',10),(3045,'Araioses',10),(3046,'Arame',10),(3047,'Arari',10),(3048,'Axixá',10),(3049,'Bacabal',10),(3050,'Bacabeira',10),(3051,'Bacuri',10),(3052,'Bacurituba',10),(3053,'Balsas',10),(3054,'Barão de Grajaú',10),(3055,'Barra do Corda',10),(3056,'Barreirinhas',10),(3057,'Bela Vista do Maranhão',10),(3058,'Belágua',10),(3059,'Benedito Leite',10),(3060,'Bequimão',10),(3061,'Bernardo do Mearim',10),(3062,'Boa Vista do Gurupi',10),(3063,'Bom Jardim',10),(3064,'Bom Jesus das Selvas',10),(3065,'Bom Lugar',10),(3066,'Brejo',10),(3067,'Brejo de Areia',10),(3068,'Buriti',10),(3069,'Buriti Bravo',10),(3070,'Buriticupu',10),(3071,'Buritirana',10),(3072,'Cachoeira Grande',10),(3073,'Cajapió',10),(3074,'Cajari',10),(3075,'Campestre do Maranhão',10),(3076,'Cândido Mendes',10),(3077,'Cantanhede',10),(3078,'Capinzal do Norte',10),(3079,'Carolina',10),(3080,'Carutapera',10),(3081,'Caxias',10),(3082,'Cedral',10),(3083,'Central do Maranhão',10),(3084,'Centro do Guilherme',10),(3085,'Centro Novo do Maranhão',10),(3086,'Chapadinha',10),(3087,'Cidelândia',10),(3088,'Codó',10),(3089,'Coelho Neto',10),(3090,'Colinas',10),(3091,'Conceição do Lago-Açu',10),(3092,'Coroatá',10),(3093,'Cururupu',10),(3094,'Davinópolis',10),(3095,'Dom Pedro',10),(3096,'Duque Bacelar',10),(3097,'Esperantinópolis',10),(3098,'Estreito',10),(3099,'Feira Nova do Maranhão',10),(3100,'Fernando Falcão',10),(3101,'Formosa da Serra Negra',10),(3102,'Fortaleza dos Nogueiras',10),(3103,'Fortuna',10),(3104,'Godofredo Viana',10),(3105,'Gonçalves Dias',10),(3106,'Governador Archer',10),(3107,'Governador Edison Lobão',10),(3108,'Governador Eugênio Barros',10),(3109,'Governador Luiz Rocha',10),(3110,'Governador Newton Bello',10),(3111,'Governador Nunes Freire',10),(3112,'Graça Aranha',10),(3113,'Grajaú',10),(3114,'Guimarães',10),(3115,'Humberto de Campos',10),(3116,'Icatu',10),(3117,'Igarapé do Meio',10),(3118,'Igarapé Grande',10),(3119,'Imperatriz',10),(3120,'Itaipava do Grajaú',10),(3121,'Itapecuru Mirim',10),(3122,'Itinga do Maranhão',10),(3123,'Jatobá',10),(3124,'Jenipapo dos Vieiras',10),(3125,'João Lisboa',10),(3126,'Joselândia',10),(3127,'Junco do Maranhão',10),(3128,'Lago da Pedra',10),(3129,'Lago do Junco',10),(3130,'Lago dos Rodrigues',10),(3131,'Lago Verde',10),(3132,'Lagoa do Mato',10),(3133,'Lagoa Grande do Maranhão',10),(3134,'Lajeado Novo',10),(3135,'Lima Campos',10),(3136,'Loreto',10),(3137,'Luís Domingues',10),(3138,'Magalhães de Almeida',10),(3139,'Maracaçumé',10),(3140,'Marajá do Sena',10),(3141,'Maranhãozinho',10),(3142,'Mata Roma',10),(3143,'Matinha',10),(3144,'Matões',10),(3145,'Matões do Norte',10),(3146,'Milagres do Maranhão',10),(3147,'Mirador',10),(3148,'Miranda do Norte',10),(3149,'Mirinzal',10),(3150,'Monção',10),(3151,'Montes Altos',10),(3152,'Morros',10),(3153,'Nina Rodrigues',10),(3154,'Nova Colinas',10),(3155,'Nova Iorque',10),(3156,'Nova Olinda do Maranhão',10),(3157,'Olho d`Água das Cunhãs',10),(3158,'Olinda Nova do Maranhão',10),(3159,'Paço do Lumiar',10),(3160,'Palmeirândia',10),(3161,'Paraibano',10),(3162,'Parnarama',10),(3163,'Passagem Franca',10),(3164,'Pastos Bons',10),(3165,'Paulino Neves',10),(3166,'Paulo Ramos',10),(3167,'Pedreiras',10),(3168,'Pedro do Rosário',10),(3169,'Penalva',10),(3170,'Peri Mirim',10),(3171,'Peritoró',10),(3172,'Pindaré-Mirim',10),(3173,'Pinheiro',10),(3174,'Pio XII',10),(3175,'Pirapemas',10),(3176,'Poção de Pedras',10),(3177,'Porto Franco',10),(3178,'Porto Rico do Maranhão',10),(3179,'Presidente Dutra',10),(3180,'Presidente Juscelino',10),(3181,'Presidente Médici',10),(3182,'Presidente Sarney',10),(3183,'Presidente Vargas',10),(3184,'Primeira Cruz',10),(3185,'Raposa',10),(3186,'Riachão',10),(3187,'Ribamar Fiquene',10),(3188,'Rosário',10),(3189,'Sambaíba',10),(3190,'Santa Filomena do Maranhão',10),(3191,'Santa Helena',10),(3192,'Santa Inês',10),(3193,'Santa Luzia',10),(3194,'Santa Luzia do Paruá',10),(3195,'Santa Quitéria do Maranhão',10),(3196,'Santa Rita',10),(3197,'Santana do Maranhão',10),(3198,'Santo Amaro do Maranhão',10),(3199,'Santo Antônio dos Lopes',10),(3200,'São Benedito do Rio Preto',10),(3201,'São Bento',10),(3202,'São Bernardo',10),(3203,'São Domingos do Azeitão',10),(3204,'São Domingos do Maranhão',10),(3205,'São Félix de Balsas',10),(3206,'São Francisco do Brejão',10),(3207,'São Francisco do Maranhão',10),(3208,'São João Batista',10),(3209,'São João do Carú',10),(3210,'São João do Paraíso',10),(3211,'São João do Soter',10),(3212,'São João dos Patos',10),(3213,'São José de Ribamar',10),(3214,'São José dos Basílios',10),(3215,'São Luís',10),(3216,'São Luís Gonzaga do Maranhão',10),(3217,'São Mateus do Maranhão',10),(3218,'São Pedro da Água Branca',10),(3219,'São Pedro dos Crentes',10),(3220,'São Raimundo das Mangabeiras',10),(3221,'São Raimundo do Doca Bezerra',10),(3222,'São Roberto',10),(3223,'São Vicente Ferrer',10),(3224,'Satubinha',10),(3225,'Senador Alexandre Costa',10),(3226,'Senador La Rocque',10),(3227,'Serrano do Maranhão',10),(3228,'Sítio Novo',10),(3229,'Sucupira do Norte',10),(3230,'Sucupira do Riachão',10),(3231,'Tasso Fragoso',10),(3232,'Timbiras',10),(3233,'Timon',10),(3234,'Trizidela do Vale',10),(3235,'Tufilândia',10),(3236,'Tuntum',10),(3237,'Turiaçu',10),(3238,'Turilândia',10),(3239,'Tutóia',10),(3240,'Urbano Santos',10),(3241,'Vargem Grande',10),(3242,'Viana',10),(3243,'Vila Nova dos Martírios',10),(3244,'Vitória do Mearim',10),(3245,'Vitorino Freire',10),(3246,'Zé Doca',10),(3247,'Acorizal',13),(3248,'Água Boa',13),(3249,'Alta Floresta',13),(3250,'Alto Araguaia',13),(3251,'Alto Boa Vista',13),(3252,'Alto Garças',13),(3253,'Alto Paraguai',13),(3254,'Alto Taquari',13),(3255,'Apiacás',13),(3256,'Araguaiana',13),(3257,'Araguainha',13),(3258,'Araputanga',13),(3259,'Arenápolis',13),(3260,'Aripuanã',13),(3261,'Barão de Melgaço',13),(3262,'Barra do Bugres',13),(3263,'Barra do Garças',13),(3264,'Bom Jesus do Araguaia',13),(3265,'Brasnorte',13),(3266,'Cáceres',13),(3267,'Campinápolis',13),(3268,'Campo Novo do Parecis',13),(3269,'Campo Verde',13),(3270,'Campos de Júlio',13),(3271,'Canabrava do Norte',13),(3272,'Canarana',13),(3273,'Carlinda',13),(3274,'Castanheira',13),(3275,'Chapada dos Guimarães',13),(3276,'Cláudia',13),(3277,'Cocalinho',13),(3278,'Colíder',13),(3279,'Colniza',13),(3280,'Comodoro',13),(3281,'Confresa',13),(3282,'Conquista d`Oeste',13),(3283,'Cotriguaçu',13),(3284,'Cuiabá',13),(3285,'Curvelândia',13),(3286,'Denise',13),(3287,'Diamantino',13),(3288,'Dom Aquino',13),(3289,'Feliz Natal',13),(3290,'Figueirópolis d`Oeste',13),(3291,'Gaúcha do Norte',13),(3292,'General Carneiro',13),(3293,'Glória d`Oeste',13),(3294,'Guarantã do Norte',13),(3295,'Guiratinga',13),(3296,'Indiavaí',13),(3297,'Ipiranga do Norte',13),(3298,'Itanhangá',13),(3299,'Itaúba',13),(3300,'Itiquira',13),(3301,'Jaciara',13),(3302,'Jangada',13),(3303,'Jauru',13),(3304,'Juara',13),(3305,'Juína',13),(3306,'Juruena',13),(3307,'Juscimeira',13),(3308,'Lambari d`Oeste',13),(3309,'Lucas do Rio Verde',13),(3310,'Luciára',13),(3311,'Marcelândia',13),(3312,'Matupá',13),(3313,'Mirassol d`Oeste',13),(3314,'Nobres',13),(3315,'Nortelândia',13),(3316,'Nossa Senhora do Livramento',13),(3317,'Nova Bandeirantes',13),(3318,'Nova Brasilândia',13),(3319,'Nova Canaã do Norte',13),(3320,'Nova Guarita',13),(3321,'Nova Lacerda',13),(3322,'Nova Marilândia',13),(3323,'Nova Maringá',13),(3324,'Nova Monte verde',13),(3325,'Nova Mutum',13),(3326,'Nova Nazaré',13),(3327,'Nova Olímpia',13),(3328,'Nova Santa Helena',13),(3329,'Nova Ubiratã',13),(3330,'Nova Xavantina',13),(3331,'Novo Horizonte do Norte',13),(3332,'Novo Mundo',13),(3333,'Novo Santo Antônio',13),(3334,'Novo São Joaquim',13),(3335,'Paranaíta',13),(3336,'Paranatinga',13),(3337,'Pedra Preta',13),(3338,'Peixoto de Azevedo',13),(3339,'Planalto da Serra',13),(3340,'Poconé',13),(3341,'Pontal do Araguaia',13),(3342,'Ponte Branca',13),(3343,'Pontes e Lacerda',13),(3344,'Porto Alegre do Norte',13),(3345,'Porto dos Gaúchos',13),(3346,'Porto Esperidião',13),(3347,'Porto Estrela',13),(3348,'Poxoréo',13),(3349,'Primavera do Leste',13),(3350,'Querência',13),(3351,'Reserva do Cabaçal',13),(3352,'Ribeirão Cascalheira',13),(3353,'Ribeirãozinho',13),(3354,'Rio Branco',13),(3355,'Rondolândia',13),(3356,'Rondonópolis',13),(3357,'Rosário Oeste',13),(3358,'Salto do Céu',13),(3359,'Santa Carmem',13),(3360,'Santa Cruz do Xingu',13),(3361,'Santa Rita do Trivelato',13),(3362,'Santa Terezinha',13),(3363,'Santo Afonso',13),(3364,'Santo Antônio do Leste',13),(3365,'Santo Antônio do Leverger',13),(3366,'São Félix do Araguaia',13),(3367,'São José do Povo',13),(3368,'São José do Rio Claro',13),(3369,'São José do Xingu',13),(3370,'São José dos Quatro Marcos',13),(3371,'São Pedro da Cipa',13),(3372,'Sapezal',13),(3373,'Serra Nova Dourada',13),(3374,'Sinop',13),(3375,'Sorriso',13),(3376,'Tabaporã',13),(3377,'Tangará da Serra',13),(3378,'Tapurah',13),(3379,'Terra Nova do Norte',13),(3380,'Tesouro',13),(3381,'Torixoréu',13),(3382,'União do Sul',13),(3383,'Vale de São Domingos',13),(3384,'Várzea Grande',13),(3385,'Vera',13),(3386,'Vila Bela da Santíssima Trindade',13),(3387,'Vila Rica',13),(3388,'Abaetetuba',14),(3389,'Abel Figueiredo',14),(3390,'Acará',14),(3391,'Afuá',14),(3392,'Água Azul do Norte',14),(3393,'Alenquer',14),(3394,'Almeirim',14),(3395,'Altamira',14),(3396,'Anajás',14),(3397,'Ananindeua',14),(3398,'Anapu',14),(3399,'Augusto Corrêa',14),(3400,'Aurora do Pará',14),(3401,'Aveiro',14),(3402,'Bagre',14),(3403,'Baião',14),(3404,'Bannach',14),(3405,'Barcarena',14),(3406,'Belém',14),(3407,'Belterra',14),(3408,'Benevides',14),(3409,'Bom Jesus do Tocantins',14),(3410,'Bonito',14),(3411,'Bragança',14),(3412,'Brasil Novo',14),(3413,'Brejo Grande do Araguaia',14),(3414,'Breu Branco',14),(3415,'Breves',14),(3416,'Bujaru',14),(3417,'Cachoeira do Arari',14),(3418,'Cachoeira do Piriá',14),(3419,'Cametá',14),(3420,'Canaã dos Carajás',14),(3421,'Capanema',14),(3422,'Capitão Poço',14),(3423,'Castanhal',14),(3424,'Chaves',14),(3425,'Colares',14),(3426,'Conceição do Araguaia',14),(3427,'Concórdia do Pará',14),(3428,'Cumaru do Norte',14),(3429,'Curionópolis',14),(3430,'Curralinho',14),(3431,'Curuá',14),(3432,'Curuçá',14),(3433,'Dom Eliseu',14),(3434,'Eldorado dos Carajás',14),(3435,'Faro',14),(3436,'Floresta do Araguaia',14),(3437,'Garrafão do Norte',14),(3438,'Goianésia do Pará',14),(3439,'Gurupá',14),(3440,'Igarapé-Açu',14),(3441,'Igarapé-Miri',14),(3442,'Inhangapi',14),(3443,'Ipixuna do Pará',14),(3444,'Irituia',14),(3445,'Itaituba',14),(3446,'Itupiranga',14),(3447,'Jacareacanga',14),(3448,'Jacundá',14),(3449,'Juruti',14),(3450,'Limoeiro do Ajuru',14),(3451,'Mãe do Rio',14),(3452,'Magalhães Barata',14),(3453,'Marabá',14),(3454,'Maracanã',14),(3455,'Marapanim',14),(3456,'Marituba',14),(3457,'Medicilândia',14),(3458,'Melgaço',14),(3459,'Mocajuba',14),(3460,'Moju',14),(3461,'Mojuí dos Campos',14),(3462,'Monte Alegre',14),(3463,'Muaná',14),(3464,'Nova Esperança do Piriá',14),(3465,'Nova Ipixuna',14),(3466,'Nova Timboteua',14),(3467,'Novo Progresso',14),(3468,'Novo Repartimento',14),(3469,'Óbidos',14),(3470,'Oeiras do Pará',14),(3471,'Oriximiná',14),(3472,'Ourém',14),(3473,'Ourilândia do Norte',14),(3474,'Pacajá',14),(3475,'Palestina do Pará',14),(3476,'Paragominas',14),(3477,'Parauapebas',14),(3478,'Pau d`Arco',14),(3479,'Peixe-Boi',14),(3480,'Piçarra',14),(3481,'Placas',14),(3482,'Ponta de Pedras',14),(3483,'Portel',14),(3484,'Porto de Moz',14),(3485,'Prainha',14),(3486,'Primavera',14),(3487,'Quatipuru',14),(3488,'Redenção',14),(3489,'Rio Maria',14),(3490,'Rondon do Pará',14),(3491,'Rurópolis',14),(3492,'Salinópolis',14),(3493,'Salvaterra',14),(3494,'Santa Bárbara do Pará',14),(3495,'Santa Cruz do Arari',14),(3496,'Santa Isabel do Pará',14),(3497,'Santa Luzia do Pará',14),(3498,'Santa Maria das Barreiras',14),(3499,'Santa Maria do Pará',14),(3500,'Santana do Araguaia',14),(3501,'Santarém',14),(3502,'Santarém Novo',14),(3503,'Santo Antônio do Tauá',14),(3504,'São Caetano de Odivelas',14),(3505,'São Domingos do Araguaia',14),(3506,'São Domingos do Capim',14),(3507,'São Félix do Xingu',14),(3508,'São Francisco do Pará',14),(3509,'São Geraldo do Araguaia',14),(3510,'São João da Ponta',14),(3511,'São João de Pirabas',14),(3512,'São João do Araguaia',14),(3513,'São Miguel do Guamá',14),(3514,'São Sebastião da Boa Vista',14),(3515,'Sapucaia',14),(3516,'Senador José Porfírio',14),(3517,'Soure',14),(3518,'Tailândia',14),(3519,'Terra Alta',14),(3520,'Terra Santa',14),(3521,'Tomé-Açu',14),(3522,'Tracuateua',14),(3523,'Trairão',14),(3524,'Tucumã',14),(3525,'Tucuruí',14),(3526,'Ulianópolis',14),(3527,'Uruará',14),(3528,'Vigia',14),(3529,'Viseu',14),(3530,'Vitória do Xingu',14),(3531,'Xinguara',14),(3532,'Água Branca',15),(3533,'Aguiar',15),(3534,'Alagoa Grande',15),(3535,'Alagoa Nova',15),(3536,'Alagoinha',15),(3537,'Alcantil',15),(3538,'Algodão de Jandaíra',15),(3539,'Alhandra',15),(3540,'Amparo',15),(3541,'Aparecida',15),(3542,'Araçagi',15),(3543,'Arara',15),(3544,'Araruna',15),(3545,'Areia',15),(3546,'Areia de Baraúnas',15),(3547,'Areial',15),(3548,'Aroeiras',15),(3549,'Assunção',15),(3550,'Baía da Traição',15),(3551,'Bananeiras',15),(3552,'Baraúna',15),(3553,'Barra de Santa Rosa',15),(3554,'Barra de Santana',15),(3555,'Barra de São Miguel',15),(3556,'Bayeux',15),(3557,'Belém',15),(3558,'Belém do Brejo do Cruz',15),(3559,'Bernardino Batista',15),(3560,'Boa Ventura',15),(3561,'Boa Vista',15),(3562,'Bom Jesus',15),(3563,'Bom Sucesso',15),(3564,'Bonito de Santa Fé',15),(3565,'Boqueirão',15),(3566,'Borborema',15),(3567,'Brejo do Cruz',15),(3568,'Brejo dos Santos',15),(3569,'Caaporã',15),(3570,'Cabaceiras',15),(3571,'Cabedelo',15),(3572,'Cachoeira dos Índios',15),(3573,'Cacimba de Areia',15),(3574,'Cacimba de Dentro',15),(3575,'Cacimbas',15),(3576,'Caiçara',15),(3577,'Cajazeiras',15),(3578,'Cajazeirinhas',15),(3579,'Caldas Brandão',15),(3580,'Camalaú',15),(3581,'Campina Grande',15),(3582,'Capim',15),(3583,'Caraúbas',15),(3584,'Carrapateira',15),(3585,'Casserengue',15),(3586,'Catingueira',15),(3587,'Catolé do Rocha',15),(3588,'Caturité',15),(3589,'Conceição',15),(3590,'Condado',15),(3591,'Conde',15),(3592,'Congo',15),(3593,'Coremas',15),(3594,'Coxixola',15),(3595,'Cruz do Espírito Santo',15),(3596,'Cubati',15),(3597,'Cuité',15),(3598,'Cuité de Mamanguape',15),(3599,'Cuitegi',15),(3600,'Curral de Cima',15),(3601,'Curral Velho',15),(3602,'Damião',15),(3603,'Desterro',15),(3604,'Diamante',15),(3605,'Dona Inês',15),(3606,'Duas Estradas',15),(3607,'Emas',15),(3608,'Esperança',15),(3609,'Fagundes',15),(3610,'Frei Martinho',15),(3611,'Gado Bravo',15),(3612,'Guarabira',15),(3613,'Gurinhém',15),(3614,'Gurjão',15),(3615,'Ibiara',15),(3616,'Igaracy',15),(3617,'Imaculada',15),(3618,'Ingá',15),(3619,'Itabaiana',15),(3620,'Itaporanga',15),(3621,'Itapororoca',15),(3622,'Itatuba',15),(3623,'Jacaraú',15),(3624,'Jericó',15),(3625,'João Pessoa',15),(3626,'Joca Claudino',15),(3627,'Juarez Távora',15),(3628,'Juazeirinho',15),(3629,'Junco do Seridó',15),(3630,'Juripiranga',15),(3631,'Juru',15),(3632,'Lagoa',15),(3633,'Lagoa de Dentro',15),(3634,'Lagoa Seca',15),(3635,'Lastro',15),(3636,'Livramento',15),(3637,'Logradouro',15),(3638,'Lucena',15),(3639,'Mãe d`Água',15),(3640,'Malta',15),(3641,'Mamanguape',15),(3642,'Manaíra',15),(3643,'Marcação',15),(3644,'Mari',15),(3645,'Marizópolis',15),(3646,'Massaranduba',15),(3647,'Mataraca',15),(3648,'Matinhas',15),(3649,'Mato Grosso',15),(3650,'Maturéia',15),(3651,'Mogeiro',15),(3652,'Montadas',15),(3653,'Monte Horebe',15),(3654,'Monteiro',15),(3655,'Mulungu',15),(3656,'Natuba',15),(3657,'Nazarezinho',15),(3658,'Nova Floresta',15),(3659,'Nova Olinda',15),(3660,'Nova Palmeira',15),(3661,'Olho d`Água',15),(3662,'Olivedos',15),(3663,'Ouro Velho',15),(3664,'Parari',15),(3665,'Passagem',15),(3666,'Patos',15),(3667,'Paulista',15),(3668,'Pedra Branca',15),(3669,'Pedra Lavrada',15),(3670,'Pedras de Fogo',15),(3671,'Pedro Régis',15),(3672,'Piancó',15),(3673,'Picuí',15),(3674,'Pilar',15),(3675,'Pilões',15),(3676,'Pilõezinhos',15),(3677,'Pirpirituba',15),(3678,'Pitimbu',15),(3679,'Pocinhos',15),(3680,'Poço Dantas',15),(3681,'Poço de José de Moura',15),(3682,'Pombal',15),(3683,'Prata',15),(3684,'Princesa Isabel',15),(3685,'Puxinanã',15),(3686,'Queimadas',15),(3687,'Quixabá',15),(3688,'Remígio',15),(3689,'Riachão',15),(3690,'Riachão do Bacamarte',15),(3691,'Riachão do Poço',15),(3692,'Riacho de Santo Antônio',15),(3693,'Riacho dos Cavalos',15),(3694,'Rio Tinto',15),(3695,'Salgadinho',15),(3696,'Salgado de São Félix',15),(3697,'Santa Cecília',15),(3698,'Santa Cruz',15),(3699,'Santa Helena',15),(3700,'Santa Inês',15),(3701,'Santa Luzia',15),(3702,'Santa Rita',15),(3703,'Santa Teresinha',15),(3704,'Santana de Mangueira',15),(3705,'Santana dos Garrotes',15),(3706,'Santo André',15),(3707,'São Bentinho',15),(3708,'São Bento',15),(3709,'São Domingos',15),(3710,'São Domingos do Cariri',15),(3711,'São Francisco',15),(3712,'São João do Cariri',15),(3713,'São João do Rio do Peixe',15),(3714,'São João do Tigre',15),(3715,'São José da Lagoa Tapada',15),(3716,'São José de Caiana',15),(3717,'São José de Espinharas',15),(3718,'São José de Piranhas',15),(3719,'São José de Princesa',15),(3720,'São José do Bonfim',15),(3721,'São José do Brejo do Cruz',15),(3722,'São José do Sabugi',15),(3723,'São José dos Cordeiros',15),(3724,'São José dos Ramos',15),(3725,'São Mamede',15),(3726,'São Miguel de Taipu',15),(3727,'São Sebastião de Lagoa de Roça',15),(3728,'São Sebastião do Umbuzeiro',15),(3729,'São Vicente do Seridó',15),(3730,'Sapé',15),(3731,'Serra Branca',15),(3732,'Serra da Raiz',15),(3733,'Serra Grande',15),(3734,'Serra Redonda',15),(3735,'Serraria',15),(3736,'Sertãozinho',15),(3737,'Sobrado',15),(3738,'Solânea',15),(3739,'Soledade',15),(3740,'Sossêgo',15),(3741,'Sousa',15),(3742,'Sumé',15),(3743,'Tacima',15),(3744,'Taperoá',15),(3745,'Tavares',15),(3746,'Teixeira',15),(3747,'Tenório',15),(3748,'Triunfo',15),(3749,'Uiraúna',15),(3750,'Umbuzeiro',15),(3751,'Várzea',15),(3752,'Vieirópolis',15),(3753,'Vista Serrana',15),(3754,'Zabelê',15),(3755,'Abreu e Lima',16),(3756,'Afogados da Ingazeira',16),(3757,'Afrânio',16),(3758,'Agrestina',16),(3759,'Água Preta',16),(3760,'Águas Belas',16),(3761,'Alagoinha',16),(3762,'Aliança',16),(3763,'Altinho',16),(3764,'Amaraji',16),(3765,'Angelim',16),(3766,'Araçoiaba',16),(3767,'Araripina',16),(3768,'Arcoverde',16),(3769,'Barra de Guabiraba',16),(3770,'Barreiros',16),(3771,'Belém de Maria',16),(3772,'Belém de São Francisco',16),(3773,'Belo Jardim',16),(3774,'Betânia',16),(3775,'Bezerros',16),(3776,'Bodocó',16),(3777,'Bom Conselho',16),(3778,'Bom Jardim',16),(3779,'Bonito',16),(3780,'Brejão',16),(3781,'Brejinho',16),(3782,'Brejo da Madre de Deus',16),(3783,'Buenos Aires',16),(3784,'Buíque',16),(3785,'Cabo de Santo Agostinho',16),(3786,'Cabrobó',16),(3787,'Cachoeirinha',16),(3788,'Caetés',16),(3789,'Calçado',16),(3790,'Calumbi',16),(3791,'Camaragibe',16),(3792,'Camocim de São Félix',16),(3793,'Camutanga',16),(3794,'Canhotinho',16),(3795,'Capoeiras',16),(3796,'Carnaíba',16),(3797,'Carnaubeira da Penha',16),(3798,'Carpina',16),(3799,'Caruaru',16),(3800,'Casinhas',16),(3801,'Catende',16),(3802,'Cedro',16),(3803,'Chã de Alegria',16),(3804,'Chã Grande',16),(3805,'Condado',16),(3806,'Correntes',16),(3807,'Cortês',16),(3808,'Cumaru',16),(3809,'Cupira',16),(3810,'Custódia',16),(3811,'Dormentes',16),(3812,'Escada',16),(3813,'Exu',16),(3814,'Feira Nova',16),(3815,'Fernando de Noronha',16),(3816,'Ferreiros',16),(3817,'Flores',16),(3818,'Floresta',16),(3819,'Frei Miguelinho',16),(3820,'Gameleira',16),(3821,'Garanhuns',16),(3822,'Glória do Goitá',16),(3823,'Goiana',16),(3824,'Granito',16),(3825,'Gravatá',16),(3826,'Iati',16),(3827,'Ibimirim',16),(3828,'Ibirajuba',16),(3829,'Igarassu',16),(3830,'Iguaraci',16),(3831,'Ilha de Itamaracá',16),(3832,'Inajá',16),(3833,'Ingazeira',16),(3834,'Ipojuca',16),(3835,'Ipubi',16),(3836,'Itacuruba',16),(3837,'Itaíba',16),(3838,'Itambé',16),(3839,'Itapetim',16),(3840,'Itapissuma',16),(3841,'Itaquitinga',16),(3842,'Jaboatão dos Guararapes',16),(3843,'Jaqueira',16),(3844,'Jataúba',16),(3845,'Jatobá',16),(3846,'João Alfredo',16),(3847,'Joaquim Nabuco',16),(3848,'Jucati',16),(3849,'Jupi',16),(3850,'Jurema',16),(3851,'Lagoa do Carro',16),(3852,'Lagoa do Itaenga',16),(3853,'Lagoa do Ouro',16),(3854,'Lagoa dos Gatos',16),(3855,'Lagoa Grande',16),(3856,'Lajedo',16),(3857,'Limoeiro',16),(3858,'Macaparana',16),(3859,'Machados',16),(3860,'Manari',16),(3861,'Maraial',16),(3862,'Mirandiba',16),(3863,'Moreilândia',16),(3864,'Moreno',16),(3865,'Nazaré da Mata',16),(3866,'Olinda',16),(3867,'Orobó',16),(3868,'Orocó',16),(3869,'Ouricuri',16),(3870,'Palmares',16),(3871,'Palmeirina',16),(3872,'Panelas',16),(3873,'Paranatama',16),(3874,'Parnamirim',16),(3875,'Passira',16),(3876,'Paudalho',16),(3877,'Paulista',16),(3878,'Pedra',16),(3879,'Pesqueira',16),(3880,'Petrolândia',16),(3881,'Petrolina',16),(3882,'Poção',16),(3883,'Pombos',16),(3884,'Primavera',16),(3885,'Quipapá',16),(3886,'Quixaba',16),(3887,'Recife',16),(3888,'Riacho das Almas',16),(3889,'Ribeirão',16),(3890,'Rio Formoso',16),(3891,'Sairé',16),(3892,'Salgadinho',16),(3893,'Salgueiro',16),(3894,'Saloá',16),(3895,'Sanharó',16),(3896,'Santa Cruz',16),(3897,'Santa Cruz da Baixa Verde',16),(3898,'Santa Cruz do Capibaribe',16),(3899,'Santa Filomena',16),(3900,'Santa Maria da Boa Vista',16),(3901,'Santa Maria do Cambucá',16),(3902,'Santa Terezinha',16),(3903,'São Benedito do Sul',16),(3904,'São Bento do Una',16),(3905,'São Caitano',16),(3906,'São João',16),(3907,'São Joaquim do Monte',16),(3908,'São José da Coroa Grande',16),(3909,'São José do Belmonte',16),(3910,'São José do Egito',16),(3911,'São Lourenço da Mata',16),(3912,'São Vicente Ferrer',16),(3913,'Serra Talhada',16),(3914,'Serrita',16),(3915,'Sertânia',16),(3916,'Sirinhaém',16),(3917,'Solidão',16),(3918,'Surubim',16),(3919,'Tabira',16),(3920,'Tacaimbó',16),(3921,'Tacaratu',16),(3922,'Tamandaré',16),(3923,'Taquaritinga do Norte',16),(3924,'Terezinha',16),(3925,'Terra Nova',16),(3926,'Timbaúba',16),(3927,'Toritama',16),(3928,'Tracunhaém',16),(3929,'Trindade',16),(3930,'Triunfo',16),(3931,'Tupanatinga',16),(3932,'Tuparetama',16),(3933,'Venturosa',16),(3934,'Verdejante',16),(3935,'Vertente do Lério',16),(3936,'Vertentes',16),(3937,'Vicência',16),(3938,'Vitória de Santo Antão',16),(3939,'Xexéu',16),(3940,'Acauã',17),(3941,'Agricolândia',17),(3942,'Água Branca',17),(3943,'Alagoinha do Piauí',17),(3944,'Alegrete do Piauí',17),(3945,'Alto Longá',17),(3946,'Altos',17),(3947,'Alvorada do Gurguéia',17),(3948,'Amarante',17),(3949,'Angical do Piauí',17),(3950,'Anísio de Abreu',17),(3951,'Antônio Almeida',17),(3952,'Aroazes',17),(3953,'Aroeiras do Itaim',17),(3954,'Arraial',17),(3955,'Assunção do Piauí',17),(3956,'Avelino Lopes',17),(3957,'Baixa Grande do Ribeiro',17),(3958,'Barra d`Alcântara',17),(3959,'Barras',17),(3960,'Barreiras do Piauí',17),(3961,'Barro Duro',17),(3962,'Batalha',17),(3963,'Bela Vista do Piauí',17),(3964,'Belém do Piauí',17),(3965,'Beneditinos',17),(3966,'Bertolínia',17),(3967,'Betânia do Piauí',17),(3968,'Boa Hora',17),(3969,'Bocaina',17),(3970,'Bom Jesus',17),(3971,'Bom Princípio do Piauí',17),(3972,'Bonfim do Piauí',17),(3973,'Boqueirão do Piauí',17),(3974,'Brasileira',17),(3975,'Brejo do Piauí',17),(3976,'Buriti dos Lopes',17),(3977,'Buriti dos Montes',17),(3978,'Cabeceiras do Piauí',17),(3979,'Cajazeiras do Piauí',17),(3980,'Cajueiro da Praia',17),(3981,'Caldeirão Grande do Piauí',17),(3982,'Campinas do Piauí',17),(3983,'Campo Alegre do Fidalgo',17),(3984,'Campo Grande do Piauí',17),(3985,'Campo Largo do Piauí',17),(3986,'Campo Maior',17),(3987,'Canavieira',17),(3988,'Canto do Buriti',17),(3989,'Capitão de Campos',17),(3990,'Capitão Gervásio Oliveira',17),(3991,'Caracol',17),(3992,'Caraúbas do Piauí',17),(3993,'Caridade do Piauí',17),(3994,'Castelo do Piauí',17),(3995,'Caxingó',17),(3996,'Cocal',17),(3997,'Cocal de Telha',17),(3998,'Cocal dos Alves',17),(3999,'Coivaras',17),(4000,'Colônia do Gurguéia',17),(4001,'Colônia do Piauí',17),(4002,'Conceição do Canindé',17),(4003,'Coronel José Dias',17),(4004,'Corrente',17),(4005,'Cristalândia do Piauí',17),(4006,'Cristino Castro',17),(4007,'Curimatá',17),(4008,'Currais',17),(4009,'Curral Novo do Piauí',17),(4010,'Curralinhos',17),(4011,'Demerval Lobão',17),(4012,'Dirceu Arcoverde',17),(4013,'Dom Expedito Lopes',17),(4014,'Dom Inocêncio',17),(4015,'Domingos Mourão',17),(4016,'Elesbão Veloso',17),(4017,'Eliseu Martins',17),(4018,'Esperantina',17),(4019,'Fartura do Piauí',17),(4020,'Flores do Piauí',17),(4021,'Floresta do Piauí',17),(4022,'Floriano',17),(4023,'Francinópolis',17),(4024,'Francisco Ayres',17),(4025,'Francisco Macedo',17),(4026,'Francisco Santos',17),(4027,'Fronteiras',17),(4028,'Geminiano',17),(4029,'Gilbués',17),(4030,'Guadalupe',17),(4031,'Guaribas',17),(4032,'Hugo Napoleão',17),(4033,'Ilha Grande',17),(4034,'Inhuma',17),(4035,'Ipiranga do Piauí',17),(4036,'Isaías Coelho',17),(4037,'Itainópolis',17),(4038,'Itaueira',17),(4039,'Jacobina do Piauí',17),(4040,'Jaicós',17),(4041,'Jardim do Mulato',17),(4042,'Jatobá do Piauí',17),(4043,'Jerumenha',17),(4044,'João Costa',17),(4045,'Joaquim Pires',17),(4046,'Joca Marques',17),(4047,'José de Freitas',17),(4048,'Juazeiro do Piauí',17),(4049,'Júlio Borges',17),(4050,'Jurema',17),(4051,'Lagoa Alegre',17),(4052,'Lagoa de São Francisco',17),(4053,'Lagoa do Barro do Piauí',17),(4054,'Lagoa do Piauí',17),(4055,'Lagoa do Sítio',17),(4056,'Lagoinha do Piauí',17),(4057,'Landri Sales',17),(4058,'Luís Correia',17),(4059,'Luzilândia',17),(4060,'Madeiro',17),(4061,'Manoel Emídio',17),(4062,'Marcolândia',17),(4063,'Marcos Parente',17),(4064,'Massapê do Piauí',17),(4065,'Matias Olímpio',17),(4066,'Miguel Alves',17),(4067,'Miguel Leão',17),(4068,'Milton Brandão',17),(4069,'Monsenhor Gil',17),(4070,'Monsenhor Hipólito',17),(4071,'Monte Alegre do Piauí',17),(4072,'Morro Cabeça no Tempo',17),(4073,'Morro do Chapéu do Piauí',17),(4074,'Murici dos Portelas',17),(4075,'Nazaré do Piauí',17),(4076,'Nazária',17),(4077,'Nossa Senhora de Nazaré',17),(4078,'Nossa Senhora dos Remédios',17),(4079,'Nova Santa Rita',17),(4080,'Novo Oriente do Piauí',17),(4081,'Novo Santo Antônio',17),(4082,'Oeiras',17),(4083,'Olho d`Água do Piauí',17),(4084,'Padre Marcos',17),(4085,'Paes Landim',17),(4086,'Pajeú do Piauí',17),(4087,'Palmeira do Piauí',17),(4088,'Palmeirais',17),(4089,'Paquetá',17),(4090,'Parnaguá',17),(4091,'Parnaíba',17),(4092,'Passagem Franca do Piauí',17),(4093,'Patos do Piauí',17),(4094,'Pau d`Arco do Piauí',17),(4095,'Paulistana',17),(4096,'Pavussu',17),(4097,'Pedro II',17),(4098,'Pedro Laurentino',17),(4099,'Picos',17),(4100,'Pimenteiras',17),(4101,'Pio IX',17),(4102,'Piracuruca',17),(4103,'Piripiri',17),(4104,'Porto',17),(4105,'Porto Alegre do Piauí',17),(4106,'Prata do Piauí',17),(4107,'Queimada Nova',17),(4108,'Redenção do Gurguéia',17),(4109,'Regeneração',17),(4110,'Riacho Frio',17),(4111,'Ribeira do Piauí',17),(4112,'Ribeiro Gonçalves',17),(4113,'Rio Grande do Piauí',17),(4114,'Santa Cruz do Piauí',17),(4115,'Santa Cruz dos Milagres',17),(4116,'Santa Filomena',17),(4117,'Santa Luz',17),(4118,'Santa Rosa do Piauí',17),(4119,'Santana do Piauí',17),(4120,'Santo Antônio de Lisboa',17),(4121,'Santo Antônio dos Milagres',17),(4122,'Santo Inácio do Piauí',17),(4123,'São Braz do Piauí',17),(4124,'São Félix do Piauí',17),(4125,'São Francisco de Assis do Piauí',17),(4126,'São Francisco do Piauí',17),(4127,'São Gonçalo do Gurguéia',17),(4128,'São Gonçalo do Piauí',17),(4129,'São João da Canabrava',17),(4130,'São João da Fronteira',17),(4131,'São João da Serra',17),(4132,'São João da Varjota',17),(4133,'São João do Arraial',17),(4134,'São João do Piauí',17),(4135,'São José do Divino',17),(4136,'São José do Peixe',17),(4137,'São José do Piauí',17),(4138,'São Julião',17),(4139,'São Lourenço do Piauí',17),(4140,'São Luis do Piauí',17),(4141,'São Miguel da Baixa Grande',17),(4142,'São Miguel do Fidalgo',17),(4143,'São Miguel do Tapuio',17),(4144,'São Pedro do Piauí',17),(4145,'São Raimundo Nonato',17),(4146,'Sebastião Barros',17),(4147,'Sebastião Leal',17),(4148,'Sigefredo Pacheco',17),(4149,'Simões',17),(4150,'Simplício Mendes',17),(4151,'Socorro do Piauí',17),(4152,'Sussuapara',17),(4153,'Tamboril do Piauí',17),(4154,'Tanque do Piauí',17),(4155,'Teresina',17),(4156,'União',17),(4157,'Uruçuí',17),(4158,'Valença do Piauí',17),(4159,'Várzea Branca',17),(4160,'Várzea Grande',17),(4161,'Vera Mendes',17),(4162,'Vila Nova do Piauí',17),(4163,'Wall Ferraz',17),(4164,'Abatiá',18),(4165,'Adrianópolis',18),(4166,'Agudos do Sul',18),(4167,'Almirante Tamandaré',18),(4168,'Altamira do Paraná',18),(4169,'Alto Paraíso',18),(4170,'Alto Paraná',18),(4171,'Alto Piquiri',18),(4172,'Altônia',18),(4173,'Alvorada do Sul',18),(4174,'Amaporã',18),(4175,'Ampére',18),(4176,'Anahy',18),(4177,'Andirá',18),(4178,'Ângulo',18),(4179,'Antonina',18),(4180,'Antônio Olinto',18),(4181,'Apucarana',18),(4182,'Arapongas',18),(4183,'Arapoti',18),(4184,'Arapuã',18),(4185,'Araruna',18),(4186,'Araucária',18),(4187,'Ariranha do Ivaí',18),(4188,'Assaí',18),(4189,'Assis Chateaubriand',18),(4190,'Astorga',18),(4191,'Atalaia',18),(4192,'Balsa Nova',18),(4193,'Bandeirantes',18),(4194,'Barbosa Ferraz',18),(4195,'Barra do Jacaré',18),(4196,'Barracão',18),(4197,'Bela Vista da Caroba',18),(4198,'Bela Vista do Paraíso',18),(4199,'Bituruna',18),(4200,'Boa Esperança',18),(4201,'Boa Esperança do Iguaçu',18),(4202,'Boa Ventura de São Roque',18),(4203,'Boa Vista da Aparecida',18),(4204,'Bocaiúva do Sul',18),(4205,'Bom Jesus do Sul',18),(4206,'Bom Sucesso',18),(4207,'Bom Sucesso do Sul',18),(4208,'Borrazópolis',18),(4209,'Braganey',18),(4210,'Brasilândia do Sul',18),(4211,'Cafeara',18),(4212,'Cafelândia',18),(4213,'Cafezal do Sul',18),(4214,'Califórnia',18),(4215,'Cambará',18),(4216,'Cambé',18),(4217,'Cambira',18),(4218,'Campina da Lagoa',18),(4219,'Campina do Simão',18),(4220,'Campina Grande do Sul',18),(4221,'Campo Bonito',18),(4222,'Campo do Tenente',18),(4223,'Campo Largo',18),(4224,'Campo Magro',18),(4225,'Campo Mourão',18),(4226,'Cândido de Abreu',18),(4227,'Candói',18),(4228,'Cantagalo',18),(4229,'Capanema',18),(4230,'Capitão Leônidas Marques',18),(4231,'Carambeí',18),(4232,'Carlópolis',18),(4233,'Cascavel',18),(4234,'Castro',18),(4235,'Catanduvas',18),(4236,'Centenário do Sul',18),(4237,'Cerro Azul',18),(4238,'Céu Azul',18),(4239,'Chopinzinho',18),(4240,'Cianorte',18),(4241,'Cidade Gaúcha',18),(4242,'Clevelândia',18),(4243,'Colombo',18),(4244,'Colorado',18),(4245,'Congonhinhas',18),(4246,'Conselheiro Mairinck',18),(4247,'Contenda',18),(4248,'Corbélia',18),(4249,'Cornélio Procópio',18),(4250,'Coronel Domingos Soares',18),(4251,'Coronel Vivida',18),(4252,'Corumbataí do Sul',18),(4253,'Cruz Machado',18),(4254,'Cruzeiro do Iguaçu',18),(4255,'Cruzeiro do Oeste',18),(4256,'Cruzeiro do Sul',18),(4257,'Cruzmaltina',18),(4258,'Curitiba',18),(4259,'Curiúva',18),(4260,'Diamante do Norte',18),(4261,'Diamante do Sul',18),(4262,'Diamante d`Oeste',18),(4263,'Dois Vizinhos',18),(4264,'Douradina',18),(4265,'Doutor Camargo',18),(4266,'Doutor Ulysses',18),(4267,'Enéas Marques',18),(4268,'Engenheiro Beltrão',18),(4269,'Entre Rios do Oeste',18),(4270,'Esperança Nova',18),(4271,'Espigão Alto do Iguaçu',18),(4272,'Farol',18),(4273,'Faxinal',18),(4274,'Fazenda Rio Grande',18),(4275,'Fênix',18),(4276,'Fernandes Pinheiro',18),(4277,'Figueira',18),(4278,'Flor da Serra do Sul',18),(4279,'Floraí',18),(4280,'Floresta',18),(4281,'Florestópolis',18),(4282,'Flórida',18),(4283,'Formosa do Oeste',18),(4284,'Foz do Iguaçu',18),(4285,'Foz do Jordão',18),(4286,'Francisco Alves',18),(4287,'Francisco Beltrão',18),(4288,'General Carneiro',18),(4289,'Godoy Moreira',18),(4290,'Goioerê',18),(4291,'Goioxim',18),(4292,'Grandes Rios',18),(4293,'Guaíra',18),(4294,'Guairaçá',18),(4295,'Guamiranga',18),(4296,'Guapirama',18),(4297,'Guaporema',18),(4298,'Guaraci',18),(4299,'Guaraniaçu',18),(4300,'Guarapuava',18),(4301,'Guaraqueçaba',18),(4302,'Guaratuba',18),(4303,'Honório Serpa',18),(4304,'Ibaiti',18),(4305,'Ibema',18),(4306,'Ibiporã',18),(4307,'Icaraíma',18),(4308,'Iguaraçu',18),(4309,'Iguatu',18),(4310,'Imbaú',18),(4311,'Imbituva',18),(4312,'Inácio Martins',18),(4313,'Inajá',18),(4314,'Indianópolis',18),(4315,'Ipiranga',18),(4316,'Iporã',18),(4317,'Iracema do Oeste',18),(4318,'Irati',18),(4319,'Iretama',18),(4320,'Itaguajé',18),(4321,'Itaipulândia',18),(4322,'Itambaracá',18),(4323,'Itambé',18),(4324,'Itapejara d`Oeste',18),(4325,'Itaperuçu',18),(4326,'Itaúna do Sul',18),(4327,'Ivaí',18),(4328,'Ivaiporã',18),(4329,'Ivaté',18),(4330,'Ivatuba',18),(4331,'Jaboti',18),(4332,'Jacarezinho',18),(4333,'Jaguapitã',18),(4334,'Jaguariaíva',18),(4335,'Jandaia do Sul',18),(4336,'Janiópolis',18),(4337,'Japira',18),(4338,'Japurá',18),(4339,'Jardim Alegre',18),(4340,'Jardim Olinda',18),(4341,'Jataizinho',18),(4342,'Jesuítas',18),(4343,'Joaquim Távora',18),(4344,'Jundiaí do Sul',18),(4345,'Juranda',18),(4346,'Jussara',18),(4347,'Kaloré',18),(4348,'Lapa',18),(4349,'Laranjal',18),(4350,'Laranjeiras do Sul',18),(4351,'Leópolis',18),(4352,'Lidianópolis',18),(4353,'Lindoeste',18),(4354,'Loanda',18),(4355,'Lobato',18),(4356,'Londrina',18),(4357,'Luiziana',18),(4358,'Lunardelli',18),(4359,'Lupionópolis',18),(4360,'Mallet',18),(4361,'Mamborê',18),(4362,'Mandaguaçu',18),(4363,'Mandaguari',18),(4364,'Mandirituba',18),(4365,'Manfrinópolis',18),(4366,'Mangueirinha',18),(4367,'Manoel Ribas',18),(4368,'Marechal Cândido Rondon',18),(4369,'Maria Helena',18),(4370,'Marialva',18),(4371,'Marilândia do Sul',18),(4372,'Marilena',18),(4373,'Mariluz',18),(4374,'Maringá',18),(4375,'Mariópolis',18),(4376,'Maripá',18),(4377,'Marmeleiro',18),(4378,'Marquinho',18),(4379,'Marumbi',18),(4380,'Matelândia',18),(4381,'Matinhos',18),(4382,'Mato Rico',18),(4383,'Mauá da Serra',18),(4384,'Medianeira',18),(4385,'Mercedes',18),(4386,'Mirador',18),(4387,'Miraselva',18),(4388,'Missal',18),(4389,'Moreira Sales',18),(4390,'Morretes',18),(4391,'Munhoz de Melo',18),(4392,'Nossa Senhora das Graças',18),(4393,'Nova Aliança do Ivaí',18),(4394,'Nova América da Colina',18),(4395,'Nova Aurora',18),(4396,'Nova Cantu',18),(4397,'Nova Esperança',18),(4398,'Nova Esperança do Sudoeste',18),(4399,'Nova Fátima',18),(4400,'Nova Laranjeiras',18),(4401,'Nova Londrina',18),(4402,'Nova Olímpia',18),(4403,'Nova Prata do Iguaçu',18),(4404,'Nova Santa Bárbara',18),(4405,'Nova Santa Rosa',18),(4406,'Nova Tebas',18),(4407,'Novo Itacolomi',18),(4408,'Ortigueira',18),(4409,'Ourizona',18),(4410,'Ouro Verde do Oeste',18),(4411,'Paiçandu',18),(4412,'Palmas',18),(4413,'Palmeira',18),(4414,'Palmital',18),(4415,'Palotina',18),(4416,'Paraíso do Norte',18),(4417,'Paranacity',18),(4418,'Paranaguá',18),(4419,'Paranapoema',18),(4420,'Paranavaí',18),(4421,'Pato Bragado',18),(4422,'Pato Branco',18),(4423,'Paula Freitas',18),(4424,'Paulo Frontin',18),(4425,'Peabiru',18),(4426,'Perobal',18),(4427,'Pérola',18),(4428,'Pérola d`Oeste',18),(4429,'Piên',18),(4430,'Pinhais',18),(4431,'Pinhal de São Bento',18),(4432,'Pinhalão',18),(4433,'Pinhão',18),(4434,'Piraí do Sul',18),(4435,'Piraquara',18),(4436,'Pitanga',18),(4437,'Pitangueiras',18),(4438,'Planaltina do Paraná',18),(4439,'Planalto',18),(4440,'Ponta Grossa',18),(4441,'Pontal do Paraná',18),(4442,'Porecatu',18),(4443,'Porto Amazonas',18),(4444,'Porto Barreiro',18),(4445,'Porto Rico',18),(4446,'Porto Vitória',18),(4447,'Prado Ferreira',18),(4448,'Pranchita',18),(4449,'Presidente Castelo Branco',18),(4450,'Primeiro de Maio',18),(4451,'Prudentópolis',18),(4452,'Quarto Centenário',18),(4453,'Quatiguá',18),(4454,'Quatro Barras',18),(4455,'Quatro Pontes',18),(4456,'Quedas do Iguaçu',18),(4457,'Querência do Norte',18),(4458,'Quinta do Sol',18),(4459,'Quitandinha',18),(4460,'Ramilândia',18),(4461,'Rancho Alegre',18),(4462,'Rancho Alegre d`Oeste',18),(4463,'Realeza',18),(4464,'Rebouças',18),(4465,'Renascença',18),(4466,'Reserva',18),(4467,'Reserva do Iguaçu',18),(4468,'Ribeirão Claro',18),(4469,'Ribeirão do Pinhal',18),(4470,'Rio Azul',18),(4471,'Rio Bom',18),(4472,'Rio Bonito do Iguaçu',18),(4473,'Rio Branco do Ivaí',18),(4474,'Rio Branco do Sul',18),(4475,'Rio Negro',18),(4476,'Rolândia',18),(4477,'Roncador',18),(4478,'Rondon',18),(4479,'Rosário do Ivaí',18),(4480,'Sabáudia',18),(4481,'Salgado Filho',18),(4482,'Salto do Itararé',18),(4483,'Salto do Lontra',18),(4484,'Santa Amélia',18),(4485,'Santa Cecília do Pavão',18),(4486,'Santa Cruz de Monte Castelo',18),(4487,'Santa Fé',18),(4488,'Santa Helena',18),(4489,'Santa Inês',18),(4490,'Santa Isabel do Ivaí',18),(4491,'Santa Izabel do Oeste',18),(4492,'Santa Lúcia',18),(4493,'Santa Maria do Oeste',18),(4494,'Santa Mariana',18),(4495,'Santa Mônica',18),(4496,'Santa Tereza do Oeste',18),(4497,'Santa Terezinha de Itaipu',18),(4498,'Santana do Itararé',18),(4499,'Santo Antônio da Platina',18),(4500,'Santo Antônio do Caiuá',18),(4501,'Santo Antônio do Paraíso',18),(4502,'Santo Antônio do Sudoeste',18),(4503,'Santo Inácio',18),(4504,'São Carlos do Ivaí',18),(4505,'São Jerônimo da Serra',18),(4506,'São João',18),(4507,'São João do Caiuá',18),(4508,'São João do Ivaí',18),(4509,'São João do Triunfo',18),(4510,'São Jorge do Ivaí',18),(4511,'São Jorge do Patrocínio',18),(4512,'São Jorge d`Oeste',18),(4513,'São José da Boa Vista',18),(4514,'São José das Palmeiras',18),(4515,'São José dos Pinhais',18),(4516,'São Manoel do Paraná',18),(4517,'São Mateus do Sul',18),(4518,'São Miguel do Iguaçu',18),(4519,'São Pedro do Iguaçu',18),(4520,'São Pedro do Ivaí',18),(4521,'São Pedro do Paraná',18),(4522,'São Sebastião da Amoreira',18),(4523,'São Tomé',18),(4524,'Sapopema',18),(4525,'Sarandi',18),(4526,'Saudade do Iguaçu',18),(4527,'Sengés',18),(4528,'Serranópolis do Iguaçu',18),(4529,'Sertaneja',18),(4530,'Sertanópolis',18),(4531,'Siqueira Campos',18),(4532,'Sulina',18),(4533,'Tamarana',18),(4534,'Tamboara',18),(4535,'Tapejara',18),(4536,'Tapira',18),(4537,'Teixeira Soares',18),(4538,'Telêmaco Borba',18),(4539,'Terra Boa',18),(4540,'Terra Rica',18),(4541,'Terra Roxa',18),(4542,'Tibagi',18),(4543,'Tijucas do Sul',18),(4544,'Toledo',18),(4545,'Tomazina',18),(4546,'Três Barras do Paraná',18),(4547,'Tunas do Paraná',18),(4548,'Tuneiras do Oeste',18),(4549,'Tupãssi',18),(4550,'Turvo',18),(4551,'Ubiratã',18),(4552,'Umuarama',18),(4553,'União da Vitória',18),(4554,'Uniflor',18),(4555,'Uraí',18),(4556,'Ventania',18),(4557,'Vera Cruz do Oeste',18),(4558,'Verê',18),(4559,'Virmond',18),(4560,'Vitorino',18),(4561,'Wenceslau Braz',18),(4562,'Xambrê',18),(4563,'Angra dos Reis',19),(4564,'Aperibé',19),(4565,'Araruama',19),(4566,'Areal',19),(4567,'Armação dos Búzios',19),(4568,'Arraial do Cabo',19),(4569,'Barra do Piraí',19),(4570,'Barra Mansa',19),(4571,'Belford Roxo',19),(4572,'Bom Jardim',19),(4573,'Bom Jesus do Itabapoana',19),(4574,'Cabo Frio',19),(4575,'Cachoeiras de Macacu',19),(4576,'Cambuci',19),(4577,'Campos dos Goytacazes',19),(4578,'Cantagalo',19),(4579,'Carapebus',19),(4580,'Cardoso Moreira',19),(4581,'Carmo',19),(4582,'Casimiro de Abreu',19),(4583,'Comendador Levy Gasparian',19),(4584,'Conceição de Macabu',19),(4585,'Cordeiro',19),(4586,'Duas Barras',19),(4587,'Duque de Caxias',19),(4588,'Engenheiro Paulo de Frontin',19),(4589,'Guapimirim',19),(4590,'Iguaba Grande',19),(4591,'Itaboraí',19),(4592,'Itaguaí',19),(4593,'Italva',19),(4594,'Itaocara',19),(4595,'Itaperuna',19),(4596,'Itatiaia',19),(4597,'Japeri',19),(4598,'Laje do Muriaé',19),(4599,'Macaé',19),(4600,'Macuco',19),(4601,'Magé',19),(4602,'Mangaratiba',19),(4603,'Maricá',19),(4604,'Mendes',19),(4605,'Mesquita',19),(4606,'Miguel Pereira',19),(4607,'Miracema',19),(4608,'Natividade',19),(4609,'Nilópolis',19),(4610,'Niterói',19),(4611,'Nova Friburgo',19),(4612,'Nova Iguaçu',19),(4613,'Paracambi',19),(4614,'Paraíba do Sul',19),(4615,'Paraty',19),(4616,'Paty do Alferes',19),(4617,'Petrópolis',19),(4618,'Pinheiral',19),(4619,'Piraí',19),(4620,'Porciúncula',19),(4621,'Porto Real',19),(4622,'Quatis',19),(4623,'Queimados',19),(4624,'Quissamã',19),(4625,'Resende',19),(4626,'Rio Bonito',19),(4627,'Rio Claro',19),(4628,'Rio das Flores',19),(4629,'Rio das Ostras',19),(4630,'Rio de Janeiro',19),(4631,'Santa Maria Madalena',19),(4632,'Santo Antônio de Pádua',19),(4633,'São Fidélis',19),(4634,'São Francisco de Itabapoana',19),(4635,'São Gonçalo',19),(4636,'São João da Barra',19),(4637,'São João de Meriti',19),(4638,'São José de Ubá',19),(4639,'São José do Vale do Rio Preto',19),(4640,'São Pedro da Aldeia',19),(4641,'São Sebastião do Alto',19),(4642,'Sapucaia',19),(4643,'Saquarema',19),(4644,'Seropédica',19),(4645,'Silva Jardim',19),(4646,'Sumidouro',19),(4647,'Tanguá',19),(4648,'Teresópolis',19),(4649,'Trajano de Moraes',19),(4650,'Três Rios',19),(4651,'Valença',19),(4652,'Varre-Sai',19),(4653,'Vassouras',19),(4654,'Volta Redonda',19),(4655,'Acari',20),(4656,'Açu',20),(4657,'Afonso Bezerra',20),(4658,'Água Nova',20),(4659,'Alexandria',20),(4660,'Almino Afonso',20),(4661,'Alto do Rodrigues',20),(4662,'Angicos',20),(4663,'Antônio Martins',20),(4664,'Apodi',20),(4665,'Areia Branca',20),(4666,'Arês',20),(4667,'Augusto Severo',20),(4668,'Baía Formosa',20),(4669,'Baraúna',20),(4670,'Barcelona',20),(4671,'Bento Fernandes',20),(4672,'Bodó',20),(4673,'Bom Jesus',20),(4674,'Brejinho',20),(4675,'Caiçara do Norte',20),(4676,'Caiçara do Rio do Vento',20),(4677,'Caicó',20),(4678,'Campo Redondo',20),(4679,'Canguaretama',20),(4680,'Caraúbas',20),(4681,'Carnaúba dos Dantas',20),(4682,'Carnaubais',20),(4683,'Ceará-Mirim',20),(4684,'Cerro Corá',20),(4685,'Coronel Ezequiel',20),(4686,'Coronel João Pessoa',20),(4687,'Cruzeta',20),(4688,'Currais Novos',20),(4689,'Doutor Severiano',20),(4690,'Encanto',20),(4691,'Equador',20),(4692,'Espírito Santo',20),(4693,'Extremoz',20),(4694,'Felipe Guerra',20),(4695,'Fernando Pedroza',20),(4696,'Florânia',20),(4697,'Francisco Dantas',20),(4698,'Frutuoso Gomes',20),(4699,'Galinhos',20),(4700,'Goianinha',20),(4701,'Governador Dix-Sept Rosado',20),(4702,'Grossos',20),(4703,'Guamaré',20),(4704,'Ielmo Marinho',20),(4705,'Ipanguaçu',20),(4706,'Ipueira',20),(4707,'Itajá',20),(4708,'Itaú',20),(4709,'Jaçanã',20),(4710,'Jandaíra',20),(4711,'Janduís',20),(4712,'Januário Cicco',20),(4713,'Japi',20),(4714,'Jardim de Angicos',20),(4715,'Jardim de Piranhas',20),(4716,'Jardim do Seridó',20),(4717,'João Câmara',20),(4718,'João Dias',20),(4719,'José da Penha',20),(4720,'Jucurutu',20),(4721,'Jundiá',20),(4722,'Lagoa de Pedras',20),(4723,'Lagoa de Velhos',20),(4724,'Lagoa d`Anta',20),(4725,'Lagoa Nova',20),(4726,'Lagoa Salgada',20),(4727,'Lajes',20),(4728,'Lajes Pintadas',20),(4729,'Lucrécia',20),(4730,'Luís Gomes',20),(4731,'Macaíba',20),(4732,'Macau',20),(4733,'Major Sales',20),(4734,'Marcelino Vieira',20),(4735,'Martins',20),(4736,'Maxaranguape',20),(4737,'Messias Targino',20),(4738,'Montanhas',20),(4739,'Monte Alegre',20),(4740,'Monte das Gameleiras',20),(4741,'Mossoró',20),(4742,'Natal',20),(4743,'Nísia Floresta',20),(4744,'Nova Cruz',20),(4745,'Olho-d`Água do Borges',20),(4746,'Ouro Branco',20),(4747,'Paraná',20),(4748,'Paraú',20),(4749,'Parazinho',20),(4750,'Parelhas',20),(4751,'Parnamirim',20),(4752,'Passa e Fica',20),(4753,'Passagem',20),(4754,'Patu',20),(4755,'Pau dos Ferros',20),(4756,'Pedra Grande',20),(4757,'Pedra Preta',20),(4758,'Pedro Avelino',20),(4759,'Pedro Velho',20),(4760,'Pendências',20),(4761,'Pilões',20),(4762,'Poço Branco',20),(4763,'Portalegre',20),(4764,'Porto do Mangue',20),(4765,'Pureza',20),(4766,'Rafael Fernandes',20),(4767,'Rafael Godeiro',20),(4768,'Riacho da Cruz',20),(4769,'Riacho de Santana',20),(4770,'Riachuelo',20),(4771,'Rio do Fogo',20),(4772,'Rodolfo Fernandes',20),(4773,'Ruy Barbosa',20),(4774,'Santa Cruz',20),(4775,'Santa Maria',20),(4776,'Santana do Matos',20),(4777,'Santana do Seridó',20),(4778,'Santo Antônio',20),(4779,'São Bento do Norte',20),(4780,'São Bento do Trairí',20),(4781,'São Fernando',20),(4782,'São Francisco do Oeste',20),(4783,'São Gonçalo do Amarante',20),(4784,'São João do Sabugi',20),(4785,'São José de Mipibu',20),(4786,'São José do Campestre',20),(4787,'São José do Seridó',20),(4788,'São Miguel',20),(4789,'São Miguel do Gostoso',20),(4790,'São Paulo do Potengi',20),(4791,'São Pedro',20),(4792,'São Rafael',20),(4793,'São Tomé',20),(4794,'São Vicente',20),(4795,'Senador Elói de Souza',20),(4796,'Senador Georgino Avelino',20),(4797,'Serra Caiada',20),(4798,'Serra de São Bento',20),(4799,'Serra do Mel',20),(4800,'Serra Negra do Norte',20),(4801,'Serrinha',20),(4802,'Serrinha dos Pintos',20),(4803,'Severiano Melo',20),(4804,'Sítio Novo',20),(4805,'Taboleiro Grande',20),(4806,'Taipu',20),(4807,'Tangará',20),(4808,'Tenente Ananias',20),(4809,'Tenente Laurentino Cruz',20),(4810,'Tibau',20),(4811,'Tibau do Sul',20),(4812,'Timbaúba dos Batistas',20),(4813,'Touros',20),(4814,'Triunfo Potiguar',20),(4815,'Umarizal',20),(4816,'Upanema',20),(4817,'Várzea',20),(4818,'Venha-Ver',20),(4819,'Vera Cruz',20),(4820,'Viçosa',20),(4821,'Vila Flor',20),(4822,'Alta Floresta d`Oeste',21),(4823,'Alto Alegre dos Parecis',21),(4824,'Alto Paraíso',21),(4825,'Alvorada d`Oeste',21),(4826,'Ariquemes',21),(4827,'Buritis',21),(4828,'Cabixi',21),(4829,'Cacaulândia',21),(4830,'Cacoal',21),(4831,'Campo Novo de Rondônia',21),(4832,'Candeias do Jamari',21),(4833,'Castanheiras',21),(4834,'Cerejeiras',21),(4835,'Chupinguaia',21),(4836,'Colorado do Oeste',21),(4837,'Corumbiara',21),(4838,'Costa Marques',21),(4839,'Cujubim',21),(4840,'Espigão d`Oeste',21),(4841,'Governador Jorge Teixeira',21),(4842,'Guajará-Mirim',21),(4843,'Itapuã do Oeste',21),(4844,'Jaru',21),(4845,'Ji-Paraná',21),(4846,'Machadinho d`Oeste',21),(4847,'Ministro Andreazza',21),(4848,'Mirante da Serra',21),(4849,'Monte Negro',21),(4850,'Nova Brasilândia d`Oeste',21),(4851,'Nova Mamoré',21),(4852,'Nova União',21),(4853,'Novo Horizonte do Oeste',21),(4854,'Ouro Preto do Oeste',21),(4855,'Parecis',21),(4856,'Pimenta Bueno',21),(4857,'Pimenteiras do Oeste',21),(4858,'Porto Velho',21),(4859,'Presidente Médici',21),(4860,'Primavera de Rondônia',21),(4861,'Rio Crespo',21),(4862,'Rolim de Moura',21),(4863,'Santa Luzia d`Oeste',21),(4864,'São Felipe d`Oeste',21),(4865,'São Francisco do Guaporé',21),(4866,'São Miguel do Guaporé',21),(4867,'Seringueiras',21),(4868,'Teixeirópolis',21),(4869,'Theobroma',21),(4870,'Urupá',21),(4871,'Vale do Anari',21),(4872,'Vale do Paraíso',21),(4873,'Vilhena',21),(4874,'Alto Alegre',22),(4875,'Amajari',22),(4876,'Boa Vista',22),(4877,'Bonfim',22),(4878,'Cantá',22),(4879,'Caracaraí',22),(4880,'Caroebe',22),(4881,'Iracema',22),(4882,'Mucajaí',22),(4883,'Normandia',22),(4884,'Pacaraima',22),(4885,'Rorainópolis',22),(4886,'São João da Baliza',22),(4887,'São Luiz',22),(4888,'Uiramutã',22),(4889,'Aceguá',23),(4890,'Água Santa',23),(4891,'Agudo',23),(4892,'Ajuricaba',23),(4893,'Alecrim',23),(4894,'Alegrete',23),(4895,'Alegria',23),(4896,'Almirante Tamandaré do Sul',23),(4897,'Alpestre',23),(4898,'Alto Alegre',23),(4899,'Alto Feliz',23),(4900,'Alvorada',23),(4901,'Amaral Ferrador',23),(4902,'Ametista do Sul',23),(4903,'André da Rocha',23),(4904,'Anta Gorda',23),(4905,'Antônio Prado',23),(4906,'Arambaré',23),(4907,'Araricá',23),(4908,'Aratiba',23),(4909,'Arroio do Meio',23),(4910,'Arroio do Padre',23),(4911,'Arroio do Sal',23),(4912,'Arroio do Tigre',23),(4913,'Arroio dos Ratos',23),(4914,'Arroio Grande',23),(4915,'Arvorezinha',23),(4916,'Augusto Pestana',23),(4917,'Áurea',23),(4918,'Bagé',23),(4919,'Balneário Pinhal',23),(4920,'Barão',23),(4921,'Barão de Cotegipe',23),(4922,'Barão do Triunfo',23),(4923,'Barra do Guarita',23),(4924,'Barra do Quaraí',23),(4925,'Barra do Ribeiro',23),(4926,'Barra do Rio Azul',23),(4927,'Barra Funda',23),(4928,'Barracão',23),(4929,'Barros Cassal',23),(4930,'Benjamin Constant do Sul',23),(4931,'Bento Gonçalves',23),(4932,'Boa Vista das Missões',23),(4933,'Boa Vista do Buricá',23),(4934,'Boa Vista do Cadeado',23),(4935,'Boa Vista do Incra',23),(4936,'Boa Vista do Sul',23),(4937,'Bom Jesus',23),(4938,'Bom Princípio',23),(4939,'Bom Progresso',23),(4940,'Bom Retiro do Sul',23),(4941,'Boqueirão do Leão',23),(4942,'Bossoroca',23),(4943,'Bozano',23),(4944,'Braga',23),(4945,'Brochier',23),(4946,'Butiá',23),(4947,'Caçapava do Sul',23),(4948,'Cacequi',23),(4949,'Cachoeira do Sul',23),(4950,'Cachoeirinha',23),(4951,'Cacique Doble',23),(4952,'Caibaté',23),(4953,'Caiçara',23),(4954,'Camaquã',23),(4955,'Camargo',23),(4956,'Cambará do Sul',23),(4957,'Campestre da Serra',23),(4958,'Campina das Missões',23),(4959,'Campinas do Sul',23),(4960,'Campo Bom',23),(4961,'Campo Novo',23),(4962,'Campos Borges',23),(4963,'Candelária',23),(4964,'Cândido Godói',23),(4965,'Candiota',23),(4966,'Canela',23),(4967,'Canguçu',23),(4968,'Canoas',23),(4969,'Canudos do Vale',23),(4970,'Capão Bonito do Sul',23),(4971,'Capão da Canoa',23),(4972,'Capão do Cipó',23),(4973,'Capão do Leão',23),(4974,'Capela de Santana',23),(4975,'Capitão',23),(4976,'Capivari do Sul',23),(4977,'Caraá',23),(4978,'Carazinho',23),(4979,'Carlos Barbosa',23),(4980,'Carlos Gomes',23),(4981,'Casca',23),(4982,'Caseiros',23),(4983,'Catuípe',23),(4984,'Caxias do Sul',23),(4985,'Centenário',23),(4986,'Cerrito',23),(4987,'Cerro Branco',23),(4988,'Cerro Grande',23),(4989,'Cerro Grande do Sul',23),(4990,'Cerro Largo',23),(4991,'Chapada',23),(4992,'Charqueadas',23),(4993,'Charrua',23),(4994,'Chiapetta',23),(4995,'Chuí',23),(4996,'Chuvisca',23),(4997,'Cidreira',23),(4998,'Ciríaco',23),(4999,'Colinas',23),(5000,'Colorado',23),(5001,'Condor',23),(5002,'Constantina',23),(5003,'Coqueiro Baixo',23),(5004,'Coqueiros do Sul',23),(5005,'Coronel Barros',23),(5006,'Coronel Bicaco',23),(5007,'Coronel Pilar',23),(5008,'Cotiporã',23),(5009,'Coxilha',23),(5010,'Crissiumal',23),(5011,'Cristal',23),(5012,'Cristal do Sul',23),(5013,'Cruz Alta',23),(5014,'Cruzaltense',23),(5015,'Cruzeiro do Sul',23),(5016,'David Canabarro',23),(5017,'Derrubadas',23),(5018,'Dezesseis de Novembro',23),(5019,'Dilermando de Aguiar',23),(5020,'Dois Irmãos',23),(5021,'Dois Irmãos das Missões',23),(5022,'Dois Lajeados',23),(5023,'Dom Feliciano',23),(5024,'Dom Pedrito',23),(5025,'Dom Pedro de Alcântara',23),(5026,'Dona Francisca',23),(5027,'Doutor Maurício Cardoso',23),(5028,'Doutor Ricardo',23),(5029,'Eldorado do Sul',23),(5030,'Encantado',23),(5031,'Encruzilhada do Sul',23),(5032,'Engenho Velho',23),(5033,'Entre Rios do Sul',23),(5034,'Entre-Ijuís',23),(5035,'Erebango',23),(5036,'Erechim',23),(5037,'Ernestina',23),(5038,'Erval Grande',23),(5039,'Erval Seco',23),(5040,'Esmeralda',23),(5041,'Esperança do Sul',23),(5042,'Espumoso',23),(5043,'Estação',23),(5044,'Estância Velha',23),(5045,'Esteio',23),(5046,'Estrela',23),(5047,'Estrela Velha',23),(5048,'Eugênio de Castro',23),(5049,'Fagundes Varela',23),(5050,'Farroupilha',23),(5051,'Faxinal do Soturno',23),(5052,'Faxinalzinho',23),(5053,'Fazenda Vilanova',23),(5054,'Feliz',23),(5055,'Flores da Cunha',23),(5056,'Floriano Peixoto',23),(5057,'Fontoura Xavier',23),(5058,'Formigueiro',23),(5059,'Forquetinha',23),(5060,'Fortaleza dos Valos',23),(5061,'Frederico Westphalen',23),(5062,'Garibaldi',23),(5063,'Garruchos',23),(5064,'Gaurama',23),(5065,'General Câmara',23),(5066,'Gentil',23),(5067,'Getúlio Vargas',23),(5068,'Giruá',23),(5069,'Glorinha',23),(5070,'Gramado',23),(5071,'Gramado dos Loureiros',23),(5072,'Gramado Xavier',23),(5073,'Gravataí',23),(5074,'Guabiju',23),(5075,'Guaíba',23),(5076,'Guaporé',23),(5077,'Guarani das Missões',23),(5078,'Harmonia',23),(5079,'Herval',23),(5080,'Herveiras',23),(5081,'Horizontina',23),(5082,'Hulha Negra',23),(5083,'Humaitá',23),(5084,'Ibarama',23),(5085,'Ibiaçá',23),(5086,'Ibiraiaras',23),(5087,'Ibirapuitã',23),(5088,'Ibirubá',23),(5089,'Igrejinha',23),(5090,'Ijuí',23),(5091,'Ilópolis',23),(5092,'Imbé',23),(5093,'Imigrante',23),(5094,'Independência',23),(5095,'Inhacorá',23),(5096,'Ipê',23),(5097,'Ipiranga do Sul',23),(5098,'Iraí',23),(5099,'Itaara',23),(5100,'Itacurubi',23),(5101,'Itapuca',23),(5102,'Itaqui',23),(5103,'Itati',23),(5104,'Itatiba do Sul',23),(5105,'Ivorá',23),(5106,'Ivoti',23),(5107,'Jaboticaba',23),(5108,'Jacuizinho',23),(5109,'Jacutinga',23),(5110,'Jaguarão',23),(5111,'Jaguari',23),(5112,'Jaquirana',23),(5113,'Jari',23),(5114,'Jóia',23),(5115,'Júlio de Castilhos',23),(5116,'Lagoa Bonita do Sul',23),(5117,'Lagoa dos Três Cantos',23),(5118,'Lagoa Vermelha',23),(5119,'Lagoão',23),(5120,'Lajeado',23),(5121,'Lajeado do Bugre',23),(5122,'Lavras do Sul',23),(5123,'Liberato Salzano',23),(5124,'Lindolfo Collor',23),(5125,'Linha Nova',23),(5126,'Maçambara',23),(5127,'Machadinho',23),(5128,'Mampituba',23),(5129,'Manoel Viana',23),(5130,'Maquiné',23),(5131,'Maratá',23),(5132,'Marau',23),(5133,'Marcelino Ramos',23),(5134,'Mariana Pimentel',23),(5135,'Mariano Moro',23),(5136,'Marques de Souza',23),(5137,'Mata',23),(5138,'Mato Castelhano',23),(5139,'Mato Leitão',23),(5140,'Mato Queimado',23),(5141,'Maximiliano de Almeida',23),(5142,'Minas do Leão',23),(5143,'Miraguaí',23),(5144,'Montauri',23),(5145,'Monte Alegre dos Campos',23),(5146,'Monte Belo do Sul',23),(5147,'Montenegro',23),(5148,'Mormaço',23),(5149,'Morrinhos do Sul',23),(5150,'Morro Redondo',23),(5151,'Morro Reuter',23),(5152,'Mostardas',23),(5153,'Muçum',23),(5154,'Muitos Capões',23),(5155,'Muliterno',23),(5156,'Não-Me-Toque',23),(5157,'Nicolau Vergueiro',23),(5158,'Nonoai',23),(5159,'Nova Alvorada',23),(5160,'Nova Araçá',23),(5161,'Nova Bassano',23),(5162,'Nova Boa Vista',23),(5163,'Nova Bréscia',23),(5164,'Nova Candelária',23),(5165,'Nova Esperança do Sul',23),(5166,'Nova Hartz',23),(5167,'Nova Pádua',23),(5168,'Nova Palma',23),(5169,'Nova Petrópolis',23),(5170,'Nova Prata',23),(5171,'Nova Ramada',23),(5172,'Nova Roma do Sul',23),(5173,'Nova Santa Rita',23),(5174,'Novo Barreiro',23),(5175,'Novo Cabrais',23),(5176,'Novo Hamburgo',23),(5177,'Novo Machado',23),(5178,'Novo Tiradentes',23),(5179,'Novo Xingu',23),(5180,'Osório',23),(5181,'Paim Filho',23),(5182,'Palmares do Sul',23),(5183,'Palmeira das Missões',23),(5184,'Palmitinho',23),(5185,'Panambi',23),(5186,'Pantano Grande',23),(5187,'Paraí',23),(5188,'Paraíso do Sul',23),(5189,'Pareci Novo',23),(5190,'Parobé',23),(5191,'Passa Sete',23),(5192,'Passo do Sobrado',23),(5193,'Passo Fundo',23),(5194,'Paulo Bento',23),(5195,'Paverama',23),(5196,'Pedras Altas',23),(5197,'Pedro Osório',23),(5198,'Pejuçara',23),(5199,'Pelotas',23),(5200,'Picada Café',23),(5201,'Pinhal',23),(5202,'Pinhal da Serra',23),(5203,'Pinhal Grande',23),(5204,'Pinheirinho do Vale',23),(5205,'Pinheiro Machado',23),(5206,'Pinto Bandeira',23),(5207,'Pirapó',23),(5208,'Piratini',23),(5209,'Planalto',23),(5210,'Poço das Antas',23),(5211,'Pontão',23),(5212,'Ponte Preta',23),(5213,'Portão',23),(5214,'Porto Alegre',23),(5215,'Porto Lucena',23),(5216,'Porto Mauá',23),(5217,'Porto Vera Cruz',23),(5218,'Porto Xavier',23),(5219,'Pouso Novo',23),(5220,'Presidente Lucena',23),(5221,'Progresso',23),(5222,'Protásio Alves',23),(5223,'Putinga',23),(5224,'Quaraí',23),(5225,'Quatro Irmãos',23),(5226,'Quevedos',23),(5227,'Quinze de Novembro',23),(5228,'Redentora',23),(5229,'Relvado',23),(5230,'Restinga Seca',23),(5231,'Rio dos Índios',23),(5232,'Rio Grande',23),(5233,'Rio Pardo',23),(5234,'Riozinho',23),(5235,'Roca Sales',23),(5236,'Rodeio Bonito',23),(5237,'Rolador',23),(5238,'Rolante',23),(5239,'Ronda Alta',23),(5240,'Rondinha',23),(5241,'Roque Gonzales',23),(5242,'Rosário do Sul',23),(5243,'Sagrada Família',23),(5244,'Saldanha Marinho',23),(5245,'Salto do Jacuí',23),(5246,'Salvador das Missões',23),(5247,'Salvador do Sul',23),(5248,'Sananduva',23),(5249,'Santa Bárbara do Sul',23),(5250,'Santa Cecília do Sul',23),(5251,'Santa Clara do Sul',23),(5252,'Santa Cruz do Sul',23),(5253,'Santa Margarida do Sul',23),(5254,'Santa Maria',23),(5255,'Santa Maria do Herval',23),(5256,'Santa Rosa',23),(5257,'Santa Tereza',23),(5258,'Santa Vitória do Palmar',23),(5259,'Santana da Boa Vista',23),(5260,'Santana do Livramento',23),(5261,'Santiago',23),(5262,'Santo Ângelo',23),(5263,'Santo Antônio da Patrulha',23),(5264,'Santo Antônio das Missões',23),(5265,'Santo Antônio do Palma',23),(5266,'Santo Antônio do Planalto',23),(5267,'Santo Augusto',23),(5268,'Santo Cristo',23),(5269,'Santo Expedito do Sul',23),(5270,'São Borja',23),(5271,'São Domingos do Sul',23),(5272,'São Francisco de Assis',23),(5273,'São Francisco de Paula',23),(5274,'São Gabriel',23),(5275,'São Jerônimo',23),(5276,'São João da Urtiga',23),(5277,'São João do Polêsine',23),(5278,'São Jorge',23),(5279,'São José das Missões',23),(5280,'São José do Herval',23),(5281,'São José do Hortêncio',23),(5282,'São José do Inhacorá',23),(5283,'São José do Norte',23),(5284,'São José do Ouro',23),(5285,'São José do Sul',23),(5286,'São José dos Ausentes',23),(5287,'São Leopoldo',23),(5288,'São Lourenço do Sul',23),(5289,'São Luiz Gonzaga',23),(5290,'São Marcos',23),(5291,'São Martinho',23),(5292,'São Martinho da Serra',23),(5293,'São Miguel das Missões',23),(5294,'São Nicolau',23),(5295,'São Paulo das Missões',23),(5296,'São Pedro da Serra',23),(5297,'São Pedro das Missões',23),(5298,'São Pedro do Butiá',23),(5299,'São Pedro do Sul',23),(5300,'São Sebastião do Caí',23),(5301,'São Sepé',23),(5302,'São Valentim',23),(5303,'São Valentim do Sul',23),(5304,'São Valério do Sul',23),(5305,'São Vendelino',23),(5306,'São Vicente do Sul',23),(5307,'Sapiranga',23),(5308,'Sapucaia do Sul',23),(5309,'Sarandi',23),(5310,'Seberi',23),(5311,'Sede Nova',23),(5312,'Segredo',23),(5313,'Selbach',23),(5314,'Senador Salgado Filho',23),(5315,'Sentinela do Sul',23),(5316,'Serafina Corrêa',23),(5317,'Sério',23),(5318,'Sertão',23),(5319,'Sertão Santana',23),(5320,'Sete de Setembro',23),(5321,'Severiano de Almeida',23),(5322,'Silveira Martins',23),(5323,'Sinimbu',23),(5324,'Sobradinho',23),(5325,'Soledade',23),(5326,'Tabaí',23),(5327,'Tapejara',23),(5328,'Tapera',23),(5329,'Tapes',23),(5330,'Taquara',23),(5331,'Taquari',23),(5332,'Taquaruçu do Sul',23),(5333,'Tavares',23),(5334,'Tenente Portela',23),(5335,'Terra de Areia',23),(5336,'Teutônia',23),(5337,'Tio Hugo',23),(5338,'Tiradentes do Sul',23),(5339,'Toropi',23),(5340,'Torres',23),(5341,'Tramandaí',23),(5342,'Travesseiro',23),(5343,'Três Arroios',23),(5344,'Três Cachoeiras',23),(5345,'Três Coroas',23),(5346,'Três de Maio',23),(5347,'Três Forquilhas',23),(5348,'Três Palmeiras',23),(5349,'Três Passos',23),(5350,'Trindade do Sul',23),(5351,'Triunfo',23),(5352,'Tucunduva',23),(5353,'Tunas',23),(5354,'Tupanci do Sul',23),(5355,'Tupanciretã',23),(5356,'Tupandi',23),(5357,'Tuparendi',23),(5358,'Turuçu',23),(5359,'Ubiretama',23),(5360,'União da Serra',23),(5361,'Unistalda',23),(5362,'Uruguaiana',23),(5363,'Vacaria',23),(5364,'Vale do Sol',23),(5365,'Vale Real',23),(5366,'Vale Verde',23),(5367,'Vanini',23),(5368,'Venâncio Aires',23),(5369,'Vera Cruz',23),(5370,'Veranópolis',23),(5371,'Vespasiano Correa',23),(5372,'Viadutos',23),(5373,'Viamão',23),(5374,'Vicente Dutra',23),(5375,'Victor Graeff',23),(5376,'Vila Flores',23),(5377,'Vila Lângaro',23),(5378,'Vila Maria',23),(5379,'Vila Nova do Sul',23),(5380,'Vista Alegre',23),(5381,'Vista Alegre do Prata',23),(5382,'Vista Gaúcha',23),(5383,'Vitória das Missões',23),(5384,'Westfália',23),(5385,'Xangri-lá',23),(5386,'Abdon Batista',24),(5387,'Abelardo Luz',24),(5388,'Agrolândia',24),(5389,'Agronômica',24),(5390,'Água Doce',24),(5391,'Águas de Chapecó',24),(5392,'Águas Frias',24),(5393,'Águas Mornas',24),(5394,'Alfredo Wagner',24),(5395,'Alto Bela Vista',24),(5396,'Anchieta',24),(5397,'Angelina',24),(5398,'Anita Garibaldi',24),(5399,'Anitápolis',24),(5400,'Antônio Carlos',24),(5401,'Apiúna',24),(5402,'Arabutã',24),(5403,'Araquari',24),(5404,'Araranguá',24),(5405,'Armazém',24),(5406,'Arroio Trinta',24),(5407,'Arvoredo',24),(5408,'Ascurra',24),(5409,'Atalanta',24),(5410,'Aurora',24),(5411,'Balneário Arroio do Silva',24),(5412,'Balneário Barra do Sul',24),(5413,'Balneário Camboriú',24),(5414,'Balneário Gaivota',24),(5415,'Balneário Piçarras',24),(5416,'Balneário Rincão',24),(5417,'Bandeirante',24),(5418,'Barra Bonita',24),(5419,'Barra Velha',24),(5420,'Bela Vista do Toldo',24),(5421,'Belmonte',24),(5422,'Benedito Novo',24),(5423,'Biguaçu',24),(5424,'Blumenau',24),(5425,'Bocaina do Sul',24),(5426,'Bom Jardim da Serra',24),(5427,'Bom Jesus',24),(5428,'Bom Jesus do Oeste',24),(5429,'Bom Retiro',24),(5430,'Bombinhas',24),(5431,'Botuverá',24),(5432,'Braço do Norte',24),(5433,'Braço do Trombudo',24),(5434,'Brunópolis',24),(5435,'Brusque',24),(5436,'Caçador',24),(5437,'Caibi',24),(5438,'Calmon',24),(5439,'Camboriú',24),(5440,'Campo Alegre',24),(5441,'Campo Belo do Sul',24),(5442,'Campo Erê',24),(5443,'Campos Novos',24),(5444,'Canelinha',24),(5445,'Canoinhas',24),(5446,'Capão Alto',24),(5447,'Capinzal',24),(5448,'Capivari de Baixo',24),(5449,'Catanduvas',24),(5450,'Caxambu do Sul',24),(5451,'Celso Ramos',24),(5452,'Cerro Negro',24),(5453,'Chapadão do Lageado',24),(5454,'Chapecó',24),(5455,'Cocal do Sul',24),(5456,'Concórdia',24),(5457,'Cordilheira Alta',24),(5458,'Coronel Freitas',24),(5459,'Coronel Martins',24),(5460,'Correia Pinto',24),(5461,'Corupá',24),(5462,'Criciúma',24),(5463,'Cunha Porã',24),(5464,'Cunhataí',24),(5465,'Curitibanos',24),(5466,'Descanso',24),(5467,'Dionísio Cerqueira',24),(5468,'Dona Emma',24),(5469,'Doutor Pedrinho',24),(5470,'Entre Rios',24),(5471,'Ermo',24),(5472,'Erval Velho',24),(5473,'Faxinal dos Guedes',24),(5474,'Flor do Sertão',24),(5475,'Florianópolis',24),(5476,'Formosa do Sul',24),(5477,'Forquilhinha',24),(5478,'Fraiburgo',24),(5479,'Frei Rogério',24),(5480,'Galvão',24),(5481,'Garopaba',24),(5482,'Garuva',24),(5483,'Gaspar',24),(5484,'Governador Celso Ramos',24),(5485,'Grão Pará',24),(5486,'Gravatal',24),(5487,'Guabiruba',24),(5488,'Guaraciaba',24),(5489,'Guaramirim',24),(5490,'Guarujá do Sul',24),(5491,'Guatambú',24),(5492,'Herval d`Oeste',24),(5493,'Ibiam',24),(5494,'Ibicaré',24),(5495,'Ibirama',24),(5496,'Içara',24),(5497,'Ilhota',24),(5498,'Imaruí',24),(5499,'Imbituba',24),(5500,'Imbuia',24),(5501,'Indaial',24),(5502,'Iomerê',24),(5503,'Ipira',24),(5504,'Iporã do Oeste',24),(5505,'Ipuaçu',24),(5506,'Ipumirim',24),(5507,'Iraceminha',24),(5508,'Irani',24),(5509,'Irati',24),(5510,'Irineópolis',24),(5511,'Itá',24),(5512,'Itaiópolis',24),(5513,'Itajaí',24),(5514,'Itapema',24),(5515,'Itapiranga',24),(5516,'Itapoá',24),(5517,'Ituporanga',24),(5518,'Jaborá',24),(5519,'Jacinto Machado',24),(5520,'Jaguaruna',24),(5521,'Jaraguá do Sul',24),(5522,'Jardinópolis',24),(5523,'Joaçaba',24),(5524,'Joinville',24),(5525,'José Boiteux',24),(5526,'Jupiá',24),(5527,'Lacerdópolis',24),(5528,'Lages',24),(5529,'Laguna',24),(5530,'Lajeado Grande',24),(5531,'Laurentino',24),(5532,'Lauro Muller',24),(5533,'Lebon Régis',24),(5534,'Leoberto Leal',24),(5535,'Lindóia do Sul',24),(5536,'Lontras',24),(5537,'Luiz Alves',24),(5538,'Luzerna',24),(5539,'Macieira',24),(5540,'Mafra',24),(5541,'Major Gercino',24),(5542,'Major Vieira',24),(5543,'Maracajá',24),(5544,'Maravilha',24),(5545,'Marema',24),(5546,'Massaranduba',24),(5547,'Matos Costa',24),(5548,'Meleiro',24),(5549,'Mirim Doce',24),(5550,'Modelo',24),(5551,'Mondaí',24),(5552,'Monte Carlo',24),(5553,'Monte Castelo',24),(5554,'Morro da Fumaça',24),(5555,'Morro Grande',24),(5556,'Navegantes',24),(5557,'Nova Erechim',24),(5558,'Nova Itaberaba',24),(5559,'Nova Trento',24),(5560,'Nova Veneza',24),(5561,'Novo Horizonte',24),(5562,'Orleans',24),(5563,'Otacílio Costa',24),(5564,'Ouro',24),(5565,'Ouro Verde',24),(5566,'Paial',24),(5567,'Painel',24),(5568,'Palhoça',24),(5569,'Palma Sola',24),(5570,'Palmeira',24),(5571,'Palmitos',24),(5572,'Papanduva',24),(5573,'Paraíso',24),(5574,'Passo de Torres',24),(5575,'Passos Maia',24),(5576,'Paulo Lopes',24),(5577,'Pedras Grandes',24),(5578,'Penha',24),(5579,'Peritiba',24),(5580,'Pescaria Brava',24),(5581,'Petrolândia',24),(5582,'Pinhalzinho',24),(5583,'Pinheiro Preto',24),(5584,'Piratuba',24),(5585,'Planalto Alegre',24),(5586,'Pomerode',24),(5587,'Ponte Alta',24),(5588,'Ponte Alta do Norte',24),(5589,'Ponte Serrada',24),(5590,'Porto Belo',24),(5591,'Porto União',24),(5592,'Pouso Redondo',24),(5593,'Praia Grande',24),(5594,'Presidente Castello Branco',24),(5595,'Presidente Getúlio',24),(5596,'Presidente Nereu',24),(5597,'Princesa',24),(5598,'Quilombo',24),(5599,'Rancho Queimado',24),(5600,'Rio das Antas',24),(5601,'Rio do Campo',24),(5602,'Rio do Oeste',24),(5603,'Rio do Sul',24),(5604,'Rio dos Cedros',24),(5605,'Rio Fortuna',24),(5606,'Rio Negrinho',24),(5607,'Rio Rufino',24),(5608,'Riqueza',24),(5609,'Rodeio',24),(5610,'Romelândia',24),(5611,'Salete',24),(5612,'Saltinho',24),(5613,'Salto Veloso',24),(5614,'Sangão',24),(5615,'Santa Cecília',24),(5616,'Santa Helena',24),(5617,'Santa Rosa de Lima',24),(5618,'Santa Rosa do Sul',24),(5619,'Santa Terezinha',24),(5620,'Santa Terezinha do Progresso',24),(5621,'Santiago do Sul',24),(5622,'Santo Amaro da Imperatriz',24),(5623,'São Bento do Sul',24),(5624,'São Bernardino',24),(5625,'São Bonifácio',24),(5626,'São Carlos',24),(5627,'São Cristovão do Sul',24),(5628,'São Domingos',24),(5629,'São Francisco do Sul',24),(5630,'São João Batista',24),(5631,'São João do Itaperiú',24),(5632,'São João do Oeste',24),(5633,'São João do Sul',24),(5634,'São Joaquim',24),(5635,'São José',24),(5636,'São José do Cedro',24),(5637,'São José do Cerrito',24),(5638,'São Lourenço do Oeste',24),(5639,'São Ludgero',24),(5640,'São Martinho',24),(5641,'São Miguel da Boa Vista',24),(5642,'São Miguel do Oeste',24),(5643,'São Pedro de Alcântara',24),(5644,'Saudades',24),(5645,'Schroeder',24),(5646,'Seara',24),(5647,'Serra Alta',24),(5648,'Siderópolis',24),(5649,'Sombrio',24),(5650,'Sul Brasil',24),(5651,'Taió',24),(5652,'Tangará',24),(5653,'Tigrinhos',24),(5654,'Tijucas',24),(5655,'Timbé do Sul',24),(5656,'Timbó',24),(5657,'Timbó Grande',24),(5658,'Três Barras',24),(5659,'Treviso',24),(5660,'Treze de Maio',24),(5661,'Treze Tílias',24),(5662,'Trombudo Central',24),(5663,'Tubarão',24),(5664,'Tunápolis',24),(5665,'Turvo',24),(5666,'União do Oeste',24),(5667,'Urubici',24),(5668,'Urupema',24),(5669,'Urussanga',24),(5670,'Vargeão',24),(5671,'Vargem',24),(5672,'Vargem Bonita',24),(5673,'Vidal Ramos',24),(5674,'Videira',24),(5675,'Vitor Meireles',24),(5676,'Witmarsum',24),(5677,'Xanxerê',24),(5678,'Xavantina',24),(5679,'Xaxim',24),(5680,'Zortéa',24),(5681,'Amparo de São Francisco',25),(5682,'Aquidabã',25),(5683,'Aracaju',25),(5684,'Arauá',25),(5685,'Areia Branca',25),(5686,'Barra dos Coqueiros',25),(5687,'Boquim',25),(5688,'Brejo Grande',25),(5689,'Campo do Brito',25),(5690,'Canhoba',25),(5691,'Canindé de São Francisco',25),(5692,'Capela',25),(5693,'Carira',25),(5694,'Carmópolis',25),(5695,'Cedro de São João',25),(5696,'Cristinápolis',25),(5697,'Cumbe',25),(5698,'Divina Pastora',25),(5699,'Estância',25),(5700,'Feira Nova',25),(5701,'Frei Paulo',25),(5702,'Gararu',25),(5703,'General Maynard',25),(5704,'Gracho Cardoso',25),(5705,'Ilha das Flores',25),(5706,'Indiaroba',25),(5707,'Itabaiana',25),(5708,'Itabaianinha',25),(5709,'Itabi',25),(5710,'Itaporanga d`Ajuda',25),(5711,'Japaratuba',25),(5712,'Japoatã',25),(5713,'Lagarto',25),(5714,'Laranjeiras',25),(5715,'Macambira',25),(5716,'Malhada dos Bois',25),(5717,'Malhador',25),(5718,'Maruim',25),(5719,'Moita Bonita',25),(5720,'Monte Alegre de Sergipe',25),(5721,'Muribeca',25),(5722,'Neópolis',25),(5723,'Nossa Senhora Aparecida',25),(5724,'Nossa Senhora da Glória',25),(5725,'Nossa Senhora das Dores',25),(5726,'Nossa Senhora de Lourdes',25),(5727,'Nossa Senhora do Socorro',25),(5728,'Pacatuba',25),(5729,'Pedra Mole',25),(5730,'Pedrinhas',25),(5731,'Pinhão',25),(5732,'Pirambu',25),(5733,'Poço Redondo',25),(5734,'Poço Verde',25),(5735,'Porto da Folha',25),(5736,'Propriá',25),(5737,'Riachão do Dantas',25),(5738,'Riachuelo',25),(5739,'Ribeirópolis',25),(5740,'Rosário do Catete',25),(5741,'Salgado',25),(5742,'Santa Luzia do Itanhy',25),(5743,'Santa Rosa de Lima',25),(5744,'Santana do São Francisco',25),(5745,'Santo Amaro das Brotas',25),(5746,'São Cristóvão',25),(5747,'São Domingos',25),(5748,'São Francisco',25),(5749,'São Miguel do Aleixo',25),(5750,'Simão Dias',25),(5751,'Siriri',25),(5752,'Telha',25),(5753,'Tobias Barreto',25),(5754,'Tomar do Geru',25),(5755,'Umbaúba',25),(5756,'Abreulândia',27),(5757,'Aguiarnópolis',27),(5758,'Aliança do Tocantins',27),(5759,'Almas',27),(5760,'Alvorada',27),(5761,'Ananás',27),(5762,'Angico',27),(5763,'Aparecida do Rio Negro',27),(5764,'Aragominas',27),(5765,'Araguacema',27),(5766,'Araguaçu',27),(5767,'Araguaína',27),(5768,'Araguanã',27),(5769,'Araguatins',27),(5770,'Arapoema',27),(5771,'Arraias',27),(5772,'Augustinópolis',27),(5773,'Aurora do Tocantins',27),(5774,'Axixá do Tocantins',27),(5775,'Babaçulândia',27),(5776,'Bandeirantes do Tocantins',27),(5777,'Barra do Ouro',27),(5778,'Barrolândia',27),(5779,'Bernardo Sayão',27),(5780,'Bom Jesus do Tocantins',27),(5781,'Brasilândia do Tocantins',27),(5782,'Brejinho de Nazaré',27),(5783,'Buriti do Tocantins',27),(5784,'Cachoeirinha',27),(5785,'Campos Lindos',27),(5786,'Cariri do Tocantins',27),(5787,'Carmolândia',27),(5788,'Carrasco Bonito',27),(5789,'Caseara',27),(5790,'Centenário',27),(5791,'Chapada da Natividade',27),(5792,'Chapada de Areia',27),(5793,'Colinas do Tocantins',27),(5794,'Colméia',27),(5795,'Combinado',27),(5796,'Conceição do Tocantins',27),(5797,'Couto Magalhães',27),(5798,'Cristalândia',27),(5799,'Crixás do Tocantins',27),(5800,'Darcinópolis',27),(5801,'Dianópolis',27),(5802,'Divinópolis do Tocantins',27),(5803,'Dois Irmãos do Tocantins',27),(5804,'Dueré',27),(5805,'Esperantina',27),(5806,'Fátima',27),(5807,'Figueirópolis',27),(5808,'Filadélfia',27),(5809,'Formoso do Araguaia',27),(5810,'Fortaleza do Tabocão',27),(5811,'Goianorte',27),(5812,'Goiatins',27),(5813,'Guaraí',27),(5814,'Gurupi',27),(5815,'Ipueiras',27),(5816,'Itacajá',27),(5817,'Itaguatins',27),(5818,'Itapiratins',27),(5819,'Itaporã do Tocantins',27),(5820,'Jaú do Tocantins',27),(5821,'Juarina',27),(5822,'Lagoa da Confusão',27),(5823,'Lagoa do Tocantins',27),(5824,'Lajeado',27),(5825,'Lavandeira',27),(5826,'Lizarda',27),(5827,'Luzinópolis',27),(5828,'Marianópolis do Tocantins',27),(5829,'Mateiros',27),(5830,'Maurilândia do Tocantins',27),(5831,'Miracema do Tocantins',27),(5832,'Miranorte',27),(5833,'Monte do Carmo',27),(5834,'Monte Santo do Tocantins',27),(5835,'Muricilândia',27),(5836,'Natividade',27),(5837,'Nazaré',27),(5838,'Nova Olinda',27),(5839,'Nova Rosalândia',27),(5840,'Novo Acordo',27),(5841,'Novo Alegre',27),(5842,'Novo Jardim',27),(5843,'Oliveira de Fátima',27),(5844,'Palmas',27),(5845,'Palmeirante',27),(5846,'Palmeiras do Tocantins',27),(5847,'Palmeirópolis',27),(5848,'Paraíso do Tocantins',27),(5849,'Paranã',27),(5850,'Pau d`Arco',27),(5851,'Pedro Afonso',27),(5852,'Peixe',27),(5853,'Pequizeiro',27),(5854,'Pindorama do Tocantins',27),(5855,'Piraquê',27),(5856,'Pium',27),(5857,'Ponte Alta do Bom Jesus',27),(5858,'Ponte Alta do Tocantins',27),(5859,'Porto Alegre do Tocantins',27),(5860,'Porto Nacional',27),(5861,'Praia Norte',27),(5862,'Presidente Kennedy',27),(5863,'Pugmil',27),(5864,'Recursolândia',27),(5865,'Riachinho',27),(5866,'Rio da Conceição',27),(5867,'Rio dos Bois',27),(5868,'Rio Sono',27),(5869,'Sampaio',27),(5870,'Sandolândia',27),(5871,'Santa Fé do Araguaia',27),(5872,'Santa Maria do Tocantins',27),(5873,'Santa Rita do Tocantins',27),(5874,'Santa Rosa do Tocantins',27),(5875,'Santa Tereza do Tocantins',27),(5876,'Santa Terezinha do Tocantins',27),(5877,'São Bento do Tocantins',27),(5878,'São Félix do Tocantins',27),(5879,'São Miguel do Tocantins',27),(5880,'São Salvador do Tocantins',27),(5881,'São Sebastião do Tocantins',27),(5882,'São Valério',27),(5883,'Silvanópolis',27),(5884,'Sítio Novo do Tocantins',27),(5885,'Sucupira',27),(5886,'Taguatinga',27),(5887,'Taipas do Tocantins',27),(5888,'Talismã',27),(5889,'Tocantínia',27),(5890,'Tocantinópolis',27),(5891,'Tupirama',27),(5892,'Tupiratins',27),(5893,'Wanderlândia',27),(5894,'Xambioá',27);
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `data_cadastro` datetime DEFAULT NULL,
  `nome` varchar(500) NOT NULL,
  `documento` varchar(20) DEFAULT NULL,
  `tipo_documento` varchar(4) DEFAULT NULL,
  `apelido` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `logradouro` varchar(250) NOT NULL,
  `cep` varchar(9) DEFAULT NULL,
  `bairro` varchar(100) NOT NULL,
  `cidade_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `telefone_fixo` varchar(14) DEFAULT NULL,
  `telefone_celular` varchar(14) DEFAULT NULL,
  `telefone_comercial` varchar(14) DEFAULT NULL,
  `rg` varchar(13) NOT NULL,
  `data_nascimento` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_status_idx` (`status_id`),
  KEY `FK_cidade_idx` (`cidade_id`),
  CONSTRAINT `FK_cidade` FOREIGN KEY (`cidade_id`) REFERENCES `cidade` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_status` FOREIGN KEY (`status_id`) REFERENCES `cliente_status` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_status`
--

DROP TABLE IF EXISTS `cliente_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente_status` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_status`
--

LOCK TABLES `cliente_status` WRITE;
/*!40000 ALTER TABLE `cliente_status` DISABLE KEYS */;
INSERT INTO `cliente_status` VALUES (1,'INATIVO'),(2,'ATIVO'),(3,'INADIMPLENTE'),(4,'EM DIA');
/*!40000 ALTER TABLE `cliente_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colecao_categoria`
--

DROP TABLE IF EXISTS `colecao_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colecao_categoria` (
  `id_categoria` int(11) NOT NULL,
  `id_colecao` int(11) NOT NULL,
  PRIMARY KEY (`id_categoria`,`id_colecao`),
  KEY `FK_col_col_idx` (`id_colecao`),
  CONSTRAINT `FK_col_cat` FOREIGN KEY (`id_categoria`) REFERENCES `produto_categorias` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_col_col` FOREIGN KEY (`id_colecao`) REFERENCES `colecoes` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colecao_categoria`
--

LOCK TABLES `colecao_categoria` WRITE;
/*!40000 ALTER TABLE `colecao_categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `colecao_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colecoes`
--

DROP TABLE IF EXISTS `colecoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colecoes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colecoes`
--

LOCK TABLES `colecoes` WRITE;
/*!40000 ALTER TABLE `colecoes` DISABLE KEYS */;
INSERT INTO `colecoes` VALUES (1,'Primavera-Verão'),(2,'Outono-Inverno'),(3,'Primavera'),(4,'Verão'),(5,'Outono'),(6,'Inverno');
/*!40000 ALTER TABLE `colecoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compra` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `valor` decimal(10,0) NOT NULL,
  `fornecedor_id` int(11) DEFAULT NULL,
  `data` datetime NOT NULL,
  `forma_id` int(11) NOT NULL,
  `qtd_parcelas` int(11) NOT NULL DEFAULT '1',
  `status_id` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_fornecedor3_idx` (`fornecedor_id`),
  KEY `FK_forma_pagamento_idx` (`forma_id`),
  KEY `FK_status_compra_idx` (`status_id`),
  CONSTRAINT `FK_forma_pagamento` FOREIGN KEY (`forma_id`) REFERENCES `formas_pagamento` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_fornecedor3` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedor` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_status_compra` FOREIGN KEY (`status_id`) REFERENCES `compra_status` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra_status`
--

DROP TABLE IF EXISTS `compra_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compra_status` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra_status`
--

LOCK TABLES `compra_status` WRITE;
/*!40000 ALTER TABLE `compra_status` DISABLE KEYS */;
INSERT INTO `compra_status` VALUES (1,'PEDIDO REALIZADO'),(2,'ESPERANDO ENTREGA'),(3,'COBRADO'),(4,'ENTREGUE'),(5,'FINALIZADO');
/*!40000 ALTER TABLE `compra_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contas`
--

DROP TABLE IF EXISTS `contas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(45) NOT NULL,
  `agencia` varchar(45) NOT NULL,
  `proprietario` varchar(45) DEFAULT NULL,
  `banco` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contas`
--

LOCK TABLES `contas` WRITE;
/*!40000 ALTER TABLE `contas` DISABLE KEYS */;
/*!40000 ALTER TABLE `contas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cor_categoria`
--

DROP TABLE IF EXISTS `cor_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cor_categoria` (
  `id_categoria` int(11) NOT NULL,
  `id_cor` int(11) NOT NULL,
  PRIMARY KEY (`id_categoria`,`id_cor`),
  KEY `FK_cor_cat_cor_idx` (`id_cor`),
  CONSTRAINT `FK_cor_cat_cat` FOREIGN KEY (`id_categoria`) REFERENCES `produto_categorias` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_cor_cat_cor` FOREIGN KEY (`id_cor`) REFERENCES `cores` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cor_categoria`
--

LOCK TABLES `cor_categoria` WRITE;
/*!40000 ALTER TABLE `cor_categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `cor_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cores`
--

DROP TABLE IF EXISTS `cores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cores`
--

LOCK TABLES `cores` WRITE;
/*!40000 ALTER TABLE `cores` DISABLE KEYS */;
INSERT INTO `cores` VALUES (1,'Preta'),(2,'Preta e Branco'),(3,'Azul'),(4,'Verde'),(5,'Azul e Verde');
/*!40000 ALTER TABLE `cores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) NOT NULL,
  `pais_id` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_pais_idx` (`pais_id`),
  CONSTRAINT `FK_pais` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'AC',1),(2,'AL',1),(3,'AM',1),(4,'AP',1),(5,'BA',1),(6,'CE',1),(7,'DF',1),(8,'ES',1),(9,'GO',1),(10,'MA',1),(11,'MG',1),(12,'MS',1),(13,'MT',1),(14,'PA',1),(15,'PB',1),(16,'PE',1),(17,'PI',1),(18,'PR',1),(19,'RJ',1),(20,'RN',1),(21,'RO',1),(22,'RR',1),(23,'RS',1),(24,'SC',1),(25,'SE',1),(26,'SP',1),(27,'TO',1);
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estoque_fluxo`
--

DROP TABLE IF EXISTS `estoque_fluxo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estoque_fluxo` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoque_fluxo`
--

LOCK TABLES `estoque_fluxo` WRITE;
/*!40000 ALTER TABLE `estoque_fluxo` DISABLE KEYS */;
INSERT INTO `estoque_fluxo` VALUES (1,'ENTRADA'),(2,'SAIDA');
/*!40000 ALTER TABLE `estoque_fluxo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estoque_operacao`
--

DROP TABLE IF EXISTS `estoque_operacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estoque_operacao` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `qtd_produtos` int(11) NOT NULL DEFAULT '1',
  `fluxo_id` int(11) NOT NULL,
  `data_operacao` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_fluxo_idx` (`fluxo_id`),
  KEY `FK_fluxo_prod_idx` (`id_produto`),
  CONSTRAINT `FK_fluxo` FOREIGN KEY (`fluxo_id`) REFERENCES `estoque_fluxo` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_fluxo_prod` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoque_operacao`
--

LOCK TABLES `estoque_operacao` WRITE;
/*!40000 ALTER TABLE `estoque_operacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `estoque_operacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formas_pagamento`
--

DROP TABLE IF EXISTS `formas_pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formas_pagamento` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formas_pagamento`
--

LOCK TABLES `formas_pagamento` WRITE;
/*!40000 ALTER TABLE `formas_pagamento` DISABLE KEYS */;
INSERT INTO `formas_pagamento` VALUES (1,'DINHEIRO'),(2,'CARTAO'),(3,'BOLETO'),(4,'CADERNETA'),(5,'CHEQUE'),(6,'DEPÓSITO BANCÁRIO');
/*!40000 ALTER TABLE `formas_pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornecedor` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `data_cadastro` datetime DEFAULT NULL,
  `nome` varchar(250) NOT NULL,
  `documento` varchar(20) DEFAULT NULL,
  `tipo_documento` varchar(4) DEFAULT NULL,
  `referencia` varchar(250) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `logradouro` varchar(250) DEFAULT NULL,
  `cep` varchar(9) DEFAULT NULL,
  `bairro` varchar(150) DEFAULT NULL,
  `cidade_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `telefone_fixo` varchar(14) DEFAULT NULL,
  `telefone_celular` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_cidade2_idx` (`cidade_id`),
  KEY `FK_status3_idx` (`status_id`),
  CONSTRAINT `FK_cidade2` FOREIGN KEY (`cidade_id`) REFERENCES `cidade` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_status3` FOREIGN KEY (`status_id`) REFERENCES `fornecedor_status` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor_status`
--

DROP TABLE IF EXISTS `fornecedor_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornecedor_status` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor_status`
--

LOCK TABLES `fornecedor_status` WRITE;
/*!40000 ALTER TABLE `fornecedor_status` DISABLE KEYS */;
INSERT INTO `fornecedor_status` VALUES (1,'ATIVO'),(2,'INATIVO');
/*!40000 ALTER TABLE `fornecedor_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generos`
--

DROP TABLE IF EXISTS `generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generos`
--

LOCK TABLES `generos` WRITE;
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `golas`
--

DROP TABLE IF EXISTS `golas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `golas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `golas`
--

LOCK TABLES `golas` WRITE;
/*!40000 ALTER TABLE `golas` DISABLE KEYS */;
INSERT INTO `golas` VALUES (1,'V'),(2,'Normal'),(3,'Polo');
/*!40000 ALTER TABLE `golas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagens`
--

DROP TABLE IF EXISTS `imagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagens` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `url_imagem` varchar(200) NOT NULL,
  `id_produto` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_img_produto_idx` (`id_produto`),
  CONSTRAINT `FK_img_produto` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagens`
--

LOCK TABLES `imagens` WRITE;
/*!40000 ALTER TABLE `imagens` DISABLE KEYS */;
/*!40000 ALTER TABLE `imagens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_compras`
--

DROP TABLE IF EXISTS `item_compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_compras` (
  `id` bigint(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `qtd_produto` int(11) DEFAULT NULL,
  `total_item` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_item_compras_compra_idx` (`id_compra`),
  KEY `FK_item_compras_prod_idx` (`id_produto`),
  CONSTRAINT `FK_item_compras_compra` FOREIGN KEY (`id_compra`) REFERENCES `compra` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_item_compras_prod` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_compras`
--

LOCK TABLES `item_compras` WRITE;
/*!40000 ALTER TABLE `item_compras` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_vendas`
--

DROP TABLE IF EXISTS `item_vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_vendas` (
  `id` bigint(11) NOT NULL,
  `id_venda` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `qtd_produto` int(11) DEFAULT NULL,
  `total_item` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_item_vendas_venda_idx` (`id_venda`),
  KEY `FK_item_vendas_prod_idx` (`id_produto`),
  CONSTRAINT `FK_item_vendas_prod` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_item_vendas_venda` FOREIGN KEY (`id_venda`) REFERENCES `vendas` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_vendas`
--

LOCK TABLES `item_vendas` WRITE;
/*!40000 ALTER TABLE `item_vendas` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_vendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mangas`
--

DROP TABLE IF EXISTS `mangas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mangas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mangas`
--

LOCK TABLES `mangas` WRITE;
/*!40000 ALTER TABLE `mangas` DISABLE KEYS */;
INSERT INTO `mangas` VALUES (1,'Manga-Longa'),(2,'Manga-Curta'),(3,'Regata');
/*!40000 ALTER TABLE `mangas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca_categoria`
--

DROP TABLE IF EXISTS `marca_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marca_categoria` (
  `id_categoria` int(11) NOT NULL,
  `id_marca` int(11) NOT NULL,
  PRIMARY KEY (`id_categoria`,`id_marca`),
  KEY `FK_marca_cat_marca_idx` (`id_marca`),
  CONSTRAINT `FK_marca_cat_cat` FOREIGN KEY (`id_categoria`) REFERENCES `produto_categorias` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_marca_cat_marca` FOREIGN KEY (`id_marca`) REFERENCES `marcas` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca_categoria`
--

LOCK TABLES `marca_categoria` WRITE;
/*!40000 ALTER TABLE `marca_categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `marca_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marcas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material_categoria`
--

DROP TABLE IF EXISTS `material_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material_categoria` (
  `id_categoria` int(11) NOT NULL,
  `id_material` int(11) NOT NULL,
  PRIMARY KEY (`id_categoria`,`id_material`),
  KEY `FK_cate_mate_idx` (`id_material`),
  CONSTRAINT `FK_cate_cate` FOREIGN KEY (`id_categoria`) REFERENCES `produto_categorias` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_cate_mate` FOREIGN KEY (`id_material`) REFERENCES `material` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material_categoria`
--

LOCK TABLES `material_categoria` WRITE;
/*!40000 ALTER TABLE `material_categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `material_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pais` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'BRASIL');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parcelas`
--

DROP TABLE IF EXISTS `parcelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parcelas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_venda` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_venda_parcela_idx` (`id_venda`),
  CONSTRAINT `FK_venda_parcela` FOREIGN KEY (`id_venda`) REFERENCES `vendas` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parcelas`
--

LOCK TABLES `parcelas` WRITE;
/*!40000 ALTER TABLE `parcelas` DISABLE KEYS */;
/*!40000 ALTER TABLE `parcelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(250) NOT NULL,
  `descricao_detalhes` varchar(500) DEFAULT NULL,
  `data_cadastro` datetime NOT NULL,
  `id_marca` int(11) NOT NULL,
  `id_status` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_genero` int(11) NOT NULL,
  `preco_compra` decimal(10,0) NOT NULL,
  `preco_venda` decimal(10,0) NOT NULL,
  `observacoes` varchar(500) DEFAULT NULL,
  `codigo_barras` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_status2_idx` (`id_status`),
  KEY `FK_categoria2_idx` (`id_categoria`),
  KEY `FK_prod_genero_idx` (`id_genero`),
  KEY `FK_prod_marcas_idx` (`id_marca`),
  CONSTRAINT `FK_categoria2` FOREIGN KEY (`id_categoria`) REFERENCES `produto_categorias` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_prod_genero` FOREIGN KEY (`id_genero`) REFERENCES `generos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_prod_marcas` FOREIGN KEY (`id_marca`) REFERENCES `marcas` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_status2` FOREIGN KEY (`id_status`) REFERENCES `produto_status` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto_acessorios`
--

DROP TABLE IF EXISTS `produto_acessorios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto_acessorios` (
  `ID` int(11) NOT NULL,
  `id_colecao` int(11) DEFAULT NULL,
  `id_tipo_acessorio` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_acess_colecao_idx` (`id_colecao`),
  KEY `FK_acess_tipos_idx` (`id_tipo_acessorio`),
  CONSTRAINT `FK_acess_colecao` FOREIGN KEY (`id_colecao`) REFERENCES `colecoes` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_acess_produtos` FOREIGN KEY (`ID`) REFERENCES `produto` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `FK_acess_tipos` FOREIGN KEY (`id_tipo_acessorio`) REFERENCES `acessorios_tipos` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto_acessorios`
--

LOCK TABLES `produto_acessorios` WRITE;
/*!40000 ALTER TABLE `produto_acessorios` DISABLE KEYS */;
/*!40000 ALTER TABLE `produto_acessorios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto_calcados`
--

DROP TABLE IF EXISTS `produto_calcados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto_calcados` (
  `ID` int(11) NOT NULL,
  `id_tamanho` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_calc_tamanhos_idx` (`id_tamanho`),
  CONSTRAINT `FK_calc_produt` FOREIGN KEY (`ID`) REFERENCES `produto` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `FK_calc_tamanhos` FOREIGN KEY (`id_tamanho`) REFERENCES `tamanhos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto_calcados`
--

LOCK TABLES `produto_calcados` WRITE;
/*!40000 ALTER TABLE `produto_calcados` DISABLE KEYS */;
/*!40000 ALTER TABLE `produto_calcados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto_categorias`
--

DROP TABLE IF EXISTS `produto_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto_categorias` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) NOT NULL,
  `id_pai` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto_categorias`
--

LOCK TABLES `produto_categorias` WRITE;
/*!40000 ALTER TABLE `produto_categorias` DISABLE KEYS */;
INSERT INTO `produto_categorias` VALUES (1,'Roupas Superiores',0),(2,'Camiseta',1),(3,'Camisa',1),(4,'Blusinha',1),(5,'Blusa de Frio',1),(6,'Casaco',1),(7,'Vestido Curto',1),(8,'Vestido Longo',1),(9,'Roupas Inferiores',0),(10,'Calça',9),(11,'Bermuda',9),(12,'Shorts',9),(13,'Saia Curta',9),(14,'Saia Longa',9),(15,'Calçados',0),(16,'Tênis',15),(17,'Sandália',15),(18,'Chinelos',15),(19,'Sapatinho',15),(20,'Sapa-Tennis',15),(21,'Rasteirinha',15),(22,'Acessórios',0),(23,'Brinco',22),(24,'Gargantilha',22),(25,'Anel',22),(26,'Colar',22);
/*!40000 ALTER TABLE `produto_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto_roupas_inferiores`
--

DROP TABLE IF EXISTS `produto_roupas_inferiores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto_roupas_inferiores` (
  `ID` int(11) NOT NULL,
  `id_tamanho` int(11) NOT NULL,
  `id_colecao` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_cintura_tamanho_idx` (`id_tamanho`),
  KEY `FK_cintura_colecao_idx` (`id_colecao`),
  CONSTRAINT `FK_cintura_colecao` FOREIGN KEY (`id_colecao`) REFERENCES `colecoes` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_cintura_tamanho` FOREIGN KEY (`id_tamanho`) REFERENCES `tamanhos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_produto_cintua` FOREIGN KEY (`ID`) REFERENCES `produto` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto_roupas_inferiores`
--

LOCK TABLES `produto_roupas_inferiores` WRITE;
/*!40000 ALTER TABLE `produto_roupas_inferiores` DISABLE KEYS */;
/*!40000 ALTER TABLE `produto_roupas_inferiores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto_roupas_superiores`
--

DROP TABLE IF EXISTS `produto_roupas_superiores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto_roupas_superiores` (
  `ID` int(11) NOT NULL,
  `id_tamanhos` int(11) NOT NULL,
  `id_manga` int(11) NOT NULL,
  `id_gola` int(11) NOT NULL,
  `id_colecao` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_tronco_tamanho_idx` (`id_tamanhos`),
  KEY `FK_tronco_manga_idx` (`id_manga`),
  KEY `FK_tronco_gola_idx` (`id_gola`),
  KEY `FK_tronco_colecao_idx` (`id_colecao`),
  CONSTRAINT `FK_tronco_colecao` FOREIGN KEY (`id_colecao`) REFERENCES `colecoes` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tronco_gola` FOREIGN KEY (`id_gola`) REFERENCES `golas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tronco_manga` FOREIGN KEY (`id_manga`) REFERENCES `mangas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tronco_produto` FOREIGN KEY (`ID`) REFERENCES `produto` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `FK_tronco_tamanho` FOREIGN KEY (`id_tamanhos`) REFERENCES `tamanhos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto_roupas_superiores`
--

LOCK TABLES `produto_roupas_superiores` WRITE;
/*!40000 ALTER TABLE `produto_roupas_superiores` DISABLE KEYS */;
/*!40000 ALTER TABLE `produto_roupas_superiores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto_status`
--

DROP TABLE IF EXISTS `produto_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto_status` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto_status`
--

LOCK TABLES `produto_status` WRITE;
/*!40000 ALTER TABLE `produto_status` DISABLE KEYS */;
INSERT INTO `produto_status` VALUES (1,'DISPONIVEL'),(2,'INDISPONIVEL');
/*!40000 ALTER TABLE `produto_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos_cores`
--

DROP TABLE IF EXISTS `produtos_cores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos_cores` (
  `id_cor` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  PRIMARY KEY (`id_cor`,`id_produto`),
  KEY `FK_prod_cores_prod_idx` (`id_produto`),
  CONSTRAINT `FK_prod_cores_cor` FOREIGN KEY (`id_cor`) REFERENCES `cores` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_prod_cores_prod` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos_cores`
--

LOCK TABLES `produtos_cores` WRITE;
/*!40000 ALTER TABLE `produtos_cores` DISABLE KEYS */;
/*!40000 ALTER TABLE `produtos_cores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos_formas_pagamentos`
--

DROP TABLE IF EXISTS `produtos_formas_pagamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos_formas_pagamentos` (
  `id_produto` int(11) NOT NULL,
  `id_forma_pagamento` int(11) NOT NULL,
  PRIMARY KEY (`id_produto`,`id_forma_pagamento`),
  KEY `FK_forma_pag_foram_idx` (`id_forma_pagamento`),
  CONSTRAINT `FK_forma_pag_foram` FOREIGN KEY (`id_forma_pagamento`) REFERENCES `formas_pagamento` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_forma_pag_prod` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos_formas_pagamentos`
--

LOCK TABLES `produtos_formas_pagamentos` WRITE;
/*!40000 ALTER TABLE `produtos_formas_pagamentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `produtos_formas_pagamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos_materiais`
--

DROP TABLE IF EXISTS `produtos_materiais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos_materiais` (
  `id_produto` int(11) NOT NULL,
  `id_material` int(11) NOT NULL,
  PRIMARY KEY (`id_produto`,`id_material`),
  KEY `FK_prod_mate_material_idx` (`id_material`),
  CONSTRAINT `FK_prod_mate_material` FOREIGN KEY (`id_material`) REFERENCES `material` (`ID`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `FK_prod_mate_produto` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos_materiais`
--

LOCK TABLES `produtos_materiais` WRITE;
/*!40000 ALTER TABLE `produtos_materiais` DISABLE KEYS */;
/*!40000 ALTER TABLE `produtos_materiais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos_tamanhos`
--

DROP TABLE IF EXISTS `produtos_tamanhos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos_tamanhos` (
  `id_tamanho` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  PRIMARY KEY (`id_tamanho`,`id_produto`),
  KEY `FK_tama_tama_idx` (`id_produto`),
  CONSTRAINT `FK_tama_prod` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tama_tama` FOREIGN KEY (`id_tamanho`) REFERENCES `tamanhos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos_tamanhos`
--

LOCK TABLES `produtos_tamanhos` WRITE;
/*!40000 ALTER TABLE `produtos_tamanhos` DISABLE KEYS */;
/*!40000 ALTER TABLE `produtos_tamanhos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_users` (
  `username` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  PRIMARY KEY (`username`,`role`),
  CONSTRAINT `FK_USERID` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
INSERT INTO `roles_users` VALUES ('adriana.oliveira','administradores'),('mgeralda.bueno','funcionarios'),('paulo.oliveira','administradores');
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tamanho_categoria`
--

DROP TABLE IF EXISTS `tamanho_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tamanho_categoria` (
  `id_categoria` int(11) NOT NULL,
  `id_tamanho` int(11) NOT NULL,
  PRIMARY KEY (`id_categoria`,`id_tamanho`),
  KEY `FK_categoria_tam_tam_idx` (`id_tamanho`),
  CONSTRAINT `FK_categoria_tam_cat` FOREIGN KEY (`id_categoria`) REFERENCES `produto_categorias` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_categoria_tam_tam` FOREIGN KEY (`id_tamanho`) REFERENCES `tamanhos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tamanho_categoria`
--

LOCK TABLES `tamanho_categoria` WRITE;
/*!40000 ALTER TABLE `tamanho_categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `tamanho_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tamanhos`
--

DROP TABLE IF EXISTS `tamanhos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tamanhos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tamanhos`
--

LOCK TABLES `tamanhos` WRITE;
/*!40000 ALTER TABLE `tamanhos` DISABLE KEYS */;
INSERT INTO `tamanhos` VALUES (1,'P'),(2,'PP'),(3,'M'),(4,'G'),(5,'GG'),(6,'EGG');
/*!40000 ALTER TABLE `tamanhos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transacoes`
--

DROP TABLE IF EXISTS `transacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transacoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_conta` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `valor` decimal(10,0) NOT NULL,
  `data_transacao` datetime NOT NULL,
  `id_tipo_transacao` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_trans_conta_idx` (`id_conta`),
  KEY `FK_trans_cat_trans_idx` (`id_categoria`),
  CONSTRAINT `FK_trans_cat_trans` FOREIGN KEY (`id_categoria`) REFERENCES `transacoes_categorias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_trans_conta` FOREIGN KEY (`id_conta`) REFERENCES `contas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transacoes`
--

LOCK TABLES `transacoes` WRITE;
/*!40000 ALTER TABLE `transacoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `transacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transacoes_categorias`
--

DROP TABLE IF EXISTS `transacoes_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transacoes_categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transacoes_categorias`
--

LOCK TABLES `transacoes_categorias` WRITE;
/*!40000 ALTER TABLE `transacoes_categorias` DISABLE KEYS */;
/*!40000 ALTER TABLE `transacoes_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transacoes_tipo`
--

DROP TABLE IF EXISTS `transacoes_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transacoes_tipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transacoes_tipo`
--

LOCK TABLES `transacoes_tipo` WRITE;
/*!40000 ALTER TABLE `transacoes_tipo` DISABLE KEYS */;
INSERT INTO `transacoes_tipo` VALUES (1,'RECEITA'),(2,'DESPESA'),(3,'TRANSFERÊNCIA');
/*!40000 ALTER TABLE `transacoes_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('adriana.oliveira','Bj72pTRmSaJvCO1i6JvwuQ=='),('mgeralda.bueno','Bj72pTRmSaJvCO1i6JvwuQ=='),('paulo.oliveira','Bj72pTRmSaJvCO1i6JvwuQ==');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas`
--

DROP TABLE IF EXISTS `vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `cliente_id` int(11) NOT NULL,
  `data_venda` datetime NOT NULL,
  `status_id` int(11) NOT NULL,
  `valor` decimal(10,0) NOT NULL,
  `forma_id` int(11) NOT NULL,
  `qtd_parcelas` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  KEY `FK_cliente3_idx` (`cliente_id`),
  KEY `FK_status5_idx` (`status_id`),
  KEY `fk_venda_forma_pag_idx` (`forma_id`),
  CONSTRAINT `FK_cliente3` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_status5` FOREIGN KEY (`status_id`) REFERENCES `vendas_status` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_venda_forma_pag` FOREIGN KEY (`forma_id`) REFERENCES `formas_pagamento` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas`
--

LOCK TABLES `vendas` WRITE;
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas_status`
--

DROP TABLE IF EXISTS `vendas_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendas_status` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas_status`
--

LOCK TABLES `vendas_status` WRITE;
/*!40000 ALTER TABLE `vendas_status` DISABLE KEYS */;
INSERT INTO `vendas_status` VALUES (1,'PEDIDO REALIZADO'),(2,'ESPERANDO PAGAMENTO'),(3,'ESPERANDO ENVIO'),(4,'ENVIADO'),(5,'FINALIZADO');
/*!40000 ALTER TABLE `vendas_status` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-10-29 23:47:39
