-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jul 2021 pada 18.18
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pritech`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(15) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_desc` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `units` int(5) NOT NULL,
  `total` int(15) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `product_code`, `product_name`, `product_desc`, `price`, `units`, `total`, `date`, `email`) VALUES
(15, 'MobileApp', 'Mobile Application', 'Using solid expertise in mobile apps development, our team will help you create practical and seamless experiences on any device and get the best of mobile technology for your business.', 13000000, 1, 13000000, '2021-07-24 03:15:24', 'wahyu@pritech.co.id'),
(16, 'DesktopApp', 'Desktop Application', 'Our custom desktop apps bring your business the ability to create customized features and functionality to tackle your unique business challenges.', 15000000, 1, 15000000, '2021-07-24 03:15:24', 'wahyu@pritech.co.id'),
(17, 'Website', 'Website', 'Website customization simply means converting your artistic business ideas into functional reality. Incorporating custom web development is an all-time recommendation to ensure the success of your business.', 6000000, 1, 6000000, '2021-07-24 03:15:24', 'wahyu@pritech.co.id'),
(18, 'MobileApp', 'Mobile Application', 'Using solid expertise in mobile apps development, our team will help you create practical and seamless experiences on any device and get the best of mobile technology for your business.', 13000000, 1, 13000000, '2021-07-24 04:22:21', 'wahyu@pritech.co.id'),
(19, 'Website', 'Website', 'Website customization simply means converting your artistic business ideas into functional reality. Incorporating custom web development is an all-time recommendation to ensure the success of your business.', 6000000, 1, 6000000, '2021-07-24 04:22:21', 'wahyu@pritech.co.id'),
(29, 'M1', 'Mobile Application', 'Using solid expertise in mobile apps development, our team will help you create practical and seamless experiences on any device and get the best of mobile technology for your business.', 13000000, 1, 13000000, '2021-07-27 02:41:03', 'admin@admin.com'),
(28, 'Website', 'Website', 'Website customization simply means converting your artistic business ideas into functional reality. Incorporating custom web development is an all-time recommendation to ensure the success of your business.', 6000000, 1, 6000000, '2021-07-26 17:36:29', 'wahyu@pritech.co.id');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_code` varchar(60) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_desc` longtext NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_desc`, `product_img_name`, `qty`, `price`) VALUES
(1, 'M1', 'Mobile Application', 'Using solid expertise in mobile apps development, our team will help you create practical and seamless experiences on any device and get the best of mobile technology for your business.', 'mobile.jpg', 46, '13000000'),
(2, 'D1', 'Desktop Application', 'Our custom desktop apps bring your business the ability to create customized features and functionality to tackle your unique business challenges.', 'desktop.jpg', 0, '15000000'),
(3, 'W1', 'Website', 'Website customization simply means converting your artistic business ideas into functional reality. Incorporating custom web development is an all-time recommendation to ensure the success of your business.', 'website.jpg', 39, '6000000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `pin` int(6) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(15) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `address`, `city`, `pin`, `email`, `password`, `type`) VALUES
(1, 'Steve', 'Jobs', 'Infinite Loop', 'California', 95014, 'sjobs@apple.com', 'steve', 'user'),
(2, 'Admin', 'Webmaster', 'Internet', 'Electricity', 101010, 'admin@admin.com', 'admin', 'admin'),
(5, 'Wahyu', 'Rahmadhan', 'Bojonggede', 'Bogor', 16220, 'wahyu@pritech.co.id', 'Bungapipi2021', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`product_code`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
