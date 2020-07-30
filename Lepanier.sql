-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 28, 2020 at 07:55 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Lepanier`
--

-- --------------------------------------------------------

--
-- Table structure for table `Delivery`
--

CREATE TABLE `Delivery` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `postalCode` varchar(10) DEFAULT NULL,
  `shippedDate` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `deliveryDate` varchar(255) DEFAULT NULL,
  `labelProduct` varchar(255) DEFAULT NULL,
  `idUser` int(11) NOT NULL,
  `idSubscription` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Delivery`
--

INSERT INTO `Delivery` (`id`, `firstname`, `lastname`, `email`, `address`, `postalCode`, `shippedDate`, `city`, `country`, `deliveryDate`, `labelProduct`, `idUser`, `idSubscription`) VALUES
(1, 'Lucy', 'Cummings', 'adipiscing@accumsan.net', '239-3940 Consequat Rd.', '734903', '01/03/2020', 'Beerst', 'Uzbekistan', '10/10/2020', 'salads', 68, 6),
(2, 'Gray', 'Osborn', 'Lorem@auguemalesuada.com', 'Ap #737-2363 Dolor Rd.', '45939', '01/14/2021', 'Wolfsburg', 'Norfolk Island', '09/21/2020', 'desserts', 67, 36),
(3, 'Karyn', 'Donovan', 'magna.Praesent@dis.co.uk', '7280 Lobortis Rd.', '04307', '01/13/2020', 'Ávila', 'Saint Barthélemy', '12/20/2020', 'noodles', 54, 34),
(4, 'Josephine', 'Stephenson', 'gravida.sit@aliquetnec.edu', '624-8677 Nunc Avenue', '116006', '03/20/2020', 'Halle', 'Taiwan', '09/03/2019', 'pasta', 40, 14),
(5, 'Susan', 'Torres', 'mauris.a@nec.net', 'Ap #991-7218 Semper Street', '36603', '02/13/2020', 'Smithers', 'United Arab Emirates', '01/06/2021', 'cereals', 84, 72),
(6, 'Bert', 'Franklin', 'eros@molestie.co.uk', 'Ap #259-5105 Justo. Rd.', '1554', '03/18/2021', 'Salem', 'Philippines', '01/28/2020', 'salads', 64, 52),
(7, 'Doris', 'Gilbert', 'nonummy.ultricies@Donec.edu', 'P.O. Box 218, 6369 Gravida St.', '74191', '05/05/2020', 'Cleveland', 'Grenada', '06/07/2021', 'seafood', 46, 3),
(8, 'Leo', 'Huber', 'odio@massanonante.edu', '406-4473 Suspendisse Road', 'NT1C 7UV', '10/19/2019', 'Gravataí', 'British Indian Ocean Territory', '11/16/2020', 'soups', 67, 49),
(9, 'Kaye', 'Wiggins', 'venenatis.lacus@magnaUttincidunt.edu', 'P.O. Box 562, 7613 Orci. Rd.', '50418', '07/05/2021', 'Brussel X-Luchthaven Remailing', 'Oman', '05/12/2021', 'soups', 49, 65),
(10, 'Solomon', 'Farley', 'Suspendisse.sed@Aenean.net', '6848 Ornare, St.', '6184', '04/23/2021', 'Casacalenda', 'Kazakhstan', '11/15/2020', 'sandwiches', 22, 35),
(11, 'Isaac', 'Nelson', 'libero.Proin@nostraperinceptos.net', '301-5662 Vel Rd.', '3786', '08/08/2019', 'Eigenbrakel', 'Oman', '12/12/2019', 'cereals', 74, 27),
(12, 'Tucker', 'Perry', 'sagittis.augue@ligula.co.uk', 'Ap #726-2296 Cras Rd.', '12412-932', '05/12/2020', 'Balsas', 'Georgia', '08/13/2019', 'pasta', 26, 88),
(13, 'Stone', 'Wall', 'ac.mattis.ornare@metusAeneansed.com', '595-6500 Laoreet St.', '952102', '10/17/2020', 'Saint-Denis', 'Macedonia', '08/03/2019', 'salads', 68, 97),
(14, 'Donovan', 'Shepard', 'lacus.Aliquam.rutrum@Suspendisse.co.uk', '368-4194 Sit Road', '6519 XN', '03/17/2020', 'Imphal', 'South Africa', '06/21/2021', 'soups', 15, 58),
(15, 'Stella', 'Reyes', 'eleifend.non@Morbiquisurna.ca', 'P.O. Box 159, 987 Sed Rd.', '05-600', '10/17/2020', 'Taupo', 'Peru', '01/12/2021', 'seafood', 59, 23),
(16, 'Pearl', 'Leach', 'vitae.nibh@nonduinec.org', 'Ap #227-1699 Nulla Street', '2255', '05/28/2021', 'Carbonear', 'Slovakia', '03/08/2021', 'salads', 45, 7),
(17, 'Emerson', 'Sims', 'sociis.natoque.penatibus@parturientmontesnascetur.net', '8182 Suspendisse Street', '60718', '12/21/2019', 'Villa Verde', 'South Georgia and The South Sandwich Islands', '01/09/2021', 'desserts', 20, 57),
(18, 'Carlos', 'Wade', 'Duis.elementum.dui@sit.org', '883-6237 Cras Ave', '58299', '01/10/2021', 'Herk-de-Stad', 'Tanzania', '11/10/2020', 'soups', 57, 67),
(19, 'Meredith', 'Mcdowell', 'libero@odioapurus.edu', '271 Lectus St.', '63266', '11/06/2020', 'Ham-sur-Heure', 'Wallis and Futuna', '09/10/2019', 'soups', 79, 61),
(20, 'Chandler', 'Barrera', 'quis.diam@at.edu', 'Ap #490-5721 Ante Ave', '19274', '03/30/2020', 'Novosibirsk', 'Iceland', '11/11/2020', 'cereals', 12, 27),
(21, 'Owen', 'Silva', 'enim.Nunc.ut@vestibulum.co.uk', 'P.O. Box 279, 4379 At, Rd.', '940065', '12/08/2020', 'San Giacomo degli Schiavoni', 'Saint Martin', '03/21/2020', 'sandwiches', 12, 13),
(22, 'Hilda', 'Farrell', 'et@nisl.edu', 'Ap #579-7912 Eget St.', '17899', '09/09/2019', 'Luckenwalde', 'Saint Helena, Ascension and Tristan da Cunha', '02/26/2020', 'sandwiches', 29, 30),
(23, 'Quail', 'Montoya', 'est.Nunc@porttitorinterdumSed.com', '896-4045 Purus Road', '8896', '04/25/2020', 'Neerheylissem', 'Korea, North', '05/07/2021', 'salads', 74, 92),
(24, 'Chaney', 'Snider', 'tempus@etmagnis.net', 'P.O. Box 330, 9638 Vivamus Rd.', '20396', '12/14/2020', 'Ranst', 'Macao', '01/23/2021', 'pasta', 13, 49),
(25, 'Roth', 'Cain', 'Pellentesque@Proin.edu', 'Ap #590-4025 Accumsan Avenue', 'Z5836', '02/29/2020', 'Hamme-Mille', 'Liechtenstein', '08/02/2020', 'pasta', 81, 49),
(26, 'Geoffrey', 'Nunez', 'amet.ante.Vivamus@Suspendissenon.co.uk', 'P.O. Box 803, 9488 Eu Rd.', '971076', '12/20/2019', 'Golitsyno', 'Sint Maarten', '06/14/2020', 'soups', 74, 64),
(27, 'Emma', 'Petersen', 'massa@ProinvelitSed.org', 'P.O. Box 600, 6190 Molestie Av.', '902182', '08/25/2019', 'Aalst', 'Afghanistan', '08/09/2020', 'seafood', 49, 90),
(28, 'Tatyana', 'Hayes', 'facilisis@vulputatemaurissagittis.org', 'Ap #506-5136 Enim, Road', '51806', '01/17/2021', 'Castiglione di Sicilia', 'Aruba', '11/09/2020', 'stews', 53, 65),
(29, 'Avye', 'Baker', 'massa.Vestibulum.accumsan@dui.ca', '811 Malesuada Avenue', '5412', '04/27/2021', 'Fochabers', 'Myanmar', '09/02/2019', 'pasta', 40, 26),
(30, 'MacKensie', 'Jarvis', 'mollis@amagna.net', 'P.O. Box 630, 8434 Feugiat St.', '38100', '02/26/2021', 'Biała Podlaska', 'Sierra Leone', '01/13/2021', 'desserts', 98, 98),
(31, 'Nomlanga', 'Jenkins', 'tempor.est@tincidunttempus.ca', '532-960 Lorem St.', '60343', '07/28/2020', 'Dir', 'Croatia', '05/29/2021', 'cereals', 47, 4),
(32, 'Dahlia', 'Simon', 'turpis.non.enim@lobortis.edu', '418 Eu Rd.', '849443', '08/05/2019', 'Kapiti', 'Bosnia and Herzegovina', '12/25/2020', 'noodles', 59, 7),
(33, 'Alfreda', 'Jackson', 'nunc.Quisque@urna.net', '1391 Aliquam, Rd.', '35593', '11/12/2020', 'Voskresensk', 'Czech Republic', '02/18/2020', 'seafood', 45, 16),
(34, 'Eden', 'Barlow', 'enim@ipsumleo.ca', 'P.O. Box 534, 2564 In Rd.', '628549', '09/03/2019', 'Lanklaar', 'Swaziland', '06/07/2021', 'noodles', 74, 39),
(35, 'Nayda', 'Hogan', 'dictum@atnisiCum.co.uk', 'Ap #884-540 Ipsum Street', '10324', '10/26/2019', 'Jaipur', 'Costa Rica', '12/13/2020', 'salads', 32, 20),
(36, 'Ulysses', 'Oneill', 'sed.sem.egestas@diamvel.edu', '970-5558 Aliquet Road', '57882-552', '07/18/2019', 'Conselice', 'Antigua and Barbuda', '03/16/2020', 'sandwiches', 75, 56),
(37, 'Inez', 'Joseph', 'Donec.fringilla@ligulaDonecluctus.co.uk', 'Ap #741-7737 Eget, Street', '21712', '05/30/2020', 'Clackmannan', 'Uruguay', '12/28/2019', 'cereals', 8, 65),
(38, 'Kamal', 'Larson', 'aliquam.enim.nec@cursuseteros.org', '5820 Blandit Rd.', '49271', '06/09/2020', 'Abbotsford', 'Macedonia', '01/16/2021', 'pasta', 56, 82),
(39, 'Cally', 'Miles', 'Aenean.eget.metus@Proin.net', '9842 Nunc Street', '867365', '05/28/2021', 'Balen', 'Eritrea', '01/06/2020', 'stews', 57, 84),
(40, 'Sonya', 'Santos', 'odio.sagittis.semper@nequenonquam.org', '881-4654 Ut Road', '839684', '02/05/2021', 'Antwerpen', 'Portugal', '07/28/2019', 'noodles', 93, 60),
(41, 'Rowan', 'Sykes', 'scelerisque.neque.sed@placerategetvenenatis.org', '789-6612 Elementum, St.', '21617', '12/18/2020', 'Martelange', 'Reunion', '09/30/2019', 'desserts', 58, 53),
(42, 'Kibo', 'Ingram', 'ipsum.nunc@afelis.co.uk', '9972 Metus. Road', '62490', '02/25/2021', 'Honolulu', 'Greenland', '11/25/2019', 'sandwiches', 73, 19),
(43, 'Jelani', 'Garrett', 'Nullam.lobortis.quam@pedeSuspendisse.co.uk', '386 Vehicula Rd.', '7104 NI', '06/13/2021', 'Harbour Grace', 'Peru', '06/03/2020', 'desserts', 59, 55),
(44, 'Austin', 'Gallegos', 'aliquet@euismod.net', '332-8009 Feugiat Rd.', '3060', '02/07/2020', 'Jhang', 'Namibia', '03/27/2020', 'cereals', 37, 24),
(45, 'Cole', 'Mckee', 'vel.venenatis@Crasvulputatevelit.com', 'Ap #233-8468 Sem Ave', 'Z5162', '03/05/2020', 'Mont-de-Marsan', 'Estonia', '03/07/2020', 'salads', 67, 98),
(46, 'Ursa', 'Glover', 'sed.orci@nonarcuVivamus.com', 'P.O. Box 681, 8513 Mauris Ave', 'BL0L 1HV', '08/23/2020', 'Vichuquén', 'Palau', '07/17/2021', 'pies', 100, 24),
(47, 'Wanda', 'Contreras', 'tellus.Nunc@orciUt.org', '985-9254 Eu Avenue', '181250', '12/30/2020', 'Yeongju', 'Macedonia', '09/10/2019', 'sandwiches', 34, 46),
(48, 'Marshall', 'Mcfadden', 'hymenaeos.Mauris.ut@inceptoshymenaeos.com', '483-7659 Accumsan Road', '14471', '05/13/2020', 'Enterprise', 'Saint Barthélemy', '06/23/2020', 'salads', 93, 60),
(49, 'Seth', 'Cline', 'Donec.est@fermentumfermentum.org', '4062 Diam. Rd.', '09457', '09/28/2019', 'Lloydminster', 'Norway', '06/29/2020', 'soups', 21, 53),
(50, 'Lucy', 'Cummings', 'adipiscing@accumsan.net', '239-3940 Consequat Rd.', '734903', '01/03/2020', 'Beerst', 'Uzbekistan', '10/10/2020', 'salads', 80, 71),
(51, 'Gray', 'Osborn', 'Lorem@auguemalesuada.com', 'Ap #737-2363 Dolor Rd.', '45939', '01/14/2021', 'Wolfsburg', 'Norfolk Island', '09/21/2020', 'desserts', 16, 13),
(52, 'Karyn', 'Donovan', 'magna.Praesent@dis.co.uk', '7280 Lobortis Rd.', '04307', '01/13/2020', 'Ávila', 'Saint Barthélemy', '12/20/2020', 'noodles', 76, 72),
(53, 'Josephine', 'Stephenson', 'gravida.sit@aliquetnec.edu', '624-8677 Nunc Avenue', '116006', '03/20/2020', 'Halle', 'Taiwan', '09/03/2019', 'pasta', 43, 98),
(54, 'Susan', 'Torres', 'mauris.a@nec.net', 'Ap #991-7218 Semper Street', '36603', '02/13/2020', 'Smithers', 'United Arab Emirates', '01/06/2021', 'cereals', 42, 18),
(55, 'Bert', 'Franklin', 'eros@molestie.co.uk', 'Ap #259-5105 Justo. Rd.', '1554', '03/18/2021', 'Salem', 'Philippines', '01/28/2020', 'salads', 7, 80),
(56, 'Doris', 'Gilbert', 'nonummy.ultricies@Donec.edu', 'P.O. Box 218, 6369 Gravida St.', '74191', '05/05/2020', 'Cleveland', 'Grenada', '06/07/2021', 'seafood', 22, 31),
(57, 'Leo', 'Huber', 'odio@massanonante.edu', '406-4473 Suspendisse Road', 'NT1C 7UV', '10/19/2019', 'Gravataí', 'British Indian Ocean Territory', '11/16/2020', 'soups', 24, 66),
(58, 'Kaye', 'Wiggins', 'venenatis.lacus@magnaUttincidunt.edu', 'P.O. Box 562, 7613 Orci. Rd.', '50418', '07/05/2021', 'Brussel X-Luchthaven Remailing', 'Oman', '05/12/2021', 'soups', 82, 32),
(59, 'Solomon', 'Farley', 'Suspendisse.sed@Aenean.net', '6848 Ornare, St.', '6184', '04/23/2021', 'Casacalenda', 'Kazakhstan', '11/15/2020', 'sandwiches', 1, 40),
(60, 'Isaac', 'Nelson', 'libero.Proin@nostraperinceptos.net', '301-5662 Vel Rd.', '3786', '08/08/2019', 'Eigenbrakel', 'Oman', '12/12/2019', 'cereals', 42, 90),
(61, 'Tucker', 'Perry', 'sagittis.augue@ligula.co.uk', 'Ap #726-2296 Cras Rd.', '12412-932', '05/12/2020', 'Balsas', 'Georgia', '08/13/2019', 'pasta', 8, 57),
(62, 'Stone', 'Wall', 'ac.mattis.ornare@metusAeneansed.com', '595-6500 Laoreet St.', '952102', '10/17/2020', 'Saint-Denis', 'Macedonia', '08/03/2019', 'salads', 33, 50),
(63, 'Donovan', 'Shepard', 'lacus.Aliquam.rutrum@Suspendisse.co.uk', '368-4194 Sit Road', '6519 XN', '03/17/2020', 'Imphal', 'South Africa', '06/21/2021', 'soups', 76, 67),
(64, 'Stella', 'Reyes', 'eleifend.non@Morbiquisurna.ca', 'P.O. Box 159, 987 Sed Rd.', '05-600', '10/17/2020', 'Taupo', 'Peru', '01/12/2021', 'seafood', 84, 28),
(65, 'Pearl', 'Leach', 'vitae.nibh@nonduinec.org', 'Ap #227-1699 Nulla Street', '2255', '05/28/2021', 'Carbonear', 'Slovakia', '03/08/2021', 'salads', 55, 55),
(66, 'Emerson', 'Sims', 'sociis.natoque.penatibus@parturientmontesnascetur.net', '8182 Suspendisse Street', '60718', '12/21/2019', 'Villa Verde', 'South Georgia and The South Sandwich Islands', '01/09/2021', 'desserts', 11, 63),
(67, 'Carlos', 'Wade', 'Duis.elementum.dui@sit.org', '883-6237 Cras Ave', '58299', '01/10/2021', 'Herk-de-Stad', 'Tanzania', '11/10/2020', 'soups', 71, 78),
(68, 'Meredith', 'Mcdowell', 'libero@odioapurus.edu', '271 Lectus St.', '63266', '11/06/2020', 'Ham-sur-Heure', 'Wallis and Futuna', '09/10/2019', 'soups', 87, 52),
(69, 'Chandler', 'Barrera', 'quis.diam@at.edu', 'Ap #490-5721 Ante Ave', '19274', '03/30/2020', 'Novosibirsk', 'Iceland', '11/11/2020', 'cereals', 1, 50),
(70, 'Owen', 'Silva', 'enim.Nunc.ut@vestibulum.co.uk', 'P.O. Box 279, 4379 At, Rd.', '940065', '12/08/2020', 'San Giacomo degli Schiavoni', 'Saint Martin', '03/21/2020', 'sandwiches', 28, 25),
(71, 'Hilda', 'Farrell', 'et@nisl.edu', 'Ap #579-7912 Eget St.', '17899', '09/09/2019', 'Luckenwalde', 'Saint Helena, Ascension and Tristan da Cunha', '02/26/2020', 'sandwiches', 21, 72),
(72, 'Quail', 'Montoya', 'est.Nunc@porttitorinterdumSed.com', '896-4045 Purus Road', '8896', '04/25/2020', 'Neerheylissem', 'Korea, North', '05/07/2021', 'salads', 91, 99),
(73, 'Chaney', 'Snider', 'tempus@etmagnis.net', 'P.O. Box 330, 9638 Vivamus Rd.', '20396', '12/14/2020', 'Ranst', 'Macao', '01/23/2021', 'pasta', 62, 98),
(74, 'Roth', 'Cain', 'Pellentesque@Proin.edu', 'Ap #590-4025 Accumsan Avenue', 'Z5836', '02/29/2020', 'Hamme-Mille', 'Liechtenstein', '08/02/2020', 'pasta', 36, 76),
(75, 'Geoffrey', 'Nunez', 'amet.ante.Vivamus@Suspendissenon.co.uk', 'P.O. Box 803, 9488 Eu Rd.', '971076', '12/20/2019', 'Golitsyno', 'Sint Maarten', '06/14/2020', 'soups', 83, 18),
(76, 'Emma', 'Petersen', 'massa@ProinvelitSed.org', 'P.O. Box 600, 6190 Molestie Av.', '902182', '08/25/2019', 'Aalst', 'Afghanistan', '08/09/2020', 'seafood', 37, 67),
(77, 'Tatyana', 'Hayes', 'facilisis@vulputatemaurissagittis.org', 'Ap #506-5136 Enim, Road', '51806', '01/17/2021', 'Castiglione di Sicilia', 'Aruba', '11/09/2020', 'stews', 73, 98),
(78, 'Avye', 'Baker', 'massa.Vestibulum.accumsan@dui.ca', '811 Malesuada Avenue', '5412', '04/27/2021', 'Fochabers', 'Myanmar', '09/02/2019', 'pasta', 31, 33),
(79, 'MacKensie', 'Jarvis', 'mollis@amagna.net', 'P.O. Box 630, 8434 Feugiat St.', '38100', '02/26/2021', 'Biała Podlaska', 'Sierra Leone', '01/13/2021', 'desserts', 43, 78),
(80, 'Nomlanga', 'Jenkins', 'tempor.est@tincidunttempus.ca', '532-960 Lorem St.', '60343', '07/28/2020', 'Dir', 'Croatia', '05/29/2021', 'cereals', 23, 23),
(81, 'Dahlia', 'Simon', 'turpis.non.enim@lobortis.edu', '418 Eu Rd.', '849443', '08/05/2019', 'Kapiti', 'Bosnia and Herzegovina', '12/25/2020', 'noodles', 45, 77),
(82, 'Alfreda', 'Jackson', 'nunc.Quisque@urna.net', '1391 Aliquam, Rd.', '35593', '11/12/2020', 'Voskresensk', 'Czech Republic', '02/18/2020', 'seafood', 10, 94),
(83, 'Eden', 'Barlow', 'enim@ipsumleo.ca', 'P.O. Box 534, 2564 In Rd.', '628549', '09/03/2019', 'Lanklaar', 'Swaziland', '06/07/2021', 'noodles', 44, 72),
(84, 'Nayda', 'Hogan', 'dictum@atnisiCum.co.uk', 'Ap #884-540 Ipsum Street', '10324', '10/26/2019', 'Jaipur', 'Costa Rica', '12/13/2020', 'salads', 89, 49),
(85, 'Ulysses', 'Oneill', 'sed.sem.egestas@diamvel.edu', '970-5558 Aliquet Road', '57882-552', '07/18/2019', 'Conselice', 'Antigua and Barbuda', '03/16/2020', 'sandwiches', 73, 68),
(86, 'Inez', 'Joseph', 'Donec.fringilla@ligulaDonecluctus.co.uk', 'Ap #741-7737 Eget, Street', '21712', '05/30/2020', 'Clackmannan', 'Uruguay', '12/28/2019', 'cereals', 38, 74),
(87, 'Kamal', 'Larson', 'aliquam.enim.nec@cursuseteros.org', '5820 Blandit Rd.', '49271', '06/09/2020', 'Abbotsford', 'Macedonia', '01/16/2021', 'pasta', 82, 91),
(88, 'Cally', 'Miles', 'Aenean.eget.metus@Proin.net', '9842 Nunc Street', '867365', '05/28/2021', 'Balen', 'Eritrea', '01/06/2020', 'stews', 29, 61),
(89, 'Sonya', 'Santos', 'odio.sagittis.semper@nequenonquam.org', '881-4654 Ut Road', '839684', '02/05/2021', 'Antwerpen', 'Portugal', '07/28/2019', 'noodles', 91, 16),
(90, 'Rowan', 'Sykes', 'scelerisque.neque.sed@placerategetvenenatis.org', '789-6612 Elementum, St.', '21617', '12/18/2020', 'Martelange', 'Reunion', '09/30/2019', 'desserts', 16, 90),
(91, 'Kibo', 'Ingram', 'ipsum.nunc@afelis.co.uk', '9972 Metus. Road', '62490', '02/25/2021', 'Honolulu', 'Greenland', '11/25/2019', 'sandwiches', 59, 41),
(92, 'Jelani', 'Garrett', 'Nullam.lobortis.quam@pedeSuspendisse.co.uk', '386 Vehicula Rd.', '7104 NI', '06/13/2021', 'Harbour Grace', 'Peru', '06/03/2020', 'desserts', 23, 64),
(93, 'Austin', 'Gallegos', 'aliquet@euismod.net', '332-8009 Feugiat Rd.', '3060', '02/07/2020', 'Jhang', 'Namibia', '03/27/2020', 'cereals', 64, 91),
(94, 'Cole', 'Mckee', 'vel.venenatis@Crasvulputatevelit.com', 'Ap #233-8468 Sem Ave', 'Z5162', '03/05/2020', 'Mont-de-Marsan', 'Estonia', '03/07/2020', 'salads', 33, 96),
(95, 'Ursa', 'Glover', 'sed.orci@nonarcuVivamus.com', 'P.O. Box 681, 8513 Mauris Ave', 'BL0L 1HV', '08/23/2020', 'Vichuquén', 'Palau', '07/17/2021', 'pies', 39, 79),
(96, 'Wanda', 'Contreras', 'tellus.Nunc@orciUt.org', '985-9254 Eu Avenue', '181250', '12/30/2020', 'Yeongju', 'Macedonia', '09/10/2019', 'sandwiches', 18, 34),
(97, 'Marshall', 'Mcfadden', 'hymenaeos.Mauris.ut@inceptoshymenaeos.com', '483-7659 Accumsan Road', '14471', '05/13/2020', 'Enterprise', 'Saint Barthélemy', '06/23/2020', 'salads', 40, 56),
(98, 'Seth', 'Cline', 'Donec.est@fermentumfermentum.org', '4062 Diam. Rd.', '09457', '09/28/2019', 'Lloydminster', 'Norway', '06/29/2020', 'soups', 49, 39),
(99, 'Thane', 'Middleton', 'eget@quisarcu.net', '248-6507 Sem Av.', 'Z3161', '10/05/2020', 'Bogotá', 'Spain', '03/04/2021', 'pasta', 57, 92);

-- --------------------------------------------------------

--
-- Table structure for table `Orders`
--

CREATE TABLE `Orders` (
  `id` int(11) NOT NULL,
  `orderDate` varchar(255) DEFAULT NULL,
  `idUser` int(11) DEFAULT NULL,
  `idProduct` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Orders`
--

INSERT INTO `Orders` (`id`, `orderDate`, `idUser`, `idProduct`) VALUES
(1, '01/08/2020', 97, 1),
(2, '06/24/2021', 65, 1),
(3, '11/25/2019', 24, 2),
(4, '07/16/2021', 29, 2),
(5, '03/27/2020', 75, 2),
(6, '07/05/2021', 22, 3),
(7, '04/22/2021', 97, 3),
(8, '04/16/2021', 6, 3),
(9, '10/23/2020', 9, 1),
(10, '02/17/2020', 25, 1),
(11, '12/10/2020', 66, 3),
(12, '04/18/2021', 80, 2),
(13, '12/05/2019', 63, 1),
(14, '10/23/2020', 33, 2),
(15, '03/07/2021', 82, 2),
(16, '07/21/2019', 14, 2),
(17, '02/28/2020', 88, 2),
(18, '12/11/2019', 42, 3),
(19, '08/15/2019', 82, 2),
(20, '01/09/2020', 61, 2),
(21, '06/21/2020', 15, 3),
(22, '01/09/2021', 74, 1),
(23, '12/02/2020', 23, 3),
(24, '01/26/2020', 78, 3),
(25, '02/07/2020', 25, 1),
(26, '04/20/2021', 16, 1),
(27, '03/07/2020', 95, 1),
(28, '07/15/2020', 34, 2),
(29, '03/29/2021', 100, 3),
(30, '07/18/2019', 34, 2),
(31, '02/11/2020', 2, 1),
(32, '05/18/2020', 92, 1),
(33, '06/11/2020', 67, 3),
(34, '12/01/2020', 21, 1),
(35, '01/31/2020', 85, 2),
(36, '06/05/2020', 44, 1),
(37, '11/03/2019', 70, 1),
(38, '10/15/2019', 71, 3),
(39, '10/07/2020', 94, 1),
(40, '11/27/2020', 2, 2),
(41, '05/19/2021', 18, 2),
(42, '04/07/2021', 30, 3),
(43, '10/19/2019', 61, 1),
(44, '04/28/2021', 73, 2),
(45, '06/26/2020', 82, 2),
(46, '06/09/2021', 92, 1),
(47, '09/29/2019', 88, 3),
(48, '08/28/2020', 31, 1),
(49, '02/13/2021', 84, 2),
(50, '07/11/2021', 2, 2),
(51, '10/14/2020', 78, 2),
(52, '03/22/2021', 23, 3),
(53, '02/20/2021', 76, 3),
(54, '01/02/2020', 12, 1),
(55, '08/19/2020', 1, 3),
(56, '11/08/2019', 63, 3),
(57, '12/12/2020', 69, 2),
(58, '08/25/2020', 41, 2),
(59, '02/09/2020', 95, 1),
(60, '11/07/2020', 42, 2),
(61, '03/24/2020', 86, 1),
(62, '04/07/2021', 17, 1),
(63, '03/30/2020', 63, 3),
(64, '09/23/2019', 6, 3),
(65, '10/11/2020', 15, 3),
(66, '08/04/2019', 41, 1),
(67, '08/14/2019', 99, 1),
(68, '10/05/2020', 51, 3),
(69, '09/28/2019', 94, 3),
(70, '02/28/2020', 92, 2),
(71, '02/05/2021', 20, 3),
(72, '06/21/2021', 98, 3),
(73, '10/29/2020', 3, 1),
(74, '12/15/2020', 45, 1),
(75, '02/23/2021', 4, 3),
(76, '09/28/2020', 84, 2),
(77, '02/15/2021', 36, 2),
(78, '12/11/2019', 10, 3),
(79, '06/19/2021', 50, 2),
(80, '01/30/2020', 61, 3),
(81, '10/18/2020', 75, 2),
(82, '01/22/2021', 30, 3),
(83, '06/29/2021', 51, 3),
(84, '07/06/2020', 21, 2),
(85, '10/16/2020', 95, 2),
(86, '09/27/2019', 95, 3),
(87, '09/22/2019', 88, 3),
(88, '06/06/2020', 16, 1),
(89, '04/13/2020', 38, 1),
(90, '06/01/2020', 87, 3),
(91, '09/24/2020', 24, 3),
(92, '06/13/2021', 54, 3),
(93, '10/13/2019', 41, 2),
(94, '09/28/2020', 51, 3),
(95, '09/24/2020', 77, 1),
(96, '05/07/2020', 62, 1),
(97, '05/05/2021', 64, 3),
(98, '12/20/2019', 70, 2),
(99, '09/12/2020', 48, 1),
(100, '11/10/2019', 20, 2);

-- --------------------------------------------------------

--
-- Table structure for table `Payments`
--

CREATE TABLE `Payments` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `postalCode` varchar(10) DEFAULT NULL,
  `checkNumber` varchar(255) DEFAULT NULL,
  `idProduct` int(11) NOT NULL,
  `paymentDate` varchar(255) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `idUser` int(11) NOT NULL,
  `idSubscription` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Payments`
--

INSERT INTO `Payments` (`id`, `firstname`, `lastname`, `email`, `address`, `postalCode`, `checkNumber`, `idProduct`, `paymentDate`, `amount`, `idUser`, `idSubscription`) VALUES
(1, 'MacKensie', 'Langley', 'risus.quis.diam@mauris.net', 'P.O. Box 219, 4031 Vel Rd.', '2167 IO', '5495314949970004', 0, '12/14/2019', '€182,830', 30, 95),
(2, 'Matthew', 'Yates', 'gravida.mauris.ut@Phasellus.org', 'Ap #446-4339 Nulla. Rd.', '1993', '5494990229266964', 0, '08/25/2020', '€164,214', 6, 51),
(3, 'Otto', 'Bowers', 'ac.libero.nec@volutpat.ca', '348-5895 Scelerisque Ave', '53313', '5286356957209349', 0, '10/02/2020', '€144,572', 57, 40),
(4, 'Tashya', 'Wolf', 'lobortis@sapienAeneanmassa.net', 'P.O. Box 208, 5978 Et Ave', '98519', '5551759754047960', 0, '12/14/2019', '€23,114', 35, 70),
(5, 'Ali', 'Lucas', 'hymenaeos.Mauris.ut@purusactellus.co.uk', '5388 Donec Street', '6827 PR', '5296377570651715', 0, '06/21/2021', '€160,503', 87, 76),
(6, 'Gemma', 'Nunez', 'a@nonummyut.com', '6071 Nunc Rd.', '43375', '5156683135261166', 0, '12/14/2020', '€114,125', 98, 10),
(7, 'Rhoda', 'Skinner', 'elit.elit.fermentum@sapien.com', 'Ap #207-1850 Morbi St.', '21628', '5530417830531129', 0, '11/14/2020', '€141,458', 32, 59),
(8, 'Jasper', 'Tyson', 'Donec.tempor@ametdapibusid.ca', 'P.O. Box 707, 6384 Et Avenue', '72158', '5115892291866912', 0, '11/26/2020', '€58,871', 23, 37),
(9, 'Gemma', 'Hawkins', 'odio.sagittis@auguescelerisquemollis.co.uk', 'P.O. Box 782, 8408 Orci. Street', '327316', '5212172111560553', 0, '04/06/2021', '€115,887', 19, 9),
(10, 'Kamal', 'Campos', 'sodales.at.velit@Phasellusdapibusquam.co.uk', '5594 Amet, Street', 'Z0802', '5109742000699369', 0, '02/17/2021', '€82,276', 7, 80),
(11, 'Macon', 'Schneider', 'velit.Aliquam@Morbinequetellus.net', 'Ap #967-9092 Mus. Av.', '42545', '5480678232544685', 0, '09/08/2019', '€108,161', 85, 4),
(12, 'Berk', 'Scott', 'est.ac.facilisis@Intincidunt.org', 'P.O. Box 172, 9265 Magna St.', '238105', '5442830871612631', 0, '12/31/2020', '€70,118', 30, 62),
(13, 'Eric', 'Hopkins', 'faucibus.Morbi@enimcondimentumeget.co.uk', '2012 Ligula St.', '59555', '5419121181980473', 0, '03/28/2020', '€103,126', 62, 54),
(14, 'Kaseem', 'Gonzalez', 'Nullam@velarcueu.com', 'P.O. Box 777, 605 Sociis Ave', '04-265', '5537998426646150', 0, '07/07/2020', '€137,738', 97, 54),
(15, 'Renee', 'Diaz', 'Fusce.fermentum@etipsumcursus.ca', '8652 Fermentum Ave', '28938', '5443385225726693', 0, '12/15/2020', '€69,932', 2, 8),
(16, 'Yardley', 'Thornton', 'Mauris.eu@auctorvitaealiquet.ca', '882-4632 Neque. Av.', '61560', '5425285113269537', 0, '06/17/2021', '€180,715', 77, 95),
(17, 'Hayes', 'Klein', 'turpis.non.enim@Pellentesque.com', 'P.O. Box 179, 9554 Ut St.', '1083', '5487601337536326', 0, '01/25/2020', '€160,924', 87, 80),
(18, 'Tanisha', 'Hyde', 'tortor.at.risus@iaculisnec.ca', 'Ap #837-4184 Pellentesque, Av.', '33027', '5414983671561203', 0, '08/02/2020', '€24,473', 19, 42),
(19, 'Halla', 'Whitaker', 'pede.Praesent@Vivamussitamet.ca', '641-4835 Sed Avenue', '462837', '5207232112082853', 0, '04/10/2020', '€135,816', 92, 64),
(20, 'Rose', 'Houston', 'sed.pede@commodotinciduntnibh.net', 'P.O. Box 189, 9936 Auctor Rd.', '1494 KZ', '5149692652584884', 0, '04/29/2020', '€178,871', 20, 38),
(21, 'Harrison', 'Koch', 'lectus@interdum.com', 'P.O. Box 564, 517 Urna. Rd.', '60131', '5396665632549375', 0, '05/08/2020', '€160,279', 87, 18),
(22, 'Noel', 'Farmer', 'sit@non.net', 'Ap #415-4948 Sed St.', '28778', '5291677473355891', 0, '11/19/2019', '€78,424', 73, 74),
(23, 'Omar', 'Lyons', 'vel.est.tempor@tempusrisus.ca', '889 Pretium St.', '7691', '5359948917159861', 0, '06/18/2021', '€177,886', 20, 28),
(24, 'Camilla', 'Huber', 'nulla.Integer.vulputate@vitaeerat.co.uk', 'Ap #894-9129 Ultrices. St.', '053277', '5573524197500254', 0, '07/03/2021', '€114,668', 96, 44),
(25, 'Yvette', 'Burks', 'Duis.cursus@tincidunt.co.uk', '842-559 Pellentesque St.', '05566', '5348537087106648', 0, '08/20/2020', '€90,976', 81, 93),
(26, 'Justina', 'Huber', 'Sed.neque.Sed@nonummy.net', '656-3711 A Rd.', '1978', '5105753379874685', 0, '05/08/2020', '€81,628', 2, 84),
(27, 'Darius', 'Case', 'auctor@dictummiac.edu', 'Ap #506-6777 Vitae St.', 'QK8D 1TY', '5200547326262190', 0, '06/17/2020', '€183,438', 90, 3),
(28, 'Vladimir', 'Hutchinson', 'at.iaculis.quis@magnaNamligula.edu', 'P.O. Box 541, 9720 Magna St.', '30208', '5552857702270863', 0, '09/28/2020', '€161,906', 62, 70),
(29, 'Sage', 'Robles', 'est@adipiscingfringilla.edu', '4733 Pellentesque St.', '598160', '5339349828358954', 0, '10/08/2019', '€113,847', 84, 94),
(30, 'Geraldine', 'Glenn', 'et.netus.et@cursusvestibulumMauris.ca', '797-1693 Cras Ave', '29563', '5355261044175345', 0, '07/27/2020', '€182,711', 85, 93),
(31, 'Ayanna', 'Cortez', 'adipiscing@felisDonec.ca', '634-8693 Sagittis. St.', '17525', '5218390880099504', 0, '10/09/2020', '€88,932', 68, 46),
(32, 'Sonya', 'Ballard', 'facilisis.Suspendisse@tellusPhaselluselit.co.uk', 'P.O. Box 731, 6189 Odio. St.', '55-006', '5132867919043630', 0, '02/15/2020', '€94,917', 60, 4),
(33, 'Dorian', 'Lang', 'nec@neque.co.uk', '680-4947 Quam St.', '63699', '5155365716808554', 0, '05/11/2021', '€49,844', 29, 6),
(34, 'Hayfa', 'Underwood', 'Mauris.ut.quam@atortorNunc.edu', 'Ap #230-7686 Duis St.', '92864', '5439080520722150', 0, '08/24/2020', '€33,155', 93, 67),
(35, 'Evangeline', 'Rutledge', 'magnis.dis.parturient@eulacus.edu', '6596 Mauris Rd.', '1881', '5483342285418837', 0, '08/09/2019', '€87,484', 3, 29),
(36, 'Flavia', 'Mcdaniel', 'varius@ipsumacmi.co.uk', '5313 Nisl Rd.', '65059', '5585832551350216', 0, '01/10/2021', '€94,110', 52, 26),
(37, 'Nayda', 'Rivers', 'dolor.elit@Nuncullamcorper.org', '609 Amet, Av.', '258952', '5281327242290142', 0, '12/14/2020', '€75,332', 83, 33),
(38, 'Hedley', 'Mills', 'hendrerit@ridiculus.co.uk', 'P.O. Box 235, 8306 Nec Av.', 'OJ24 9OA', '5300698112799272', 0, '10/13/2019', '€128,119', 97, 22),
(39, 'Griffith', 'Kelley', 'in.dolor@etmagnis.ca', '6960 Ipsum Ave', '9812', '5319969778371477', 0, '08/25/2020', '€105,997', 76, 100),
(40, 'Uriah', 'Hammond', 'gravida.mauris@metus.ca', 'P.O. Box 277, 5598 Eget St.', '979337', '5378930572852631', 0, '04/17/2020', '€84,088', 7, 6),
(41, 'Danielle', 'Martin', 'ante@nisl.com', '122-3560 Auctor Rd.', '64843-857', '5209190719110667', 0, '12/26/2019', '€165,182', 71, 81),
(42, 'Forrest', 'Shepard', 'Vestibulum.ante.ipsum@tristiquepharetra.co.uk', '693-7129 Ligula St.', '96156', '5119803237116201', 0, '11/18/2019', '€31,669', 45, 9),
(43, 'Hakeem', 'Cannon', 'gravida.sagittis.Duis@pharetranibhAliquam.org', 'Ap #913-2431 Dolor Av.', '13586', '5275758457929800', 0, '05/18/2020', '€76,297', 83, 52),
(44, 'Freya', 'Nicholson', 'dis.parturient.montes@luctusaliquet.ca', 'P.O. Box 225, 5559 Auctor. St.', '20745', '5396606352432830', 0, '04/19/2021', '€105,818', 53, 29),
(45, 'Giacomo', 'Bradford', 'mi.Duis.risus@sem.com', '2783 Nunc St.', '06276', '5279344629804290', 0, '04/18/2020', '€27,949', 24, 52),
(46, 'Karyn', 'Mccoy', 'eget@malesuada.com', '4059 Vel, Rd.', '58429-141', '5256850646718153', 0, '04/21/2020', '€26,439', 9, 12),
(47, 'Knox', 'Powell', 'magna.et.ipsum@odioNaminterdum.com', 'P.O. Box 408, 2744 Dolor Road', '2009 VP', '5187749051654412', 0, '08/29/2019', '€167,242', 46, 39),
(48, 'Maile', 'Gilbert', 'Vivamus.euismod.urna@nibh.org', '295-1582 Arcu Road', 'J70 9PO', '5172003821524811', 0, '07/05/2020', '€175,028', 85, 79),
(49, 'MacKensie', 'Langley', 'risus.quis.diam@mauris.net', 'P.O. Box 219, 4031 Vel Rd.', '2167 IO', '5495314949970004', 0, '12/14/2019', '€182,830', 47, 18),
(50, 'Matthew', 'Yates', 'gravida.mauris.ut@Phasellus.org', 'Ap #446-4339 Nulla. Rd.', '1993', '5494990229266964', 0, '08/25/2020', '€164,214', 94, 6),
(51, 'Otto', 'Bowers', 'ac.libero.nec@volutpat.ca', '348-5895 Scelerisque Ave', '53313', '5286356957209349', 0, '10/02/2020', '€144,572', 11, 12),
(52, 'Tashya', 'Wolf', 'lobortis@sapienAeneanmassa.net', 'P.O. Box 208, 5978 Et Ave', '98519', '5551759754047960', 0, '12/14/2019', '€23,114', 2, 14),
(53, 'Ali', 'Lucas', 'hymenaeos.Mauris.ut@purusactellus.co.uk', '5388 Donec Street', '6827 PR', '5296377570651715', 0, '06/21/2021', '€160,503', 44, 94),
(54, 'Gemma', 'Nunez', 'a@nonummyut.com', '6071 Nunc Rd.', '43375', '5156683135261166', 0, '12/14/2020', '€114,125', 39, 26),
(55, 'Rhoda', 'Skinner', 'elit.elit.fermentum@sapien.com', 'Ap #207-1850 Morbi St.', '21628', '5530417830531129', 0, '11/14/2020', '€141,458', 56, 78),
(56, 'Jasper', 'Tyson', 'Donec.tempor@ametdapibusid.ca', 'P.O. Box 707, 6384 Et Avenue', '72158', '5115892291866912', 0, '11/26/2020', '€58,871', 56, 82),
(57, 'Gemma', 'Hawkins', 'odio.sagittis@auguescelerisquemollis.co.uk', 'P.O. Box 782, 8408 Orci. Street', '327316', '5212172111560553', 0, '04/06/2021', '€115,887', 65, 47),
(58, 'Kamal', 'Campos', 'sodales.at.velit@Phasellusdapibusquam.co.uk', '5594 Amet, Street', 'Z0802', '5109742000699369', 0, '02/17/2021', '€82,276', 4, 70),
(59, 'Macon', 'Schneider', 'velit.Aliquam@Morbinequetellus.net', 'Ap #967-9092 Mus. Av.', '42545', '5480678232544685', 0, '09/08/2019', '€108,161', 58, 21),
(60, 'Berk', 'Scott', 'est.ac.facilisis@Intincidunt.org', 'P.O. Box 172, 9265 Magna St.', '238105', '5442830871612631', 0, '12/31/2020', '€70,118', 56, 22),
(61, 'Eric', 'Hopkins', 'faucibus.Morbi@enimcondimentumeget.co.uk', '2012 Ligula St.', '59555', '5419121181980473', 0, '03/28/2020', '€103,126', 100, 23),
(62, 'Kaseem', 'Gonzalez', 'Nullam@velarcueu.com', 'P.O. Box 777, 605 Sociis Ave', '04-265', '5537998426646150', 0, '07/07/2020', '€137,738', 80, 17),
(63, 'Renee', 'Diaz', 'Fusce.fermentum@etipsumcursus.ca', '8652 Fermentum Ave', '28938', '5443385225726693', 0, '12/15/2020', '€69,932', 54, 31),
(64, 'Yardley', 'Thornton', 'Mauris.eu@auctorvitaealiquet.ca', '882-4632 Neque. Av.', '61560', '5425285113269537', 0, '06/17/2021', '€180,715', 40, 38),
(65, 'Hayes', 'Klein', 'turpis.non.enim@Pellentesque.com', 'P.O. Box 179, 9554 Ut St.', '1083', '5487601337536326', 0, '01/25/2020', '€160,924', 59, 88),
(66, 'Tanisha', 'Hyde', 'tortor.at.risus@iaculisnec.ca', 'Ap #837-4184 Pellentesque, Av.', '33027', '5414983671561203', 0, '08/02/2020', '€24,473', 29, 88),
(67, 'Halla', 'Whitaker', 'pede.Praesent@Vivamussitamet.ca', '641-4835 Sed Avenue', '462837', '5207232112082853', 0, '04/10/2020', '€135,816', 72, 86),
(68, 'Rose', 'Houston', 'sed.pede@commodotinciduntnibh.net', 'P.O. Box 189, 9936 Auctor Rd.', '1494 KZ', '5149692652584884', 0, '04/29/2020', '€178,871', 1, 62),
(69, 'Harrison', 'Koch', 'lectus@interdum.com', 'P.O. Box 564, 517 Urna. Rd.', '60131', '5396665632549375', 0, '05/08/2020', '€160,279', 46, 25),
(70, 'Noel', 'Farmer', 'sit@non.net', 'Ap #415-4948 Sed St.', '28778', '5291677473355891', 0, '11/19/2019', '€78,424', 36, 17),
(71, 'Omar', 'Lyons', 'vel.est.tempor@tempusrisus.ca', '889 Pretium St.', '7691', '5359948917159861', 0, '06/18/2021', '€177,886', 40, 30),
(72, 'Camilla', 'Huber', 'nulla.Integer.vulputate@vitaeerat.co.uk', 'Ap #894-9129 Ultrices. St.', '053277', '5573524197500254', 0, '07/03/2021', '€114,668', 5, 32),
(73, 'Yvette', 'Burks', 'Duis.cursus@tincidunt.co.uk', '842-559 Pellentesque St.', '05566', '5348537087106648', 0, '08/20/2020', '€90,976', 17, 19),
(74, 'Justina', 'Huber', 'Sed.neque.Sed@nonummy.net', '656-3711 A Rd.', '1978', '5105753379874685', 0, '05/08/2020', '€81,628', 33, 100),
(75, 'Darius', 'Case', 'auctor@dictummiac.edu', 'Ap #506-6777 Vitae St.', 'QK8D 1TY', '5200547326262190', 0, '06/17/2020', '€183,438', 11, 87),
(76, 'Vladimir', 'Hutchinson', 'at.iaculis.quis@magnaNamligula.edu', 'P.O. Box 541, 9720 Magna St.', '30208', '5552857702270863', 0, '09/28/2020', '€161,906', 91, 48),
(77, 'Sage', 'Robles', 'est@adipiscingfringilla.edu', '4733 Pellentesque St.', '598160', '5339349828358954', 0, '10/08/2019', '€113,847', 63, 97),
(78, 'Geraldine', 'Glenn', 'et.netus.et@cursusvestibulumMauris.ca', '797-1693 Cras Ave', '29563', '5355261044175345', 0, '07/27/2020', '€182,711', 85, 26),
(79, 'Ayanna', 'Cortez', 'adipiscing@felisDonec.ca', '634-8693 Sagittis. St.', '17525', '5218390880099504', 0, '10/09/2020', '€88,932', 63, 69),
(80, 'Sonya', 'Ballard', 'facilisis.Suspendisse@tellusPhaselluselit.co.uk', 'P.O. Box 731, 6189 Odio. St.', '55-006', '5132867919043630', 0, '02/15/2020', '€94,917', 94, 94),
(81, 'Dorian', 'Lang', 'nec@neque.co.uk', '680-4947 Quam St.', '63699', '5155365716808554', 0, '05/11/2021', '€49,844', 46, 11),
(82, 'Hayfa', 'Underwood', 'Mauris.ut.quam@atortorNunc.edu', 'Ap #230-7686 Duis St.', '92864', '5439080520722150', 0, '08/24/2020', '€33,155', 28, 99),
(83, 'Evangeline', 'Rutledge', 'magnis.dis.parturient@eulacus.edu', '6596 Mauris Rd.', '1881', '5483342285418837', 0, '08/09/2019', '€87,484', 81, 34),
(84, 'Flavia', 'Mcdaniel', 'varius@ipsumacmi.co.uk', '5313 Nisl Rd.', '65059', '5585832551350216', 0, '01/10/2021', '€94,110', 100, 36),
(85, 'Nayda', 'Rivers', 'dolor.elit@Nuncullamcorper.org', '609 Amet, Av.', '258952', '5281327242290142', 0, '12/14/2020', '€75,332', 58, 19),
(86, 'Hedley', 'Mills', 'hendrerit@ridiculus.co.uk', 'P.O. Box 235, 8306 Nec Av.', 'OJ24 9OA', '5300698112799272', 0, '10/13/2019', '€128,119', 58, 34),
(87, 'Griffith', 'Kelley', 'in.dolor@etmagnis.ca', '6960 Ipsum Ave', '9812', '5319969778371477', 0, '08/25/2020', '€105,997', 14, 27),
(88, 'Uriah', 'Hammond', 'gravida.mauris@metus.ca', 'P.O. Box 277, 5598 Eget St.', '979337', '5378930572852631', 0, '04/17/2020', '€84,088', 33, 10),
(89, 'Danielle', 'Martin', 'ante@nisl.com', '122-3560 Auctor Rd.', '64843-857', '5209190719110667', 0, '12/26/2019', '€165,182', 21, 57),
(90, 'Forrest', 'Shepard', 'Vestibulum.ante.ipsum@tristiquepharetra.co.uk', '693-7129 Ligula St.', '96156', '5119803237116201', 0, '11/18/2019', '€31,669', 21, 50),
(91, 'Hakeem', 'Cannon', 'gravida.sagittis.Duis@pharetranibhAliquam.org', 'Ap #913-2431 Dolor Av.', '13586', '5275758457929800', 0, '05/18/2020', '€76,297', 98, 88),
(92, 'Freya', 'Nicholson', 'dis.parturient.montes@luctusaliquet.ca', 'P.O. Box 225, 5559 Auctor. St.', '20745', '5396606352432830', 0, '04/19/2021', '€105,818', 7, 49),
(93, 'Giacomo', 'Bradford', 'mi.Duis.risus@sem.com', '2783 Nunc St.', '06276', '5279344629804290', 0, '04/18/2020', '€27,949', 82, 95),
(94, 'Karyn', 'Mccoy', 'eget@malesuada.com', '4059 Vel, Rd.', '58429-141', '5256850646718153', 0, '04/21/2020', '€26,439', 40, 80),
(95, 'Knox', 'Powell', 'magna.et.ipsum@odioNaminterdum.com', 'P.O. Box 408, 2744 Dolor Road', '2009 VP', '5187749051654412', 0, '08/29/2019', '€167,242', 30, 42),
(96, 'Maile', 'Gilbert', 'Vivamus.euismod.urna@nibh.org', '295-1582 Arcu Road', 'J70 9PO', '5172003821524811', 0, '07/05/2020', '€175,028', 61, 6),
(97, 'Benjamin', 'White', 'lectus.pede@vitaeposuere.net', 'P.O. Box 804, 5443 Non Road', '24592', '5415245523304912', 0, '02/26/2020', '€161,393', 29, 45);

-- --------------------------------------------------------

--
-- Table structure for table `Products`
--

CREATE TABLE `Products` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `photo` text,
  `description` text,
  `price` varchar(100) DEFAULT NULL,
  `productVendor` varchar(255) DEFAULT NULL,
  `quantityInStock` mediumint(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Products`
--

INSERT INTO `Products` (`id`, `label`, `photo`, `description`, `price`, `productVendor`, `quantityInStock`) VALUES
(1, 'panier spécial', 'path', 'malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus', '€49,724', 'Castor', 76),
(2, 'panier 2pers', 'path', 'massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae', '€20,929', 'Chava', 89),
(3, ' panier familliale ', 'path', 'dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget', '€33,074', 'Robin', 56);

-- --------------------------------------------------------

--
-- Table structure for table `Subscriptions`
--

CREATE TABLE `Subscriptions` (
  `id` int(11) NOT NULL,
  `idOrder` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Subscriptions`
--

INSERT INTO `Subscriptions` (`id`, `idOrder`, `status`) VALUES
(1, 75, 'False'),
(2, 31, 'True'),
(3, 54, 'True'),
(4, 82, 'False'),
(5, 32, 'True'),
(6, 11, 'True'),
(7, 18, 'False'),
(8, 89, 'False'),
(9, 97, 'True'),
(10, 20, 'False'),
(11, 39, 'False'),
(12, 81, 'False'),
(13, 67, 'True'),
(14, 64, 'True'),
(15, 50, 'True'),
(16, 44, 'False'),
(17, 38, 'False'),
(18, 79, 'True'),
(19, 14, 'True'),
(20, 16, 'False'),
(21, 44, 'True'),
(22, 48, 'False'),
(23, 56, 'True'),
(24, 49, 'False'),
(25, 19, 'True'),
(26, 76, 'True'),
(27, 23, 'False'),
(28, 43, 'True'),
(29, 87, 'True'),
(30, 27, 'True'),
(31, 81, 'False'),
(32, 69, 'True'),
(33, 8, 'True'),
(34, 86, 'False'),
(35, 91, 'True'),
(36, 46, 'False'),
(37, 59, 'False'),
(38, 45, 'False'),
(39, 37, 'False'),
(40, 14, 'False'),
(41, 40, 'False'),
(42, 32, 'True'),
(43, 46, 'True'),
(44, 59, 'False'),
(45, 66, 'False'),
(46, 52, 'False'),
(47, 22, 'False'),
(48, 72, 'True'),
(49, 67, 'True'),
(50, 12, 'False'),
(51, 97, 'False'),
(52, 89, 'True'),
(53, 92, 'False'),
(54, 81, 'False'),
(55, 50, 'True'),
(56, 39, 'True'),
(57, 82, 'False'),
(58, 79, 'False'),
(59, 37, 'False'),
(60, 91, 'False'),
(61, 89, 'False'),
(62, 91, 'True'),
(63, 20, 'False'),
(64, 75, 'True'),
(65, 87, 'False'),
(66, 60, 'False'),
(67, 74, 'True'),
(68, 4, 'True'),
(69, 18, 'True'),
(70, 8, 'False'),
(71, 42, 'False'),
(72, 56, 'True'),
(73, 31, 'False'),
(74, 15, 'False'),
(75, 59, 'True'),
(76, 38, 'True'),
(77, 71, 'False'),
(78, 55, 'True'),
(79, 58, 'True'),
(80, 25, 'False'),
(81, 30, 'False'),
(82, 95, 'False'),
(83, 55, 'False'),
(84, 31, 'True'),
(85, 10, 'False'),
(86, 1, 'True'),
(87, 26, 'False'),
(88, 20, 'True'),
(89, 11, 'False'),
(90, 93, 'True'),
(91, 45, 'False'),
(92, 85, 'True'),
(93, 39, 'True'),
(94, 86, 'True'),
(95, 27, 'True'),
(96, 34, 'True'),
(97, 71, 'True'),
(98, 26, 'False'),
(99, 74, 'False'),
(100, 25, 'False');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `postalCode` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `Role` varchar(255) DEFAULT NULL,
  `dateModification` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dateCreation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `firstname`, `lastname`, `password`, `email`, `address`, `postalCode`, `city`, `country`, `Role`, `dateModification`, `dateCreation`) VALUES
(1, 'Eve', 'Golden', 'Sed', 'turpis@Vivamusnisi.net44444', 'Ap #114-9380 Donec Av.', '54729', 'Rochester', 'Kiribati', '', '2020-07-20 12:09:51', '2020-07-20 12:11:01'),
(2, 'Leila', 'Whitley', 'nec', 'faucibus.leo@scelerisquesed.co.uk', 'Ap #681-4368 Sed Road', '6661', 'Ross-on-Wye', 'United States', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(3, 'Orlando', 'Mcdaniel', 'magna.', 'auctor.quis.tristique@lacus.edu', '6048 Orci Ave', '76193', 'Leiden', 'Azerbaijan', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(4, 'Nissim', 'Cline', 'Nunc', 'libero.mauris.aliquam@egestasascelerisque.net', '525-9975 Ullamcorper, St.', '78-453', 'Rachecourt', 'Congo, the Democratic Republic of the', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(5, 'Helen', 'Hunter', 'montes,', 'est.Mauris@blanditcongueIn.ca', '4487 Eu St.', 'P5E 4P5', 'Huntsville', 'Gambia', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(6, 'Rinah', 'Osborne', 'lacus.', 'Proin.ultrices@eratvolutpat.ca', '5297 Vitae Road', '22835', 'Frigento', 'Uzbekistan', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(7, 'Fleur', 'Mccarthy', 'eu', 'velit@ipsum.com', '5524 Sollicitudin Ave', '749528', 'Liévin', 'Guam', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(8, 'Forrest', 'Kane', 'quam.', 'sociis.natoque.penatibus@cursuseteros.net', 'Ap #421-8533 Pellentesque St.', '5450', 'Parkland County', 'Saint Lucia', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(9, 'Acton', 'Vance', 'ipsum.', 'parturient.montes@seddolorFusce.co.uk', '905-728 Nibh Rd.', '38517-98093', 'Vieux-Genappe', 'Kuwait', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(10, 'Tana', 'Cameron', 'orci,', 'vel.vulputate.eu@egestas.ca', '431-3552 Consectetuer, Rd.', 'Z0944', 'Kingston', 'Russian Federation', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(11, 'Octavia', 'Page', 'congue.', 'Curae.Donec.tincidunt@ullamcorperDuis.co.uk', 'Ap #890-4565 Urna, Street', '45795', 'Montjovet', 'Virgin Islands, United States', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(12, 'Natalie', 'Norris', 'nascetur', 'adipiscing.lobortis.risus@etrisusQuisque.org', 'Ap #260-4120 Ante Road', '839409', 'Wrexham', 'Falkland Islands', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(13, 'Tyler', 'Nguyen', 'Suspendisse', 'id.libero@metuseu.com', '4449 Interdum Rd.', '07651', 'Sperlinga', 'Palestine, State of', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(14, 'Isaiah', 'Contreras', 'cursus', 'ridiculus.mus@tincidunt.com', '3304 Vivamus Road', '720035', 'Paju', 'Reunion', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(15, 'Kelly', 'Cortez', 'Phasellus', 'elit@egestas.co.uk', 'P.O. Box 947, 9797 Ut Rd.', '651943', 'Juliaca', 'Czech Republic', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(16, 'Denton', 'Norman', 'odio', 'adipiscing@semperauctorMauris.net', '5195 Est Avenue', '3323', 'Marsciano', 'Somalia', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(17, 'Jessamine', 'Acosta', 'Nam', 'in.faucibus@molestie.ca', 'Ap #854-6122 Varius. Avenue', '50500', 'Tintange', 'Greenland', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(18, 'Jada', 'Meadows', 'pede,', 'aliquet.odio@enim.org', 'Ap #517-6803 Vitae St.', '20506', 'Londerzeel', 'Turks and Caicos Islands', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(19, 'Phillip', 'Bradford', 'sodales', 'Aenean.eget.metus@lectusante.org', 'P.O. Box 707, 9844 Dolor, Road', '7142', 'Spittal an der Drau', 'South Sudan', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(20, 'Cullen', 'Miller', 'Curabitur', 'risus.Quisque@Donec.com', 'Ap #852-4999 Commodo Ave', '990051', 'Wimbledon', 'Ukraine', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(21, 'Sydney', 'Alexander', 'et,', 'ut@Utsagittis.com', '2169 Lobortis Street', '19950', 'Cavallino', 'Cook Islands', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(22, 'Ori', 'Bowen', 'Cum', 'ipsum@placerategetvenenatis.ca', '340-3996 Donec Rd.', '16292', 'Reutov', 'Panama', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(23, 'Ivan', 'Schroeder', 'scelerisque,', 'lacus.Nulla@scelerisque.edu', '7808 Nibh Av.', '494946', 'Gualdo Tadino', 'Austria', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(24, 'August', 'Ballard', 'Nunc', 'Morbi@odioEtiamligula.edu', '9539 Est, Rd.', '17627', 'Woerden', 'Kenya', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(25, 'Sonya', 'Dudley', 'erat.', 'luctus@nibhQuisquenonummy.org', 'P.O. Box 994, 6230 Nulla. Road', '9480', 'Tielrode', 'Reunion', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(26, 'Grady', 'Moore', 'ante.', 'sit.amet.risus@Integereu.co.uk', 'P.O. Box 782, 9407 Lorem St.', 'K4 3ML', 'Friedrichshafen', 'Lithuania', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(27, 'Ori', 'Fuller', 'Nullam', 'non.enim.commodo@diamSed.edu', '193-5411 Pretium Rd.', '89232', 'GomzŽ-Andoumont', 'Swaziland', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(28, 'Kadeem', 'Hudson', 'cursus', 'egestas.nunc@vestibulumMaurismagna.ca', 'Ap #503-1024 Nec St.', '743250', 'Zielona Góra', 'Congo (Brazzaville)', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(29, 'Baxter', 'Bonner', 'Vivamus', 'Duis.volutpat@dolorsit.co.uk', 'P.O. Box 280, 693 Volutpat Av.', '09617', 'Forlì', 'Czech Republic', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(30, 'Sylvester', 'Huber', 'viverra.', 'Suspendisse@leoMorbi.net', 'Ap #292-437 Lectus. Street', '39877', 'Ururi', 'Guernsey', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(31, 'Noel', 'Jenkins', 'fringilla', 'lectus.justo.eu@mauriseuelit.org', 'Ap #495-3140 Scelerisque St.', '6564', 'Port Coquitlam', 'Saudi Arabia', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(32, 'Charity', 'Mcdaniel', 'a', 'vitae.purus.gravida@Cras.net', '7785 Ridiculus Rd.', '62989', 'Asha', 'Brunei', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(33, 'Meredith', 'Bolton', 'enim', 'urna.suscipit.nonummy@Proin.org', 'P.O. Box 512, 7635 Augue St.', '77507', 'Celle', 'Mauritius', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(34, 'Idona', 'Morin', 'Sed', 'risus@idrisus.org', 'Ap #673-833 A St.', '41605', 'Midlands', 'Swaziland', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(35, 'Sacha', 'England', 'urna', 'sollicitudin.orci@idmollisnec.org', 'Ap #679-5215 Mollis Road', '776064', 'Oviedo', 'Saint Barthélemy', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(36, 'Perry', 'Mercado', 'risus.', 'netus.et@antedictumcursus.net', 'Ap #912-6779 Aliquam Road', '772818', 'Antey-Saint-Andrè', 'Bahamas', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(37, 'Austin', 'Bray', 'eget,', 'tincidunt.nunc.ac@enimSuspendisse.net', '8937 Dui, Rd.', '269394', 'Skegness', 'Pitcairn Islands', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(38, 'Montana', 'Wheeler', 'felis,', 'ultrices@adipiscingelitAliquam.ca', 'P.O. Box 344, 3434 Non Rd.', '685798', 'Canino', 'French Polynesia', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(39, 'Ryan', 'Dejesus', 'Etiam', 'Etiam.vestibulum.massa@posuereenim.edu', 'Ap #202-4523 Augue Rd.', '7233', 'Kukatpalle', 'Burkina Faso', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(40, 'Paki', 'Atkinson', 'ac', 'eu.lacus.Quisque@Aeneaneget.ca', '193-469 Nulla Rd.', '08735-726', 'Kotamobagu', 'Central African Republic', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(41, 'Dante', 'Bolton', 'felis,', 'cursus.purus@Mauris.co.uk', 'P.O. Box 316, 7780 Congue Av.', '32851', 'Massa Martana', 'Dominica', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(42, 'Joshua', 'Castillo', 'at', 'vel.mauris@eros.co.uk', 'Ap #103-8900 Sed, St.', '96900-641', 'Maria', 'Philippines', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(43, 'Chaney', 'Byrd', 'aliquet', 'amet.faucibus@malesuadavelvenenatis.com', '6219 Id Road', '75477', 'Sclayn', 'Jamaica', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(44, 'Lionel', 'Figueroa', 'sem', 'dictum@Mauris.edu', '1224 Diam. Avenue', '12830-720', 'Conselice', 'Reunion', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(45, 'Jolene', 'Morgan', 'nisl.', 'lacus.Aliquam@Sedeunibh.org', 'P.O. Box 752, 6351 Lacus. Avenue', '22057', 'Vancouver', 'Cape Verde', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(46, 'Kylee', 'Rios', 'Duis', 'Phasellus@tinciduntpede.edu', '6664 Mattis St.', '24220', 'Laurencekirk', 'Rwanda', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(47, 'Abraham', 'Dodson', 'eu,', 'at.libero@euligulaAenean.org', 'P.O. Box 740, 1926 Mauris St.', '21004', 'Lethbridge', 'Mali', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(48, 'Hayes', 'Quinn', 'mauris', 'Etiam.ligula@odio.net', 'P.O. Box 730, 5667 Placerat. Av.', '87543', 'Gelbressee', 'Switzerland', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(49, 'Brent', 'Morin', 'elit,', 'sed@maurisidsapien.net', '268-2720 Non Rd.', '32630-03609', 'Suxy', 'Sweden', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(50, 'Sharon', 'Stephenson', 'dis', 'Curabitur.vel@Integer.edu', '425-6317 Ipsum Avenue', '54269', 'Kanpur', 'Brunei', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(51, 'Zephania', 'Cabrera', 'quam.', 'scelerisque.neque@eratnonummyultricies.org', 'P.O. Box 778, 4462 Ac Rd.', 'Z2926', 'Korolyov', 'Syria', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(52, 'Erasmus', 'Hess', 'Curabitur', 'turpis.Aliquam@euturpisNulla.net', 'P.O. Box 733, 9750 Aenean Av.', '09280-041', 'Shigar', 'Seychelles', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(53, 'Colton', 'White', 'nec,', 'Nunc.mauris@ipsumprimisin.com', 'Ap #953-4281 Non, Rd.', '5062', 'Serramonacesca', 'Liechtenstein', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(54, 'Brock', 'Adkins', 'neque', 'accumsan@enim.ca', '6551 Ultrices Rd.', 'Z7266', 'Iowa City', 'Uganda', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(55, 'Berk', 'Chambers', 'eu', 'mollis.nec@mattis.ca', 'Ap #111-785 Risus. Road', 'YD3 6UE', 'Castel Colonna', 'Comoros', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(56, 'Hammett', 'Mcgee', 'augue', 'tincidunt.pede@enim.co.uk', 'Ap #743-6563 Consequat Rd.', '90-421', 'San Martino in Badia/St. Martin in Thurn', 'Malaysia', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(57, 'Chaney', 'French', 'elit.', 'Phasellus.elit.pede@dictumultricies.ca', 'P.O. Box 298, 299 A, Ave', 'KH0 6TV', 'Curicó', 'Qatar', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(58, 'Jason', 'Hansen', 'nulla.', 'amet.consectetuer@magnaSuspendissetristique.org', '7221 Class St.', '9305', 'Rutten', 'Lithuania', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(59, 'Silas', 'Edwards', 'Quisque', 'Sed@bibendumsedest.net', 'Ap #410-2871 Ipsum. St.', '20024', 'Sint-Joost-ten-Node', 'Saudi Arabia', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(60, 'Liberty', 'Morton', 'Integer', 'Lorem.ipsum.dolor@variusorciin.org', '232-952 Ultricies Street', '00500', 'Raurkela', 'Samoa', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(61, 'Ian', 'Mclaughlin', 'pharetra.', 'venenatis.vel.faucibus@tortorInteger.com', '299-4804 Non Road', '68953', 'Almería', 'Guinea', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(62, 'Cairo', 'Jennings', 'metus.', 'tellus@imperdietnecleo.net', 'P.O. Box 448, 2983 Magnis St.', '15645', 'Kailua', 'Saint Barthélemy', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(63, 'Oren', 'Duran', 'vel,', 'sociosqu.ad.litora@molestie.ca', '9796 Tincidunt Avenue', '35010', 'Wittenberg', 'Peru', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(64, 'Zelenia', 'Herring', 'erat.', 'Suspendisse.dui.Fusce@ataugue.net', 'P.O. Box 262, 3111 Erat Ave', '1018', 'Kashira', 'Christmas Island', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(65, 'Lilah', 'Bryan', 'Maecenas', 'augue.scelerisque.mollis@Donec.com', 'Ap #970-4140 Mus. Street', '903121', 'Sahagún', 'French Guiana', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(66, 'Kato', 'Young', 'fringilla', 'magna.et.ipsum@neque.co.uk', '6008 Dui. Av.', '42-693', 'Seattle', 'Uruguay', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(67, 'Noah', 'Mendez', 'non,', 'blandit.Nam@velnislQuisque.org', 'Ap #820-4149 Et Av.', '87754-141', 'Ospedaletto Lodigiano', 'Åland Islands', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(68, 'Sylvia', 'Steele', 'sapien', 'scelerisque.mollis.Phasellus@enimcommodohendrerit.net', 'P.O. Box 754, 6502 Urna. St.', '851082', 'Vlissegem', 'Haiti', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(69, 'Lawrence', 'Solomon', 'lectus', 'pretium.aliquet@enim.ca', '578-2401 Tempus Rd.', '719595', 'Gravelbourg', 'Uganda', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(70, 'Amos', 'Casey', 'dolor.', 'auctor@enimnec.edu', 'P.O. Box 697, 6157 Justo St.', '20817', 'Weert', 'Kiribati', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(71, 'Sylvia', 'Kent', 'tempus', 'pede.Cras.vulputate@nonquamPellentesque.edu', 'Ap #647-7010 Non Av.', '5173', 'Mianwali', 'Chad', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(72, 'Lila', 'Brown', 'nulla.', 'Nullam@ligulaDonecluctus.com', '628-3657 Malesuada Rd.', '43444', 'Kumbakonam', 'Panama', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(73, 'Larissa', 'Conway', 'senectus', 'nec@ipsumleoelementum.edu', 'Ap #797-5534 Urna, St.', '73264', 'Milano', 'Sri Lanka', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(74, 'Sacha', 'Colon', 'dolor', 'sed.consequat.auctor@risusDonecnibh.co.uk', 'P.O. Box 275, 9075 Eu St.', 'B4 7CL', 'Tarbes', 'Israel', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(75, 'Griffin', 'Brennan', 'euismod', 'egestas@nequeInornare.com', 'Ap #295-1699 Enim. St.', '33436-453', 'Stintino', 'Guinea-Bissau', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(76, 'Ishmael', 'Oneal', 'nunc', 'neque.et@veliteusem.ca', '9899 Vulputate Rd.', '9669', 'Beauwelz', 'El Salvador', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(77, 'Nicholas', 'Knowles', 'ligula.', 'ac.mattis.semper@vitaeerat.co.uk', '710-9587 Tellus. Road', '36800', 'Weesp', 'Peru', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(78, 'George', 'Jarvis', 'est', 'libero.et@nullaat.edu', '401-5606 Elit St.', '886024', 'Fortune', 'American Samoa', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(79, 'Inga', 'Petersen', 'lectus', 'quis.accumsan@Nunc.co.uk', 'Ap #571-6356 Mauris, St.', '2205', 'Parbhani', 'Poland', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(80, 'Raymond', 'Cabrera', 'tellus.', 'ligula@libero.net', 'P.O. Box 331, 2836 Tellus Rd.', '10418', 'St. John\'s', 'Chile', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(81, 'Cathleen', 'Pierce', 'magna.', 'id.mollis.nec@etrutrum.edu', 'P.O. Box 149, 4600 Pede Avenue', '000348', 'Huntsville', 'Sao Tome and Principe', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(82, 'Emmanuel', 'Morales', 'eu', 'mauris.id@nonduinec.co.uk', '9203 Sed, Rd.', '3117', 'Hof', 'Ecuador', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(83, 'Sybill', 'Riley', 'arcu.', 'Duis.a.mi@nonlorem.com', '4671 Enim. Avenue', '30280', 'Poggio Berni', 'Belize', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(84, 'Clio', 'Jefferson', 'Phasellus', 'ac.arcu@nibhdolornonummy.com', 'Ap #552-6089 Auctor, St.', '521623', 'Jonqui�re', 'Cuba', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(85, 'Noble', 'Hester', 'nec,', 'at.egestas.a@pedePraesenteu.com', 'P.O. Box 692, 1518 Etiam Avenue', '27729', 'Chartres', 'Cyprus', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(86, 'Abbot', 'Powell', 'lacus.', 'urna.Vivamus@nequenon.co.uk', 'Ap #629-7307 Lacinia St.', '51230', 'WagnelŽe', 'United States Minor Outlying Islands', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(87, 'Jesse', 'Cunningham', 'vitae,', 'tincidunt.congue@Fuscealiquam.ca', '8701 Nulla Ave', '915299', 'Burns Lake', 'Bahamas', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(88, 'Xanthus', 'Payne', 'dapibus', 'ipsum.cursus.vestibulum@fermentumconvallis.org', 'P.O. Box 680, 1212 Ullamcorper Rd.', '562986', 'Bolzano Vicentino', 'Northern Mariana Islands', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(89, 'Wesley', 'Morrison', 'eu,', 'dis.parturient.montes@sedleoCras.net', 'Ap #688-821 Pede. St.', '1531', 'Gouy-lez-PiŽton', 'Oman', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(90, 'Juliet', 'Jones', 'sed,', 'Mauris@vestibulumMaurismagna.ca', '433-7846 Ac Rd.', '855968', 'Hertsberge saint', 'Congo (Brazzaville)', '', '2020-07-20 12:15:22', '2020-07-20 12:11:01'),
(91, 'Owen', 'Bradshaw', 'morbi', 'blandit.enim.consequat@magnaSed.net', '706-5057 Lacus. Road', '5504', 'Balclutha', 'Ecuador', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(92, 'Brenda', 'Burgess', 'Pellentesque', 'vitae.risus@quamelementum.edu', '664-8524 Integer Rd.', '39875', 'Massa e Cozzile', 'El Salvador', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(93, 'Cora', 'Everett', 'a,', 'dictum.Proin@dignissimmagna.ca', 'P.O. Box 788, 4458 Quisque St.', '74-893', 'Kirkby Lonsdale', 'Antigua and Barbuda', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(94, 'Leilani', 'Barron', 'facilisi.', 'elit.pretium.et@etrutrum.com', 'Ap #752-5068 Phasellus St.', '2416 TR', 'Oberpullendorf', 'Denmark', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(95, 'Daria', 'Holder', 'interdum', 'Suspendisse.dui@rhoncusidmollis.edu', 'P.O. Box 875, 1667 Nunc St.', '34936', 'Cercemaggiore', 'Uzbekistan', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(96, 'Jonah', 'Snyder', 'et,', 'elit@faucibusleo.co.uk', '7597 Rutrum, St.', '73926', 'Kerikeri', 'Côte D\'Ivoire (Ivory Coast)', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(97, 'Lana', 'Conrad', 'fringilla', 'dignissim.magna@accumsansedfacilisis.com', '316-9109 Nulla. St.', '85923', 'Cumberland', 'Bouvet Island', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(98, 'Justina', 'Gordon', 'ut,', 'laoreet@eu.net', '5165 Sagittis Avenue', 'Z8863', 'Orvieto', 'Togo', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(99, 'Charde', 'Norton', 'cursus', 'ut.lacus@Quisquevarius.org', '825-3633 Sit Rd.', '7061 OU', 'Saint-L�onard', 'Sudan', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(100, 'Colleen', 'Tanner', 'urna', 'semper.dui@Duisvolutpat.co.uk', 'Ap #250-6873 Sem Ave', '1814', 'Lissewege', 'Haiti', '', '2020-07-20 12:03:09', '2020-07-20 12:11:01'),
(105, 'Nikola', 'Tandian', '$argon2id$v=19$m=65536,t=4,p=1$z8tk0PbSG+SQ5xe2hZn05Q$JBCYPpTQOe1WqRiLMmEgmwzhEiuV1dY23d7fk3kalJE', 'g@hotmail.fr', NULL, NULL, NULL, NULL, 'ROLE_USER', '2020-07-28 05:44:42', '2020-07-28 05:44:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Delivery`
--
ALTER TABLE `Delivery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idSubscription` (`idSubscription`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`),
  ADD KEY `idProduct` (`idProduct`);

--
-- Indexes for table `Payments`
--
ALTER TABLE `Payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idSubscription` (`idSubscription`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Subscriptions`
--
ALTER TABLE `Subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idOrder` (`idOrder`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Delivery`
--
ALTER TABLE `Delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `Orders`
--
ALTER TABLE `Orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `Payments`
--
ALTER TABLE `Payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `Products`
--
ALTER TABLE `Products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Subscriptions`
--
ALTER TABLE `Subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Delivery`
--
ALTER TABLE `Delivery`
  ADD CONSTRAINT `delivery_ibfk_1` FOREIGN KEY (`idSubscription`) REFERENCES `Subscriptions` (`id`);

--
-- Constraints for table `Orders`
--
ALTER TABLE `Orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `Users` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`idProduct`) REFERENCES `Products` (`id`);

--
-- Constraints for table `Payments`
--
ALTER TABLE `Payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `Users` (`id`),
  ADD CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`idSubscription`) REFERENCES `Subscriptions` (`id`);

--
-- Constraints for table `Subscriptions`
--
ALTER TABLE `Subscriptions`
  ADD CONSTRAINT `subscriptions_ibfk_1` FOREIGN KEY (`idOrder`) REFERENCES `Orders` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
