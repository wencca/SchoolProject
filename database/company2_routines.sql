CREATE DATABASE  IF NOT EXISTS `company2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `company2`;
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: company2
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Temporary view structure for view `allpordermessage`
--

DROP TABLE IF EXISTS `allpordermessage`;
/*!50001 DROP VIEW IF EXISTS `allpordermessage`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `allpordermessage` AS SELECT 
 1 AS `porderno`,
 1 AS `memberName`,
 1 AS `employeeName`,
 1 AS `productName`,
 1 AS `productAmount`,
 1 AS `sum`,
 1 AS `memberAddress`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memberporderexam1`
--

DROP TABLE IF EXISTS `memberporderexam1`;
/*!50001 DROP VIEW IF EXISTS `memberporderexam1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memberporderexam1` AS SELECT 
 1 AS `id`,
 1 AS `porderno`,
 1 AS `memberno`,
 1 AS `name`,
 1 AS `address`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `allpordermessage`
--

/*!50001 DROP VIEW IF EXISTS `allpordermessage`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `allpordermessage` AS select `porder`.`porderno` AS `porderno`,`member`.`name` AS `memberName`,`employee`.`name` AS `employeeName`,`product`.`name` AS `productName`,`porder`.`amount` AS `productAmount`,(`porder`.`amount` * `product`.`price`) AS `sum`,`member`.`address` AS `memberAddress` from (((`porder` join `member` on((`porder`.`memberno` = `member`.`memberno`))) join `product` on((`porder`.`productno` = `product`.`productno`))) join `employee` on((`porder`.`employeeno` = `employee`.`employeeno`))) order by `porder`.`porderno` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memberporderexam1`
--

/*!50001 DROP VIEW IF EXISTS `memberporderexam1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `memberporderexam1` AS select `porder`.`id` AS `id`,`porder`.`porderno` AS `porderno`,`member`.`memberno` AS `memberno`,`member`.`name` AS `name`,`member`.`address` AS `address` from (`porder` join `member` on((`porder`.`memberno` = `member`.`memberno`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-15  9:51:00
