-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Már 30. 11:03
-- Kiszolgáló verziója: 10.4.24-MariaDB
-- PHP verzió: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `s51_db`
--
CREATE DATABASE IF NOT EXISTS `s51_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `s51_db`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `buli`
--

CREATE TABLE IF NOT EXISTS `buli` (
  `buli_id` int(11) NOT NULL AUTO_INCREMENT,
  `buli_helyszin_id` int(11) NOT NULL,
  `buli_datum` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `buli_kep` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `buli_esemeny` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`buli_id`),
  KEY `buli_helyszin_id` (`buli_helyszin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `buli`
--

INSERT INTO `buli` (`buli_id`, `buli_helyszin_id`, `buli_datum`, `buli_kep`, `buli_esemeny`) VALUES
(2, 3, '2022-11-30', '2.jpg', 'Exclusive night show'),
(3, 2, '2023-01-01', '3.jpg', 'Magyar dalok estélye'),
(4, 4, '2022-12-01', '4.jpg', 'Color fesztivál '),
(5, 5, '2022-12-06', '5.jpg', 'Mikulás party'),
(16, 1, '2023-06-15', '1.jpg', 'Pálinka Fesztivál');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `helyszin`
--

CREATE TABLE IF NOT EXISTS `helyszin` (
  `helyszin_id` int(11) NOT NULL AUTO_INCREMENT,
  `helyszin_varos` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`helyszin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `helyszin`
--

INSERT INTO `helyszin` (`helyszin_id`, `helyszin_varos`) VALUES
(1, 'Debrecen'),
(2, 'Balmazújváros'),
(3, 'Hajdúszoboszló'),
(4, 'Nyíregyháza'),
(5, 'Berettyóújfalu');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jelentkezes`
--

CREATE TABLE IF NOT EXISTS `jelentkezes` (
  `jelentkezes_id` int(11) NOT NULL AUTO_INCREMENT,
  `jelentkezes_esemeny_id` int(11) NOT NULL,
  PRIMARY KEY (`jelentkezes_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `jelentkezes`
--

INSERT INTO `jelentkezes` (`jelentkezes_id`, `jelentkezes_esemeny_id`) VALUES
(1, 1),
(2, 5),
(3, 4),
(4, 4),
(5, 5),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 2),
(26, 2),
(27, 1),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 1),
(33, 1),
(34, 5),
(35, 4),
(36, 4),
(37, 4),
(38, 5),
(39, 3),
(40, 3),
(41, 3),
(42, 3),
(43, 3),
(44, 4),
(45, 1),
(46, 1),
(47, 1),
(48, 4),
(49, 3),
(50, 16),
(51, 16),
(52, 3),
(53, 2),
(54, 3),
(55, 16),
(56, 2);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kialitas`
--

CREATE TABLE IF NOT EXISTS `kialitas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `esemenynev` varchar(100) NOT NULL,
  `helyszin_id` int(11) NOT NULL,
  `datum1` date NOT NULL,
  `datum2` date NOT NULL,
  `kep` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `kialitas`
--

INSERT INTO `kialitas` (`id`, `esemenynev`, `helyszin_id`, `datum1`, `datum2`, `kep`) VALUES
(1, 'A Pioneer Cdj átalakulásai', 1, '2023-02-01', '2023-02-05', 'k1.jpg'),
(2, 'Zenei stílusok a kezdettől', 1, '2023-03-15', '2023-03-17', 'k2.jpg'),
(3, ' Zámbó Jimmy Emlékkiállítás ', 1, '2023-04-10', '2023-04-11', 'k3.jpg'),
(4, 'A magyar zeneipar fejlődése', 1, '2023-05-10', '2023-05-15', 'k4.jpg'),
(5, 'Avicii emlékkiállítás', 1, '2023-09-27', '2023-09-28', 'k5.jpg');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'user', '2020-08-02 14:57:31', '2020-08-02 14:57:31'),
(2, 'moderator', '2020-08-02 14:57:31', '2020-08-02 14:57:31'),
(3, 'admin', '2020-08-02 14:57:31', '2020-08-02 14:57:31');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'user', 'user', '$2a$08$gXM4pyuhZFlC72PeAwxrUOR0uA31/d2PdgnHP35JGV.0bQNiZBatS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'mod', 'mod', '$2a$08$gXM4pyuhZFlC72PeAwxrUOR0uA31/d2PdgnHP35JGV.0bQNiZBatS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'admin', 'admin', '$2a$08$97Ze1/hXfOX44WdC62Rq8uRkog9HYC1HukRX8eld2ZEKPyenM5v.G', '2020-08-02 15:03:59', '2020-08-02 15:03:59');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user_roles`
--

CREATE TABLE IF NOT EXISTS `user_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`roleId`,`userId`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `user_roles`
--

INSERT INTO `user_roles` (`createdAt`, `updatedAt`, `roleId`, `userId`) VALUES
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
('2020-08-02 15:04:00', '2020-08-02 15:04:00', 1, 3),
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 2),
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 3),
('2020-08-02 15:04:00', '2020-08-02 15:04:00', 3, 3);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `buli`
--
ALTER TABLE `buli`
  ADD CONSTRAINT `buli_ibfk_1` FOREIGN KEY (`buli_helyszin_id`) REFERENCES `helyszin` (`helyszin_id`);

--
-- Megkötések a táblához `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
