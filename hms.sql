CREATE DATABASE /*!32312 IF NOT EXISTS*/`DBclinicagonzalez` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `DBclinicagonzalez`;

DROP TABLE IF EXISTS `administrador`;

CREATE TABLE `administrador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `fechaactualización` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


insert  into `administrador`(`id`,`usuario`,`contrasena`,`fechaactualización`) values (1,'admin','Test@12345','28-12-2016 11:42:05 AM');

DROP TABLE IF EXISTS `cita`;

CREATE TABLE `cita` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctorEspecialidad` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `usuarioId` int(11) DEFAULT NULL,
  `consultoriaCuotas` int(11) DEFAULT NULL,
  `citaFecha` varchar(255) DEFAULT NULL,
  `citaHora` varchar(255) DEFAULT NULL,
  `fechadepublicación` timestamp NULL DEFAULT current_timestamp(),
  `usuarioEstado` int(11) DEFAULT NULL,
  `doctorEstado` int(11) DEFAULT NULL,
  `fechadeactualización` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

insert  into `cita`(`id`,`doctorEspecialidad`,`doctorId`,`usuarioId`,`consultoriaCuotas`,`citaFecha`,`citaHora`,`fechadepublicación`,`usuarioEstado`,`doctorEstado`,`fechadeactualización`) values (3,'Demo test',7,6,600,'2019-06-29','9:15 AM','2019-06-23 13:31:28',1,0,'0000-00-00 00:00:00'),(4,'Ayurveda',5,5,8050,'2019-11-08','1:00 PM','2019-11-05 05:28:54',1,1,'0000-00-00 00:00:00'),(5,'Dermatologist',9,7,500,'2019-11-30','5:30 PM','2019-11-10 13:41:34',1,0,'2019-11-10 13:48:30'),(6,'General Physician',6,2,2500,'2022-07-22','6:30 PM','2022-07-15 16:24:38',1,1,NULL);

DROP TABLE IF EXISTS `doctors`;

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `especializacion` varchar(255) DEFAULT NULL,
  `nombreDoctor` varchar(255) DEFAULT NULL,
  `direccion` longtext DEFAULT NULL,
  `tasasDoctor` varchar(255) DEFAULT NULL,
  `contacto` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  `fechaCreacion` timestamp NULL DEFAULT current_timestamp(),
  `fechadeactualización` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

insert  into `doctors`(`id`,`especializacion`,`nombreDoctor`,`direccion`,`tasasDoctor`,`contacto`,`docEmail`,`contrasena`,`fechaCreacion`,`fechadeactualización`) values (1,'Dentist','Anuj','New Delhi','500',8285703354,'anuj.lpu1@gmail.com','f925916e2754e5e03f75dd58a5733251','2016-12-29 01:25:37','2019-06-30 07:11:05'),(2,'Homeopath','Sarita Pandey','Varanasi','600',2147483647,'sarita@gmail.com','f925916e2754e5e03f75dd58a5733251','2016-12-29 01:51:51','0000-00-00 00:00:00'),(3,'General Physician','Nitesh Kumar','Ghaziabad','1200',8523699999,'nitesh@gmail.com','f925916e2754e5e03f75dd58a5733251','2017-01-07 02:43:35','0000-00-00 00:00:00'),(4,'Homeopath','Vijay Verma','New Delhi','700',25668888,'vijay@gmail.com','f925916e2754e5e03f75dd58a5733251','2017-01-07 02:45:09','0000-00-00 00:00:00'),(5,'Ayurveda','Sanjeev','Gurugram','8050',442166644646,'sanjeev@gmail.com','f925916e2754e5e03f75dd58a5733251','2017-01-07 02:47:07','0000-00-00 00:00:00'),(6,'General Physician','Amrita','New Delhi India','2500',45497964,'amrita@test.com','f925916e2754e5e03f75dd58a5733251','2017-01-07 02:52:50','0000-00-00 00:00:00'),(7,'Demo test','abc ','New Delhi India','200',852888888,'test@demo.com','f925916e2754e5e03f75dd58a5733251','2017-01-07 03:08:58','2019-06-23 13:17:25'),(8,'Ayurveda','Test Doctor','Xyz Abc New Delhi','600',1234567890,'test@test.com','202cb962ac59075b964b07152d234b70','2019-06-23 12:57:43','2019-06-23 13:06:06'),(9,'Dermatologist','Anuj kumar','New Delhi India 110001','500',1234567890,'anujk@test.com','f925916e2754e5e03f75dd58a5733251','2019-11-10 13:37:47','2019-11-10 13:38:10');

DROP TABLE IF EXISTS `doctorslog`;

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTiempo` timestamp NULL DEFAULT current_timestamp(),
  `cerrarSesion` varchar(255) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

insert  into `doctorslog`(`id`,`uid`,`usuario`,`userip`,`loginTiempo`,`cerrarSesion`,`estado`) values (20,7,'test@demo.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2022-07-15 15:59:57','16-07-2022 02:30:39 AM',1),(21,7,'test@demo.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2022-07-15 16:25:47','16-07-2022 02:56:57 AM',1);

DROP TABLE IF EXISTS `doctorEspecialidad`;

CREATE TABLE `doctorEspecialidad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `especialidad` varchar(255) DEFAULT NULL,
  `fechaCreacion` timestamp NULL DEFAULT current_timestamp(),
  `fechadeactualización` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

insert  into `doctorEspecialidad`(`id`,`especialidad`,`fechaCreacion`,`fechadeactualización`) values (1,'Gynecologist/Obstetrician','2016-12-28 01:37:25','0000-00-00 00:00:00'),(2,'General Physician','2016-12-28 01:38:12','0000-00-00 00:00:00'),(3,'Dermatologist','2016-12-28 01:38:48','0000-00-00 00:00:00'),(4,'Homeopath','2016-12-28 01:39:26','0000-00-00 00:00:00'),(5,'Ayurveda','2016-12-28 01:39:51','0000-00-00 00:00:00'),(6,'Dentist','2016-12-28 01:40:08','0000-00-00 00:00:00'),(7,'Ear-Nose-Throat (Ent) Specialist','2016-12-28 01:41:18','0000-00-00 00:00:00'),(9,'Demo test','2016-12-28 02:37:39','0000-00-00 00:00:00'),(10,'Bones Specialist demo','2017-01-07 03:07:53','0000-00-00 00:00:00'),(11,'Test','2019-06-23 12:51:06','2019-06-23 12:55:06'),(12,'Dermatologist','2019-11-10 13:36:36','2019-11-10 13:36:50');

DROP TABLE IF EXISTS `tblcontactus`;

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombreCompleto` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `mensaje` mediumtext DEFAULT NULL,
  `FechaDeEnvio` timestamp NULL DEFAULT current_timestamp(),
  `AdminMarca` mediumtext DEFAULT NULL,
  `FechaUltimaPuesta` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `esLeido` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

insert  into `tblcontactus`(`id`,`nombreCompleto`,`email`,`contactno`,`mensaje`,`FechaDeEnvio`,`AdminMarca`,`FechaUltimaPuesta`,`esLeido`) values (1,'test user','test@gmail.com',2523523522523523,' This is sample text for the test.','2019-06-29 14:03:08','Test Admin Remark','2019-06-30 07:55:23',1),(2,'Anuj kumar','test123@gmail.com',1111111111111111,' This is sample text for testing.  This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing.','2019-06-30 08:06:50',NULL,NULL,NULL),(3,'fdsfsdf','fsdfsd@ghashhgs.com',3264826346,'sample text   sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  ','2019-11-10 13:53:48','vfdsfgfd','2019-11-10 13:54:04',1);

DROP TABLE IF EXISTS `tblhistorialmedico`;

CREATE TABLE `tblhistorialmedico` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `PacienteID` int(10) DEFAULT NULL,
  `Presionarterial` varchar(200) DEFAULT NULL,
  `Azucarensangre` varchar(200) NOT NULL,
  `Peso` varchar(100) DEFAULT NULL,
  `Temperatura` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `FechaCreacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

insert  into `tblhistorialmedico`(`ID`,`PacienteID`,`Presionarterial`,`Azucarensangre`,`Peso`,`Temperatura`,`MedicalPres`,`FechaCreacion`) values (2,3,'120/185','80/120','85 Kg','101 degree','#Fever, #BP high\r\n1.Paracetamol\r\n2.jocib tab\r\n','2019-11-05 23:20:07'),(3,2,'90/120','92/190','86 kg','99 deg','#Sugar High\r\n1.Petz 30','2019-11-05 23:31:24'),(4,1,'125/200','86/120','56 kg','98 deg','# blood pressure is high\r\n1.koil cipla','2019-11-05 23:52:42'),(5,1,'96/120','98/120','57 kg','102 deg','#Viral\r\n1.gjgjh-1Ml\r\n2.kjhuiy-2M','2019-11-05 23:56:55'),(6,4,'90/120','120','56','98 F','#blood sugar high\r\n#Asthma problem','2019-11-06 09:38:33'),(7,5,'80/120','120','85','98.6','Rx\r\n\r\nAbc tab\r\nxyz Syrup','2019-11-10 13:50:23');

DROP TABLE IF EXISTS `tblpaciente`;

CREATE TABLE `tblpaciente` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Docid` int(10) DEFAULT NULL,
  `NombrePaciente` varchar(200) DEFAULT NULL,
  `PacienteContno` bigint(10) DEFAULT NULL,
  `EmailPaciente` varchar(200) DEFAULT NULL,
  `PacienteGenero` varchar(50) DEFAULT NULL,
  `PacienteAnadir` mediumtext DEFAULT NULL,
  `PacienteEdad` int(10) DEFAULT NULL,
  `PacienteMedis` mediumtext DEFAULT NULL,
  `FechaCreación` timestamp NULL DEFAULT current_timestamp(),
  `FechaDeActualización` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

insert  into `tblpaciente`(`ID`,`Docid`,`NombrePaciente`,`PacienteContno`,`EmailPaciente`,`PacienteGenero`,`PacienteAnadir`,`PacienteEdad`,`PacienteMedis`,`FechaCreación`,`FechaDeActualización`) values (1,1,'Manisha Jha',4558968789,'test@gmail.com','Female','\"\"J&K Block J-127, Laxmi Nagar New Delhi',26,'She is diabetic patient','2019-11-04 16:38:06','2019-11-06 01:48:05'),(2,5,'Raghu Yadav',9797977979,'raghu@gmail.com','Male','ABC Apartment Mayur Vihar Ph-1 New Delhi',39,'No','2019-11-05 05:40:13','2019-11-05 06:53:45'),(3,7,'Mansi',9878978798,'jk@gmail.com','Female','\"fdghyj',46,'No','2019-11-05 05:49:41','2019-11-05 06:58:59'),(4,7,'Manav Sharma',9888988989,'sharma@gmail.com','Male','L-56,Ashok Nagar New Delhi-110096',45,'He is long suffered by asthma','2019-11-06 09:33:54','2019-11-06 09:34:31'),(5,9,'John',1234567890,'john@test.com','male','Test ',25,'THis is sample text for testing.','2019-11-10 13:49:24',NULL);

DROP TABLE IF EXISTS `registroUsuario`;

CREATE TABLE `registroUsuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `usuarioip` binary(16) DEFAULT NULL,
  `horaAcceso` timestamp NULL DEFAULT current_timestamp(),
  `cerrarsesion` varchar(255) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

insert  into `registroUsuario`(`id`,`uid`,`usuario`,`usuarioip`,`horaAcceso`,`cerrarsesion`,`estado`) values (24,NULL,'test@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2022-07-15 15:57:20',NULL,0),(25,2,'test@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2022-07-15 15:57:57','16-07-2022 02:29:28 AM',1),(26,2,'test@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2022-07-15 16:11:12','16-07-2022 02:55:17 AM',1);

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombrecompleto` varchar(255) DEFAULT NULL,
  `direccion` longtext DEFAULT NULL,
  `ciudad` varchar(255) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  `regFecha` timestamp NULL DEFAULT current_timestamp(),
  `fechadeactualización` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

insert  into `usuarios`(`id`,`nombrecompleto`,`direccion`,`ciudad`,`genero`,`email`,`contrasena`,`regFecha`,`fechadeactualización`) values (2,'Sarita pandey','New Delhi India','Delhi','female','test@gmail.com','f925916e2754e5e03f75dd58a5733251','2016-12-30 00:34:39','0000-00-00 00:00:00'),(4,'Rahul Singh','New Delhi','New delhi','male','rahul@gmail.com','f925916e2754e5e03f75dd58a5733251','2017-01-07 02:41:14','0000-00-00 00:00:00'),(5,'Amit kumar','New Delhi India','Delhi','male','amit12@gmail.com','f925916e2754e5e03f75dd58a5733251','2017-01-07 03:00:26','0000-00-00 00:00:00'),(6,'Test user','New Delhi','Delhi','male','tetuser@gmail.com','f925916e2754e5e03f75dd58a5733251','2019-06-23 13:24:53','2019-06-23 13:36:09'),(7,'John','USA','Newyork','male','john@test.com','f925916e2754e5e03f75dd58a5733251','2019-11-10 13:40:21','2019-11-10 13:40:51');
