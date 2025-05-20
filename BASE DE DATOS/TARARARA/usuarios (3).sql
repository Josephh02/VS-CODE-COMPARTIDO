-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2025 at 08:56 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `formulario`
--

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `contrasena`) VALUES
(12, 'hpla', 'dddd@gdg.com', 'dfdfff'),
(13, 'geeg', 'g@g.com', 'dd'),
(14, 'geeg', 'gr@g.com', 'rrr'),
(15, 'geeg', 'fdf@ddd.com', 'fdfd'),
(16, 'fdff', 'fffdf@fsdf.com', 'fdfdf'),
(17, 'ddddd', 'ddd@lkl.com', 'sssd'),
(18, 'gepp', 'dd1gepp@gepp.com', 'ee'),
(19, 'gepp', 'gepp@gepp.com', 'gepp'),
(20, 'este', 'este@gepp.com', 'gepp'),
(21, 'Jose Alberto Moreno', 'Jose@gmail.com', '12345'),
(22, 'iaiaiaiaiaiaiaaiaiaiaiai', 'iaiaiaiaiaiaiaiaiaiaiaiaiaiaiai@gmail.com', '12345689'),
(23, 'laquenomeconoce', 'conece@gmail.com', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
