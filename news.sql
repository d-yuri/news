-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Сен 12 2017 г., 17:02
-- Версия сервера: 5.7.18-0ubuntu0.16.04.1
-- Версия PHP: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `news`
--

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `publisher` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `date`, `publisher`) VALUES
(1, 'news', 'ful news', '2017-12-12 00:00:00', 1),
(2, 'news', 'ful news1', '2017-12-12 00:00:00', 1),
(3, 'news1', 'ful news2', '2017-12-12 00:00:00', 1),
(4, 'news2', 'ful news3', '2017-12-12 00:00:00', 1),
(5, 'news3', 'ful news4', '2017-12-12 00:00:00', 1),
(6, 'news4', 'ful news5', '2017-12-12 00:00:00', 1),
(7, 'news5', 'ful news6', '2017-12-12 00:00:00', 1),
(8, 'news6', 'ful news7', '2017-12-12 00:00:00', 1),
(9, 'news7', 'ful news8', '2017-12-12 00:00:00', 1),
(10, 'news8', 'ful news9', '2017-12-12 00:00:00', 1),
(11, 'news9', 'ful news10', '2017-12-12 00:00:00', 1),
(12, 'news10', 'ful news11', '2017-12-12 00:00:00', 1),
(13, 'news11', 'ful news12', '2017-12-12 00:00:00', 1),
(14, 'news', 'ful news1', '2017-12-12 00:00:00', 1),
(15, 'news1', 'ful news2', '2017-12-12 00:00:00', 1),
(16, 'news2', 'ful news3', '2017-12-12 00:00:00', 1),
(17, 'news3', 'ful news4', '2017-12-12 00:00:00', 1),
(18, 'news4', 'ful news5', '2017-12-12 00:00:00', 1),
(19, 'news5', 'ful news6', '2017-12-12 00:00:00', 1),
(20, 'news6', 'ful news7', '2017-12-12 00:00:00', 1),
(21, 'news7', 'ful news8', '2017-12-12 00:00:00', 1),
(22, 'news8', 'ful news9', '2017-12-12 00:00:00', 1),
(23, 'news9', 'ful news10', '2017-12-12 00:00:00', 1),
(24, 'news10', 'ful news11', '2017-12-12 00:00:00', 1),
(25, 'news11', 'ful news12', '2017-12-12 00:00:00', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
