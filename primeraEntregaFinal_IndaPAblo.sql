-- Primero, se arma panel de creacion, borrado y uso del Schema

create schema Eventos_Artisticos; 
drop schema Eventos_Artisticos;
use Eventos_Artisticos;

-- Segundo, Se crean las tablas correspondientes

CREATE TABLE if not exists Productor (
  Id_Prod int NOT NULL auto_increment,
  Prod_Name varchar(20) NOT NULL,
  Prod_LastName varchar(20) NOT NULL,
  Prod_Phone int(20) NOT NULL,
  Prod_Email varchar(30) NOT NULL,
  Prod_Cuit int (12) not null,
  PRIMARY KEY (Id_Prod) );
  
   CREATE TABLE if not exists Espacio (
  Id_Esp int NOT NULL auto_increment,
  Esp_Adress varchar(15) NOT NULL,
  Esp_Email varchar(30) NOT NULL,
  Esp_Name varchar(15) NOT NULL,
  Esp_Capacity int(5) NOT NULL,
  Esp_Phone int(15) NOT NULL,
  PRIMARY KEY (Id_Esp)); 
  
  CREATE TABLE if not exists Artista (
  Id_Art int NOT NULL auto_increment,
  Art_Email varchar(30) NOT NULL,
  Art_Name varchar(15) NOT NULL,
  Art_Cuit Int(12) NOT NULL,
  Art_Phone int (15) NOT NULL,
  PRIMARY KEY (Id_Art) );
  
  CREATE TABLE if not exists Empleado (
  Id_Emp int NOT NULL auto_increment,
  Emp_Espec varchar(15) NOT NULL,
  Emp_Email varchar(30) NOT NULL,
  Emp_Name varchar(15) NOT NULL,
  Emp_Lastname varchar(15) NOT NULL,
  Emp_Phone int(15) NOT NULL,
  Emp_Cuit Int(12) NOT NULL,
    PRIMARY KEY (Id_Emp) 
  );
  
  CREATE TABLE if not exists Proveedor (
  Id_Prov int NOT NULL auto_increment,
  Prov_Espec varchar(15) NOT NULL,
  Prov_Email varchar(30) NOT NULL,
  Prov_Name varchar(15) NOT NULL,
  Prov_Phone int(15) NOT NULL,
  Prov_Cuit Int(12) NOT NULL,
    PRIMARY KEY (Id_Prov) 
  );
  
  CREATE TABLE if not exists Evento (
  Id_Event int NOT NULL auto_increment,
  Event_Adress varchar(15) NOT NULL,
  Event_Date date NOT NULL,
  Event_Email varchar(30) NOT NULL,
  Event_Name varchar(15) NOT NULL,
  Event_Capacity int(5) NOT NULL,
  Event_Phone int(15) NOT NULL,
  Event_Prod INT(15) NOT NULL,
  Event_Art int(11) NOT NULL,
  Event_Emp int(11) Not null,
  PRIMARY KEY (Id_Event) );

 -- Tercero, se agregan las FK
 
 alter table Evento add 
FOREIGN KEY (Event_Prod) REFERENCES Productor (Id_Prod);
alter table Evento add
FOREIGN KEY (Event_Art) REFERENCES Artista (Id_Art);
alter table Evento add
FOREIGN KEY (Event_Emp) REFERENCES Empleado (Id_Emp);
  

  
