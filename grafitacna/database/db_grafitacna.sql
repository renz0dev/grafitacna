-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.30 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para db_grafitacna
CREATE DATABASE IF NOT EXISTS `db_grafitacna` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_grafitacna`;

-- Volcando estructura para tabla db_grafitacna.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_grafitacna.auth_group: ~0 rows (aproximadamente)

-- Volcando estructura para tabla db_grafitacna.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_grafitacna.auth_group_permissions: ~0 rows (aproximadamente)

-- Volcando estructura para tabla db_grafitacna.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_grafitacna.auth_permission: ~32 rows (aproximadamente)
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add categoria', 1, 'add_categoria'),
	(2, 'Can change categoria', 1, 'change_categoria'),
	(3, 'Can delete categoria', 1, 'delete_categoria'),
	(4, 'Can view categoria', 1, 'view_categoria'),
	(5, 'Can add producto', 2, 'add_producto'),
	(6, 'Can change producto', 2, 'change_producto'),
	(7, 'Can delete producto', 2, 'delete_producto'),
	(8, 'Can view producto', 2, 'view_producto'),
	(9, 'Can add log entry', 3, 'add_logentry'),
	(10, 'Can change log entry', 3, 'change_logentry'),
	(11, 'Can delete log entry', 3, 'delete_logentry'),
	(12, 'Can view log entry', 3, 'view_logentry'),
	(13, 'Can add permission', 4, 'add_permission'),
	(14, 'Can change permission', 4, 'change_permission'),
	(15, 'Can delete permission', 4, 'delete_permission'),
	(16, 'Can view permission', 4, 'view_permission'),
	(17, 'Can add group', 5, 'add_group'),
	(18, 'Can change group', 5, 'change_group'),
	(19, 'Can delete group', 5, 'delete_group'),
	(20, 'Can view group', 5, 'view_group'),
	(21, 'Can add user', 6, 'add_user'),
	(22, 'Can change user', 6, 'change_user'),
	(23, 'Can delete user', 6, 'delete_user'),
	(24, 'Can view user', 6, 'view_user'),
	(25, 'Can add content type', 7, 'add_contenttype'),
	(26, 'Can change content type', 7, 'change_contenttype'),
	(27, 'Can delete content type', 7, 'delete_contenttype'),
	(28, 'Can view content type', 7, 'view_contenttype'),
	(29, 'Can add session', 8, 'add_session'),
	(30, 'Can change session', 8, 'change_session'),
	(31, 'Can delete session', 8, 'delete_session'),
	(32, 'Can view session', 8, 'view_session');

-- Volcando estructura para tabla db_grafitacna.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_grafitacna.auth_user: ~0 rows (aproximadamente)
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$600000$IDsQS03AxxanoSaEXfU6Jo$zxzsPWewV6Tf/kMdN6SPGgA+qciRHe2UOjk5Nl0F9Fs=', '2024-10-05 20:30:14.699827', 1, 'admin', 'Jhan', 'Apaza', 'jcapazape2020@gmail.com', 1, 1, '2024-10-05 06:23:48.000000');

-- Volcando estructura para tabla db_grafitacna.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_grafitacna.auth_user_groups: ~0 rows (aproximadamente)

-- Volcando estructura para tabla db_grafitacna.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_grafitacna.auth_user_user_permissions: ~0 rows (aproximadamente)

-- Volcando estructura para tabla db_grafitacna.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_grafitacna.django_admin_log: ~0 rows (aproximadamente)
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2024-10-05 06:25:03.266362', '1', 'Laptops', 1, '[{"added": {}}]', 1, 1),
	(2, '2024-10-05 06:25:48.403705', '2', 'Impresoras', 1, '[{"added": {}}]', 1, 1),
	(3, '2024-10-05 06:33:10.104603', '1', 'admin', 2, '[{"changed": {"fields": ["First name", "Last name", "Email address"]}}]', 6, 1),
	(4, '2024-10-05 06:36:17.702587', '1', 'Impresora Epson L1250, USB,WiFi, 1Y (C11CJ71301)', 1, '[{"added": {}}]', 2, 1),
	(5, '2024-10-05 06:37:44.079383', '2', 'Laptop HP 15-fd0006la, Intel Core i7-1355U, 12GB, SSD 512GB, FHD 15.6", FreeDOS, 1Y (802N8LA)', 1, '[{"added": {}}]', 2, 1),
	(6, '2024-10-05 21:20:35.328738', '3', 'Laptop Dell Inspiron 3520, Intel Core i5-1235U, 8GB DDR4, SSD 512GB, 15.6" FHD, Ubuntu, 1Y (HKG75)', 1, '[{"added": {}}]', 2, 1),
	(7, '2024-10-05 21:22:29.916307', '4', 'Impresora Mult. HP Smart Tank 585, USB, WiFi, Bluetooth, 1Y (1F3Y4A)', 1, '[{"added": {}}]', 2, 1),
	(8, '2024-10-05 21:25:14.634111', '5', 'Impresora Mult. Epson L5590, USB, WiFi, LAN, ADF', 1, '[{"added": {}}]', 2, 1),
	(9, '2024-10-05 21:30:52.716898', '6', 'laptop sin imagen', 1, '[{"added": {}}]', 2, 1);

-- Volcando estructura para tabla db_grafitacna.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_grafitacna.django_content_type: ~8 rows (aproximadamente)
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(3, 'admin', 'logentry'),
	(5, 'auth', 'group'),
	(4, 'auth', 'permission'),
	(6, 'auth', 'user'),
	(7, 'contenttypes', 'contenttype'),
	(8, 'sessions', 'session'),
	(1, 'web', 'categoria'),
	(2, 'web', 'producto');

-- Volcando estructura para tabla db_grafitacna.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_grafitacna.django_migrations: ~19 rows (aproximadamente)
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2024-10-05 06:15:00.579356'),
	(2, 'auth', '0001_initial', '2024-10-05 06:15:01.114740'),
	(3, 'admin', '0001_initial', '2024-10-05 06:15:01.254007'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2024-10-05 06:15:01.263216'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-10-05 06:15:01.274385'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2024-10-05 06:15:01.362497'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2024-10-05 06:15:01.430317'),
	(8, 'auth', '0003_alter_user_email_max_length', '2024-10-05 06:15:01.463730'),
	(9, 'auth', '0004_alter_user_username_opts', '2024-10-05 06:15:01.474377'),
	(10, 'auth', '0005_alter_user_last_login_null', '2024-10-05 06:15:01.557003'),
	(11, 'auth', '0006_require_contenttypes_0002', '2024-10-05 06:15:01.562992'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2024-10-05 06:15:01.572988'),
	(13, 'auth', '0008_alter_user_username_max_length', '2024-10-05 06:15:01.641902'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2024-10-05 06:15:01.709524'),
	(15, 'auth', '0010_alter_group_name_max_length', '2024-10-05 06:15:01.730680'),
	(16, 'auth', '0011_update_proxy_permissions', '2024-10-05 06:15:01.741657'),
	(17, 'auth', '0012_alter_user_first_name_max_length', '2024-10-05 06:15:01.813483'),
	(18, 'sessions', '0001_initial', '2024-10-05 06:15:01.852815'),
	(19, 'web', '0001_initial', '2024-10-05 06:15:01.930567');

-- Volcando estructura para tabla db_grafitacna.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_grafitacna.django_session: ~0 rows (aproximadamente)
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('ciwtss8eu1fdi7hnb876ljn3517p7p9j', '.eJxVjDsOwyAQRO9CHSGx_FOmzxnQwkJwEoFk7MrK3WNLLpJuNO_NbCzgutSwjjyHidiVCXb57SKmV24HoCe2R-ept2WeIj8UftLB753y-3a6fwcVR93X0hQjtfBAyeeEIKIU6ECWFI2wpJz1qKROsGfAXNBEC6YUckoBFM0-X9xqN9U:1sxBPq:6pBs3OMRolm4NH6Vc_1TlEkLaUYmu_WLntoS10K5XXQ', '2024-10-19 20:30:14.701868'),
	('e4l6soyk5ud6h1ypp3uivithpv50sjkq', '.eJxVjDsOwyAQRO9CHSGx_FOmzxnQwkJwEoFk7MrK3WNLLpJuNO_NbCzgutSwjjyHidiVCXb57SKmV24HoCe2R-ept2WeIj8UftLB753y-3a6fwcVR93X0hQjtfBAyeeEIKIU6ECWFI2wpJz1qKROsGfAXNBEC6YUckoBFM0-X9xqN9U:1sx7A5:rCUHm90ekp8FIu9F5FTu8bzHKZAIb0qvuCu0zEtQWTA', '2024-10-19 15:57:41.400630'),
	('g8ff2tc9fpw09rkeqc2kbqs1l7vg7k3x', '.eJxVjDsOwyAQRO9CHSGx_FOmzxnQwkJwEoFk7MrK3WNLLpJuNO_NbCzgutSwjjyHidiVCXb57SKmV24HoCe2R-ept2WeIj8UftLB753y-3a6fwcVR93X0hQjtfBAyeeEIKIU6ECWFI2wpJz1qKROsGfAXNBEC6YUckoBFM0-X9xqN9U:1swyDj:2wAOQJFj-2F3_eC_NDPpe8peCvqL_TWpM_cPph5nY-Y', '2024-10-19 06:24:51.331595');

-- Volcando estructura para tabla db_grafitacna.web_categoria
CREATE TABLE IF NOT EXISTS `web_categoria` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `fecha_registro` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_grafitacna.web_categoria: ~0 rows (aproximadamente)
INSERT INTO `web_categoria` (`id`, `nombre`, `fecha_registro`) VALUES
	(1, 'Laptops', '2024-10-05 06:25:03.260380'),
	(2, 'Impresoras', '2024-10-05 06:25:48.402678');

-- Volcando estructura para tabla db_grafitacna.web_producto
CREATE TABLE IF NOT EXISTS `web_producto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `descripcion` longtext,
  `precio` decimal(9,2) NOT NULL,
  `fecha_registro` datetime(6) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `categoria_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `web_producto_categoria_id_d7291d19_fk_web_categoria_id` (`categoria_id`),
  CONSTRAINT `web_producto_categoria_id_d7291d19_fk_web_categoria_id` FOREIGN KEY (`categoria_id`) REFERENCES `web_categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_grafitacna.web_producto: ~6 rows (aproximadamente)
INSERT INTO `web_producto` (`id`, `nombre`, `descripcion`, `precio`, `fecha_registro`, `imagen`, `categoria_id`) VALUES
	(1, 'Impresora Epson L1250, USB,WiFi, 1Y (C11CJ71301)', 'Impresora inalámbrica económica para familias y estudiantes. Ofrece costos de impresión ultrabajos gracias al sistema EcoTank de Epson que imprime 4.500 páginas a blanco y negro ó 7.500 páginas a color 2  por cada juego de botellas de repuesto. Diseñada para integrarse en su estilo de vida, está totalmente conectada con Wi-Fi, Wi-Fi Direct, y ofrece funciones de impresión móvil y copia/escaneo con cámara a través de la nueva aplicación Epson Smart Panel, además de ser compatible con la operación por voz a través de Alexa', 629.00, '2024-10-05 06:36:17.696621', 'productos/ImpresoraEpsonL1250_USB_WiFi_1Y.2_1370x.webp', 2),
	(2, 'Laptop HP 15-fd0006la, Intel Core i7-1355U, 12GB, SSD 512GB, FHD 15.6", FreeDOS, 1Y (802N8LA)', 'Este modelo destaca por su diseño estilizado y moderno, con acabados elegantes y un peso relativamente ligero, lo que facilita su transporte. Su pantalla de 15,6 pulgadas Full HD', 2800.00, '2024-10-05 06:37:44.076391', 'productos/fd0006la-v2.webp', 1),
	(3, 'Laptop Dell Inspiron 3520, Intel Core i5-1235U, 8GB DDR4, SSD 512GB, 15.6" FHD, Ubuntu, 1Y (HKG75)', 'Experimente un rendimiento silencioso y receptivo, con procesadores Intel® Core™ de 12° generación combinados con opciones de SSD PCIe. ¿Quieres acelerar los gráficos? Hay gráficos discretos NVIDIA® opcionales disponibles.', 1800.00, '2024-10-05 21:20:35.328015', 'productos/laptop-dell-inspiron-15-3520-intel-core-i5-jxxyt-0_50e82a84-c02e-4f51-96d1-cb_39q9VOn.webp', 1),
	(4, 'Impresora Mult. HP Smart Tank 585, USB, WiFi, Bluetooth, 1Y (1F3Y4A)', 'Al probar el HP Smart Tank 585, nos encontramos con una solución integral para imprimir sin complicaciones. Este dispositivo ofrece un rendimiento confiable y eficiente que se adapta a las necesidades de impresión en el hogar u oficina. ¡Descubre cómo este equipo puede simplificar tu día a día!', 650.00, '2024-10-05 21:22:29.911634', 'productos/ImpresoraMult.HPSmartTank585_USB_WiFi_Bluetooth_1Y_1F3Y4A_-4.webp', 2),
	(5, 'Impresora Mult. Epson L5590, USB, WiFi, LAN, ADF', 'Esta es la impresora multifunción perfecta  (imprimir-escanear-copiar-fax) con Wi-Fi Direct, Ethernet y una pantalla LCD para cualquiera que busque impresiones de alta calidad a un costo por página increíblemente bajo.', 1130.00, '2024-10-05 21:25:14.632114', 'productos/epson-l5590-1.webp', 2),
	(6, 'laptop sin imagen', 'aeeae', 120.00, '2024-10-05 21:30:52.715900', '', 1);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
