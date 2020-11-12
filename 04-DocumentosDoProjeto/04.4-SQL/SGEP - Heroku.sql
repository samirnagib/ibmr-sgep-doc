CREATE DATABASE  IF NOT EXISTS `heroku_dfe0765435bdbc3` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `heroku_dfe0765435bdbc3`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: us-cdbr-east-02.cleardb.com    Database: heroku_dfe0765435bdbc3
-- ------------------------------------------------------
-- Server version	5.5.62-log

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
-- Table structure for table `aprv_hr_extra`
--

DROP TABLE IF EXISTS `aprv_hr_extra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aprv_hr_extra` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `data_ocorrencia` datetime DEFAULT NULL,
  `destino_hora` bigint(20) DEFAULT NULL,
  `valor_hora` decimal(19,2) DEFAULT NULL,
  `id_registro` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKinvxua38dw5g5v6oibm3akjci` (`id_registro`),
  CONSTRAINT `FKinvxua38dw5g5v6oibm3akjci` FOREIGN KEY (`id_registro`) REFERENCES `reg_jornada` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aprv_hr_extra`
--

LOCK TABLES `aprv_hr_extra` WRITE;
/*!40000 ALTER TABLE `aprv_hr_extra` DISABLE KEYS */;
INSERT INTO `aprv_hr_extra` VALUES (1,'2020-09-02 00:00:00',1,3.00,32),(2,'2020-09-03 00:00:00',1,3.00,33),(3,'2020-09-04 00:00:00',1,3.00,34),(4,'2020-09-07 00:00:00',1,3.00,35),(5,'2020-09-08 00:00:00',1,3.00,36),(6,'2020-09-09 00:00:00',1,3.00,37),(7,'2020-09-11 00:00:00',1,3.00,39),(8,'2020-09-14 00:00:00',1,3.00,40),(9,'2020-09-15 00:00:00',1,3.00,41),(10,'2020-09-17 00:00:00',1,3.00,43),(11,'2020-09-18 00:00:00',1,3.00,44),(12,'2020-09-21 00:00:00',2,3.00,45),(13,'2020-09-23 00:00:00',2,3.00,47),(14,'2020-09-24 00:00:00',2,3.00,48),(15,'2020-09-25 00:00:00',2,3.00,49),(16,'2020-09-29 00:00:00',2,3.00,51),(17,'2020-09-30 00:00:00',2,3.00,52),(18,'2020-09-01 00:00:00',2,3.00,75),(19,'2020-09-11 00:00:00',2,3.00,83),(20,'2020-09-14 00:00:00',2,3.00,84),(21,'2020-09-15 00:00:00',2,3.00,85),(22,'2020-09-16 00:00:00',2,3.00,86),(23,'2020-09-17 00:00:00',2,3.00,87),(24,'2020-09-21 00:00:00',2,3.00,89),(25,'2020-09-29 00:00:00',2,3.00,95),(26,'2020-09-30 00:00:00',2,3.00,96),(27,'2020-09-09 00:00:00',2,5.00,81),(28,'2020-09-10 00:00:00',2,5.00,82);
/*!40000 ALTER TABLE `aprv_hr_extra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cnpj` varchar(255) DEFAULT NULL,
  `razao_social` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,'MASTER EMPRESA CO','82619484000464'),(2,'UNIVERSO MIDIAS LTDA','52606217000226'),(3,'ESCOLA AMANHECER ME','47492623000001'),(4,'URNA NUNC QUIS LIMITED','34219162000130'),(5,'TORTOR NUNC FOUNDATION','35147278000098'),(6,'PHASELLUS NULLA PC','72997404000539'),(7,'MI FELIS ADIPISCING FOUNDATION','13029700000908'),(8,'NIBH ALIQUAM CORPORATION','67930157000511'),(9,'ADIPISCING LOBORTIS INSTITUTE','99800523000266'),(10,'DONEC NIBH QUISQUE LIMITED','77478407000316'),(11,'VELIT PELLENTESQUE LLC','14920922000123'),(12,'VEHICULA RISUS CORP.','14766813000011'),(13,'INTERDUM LIGULA EU LTD','79130850000080'),(14,'LOREM PC','14479684000403'),(15,'ENIM CONSULTING','30043326000083'),(16,'ODIO INC.','96618601000997'),(17,'AUGUE INDUSTRIES','90236997000410'),(18,'VESTIBULUM NEQUE PC','32901999000139'),(19,'LAOREET IPSUM CURABITUR INDUSTRIES','61771750000740'),(20,'VELIT DUI COMPANY','85069949000873'),(21,'SAGITTIS INSTITUTE','45414351000858'),(22,'CONSEQUAT INCORPORATED','82261723000298'),(23,'MAGNA SUSPENDISSE LIMITED','96635669000983'),(24,'MONTES NASCETUR RIDICULUS PC','03011244000837'),(25,'MAGNA CRAS CONVALLIS INC.','07527515000350'),(26,'NULLAM VELIT COMPANY','91153231000862'),(27,'CONSECTETUER CORP.','08547078000302'),(28,'IPSUM NON ARCU INC.','23306384000502'),(29,'CONGUE IN FOUNDATION','07841033000619'),(30,'VELIT FOUNDATION','25328019000001'),(31,'DOLOR COMPANY','14994384000626'),(32,'DUIS CORP.','53012951000902'),(33,'SIT INDUSTRIES','28894966000489'),(34,'RISUS QUISQUE FOUNDATION','95633271000783'),(35,'NEQUE VENENATIS LACUS INCORPORATED','87541849000234'),(36,'NEC LEO INCORPORATED','54941672000122'),(37,'CONSECTETUER COMPANY','79930114000278'),(38,'MOLESTIE DAPIBUS LIGULA INC.','70717892000718'),(39,'PRIMIS IN FAUCIBUS CORP.','32500795000786'),(40,'GRAVIDA MOLESTIE LTD','75074990000370'),(41,'RISUS MORBI METUS LIMITED','30931147000756'),(42,'MAGNA INDUSTRIES','84436709000047'),(43,'NEC INSTITUTE','06747418000068'),(44,'NULLA MAGNA MALESUADA LLC','50283240000030'),(45,'ELEMENTUM INCORPORATED','33282479000239'),(46,'AMET METUS ALIQUAM FOUNDATION','79953724000457'),(47,'PELLENTESQUE EGET DICTUM INSTITUTE','95997372000650'),(48,'TEMPUS RISUS DONEC INCORPORATED','67202398000973'),(49,'RHONCUS NULLAM VELIT LIMITED','81326382000817'),(50,'NON ENIM FOUNDATION','01857778000260'),(51,'PHASELLUS IN FELIS COMPANY','33683171000111');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escala`
--

DROP TABLE IF EXISTS `escala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `escala` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hora_final` time DEFAULT NULL,
  `hora_inicial` time DEFAULT NULL,
  `hora_intervalo` time DEFAULT NULL,
  `limite_horas_banco` int(11) NOT NULL,
  `nome_escala` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escala`
--

LOCK TABLES `escala` WRITE;
/*!40000 ALTER TABLE `escala` DISABLE KEYS */;
INSERT INTO `escala` VALUES (1,'09:00:00','00:00:00','01:00:00',40,'Turno 0h as 09h'),(2,'18:00:00','09:00:00','01:00:00',40,'Turno 9h as 18h'),(3,'03:00:00','18:00:00','01:00:00',40,'Turno 18h as 03h'),(4,'12:00:00','07:00:00','01:00:00',25,'Professores Manhã'),(5,'18:00:00','13:00:00','01:00:00',25,'Professores Tarde'),(6,'22:00:00','18:00:00','01:00:00',25,'Professores Noite'),(7,'18:00:00','08:00:00','01:00:00',30,'Contadores'),(8,'22:26:38','14:57:02','01:00:00',79,'BLUE'),(9,'12:13:40','12:24:29','01:00:00',71,'PLANTAO NOTURNO'),(10,'13:24:01','23:18:08','01:00:00',58,'RED'),(11,'01:41:34','21:20:31','01:00:00',77,'VIOLET'),(12,'05:15:38','08:55:15','01:00:00',30,'BLUE'),(13,'13:34:50','08:41:31','01:00:00',25,'CARAMELO'),(14,'09:33:50','17:56:14','01:00:00',78,'AZUL'),(15,'05:57:31','02:51:02','01:00:00',37,'LARANJA'),(16,'06:30:23','21:38:21','01:30:00',75,'VERMELHO'),(17,'18:25:04','15:23:14','02:00:00',25,'VERDE'),(18,'09:32:13','18:36:13','01:30:00',43,'AMARELO'),(19,'18:01:04','13:27:07','00:30:00',55,'CINZA'),(20,'17:43:36','22:06:32','01:00:00',29,'MARROM'),(21,'11:01:04','00:18:57','01:00:00',75,'ROSA MUSGOSA'),(22,'01:36:34','00:43:22','01:00:00',37,'AZUL PISCINA'),(23,'11:46:19','03:51:17','01:00:00',60,'PRETO NOTURNO'),(24,'00:15:16','17:18:42','01:00:00',69,'PLANTAO EVENTUAL'),(25,'02:10:53','18:00:46','01:00:00',36,'TURNO SEGURANÇAS'),(26,'00:56:46','00:08:16','01:00:00',56,'TURNO VIGIAS'),(27,'18:14:59','02:42:16','01:00:00',43,'TURNO AUX LIMPEZA'),(28,'02:26:21','16:25:45','01:00:00',57,'AAAAA'),(29,'07:00:21','17:38:50','01:00:00',57,'BBBBB'),(30,'14:14:53','12:32:39','01:00:00',77,'CCCCC'),(31,'00:16:44','00:15:41','01:00:00',30,'DDDDD'),(32,'17:30:27','04:07:42','01:00:00',58,'EEEEE'),(33,'15:58:50','18:12:13','01:00:00',64,'FFFFF'),(34,'04:30:44','02:42:40','01:00:00',72,'GGGGG'),(35,'10:25:09','15:52:46','01:00:00',38,'HHHHH'),(36,'16:59:31','22:39:50','01:00:00',55,'IIIII'),(37,'11:01:04','00:18:57','01:00:00',75,'LILAS VERDE'),(38,'01:36:34','00:43:22','01:00:00',37,'AZUL MAREA'),(39,'11:46:19','03:51:17','01:00:00',60,'CINZA ESPACIAL'),(40,'00:15:16','17:18:42','01:00:00',69,'PLANTAO EVENTUAL 2'),(41,'02:10:53','18:00:46','01:00:00',36,'TURNO SEGURANÇAS 2'),(42,'00:56:46','00:08:16','01:00:00',56,'TURNO VIGIAS 2'),(43,'18:14:59','02:42:16','01:00:00',43,'TURNO AUX LIMPEZA 2'),(44,'02:26:21','16:25:45','01:00:00',57,'JJJJJ'),(45,'07:00:21','17:38:50','01:00:00',57,'HHHHH'),(46,'14:14:53','12:32:39','01:00:00',77,'KKKKK'),(47,'00:16:44','00:15:41','01:00:00',30,'LLLLL'),(48,'17:30:27','04:07:42','01:00:00',58,'MMMMM'),(49,'15:58:50','18:12:13','01:00:00',64,'NNNNN'),(50,'15:58:50','07:00:00','01:00:00',66,'OOOOO');
/*!40000 ALTER TABLE `escala` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cpf` varchar(255) DEFAULT NULL,
  `diafolga` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `matricula` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `privilegio` int(11) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `sobrenome` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `id_empresa` bigint(20) DEFAULT NULL,
  `id_escala` bigint(20) DEFAULT NULL,
  `id_gestor` bigint(20) DEFAULT NULL,
  `id_setor` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3s15y0uscp165nxb1r77ryiur` (`id_empresa`),
  KEY `FKecdhviwkn4apelprbu3qmvq4s` (`id_escala`),
  KEY `FKiaoag9846ckuqdd8i2dq6t47o` (`id_setor`),
  KEY `FKf14fdx15dnma4t3fihu6ymahm` (`id_gestor`),
  CONSTRAINT `FKf14fdx15dnma4t3fihu6ymahm` FOREIGN KEY (`id_gestor`) REFERENCES `funcionario` (`id`),
  CONSTRAINT `FK3s15y0uscp165nxb1r77ryiur` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id`),
  CONSTRAINT `FKecdhviwkn4apelprbu3qmvq4s` FOREIGN KEY (`id_escala`) REFERENCES `escala` (`id`),
  CONSTRAINT `FKiaoag9846ckuqdd8i2dq6t47o` FOREIGN KEY (`id_setor`) REFERENCES `setor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'00297896308','8','master.func@ADMIN.com','A99','Master',0,'Admin@2020','Funcionario','1',1,1,1,1),(2,'59350472170','8','marcelo.silva@email.com','AB01','Marcelo',1,'Admin@2020','Silva','4',2,3,2,3),(3,'39433046988','8','amara@email.com','ab9','Ana',3,'Admin@2020','Mara','3',2,2,2,3),(4,'91715138761','8','jvalaho@email.com','ab7','Joao',3,'Admin@2020','Don Valhao','1',2,3,2,3),(5,'68676323430','8','jdymm@escola.edu','CC-22011','Joana',1,'Admin@2020','Dymm','1',3,2,5,4),(6,'72021927480','8','chicosa@escola.edu','CC-330011','Josenildo',1,'Admin@2020','Francisco SÃ¡','1',3,2,6,2),(7,'10131893027','8','maria.pia@escola.edu','CC-22011','Maria',3,'Admin@2020','Pia','1',3,4,5,6),(8,'92714351337','8','zilda@escola.edu','CC-22011','Zilda',3,'Admin@2020','Arns','1',3,5,5,7),(9,'33845542050','8','bruno.nogueiea@escola.com','CC-22011','Bruno',3,'Admin@2020','Nogueira','1',3,6,5,8),(10,'98651470920','8','dapibus.ligula@Curabitur.co.uk','218203-7735','Hope',3,'TOY92JWR0FJ','Espinoza','1',3,2,6,2),(11,'19474513080','7','molestie@sociisnatoque.ca','779221-0903','Geraldine',1,'GTK18PJK9OE','Lawrence','1',16,2,11,3),(12,'34995373204','7','magna@sedturpis.co.uk','297414-0358','Philip',3,'AFK63SCN3GZ','Curtis','1',16,2,11,3),(13,'51370981916','7','Curabitur.dictum.Phasellus@Sedneque.co.uk','099508-5503','Winter',3,'VAE38CGO6PZ','Travis','1',16,2,11,3),(14,'30631697578','7','magnis@Donec.org','859552-5240','Rinah',2,'YMF25SLN2MI','Watts','1',16,2,11,15),(15,'93015555224','7','nec.metus@varius.ca','154255-2961','Cruz',3,'ZBU78RUR0HY','Copeland','1',16,2,11,15),(16,'81901227898','7','eget.ipsum@massaIntegervitae.co.uk','035866-4381','Sebastian',3,'CKW12XLT9WG','Madden','1',16,2,11,15),(17,'26978934586','7','sit.amet@duiinsodales.ca','504278-2259','Mohammad',2,'LWF60GFS8PO','Ryan','1',16,2,11,27),(18,'71832544610','7','eu.elit.Nulla@Vivamus.edu','762654-1390','Gretchen',3,'MKL46EKN3EF','Walker','1',16,2,11,27),(19,'77021249469','7','laoreet.lectus@mattisCras.org','959115-3722','Amery',3,'EIE47JDC6DT','Cote','1',16,2,11,27),(20,'39913155994','8','elit.Curabitur@consequat.org','162427-6588','Colin',3,'LMO91GDL1RP','Miller','1',21,4,29,8),(21,'43710485958','8','Cras@consectetuermaurisid.org','419773-9867','Hayley',3,'SRP49MTX7JK','Gill','1',21,5,29,8),(22,'26408143117','8','commodo.ipsum@orcisem.ca','145052-6783','Philip',3,'KSP81BMA6DS','Haynes','1',21,6,29,8),(23,'62663329730','8','auctor@sapienNuncpulvinar.co.uk','288371-7668','Yetta',3,'KLF62LFS1HI','Henderson','1',21,4,29,8),(24,'96577061309','8','pretium@nequetellus.co.uk','524498-6138','Clinton',3,'YYL25XJD1QV','Wilkins','1',21,5,29,8),(25,'78567644068','8','laoreet@etlacinia.edu','582569-1511','Breanna',3,'MPR58FMW5YH','Wiggins','1',21,6,29,7),(26,'57484857372','8','nec.tempus.scelerisque@Curae.edu','004295-8272','Declan',3,'JLP65EHQ2TV','Matthews','1',21,4,29,7),(27,'07264315758','8','tempus@euismodetcommodo.net','603758-0815','Mason',3,'NZF61QMC9HW','Holcomb','1',21,5,29,7),(28,'76641612070','8','risus.a@Nuncullamcorper.co.uk','492956-2181','Ezra',3,'SBB02LBU5CV','Swanson','1',21,6,29,7),(29,'07495055406','8','eu@fermentumconvallis.com','118145-7167','Otto',1,'LEB56CTC0PH','Delgado','1',21,2,29,4),(30,'16319862609','8','rutrum.justo@eu.edu','382773-5899','Emmanuel',1,'BKX24JYM2KT','Duncan','1',6,2,30,30),(31,'33479004644','8','arcu.iaculis@Nullatemporaugue.ca','052853-6915','Abra',2,'OVT00CQF9SW','Morales','1',6,2,30,30),(32,'53459143030','8','Vivamus@Proin.net','596553-0925','Hamilton',3,'ZXH98RRB2LL','Sandoval','1',6,2,30,30),(33,'86087793312','8','dolor@semperNam.com','952793-7396','Wyoming',3,'HYN70QLA8LV','Moody','1',6,2,30,30),(34,'41634238775','8','justo.Praesent@dictum.com','445191-5765','Ursa',3,'ABC66WGY7JE','Leblanc','1',6,2,30,30),(35,'09822631715','8','libero@pellentesqueafacilisis.net','228254-7575','Maris',3,'WZL04VHB0BF','Crawford','1',6,2,30,30),(36,'79069298025','8','ut.nulla.Cras@Nunc.net','953365-6501','Cameran',3,'GKL01AJM8WV','Cobb','1',6,2,30,30),(37,'84325400566','8','nec@aneque.net','054050-6334','Nathaniel',3,'EHQ24SKK3MF','Blanchard','1',6,2,30,30),(38,'05533684000','8','sed.pede@Nuncullamcorpervelit.co.uk','242806-8395','Hedley',3,'ZMD53LCH5PW','Crawford','1',6,2,30,30),(39,'77467261004','8','feugiat@urnajusto.co.uk','565347-0384','Azalia',3,'XRP47ECR9VO','Singleton','1',6,2,30,30),(40,'34489807143','8','ipsum.primis@velvulputateeu.edu','876453-5459','Kenneth',2,'SRA27GAX6TA','Huffman','1',2,3,2,3),(41,'80544720308','8','at.iaculis@elitNulla.com','775116-1428','Holmes',3,'QCT05EBR6OX','Potts','1',2,1,2,3),(42,'45441554102','8','Curabitur@Sedeueros.co.uk','144162-4119','Pandora',3,'YZZ80DCM0XI','Parsons','1',2,1,2,3),(43,'73675500713','8','eu.placerat.eget@malesuadaInteger.com','122471-5654','Rigel',3,'EQD34PMQ7KI','Case','1',2,2,2,3),(44,'49378712858','6','dolor@auctorquistristique.co.uk','978547-4439','Isabella',3,'PER53QDZ3SC','Stein','1',43,12,48,28),(45,'64411776689','7','eget.ipsum.Suspendisse@sapien.co.uk','434749-6798','Aubrey',3,'KQT75ODZ8AM','Winters','1',43,12,48,28),(46,'34461642195','8','sit.amet@sapien.ca','968252-3072','Delilah',3,'VCI70LCR2MW','Cross','1',43,12,48,29),(47,'61964505140','7','nascetur.ridiculus.mus@Nuncpulvinar.org','383646-8078','Emerald',3,'MPH07JIE6EO','Garcia','1',43,12,48,31),(48,'28648281380','7','aliquet.lobortis.nisi@Suspendisse.com','846836-1103','Bert',1,'OCQ18FSP9ZX','Dickerson','1',43,12,48,32),(49,'45338421359','8','tristique.aliquet@arcuetpede.com','112150-0142','Shad',3,'DXC46WGE3TU','Summers','1',43,12,48,42),(50,'32051218997','8','magna@aliquetnec.ca','702913-1211','Kirby',3,'WNT10ZXL5JC','Sweeney','1',43,12,48,28),(51,'63575805117','8','velit.Sed.malesuada@Integereu.org','076794-9746','Chelsea',2,'ZXL26NNQ1NU','Hewitt','1',12,3,52,36),(52,'43112805721','8','ut.ipsum@nonhendreritid.ca','057461-9078','Carly',1,'VHJ19MJT4JG','Pennington','1',12,3,52,36),(53,'40694215999','8','nibh@adipiscingelitEtiam.ca','977224-7376','Hashim',3,'GYX79CCQ0TT','Bradshaw','1',12,3,52,36),(54,'74075366351','8','mi.lorem@adipiscingelit.co.uk','735914-1780','Graiden',3,'MBU68LFM0CC','Jacobs','1',12,3,52,36),(55,'93325131800','8','faucibus@Nulla.ca','958871-2449','Ann',3,'OXF59KPM6SN','Ramsey','1',12,3,52,36),(56,'60594982133','8','ante.Nunc.mauris@vehiculaPellentesque.edu','165460-0483','Karyn',3,'AWE52PCF5JX','Snyder','1',12,3,52,36),(57,'21785123727','8','ornare.lectus.justo@ascelerisquesed.co.uk','193023-9817','Gavin',3,'CTO18HUX5XL','Bryant','1',12,3,52,36),(58,'75971012520','8','sed.dictum@semelitpharetra.edu','843387-9395','Quail',3,'TJD11LEY8GM','Bean','1',12,3,52,36),(59,'00793202283','8','lorem.luctus.ut@Phasellus.com','558470-2228','Tasha',3,'YKL96UVU5PG','Talley','1',12,3,52,36),(60,'66765917904','8','magnis@imperdietnonvestibulum.edu','679386-9444','Ralph',3,'RXY69TTY8WB','Marshall','1',12,3,52,36),(61,'36476274025','8','quis.diam@iaculis.org','344137-7581','Cecilia',1,'YIL68RNI4OS','Hancock','1',44,17,61,17),(62,'72130895600','8','at.egestas.a@nislNulla.org','394499-8198','Mannix',2,'VFB72XZV0RT','Oneill','1',44,17,61,17),(63,'41174148522','8','elit.Nulla@turpis.com','847573-3286','Owen',3,'CAI32EPE2SV','Anderson','1',44,17,61,17),(64,'37714689650','8','hendrerit@loremacrisus.net','923836-7727','Uriel',3,'EJM23BHY1QE','Avery','1',44,17,61,17),(65,'25546776032','8','dis.parturient@Namligula.com','045124-5237','Burton',3,'PAH94IHD0EM','English','1',2,1,2,9),(66,'21875496909','8','pede@massaSuspendisse.net','434780-4595','Rinah',3,'HWA81TRP8VL','Sharpe','1',2,1,2,9),(67,'81797813805','8','quam@disparturient.ca','167265-3480','Jaime',3,'DIH45PGT3JX','Sweet','1',2,2,2,9),(68,'74884307603','8','ut.dolor@egetmetusIn.com','873576-8080','Oliver',3,'ETG76WTE1HW','Hinton','1',2,2,2,9),(69,'30847144286','8','id.risus.quis@Pellentesquehabitantmorbi.org','819930-9397','Mannix',3,'HWP07NGM0EW','Sanchez','1',2,3,2,9),(70,'25749297487','8','Aliquam.rutrum.lorem@Phasellus.co.uk','669246-5450','Harriet',3,'WYO64XBC0GY','Tran','1',2,3,2,9),(71,'63964701109','8','Proin.ultrices@Sed.ca','538124-5447','Fletcher',1,'UGV39GFO3XM','Mckay','1',2,2,71,11),(72,'05427204508','8','auctor.velit@vitaedolorDonec.org','834895-1651','Shea',3,'PWE26HKF5XM','Chavez','1',3,2,6,5),(73,'43804632490','8','nunc.risus@sodales.com','103389-4070','Keiko',3,'VAV35KTQ3XP','Small','1',3,2,6,9),(74,'75966848663','8','in.consectetuer.ipsum@ornareFuscemollis.co.uk','523372-9473','Jared',3,'FNB53MKU8BM','Neal','1',3,4,5,8),(75,'02367284744','8','in.faucibus.orci@variusorci.net','678861-8038','Violet',3,'SUQ13SUZ6KV','Berg','1',3,5,5,6),(76,'53964546286','8','consectetuer.adipiscing@tristiqueaceleifend.net','786678-5731','Dean',3,'FTO28SCR0AL','Murray','1',3,6,5,7),(77,'06201369952','8','vitae@euismodest.edu','716154-7158','Carly',1,'JEF52LLT8CM','Rosa','1',16,2,77,31),(78,'48941498425','8','iaculis@lectus.org','497522-3050','Suki',3,'BHF29GWM9KK','Bauer','1',16,2,77,31),(79,'80147518171','8','non@in.edu','045044-5028','Barrett',1,'KGF83TOA8GJ','Compton','1',16,2,79,32),(80,'43446388166','8','Duis.sit.amet@nunc.com','926165-8125','Anthony',3,'KXR51FVY9WK','Chaney','1',16,2,79,32),(81,'93293829670','8','mauris.aliquam.eu@Maurisutquam.edu','629825-8028','Gemma',3,'KRQ80PNU0FC','Henry','1',16,2,79,32),(82,'77751619307','8','dui.quis.accumsan@variusNamporttitor.net','606232-8882','Hoyt',3,'JWC85PSG2BK','Johnson','1',16,2,11,37),(83,'41168812521','8','bibendum.sed.est@ataugue.net','918953-0752','Geoffrey',3,'USK80SFV3ZF','Perkins','1',16,2,11,37),(84,'03477429710','8','molestie@loremac.org','694143-2558','Abdul',2,'PQV97FWH7OW','Marks','1',2,2,71,11),(85,'45198250670','8','Phasellus.libero.mauris@suscipitnonummyFusce.org','376509-2329','Sigourney',3,'LHJ90IOP0OQ','Giles','1',2,2,71,11),(86,'89773780443','8','dictum.placerat@posuere.net','317544-5281','Gwendolyn',3,'BQC97PEI5DR','Miranda','1',2,2,71,11),(87,'98826086393','8','Nunc@eget.edu','416300-7737','Yoshi',1,'GCK48KNS4TS','Roth','1',2,2,87,10),(88,'26270444787','8','ut.mi.Duis@aliquamiaculislacus.com','349661-8319','Kai',3,'QEI71DHK5FG','Valenzuela','1',2,2,87,10),(89,'69929262762','8','dolor.Fusce@libero.com','986128-1997','Zane',3,'CNE11RII2TA','Horne','1',2,2,87,10),(90,'69243979483','8','eleifend.nunc@atiaculis.edu','492073-4219','Kennedy',1,'FCG84YWD8VV','Dean','1',2,2,90,14),(91,'75389375609','8','egestas.Sed@eleifend.co.uk','396101-0265','Rhonda',2,'UHU10XTI9IR','Stout','1',2,2,90,14),(92,'91450274550','8','nascetur.ridiculus@sempertellusid.ca','563466-0277','Hiram',3,'PAX52AQV9GF','Richard','1',16,2,11,22),(93,'56654649610','8','aliquam@metusAliquamerat.org','853848-6427','Darius',3,'OPA12ZTE2GT','Collier','1',16,2,11,22),(94,'11469087415','8','enim.sit@Maurismagna.ca','704267-1573','Mark',1,'HBN57XAQ2IJ','Pierce','1',16,2,94,10),(95,'40035652404','8','ac.tellus@pedeCrasvulputate.edu','154665-4367','Aubrey',3,'BRA32IFX3JH','Hawkins','1',16,2,94,10),(96,'30617463237','8','pretium.neque@semper.ca','355374-1616','Lacota',3,'SEB97WEU1BN','Richmond','1',16,2,94,10),(97,'10215083062','8','Maecenas.mi@ametorci.org','715890-3349','Abdul',3,'KXA35HUR7ZI','Pace','1',16,2,94,27),(98,'88833107483','8','aliquam.eu.accumsan@vitaealiquetnec.com','354277-7614','Rachel',3,'PGR69QET6KX','Garcia','1',16,2,94,27),(99,'59739430207','8','egestas.Aliquam@amagnaLorem.org','977746-0560','Avram',3,'JYD46EAK2SJ','Willis','1',2,2,90,14),(100,'23490137238','8','in@ullamcorper.co.uk','074881-3029','Irma',3,'HQD72PWV9VC','Durham','1',2,2,90,14),(101,'71695156288','8','Ut.semper@cursusnonegestas.net','844019-9787','Alisa',3,'KPL09WEG4OP','Dorsey','1',2,2,90,14),(102,'26978090746','8','magna@ipsum.co.uk','429262-4873','Mannix',2,'OMA64GWS5ZU','Puckett','1',2,1,2,15),(103,'14118410939','8','auctor.odio.a@viverraMaecenas.net','878668-5050','Bert',3,'KLG26CSY4HU','Wagner','1',2,1,2,15),(104,'32440964682','8','Phasellus.at@penatibuset.com','388789-9080','Tucker',2,'BBH98XGY5CP','Serrano','1',2,3,2,28),(105,'10346325079','8','lorem.tristique.aliquet@Aliquamvulputateullamcorper.ca','636927-0472','Sharon',3,'SBD43MON1XI','Dillard','1',2,2,2,28),(106,'32793199439','8','consequat.lectus.sit@Cumsociis.com','919439-2784','Jessamine',3,'SZA36MIJ2FQ','Cooley','1',2,1,2,28),(107,'20950931604','8','sociis.natoque.penatibus@erat.net','184753-2494','Bell',2,'ORG59LLD2TC','Morin','1',2,2,71,25),(108,'73160651849','8','enim@elitAliquamauctor.ca','284832-3974','Ezekiel',3,'JPZ35TGL7JJ','Jefferson','1',2,2,71,25),(109,'65787505173','8','aliquet.metus@aliquam.edu','304063-4184','Jescie',3,'SAS59TAX4YW','Mcfarland','1',2,2,71,25);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg_jornada`
--

DROP TABLE IF EXISTS `reg_jornada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reg_jornada` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `data` datetime DEFAULT NULL,
  `hora_banco` time DEFAULT NULL,
  `hora_entrada` time DEFAULT NULL,
  `hora_extra_feriado` time DEFAULT NULL,
  `hora_extra_normal` time DEFAULT NULL,
  `hora_saida` time DEFAULT NULL,
  `observacao` varchar(255) DEFAULT NULL,
  `id_funcionario` bigint(20) DEFAULT NULL,
  `hora_extra` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcxclciljicg3cgnxbn1cmvxlh` (`id_funcionario`),
  CONSTRAINT `FKcxclciljicg3cgnxbn1cmvxlh` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg_jornada`
--

LOCK TABLES `reg_jornada` WRITE;
/*!40000 ALTER TABLE `reg_jornada` DISABLE KEYS */;
INSERT INTO `reg_jornada` VALUES (1,'2020-08-01 00:00:00','08:00:00','00:00:00',NULL,NULL,'09:00:00','Expediente',2,NULL),(2,'2020-08-02 00:00:00',NULL,'00:00:00',NULL,'08:00:00','09:00:00','Expediente',2,NULL),(3,'2020-08-03 00:00:00',NULL,'00:00:00',NULL,NULL,'09:00:00','Expediente',2,NULL),(4,'2020-08-04 00:00:00',NULL,'00:00:00',NULL,NULL,'09:00:00','Expediente',2,NULL),(5,'2020-08-05 00:00:00',NULL,'00:00:00',NULL,NULL,'09:00:00','Expediente',2,NULL),(6,'2020-08-06 00:00:00',NULL,'00:00:00',NULL,NULL,'09:00:00','Expediente',2,NULL),(7,'2020-08-07 00:00:00',NULL,'00:00:00',NULL,NULL,'09:00:00','Expediente',2,NULL),(8,'2020-08-10 00:00:00',NULL,'00:00:00',NULL,NULL,'09:00:00','Expediente',2,NULL),(9,'2020-08-11 00:00:00',NULL,'00:00:00',NULL,NULL,'09:00:00','Expediente',2,NULL),(10,'2020-08-12 00:00:00',NULL,'00:00:00',NULL,NULL,'09:00:00','Expediente',2,NULL),(11,'2020-08-13 00:00:00',NULL,'00:00:00',NULL,NULL,'09:00:00','Expediente',2,NULL),(12,'2020-08-14 00:00:00',NULL,'00:00:00',NULL,NULL,'09:00:00','Expediente',2,NULL),(13,'2020-08-17 00:00:00',NULL,'00:00:00',NULL,NULL,'09:00:00','Expediente',2,NULL),(14,'2020-08-18 00:00:00',NULL,'00:00:00',NULL,NULL,'09:00:00','Expediente',2,NULL),(15,'2020-08-19 00:00:00',NULL,'00:00:00',NULL,NULL,'09:00:00','Expediente',2,NULL),(16,'2020-08-20 00:00:00',NULL,'00:00:00',NULL,NULL,'09:00:00','Expediente',2,NULL),(17,'2020-08-21 00:00:00',NULL,'00:00:00',NULL,NULL,'09:00:00','Expediente',2,NULL),(18,'2020-08-25 00:00:00',NULL,'00:00:00',NULL,NULL,'09:00:00','Expediente',2,NULL),(19,'2020-08-26 00:00:00',NULL,'00:00:00',NULL,NULL,'09:00:00','Expediente',2,NULL),(20,'2020-08-27 00:00:00',NULL,'00:00:00',NULL,NULL,'09:00:00','Expediente',2,NULL),(21,'2020-08-28 00:00:00',NULL,'00:00:00',NULL,NULL,'09:00:00','Expediente',2,NULL),(22,'2020-08-31 00:00:00',NULL,'00:00:00',NULL,NULL,'09:00:00','Expediente',2,NULL),(23,'2020-09-01 00:00:00',NULL,'00:00:00',NULL,NULL,'09:00:00','Expediente',2,NULL),(24,'2020-09-02 00:00:00',NULL,'00:00:00',NULL,NULL,'09:00:00','Expediente',2,NULL),(25,'2020-09-03 00:00:00',NULL,'00:00:00',NULL,NULL,'09:00:00','Expediente',2,NULL),(26,'2020-09-04 00:00:00',NULL,'00:00:00',NULL,NULL,'09:00:00','Expediente',2,NULL),(27,'2020-09-07 00:00:00',NULL,'00:00:00',NULL,NULL,'09:00:00','Expediente',2,NULL),(28,'2020-09-08 00:00:00',NULL,'00:00:00',NULL,NULL,'09:00:00','Expediente',2,NULL),(29,'2020-09-09 00:00:00',NULL,'00:00:00',NULL,NULL,'09:00:00','Expediente',2,NULL),(30,'2020-09-10 00:00:00',NULL,'00:00:00',NULL,NULL,'09:00:00','Expediente',2,NULL),(31,'2020-09-01 00:00:00',NULL,'07:00:00',NULL,NULL,'16:00:00','',7,NULL),(32,'2020-09-02 00:00:00',NULL,'07:00:00',NULL,NULL,'18:00:00','',7,NULL),(33,'2020-09-03 00:00:00',NULL,'07:00:00',NULL,NULL,'18:00:00','',7,NULL),(34,'2020-09-04 00:00:00',NULL,'07:00:00',NULL,NULL,'18:00:00','',7,NULL),(35,'2020-09-07 00:00:00',NULL,'07:00:00',NULL,NULL,'18:00:00','',7,NULL),(36,'2020-09-08 00:00:00',NULL,'07:00:00',NULL,NULL,'18:00:00','',7,NULL),(37,'2020-09-09 00:00:00',NULL,'07:00:00',NULL,NULL,'18:00:00','',7,NULL),(38,'2020-09-10 00:00:00',NULL,'07:00:00',NULL,NULL,'16:00:00','',7,NULL),(39,'2020-09-11 00:00:00',NULL,'07:00:00',NULL,NULL,'18:00:00','',7,NULL),(40,'2020-09-14 00:00:00',NULL,'07:00:00',NULL,NULL,'18:00:00','',7,NULL),(41,'2020-09-15 00:00:00',NULL,'07:00:00',NULL,NULL,'18:00:00','',7,NULL),(42,'2020-09-16 00:00:00',NULL,'07:00:00',NULL,NULL,'16:00:00','',7,NULL),(43,'2020-09-17 00:00:00',NULL,'07:00:00',NULL,NULL,'18:00:00','',7,NULL),(44,'2020-09-18 00:00:00',NULL,'07:00:00',NULL,NULL,'18:00:00','',7,NULL),(45,'2020-09-21 00:00:00',NULL,'07:00:00',NULL,NULL,'18:00:00','',7,NULL),(46,'2020-09-22 00:00:00',NULL,'07:00:00',NULL,NULL,'16:00:00','',7,NULL),(47,'2020-09-23 00:00:00',NULL,'07:00:00',NULL,NULL,'18:00:00','',7,NULL),(48,'2020-09-24 00:00:00',NULL,'07:00:00',NULL,NULL,'18:00:00','',7,NULL),(49,'2020-09-25 00:00:00',NULL,'07:00:00',NULL,NULL,'18:00:00','Teste da turma',7,NULL),(50,'2020-09-28 00:00:00',NULL,'07:00:00',NULL,NULL,'16:00:00','',7,NULL),(51,'2020-09-29 00:00:00',NULL,'07:00:00',NULL,NULL,'18:00:00','',7,NULL),(52,'2020-09-30 00:00:00',NULL,'07:00:00',NULL,NULL,'18:00:00','',7,NULL),(53,'2020-09-01 00:00:00',NULL,'09:00:00',NULL,NULL,'16:00:00','',12,NULL),(54,'2020-09-02 00:00:00',NULL,'09:00:00',NULL,NULL,'18:00:00','',12,NULL),(55,'2020-09-03 00:00:00',NULL,'09:00:00',NULL,NULL,'18:00:00','',12,NULL),(56,'2020-09-04 00:00:00',NULL,'09:00:00',NULL,NULL,'18:00:00','',12,NULL),(57,'2020-09-07 00:00:00',NULL,'09:00:00',NULL,NULL,'18:00:00','',12,NULL),(58,'2020-09-08 00:00:00',NULL,'09:00:00',NULL,NULL,'18:00:00','',12,NULL),(59,'2020-09-09 00:00:00',NULL,'09:00:00',NULL,NULL,'18:00:00','',12,NULL),(60,'2020-09-10 00:00:00',NULL,'09:00:00',NULL,NULL,'16:00:00','',12,NULL),(61,'2020-09-11 00:00:00',NULL,'09:00:00',NULL,NULL,'18:00:00','',12,NULL),(62,'2020-09-14 00:00:00',NULL,'09:00:00',NULL,NULL,'18:00:00','',12,NULL),(63,'2020-09-15 00:00:00',NULL,'09:00:00',NULL,NULL,'18:00:00','Correcao de prova',12,NULL),(64,'2020-09-16 00:00:00',NULL,'09:00:00',NULL,NULL,'16:00:00','',12,NULL),(65,'2020-09-17 00:00:00',NULL,'09:00:00',NULL,NULL,'18:00:00','',12,NULL),(66,'2020-09-18 00:00:00',NULL,'09:00:00',NULL,NULL,'18:00:00','',12,NULL),(67,'2020-09-21 00:00:00',NULL,'09:00:00',NULL,NULL,'18:00:00','',12,NULL),(68,'2020-09-22 00:00:00',NULL,'09:00:00',NULL,NULL,'16:00:00','',12,NULL),(69,'2020-09-23 00:00:00',NULL,'09:00:00',NULL,NULL,'18:00:00','',12,NULL),(70,'2020-09-24 00:00:00',NULL,'09:00:00',NULL,NULL,'18:00:00','',12,NULL),(71,'2020-09-25 00:00:00',NULL,'09:00:00',NULL,NULL,'18:00:00','',12,NULL),(72,'2020-09-28 00:00:00',NULL,'09:00:00',NULL,NULL,'16:00:00','',12,NULL),(73,'2020-09-29 00:00:00',NULL,'09:00:00',NULL,NULL,'18:00:00','',12,NULL),(74,'2020-09-30 00:00:00',NULL,'09:00:00',NULL,NULL,'18:00:00','',12,NULL),(75,'2020-09-01 00:00:00',NULL,'07:00:00',NULL,NULL,'18:00:00','',83,NULL),(76,'2020-09-02 00:00:00',NULL,'09:00:00',NULL,NULL,'18:00:00','',83,NULL),(77,'2020-09-03 00:00:00',NULL,'09:00:00',NULL,NULL,'18:00:00','',83,NULL),(78,'2020-09-04 00:00:00',NULL,'09:00:00',NULL,NULL,'18:00:00','',83,NULL),(79,'2020-09-07 00:00:00',NULL,'09:00:00',NULL,NULL,'18:00:00','',83,NULL),(80,'2020-09-08 00:00:00',NULL,'09:00:00',NULL,NULL,'18:00:00','',83,NULL),(81,'2020-09-09 00:00:00',NULL,'07:00:00',NULL,NULL,'20:00:00','Testing SW',83,NULL),(82,'2020-09-10 00:00:00',NULL,'07:00:00',NULL,NULL,'20:00:00','',83,NULL),(83,'2020-09-11 00:00:00',NULL,'07:00:00',NULL,NULL,'18:00:00','',83,NULL),(84,'2020-09-14 00:00:00',NULL,'07:00:00',NULL,NULL,'18:00:00','',83,NULL),(85,'2020-09-15 00:00:00',NULL,'07:00:00',NULL,NULL,'18:00:00','',83,NULL),(86,'2020-09-16 00:00:00',NULL,'09:00:00',NULL,NULL,'20:00:00','Course A+W',83,NULL),(87,'2020-09-17 00:00:00',NULL,'09:00:00',NULL,NULL,'20:00:00','Course A+W',83,NULL),(88,'2020-09-18 00:00:00',NULL,'09:00:00',NULL,NULL,'18:00:00','',83,NULL),(89,'2020-09-21 00:00:00',NULL,'09:00:00',NULL,NULL,'20:00:00','Testing SW',83,NULL),(90,'2020-09-22 00:00:00',NULL,'09:00:00',NULL,NULL,'18:00:00','',83,NULL),(91,'2020-09-23 00:00:00',NULL,'09:00:00',NULL,NULL,'18:00:00','',83,NULL),(92,'2020-09-24 00:00:00',NULL,'09:00:00',NULL,NULL,'18:00:00','',83,NULL),(93,'2020-09-25 00:00:00',NULL,'09:00:00',NULL,NULL,'18:00:00','',83,NULL),(94,'2020-09-28 00:00:00',NULL,'09:00:00',NULL,NULL,'18:00:00','',83,NULL),(95,'2020-09-29 00:00:00',NULL,'07:00:00',NULL,NULL,'18:00:00','',83,NULL),(96,'2020-09-30 00:00:00',NULL,'07:00:00',NULL,NULL,'18:00:00','',83,NULL);
/*!40000 ALTER TABLE `reg_jornada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setor`
--

DROP TABLE IF EXISTS `setor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `centro_custo` varchar(255) DEFAULT NULL,
  `nome_setor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setor`
--

LOCK TABLES `setor` WRITE;
/*!40000 ALTER TABLE `setor` DISABLE KEYS */;
INSERT INTO `setor` VALUES (1,'AA-99','MASTER SETOR'),(2,'AA-0000','SETOR ADMINISTRATIVO'),(3,'TI-0001','TI'),(4,'RH-0001','RECURSOS HUMANOS'),(5,'JU-0001','JURIDICO'),(6,'PFE-0001','ENSINO FUNDAMENTAL'),(7,'PFE-0002','ENSINO MEDIO'),(8,'PFE-0003','ENSINO SUPERIOR'),(9,'616028-7535','Tech Support'),(10,'927693-5146','Accounting'),(11,'355386-0994','Human Resources'),(12,'913890-2698','Accounting'),(13,'307110-9031','Customer Service'),(14,'782273-7255','Public Relations'),(15,'747695-2762','Quality Assurance'),(16,'287615-5629','Accounting'),(17,'358382-1628','Sales and Marketing'),(18,'194211-8645','Public Relations'),(19,'964702-5221','Sales and Marketing'),(20,'617393-9767','Research and Development'),(21,'355295-2636','Accounting'),(22,'424740-4900','Media Relations'),(23,'874280-0918','Media Relations'),(24,'795903-0268','Quality Assurance'),(25,'495733-9759','Payroll'),(26,'954659-1513','Customer Relations'),(27,'057339-8005','Asset Management'),(28,'693515-9845','Research and Development'),(29,'777409-8458','Public Relations'),(30,'544790-0928','Tech Support'),(31,'173186-3674','Finances'),(32,'556308-3186','Human Resources'),(33,'975514-3626','Tech Support'),(34,'096597-2912','Tech Support'),(35,'046780-0488','Finances'),(36,'994775-8794','Customer Relations'),(37,'742232-3829','Customer Service'),(38,'007591-0356','Tech Support'),(39,'089758-7184','Quality Assurance'),(40,'352555-7389','Accounting'),(41,'446033-1145','Human Resources'),(42,'446926-8173','Legal Department'),(43,'412641-2701','Accounting'),(44,'252282-5781','Research and Development'),(45,'785498-6457','Accounting'),(46,'273256-2877','Customer Service'),(47,'758799-5973','Quality Assurance'),(48,'079931-7367','Tech Support'),(49,'272857-6311','Payroll'),(50,'588753-6190','Human Resources'),(51,'258222-7019','Quality Assurance'),(52,'528455-3830','Payroll'),(53,'318138-5703','Customer Relations'),(54,'765326-3355','Tech Support');
/*!40000 ALTER TABLE `setor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `situacao_funcionario`
--

DROP TABLE IF EXISTS `situacao_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `situacao_funcionario` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `data_inicio_afastamento` datetime DEFAULT NULL,
  `dias_afastado` bigint(20) DEFAULT NULL,
  `id_funcionario` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKoflylakie9chuvcawhy1yopqe` (`id_funcionario`),
  CONSTRAINT `FKoflylakie9chuvcawhy1yopqe` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `situacao_funcionario`
--

LOCK TABLES `situacao_funcionario` WRITE;
/*!40000 ALTER TABLE `situacao_funcionario` DISABLE KEYS */;
INSERT INTO `situacao_funcionario` VALUES (1,'1996-05-02 00:00:00',20,109),(2,'1997-09-02 00:00:00',20,109),(3,'1998-07-03 00:00:00',14,96),(4,'2018-07-21 00:00:00',10,59),(5,'2020-10-03 00:00:00',5,42),(6,'2018-11-19 00:00:00',30,8),(7,'1992-04-25 00:00:00',30,24),(8,'1995-04-11 00:00:00',30,24),(9,'1997-06-27 00:00:00',25,34),(10,'2006-11-10 00:00:00',24,35),(11,'2011-12-14 00:00:00',14,35),(12,'1996-12-24 00:00:00',19,101),(13,'2000-10-20 00:00:00',12,48),(14,'2012-11-15 00:00:00',6,101),(15,'2008-06-18 00:00:00',18,88),(16,'2012-10-19 00:00:00',19,97),(17,'2000-10-12 00:00:00',17,78),(18,'2006-12-13 00:00:00',6,88),(19,'1994-05-22 00:00:00',12,51),(20,'2011-02-17 00:00:00',1,13),(21,'2000-05-12 00:00:00',15,44),(22,'1994-12-03 00:00:00',1,10),(23,'2007-04-08 00:00:00',4,3),(24,'2012-10-26 00:00:00',6,36),(25,'2017-05-14 00:00:00',5,74),(26,'1995-05-27 00:00:00',19,17),(27,'1993-09-24 00:00:00',8,54),(28,'1997-08-30 00:00:00',20,32),(29,'2009-09-14 00:00:00',9,82),(30,'1993-02-19 00:00:00',5,50),(31,'2005-06-11 00:00:00',5,30),(32,'2006-01-09 00:00:00',20,46),(33,'2003-05-30 00:00:00',11,106),(34,'1992-02-22 00:00:00',11,101),(35,'2005-11-08 00:00:00',4,17),(36,'1992-07-05 00:00:00',4,44),(37,'1996-03-17 00:00:00',17,73),(38,'2020-04-05 00:00:00',7,103),(39,'1996-09-12 00:00:00',3,36),(40,'1992-08-15 00:00:00',10,68),(41,'1991-11-28 00:00:00',14,38),(42,'1991-01-02 00:00:00',3,86),(43,'2000-12-06 00:00:00',18,100),(44,'2008-09-21 00:00:00',16,22),(45,'2003-03-13 00:00:00',19,92),(46,'1999-01-25 00:00:00',4,107),(47,'2009-10-23 00:00:00',19,17),(48,'2009-07-19 00:00:00',7,42),(49,'2019-09-01 00:00:00',17,57),(50,'1994-10-21 00:00:00',20,51);
/*!40000 ALTER TABLE `situacao_funcionario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-11 20:47:30
