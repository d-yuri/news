-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Сен 12 2017 г., 16:58
-- Версия сервера: 5.7.18-0ubuntu0.16.04.1
-- Версия PHP: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `yii`
--

-- --------------------------------------------------------

--
-- Структура таблицы `company`
--

CREATE TABLE `company` (
  `comp_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `company`
--

INSERT INTO `company` (`comp_id`, `name`) VALUES
(3, 'Compaq'),
(2, 'IBM'),
(1, 'Intel');

-- --------------------------------------------------------

--
-- Структура таблицы `Firms`
--

CREATE TABLE `Firms` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `Firms`
--

INSERT INTO `Firms` (`id`, `name`) VALUES
(1, 'Sony'),
(2, 'Panasonic'),
(3, 'Samsung');

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `good_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`good_id`, `name`) VALUES
(1, 'Pentium IV'),
(2, 'Celeron');

-- --------------------------------------------------------

--
-- Структура таблицы `Phones`
--

CREATE TABLE `Phones` (
  `pfone_id` int(11) UNSIGNED NOT NULL,
  `firm_id` int(11) UNSIGNED NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `Phones`
--

INSERT INTO `Phones` (`pfone_id`, `firm_id`, `phone`) VALUES
(1, 1, '332-55-56'),
(2, 1, '332-50-01'),
(3, 2, '256-39-11');

-- --------------------------------------------------------

--
-- Структура таблицы `shipment`
--

CREATE TABLE `shipment` (
  `ship_id` int(11) UNSIGNED NOT NULL,
  `comp_id` int(11) NOT NULL,
  `good_id` int(11) NOT NULL,
  `quantity` float NOT NULL,
  `shipdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `shipment`
--

INSERT INTO `shipment` (`ship_id`, `comp_id`, `good_id`, `quantity`, `shipdate`) VALUES
(1, 1, 1, 100, '2010-11-04'),
(2, 1, 1, 200, '2010-11-12'),
(3, 1, 2, 300, '2010-12-02'),
(4, 1, 2, 400, '2010-12-09'),
(5, 2, 1, 100, '2017-09-29'),
(6, 2, 1, 200, '2010-11-06'),
(7, 2, 2, 300, '2010-11-29'),
(8, 2, 2, 400, '2010-12-01');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`comp_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `Firms`
--
ALTER TABLE `Firms`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`good_id`);

--
-- Индексы таблицы `Phones`
--
ALTER TABLE `Phones`
  ADD PRIMARY KEY (`pfone_id`),
  ADD KEY `firm_id` (`firm_id`);

--
-- Индексы таблицы `shipment`
--
ALTER TABLE `shipment`
  ADD PRIMARY KEY (`ship_id`),
  ADD KEY `comp_id` (`comp_id`),
  ADD KEY `good_id` (`good_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `company`
--
ALTER TABLE `company`
  MODIFY `comp_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `Firms`
--
ALTER TABLE `Firms`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `good_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `Phones`
--
ALTER TABLE `Phones`
  MODIFY `pfone_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `shipment`
--
ALTER TABLE `shipment`
  MODIFY `ship_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Phones`
--
ALTER TABLE `Phones`
  ADD CONSTRAINT `Phones_ibfk_1` FOREIGN KEY (`firm_id`) REFERENCES `Firms` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
