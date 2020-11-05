CREATE DATABASE  IF NOT EXISTS `SGEP` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `SGEP`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 192.168.0.10    Database: SGEP
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AprvHrExtra`
--

DROP TABLE IF EXISTS `AprvHrExtra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AprvHrExtra` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_registro` int DEFAULT NULL,
  `dataocorrencia` date DEFAULT NULL,
  `valorhora` time DEFAULT NULL,
  `destinohora` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_AprvHrExtra` (`id_registro`),
  CONSTRAINT `FK_AprvHrExtra` FOREIGN KEY (`id_registro`) REFERENCES `RegJornada` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AprvHrExtra`
--

LOCK TABLES `AprvHrExtra` WRITE;
/*!40000 ALTER TABLE `AprvHrExtra` DISABLE KEYS */;
INSERT INTO `AprvHrExtra` VALUES (1,32,'2020-09-02','03:00:00',1),(2,33,'2020-09-03','03:00:00',1),(3,34,'2020-09-04','03:00:00',1),(4,35,'2020-09-07','03:00:00',1),(5,36,'2020-09-08','03:00:00',1),(6,37,'2020-09-09','03:00:00',1),(7,39,'2020-09-11','03:00:00',1),(8,40,'2020-09-14','03:00:00',1),(9,41,'2020-09-15','03:00:00',1),(10,43,'2020-09-17','03:00:00',1),(11,44,'2020-09-18','03:00:00',1),(12,45,'2020-09-21','03:00:00',2),(13,47,'2020-09-23','03:00:00',2),(14,48,'2020-09-24','03:00:00',2),(15,49,'2020-09-25','03:00:00',2),(16,51,'2020-09-29','03:00:00',2),(17,52,'2020-09-30','03:00:00',2),(18,75,'2020-09-01','03:00:00',2),(19,83,'2020-09-11','03:00:00',2),(20,84,'2020-09-14','03:00:00',2),(21,85,'2020-09-15','03:00:00',2),(22,86,'2020-09-16','03:00:00',2),(23,87,'2020-09-17','03:00:00',2),(24,89,'2020-09-21','03:00:00',2),(25,95,'2020-09-29','03:00:00',2),(26,96,'2020-09-30','03:00:00',2),(27,81,'2020-09-09','05:00:00',2),(28,82,'2020-09-10','05:00:00',2);
/*!40000 ALTER TABLE `AprvHrExtra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Empresa`
--

DROP TABLE IF EXISTS `Empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Empresa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `razaoSocial` varchar(100) DEFAULT NULL,
  `cnpj` char(14) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`,`razaoSocial`,`cnpj`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empresa`
--

LOCK TABLES `Empresa` WRITE;
/*!40000 ALTER TABLE `Empresa` DISABLE KEYS */;
INSERT INTO `Empresa` VALUES (1,'MASTER EMPRESA CO','82619484000464'),(2,'UNIVERSO MIDIAS LTDA','52606217000226'),(3,'ESCOLA AMANHECER ME','47492623000001'),(4,'URNA NUNC QUIS LIMITED','34219162000130'),(5,'TORTOR NUNC FOUNDATION','35147278000098'),(6,'PHASELLUS NULLA PC','72997404000539'),(7,'MI FELIS ADIPISCING FOUNDATION','13029700000908'),(8,'NIBH ALIQUAM CORPORATION','67930157000511'),(9,'ADIPISCING LOBORTIS INSTITUTE','99800523000266'),(10,'DONEC NIBH QUISQUE LIMITED','77478407000316'),(11,'VELIT PELLENTESQUE LLC','14920922000123'),(12,'VEHICULA RISUS CORP.','14766813000011'),(13,'INTERDUM LIGULA EU LTD','79130850000080'),(14,'LOREM PC','14479684000403'),(15,'ENIM CONSULTING','30043326000083'),(16,'ODIO INC.','96618601000997'),(17,'AUGUE INDUSTRIES','90236997000410'),(18,'VESTIBULUM NEQUE PC','32901999000139'),(19,'LAOREET IPSUM CURABITUR INDUSTRIES','61771750000740'),(20,'VELIT DUI COMPANY','85069949000873'),(21,'SAGITTIS INSTITUTE','45414351000858'),(22,'CONSEQUAT INCORPORATED','82261723000298'),(23,'MAGNA SUSPENDISSE LIMITED','96635669000983'),(24,'MONTES NASCETUR RIDICULUS PC','03011244000837'),(25,'MAGNA CRAS CONVALLIS INC.','07527515000350'),(26,'NULLAM VELIT COMPANY','91153231000862'),(27,'CONSECTETUER CORP.','08547078000302'),(28,'IPSUM NON ARCU INC.','23306384000502'),(29,'CONGUE IN FOUNDATION','07841033000619'),(30,'VELIT FOUNDATION','25328019000001'),(31,'DOLOR COMPANY','14994384000626'),(32,'DUIS CORP.','53012951000902'),(33,'SIT INDUSTRIES','28894966000489'),(34,'RISUS QUISQUE FOUNDATION','95633271000783'),(35,'NEQUE VENENATIS LACUS INCORPORATED','87541849000234'),(36,'NEC LEO INCORPORATED','54941672000122'),(37,'CONSECTETUER COMPANY','79930114000278'),(38,'MOLESTIE DAPIBUS LIGULA INC.','70717892000718'),(39,'PRIMIS IN FAUCIBUS CORP.','32500795000786'),(40,'GRAVIDA MOLESTIE LTD','75074990000370'),(41,'RISUS MORBI METUS LIMITED','30931147000756'),(42,'MAGNA INDUSTRIES','84436709000047'),(43,'NEC INSTITUTE','06747418000068'),(44,'NULLA MAGNA MALESUADA LLC','50283240000030'),(45,'ELEMENTUM INCORPORATED','33282479000239'),(46,'AMET METUS ALIQUAM FOUNDATION','79953724000457'),(47,'PELLENTESQUE EGET DICTUM INSTITUTE','95997372000650'),(48,'TEMPUS RISUS DONEC INCORPORATED','67202398000973'),(49,'RHONCUS NULLAM VELIT LIMITED','81326382000817'),(50,'NON ENIM FOUNDATION','01857778000260'),(51,'PHASELLUS IN FELIS COMPANY','33683171000111');
/*!40000 ALTER TABLE `Empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Escalas`
--

DROP TABLE IF EXISTS `Escalas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Escalas` (
  `idEscala` int NOT NULL AUTO_INCREMENT,
  `nomeEscala` varchar(30) DEFAULT NULL,
  `horaInicial` time DEFAULT NULL,
  `horaFinal` time DEFAULT NULL,
  `horaIntervalo` time DEFAULT NULL,
  `limiteHorasBanco` int DEFAULT NULL,
  PRIMARY KEY (`idEscala`),
  UNIQUE KEY `idEscala` (`idEscala`,`nomeEscala`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Escalas`
--

LOCK TABLES `Escalas` WRITE;
/*!40000 ALTER TABLE `Escalas` DISABLE KEYS */;
INSERT INTO `Escalas` VALUES (1,'Turno 0h as 09h','00:00:00','09:00:00','01:00:00',40),(2,'Turno 9h as 18h','09:00:00','18:00:00','01:00:00',40),(3,'Turno 18h as 03h','18:00:00','03:00:00','01:00:00',40),(4,'Professores Manhã','07:00:00','12:00:00','01:00:00',25),(5,'Professores Tarde','13:00:00','18:00:00','01:00:00',25),(6,'Professores Noite','18:00:00','22:00:00','01:00:00',25),(7,'Contadores','08:00:00','18:00:00','01:00:00',30),(8,'BLUE','14:57:02','22:26:38','01:00:00',79),(9,'PLANTAO NOTURNO','12:24:29','12:13:40','01:00:00',71),(10,'RED','23:18:08','13:24:01','01:00:00',58),(11,'VIOLET','21:20:31','01:41:34','01:00:00',77),(12,'BLUE','08:55:15','05:15:38','01:00:00',30),(13,'CARAMELO','08:41:31','13:34:50','01:00:00',25),(14,'AZUL','17:56:14','09:33:50','01:00:00',78),(15,'LARANJA','02:51:02','05:57:31','01:00:00',37),(16,'VERMELHO','21:38:21','06:30:23','01:30:00',75),(17,'VERDE','15:23:14','18:25:04','02:00:00',25),(18,'AMARELO','18:36:13','09:32:13','01:30:00',43),(19,'CINZA','13:27:07','18:01:04','00:30:00',55),(20,'MARROM','22:06:32','17:43:36','01:00:00',29),(21,'ROSA MUSGOSA','00:18:57','11:01:04','01:00:00',75),(22,'AZUL PISCINA','00:43:22','01:36:34','01:00:00',37),(23,'PRETO NOTURNO','03:51:17','11:46:19','01:00:00',60),(24,'PLANTAO EVENTUAL','17:18:42','00:15:16','01:00:00',69),(25,'TURNO SEGURANÇAS','18:00:46','02:10:53','01:00:00',36),(26,'TURNO VIGIAS','00:08:16','00:56:46','01:00:00',56),(27,'TURNO AUX LIMPEZA','02:42:16','18:14:59','01:00:00',43),(28,'AAAAA','16:25:45','02:26:21','01:00:00',57),(29,'BBBBB','17:38:50','07:00:21','01:00:00',57),(30,'CCCCC','12:32:39','14:14:53','01:00:00',77),(31,'DDDDD','00:15:41','00:16:44','01:00:00',30),(32,'EEEEE','04:07:42','17:30:27','01:00:00',58),(33,'FFFFF','18:12:13','15:58:50','01:00:00',64),(34,'GGGGG','02:42:40','04:30:44','01:00:00',72),(35,'HHHHH','15:52:46','10:25:09','01:00:00',38),(36,'IIIII','22:39:50','16:59:31','01:00:00',55),(37,'LILAS VERDE','00:18:57','11:01:04','01:00:00',75),(38,'AZUL MAREA','00:43:22','01:36:34','01:00:00',37),(39,'CINZA ESPACIAL','03:51:17','11:46:19','01:00:00',60),(40,'PLANTAO EVENTUAL 2','17:18:42','00:15:16','01:00:00',69),(41,'TURNO SEGURANÇAS 2','18:00:46','02:10:53','01:00:00',36),(42,'TURNO VIGIAS 2','00:08:16','00:56:46','01:00:00',56),(43,'TURNO AUX LIMPEZA 2','02:42:16','18:14:59','01:00:00',43),(44,'JJJJJ','16:25:45','02:26:21','01:00:00',57),(45,'HHHHH','17:38:50','07:00:21','01:00:00',57),(46,'KKKKK','12:32:39','14:14:53','01:00:00',77),(47,'LLLLL','00:15:41','00:16:44','01:00:00',30),(48,'MMMMM','04:07:42','17:30:27','01:00:00',58),(49,'NNNNN','18:12:13','15:58:50','01:00:00',64),(50,'OOOOO','07:00:00','15:58:50','01:00:00',66);
/*!40000 ALTER TABLE `Escalas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Funcionario`
--

DROP TABLE IF EXISTS `Funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Funcionario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) DEFAULT NULL,
  `sobrenome` varchar(70) DEFAULT NULL,
  `cpf` char(11) DEFAULT NULL,
  `matricula` varchar(20) DEFAULT NULL,
  `id_setor` int DEFAULT NULL,
  `privilegio` int DEFAULT NULL,
  `id_gestor` int DEFAULT NULL,
  `id_escala` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(30) DEFAULT NULL,
  `id_empresa` int DEFAULT NULL,
  `diafolga` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`,`cpf`,`matricula`,`email`),
  KEY `FK_Emp_Func` (`id_empresa`),
  KEY `FK_Setor_Func` (`id_setor`),
  KEY `FK_Escala_Func` (`id_escala`),
  CONSTRAINT `FK_Emp_Func` FOREIGN KEY (`id_empresa`) REFERENCES `Empresa` (`id`),
  CONSTRAINT `FK_Escala_Func` FOREIGN KEY (`id_escala`) REFERENCES `Escalas` (`idEscala`),
  CONSTRAINT `FK_Setor_Func` FOREIGN KEY (`id_setor`) REFERENCES `Setor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Funcionario`
--

LOCK TABLES `Funcionario` WRITE;
/*!40000 ALTER TABLE `Funcionario` DISABLE KEYS */;
INSERT INTO `Funcionario` VALUES (1,'Master','Funcionario','00297896308','A99',1,0,1,1,1,'master.func@ADMIN.com','Admin@2020',1,8),(2,'Marcelo','Silva','59350472170','AB01',3,1,2,3,4,'marcelo.silva@email.com','Admin@2020',2,8),(3,'Ana','Mara','39433046988','ab9',3,3,2,2,3,'amara@email.com','Admin@2020',2,8),(4,'Joao','Don Valhao','91715138761','ab7',3,3,2,3,1,'jvalaho@email.com','Admin@2020',2,8),(5,'Joana','Dymm','68676323430','CC-22011',4,1,5,2,1,'jdymm@escola.edu','Admin@2020',3,8),(6,'Josenildo','Francisco SÃ¡','72021927480','CC-330011',2,1,6,2,1,'chicosa@escola.edu','Admin@2020',3,8),(7,'Maria','Pia','10131893027','CC-22011',6,3,5,4,1,'maria.pia@escola.edu','Admin@2020',3,8),(8,'Zilda','Arns','92714351337','CC-22011',7,3,5,5,1,'zilda@escola.edu','Admin@2020',3,8),(9,'Bruno','Nogueira','33845542050','CC-22011',8,3,5,6,1,'bruno.nogueiea@escola.com','Admin@2020',3,8),(10,'Hope','Espinoza','98651470920','218203-7735',2,3,6,2,1,'dapibus.ligula@Curabitur.co.uk','TOY92JWR0FJ',3,8),(11,'Geraldine','Lawrence','19474513080','779221-0903',3,1,11,2,1,'molestie@sociisnatoque.ca','GTK18PJK9OE',16,7),(12,'Philip','Curtis','34995373204','297414-0358',3,3,11,2,1,'magna@sedturpis.co.uk','AFK63SCN3GZ',16,7),(13,'Winter','Travis','51370981916','099508-5503',3,3,11,2,1,'Curabitur.dictum.Phasellus@Sedneque.co.uk','VAE38CGO6PZ',16,7),(14,'Rinah','Watts','30631697578','859552-5240',15,2,11,2,1,'magnis@Donec.org','YMF25SLN2MI',16,7),(15,'Cruz','Copeland','93015555224','154255-2961',15,3,11,2,1,'nec.metus@varius.ca','ZBU78RUR0HY',16,7),(16,'Sebastian','Madden','81901227898','035866-4381',15,3,11,2,1,'eget.ipsum@massaIntegervitae.co.uk','CKW12XLT9WG',16,7),(17,'Mohammad','Ryan','26978934586','504278-2259',27,2,11,2,1,'sit.amet@duiinsodales.ca','LWF60GFS8PO',16,7),(18,'Gretchen','Walker','71832544610','762654-1390',27,3,11,2,1,'eu.elit.Nulla@Vivamus.edu','MKL46EKN3EF',16,7),(19,'Amery','Cote','77021249469','959115-3722',27,3,11,2,1,'laoreet.lectus@mattisCras.org','EIE47JDC6DT',16,7),(20,'Colin','Miller','39913155994','162427-6588',8,3,29,4,1,'elit.Curabitur@consequat.org','LMO91GDL1RP',21,8),(21,'Hayley','Gill','43710485958','419773-9867',8,3,29,5,1,'Cras@consectetuermaurisid.org','SRP49MTX7JK',21,8),(22,'Philip','Haynes','26408143117','145052-6783',8,3,29,6,1,'commodo.ipsum@orcisem.ca','KSP81BMA6DS',21,8),(23,'Yetta','Henderson','62663329730','288371-7668',8,3,29,4,1,'auctor@sapienNuncpulvinar.co.uk','KLF62LFS1HI',21,8),(24,'Clinton','Wilkins','96577061309','524498-6138',8,3,29,5,1,'pretium@nequetellus.co.uk','YYL25XJD1QV',21,8),(25,'Breanna','Wiggins','78567644068','582569-1511',7,3,29,6,1,'laoreet@etlacinia.edu','MPR58FMW5YH',21,8),(26,'Declan','Matthews','57484857372','004295-8272',7,3,29,4,1,'nec.tempus.scelerisque@Curae.edu','JLP65EHQ2TV',21,8),(27,'Mason','Holcomb','07264315758','603758-0815',7,3,29,5,1,'tempus@euismodetcommodo.net','NZF61QMC9HW',21,8),(28,'Ezra','Swanson','76641612070','492956-2181',7,3,29,6,1,'risus.a@Nuncullamcorper.co.uk','SBB02LBU5CV',21,8),(29,'Otto','Delgado','07495055406','118145-7167',4,1,29,2,1,'eu@fermentumconvallis.com','LEB56CTC0PH',21,8),(30,'Emmanuel','Duncan','16319862609','382773-5899',30,1,30,2,1,'rutrum.justo@eu.edu','BKX24JYM2KT',6,8),(31,'Abra','Morales','33479004644','052853-6915',30,2,30,2,1,'arcu.iaculis@Nullatemporaugue.ca','OVT00CQF9SW',6,8),(32,'Hamilton','Sandoval','53459143030','596553-0925',30,3,30,2,1,'Vivamus@Proin.net','ZXH98RRB2LL',6,8),(33,'Wyoming','Moody','86087793312','952793-7396',30,3,30,2,1,'dolor@semperNam.com','HYN70QLA8LV',6,8),(34,'Ursa','Leblanc','41634238775','445191-5765',30,3,30,2,1,'justo.Praesent@dictum.com','ABC66WGY7JE',6,8),(35,'Maris','Crawford','09822631715','228254-7575',30,3,30,2,1,'libero@pellentesqueafacilisis.net','WZL04VHB0BF',6,8),(36,'Cameran','Cobb','79069298025','953365-6501',30,3,30,2,1,'ut.nulla.Cras@Nunc.net','GKL01AJM8WV',6,8),(37,'Nathaniel','Blanchard','84325400566','054050-6334',30,3,30,2,1,'nec@aneque.net','EHQ24SKK3MF',6,8),(38,'Hedley','Crawford','05533684000','242806-8395',30,3,30,2,1,'sed.pede@Nuncullamcorpervelit.co.uk','ZMD53LCH5PW',6,8),(39,'Azalia','Singleton','77467261004','565347-0384',30,3,30,2,1,'feugiat@urnajusto.co.uk','XRP47ECR9VO',6,8),(40,'Kenneth','Huffman','34489807143','876453-5459',3,2,2,3,1,'ipsum.primis@velvulputateeu.edu','SRA27GAX6TA',2,8),(41,'Holmes','Potts','80544720308','775116-1428',3,3,2,1,1,'at.iaculis@elitNulla.com','QCT05EBR6OX',2,8),(42,'Pandora','Parsons','45441554102','144162-4119',3,3,2,1,1,'Curabitur@Sedeueros.co.uk','YZZ80DCM0XI',2,8),(43,'Rigel','Case','73675500713','122471-5654',3,3,2,2,1,'eu.placerat.eget@malesuadaInteger.com','EQD34PMQ7KI',2,8),(44,'Isabella','Stein','49378712858','978547-4439',28,3,48,12,1,'dolor@auctorquistristique.co.uk','PER53QDZ3SC',43,6),(45,'Aubrey','Winters','64411776689','434749-6798',28,3,48,12,1,'eget.ipsum.Suspendisse@sapien.co.uk','KQT75ODZ8AM',43,7),(46,'Delilah','Cross','34461642195','968252-3072',29,3,48,12,1,'sit.amet@sapien.ca','VCI70LCR2MW',43,8),(47,'Emerald','Garcia','61964505140','383646-8078',31,3,48,12,1,'nascetur.ridiculus.mus@Nuncpulvinar.org','MPH07JIE6EO',43,7),(48,'Bert','Dickerson','28648281380','846836-1103',32,1,48,12,1,'aliquet.lobortis.nisi@Suspendisse.com','OCQ18FSP9ZX',43,7),(49,'Shad','Summers','45338421359','112150-0142',42,3,48,12,1,'tristique.aliquet@arcuetpede.com','DXC46WGE3TU',43,8),(50,'Kirby','Sweeney','32051218997','702913-1211',28,3,48,12,1,'magna@aliquetnec.ca','WNT10ZXL5JC',43,8),(51,'Chelsea','Hewitt','63575805117','076794-9746',36,2,52,3,1,'velit.Sed.malesuada@Integereu.org','ZXL26NNQ1NU',12,8),(52,'Carly','Pennington','43112805721','057461-9078',36,1,52,3,1,'ut.ipsum@nonhendreritid.ca','VHJ19MJT4JG',12,8),(53,'Hashim','Bradshaw','40694215999','977224-7376',36,3,52,3,1,'nibh@adipiscingelitEtiam.ca','GYX79CCQ0TT',12,8),(54,'Graiden','Jacobs','74075366351','735914-1780',36,3,52,3,1,'mi.lorem@adipiscingelit.co.uk','MBU68LFM0CC',12,8),(55,'Ann','Ramsey','93325131800','958871-2449',36,3,52,3,1,'faucibus@Nulla.ca','OXF59KPM6SN',12,8),(56,'Karyn','Snyder','60594982133','165460-0483',36,3,52,3,1,'ante.Nunc.mauris@vehiculaPellentesque.edu','AWE52PCF5JX',12,8),(57,'Gavin','Bryant','21785123727','193023-9817',36,3,52,3,1,'ornare.lectus.justo@ascelerisquesed.co.uk','CTO18HUX5XL',12,8),(58,'Quail','Bean','75971012520','843387-9395',36,3,52,3,1,'sed.dictum@semelitpharetra.edu','TJD11LEY8GM',12,8),(59,'Tasha','Talley','00793202283','558470-2228',36,3,52,3,1,'lorem.luctus.ut@Phasellus.com','YKL96UVU5PG',12,8),(60,'Ralph','Marshall','66765917904','679386-9444',36,3,52,3,1,'magnis@imperdietnonvestibulum.edu','RXY69TTY8WB',12,8),(61,'Cecilia','Hancock','36476274025','344137-7581',17,1,61,17,1,'quis.diam@iaculis.org','YIL68RNI4OS',44,8),(62,'Mannix','Oneill','72130895600','394499-8198',17,2,61,17,1,'at.egestas.a@nislNulla.org','VFB72XZV0RT',44,8),(63,'Owen','Anderson','41174148522','847573-3286',17,3,61,17,1,'elit.Nulla@turpis.com','CAI32EPE2SV',44,8),(64,'Uriel','Avery','37714689650','923836-7727',17,3,61,17,1,'hendrerit@loremacrisus.net','EJM23BHY1QE',44,8),(65,'Burton','English','25546776032','045124-5237',9,3,2,1,1,'dis.parturient@Namligula.com','PAH94IHD0EM',2,8),(66,'Rinah','Sharpe','21875496909','434780-4595',9,3,2,1,1,'pede@massaSuspendisse.net','HWA81TRP8VL',2,8),(67,'Jaime','Sweet','81797813805','167265-3480',9,3,2,2,1,'quam@disparturient.ca','DIH45PGT3JX',2,8),(68,'Oliver','Hinton','74884307603','873576-8080',9,3,2,2,1,'ut.dolor@egetmetusIn.com','ETG76WTE1HW',2,8),(69,'Mannix','Sanchez','30847144286','819930-9397',9,3,2,3,1,'id.risus.quis@Pellentesquehabitantmorbi.org','HWP07NGM0EW',2,8),(70,'Harriet','Tran','25749297487','669246-5450',9,3,2,3,1,'Aliquam.rutrum.lorem@Phasellus.co.uk','WYO64XBC0GY',2,8),(71,'Fletcher','Mckay','63964701109','538124-5447',11,1,71,2,1,'Proin.ultrices@Sed.ca','UGV39GFO3XM',2,8),(72,'Shea','Chavez','05427204508','834895-1651',5,3,6,2,1,'auctor.velit@vitaedolorDonec.org','PWE26HKF5XM',3,8),(73,'Keiko','Small','43804632490','103389-4070',9,3,6,2,1,'nunc.risus@sodales.com','VAV35KTQ3XP',3,8),(74,'Jared','Neal','75966848663','523372-9473',8,3,5,4,1,'in.consectetuer.ipsum@ornareFuscemollis.co.uk','FNB53MKU8BM',3,8),(75,'Violet','Berg','02367284744','678861-8038',6,3,5,5,1,'in.faucibus.orci@variusorci.net','SUQ13SUZ6KV',3,8),(76,'Dean','Murray','53964546286','786678-5731',7,3,5,6,1,'consectetuer.adipiscing@tristiqueaceleifend.net','FTO28SCR0AL',3,8),(77,'Carly','Rosa','06201369952','716154-7158',31,1,77,2,1,'vitae@euismodest.edu','JEF52LLT8CM',16,8),(78,'Suki','Bauer','48941498425','497522-3050',31,3,77,2,1,'iaculis@lectus.org','BHF29GWM9KK',16,8),(79,'Barrett','Compton','80147518171','045044-5028',32,1,79,2,1,'non@in.edu','KGF83TOA8GJ',16,8),(80,'Anthony','Chaney','43446388166','926165-8125',32,3,79,2,1,'Duis.sit.amet@nunc.com','KXR51FVY9WK',16,8),(81,'Gemma','Henry','93293829670','629825-8028',32,3,79,2,1,'mauris.aliquam.eu@Maurisutquam.edu','KRQ80PNU0FC',16,8),(82,'Hoyt','Johnson','77751619307','606232-8882',37,3,11,2,1,'dui.quis.accumsan@variusNamporttitor.net','JWC85PSG2BK',16,8),(83,'Geoffrey','Perkins','41168812521','918953-0752',37,3,11,2,1,'bibendum.sed.est@ataugue.net','USK80SFV3ZF',16,8),(84,'Abdul','Marks','03477429710','694143-2558',11,2,71,2,1,'molestie@loremac.org','PQV97FWH7OW',2,8),(85,'Sigourney','Giles','45198250670','376509-2329',11,3,71,2,1,'Phasellus.libero.mauris@suscipitnonummyFusce.org','LHJ90IOP0OQ',2,8),(86,'Gwendolyn','Miranda','89773780443','317544-5281',11,3,71,2,1,'dictum.placerat@posuere.net','BQC97PEI5DR',2,8),(87,'Yoshi','Roth','98826086393','416300-7737',10,1,87,2,1,'Nunc@eget.edu','GCK48KNS4TS',2,8),(88,'Kai','Valenzuela','26270444787','349661-8319',10,3,87,2,1,'ut.mi.Duis@aliquamiaculislacus.com','QEI71DHK5FG',2,8),(89,'Zane','Horne','69929262762','986128-1997',10,3,87,2,1,'dolor.Fusce@libero.com','CNE11RII2TA',2,8),(90,'Kennedy','Dean','69243979483','492073-4219',14,1,90,2,1,'eleifend.nunc@atiaculis.edu','FCG84YWD8VV',2,8),(91,'Rhonda','Stout','75389375609','396101-0265',14,2,90,2,1,'egestas.Sed@eleifend.co.uk','UHU10XTI9IR',2,8),(92,'Hiram','Richard','91450274550','563466-0277',22,3,11,2,1,'nascetur.ridiculus@sempertellusid.ca','PAX52AQV9GF',16,8),(93,'Darius','Collier','56654649610','853848-6427',22,3,11,2,1,'aliquam@metusAliquamerat.org','OPA12ZTE2GT',16,8),(94,'Mark','Pierce','11469087415','704267-1573',10,1,94,2,1,'enim.sit@Maurismagna.ca','HBN57XAQ2IJ',16,8),(95,'Aubrey','Hawkins','40035652404','154665-4367',10,3,94,2,1,'ac.tellus@pedeCrasvulputate.edu','BRA32IFX3JH',16,8),(96,'Lacota','Richmond','30617463237','355374-1616',10,3,94,2,1,'pretium.neque@semper.ca','SEB97WEU1BN',16,8),(97,'Abdul','Pace','10215083062','715890-3349',27,3,94,2,1,'Maecenas.mi@ametorci.org','KXA35HUR7ZI',16,8),(98,'Rachel','Garcia','88833107483','354277-7614',27,3,94,2,1,'aliquam.eu.accumsan@vitaealiquetnec.com','PGR69QET6KX',16,8),(99,'Avram','Willis','59739430207','977746-0560',14,3,90,2,1,'egestas.Aliquam@amagnaLorem.org','JYD46EAK2SJ',2,8),(100,'Irma','Durham','23490137238','074881-3029',14,3,90,2,1,'in@ullamcorper.co.uk','HQD72PWV9VC',2,8),(101,'Alisa','Dorsey','71695156288','844019-9787',14,3,90,2,1,'Ut.semper@cursusnonegestas.net','KPL09WEG4OP',2,8),(102,'Mannix','Puckett','26978090746','429262-4873',15,2,2,1,1,'magna@ipsum.co.uk','OMA64GWS5ZU',2,8),(103,'Bert','Wagner','14118410939','878668-5050',15,3,2,1,1,'auctor.odio.a@viverraMaecenas.net','KLG26CSY4HU',2,8),(104,'Tucker','Serrano','32440964682','388789-9080',28,2,2,3,1,'Phasellus.at@penatibuset.com','BBH98XGY5CP',2,8),(105,'Sharon','Dillard','10346325079','636927-0472',28,3,2,2,1,'lorem.tristique.aliquet@Aliquamvulputateullamcorper.ca','SBD43MON1XI',2,8),(106,'Jessamine','Cooley','32793199439','919439-2784',28,3,2,1,1,'consequat.lectus.sit@Cumsociis.com','SZA36MIJ2FQ',2,8),(107,'Bell','Morin','20950931604','184753-2494',25,2,71,2,1,'sociis.natoque.penatibus@erat.net','ORG59LLD2TC',2,8),(108,'Ezekiel','Jefferson','73160651849','284832-3974',25,3,71,2,1,'enim@elitAliquamauctor.ca','JPZ35TGL7JJ',2,8),(109,'Jescie','Mcfarland','65787505173','304063-4184',25,3,71,2,1,'aliquet.metus@aliquam.edu','SAS59TAX4YW',2,8);
/*!40000 ALTER TABLE `Funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RegJornada`
--

DROP TABLE IF EXISTS `RegJornada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RegJornada` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_funcionario` int DEFAULT NULL,
  `data` date DEFAULT NULL,
  `horaentrada` time DEFAULT NULL,
  `horasaida` time DEFAULT NULL,
  `horaextra` time DEFAULT NULL,
  `horabanco` time DEFAULT NULL,
  `observacao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_RegJornada` (`id_funcionario`),
  CONSTRAINT `FK_RegJornada` FOREIGN KEY (`id_funcionario`) REFERENCES `Funcionario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RegJornada`
--

LOCK TABLES `RegJornada` WRITE;
/*!40000 ALTER TABLE `RegJornada` DISABLE KEYS */;
INSERT INTO `RegJornada` VALUES (1,2,'2020-08-01','00:00:00','09:00:00',NULL,'08:00:00','Expediente'),(2,2,'2020-08-02','00:00:00','09:00:00','08:00:00',NULL,'Expediente'),(3,2,'2020-08-03','00:00:00','09:00:00',NULL,NULL,'Expediente'),(4,2,'2020-08-04','00:00:00','09:00:00',NULL,NULL,'Expediente'),(5,2,'2020-08-05','00:00:00','09:00:00',NULL,NULL,'Expediente'),(6,2,'2020-08-06','00:00:00','09:00:00',NULL,NULL,'Expediente'),(7,2,'2020-08-07','00:00:00','09:00:00',NULL,NULL,'Expediente'),(8,2,'2020-08-10','00:00:00','09:00:00',NULL,NULL,'Expediente'),(9,2,'2020-08-11','00:00:00','09:00:00',NULL,NULL,'Expediente'),(10,2,'2020-08-12','00:00:00','09:00:00',NULL,NULL,'Expediente'),(11,2,'2020-08-13','00:00:00','09:00:00',NULL,NULL,'Expediente'),(12,2,'2020-08-14','00:00:00','09:00:00',NULL,NULL,'Expediente'),(13,2,'2020-08-17','00:00:00','09:00:00',NULL,NULL,'Expediente'),(14,2,'2020-08-18','00:00:00','09:00:00',NULL,NULL,'Expediente'),(15,2,'2020-08-19','00:00:00','09:00:00',NULL,NULL,'Expediente'),(16,2,'2020-08-20','00:00:00','09:00:00',NULL,NULL,'Expediente'),(17,2,'2020-08-21','00:00:00','09:00:00',NULL,NULL,'Expediente'),(18,2,'2020-08-25','00:00:00','09:00:00',NULL,NULL,'Expediente'),(19,2,'2020-08-26','00:00:00','09:00:00',NULL,NULL,'Expediente'),(20,2,'2020-08-27','00:00:00','09:00:00',NULL,NULL,'Expediente'),(21,2,'2020-08-28','00:00:00','09:00:00',NULL,NULL,'Expediente'),(22,2,'2020-08-31','00:00:00','09:00:00',NULL,NULL,'Expediente'),(23,2,'2020-09-01','00:00:00','09:00:00',NULL,NULL,'Expediente'),(24,2,'2020-09-02','00:00:00','09:00:00',NULL,NULL,'Expediente'),(25,2,'2020-09-03','00:00:00','09:00:00',NULL,NULL,'Expediente'),(26,2,'2020-09-04','00:00:00','09:00:00',NULL,NULL,'Expediente'),(27,2,'2020-09-07','00:00:00','09:00:00',NULL,NULL,'Expediente'),(28,2,'2020-09-08','00:00:00','09:00:00',NULL,NULL,'Expediente'),(29,2,'2020-09-09','00:00:00','09:00:00',NULL,NULL,'Expediente'),(30,2,'2020-09-10','00:00:00','09:00:00',NULL,NULL,'Expediente'),(31,7,'2020-09-01','07:00:00','16:00:00',NULL,NULL,''),(32,7,'2020-09-02','07:00:00','18:00:00',NULL,NULL,''),(33,7,'2020-09-03','07:00:00','18:00:00',NULL,NULL,''),(34,7,'2020-09-04','07:00:00','18:00:00',NULL,NULL,''),(35,7,'2020-09-07','07:00:00','18:00:00',NULL,NULL,''),(36,7,'2020-09-08','07:00:00','18:00:00',NULL,NULL,''),(37,7,'2020-09-09','07:00:00','18:00:00',NULL,NULL,''),(38,7,'2020-09-10','07:00:00','16:00:00',NULL,NULL,''),(39,7,'2020-09-11','07:00:00','18:00:00',NULL,NULL,''),(40,7,'2020-09-14','07:00:00','18:00:00',NULL,NULL,''),(41,7,'2020-09-15','07:00:00','18:00:00',NULL,NULL,''),(42,7,'2020-09-16','07:00:00','16:00:00',NULL,NULL,''),(43,7,'2020-09-17','07:00:00','18:00:00',NULL,NULL,''),(44,7,'2020-09-18','07:00:00','18:00:00',NULL,NULL,''),(45,7,'2020-09-21','07:00:00','18:00:00',NULL,NULL,''),(46,7,'2020-09-22','07:00:00','16:00:00',NULL,NULL,''),(47,7,'2020-09-23','07:00:00','18:00:00',NULL,NULL,''),(48,7,'2020-09-24','07:00:00','18:00:00',NULL,NULL,''),(49,7,'2020-09-25','07:00:00','18:00:00',NULL,NULL,'Teste da turma'),(50,7,'2020-09-28','07:00:00','16:00:00',NULL,NULL,''),(51,7,'2020-09-29','07:00:00','18:00:00',NULL,NULL,''),(52,7,'2020-09-30','07:00:00','18:00:00',NULL,NULL,''),(53,12,'2020-09-01','09:00:00','16:00:00',NULL,NULL,''),(54,12,'2020-09-02','09:00:00','18:00:00',NULL,NULL,''),(55,12,'2020-09-03','09:00:00','18:00:00',NULL,NULL,''),(56,12,'2020-09-04','09:00:00','18:00:00',NULL,NULL,''),(57,12,'2020-09-07','09:00:00','18:00:00',NULL,NULL,''),(58,12,'2020-09-08','09:00:00','18:00:00',NULL,NULL,''),(59,12,'2020-09-09','09:00:00','18:00:00',NULL,NULL,''),(60,12,'2020-09-10','09:00:00','16:00:00',NULL,NULL,''),(61,12,'2020-09-11','09:00:00','18:00:00',NULL,NULL,''),(62,12,'2020-09-14','09:00:00','18:00:00',NULL,NULL,''),(63,12,'2020-09-15','09:00:00','18:00:00',NULL,NULL,'Correcao de prova'),(64,12,'2020-09-16','09:00:00','16:00:00',NULL,NULL,''),(65,12,'2020-09-17','09:00:00','18:00:00',NULL,NULL,''),(66,12,'2020-09-18','09:00:00','18:00:00',NULL,NULL,''),(67,12,'2020-09-21','09:00:00','18:00:00',NULL,NULL,''),(68,12,'2020-09-22','09:00:00','16:00:00',NULL,NULL,''),(69,12,'2020-09-23','09:00:00','18:00:00',NULL,NULL,''),(70,12,'2020-09-24','09:00:00','18:00:00',NULL,NULL,''),(71,12,'2020-09-25','09:00:00','18:00:00',NULL,NULL,''),(72,12,'2020-09-28','09:00:00','16:00:00',NULL,NULL,''),(73,12,'2020-09-29','09:00:00','18:00:00',NULL,NULL,''),(74,12,'2020-09-30','09:00:00','18:00:00',NULL,NULL,''),(75,83,'2020-09-01','07:00:00','18:00:00',NULL,NULL,''),(76,83,'2020-09-02','09:00:00','18:00:00',NULL,NULL,''),(77,83,'2020-09-03','09:00:00','18:00:00',NULL,NULL,''),(78,83,'2020-09-04','09:00:00','18:00:00',NULL,NULL,''),(79,83,'2020-09-07','09:00:00','18:00:00',NULL,NULL,''),(80,83,'2020-09-08','09:00:00','18:00:00',NULL,NULL,''),(81,83,'2020-09-09','07:00:00','20:00:00',NULL,NULL,'Testing SW'),(82,83,'2020-09-10','07:00:00','20:00:00',NULL,NULL,''),(83,83,'2020-09-11','07:00:00','18:00:00',NULL,NULL,''),(84,83,'2020-09-14','07:00:00','18:00:00',NULL,NULL,''),(85,83,'2020-09-15','07:00:00','18:00:00',NULL,NULL,''),(86,83,'2020-09-16','09:00:00','20:00:00',NULL,NULL,'Course A+W'),(87,83,'2020-09-17','09:00:00','20:00:00',NULL,NULL,'Course A+W'),(88,83,'2020-09-18','09:00:00','18:00:00',NULL,NULL,''),(89,83,'2020-09-21','09:00:00','20:00:00',NULL,NULL,'Testing SW'),(90,83,'2020-09-22','09:00:00','18:00:00',NULL,NULL,''),(91,83,'2020-09-23','09:00:00','18:00:00',NULL,NULL,''),(92,83,'2020-09-24','09:00:00','18:00:00',NULL,NULL,''),(93,83,'2020-09-25','09:00:00','18:00:00',NULL,NULL,''),(94,83,'2020-09-28','09:00:00','18:00:00',NULL,NULL,''),(95,83,'2020-09-29','07:00:00','18:00:00',NULL,NULL,''),(96,83,'2020-09-30','07:00:00','18:00:00',NULL,NULL,'');
/*!40000 ALTER TABLE `RegJornada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Setor`
--

DROP TABLE IF EXISTS `Setor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Setor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nomesetor` varchar(50) DEFAULT NULL,
  `centrodecusto` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Setor`
--

LOCK TABLES `Setor` WRITE;
/*!40000 ALTER TABLE `Setor` DISABLE KEYS */;
INSERT INTO `Setor` VALUES (1,'MASTER SETOR','AA-99'),(2,'SETOR ADMINISTRATIVO','AA-0000'),(3,'TI','TI-0001'),(4,'RECURSOS HUMANOS','RH-0001'),(5,'JURIDICO','JU-0001'),(6,'ENSINO FUNDAMENTAL','PFE-0001'),(7,'ENSINO MEDIO','PFE-0002'),(8,'ENSINO SUPERIOR','PFE-0003'),(9,'Tech Support','616028-7535'),(10,'Accounting','927693-5146'),(11,'Human Resources','355386-0994'),(12,'Accounting','913890-2698'),(13,'Customer Service','307110-9031'),(14,'Public Relations','782273-7255'),(15,'Quality Assurance','747695-2762'),(16,'Accounting','287615-5629'),(17,'Sales and Marketing','358382-1628'),(18,'Public Relations','194211-8645'),(19,'Sales and Marketing','964702-5221'),(20,'Research and Development','617393-9767'),(21,'Accounting','355295-2636'),(22,'Media Relations','424740-4900'),(23,'Media Relations','874280-0918'),(24,'Quality Assurance','795903-0268'),(25,'Payroll','495733-9759'),(26,'Customer Relations','954659-1513'),(27,'Asset Management','057339-8005'),(28,'Research and Development','693515-9845'),(29,'Public Relations','777409-8458'),(30,'Tech Support','544790-0928'),(31,'Finances','173186-3674'),(32,'Human Resources','556308-3186'),(33,'Tech Support','975514-3626'),(34,'Tech Support','096597-2912'),(35,'Finances','046780-0488'),(36,'Customer Relations','994775-8794'),(37,'Customer Service','742232-3829'),(38,'Tech Support','007591-0356'),(39,'Quality Assurance','089758-7184'),(40,'Accounting','352555-7389'),(41,'Human Resources','446033-1145'),(42,'Legal Department','446926-8173'),(43,'Accounting','412641-2701'),(44,'Research and Development','252282-5781'),(45,'Accounting','785498-6457'),(46,'Customer Service','273256-2877'),(47,'Quality Assurance','758799-5973'),(48,'Tech Support','079931-7367'),(49,'Payroll','272857-6311'),(50,'Human Resources','588753-6190'),(51,'Quality Assurance','258222-7019'),(52,'Payroll','528455-3830'),(53,'Customer Relations','318138-5703'),(54,'Tech Support','765326-3355');
/*!40000 ALTER TABLE `Setor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SituacaoFuncionario`
--

DROP TABLE IF EXISTS `SituacaoFuncionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SituacaoFuncionario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_funcionario` int DEFAULT NULL,
  `datainicioafastamento` date DEFAULT NULL,
  `diasafastado` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_SituacaoFuncionario` (`id_funcionario`),
  CONSTRAINT `FK_SituacaoFuncionario` FOREIGN KEY (`id_funcionario`) REFERENCES `Funcionario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SituacaoFuncionario`
--

LOCK TABLES `SituacaoFuncionario` WRITE;
/*!40000 ALTER TABLE `SituacaoFuncionario` DISABLE KEYS */;
INSERT INTO `SituacaoFuncionario` VALUES (1,109,'1996-05-02',20),(2,109,'1997-09-02',20),(3,96,'1998-07-03',14),(4,59,'2018-07-21',10),(5,42,'2020-10-03',5),(6,8,'2018-11-19',30),(7,24,'1992-04-25',30),(8,24,'1995-04-11',30),(9,34,'1997-06-27',25),(10,35,'2006-11-10',24),(11,35,'2011-12-14',14),(12,101,'1996-12-24',19),(13,48,'2000-10-20',12),(14,101,'2012-11-15',6),(15,88,'2008-06-18',18),(16,97,'2012-10-19',19),(17,78,'2000-10-12',17),(18,88,'2006-12-13',6),(19,51,'1994-05-22',12),(20,13,'2011-02-17',1),(21,44,'2000-05-12',15),(22,10,'1994-12-03',1),(23,3,'2007-04-08',4),(24,36,'2012-10-26',6),(25,74,'2017-05-14',5),(26,17,'1995-05-27',19),(27,54,'1993-09-24',8),(28,32,'1997-08-30',20),(29,82,'2009-09-14',9),(30,50,'1993-02-19',5),(31,30,'2005-06-11',5),(32,46,'2006-01-09',20),(33,106,'2003-05-30',11),(34,101,'1992-02-22',11),(35,17,'2005-11-08',4),(36,44,'1992-07-05',4),(37,73,'1996-03-17',17),(38,103,'2020-04-05',7),(39,36,'1996-09-12',3),(40,68,'1992-08-15',10),(41,38,'1991-11-28',14),(42,86,'1991-01-02',3),(43,100,'2000-12-06',18),(44,22,'2008-09-21',16),(45,92,'2003-03-13',19),(46,107,'1999-01-25',4),(47,17,'2009-10-23',19),(48,42,'2009-07-19',7),(49,57,'2019-09-01',17),(50,51,'1994-10-21',20);
/*!40000 ALTER TABLE `SituacaoFuncionario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-04 23:37:37
