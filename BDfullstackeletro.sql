CREATE DATABASE  IF NOT EXISTS `fullstackeletro` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `fullstackeletro`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: fullstackeletro
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `idpedidos` int NOT NULL,
  `nome do cliente` varchar(100) NOT NULL,
  `endereço` varchar(255) NOT NULL,
  `telefone` float DEFAULT NULL,
  `nome do produto` varchar(50) NOT NULL,
  `valor unitário` decimal(8,2) DEFAULT NULL,
  `quantidade` decimal(8,2) DEFAULT NULL,
  `valor total` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`idpedidos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (193078,'Maria Aparecida da Luz Santos','Rua das Flores, 394 - Jardim Italia - São Paulo',11955600000,'Geladeira Inverse Brastemp',5019.00,1.00,5019.00),(193079,'Marcelo Cosme Damião','Avenida Italia, 500 Apto 42 - Vila Emir-São Paulo',11945900000,'Geladeira Brastemp Frost Free branca ',1910.00,1.00,1910.00),(193080,'Alana de Jesus Calvario','Alameda Vitoria, 635 -Vila Caiçara-Praia Grande',13979800000,'Geladeira Consul Frost Free Inox s',2069.00,1.00,2069.00),(193081,'Augusto Lima Otavio','Rua Do Limoeiro, 1357-Jardim Fonte nova - São Paulo',1156720000,'Fogao 4 bocas Consul Inox ',1129.00,2.00,2258.00),(193082,'Ivan Lins do Rego','Avenida Bororé, 300 Casa 5 -Jardim das fontes - São Paulo',11975800000,'Fogao de 4 bocas Atlas Monaco ',519.70,1.00,519.70),(193083,'Wilderson Carrera Lima','Rua das Focas, 123 Apto 8 - Parque Feliz - São Paulo',1156150000,'Forno de Microondas Consul Inox ',409.88,1.00,409.88),(193084,'Altair Bezerra da Silva','Rua Azul, 300 Jardim das Cores - Guarulhos',11985700000,'Forno de Microondas Philco 25 litros ',436.05,2.00,872.10),(193085,'Indio Brasileiro Cardoso ','Avenida da Saudade, 16 cs 5 Vila Militar-Barueri',1166670000,'Forno de Microondas Eletrolux Branco de 20 litros ',464.53,1.00,464.53),(193086,'Caroline Lira Barbatimão','Travessa da Paz, 30 Jardim das Oliveiras - São Paulo',1156750000,'Lavadora de roupas Brastemp 11kg ',1214.10,1.00,1214.10),(193087,'Josefa Maria Lourenço','Rua Das Primas, 89 - Jardom dos Reis - São Paulo ',1156220000,'Lavadora de roupas Philco Inverter 12kg',2179.00,3.00,6537.00),(193088,'Luciano Louis Loyola','Avenida Dos Capitoes, 63 Apto 42 Vila dos Pescadores - Osasco',11986300000,'Lava-louça Eletrolux Inox ',2799.90,1.00,2799.90),(193089,'Julia Martins Sorrano','Avenida Nossa  Senhora das Almas, 1410 Apto 2 - São Paulo',1156160000,'Lava-louca Brastemp Compacta ',1730.61,1.00,1730.61);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `idproduto` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(45) NOT NULL,
  `descrição` varchar(150) NOT NULL,
  `preco` decimal(8,2) DEFAULT NULL,
  `precofinal` decimal(8,2) DEFAULT NULL,
  `imagem` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`idproduto`),
  UNIQUE KEY `imagem_UNIQUE` (`imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (3,'geladeira','Geladeira Brastemp inverse Frost Free Inox de 574 litros',6389.00,5019.00,'/imagens/g_brastemp_inverse.jpg'),(4,'geladeira','Geladeira Brastemp Frost Free branca de 375 litros',2068.00,1910.00,'/imagens/g_brastemp_branca.jpg'),(5,'geladeira','Geladeira Consul Frost Free Inox 340 litros',2199.90,2069.00,'/imagens/g_ff%20consul.jpg'),(6,'fogao','Fogao 4 bocas Consul Inox com mesa de vidro',1209.00,1129.00,'/imagens/fogao_consul_inox.jpg'),(7,'fogao','Fogao de 4 bocas Atlas Monaco com acedimento automatico',609.90,519.70,'/imagens/fogao_monaco.jpg'),(8,'microondas','Forno de Microondas Consul Inox 32 litros 220 volts',580.90,409.88,'/imagens/microondas_consul.jpg'),(9,'microondas','Forno de Microondas Philco 25 litros Espelhado 220 volts',459.90,436.05,'/imagens/microondas_Philco.jpg'),(10,'microondas','Forno de Microondas Eletrolux Branco de 20 litros 127 volts',508.70,464.53,'/imagens/microondas_electrolux.jpg'),(11,'lavadora','Lavadora de roupas Brastemp 11kg Com Turbo Performance Branca',1699.00,1214.10,'/imagens/lavadora_de_roupa_brastemp.jpg'),(12,'lavadora','Lavadora de roupas Philco Inverter 12kg',2399.90,2179.90,'/imagens/lavador_de_roupa_Philco.jpg'),(13,'lava-louca','Lava-louça Eletrolux Inox 10 servicos, 6 prog. de lavagem e painel blue touch',3599.00,2799.90,'/imagens/lava_louça_electrolux.jpg'),(14,'lava-louca','Lava-louca Brastemp Compacta com 8 servicos Branca 127v',1970.50,1730.61,'/imagens/lava_louça_brastemp.jpg');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-26 13:33:02
