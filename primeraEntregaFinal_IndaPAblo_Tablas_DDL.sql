create schema Eventos_Artisticos; 
use Eventos_Artisticos;

CREATE TABLE `productor` (
  `Id_Prod` int NOT NULL AUTO_INCREMENT,
  `Prod_Name` varchar(20) NOT NULL,
  `Prod_LastName` varchar(20) NOT NULL,
  `Prod_Phone` int NOT NULL,
  `Prod_Email` varchar(30) NOT NULL,
  `Prod_Cuit` int NOT NULL,
  PRIMARY KEY (`Id_Prod`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `artista` (
  `Id_Art` int NOT NULL AUTO_INCREMENT,
  `Art_Email` varchar(30) NOT NULL,
  `Art_Name` varchar(15) NOT NULL,
  `Art_Cuit` int NOT NULL,
  `Art_Phone` int NOT NULL,
  PRIMARY KEY (`Id_Art`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `empleado` (
  `Id_Emp` int NOT NULL AUTO_INCREMENT,
  `Emp_Espec` varchar(15) NOT NULL,
  `Emp_Email` varchar(30) NOT NULL,
  `Emp_Name` varchar(15) NOT NULL,
  `Emp_Lastname` varchar(15) NOT NULL,
  `Emp_Phone` int NOT NULL,
  `Emp_Cuit` int NOT NULL,
  PRIMARY KEY (`Id_Emp`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `espacio` (
  `Id_Esp` int NOT NULL AUTO_INCREMENT,
  `Esp_Adress` varchar(15) NOT NULL,
  `Esp_Email` varchar(30) NOT NULL,
  `Esp_Name` varchar(15) NOT NULL,
  `Esp_Capacity` int NOT NULL,
  `Esp_Phone` int NOT NULL,
  PRIMARY KEY (`Id_Esp`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `proveedor` (
  `Id_Prov` int NOT NULL AUTO_INCREMENT,
  `Prov_Espec` varchar(15) NOT NULL,
  `Prov_Email` varchar(30) NOT NULL,
  `Prov_Name` varchar(15) NOT NULL,
  `Prov_Phone` int NOT NULL,
  `Prov_Cuit` int NOT NULL,
  PRIMARY KEY (`Id_Prov`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `evento` (
  `Id_Event` int NOT NULL AUTO_INCREMENT,
  `Event_Adress` varchar(15) NOT NULL,
  `Event_Date` date NOT NULL,
  `Event_Email` varchar(30) NOT NULL,
  `Event_Name` varchar(15) NOT NULL,
  `Event_Capacity` int NOT NULL,
  `Event_Phone` int NOT NULL,
  `Event_Prod` int NOT NULL,
  `Event_Art` int NOT NULL,
  `Event_Emp` int NOT NULL,
  PRIMARY KEY (`Id_Event`),
  KEY `Event_Prod` (`Event_Prod`),
  KEY `Event_Art` (`Event_Art`),
  KEY `Event_Emp` (`Event_Emp`),
  CONSTRAINT `evento_ibfk_1` FOREIGN KEY (`Event_Prod`) REFERENCES `productor` (`Id_Prod`),
  CONSTRAINT `evento_ibfk_2` FOREIGN KEY (`Event_Art`) REFERENCES `artista` (`Id_Art`),
  CONSTRAINT `evento_ibfk_3` FOREIGN KEY (`Event_Emp`) REFERENCES `empleado` (`Id_Emp`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci