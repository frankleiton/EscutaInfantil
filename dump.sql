-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: escuta_infantil
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brainfits`
--

DROP TABLE IF EXISTS `brainfits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brainfits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `confirmation` text,
  `afirmation` tinyint(1) DEFAULT NULL,
  `justification` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brainfits`
--

LOCK TABLES `brainfits` WRITE;
/*!40000 ALTER TABLE `brainfits` DISABLE KEYS */;
INSERT INTO `brainfits` VALUES (1,'Uma das causas mais comuns de perda auditiva do tipo condutiva é a rolha de cera e em alguns casos ela pode ser evitada apenas com a limpeza correta da orelha.',1,'A rolha de cera pode ser causada pelo uso do cotonete, que ao contrário do que se pensa, não limpa a orelha. O cotonete acaba empurrando a cera e formando uma rolha rígida que impede a passagem livre do som. Para mais informações: Aba de Dúvidas','2021-08-17 12:00:00','2021-08-17 12:00:00',NULL),(2,'Criança de 2 anos, não consegue escutar sons fracos e não localiza os sons, mas obteve resultado “passa” (normal) na triagem auditiva neonatal. Neste caso, não é preciso procurar uma avaliação audiológica completa.',0,'Existem perdas auditivas que são adquiridas, mesmo com resultado normal na triagem auditiva. Sempre que suspeitarem que a criança não ouve bem, procure um atendimento. Para mais informações: Aba de Dúvidas;','2021-08-17 12:00:00','2021-08-17 12:00:00',NULL),(3,'Criança com 3 anos, a família percebe que ela não fala nenhuma palavra e nem reage para os sons. É importante que procure uma avaliação audiológica completa.',1,'Aos 3 anos é esperado que a criança fale quase todos os fonemas da língua e já forme frases. Pode ser uma perda auditiva! Para mais informações: Aba dos marcos do desenvolvimento','2021-08-17 12:00:00','2021-08-17 12:00:00',NULL),(4,'A maneira correta de limpar a orelha é com o “cotonete”.',0,'A cera não é sujeira, ela é proteção! Lembre-se que a orelha possui um sistema autolimpante, a forma correta de limpar o excesso de cerúmen que fica no pavilhão auricular é com uma toalha úmida após o banho. Para mais informações: Aba de Dúvidas;','2021-08-17 12:00:00','2021-08-17 12:00:00',NULL),(5,'Crianças que apresentam deficiência auditiva de grau profundo têm possibilidade de adquirir a linguagem oral caso o diagnóstico e a intervenção sejam precoces.',1,'A possibilidade de desenvolver a linguagem em crianças com perda auditiva está totalmente ligada ao tempo que ela fica sem ouvir. O diagnóstico e o início do tratamento o mais rápido possível são fundamentais. Para mais informações: Aba de Dúvidas; ','2021-08-17 12:00:00','2021-08-17 12:00:00',NULL),(6,'É normal crianças com 4 meses de vida não se assustarem com sons fortes, não reagir à voz dos pais e não ter atenção aos sons ambientais. Só se torna preocupante depois do primeiro ano de vida. ',0,'Aos 4 meses a criança já deve reagir demonstrando atenção aos sons de fala e ambientais e pode se assustar com sons fortes. Para mais informações: Aba dos Marcos do Desenvolvimento da audição;','2021-08-17 12:00:00','2021-08-17 12:00:00',NULL),(7,'Se a família está preocupada com a audição da criança de 12 meses por relatarem que às vezes ela responde ao som e outras vezes não, esta criança precisa de uma avaliação da audição imediata.',1,'Algumas perdas auditivas têm como característica a flutuação na audição, ou seja, em alguns momentos escutam melhor e em outros pior. A avaliação audiológica é crucial para definir a existência ou não de perda auditiva. Para mais informações: Aba de Dúvidas;','2021-08-17 12:00:00','2021-08-17 12:00:00',NULL),(8,'Criança, 2 anos, não realizou a triagem auditiva neonatal, mas a família não tem queixa quanto a audição nem com a linguagem. Neste caso, não será necessário buscar um atendimento para fazer a triagem.',1,' A triagem é realizada somente no primeiro mês de vida. A procura para avaliação auditiva completa deverá ocorrer somente se a família apresenta queixas ou se for constatado atraso no desenvolvimento por meio do questionário de acompanhamento. Para mais informações: Aba de Dúvidas;','2021-08-17 12:00:00','2021-08-17 12:00:00',NULL),(9,'Criança de 3 meses de idade, obteve resultado “passa” (normal) na triagem auditiva neonatal e não possui indicadores de risco para deficiência auditiva, sendo assim, não é que os pais acompanhem o desenvolvimento da criança com o questionário.',0,'Existem perdas auditivas que se manifestam depois do nascimento mesmo quando não há indicadores de risco, portanto, é importante acompanhar o desenvolvimento da audição e da linguagem de todas as crianças. Para mais informações: Aba de Dúvidas;','2021-08-17 12:00:00','2021-08-17 12:00:00',NULL),(10,'Algumas intercorrências no período pré, peri e pós-natal podem influenciar na saúde auditiva da criança, sendo considerados indicadores de risco para a deficiência auditiva. Porém, mesmo com o adequado pré-natal, não é possível prevenir perda auditiva.',0,'Cerca de 60% das causas de perdas auditivas são evitáveis e o pré-natal é peça chave para auxiliar na prevenção destas infecções. Para mais informações: Aba de Dúvidas.','2021-08-17 12:00:00','2021-08-17 12:00:00',NULL),(11,'Preciso me preocupar com o acompanhamento do desenvolvimento da audição e da linguagem do meu filho somente se ele possuir risco para a deficiência auditiva ou se não realizou a triagem auditiva neonatal.',0,'O acompanhamento do desenvolvimento da audição e linguagem deve ser realizado com todas as crianças, pois, crianças sem risco ou com resultado normal na triagem auditiva também podem vir a apresentar perda auditiva. Para mais informações: Aba de Dúvidas;','2021-08-17 12:00:00','2021-08-17 12:00:00',NULL),(12,'Criança de 1 mês de idade obteve o resultado “falha” (alterado) em uma das orelhas na triagem auditiva neonatal. Isto significa que a criança possui uma perda auditiva e que é necessário o uso de aparelho auditivo para que seja possível o desenvolvimento da linguagem.',0,'resultado da triagem não define o diagnóstico audiológico da criança, sendo necessária uma avaliação audiológica completa para definir o diagnóstico, e se necessário, iniciar o tratamento. Esta família deve agendar imediatamente a avaliação. Para mais informações: Aba de Dúvidas','2021-08-17 12:00:00','2021-08-17 12:00:00',NULL),(13,'Se seu filho tem 8 meses de idade e você acha que ele não escuta bem, é importante realizar alguns testes em casa e esperar mais um mês para confirmar a queixa e, então, procurar uma avaliação.',0,'Para a questão “seu filho ouve bem?” mediante a obtenção da primeira resposta “não” já deve-se agendar uma avaliação audiológica imediata para a criança. Para mais informações: Aba de Dúvidas;','2021-08-17 12:00:00','2021-08-17 12:00:00',NULL),(14,'Rubéola congênita e Meningite bacteriana são considerados indicadores de risco para deficiência auditiva e podem ser prevenidos com orientação e adequada imunização.',1,'Dentre os diversos indicadores de risco, a Rubéola congênita e a Meningite bacteriana são dois exemplos que podem ser prevenidos orientando a população quanto a importância da imunização. Para mais informações: Aba Dúvidas.','2021-08-17 12:00:00','2021-08-17 12:00:00',NULL),(15,'Quando uma criança possui resultado “normal” na Triagem Auditiva Neonatal, significa que ela não terá perda auditiva.',0,'A triagem auditiva não exclui a possibilidade da criança adquirir uma perda posteriormente, ou ainda, ela pode ter uma perda auditiva por alteração em alguma estrutura não avaliada pelo teste realizado na maternidade. Para mais informações: Aba Dúvidas.','2021-08-17 12:00:00','2021-08-17 12:00:00',NULL),(16,'Crianças cujos pais apresentam deficiência auditiva também apresentarão deficiência auditiva por causa genética. ',0,'O histórico de deficiência auditiva na família é um indicador de risco, mas não significa que a criança apresentará perda auditiva. Por isso é fundamental o acompanhamento e a avaliação quando necessário. Para mais informações: Aba de Dúvidas;','2021-08-17 12:00:00','2021-08-17 12:00:00',NULL),(17,'Apesar de não ser possível prevenir a perda auditiva na infância, existe tratamento ',0,'Cerca de 60% das causas de perdas auditivas na infância são evitáveis e para os casos que não foi possível prevenir, existe sim o tratamento que deve ser iniciado o quanto antes. Para mais informações: Aba de Dúvidas.','2021-08-17 12:00:00','2021-08-17 12:00:00',NULL),(18,'O desenvolvimento auditivo possui padrões diferentes para cada faixa etária. Virar a cabeça para localizar o som apresentado ao seu lado é um comportamento esperado para crianças acima de um ano. ',0,'Por volta dos 3 meses de idade, o bebê já deve começar a voltar a cabeça levemente quando escuta algum som e aos 6 meses a habilidade de localização lateral já deve estar adquirida. Para mais informações: Aba de Marcos;','2021-08-17 12:00:00','2021-08-17 12:00:00',NULL),(19,'Se meu filho apresenta indicadores de risco para deficiência auditiva, mas obteve resultado “normal” na triagem auditiva, ele não precisará fazer exames audiológicos adicionais.',0,'Para crianças que apresentam indicadores de risco para deficiência auditiva, mesmo com resultado normal na triagem auditiva é indicado a realização de uma avaliação audiológica completa para monitoramento. Para mais informações: Aba de Dúvidas.','2021-08-17 12:00:00','2021-08-17 12:00:00',NULL),(20,'A maneira correta de limpar a orelha é com uma toalha úmida após o banho. (Verdadeiro)',1,'A cera não é sujeira, ela é proteção! Lembre-se que a orelha possui um sistema autolimpante, a forma correta de limpar o excesso de cerúmen que fica no pavilhão auricular é com uma toalha úmida após o banho. Para mais informações: Aba de Dúvidas.;','2021-08-17 12:00:00','2021-08-17 12:00:00',NULL),(21,'Crianças que apresentam deficiência auditiva de grau profundo não têm possibilidade de adquirir a linguagem oral mesmo se o diagnóstico e a intervenção forem precoces.',0,'A possibilidade de desenvolver a linguagem em crianças com perda auditiva está totalmente ligada ao tempo que ela fica sem ouvir. O diagnóstico e o início do tratamento o mais rápido possível são fundamentais. Para mais informações: Aba de Dúvidas.;','2021-08-17 12:00:00','2021-08-17 12:00:00',NULL),(22,'Criança com 1 ano de idade não consegue ficar de pé com apoio e não aponta para objetos. É importante que os pais conversem com o pediatra da criança. ',1,'A maioria das crianças com 1 ano de idade pode ficar de pé sozinho e até dar alguns passos sem se apoiar. Qualquer sinal de atraso no desenvolvimento deve ser comunicado ao pediatra e buscar uma avaliação. Para mais informações: Aba de Dúvidas.;','2021-08-17 12:00:00','2021-08-17 12:00:00',NULL),(23,'É comum crianças com 1 ano e meio não conseguir imitar gestos, acenar “tchau” e executar ordens simples como “pegue o brinquedo”.',0,'A maioria das crianças com 1 ano de idade já imita, faz gestos e segue ordens simples. Se a criança com 1 ano e meio não demonstra estes comportamentos é importante uma avaliação. Para mais informações: Aba de Dúvidas.;','2021-08-17 12:00:00','2021-08-17 12:00:00',NULL),(24,'Ler diariamente com seu filho, mesmo com 1 ano de idade, pode ajudar no desenvolvimento ',1,'A leitura estimula o desenvolvimento em qualquer idade. Para crianças de 1 ano é recomendado que os pais leiam diariamente, façam com que a criança vire as páginas e descrevam as imagens. Para mais informações: Aba de Dúvidas.;','2021-08-17 12:00:00','2021-08-17 12:00:00',NULL),(25,'Conversar com a criança sobre o que você está fazendo. Por exemplo, “mamãe está lavando seus pés com o sabonete”, pode atrapalhar o desenvolvimento espontâneo.',0,'Converse com o seu filho todos os dias, narrar o que está fazendo durante a rotina de banho, alimentação e nas brincadeiras é uma excelente forma de estimular o desenvolvimento da criança. Para mais informações: Aba de Dúvidas.;','2021-08-17 12:00:00','2021-08-17 12:00:00',NULL),(26,'Durante o desenvolvimento da criança é normal perderem habilidades que já tinham por um período, como falar algumas palavras ou andar.',0,'Se a criança perde habilidades que já teve é um sinal de que algo no desenvolvimento dela pode não estar adequado. É importante conversar com o pediatra e realizar uma avaliação da audição imediata. Para mais informações: Aba de Dúvidas.;','2021-08-17 12:00:00','2021-08-17 12:00:00',NULL),(27,'A criança que brinca com celular, tablet ou computador na maior parte do dia aprende a falar melhor. ',0,'O uso excessivo de telas pode atrapalhar o desenvolvimento das crianças. Converse, leia, cante e brinque com seu filho todos os dias. Para mais informações: Aba de Dúvidas.;','2021-08-17 12:00:00','2021-08-17 12:00:00',NULL),(28,'Quando perguntamos algo para uma criança é importante ajudarmos com a resposta o mais rápido possível para que ela não fique frustrada.',0,'Quando perguntamos algo para uma criança é preciso dar um tempo para ela responder antes de ajudarmos com a resposta, isto favorece o desenvolvimento. Para mais informações: Aba de Dúvidas.;','2021-08-17 12:00:00','2021-08-17 12:00:00',NULL),(29,'As crianças aprendem a se comunicar observando e imitando as pessoas com quem convivem.',1,'As pessoas que convivem com a criança são verdadeiros exemplos. Por isso é importante sempre fornecer modelos adequados. Para mais informações: Aba de Dúvidas.;','2021-08-17 12:00:00','2021-08-17 12:00:00',NULL),(30,'Conversar, ler, cantar e brincar com a criança todos os dias é importante para o desenvolvimento geral. ',1,'Para cada idade você pode fazer brincadeiras diferentes, mas conversar, ler, cantar e brincar pode ajudar seu filho a aprender e crescer em qualquer idade.','2021-08-17 12:00:00','2021-08-17 12:00:00',NULL);
/*!40000 ALTER TABLE `brainfits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child_irdas`
--

DROP TABLE IF EXISTS `child_irdas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `child_irdas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `reference` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `child_id` int DEFAULT NULL,
  `irda_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `child_id` (`child_id`),
  KEY `irda_id` (`irda_id`),
  CONSTRAINT `child_irdas_ibfk_1` FOREIGN KEY (`child_id`) REFERENCES `children` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `child_irdas_ibfk_2` FOREIGN KEY (`irda_id`) REFERENCES `irdas` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child_irdas`
--

LOCK TABLES `child_irdas` WRITE;
/*!40000 ALTER TABLE `child_irdas` DISABLE KEYS */;
INSERT INTO `child_irdas` VALUES (1,'insert_new','2021-08-02 00:18:19','2021-08-02 00:18:19',NULL,NULL,24),(2,'insert_new','2021-08-19 14:02:53','2021-08-19 14:02:53',NULL,2,1),(3,'insert_new','2021-08-19 14:02:53','2021-08-19 14:02:53',NULL,2,3);
/*!40000 ALTER TABLE `child_irdas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `children`
--

DROP TABLE IF EXISTS `children`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `children` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `date_nasc` datetime DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `name_resp` varchar(255) NOT NULL,
  `tan_realizou` varchar(255) NOT NULL,
  `tan_resultado` varchar(255) NOT NULL,
  `tan_tipo_exame` varchar(255) NOT NULL,
  `conduta` varchar(255) NOT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `long` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpf` (`cpf`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `children_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `parents` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `children`
--

LOCK TABLES `children` WRITE;
/*!40000 ALTER TABLE `children` DISABLE KEYS */;
INSERT INTO `children` VALUES (2,'Criança 01','444.444.444-22','2020-06-19 14:02:01','Rual tal','84 8 4888-8888','Parente 01','N/A','N/A','N/A','Conduta 01',NULL,NULL,'2021-08-19 14:02:53','2021-08-19 14:02:53',NULL,8);
/*!40000 ALTER TABLE `children` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `state_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'NATAL','2020-06-16 00:00:00','2020-06-16 00:00:00',NULL,1),(2,'BAURU','2020-06-16 00:00:00','2020-06-16 00:00:00',NULL,2),(3,'RIBEIRÃO PRETO ','2020-06-16 00:00:00','2020-06-16 00:00:00',NULL,2);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frequentlyquestions`
--

DROP TABLE IF EXISTS `frequentlyquestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frequentlyquestions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `questions` varchar(255) DEFAULT NULL,
  `reply` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frequentlyquestions`
--

LOCK TABLES `frequentlyquestions` WRITE;
/*!40000 ALTER TABLE `frequentlyquestions` DISABLE KEYS */;
INSERT INTO `frequentlyquestions` VALUES (2,'Duvida teste','Resposta da duvida teste','2022-03-30 01:38:19','2022-03-30 01:38:19',NULL);
/*!40000 ALTER TABLE `frequentlyquestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `healthcenters`
--

DROP TABLE IF EXISTS `healthcenters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `healthcenters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description_date` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `healthcenters`
--

LOCK TABLES `healthcenters` WRITE;
/*!40000 ALTER TABLE `healthcenters` DISABLE KEYS */;
INSERT INTO `healthcenters` VALUES (1,'Otomed - Natal','R. Ciro Monteiro, 1187 - Tirol, Natal - RN, 59020-340\nSegunda a sexta das 8:00 as 18:00. Telefone: (84) 3211-1236.','2021-06-20 14:00:09','2021-07-04 17:12:57',NULL),(2,'SUVAG - Natal','Av. Lima e Silva, 966 - Nossa Sra. de Nazaré, Natal - RN, 59062-300. Atendimentos: Segunda a sexta das 7:30 as 16:00. Telefone: (84) 3605-0303.','2021-06-21 13:05:08','2021-07-04 17:18:58',NULL),(3,'CER - Guamaré ','R. Manoel Lucas de Miranda, 6-48, Guamaré - RN, 59598-000\nTelefones: (84) 3525-2383 / (84) 99962-0477','2021-07-04 17:09:22','2021-07-04 17:10:34',NULL),(4,'CER - Pau dos Ferros','AV. da Indepêndencia S/N - Pau dos Ferros / RN - CEP: 59900-000\nTelefone: (84) 3351-2205','2021-07-04 17:10:24','2021-07-04 17:10:24',NULL),(5,'Otocentro - Natal','HC Plaza - R. Cel. Auris Coelho, 285 - 5 andar - Lagoa Nova, Natal - RN, 59075-050\nTelefones: (84) 4009-2000 / (84) 3346-2041','2021-07-04 17:11:35','2021-07-04 17:11:35',NULL),(6,'Centro de Educação e Pesquisa em Saúde Anita Garibaldi (CEPS) - Macaíba','Rod. RN-160, 2010 (KM 1,5 Distrito de, Macaíba - RN, 59280-000. \nAtendimentos: Seg - sex das 08:00 as 17:00\nTelefone: (84) 3271-1064','2021-07-04 17:14:32','2021-07-04 17:14:32',NULL),(7,'Clínica Escola de Fonoaudiologia - UFRN (Natal)','Praia do Meio, Natal - RN.\nAtendimentos: seg - quin 7:30 as 16:00 (marcação) \nTelefone: (84) 3342-9757 ','2021-07-04 17:17:21','2021-07-04 17:17:21',NULL),(8,'CER - São José de Mipibu',' Av. Pedro Ferreira - Manoel Alves de Souza, São José de Mipibu - RN, 59162-000.\nAtendimentos: seg-sex 08:00 as 17:00\nTelefone: (84)3273-3359','2021-07-04 17:18:25','2021-07-04 17:18:37',NULL);
/*!40000 ALTER TABLE `healthcenters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `irdas`
--

DROP TABLE IF EXISTS `irdas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `irdas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `irdas` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irdas`
--

LOCK TABLES `irdas` WRITE;
/*!40000 ALTER TABLE `irdas` DISABLE KEYS */;
INSERT INTO `irdas` VALUES (1,'Preocupação dos pais','2021-01-02 02:48:29','2021-01-02 02:48:29',NULL),(2,'Perda auditiva na família','2021-01-02 02:48:29','2021-01-02 02:48:29',NULL),(3,'UTI neonatal > 5 dias','2021-01-02 02:48:29','2021-01-02 02:48:29',NULL),(4,'Hiperbilirrubinemia com transfusão sanguínea','2021-01-02 02:48:29','2021-01-02 02:48:29',NULL),(5,'Medicamento ototóxico > 5 dias','2021-01-02 02:48:29','2021-01-02 02:48:29',NULL),(6,'Encefalopatia hipóxica-isquêmica','2021-01-02 02:48:29','2021-01-02 02:48:29',NULL),(7,'Ventilação mecânica','2021-01-02 02:48:29','2021-01-02 02:48:29',NULL),(8,'Toxoplasmose','2021-01-02 02:48:29','2021-01-02 02:48:29',NULL),(9,'Rubéola','2021-01-02 02:48:29','2021-01-02 02:48:29',NULL),(10,'Citomegalovírus','2021-01-02 02:48:29','2021-01-02 02:48:29',NULL),(11,'Herpes ','2021-01-02 02:48:29','2021-01-02 02:48:29',NULL),(12,'Sífilis','2021-01-02 02:48:29','2021-01-02 02:48:29',NULL),(13,'Zika vírus na gestação','2021-01-02 02:48:29','2021-01-02 02:48:29',NULL),(14,'Hidrocefalia e/ou microcefalia','2021-01-02 02:48:29','2021-01-02 02:48:29',NULL),(15,'Síndromes genéticas','2021-01-02 02:48:29','2021-01-02 02:48:29',NULL),(16,'Sarampo','2021-01-02 02:48:29','2021-01-02 02:48:29',NULL),(17,'Meningite ','2021-01-02 02:48:29','2021-01-02 02:48:29',NULL),(18,'Varicela','2021-01-02 02:48:29','2021-01-02 02:48:29',NULL),(19,'Traumatismo craniano.','2021-01-02 02:48:29','2021-01-02 02:48:29',NULL),(20,'Quimioterapia','2021-01-02 02:48:29','2021-01-02 02:48:29',NULL),(21,'Consanguinidade de 1º grau','2021-01-02 02:48:29','2021-01-02 02:48:29',NULL),(22,'Anóxia perinatal grave','2021-01-02 02:48:29','2021-01-02 02:48:29',NULL),(23,'Peso ao nascer < 1.500 gramas','2021-01-02 02:48:29','2021-01-02 02:48:29',NULL),(24,'Nascimento pré-termo','2021-01-02 02:48:29','2021-01-02 02:48:29',NULL);
/*!40000 ALTER TABLE `irdas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_acess_parents`
--

DROP TABLE IF EXISTS `log_acess_parents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_acess_parents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `log_acess_parents_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `parents` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_acess_parents`
--

LOCK TABLES `log_acess_parents` WRITE;
/*!40000 ALTER TABLE `log_acess_parents` DISABLE KEYS */;
INSERT INTO `log_acess_parents` VALUES (1,'2021-08-01 22:48:57','2021-08-01 22:48:57',NULL,NULL),(2,'2021-08-01 22:49:04','2021-08-01 22:49:04',NULL,NULL),(3,'2021-08-01 22:49:07','2021-08-01 22:49:07',NULL,NULL),(4,'2021-08-01 23:54:57','2021-08-01 23:54:57',NULL,NULL),(5,'2021-08-01 23:55:43','2021-08-01 23:55:43',NULL,NULL),(6,'2021-08-01 23:55:46','2021-08-01 23:55:46',NULL,NULL),(7,'2021-08-01 23:56:41','2021-08-01 23:56:41',NULL,NULL),(8,'2021-08-01 23:57:34','2021-08-01 23:57:34',NULL,NULL),(9,'2021-08-01 23:59:47','2021-08-01 23:59:47',NULL,NULL),(10,'2021-08-02 00:07:53','2021-08-02 00:07:53',NULL,NULL),(11,'2021-08-02 00:08:03','2021-08-02 00:08:03',NULL,NULL),(12,'2021-08-02 00:08:20','2021-08-02 00:08:20',NULL,NULL),(13,'2021-08-02 00:10:05','2021-08-02 00:10:05',NULL,NULL),(14,'2021-08-02 00:10:23','2021-08-02 00:10:23',NULL,NULL),(15,'2021-08-02 00:18:41','2021-08-02 00:18:41',NULL,NULL),(16,'2021-08-02 00:20:55','2021-08-02 00:20:55',NULL,NULL),(17,'2021-08-02 00:22:51','2021-08-02 00:22:51',NULL,NULL),(18,'2021-08-02 00:23:32','2021-08-02 00:23:32',NULL,NULL),(19,'2021-08-02 00:25:29','2021-08-02 00:25:29',NULL,NULL),(20,'2021-08-02 00:25:57','2021-08-02 00:25:57',NULL,NULL),(21,'2021-08-02 00:33:45','2021-08-02 00:33:45',NULL,NULL),(22,'2021-08-02 00:33:56','2021-08-02 00:33:56',NULL,NULL),(23,'2021-08-02 00:34:04','2021-08-02 00:34:04',NULL,NULL),(24,'2021-08-02 00:34:26','2021-08-02 00:34:26',NULL,NULL),(25,'2021-08-02 00:59:44','2021-08-02 00:59:44',NULL,NULL),(26,'2021-08-02 01:00:00','2021-08-02 01:00:00',NULL,NULL),(27,'2021-08-02 01:00:08','2021-08-02 01:00:08',NULL,NULL),(28,'2021-08-02 01:00:38','2021-08-02 01:00:38',NULL,NULL),(29,'2021-08-02 01:00:47','2021-08-02 01:00:47',NULL,NULL),(30,'2021-08-02 01:00:53','2021-08-02 01:00:53',NULL,NULL),(31,'2021-08-02 01:14:08','2021-08-02 01:14:08',NULL,NULL),(32,'2021-08-02 01:14:56','2021-08-02 01:14:56',NULL,NULL),(33,'2021-08-02 01:15:21','2021-08-02 01:15:21',NULL,NULL),(34,'2021-08-02 01:16:06','2021-08-02 01:16:06',NULL,NULL),(35,'2021-08-10 01:14:46','2021-08-10 01:14:46',NULL,NULL),(36,'2021-08-10 01:48:21','2021-08-10 01:48:22',NULL,NULL),(37,'2021-08-10 02:17:40','2021-08-10 02:17:40',NULL,NULL),(38,'2021-08-10 02:22:24','2021-08-10 02:22:24',NULL,NULL),(39,'2021-08-19 14:04:53','2021-08-19 14:04:53',NULL,8),(40,'2021-08-19 14:05:20','2021-08-19 14:05:20',NULL,8),(41,'2021-08-19 16:21:19','2021-08-19 16:21:19',NULL,8),(42,'2021-08-19 16:22:52','2021-08-19 16:22:52',NULL,8),(43,'2021-08-19 16:24:35','2021-08-19 16:24:35',NULL,8),(44,'2021-08-19 16:25:11','2021-08-19 16:25:11',NULL,8),(45,'2021-08-19 16:25:58','2021-08-19 16:25:58',NULL,8),(46,'2021-08-24 11:43:59','2021-08-24 11:43:59',NULL,NULL),(47,'2021-08-24 11:46:04','2021-08-24 11:46:04',NULL,8),(48,'2021-08-24 11:46:44','2021-08-24 11:46:44',NULL,8),(49,'2021-08-24 11:46:46','2021-08-24 11:46:46',NULL,8);
/*!40000 ALTER TABLE `log_acess_parents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parents`
--

DROP TABLE IF EXISTS `parents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `ub_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `city_id` (`city_id`),
  KEY `ub_id` (`ub_id`),
  CONSTRAINT `parents_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `parents_ibfk_2` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `parents_ibfk_3` FOREIGN KEY (`ub_id`) REFERENCES `ubs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parents`
--

LOCK TABLES `parents` WRITE;
/*!40000 ALTER TABLE `parents` DISABLE KEYS */;
INSERT INTO `parents` VALUES (7,'2021-08-19 13:19:48','2021-08-19 13:19:48',NULL,12,1,19),(8,'2021-08-19 14:01:15','2021-08-19 14:01:15',NULL,13,2,125);
/*!40000 ALTER TABLE `parents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'admin','ADMIN','2020-06-16 00:00:00','2020-06-16 00:00:00',NULL),(2,'agent','AGENT','2020-06-16 00:00:00','2020-06-16 00:00:00',NULL);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_questionaries`
--

DROP TABLE IF EXISTS `question_questionaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question_questionaries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `questionary_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `questionary_id` (`questionary_id`),
  CONSTRAINT `question_questionaries_ibfk_1` FOREIGN KEY (`questionary_id`) REFERENCES `questionaries` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_questionaries`
--

LOCK TABLES `question_questionaries` WRITE;
/*!40000 ALTER TABLE `question_questionaries` DISABLE KEYS */;
INSERT INTO `question_questionaries` VALUES (1,'Seu filho ouve bem?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,1),(2,'Seu filho assusta com sons fortes?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,1),(3,'Seu filho ouve bem?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,2),(4,'Seu filho assusta com sons fortes?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,2),(5,'Seu filho ouve bem?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,3),(6,'Seu filho presta atenção ao som?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,3),(7,'Seu filho reconhece a sua voz?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,3),(8,'Seu filho ouve bem?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,4),(9,'Seu filho acalma com sua voz, com música de ninar?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,4),(10,'Seu filho fala vogais como a, u?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,4),(11,'Seu filho ouve bem?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,5),(12,'Seu filho tenta virar a cabeça procurando o som?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,5),(13,'Seu filho fala mais sons que no mês anterior, por exemplo, como fff, oooo ?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,5),(14,'Seu filho ouve bem?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,6),(15,'Seu filho procura os sons?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,6),(16,'Fala vários sons como se quisesse conversar?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,6),(17,'Seu filho ouve bem?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,7),(18,'Seu filho olha quando você chama?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,7),(19,'Fala bababa, mamama querendo conversar?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,7),(20,'Seu filho ouve bem?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,8),(21,'Seu filho reconhece alguns nomes da família?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,8),(22,'Seu filho fala várias sílabas diferentes? Por exemplo: dada, papa.','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,8),(23,'Seu filho ouve bem?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,9),(24,'Vira rapidamente quando chamam?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,9),(25,'Gosta de brincar com brinquedos que fazem barulhos?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,9),(26,'Seu filho ouve bem?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,10),(27,'Compreende quando falam “não”?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,10),(28,'Seu filho ouve bem?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,11),(29,'Tenta imitar os sons que fazem para ele?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,11),(30,'Seu filho ouve bem?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,12),(31,'Dá tchau quando ouve alguém falar tchau?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,12),(32,'Fala enrolado como se estivesse conversando?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,12),(33,'Seu filho ouve bem?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,13),(34,'Fala as primeiras palavras?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,13),(35,'Entende ordens como “cadê” e “dá”?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,13),(36,'Seu filho ouve bem?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,14),(37,'Seu filho ouve bem?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,15),(38,'Seu filho ouve bem?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,16),(39,'Seu filho ouve bem?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,17),(40,'Seu filho ouve bem?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,18),(41,'Seu filho ouve bem?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,19),(42,'Seu filho ouve bem?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,20),(43,'Seu filho ouve bem?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,21),(44,'Seu filho ouve bem?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,22),(45,'Seu filho ouve bem?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,23),(46,'Seu filho ouve bem?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,24),(47,'Seu filho ouve bem?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,25),(48,'Seu filho ouve bem?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,26),(49,'Seu filho ouve bem?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,27),(50,'Seu filho ouve bem?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,28),(51,'Seu filho ouve bem?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,29),(52,'Seu filho ouve bem?','2020-01-01 00:00:00','2020-01-01 00:00:00',NULL,30);
/*!40000 ALTER TABLE `question_questionaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questionaries`
--

DROP TABLE IF EXISTS `questionaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questionaries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `month_application` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questionaries`
--

LOCK TABLES `questionaries` WRITE;
/*!40000 ALTER TABLE `questionaries` DISABLE KEYS */;
INSERT INTO `questionaries` VALUES (1,'1° dia a 30/31 dias de vida',0,'2020-01-01 00:00:00','2020-01-01 00:00:00',NULL),(2,'1° mês',1,'2020-01-01 00:00:00','2020-01-01 00:00:00',NULL),(3,'2° mês',2,'2020-01-01 00:00:00','2020-01-01 00:00:00',NULL),(4,'3° mês',3,'2020-01-01 00:00:00','2020-01-01 00:00:00',NULL),(5,'4° mês',4,'2020-01-01 00:00:00','2020-01-01 00:00:00',NULL),(6,'5° mês',5,'2020-01-01 00:00:00','2020-01-01 00:00:00',NULL),(7,'6° mês',6,'2020-01-01 00:00:00','2020-01-01 00:00:00',NULL),(8,'7° mês',7,'2020-01-01 00:00:00','2020-01-01 00:00:00',NULL),(9,'8° mês',8,'2020-01-01 00:00:00','2020-01-01 00:00:00',NULL),(10,'9° mês',9,'2020-01-01 00:00:00','2020-01-01 00:00:00',NULL),(11,'10° mês',10,'2020-01-01 00:00:00','2020-01-01 00:00:00',NULL),(12,'11° mês',11,'2020-01-01 00:00:00','2020-01-01 00:00:00',NULL),(13,'12° mês',12,'2021-01-01 00:00:00','2021-01-01 00:00:00',NULL),(14,'13° mês',13,'2021-01-01 00:00:00','2021-01-01 00:00:00',NULL),(15,'14° mês',14,'2021-01-01 00:00:00','2021-01-01 00:00:00',NULL),(16,'15° mês',15,'2021-01-01 00:00:00','2021-01-01 00:00:00',NULL),(17,'16° mês',16,'2021-01-01 00:00:00','2021-01-01 00:00:00',NULL),(18,'17° mês',17,'2021-01-01 00:00:00','2021-01-01 00:00:00',NULL),(19,'18° mês',18,'2020-01-01 00:00:00','2020-01-01 00:00:00',NULL),(20,'19° mês',19,'2021-01-01 00:00:00','2021-01-01 00:00:00',NULL),(21,'20° mês',20,'2021-01-01 00:00:00','2021-01-01 00:00:00',NULL),(22,'21° mês',21,'2021-01-01 00:00:00','2021-01-01 00:00:00',NULL),(23,'22° mês',22,'2021-01-01 00:00:00','2021-01-01 00:00:00',NULL),(24,'23° mês',23,'2021-01-01 00:00:00','2021-01-01 00:00:00',NULL),(25,'24° mês',24,'2021-01-01 00:00:00','2021-01-01 00:00:00',NULL),(26,'25° mês',25,'2020-01-01 00:00:00','2020-01-01 00:00:00',NULL),(27,'28° mês',28,'2021-01-01 00:00:00','2021-01-01 00:00:00',NULL),(28,'31° mês',31,'2021-01-01 00:00:00','2021-01-01 00:00:00',NULL),(29,'34° mês',34,'2021-01-01 00:00:00','2021-01-01 00:00:00',NULL),(30,'36° mês',36,'2021-01-01 00:00:00','2021-01-01 00:00:00',NULL);
/*!40000 ALTER TABLE `questionaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `response_brainfit_parents`
--

DROP TABLE IF EXISTS `response_brainfit_parents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `response_brainfit_parents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `response` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `brainfit_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `brainfit_id` (`brainfit_id`),
  CONSTRAINT `response_brainfit_parents_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `parents` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `response_brainfit_parents_ibfk_2` FOREIGN KEY (`brainfit_id`) REFERENCES `brainfits` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `response_brainfit_parents`
--

LOCK TABLES `response_brainfit_parents` WRITE;
/*!40000 ALTER TABLE `response_brainfit_parents` DISABLE KEYS */;
INSERT INTO `response_brainfit_parents` VALUES (2,1,'2021-08-19 14:01:31','2021-08-19 14:01:31',NULL,8,8),(3,0,'2021-08-24 11:46:00','2021-08-24 11:46:00',NULL,8,4);
/*!40000 ALTER TABLE `response_brainfit_parents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `response_question_children`
--

DROP TABLE IF EXISTS `response_question_children`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `response_question_children` (
  `id` int NOT NULL AUTO_INCREMENT,
  `response` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `child_id` int DEFAULT NULL,
  `question_questionary_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `child_id` (`child_id`),
  KEY `question_questionary_id` (`question_questionary_id`),
  CONSTRAINT `response_question_children_ibfk_1` FOREIGN KEY (`child_id`) REFERENCES `children` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `response_question_children_ibfk_2` FOREIGN KEY (`question_questionary_id`) REFERENCES `question_questionaries` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `response_question_children`
--

LOCK TABLES `response_question_children` WRITE;
/*!40000 ALTER TABLE `response_question_children` DISABLE KEYS */;
INSERT INTO `response_question_children` VALUES (3,'sim','2021-08-19 14:03:06','2021-08-19 14:03:06',NULL,2,5),(4,'sim','2021-08-19 14:03:06','2021-08-19 14:03:06',NULL,2,6),(5,'sim','2021-08-19 14:03:06','2021-08-19 14:03:06',NULL,2,7),(6,'sim','2021-08-24 11:48:19','2021-08-24 11:48:19',NULL,2,37);
/*!40000 ALTER TABLE `response_question_children` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'RN','2020-06-16 00:00:00','2020-06-16 00:00:00',NULL),(2,'SP','2020-06-16 00:00:00','2020-06-16 00:00:00',NULL);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ubs`
--

DROP TABLE IF EXISTS `ubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ubs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `street` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  CONSTRAINT `ubs_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubs`
--

LOCK TABLES `ubs` WRITE;
/*!40000 ALTER TABLE `ubs` DISABLE KEYS */;
INSERT INTO `ubs` VALUES (17,'NS Beija Flor - Dr. Armando Cardieri','Rua Julieta G. de Mendonça, Quadra 01 - N.H. Beija Flor','ubsbeijaflor@bauru.sp.gov.br','01 4 3237-3799','2021-08-17 12:09:30','2021-08-17 12:52:16',NULL,2),(18,'UBS Alecrim','Rua Fonseca e Silva, n° 1129 - Alecrim, Natal/RN','','08 4 3232-8427','2021-08-17 12:18:15','2021-08-17 12:52:32',NULL,1),(19,'UBS Candelária','Barão do Açú, s/n - Candelária, Natal/RN','','08 4 3232-8295','2021-08-17 12:18:35','2021-08-17 12:52:42',NULL,1),(20,'UBS Cidade Satélite','Rua das Carnaúbas, n° 7789 - Pitimbú, Natal/RN','','08 4 3232-8390','2021-08-17 12:18:58','2021-08-17 12:52:48',NULL,1),(21,'UBS Jiquí','Rua União dos Palmares, n° 11 - Neópolis, Natal/RN','','08 4 3232-8385','2021-08-17 12:19:39','2021-08-17 12:52:53',NULL,1),(22,'UBS Lagoa Seca','Rua Padre Antônio, n° 169 - Lagoa Seca, Natal/RN','','08 4 3232-8475','2021-08-17 12:20:00','2021-08-17 12:52:58',NULL,1),(23,'UBS Mirassol','Rua das Violetas, n° 679 – Conjunto Mirassol, Capim Macio, Natal/RN','','08 4 3232-8291','2021-08-17 12:20:23','2021-08-17 12:53:03',NULL,1),(24,'UBS Nova Descoberta','Avenida Xavier da Silveira, n° 1526 - Nova Descoberta, Natal/RN','','08 4 3232-8286','2021-08-17 12:20:58','2021-08-17 12:53:08',NULL,1),(25,'UBS Pirangi','Avenida São Miguel dos Caribés, s/n - Neópolis, Natal/RN','','08 4 3232-8380','2021-08-17 12:21:22','2021-08-17 12:53:14',NULL,1),(26,'UBS Pitimbu','Rua Serra do Piracambú, n° 2 - Pitimbú, Natal/RN','','08 4 3232-8390','2021-08-17 12:21:57','2021-08-17 12:53:19',NULL,1),(27,'UBS São João','Avenida Romualdo Galvão, n° 891 - Lagoa Seca, Natal/RN','','08 4 3232-8820','2021-08-17 12:22:18','2021-08-17 12:53:25',NULL,1),(28,'USF Brasília Teimosa','Rua Miramar, s/n - Rocas, Natal/RN','','08 4 3232-8536','2021-08-17 12:22:43','2021-08-17 12:53:30',NULL,1),(29,'USF Enf.ª Rosângela Lima','Rua Santa Beatriz, s/n - Planalto, Natal/RN','','','2021-08-17 12:22:55','2021-08-17 12:53:35',NULL,1),(30,'USF Felipe Camarão I','','','','2021-08-17 12:55:04','2021-08-17 12:55:04',NULL,1),(31,'USF Felipe Camarão II','','','','2021-08-17 12:55:13','2021-08-17 12:55:13',NULL,1),(32,'USF Guarita','','','','2021-08-17 12:55:23','2021-08-17 12:55:23',NULL,1),(33,'USF Igapó','','','','2021-08-17 12:55:32','2021-08-17 12:55:32',NULL,1),(34,'USF Panatis','','','','2021-08-17 12:55:46','2021-08-17 12:55:46',NULL,1),(35,'USF Parque dos Coqueiros','','','','2021-08-17 12:55:53','2021-08-17 12:55:53',NULL,1),(36,'USF Passo da Pátria','','','','2021-08-17 12:56:04','2021-08-17 12:56:04',NULL,1),(37,'USF Planície das Mangueiras','','','','2021-08-17 12:56:12','2021-08-17 12:56:12',NULL,1),(38,'USF Rocas','','','','2021-08-17 12:56:22','2021-08-17 12:56:22',NULL,1),(39,'USF Santa Catarina','','','','2021-08-17 12:56:37','2021-08-17 12:56:37',NULL,1),(40,'USF África','','','','2021-08-17 12:56:45','2021-08-17 12:56:45',NULL,1),(41,'USF Aparecida','','','','2021-08-17 12:56:54','2021-08-17 12:56:54',NULL,1),(42,'USF Bairro Nordeste','','','','2021-08-17 12:57:04','2021-08-17 12:57:04',NULL,1),(43,'USF Bela Vista','','','','2021-08-17 12:57:13','2021-08-17 12:57:13',NULL,1),(44,'USF Bom Pastor','','','','2021-08-17 12:57:21','2021-08-17 12:57:21',NULL,1),(45,'USF Cidade Nova','','','','2021-08-17 12:57:33','2021-08-17 12:57:33',NULL,1),(46,'USF Cidade Praia','','','','2021-08-17 12:57:43','2021-08-17 12:57:43',NULL,1),(47,'USF Quintas','','','','2021-08-17 12:57:53','2021-08-17 12:57:53',NULL,1),(48,'USF Gramoré','','','','2021-08-17 12:58:00','2021-08-17 12:58:00',NULL,1),(49,'USF José Sarney','','','','2021-08-17 12:58:09','2021-08-17 12:58:09',NULL,1),(50,'USF Felipe Camarão III','','','','2021-08-17 12:58:22','2021-08-17 12:58:22',NULL,1),(51,'USF Guarapes','','','','2021-08-17 12:58:36','2021-08-17 12:58:36',NULL,1),(52,'USF Km 6','','','','2021-08-17 12:58:41','2021-08-17 12:58:41',NULL,1),(53,'USF Monte Líbano','','','','2021-08-17 12:58:57','2021-08-17 12:58:57',NULL,1),(54,'USF Nazaré','','','','2021-08-17 12:59:09','2021-08-17 12:59:10',NULL,1),(55,'USF Nordelândia','','','','2021-08-17 12:59:17','2021-08-17 12:59:17',NULL,1),(56,'USF Nova Cidade','','','','2021-08-17 12:59:24','2021-08-17 12:59:24',NULL,1),(57,'USF Nova Natal','','','','2021-08-17 12:59:32','2021-08-17 12:59:32',NULL,1),(58,'USF Novo Horizonte','','','','2021-08-17 12:59:41','2021-08-17 12:59:41',NULL,1),(59,'USF Pajuçara','','','','2021-08-17 13:00:00','2021-08-17 13:00:00',NULL,1),(60,'USF Parque das Dunas','','','','2021-08-17 13:00:11','2021-08-17 13:00:11',NULL,1),(61,'USF Planalto','','','','2021-08-17 13:00:23','2021-08-17 13:00:23',NULL,1),(62,' USF Pompéia','','','','2021-08-17 13:00:32','2021-08-17 13:00:32',NULL,1),(63,'USF Ponta Negra','','','','2021-08-17 13:00:39','2021-08-17 13:00:39',NULL,1),(64,'USF Potengi','','','','2021-08-17 13:00:52','2021-08-17 13:00:52',NULL,1),(65,'USF Redinha','','','','2021-08-17 13:01:04','2021-08-17 13:01:04',NULL,1),(66,'USF Santarém','','','','2021-08-17 13:01:15','2021-08-17 13:01:15',NULL,1),(67,'USF Soledade I','','','','2021-08-17 13:01:27','2021-08-17 13:01:27',NULL,1),(68,'USF Soledade II','','','','2021-08-17 13:01:38','2021-08-17 13:01:38',NULL,1),(69,'USF Vale Dourado','','','','2021-08-17 13:01:56','2021-08-17 13:01:56',NULL,1),(70,'USF Vista Verde','','','','2021-08-17 13:02:00','2021-08-17 13:02:00',NULL,1),(71,'USF Vista Verde','','','','2021-08-17 13:02:10','2021-08-17 13:02:10',NULL,1),(72,'UBS Mãe Luiza','','','','2021-08-17 13:02:24','2021-08-17 13:02:24',NULL,1),(73,'UBDS Central','','','','2021-08-17 13:02:51','2021-08-17 13:02:51',NULL,3),(74,'CSE Vila Tibério','','','','2021-08-17 13:03:00','2021-08-17 13:03:00',NULL,3),(75,'UBS Campos Elíseos','','','','2021-08-17 13:03:13','2021-08-17 13:03:13',NULL,3),(76,'UBS Jardim João Rossi','','','','2021-08-17 13:03:26','2021-08-17 13:03:26',NULL,3),(77,'UBS Vila Tibério','','','','2021-08-17 13:03:34','2021-08-17 13:03:34',NULL,3),(78,'UBDS Castelo Branco','','','','2021-08-17 13:03:43','2021-08-17 13:03:43',NULL,3),(79,'UBS Bonfim Paulista','','','','2021-08-17 13:03:50','2021-08-17 13:03:50',NULL,3),(80,'UBS Jardim Juliana','','','','2021-08-17 13:04:06','2021-08-17 13:04:06',NULL,3),(81,'UBS Santa Cruz','','','','2021-08-17 13:04:13','2021-08-17 13:04:13',NULL,3),(82,'UBS São José','','','','2021-08-17 13:04:21','2021-08-17 13:04:21',NULL,3),(83,'UBS Vila Abranches','','','','2021-08-17 13:04:28','2021-08-17 13:04:28',NULL,3),(84,'USF Jardim Zara','','','','2021-08-17 13:04:37','2021-08-17 13:04:37',NULL,3),(85,'UBDS Quintino Facci II','','','','2021-08-17 13:04:44','2021-08-17 13:04:44',NULL,3),(86,'UBS Jardim Cristo Redentor','','','','2021-08-17 13:04:55','2021-08-17 13:04:55',NULL,3),(87,'UBS Jardim Aeroporto','','','','2021-08-17 13:05:05','2021-08-17 13:05:05',NULL,3),(88,'UBS Marincek','','','','2021-08-17 13:05:13','2021-08-17 13:05:13',NULL,3),(89,'UBS Quintino Facci I ','','','','2021-08-17 13:05:20','2021-08-17 13:05:20',NULL,3),(90,'UBS Ribeirão Verde','','','','2021-08-17 13:05:28','2021-08-17 13:05:28',NULL,3),(91,'UBS Simioni','','','','2021-08-17 13:05:39','2021-08-17 13:05:39',NULL,3),(92,'UBS Vila Mariana','','','','2021-08-17 13:05:43','2021-08-17 13:05:43',NULL,3),(93,'UBS Valentina Figueiredo','','','','2021-08-17 13:05:54','2021-08-17 13:05:54',NULL,3),(94,'USF Avelino Alves Palma','','','','2021-08-17 13:06:01','2021-08-17 13:06:01',NULL,3),(95,'USF Estação do Alto','','','','2021-08-17 13:06:13','2021-08-17 13:06:13',NULL,3),(96,'USF Jardim Heitor Rigon','','','','2021-08-17 13:06:17','2021-08-17 13:06:17',NULL,3),(97,'UBDS Sumarezinho','','','','2021-08-17 13:06:30','2021-08-17 13:06:30',NULL,3),(98,'CMSC Vila Lobato','','','','2021-08-17 13:07:38','2021-08-17 13:07:38',NULL,3),(99,'CSE Ipiranga','','','','2021-08-17 13:07:47','2021-08-17 13:07:47',NULL,3),(100,'UBS Dom Mielle','','','','2021-08-17 13:07:54','2021-08-17 13:07:54',NULL,3),(101,'UBS Ipiranga','','','','2021-08-17 13:08:02','2021-08-17 13:08:02',NULL,3),(102,'USF Jardim Paiva','','','','2021-08-17 13:08:13','2021-08-17 13:08:13',NULL,3),(103,'UBS Jardim Presidente Dutra','','','','2021-08-17 13:08:17','2021-08-17 13:08:17',NULL,3),(104,'UBS José Sampaio','','','','2021-08-17 13:08:28','2021-08-17 13:08:28',NULL,3),(105,'USF \"César Augusto Arita\" - Paulo Gomes Romeo','','','','2021-08-17 13:08:38','2021-08-17 13:08:38',NULL,3),(106,'UBS Vila Recreio','','','','2021-08-17 13:08:49','2021-08-17 13:08:49',NULL,3),(107,'USF Jardim Eugênio Mendes Lopes','','','','2021-08-17 13:08:56','2021-08-17 13:08:56',NULL,3),(108,'USF Maria Casagrande Lopes','','','','2021-08-17 13:09:06','2021-08-17 13:09:06',NULL,3),(109,'USF Núcleo 1','','','','2021-08-17 13:09:16','2021-08-17 13:09:16',NULL,3),(110,'USF Núcleo 2','','','','2021-08-17 13:09:44','2021-08-17 13:09:44',NULL,3),(111,'USF Núcleo 3','','','','2021-08-17 13:09:52','2021-08-17 13:09:52',NULL,3),(112,'USF Núcleo 4','','','','2021-08-17 13:09:58','2021-08-17 13:09:58',NULL,3),(113,'USF Núcleo 5','','','','2021-08-17 13:10:04','2021-08-17 13:10:04',NULL,3),(114,'USF Núcleo 6','','','','2021-08-17 13:10:11','2021-08-17 13:10:11',NULL,3),(115,'USF do Jardim Jamil Cury','','','','2021-08-17 13:11:14','2021-08-17 13:11:14',NULL,3),(116,'USF Vila Albertina','','','','2021-08-17 13:11:22','2021-08-17 13:11:22',NULL,3),(117,'UBDS Vila Virgínia','','','','2021-08-17 13:11:29','2021-08-17 13:11:29',NULL,3),(118,'UBS Adão do Carmo Leonel','','','','2021-08-17 13:11:42','2021-08-17 13:11:42',NULL,3),(119,'UBS Jardim Maria das Graças','','','','2021-08-17 13:11:49','2021-08-17 13:11:49',NULL,3),(120,'UBS Parque Ribeirão Preto','','','','2021-08-17 13:11:57','2021-08-17 13:11:57',NULL,3),(121,'USF Jardim Marchesi','','','','2021-08-17 13:12:04','2021-08-17 13:12:05',NULL,3),(122,'NS Bela Vista - Dr. Odilon Pinto do Amaral','','','','2021-08-17 13:33:14','2021-08-17 13:33:14',NULL,2),(123,'NS Cardia - Dr. Antônio Azevedo','','','','2021-08-17 13:33:30','2021-08-17 13:33:30',NULL,2),(124,'NS Centro - Dr. Alpheu de Vasconcelos Sampaio','','','','2021-08-17 13:34:32','2021-08-17 13:34:32',NULL,2),(125,'NS Chapadão Mendonça','','','','2021-08-17 13:35:07','2021-08-17 13:35:07',NULL,2),(126,'NS Europa - Dr. Jerônimo Decunto Júnior','','','','2021-08-17 13:35:21','2021-08-17 13:35:21',NULL,2),(127,'NS Falcão - Mário Pinto de Avelar Fernandes','','','','2021-08-17 13:35:35','2021-08-17 13:35:35',NULL,2),(128,'NS Gasparini - Drª Vilma de Araújo Leão','','','','2021-08-17 13:36:10','2021-08-17 13:36:10',NULL,2),(129,'NS Geisel - Newton Bohin Ribeiro','','','','2021-08-17 13:36:30','2021-08-17 13:36:30',NULL,2),(130,'NS Godoy - Dr. Osires Domingues','','','','2021-08-17 13:36:46','2021-08-17 13:36:46',NULL,2),(131,'NS Independência - Dr. Alipio Gonçalves dos Santos','','','','2021-08-17 13:37:22','2021-08-17 13:37:22',NULL,2),(132,'NS Jussara Celina','','','','2021-08-17 13:37:32','2021-08-17 13:37:32',NULL,2),(133,'NS Mary Dota - Dr. Angelo Pagoto','','','','2021-08-17 13:37:41','2021-08-17 13:38:22',NULL,2),(134,'NS Nova Esperança - Dr. Luiz Castilho','','','','2021-08-17 13:37:53','2021-08-17 13:38:14',NULL,2),(135,'NS Octávio Rasi - Dr. Edison Bastos Gasparini','','','','2021-08-17 13:38:06','2021-08-17 13:38:06',NULL,2),(136,'NS Parque Vista Alegre - Dr. Sebastião G. Cavalli','','','','2021-08-17 13:38:40','2021-08-17 13:38:40',NULL,2),(137,'NS Redentor - Dr. Fidelis Barriel','','','','2021-08-17 13:39:03','2021-08-17 13:39:53',NULL,2),(138,'NS Tibiriçá - Dr. Dolírio Sandin','','','','2021-08-17 13:39:12','2021-08-17 13:39:58',NULL,2),(139,'UBS da Família Nova Bauru','','','','2021-08-17 13:39:43','2021-08-17 13:39:43',NULL,2),(140,'UBS da Família Nove de Julho / Fortunato Rocha Lima','','','','2021-08-17 13:40:20','2021-08-17 13:40:20',NULL,2),(141,'UBS da Família Pousada da Esperança II','','','','2021-08-17 13:40:35','2021-08-17 13:40:35',NULL,2),(142,'UBS da Família Santa Edwiges - Dr. Sebastião Simi','','','','2021-08-17 13:40:51','2021-08-17 13:40:51',NULL,2),(143,'UBS da Família Vila Dutra','','','','2021-08-17 13:41:00','2021-08-17 13:41:00',NULL,2),(144,'UBS da Família Vila São Paulo - Dr. Danilo Campana','','','','2021-08-17 13:41:12','2021-08-17 13:41:12',NULL,2);
/*!40000 ALTER TABLE `ubs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `permission_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `cpf` (`cpf`),
  KEY `permission_id` (`permission_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Alice Andrade','aliceandr25@gmail.com ','112.184.274-77','123','84 9 88402510',1,'2020-06-16 00:00:00','2020-06-16 00:00:00',NULL,1),(2,'Frankleiton','frankleiton@gmail.com','107.062.634-13','123','84 9 9119-3071',1,'2021-06-19 16:53:46','2021-07-03 20:33:56',NULL,1),(12,'Frankleiton Levy de Sena Alves','fgm@gmail.com','222.333.333-33','123456789','84 8 4848-4848',1,'2021-08-19 13:19:48','2021-08-19 13:19:48',NULL,2),(13,'Parente 01 APP','parenteapp@gmail.com','444.444.444-44','123','(84) 8 4849-9999',1,'2021-08-19 14:01:15','2021-08-19 14:01:15',NULL,2),(14,'Eliene','eliene@gmail.com','368.110.268-63','123','84 9 9999-9999',1,'2021-08-19 14:01:15','2021-08-19 14:01:15',NULL,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-05  2:25:24
