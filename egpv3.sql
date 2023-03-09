-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Мар 10 2023 г., 01:10
-- Версия сервера: 10.3.38-MariaDB-0ubuntu0.20.04.1
-- Версия PHP: 7.0.33-65+ubuntu20.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `egpv3`
--

-- --------------------------------------------------------

--
-- Структура таблицы `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `unit` int(11) NOT NULL,
  `ip` char(16) NOT NULL,
  `price` int(11) NOT NULL,
  `buy` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `address_buy`
--

CREATE TABLE `address_buy` (
  `id` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `server` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `admins_crmp`
--

CREATE TABLE `admins_crmp` (
  `id` int(11) NOT NULL,
  `server` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `admins_cs`
--

CREATE TABLE `admins_cs` (
  `id` int(11) NOT NULL,
  `server` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `value` varchar(50) NOT NULL,
  `passwd` char(32) NOT NULL,
  `flags` varchar(50) NOT NULL,
  `type` char(3) NOT NULL,
  `time` int(11) NOT NULL,
  `text` varchar(100) NOT NULL,
  `info` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `admins_csgo`
--

CREATE TABLE `admins_csgo` (
  `id` int(11) NOT NULL,
  `server` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `value` varchar(50) NOT NULL,
  `passwd` char(32) NOT NULL,
  `flags` varchar(50) NOT NULL,
  `immunity` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `text` varchar(100) NOT NULL,
  `info` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `admins_css`
--

CREATE TABLE `admins_css` (
  `id` int(11) NOT NULL,
  `server` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `value` varchar(50) NOT NULL,
  `passwd` char(32) NOT NULL,
  `flags` varchar(50) NOT NULL,
  `immunity` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `text` varchar(100) NOT NULL,
  `info` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `admins_cssold`
--

CREATE TABLE `admins_cssold` (
  `id` int(11) NOT NULL,
  `server` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `value` varchar(50) NOT NULL,
  `passwd` char(32) NOT NULL,
  `flags` varchar(50) NOT NULL,
  `immunity` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `text` varchar(100) NOT NULL,
  `info` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `admins_mc`
--

CREATE TABLE `admins_mc` (
  `id` int(11) NOT NULL,
  `server` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `admins_mta`
--

CREATE TABLE `admins_mta` (
  `id` int(11) NOT NULL,
  `server` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `admins_rust`
--

CREATE TABLE `admins_rust` (
  `id` int(11) NOT NULL,
  `server` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `admins_samp`
--

CREATE TABLE `admins_samp` (
  `id` int(11) NOT NULL,
  `server` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `api`
--

CREATE TABLE `api` (
  `id` int(11) NOT NULL,
  `server` int(11) NOT NULL,
  `key` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `auth`
--

CREATE TABLE `auth` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `ip` char(15) NOT NULL,
  `date` int(11) NOT NULL,
  `browser` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `boost`
--

CREATE TABLE `boost` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `server` int(11) NOT NULL,
  `site` varchar(20) NOT NULL,
  `circles` int(11) NOT NULL,
  `money` float NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `boost_rating`
--

CREATE TABLE `boost_rating` (
  `id` int(11) NOT NULL,
  `boost` varchar(15) NOT NULL,
  `rating` int(11) NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cashback`
--

CREATE TABLE `cashback` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `purse` varchar(13) NOT NULL,
  `money` float NOT NULL,
  `date` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `control`
--

CREATE TABLE `control` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `address` varchar(15) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `sql_login` char(20) NOT NULL DEFAULT 'root',
  `sql_passwd` char(32) NOT NULL DEFAULT '',
  `sql_port` int(11) NOT NULL DEFAULT 3306,
  `sql_ftp` char(20) NOT NULL DEFAULT 'ftp',
  `time` int(11) NOT NULL,
  `overdue` int(11) NOT NULL DEFAULT 0,
  `block` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '',
  `install` tinyint(1) NOT NULL DEFAULT 0,
  `fcpu` tinyint(1) NOT NULL DEFAULT 0,
  `limit` int(11) NOT NULL,
  `price` float NOT NULL DEFAULT 0,
  `ram` int(11) NOT NULL DEFAULT 0,
  `hdd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `control_admins_cs`
--

CREATE TABLE `control_admins_cs` (
  `id` int(11) NOT NULL,
  `server` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `value` varchar(50) NOT NULL,
  `passwd` char(32) NOT NULL,
  `flags` varchar(50) NOT NULL,
  `type` char(3) NOT NULL,
  `time` int(11) NOT NULL,
  `text` varchar(100) NOT NULL,
  `info` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `control_admins_csgo`
--

CREATE TABLE `control_admins_csgo` (
  `id` int(11) NOT NULL,
  `server` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `value` varchar(50) NOT NULL,
  `passwd` char(32) NOT NULL,
  `flags` varchar(50) NOT NULL,
  `immunity` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `text` varchar(100) NOT NULL,
  `info` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `control_admins_css`
--

CREATE TABLE `control_admins_css` (
  `id` int(11) NOT NULL,
  `server` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `value` varchar(50) NOT NULL,
  `passwd` char(32) NOT NULL,
  `flags` varchar(50) NOT NULL,
  `immunity` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `text` varchar(100) NOT NULL,
  `info` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `control_admins_cssold`
--

CREATE TABLE `control_admins_cssold` (
  `id` int(11) NOT NULL,
  `server` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `value` varchar(50) NOT NULL,
  `passwd` char(32) NOT NULL,
  `flags` varchar(50) NOT NULL,
  `immunity` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `text` varchar(100) NOT NULL,
  `info` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `control_boost`
--

CREATE TABLE `control_boost` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `server` int(11) NOT NULL,
  `site` varchar(20) NOT NULL,
  `circles` int(11) NOT NULL,
  `money` float NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `control_copy`
--

CREATE TABLE `control_copy` (
  `id` int(11) NOT NULL,
  `user` text DEFAULT NULL,
  `game` char(6) NOT NULL,
  `server` int(11) NOT NULL,
  `pack` varchar(100) NOT NULL,
  `name` char(32) NOT NULL,
  `info` varchar(100) NOT NULL,
  `plugins` text NOT NULL,
  `date` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `control_crontab`
--

CREATE TABLE `control_crontab` (
  `id` int(11) NOT NULL,
  `server` int(11) NOT NULL,
  `task` char(7) NOT NULL DEFAULT '',
  `cron` text DEFAULT NULL,
  `week` text DEFAULT NULL,
  `time` char(20) NOT NULL DEFAULT '',
  `commands` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `control_firewall`
--

CREATE TABLE `control_firewall` (
  `id` int(11) NOT NULL,
  `server` int(11) NOT NULL,
  `sip` char(20) NOT NULL,
  `dest` char(27) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `control_plugins_buy`
--

CREATE TABLE `control_plugins_buy` (
  `id` int(11) NOT NULL,
  `plugin` int(11) NOT NULL,
  `key` varchar(32) NOT NULL,
  `server` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `control_plugins_install`
--

CREATE TABLE `control_plugins_install` (
  `id` int(11) NOT NULL,
  `server` int(11) NOT NULL,
  `plugin` int(11) NOT NULL,
  `upd` int(11) NOT NULL DEFAULT 0,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `control_servers`
--

CREATE TABLE `control_servers` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL DEFAULT 0,
  `unit` int(11) NOT NULL,
  `address` char(21) NOT NULL,
  `game` char(6) NOT NULL,
  `slots` int(11) NOT NULL,
  `online` int(11) NOT NULL DEFAULT 0,
  `players` text DEFAULT NULL,
  `status` char(10) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT 'Новый сервер',
  `pack` varchar(10) NOT NULL DEFAULT '',
  `fps` int(11) NOT NULL DEFAULT 0,
  `tickrate` int(11) NOT NULL DEFAULT 0,
  `map` varchar(100) NOT NULL DEFAULT '',
  `map_start` varchar(100) NOT NULL DEFAULT '',
  `time_start` int(11) NOT NULL DEFAULT 0,
  `ram_use` int(11) NOT NULL DEFAULT 0,
  `cpu_use` int(11) NOT NULL DEFAULT 0,
  `hdd_use` int(11) NOT NULL DEFAULT 0,
  `core_use` int(11) NOT NULL DEFAULT 0,
  `autorestart` int(11) NOT NULL DEFAULT 0,
  `pingboost` int(11) NOT NULL DEFAULT 0,
  `vac` int(11) NOT NULL DEFAULT 1,
  `fastdl` int(11) NOT NULL DEFAULT 0,
  `core_fix` int(11) NOT NULL DEFAULT 0,
  `stop` tinyint(1) NOT NULL DEFAULT 0,
  `ftp` int(11) NOT NULL DEFAULT 0,
  `ftp_passwd` char(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `copy`
--

CREATE TABLE `copy` (
  `id` int(11) NOT NULL,
  `user` text DEFAULT NULL,
  `game` char(6) NOT NULL,
  `server` int(11) NOT NULL,
  `pack` varchar(100) NOT NULL,
  `name` char(32) NOT NULL,
  `info` varchar(100) NOT NULL,
  `plugins` text NOT NULL,
  `date` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `crontab`
--

CREATE TABLE `crontab` (
  `id` int(11) NOT NULL,
  `server` int(11) NOT NULL,
  `task` char(7) NOT NULL DEFAULT '',
  `cron` text DEFAULT NULL,
  `week` text DEFAULT NULL,
  `time` char(20) NOT NULL DEFAULT '',
  `commands` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `firewall`
--

CREATE TABLE `firewall` (
  `id` int(11) NOT NULL,
  `server` int(11) NOT NULL,
  `sip` char(20) NOT NULL,
  `dest` char(27) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `graph`
--

CREATE TABLE `graph` (
  `id` int(11) NOT NULL,
  `server` int(11) NOT NULL,
  `key` char(32) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `graph_day`
--

CREATE TABLE `graph_day` (
  `id` int(11) NOT NULL,
  `server` int(11) NOT NULL,
  `online` int(11) NOT NULL,
  `cpu` int(11) NOT NULL,
  `ram` int(11) NOT NULL,
  `hdd` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `graph_hour`
--

CREATE TABLE `graph_hour` (
  `id` int(11) NOT NULL,
  `server` int(11) NOT NULL,
  `online` int(11) NOT NULL,
  `cpu` int(11) NOT NULL,
  `ram` int(11) NOT NULL,
  `hdd` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `help`
--

CREATE TABLE `help` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `service` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `close` int(11) NOT NULL,
  `notice` tinyint(1) NOT NULL DEFAULT 0,
  `notice_admin` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `help_dialogs`
--

CREATE TABLE `help_dialogs` (
  `id` int(11) NOT NULL,
  `help` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `text` varchar(1000) NOT NULL,
  `img` varchar(1000) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `help_upload`
--

CREATE TABLE `help_upload` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `name` varchar(36) NOT NULL,
  `time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `text` text NOT NULL,
  `date` int(11) NOT NULL,
  `type` char(10) NOT NULL,
  `money` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `logs_sys`
--

CREATE TABLE `logs_sys` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `server` int(11) NOT NULL DEFAULT 0,
  `control` int(11) NOT NULL DEFAULT 0,
  `text` text NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `maps`
--

CREATE TABLE `maps` (
  `id` int(11) NOT NULL,
  `unit` int(11) NOT NULL,
  `game` char(10) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `text` text NOT NULL,
  `full_text` text NOT NULL,
  `tags` varchar(100) NOT NULL,
  `views` int(11) NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `name`, `text`, `full_text`, `tags`, `views`, `date`) VALUES
(1, 'HTTPS', 'Мы добавили SSL сертификат.\nТеперь наш сайт использует защищённую передачу данных между клиентом и веб-сервером.\nТакже сайт будет доступен как по HTTP так и по HTTPS.\n', '\n', 'HTTPS', 135, 1537110460),
(2, 'Mobile Version', 'Мобильная версия сайта будет доступно по адресу &lt;a href=\'http://m.real-servers.net/\'&gt;http://m.real-servers.net/&lt;/a&gt;\n', 'Мобильная версия сайта будет доступно по адресу &lt;a href=\'http://m.real-servers.net/\'&gt;http://m.real-servers.net/&lt;/a&gt;\n', 'Mobile Version', 101, 1544262898),
(3, 'Exploit  CSSv34', 'На серверах CSSv34 не предоставляется полная защита от разных типов эксплойтов (Exploit).\n', '\n', 'Exploit  CSSv34', 83, 1544988778),
(4, 'Технические работы', 'Сегодня с 00:00 ночи до 3:00 утра будут проводиться технические работы.\n', '\n', 'Технические работы', 86, 1545413903),
(5, 'Неполадки', 'В связи с техническими неполадками нашего провайдера пришли к мнению добавить каждому серверу по 5 дней аренды.\n', '\n', 'Неполадки', 108, 1545573267),
(6, 'SurceTV / GOTV', 'Добавили SurceTV / GOTV для серверов Counter-Strike Source v34.\nДля подключения к SurceTV используется айпи адрес и порт.\nпример: 185.162.142.76:28028 \nЕсли ваш айпи адрес сервера: 185.162.142.76:28028\nТогда адрес SurceTV / GOTV сервера: 185.162.142.76:38028\n', 'Добавили SurceTV / GOTV для серверов Counter-Strike Source v34.\nДля подключения к SurceTV используется айпи адрес и порт.\nпример: 185.162.142.76:28028 \nЕсли ваш айпи адрес сервера: 185.162.142.76:28028\nТогда адрес SurceTV / GOTV сервера: 185.162.142.76:38028\n', 'SurceTV / GOTV', 133, 1547852004),
(9, 'SourceBans Material Admin', 'Добавили новую систему бана &quot;SourceBans Material Admin&quot; система контроля наказаний игроков на серверах.\nПодробнее здесь &lt;a href=\'https://github.com/SB-MaterialAdmin\'&gt;https://github.com/SB-MaterialAdmin&lt;/a&gt;\nМожете установить её в Панель управления раздел Web\n', 'Добавили новую систему бана &quot;SourceBans Material Admin&quot; система контроля наказаний игроков на серверах.\nПодробнее здесь &lt;a href=\'https://github.com/SB-MaterialAdmin\'&gt;https://github.com/SB-MaterialAdmin&lt;/a&gt;\nМожете установить её в Панель управления раздел Web\n', 'CSS CSSv34 CSGO', 148, 1549141986),
(10, 'IP:Port', 'Пользователи которые хотят на свой сервер выделенный ip-адрес с портом на выбор или 27015 могут \nобращаться в техподдержку.\nСтоимость выделенного IP адреса 6$/месяц.\nClienții care doresc la sererul lor o ip-adresa dedicată cu portul la alegere inclusiv 27015 pot\nsă se adreseze la suport.\nCostul Ip-adresei dedicate 6$/lună\n', '\n', 'Выделенный ip-адрес, IP-adresă dedicată', 107, 1553245312);

-- --------------------------------------------------------

--
-- Структура таблицы `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `unit` int(11) NOT NULL,
  `server` int(11) NOT NULL DEFAULT 0,
  `text` text NOT NULL,
  `color` char(10) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `owners`
--

CREATE TABLE `owners` (
  `id` int(11) NOT NULL,
  `server` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `rights` text NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `file` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `panel`
--

CREATE TABLE `panel` (
  `address` char(21) NOT NULL,
  `passwd` char(32) NOT NULL,
  `path` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `panel`
--

INSERT INTO `panel` (`address`, `passwd`, `path`) VALUES
('ipaddres:22', 'rootpass', '/var/www/');

-- --------------------------------------------------------

--
-- Структура таблицы `plugins`
--

CREATE TABLE `plugins` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `game` char(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `desc` text DEFAULT NULL,
  `info` text DEFAULT NULL,
  `images` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `cfg` int(11) NOT NULL,
  `upd` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `incompatible` varchar(100) NOT NULL DEFAULT '',
  `choice` varchar(100) NOT NULL DEFAULT '',
  `required` varchar(100) NOT NULL DEFAULT '',
  `packs` varchar(100) NOT NULL DEFAULT 'all',
  `price` float NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `plugins`
--

INSERT INTO `plugins` (`id`, `cat`, `game`, `name`, `desc`, `info`, `images`, `status`, `cfg`, `upd`, `sort`, `incompatible`, `choice`, `required`, `packs`, `price`) VALUES
(1, 11, 'cs', 'Amx_Bans', 'Благодаря ему вы можете вести статистику банов на вашем сервере. Плагин можно интегрировать с несколькими серверами, в следствии они будут иметь одну базу. Благодаря этому забаненный игрок не сможет играть на остальных ваших серверах!', '', 'https://files.gamebanana.com/img/ss/gamefiles/51915f4c9bd02.jpg', 0, 0, 0, 1, '', '', '', 'all', 0),
(2, 12, 'cssold', 'Surcebans', 'SourceBans представляет собой плагин, и веб-интерфейс для управления банами на нескольких серверах, а также легкое управление администраторами различных серверов.', '', 'http://game.parlahost.ru/images/sbans.png', 0, 0, 0, 1, '', '', '', 'all', 0),
(3, 13, 'css', 'Surcebans', 'SourceBans представляет собой плагин, и веб-интерфейс для управления банами на нескольких серверах, а также легкое управление администраторами различных серверов.', '', 'http://game.parlahost.ru/images/sbans.png', 0, 0, 0, 1, '', '', '', 'all', 0),
(11, 1, 'cs', 'ReAuthCheck', 'ReAuthCheck - это Metamod плагин, который дополнительно проверяет авторизацию игроков, делая ряд проверок на валидность, тем самым усиливает защиту сервера от сторонних программ (фейков).', '', 'https://dev-cs.ru/data/resource_icons/0/208.jpg?1511371515', 0, 1, 0, 1, '', '', '', 'all', 0),
(12, 1, 'cs', 'Resources Checker', 'Rechecker это Metamod plugin, дающий возможность проверять клиентские файлы по их md5 хэшу.\r\nВозможное применение:\r\nОбнаружение читерских библиотек в директории игры\r\nОбнаружение отсутствия обязательных для игры файлов\r\nОбнаружение запрещенных моделей игроков, либо создание белого списка разрешенных', '', 'https://dev-cs.ru/data/resource_icons/0/208.jpg?1511371515', 0, 1, 0, 2, '', '', '', 'all', 0),
(13, 1, 'cs', 'ReLocalizeBug Fix', 'ReLocalizeBug Fix - это Metamod плагин, исправляет выкидывание игроков из игры при написании определенных сообщений в чат с использованием символа # в тексте или нике.', '', 'https://dev-cs.ru/data/resource_icons/0/208.jpg?1511371515', 0, 0, 0, 3, '', '', '', 'all', 0),
(14, 1, 'cs', 'ReSemiclip', 'Даёт возможность проходить сквозь игроков.', '', 'https://dev-cs.ru/data/resource_icons/0/208.jpg?1511371515', 0, 1, 0, 4, '', '', '', 'all', 0),
(15, 1, 'cs', 'Revoice', 'Revoice - это Metamod plugin, который дает возможность общения голосовым чатом между non-steam и steam клиентами.', '', 'https://dev-cs.ru/data/resource_icons/0/208.jpg?1511371515', 0, 0, 0, 5, '17', '', '', 'all', 0),
(16, 1, 'cs', 'WHBlocker', 'Блокирует Wallhack подобных координатных OpenGL32 и звуковых ESP читов.', '', 'https://dev-cs.ru/data/resource_icons/0/208.jpg?1511371515', 0, 1, 0, 6, '', '', '', 'all', 0),
(17, 1, 'cs', 'VoiceTranscoder', 'VoiceTranscoder - metamod плагин, позволяющий общаться игрокам с non-steam и steam клиентов.', '', 'https://dev-cs.ru/data/resource_icons/0/208.jpg?1511371515', 0, 1, 0, 7, '15', '', '', 'all', 0),
(31, 35, 'cs', 'Resetscore RUS', 'Плагин обнуляет ваш счёт прописав в чате /rs или /resetscore; плагин переведён на русский язык.', '', 'http://new-line.net.ua/uploads/posts/2011-07/1310690900_resetscore_rus.jpg', 0, 0, 0, 1, '', '', '', 'all', 0),
(32, 35, 'cs', 'New ResetScore + Sound', 'Данный плагин обнуляет счёт Убийств и Смертей в таблице. \r\nЧтобы обнулить счёт надо в общий чат написать вот эту команду: &quot;/rs&quot; или &quot;/restartscore&quot;. \r\nПри использование этой команды будет включён звук', '', 'http://espadaserver.ru/uploads/posts/2014-01/1390933983_39932042.jpg', 0, 0, 0, 2, '', '', '', 'all', 0),
(33, 35, 'cs', 'Reset Score RBS', 'Resetscore - всем известный плагин с помощью которого можно без труда обнулить игровой счёт , это очень удобно когда количество смертей превышает количество убийств и вам так сказать не хочется светить свой счёт тем самым показывая что вы игрок не очень высокого уровня и простота плагина ещё заключается в том что не требуется перезаходить на сервер , достаточно только написать в чате команду /rs и счёт будет обнулён моментально.', '', 'http://new-line.net.ua/uploads/posts/2017-03/1489609081_resetscore1.1.jpg', 0, 0, 0, 3, '', '', '', 'all', 0),
(34, 35, 'cs', 'Пинг-кикер', 'Самый простой и русифицированный пинг кикер!\r\namx_hpk_ping - Максимальный пинг перед тем, как кто то будет кикнут. По умолчанию 200.\r\namx_hpk_check - Интервал в секундах, для проверки пинга. По умолчанию 12 секунд.\r\namx_hpk_tests - Количество проверок, перед тем как игрок с большим пингом будет кикнут. По умолчанию 5.\r\namx_hpk_delay - Время задержки, после подключения игрока на сервер для проверки пинга. По умолчанию 60 секунд.', '', 'http://new-line.net.ua/uploads/posts/2014-01/thumbs/1390996173_high_ping_kicker.png', 0, 0, 0, 4, '', '', '', 'all', 0),
(35, 35, 'cs', 'Ad_Manager', 'Ваша реклама периодически будет появлятся в чате, что позволит проинформировать игроков.\r\nТут будите писать вашу рекламу: \r\naddonsamxmodxconfigsadvertisements.ini \r\nКомандные прописи:\r\n\r\n !g зеленый текст\r\n\r\n!t текст команды; голубой у контров, красный у терроров и белый у спектаторов \r\n!n обычный желтый \r\n@-автоответчик', '', 'http://new-line.net.ua/uploads/posts/2011-04/thumbs/1303672599_ad_manager.jpg', 0, 1, 0, 5, '', '', '', 'all', 0),
(29, 1, 'cs', 'Reunion', 'Reunion является продолжением DProto для ReHLDS.\r\nЭто metamod плагин, который позволяет заходить 47/48 Non-Steam на сервер.', '', 'https://dev-cs.ru/data/resource_icons/0/208.jpg?1511371515', 0, 1, 0, 10, '', '', '', 'all', 0),
(30, 1, 'cs', 'ReSRDetector', 'ReSRDetector - Обнаруживает быструю ходьбу и NameSpam.', '', 'https://dev-cs.ru/data/resource_icons/0/208.jpg?1511371515', 0, 1, 0, 11, '', '', '', 'all', 0),
(27, 1, 'cs', 'ReAimDetector', 'ReAimDetector - это AmxModX модуль для ReHLDS &amp; ReGameDLL, который обнаруживает aim и nospread', '', 'https://dev-cs.ru/data/resource_icons/0/208.jpg?1511371515', 0, 1, 0, 8, '', '', '', 'all', 0),
(28, 1, 'cs', 'SafeNameAndChat [SNAC]', 'SafeNameAndChat - Metamod плагин, который заменяет специальные символы в именах игроков и сообщений чата (из-за которых могут возникнуть ошибки). Плагин убирает непубликуемые символы и пробелы из начала/конца текстового сообщения. Является улучшенной версией плагина LocalizeBugFix.', '', 'https://dev-cs.ru/data/resource_icons/0/208.jpg?1511371515', 0, 1, 0, 9, '', '', '', 'all', 0),
(36, 35, 'cs', 'Advanced Bullet Damage', 'Плагин показывает HUD-сообщение под прицелом с количеством HP, которое Вы отняли у противника или напарника.', '', 'https://forums.alliedmods.net/attachment.php?attachmentid=119691&amp;d=1368174810', 0, 0, 0, 6, '', '', '', 'all', 0),
(37, 35, 'cs', 'Свист пуль (Bullet Whizz)', 'Данный плагин позволяет слышать свист пролетающих пуль, если враг стреляет по вам.', '', 'https://cs-amba.ru/_nw/2/60632121.jpg', 0, 0, 0, 7, '', '', '', 'all', 0),
(38, 35, 'cs', 'Instant AutoTeamBalance', 'Плагин, предназначенный для мгновенной балансировки команд, вместо стандартной балансировки при mp_autoteambalance &quot;1', '', 'http://new-line.net.ua/uploads/posts/2015-12/1450796531_instant_autoteambalance.jpg', 0, 0, 0, 8, '', '', '', 'all', 0),
(40, 35, 'cs', 'Amx Parachute', 'Плагин добавляет парашют для cs 1.6 для всех с моделью', '', 'http://www.csomsk.ru/_ld/2/99155649.gif', 0, 0, 0, 9, '', '', '', 'all', 0),
(41, 35, 'cs', 'BackWeapons', 'При попощи плагина Backweapons amxx теперь оружие на спине. Плагин реализует возможность вешать оружие за спину.', '', 'http://www.csomsk.ru/_ld/0/38177577.jpg', 0, 0, 0, 10, '', '', '', 'all', 0),
(42, 35, 'cs', 'FemaleSound', 'Звуки Headshot, multikill, rampage и т.д.', '', 'http://dust2.ucoz.ru/_ld/5/82958418.jpg', 0, 0, 0, 11, '', '', '', 'all', 0),
(43, 35, 'cs', 'Bomb HUD Timer New', 'Таймер показывает отсчёт до взрыва бомбы в HUD сообщения.', '', 'http://cscontrol.ru/_ld/19/1999.png', 0, 0, 0, 12, '', '', '', 'all', 0),
(44, 35, 'cs', 'AFK Control', 'AFK Control - финальная полуприватная версия менеджера AFK. В нём собрано всё лучшее, что придумано за годы разработок подобных плагинов различными скриптерами.', '', 'https://hl2dm.net/images/avatar/squads/00000064-001.jpg', 0, 0, 0, 13, '', '', '', 'all', 0),
(45, 35, 'cs', 'FullSpawns', 'Благодаря этому плагину будут поддерживатся 32 спауна (тоесть все 32 игрока будут играть, а не сидеть в спектрах). Поддержка идёт на таких картах: de_train, de_nuke, cs_assault, cs_italy.', '', 'http://new-line.net.ua/uploads/posts/2011-12/thumbs/1325164378_fullspawns.jpg', 0, 0, 0, 14, '', '', '', 'all', 0),
(46, 35, 'cs', 'Descriptive &quot;Fire in the hole!&quot; (RUS)', 'Плагин добавляет цветной текст в сообщение &quot;Fire in the hole!&quot;, при этом для каждой гранаты, текст разного цвета и названия.', '', 'http://new-line.net.ua/uploads/posts/2012-07/thumbs/1343564072_descriptive_fire_in_the_hole.jpg', 0, 0, 0, 15, '', '', '', 'all', 0),
(47, 35, 'cs', 'Случайное небо', 'После окончания карты или рестарта сервера небо на карте будет меняться.', '', 'http://perfect-soft.at.ua/_ld/28/67185893.jpg', 0, 0, 0, 16, '', '', '', 'all', 0),
(49, 35, 'cs', 'Mode 2x2', 'Закрывает доступ к второй точке при низком онлайне\r\nКоманды:\r\n/box - для админов с флагом ADMIN_RCON, меню для Создания/Редактирования/Удаления стенок (блоков).\r\n/change - для админов с флагом ADMIN_VOTE, досрочно сменить режим 2x2 на Открытие/Закрытие карты.\r\n/mode - проголосовать за Открытие/Закрытие карты.', '', 'https://i.ytimg.com/vi/6RKFnAXTNG4/maxresdefault.jpg', 0, 1, 0, 17, '', '', '', 'all', 0),
(50, 35, 'cs', 'Двойной прыжок (multijump)', 'Данный плагин позволяет делать двойной прыжок на сервере (для всех)', '', 'http://new-line.net.ua/uploads/posts/2011-06/thumbs/1309117298_multijump_1.jpg', 0, 0, 0, 18, '', '', '', 'all', 0),
(51, 35, 'cs', 'Win Messages', 'Очень лёгкий плагин «Win Messages» для сервера Кс 1.6, от Neygomon&quot;а - Который будет красиво выводить текст победивший команды в конце каждого раунда.', '', 'https://cs-amba.ru/_nw/39/99131163.jpg', 0, 0, 0, 19, '', '', '', 'all', 0),
(52, 35, 'cs', 'Steam Bonus', 'Плагин Steam Bonus - реализует на вашем сервере систему с помощью которой ваши стим игроки будут поочередно каждый раунд поощрятся деньгами и гранатами за то что они играют с Steam версии игры.', '', 'http://cs-valve.clan.su/_ld/2/98797817.jpg', 0, 0, 0, 20, '', '', '', 'all', 0),
(53, 35, 'cs', 'Kill Assist', 'Когда игрока убивают, плагин проверяет достаточно ли напарник из вашей команды нанёс урона жертве. Если урон был больше чем указано в кварах (см. ниже аmx_killassist_mindamage), то убийство считается общим и оба плеера получают фраг (можно выключит данную опцию). Так же такого рода убийства отображаются в статистике.', '', 'http://make-amxserv.ru/uploads/posts/2012-01/1326448481_kill_assist_v1_2.jpg', 0, 0, 0, 21, '', '', '', 'all', 0),
(54, 35, 'cs', 'Map Manager', 'Расширенный менеджер карт\r\nВозможности:\r\n- Досрочное голосование(rtv)\r\n- Номинация карт\r\n- Продление карты\r\n- Вывод меню со списком карт\r\n- Ночной режим (Выключен по умолчанию)\r\n- Блокировка прошлых карт\r\n- Выставление приоритета количества игроков для голосования (Важно: это нежесткое ограничение, если у вас мало карт для текущего онлайна, то будут добавлены остальные)\r\n- Последний раунд\r\n- Работа со стандартными кварами(mp_winlimit, mp_maxrounds)', '', 'https://c-s.net.ua/forum/uploads/monthly_03_2014/post-103470-1395321639.jpg', 0, 1, 0, 22, '', '', '', 'all', 0),
(55, 35, 'cs', 'Death Beams', 'После смерти остаётся траектория выстрела пули. Плагин немного изменен, добавлен анимационный спрайт в виде бегущей дорожки. Направление движения полос показывает, откуда вас убили. \r\nИзменены основные цвета для команд для (CT-зелёный) (T-красный).\r\nCvars:\r\namx_deathbeams_randcolor 0/1 (каждый раз новые цвета)[по умолчанию 0]\r\namx_deathbeams_enabled 0/1 (вкл/выкл плагина)[по умолчанию 1]', '', 'http://cs-hlds.ru/_ld/52/5287.jpg', 0, 0, 0, 23, '', '', '', 'all', 0),
(56, 35, 'cs', 'Christmas Tree', 'Christmas Tree - Плагин заменяет модель бомбы C4 на елку с игрушками', '', 'http://proplaying.ru/_ld/8/63399361.png', 0, 0, 0, 24, '', '', '', 'all', 0),
(57, 35, 'cs', 'Flying Armourys', 'С помощью плагина, оружие, лежащее на земле, может левитировать.', '', 'https://dev-cs.ru/attachments/4410/', 0, 0, 0, 25, '', '', '', 'all', 0),
(58, 35, 'cs', 'Fake Ping 1.1', 'Плагин визуально меняет отображение пинга в таблице счета, основываясь на реальном пинге игроков.\r\nНа работу пинг-кикеров не влияет.', '', 'https://f1comp.ru/wp-content/uploads/2012/12/Image-66.jpg', 0, 0, 0, 26, '', '', '', 'all', 0),
(59, 35, 'cs', 'Team Balance Control 1.3.9', 'Данный плагин предназначен для балансировки команд по двум критериям: количеству и силе (skill). Система баланса построена таким образом, что одних и тех же игроков не переводит: иммунитет теперь не нужен.', '', 'https://cs-amba.ru/_nw/35/04184325.jpg', 0, 1, 0, 27, '', '', '', 'all', 0),
(60, 35, 'cs', 'No Players Map', 'Данный плагин меняет карту если на вашем сервере маленький онлайн в настройках можно указать на какую будет меняется Сообщения в чат о результатах голосования Если сервер пустой, то карта меняется на de_dust2x2\r\nЕсли карта в плагине и текущая карта на сервере совпадают - плагин отключается', '', '', 0, 0, 0, 28, '', '', '', 'all', 0),
(61, 17, 'cs', 'Admin Models', 'Плагин позволяет устанавливать уникальные модели для админов.', '', 'http://tytrup.org/plugins/am.jpg', 0, 0, 0, 1, '', '', '', 'all', 0),
(62, 20, 'cs', 'Preturi Ranguri (MOTD)', 'Daca aveti un server si doriti sa aveti cat mai multi ADMINI, acest plugin vă va ajuta. Cum?! Simplu! Jucatorii interesati de RANG pot tasta in chat (pe server): /preturi si se va deschide pe ecranul lor o imagine MOTD', '', 'http://i56.tinypic.com/291nypc.jpg', 0, 1, 0, 1, '', '', '', 'all', 0),
(63, 26, 'cs', 'CSstats', '', '', '', 0, 1, 0, 1, '', '', '', 'all', 0),
(64, 17, 'cs', 'Admin_Freelook', 'Плагин позволяет мёртвым админам с флагoм &quot;d&quot; следить за игроками с другой команды, даже если поставлено &quot;mp_forcechasecam&quot;.', '', 'http://new-line.net.ua/uploads/posts/2011-05/1306405793_admin_freelook.jpg', 0, 0, 0, 2, '', '', '', 'all', 0),
(65, 35, 'cs', 'Lite AWP Limit', 'Плагин, устанавливает ограничение на использование awp. Аналог плагина sniper_control.\r\nОсобенности: \r\n1. Ограничение только на awp, а не на снайперские винтовки в целом. Скорострелку и муху покупайте на здоровье) \r\n2. Если набран лимит awp на команду, то закупить не даст, а при попытке поднять с земли выкинет обратно. \r\n3. Есть иммунитет для определённого флага. Отключаемо. \r\n4. Минимализм и лёгкость. Все настройки внутри исходника.', '', 'http://cs-russerver.ru/_ld/1/35362913.jpg', 0, 0, 0, 29, '', '', '', 'all', 0),
(66, 17, 'cs', 'Connect Users', 'Плагин который отправляет сообщения в чат о подключения Главного.Администратора сервера , Администраторов и випов. У к каждой должности есть свой соответствующий тег в чате, пример см.(на скриншоте).\r\nНастройка флагов:\r\nmain_admin_flag    &quot;l&quot;        //Флаг Главного Администратора\r\nadmin_flag        &quot;d&quot;        //Флаг Администратора\r\nvip_flag        &quot;t&quot;        //Флаг Випа', '', 'https://cs-amba.ru/_nw/23/28244407.jpg', 0, 1, 0, 3, '', '', '', 'all', 0),
(67, 26, 'cs', 'Info_rank', 'Плагин info_rank.amxx показывает в начале каждого раунда позицию игрока в ранке, так же информирует когда игрок поднимается и опускается по нему.', '', 'http://new-line.net.ua/uploads/posts/2017-01/1483805946_info_rank_v0.1.jpg', 0, 0, 0, 1, '', '', '', 'all', 0),
(68, 3, 'cssold', 'DoS Attack Fixer', 'Этот плагин блокирует DoS атаки, распространенные в последнее время, на сервера SRCDS.\ndaf_status - выводит на экран текущий статус плагина DoS Attack Fix и IP адреса заблокированных нарушителей.\ndaf_reset - очищает список заблокированных IP адресов\n\nНастройки(CVARs):\ndaf_version - версия плагина DoS Attack Fix\ndaf_enable - включить/выключить DoS Attack Fix плагин (по умолчанию включен)\ndaf_log - включить запись атакующих IP адресов в текстовый файл (по умолчанию выключено; файл сохраняется как addons/daf/log.txt)\ndaf_block_alla2cprint - включить блокировку всех A2C_PRINT пакетов (по умолчанию выключено)\ndaf_block_a2cprint_spam - включить блокировку пакетов A2C_PRINT большого объёма (по умолчанию включено)\ndaf_block_a2cprint_nonprintable - включить блокировку пакетов A2C_PRINT содержащих странные символы (по умолчанию включено)', '', 'http://x-zed.ru/_ld/4/07123149.jpg', 0, 1, 0, 1, '', '', '', 'all', 0),
(75, 9, 'cssold', 'Anti Packets Flood 1.0.1.4', 'Anti Packets Flood - Защищает Ваш сервер от флуда пакетами.', '', '', 0, 0, 0, 3, '', '', '', 'all', 0),
(81, 42, 'csgo', 'SourceBans Material Admin', '', '', '', 0, 1, 0, 1, '', '', '', 'all', 0),
(82, 12, 'cssold', 'SourceBans Material Admin', '', '', '', 0, 1, 0, 1, '', '', '', 'all', 0),
(73, 9, 'cssold', 'SMAC 3.4', 'Привет всем, многим известно, что работа SMAC\'a на старой версии движка остановилась 0.8.0.4, версии повыше либо не работали абсолютно, либо с ошибками.\nЯ решил неофициально подогнать SMAC последних версий под старуху v34, и как вы можете догадаться - свершилось чудо, SMAC заработал!\nСписок изменений:\n1) Все модули были пересобраны, оптимизированы и заточены для v34\n2) Вырезан Updater из всех модулей античита, вырезано дополнение Connect и SM Rcon\n3) Принудительно запущены модули - AntiFlash, AntiNoSmoke и CSSFixes\n4) В модуль Command Monitor добавлено около десятка детектов Lua скриптов и интегрирован AntiHLDJ/HLSS\n5) И многое другое...', '', '', 0, 0, 0, 3, '', '', '', 'all', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `plugins_buy`
--

CREATE TABLE `plugins_buy` (
  `id` int(11) NOT NULL,
  `plugin` int(11) NOT NULL,
  `key` varchar(32) NOT NULL,
  `server` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `plugins_category`
--

CREATE TABLE `plugins_category` (
  `id` int(11) NOT NULL,
  `game` char(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `plugins_category`
--

INSERT INTO `plugins_category` (`id`, `game`, `name`, `sort`) VALUES
(1, 'cs', 'Metamod Plugins ( ReHLDS )', 1),
(3, 'cssold', 'SurceMod Plugins', 1),
(9, 'cssold', 'Безопасность', 5),
(11, 'cs', 'Бан-Системы', 6),
(12, 'cssold', 'Бан-Системы', 6),
(13, 'css', 'Бан-Системы', 6),
(17, 'cs', 'Для администраторов', 8),
(20, 'cs', 'Реклама и чат', 9),
(26, 'cs', 'Статистика', 11),
(41, 'cs', 'ReHLDS Version', 1),
(42, 'csgo', 'Серверные', 1),
(35, 'cs', 'Серверные', 14);

-- --------------------------------------------------------

--
-- Структура таблицы `plugins_clear`
--

CREATE TABLE `plugins_clear` (
  `id` int(11) NOT NULL,
  `plugin` int(11) NOT NULL,
  `update` int(11) NOT NULL,
  `text` varchar(200) NOT NULL,
  `file` varchar(100) NOT NULL,
  `regex` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `plugins_clear`
--

INSERT INTO `plugins_clear` (`id`, `plugin`, `update`, `text`, `file`, `regex`) VALUES
(22, 11, 0, 'linux addons/rechecker/rechecker_mm_i386.so', '/cstrike/addons/metamod/plugins.ini', 0),
(23, 12, 0, 'linux addons/rechecker/rechecker_mm_i386.so', '/cstrike/addons/metamod/plugins.ini', 0),
(24, 13, 0, 'linux addons/relocalizebugfix/relocalizebugfix_mm_i386.so', '/cstrike/addons/metamod/plugins.ini', 0),
(112, 15, 0, 'linux addons/revoice/revoice_mm_i386.so', '/cstrike/addons/metamod/plugins.ini', 0),
(55, 16, 0, 'linux addons/whblocker/whblocker_mm_i386.so', '/cstrike/addons/metamod/plugins.ini', 0),
(111, 17, 0, 'linux addons/VoiceTranscoder/VoiceTranscoder.so', '/cstrike/addons/metamod/plugins.ini', 0),
(44, 30, 0, 'linux addons/resrdetector/resrdetector_mm_i386.so', '/cstrike/addons/metamod/plugins.ini', 0),
(43, 29, 0, 'linux addons/reunion/reunion_mm_i386.so', '/cstrike/addons/metamod/plugins.ini', 0),
(42, 28, 0, 'linux addons/SafeNameAndChat/SafeNameAndChat.so', '/cstrike/addons/metamod/plugins.ini', 0),
(41, 27, 0, 'reaimdetector', '/cstrike/addons/amxmodx/configs/modules.ini', 0),
(57, 31, 0, 'resetscore.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(61, 32, 0, 'NewResetScore.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(62, 33, 0, 'RESET_SCORE_V0.2.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(63, 34, 0, 'high_ping_kicker.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(66, 35, 0, 'reklama_in_chat.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(67, 36, 0, 'bullet_damage.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(68, 37, 0, 'Bullet_Whizz.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(71, 38, 0, 'autoteambalance.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(72, 40, 0, 'parachute.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(73, 41, 0, 'backweapons.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(76, 42, 0, 'female_sound.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(77, 43, 0, 'bcd_hudtimer.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(78, 44, 0, 'afk_control.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(79, 45, 0, 'FullSpawns.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(80, 46, 0, 'descriptive_fire_in_the_hole.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(81, 47, 0, 'randomskies.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(83, 49, 0, 'mode.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(84, 50, 0, 'multijump.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(85, 51, 0, 'win_messages.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(86, 52, 0, 'steam_bonus.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(87, 53, 0, 'kill_assist.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(88, 54, 0, 'mapmanager.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(89, 54, 0, 'mapmanager_subplugin.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(90, 55, 0, 'all_death_beams.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(91, 56, 0, 'ChristmasTree.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(92, 57, 0, 'FlyingArmourys.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(93, 58, 0, 'FakePing.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(94, 59, 0, 'TeamBalanceControl.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(95, 60, 0, 'no_players_map.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(96, 61, 0, 'adminmodels.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(97, 62, 0, 'preturi.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(98, 63, 0, 'amxx_cracker', '/cstrike/addons/amxmodx/configs/modules.ini', 0),
(99, 63, 0, 'csstats_mysql.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(100, 64, 0, 'admin_freelook.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(101, 65, 0, 'awp.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(107, 66, 0, 'connect_users.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(113, 67, 0, 'info_rank.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `plugins_config`
--

CREATE TABLE `plugins_config` (
  `id` int(11) NOT NULL,
  `plugin` int(11) NOT NULL,
  `update` int(11) NOT NULL,
  `file` varchar(100) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `plugins_config`
--

INSERT INTO `plugins_config` (`id`, `plugin`, `update`, `file`, `sort`) VALUES
(8, 11, 0, 'cstrike/addons/reauthcheck/reauthcheck.cfg', 1),
(9, 12, 0, 'cstrike/addons/rechecker/resources.ini', 1),
(12, 14, 0, 'cstrike/addons/resemiclip/maps/_prefix_de.ini', 3),
(11, 14, 0, 'cstrike/addons/resemiclip/maps/_de_dust2.ini', 2),
(10, 14, 0, 'cstrike/addons/resemiclip/config.ini', 1),
(26, 16, 0, 'cstrike/addons/whblocker/config.ini', 1),
(69, 17, 0, 'cstrike/addons/VoiceTranscoder/VoiceTranscoder.cfg', 1),
(16, 27, 0, 'cstrike/addons/amxmodx/configs/reaimdetector/config.cfg', 1),
(17, 28, 0, 'cstrike/addons/SafeNameAndChat/SafeNameAndChat.cfg', 1),
(18, 29, 0, 'cstrike/reunion.cfg', 1),
(19, 30, 0, 'cstrike/addons/resrdetector/config.cfg', 1),
(30, 35, 0, 'cstrike/addons/amxmodx/configs/advertisements.ini', 1),
(31, 49, 0, 'cstrike/addons/amxmodx/configs/mode/cs_italy.ini', 1),
(32, 49, 0, 'cstrike/addons/amxmodx/configs/mode/cs_militia.ini', 2),
(33, 49, 0, 'cstrike/addons/amxmodx/configs/mode/cs_office.ini', 3),
(34, 49, 0, 'cstrike/addons/amxmodx/configs/mode/de_abaddon_fix.ini', 4),
(35, 49, 0, 'cstrike/addons/amxmodx/configs/mode/de_alexandra.ini', 5),
(36, 49, 0, 'cstrike/addons/amxmodx/configs/mode/de_aztec.ini', 6),
(37, 49, 0, 'cstrike/addons/amxmodx/configs/mode/de_cbble.ini', 7),
(38, 49, 0, 'cstrike/addons/amxmodx/configs/mode/de_clan1_mill.ini', 8),
(39, 49, 0, 'cstrike/addons/amxmodx/configs/mode/de_clear.ini', 9),
(40, 49, 0, 'cstrike/addons/amxmodx/configs/mode/de_cpl_mill.ini', 10),
(41, 49, 0, 'cstrike/addons/amxmodx/configs/mode/de_dust.ini', 11),
(42, 49, 0, 'cstrike/addons/amxmodx/configs/mode/de_dust2.ini', 12),
(43, 49, 0, 'cstrike/addons/amxmodx/configs/mode/de_dust2002.ini', 13),
(44, 49, 0, 'cstrike/addons/amxmodx/configs/mode/de_dust4ever.ini', 14),
(45, 49, 0, 'cstrike/addons/amxmodx/configs/mode/de_inferno.ini', 15),
(46, 49, 0, 'cstrike/addons/amxmodx/configs/mode/de_kabul.ini', 16),
(47, 49, 0, 'cstrike/addons/amxmodx/configs/mode/de_kabul32.ini', 17),
(48, 49, 0, 'cstrike/addons/amxmodx/configs/mode/de_mirage.ini', 18),
(49, 49, 0, 'cstrike/addons/amxmodx/configs/mode/de_nuke.ini', 19),
(50, 49, 0, 'cstrike/addons/amxmodx/configs/mode/de_russka.ini', 20),
(51, 49, 0, 'cstrike/addons/amxmodx/configs/mode/de_sultan.ini', 21),
(52, 49, 0, 'cstrike/addons/amxmodx/configs/mode/de_train.ini', 22),
(53, 49, 0, 'cstrike/addons/amxmodx/configs/mode/de_tuscan.ini', 23),
(54, 54, 0, 'cstrike/addons/amxmodx/configs/mapmanager.cfg', 1),
(55, 54, 0, 'cstrike/addons/amxmodx/data/lang/mapmanager.txt', 2),
(56, 59, 0, 'cstrike/addons/amxmodx/configs/TeamBalanceControl.cfg', 1),
(57, 59, 0, 'cstrike/addons/amxmodx/data/lang/TeamBalanceControl.txt', 2),
(58, 62, 0, 'cstrike/addons/amxmodx/configs/preturi_ranguri_motd.html', 1),
(59, 63, 0, 'cstrike/addons/amxmodx/configs/csstats_mysql.cfg', 1),
(68, 66, 0, 'cstrike/addons/amxmodx/configs/zhuba/conn.cfg', 1),
(87, 68, 0, 'cstrike/cfg/daf.cfg', 2),
(86, 68, 0, 'cstrike/addons/daf/log.txt', 1),
(156, 82, 0, 'cstrike/addons/sourcemod/translations/sourcecomms.phrases.txt', 6),
(155, 82, 0, 'cstrike/addons/sourcemod/translations/sourcebans.phrases.txt', 5),
(154, 82, 0, 'cstrike/addons/sourcemod/configs/sourcebans/sourcecomms.cfg', 4),
(149, 81, 0, 'csgo/addons/sourcemod/configs/materialadmin/materialadmin.cfg', 1),
(150, 81, 0, 'csgo/addons/sourcemod/translations/materialadmin.phrases.txt', 2),
(151, 82, 0, 'cstrike/addons/sourcemod/configs/sourcebans/sb_admins.cfg', 1),
(152, 82, 0, 'cstrike/addons/sourcemod/configs/sourcebans/sb_admin_groups.cfg', 2),
(153, 82, 0, 'cstrike/addons/sourcemod/configs/sourcebans/sourcebans.cfg', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `plugins_delete`
--

CREATE TABLE `plugins_delete` (
  `id` int(11) NOT NULL,
  `plugin` int(11) NOT NULL,
  `update` int(11) NOT NULL,
  `file` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `plugins_delete_ins`
--

CREATE TABLE `plugins_delete_ins` (
  `id` int(11) NOT NULL,
  `plugin` int(11) NOT NULL,
  `update` int(11) NOT NULL,
  `install` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `plugins_install`
--

CREATE TABLE `plugins_install` (
  `id` int(11) NOT NULL,
  `server` int(11) NOT NULL,
  `plugin` int(11) NOT NULL,
  `upd` int(11) NOT NULL DEFAULT 0,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `plugins_install`
--

INSERT INTO `plugins_install` (`id`, `server`, `plugin`, `upd`, `time`) VALUES
(992, 194, 40, 0, 1535824307),
(991, 194, 58, 0, 1535823794),
(990, 194, 50, 0, 1535823771),
(989, 194, 36, 0, 1535823758),
(988, 194, 32, 0, 1535823750),
(987, 194, 62, 0, 1535823694),
(1062, 203, 35, 0, 1536518860),
(1051, 195, 1, 0, 1536330964),
(966, 188, 1, 0, 1535430526),
(1061, 203, 38, 0, 1536518847),
(1060, 203, 1, 0, 1536518821),
(1059, 203, 29, 0, 1536517614),
(1058, 203, 17, 0, 1536517610),
(1057, 203, 16, 0, 1536517607),
(1050, 195, 49, 0, 1536326442),
(1049, 195, 40, 0, 1536326424),
(1048, 195, 38, 0, 1536326421),
(1047, 195, 28, 0, 1536326359),
(1056, 203, 14, 0, 1536517600),
(1045, 195, 15, 0, 1536326351),
(1044, 195, 14, 0, 1536326348),
(1043, 195, 12, 0, 1536326343),
(1042, 195, 11, 0, 1536326341),
(1652, 153, 68, 0, 1555945340),
(1653, 153, 73, 0, 1555945351),
(1714, 146, 73, 0, 1557055216),
(1713, 146, 68, 0, 1557055209);

-- --------------------------------------------------------

--
-- Структура таблицы `plugins_update`
--

CREATE TABLE `plugins_update` (
  `id` int(11) NOT NULL,
  `plugin` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `desc` text DEFAULT NULL,
  `info` text DEFAULT NULL,
  `images` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `cfg` int(11) NOT NULL,
  `upd` int(11) NOT NULL,
  `incompatible` varchar(100) NOT NULL DEFAULT '',
  `choice` varchar(100) NOT NULL DEFAULT '',
  `required` varchar(100) NOT NULL DEFAULT '',
  `packs` varchar(100) NOT NULL DEFAULT '',
  `price` float NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `plugins_write`
--

CREATE TABLE `plugins_write` (
  `id` int(11) NOT NULL,
  `plugin` int(11) NOT NULL,
  `update` int(11) NOT NULL,
  `text` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL,
  `top` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `plugins_write`
--

INSERT INTO `plugins_write` (`id`, `plugin`, `update`, `text`, `file`, `top`) VALUES
(23, 11, 0, 'linux addons/rechecker/rechecker_mm_i386.so', '/cstrike/addons/metamod/plugins.ini', 0),
(24, 12, 0, 'linux addons/rechecker/rechecker_mm_i386.so', '/cstrike/addons/metamod/plugins.ini', 0),
(26, 14, 0, 'linux addons/resemiclip/resemiclip_mm_i386.so', '/cstrike/addons/metamod/plugins.ini', 0),
(25, 13, 0, 'linux addons/relocalizebugfix/relocalizebugfix_mm_i386.so', '/cstrike/addons/metamod/plugins.ini', 0),
(114, 15, 0, 'linux addons/revoice/revoice_mm_i386.so', '/cstrike/addons/metamod/plugins.ini', 0),
(57, 16, 0, 'linux addons/whblocker/whblocker_mm_i386.so', '/cstrike/addons/metamod/plugins.ini', 0),
(113, 17, 0, 'linux addons/VoiceTranscoder/VoiceTranscoder.so', '/cstrike/addons/metamod/plugins.ini', 0),
(46, 30, 0, 'linux addons/resrdetector/resrdetector_mm_i386.so', '/cstrike/addons/metamod/plugins.ini', 0),
(45, 29, 0, 'linux addons/reunion/reunion_mm_i386.so', '/cstrike/addons/metamod/plugins.ini', 0),
(44, 28, 0, 'linux addons/SafeNameAndChat/SafeNameAndChat.so', '/cstrike/addons/metamod/plugins.ini', 0),
(43, 27, 0, 'reaimdetector', '/cstrike/addons/amxmodx/configs/modules.ini', 0),
(59, 31, 0, 'resetscore.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(63, 32, 0, 'NewResetScore.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(64, 33, 0, 'RESET_SCORE_V0.2.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(65, 34, 0, 'high_ping_kicker.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(68, 35, 0, 'reklama_in_chat.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(69, 36, 0, 'bullet_damage.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(70, 37, 0, 'Bullet_Whizz.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(73, 38, 0, 'autoteambalance.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(74, 40, 0, 'parachute.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(75, 41, 0, 'backweapons.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(78, 42, 0, 'female_sound.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(79, 43, 0, 'bcd_hudtimer.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(80, 44, 0, 'afk_control.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(81, 45, 0, 'FullSpawns.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(82, 46, 0, 'descriptive_fire_in_the_hole.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(83, 47, 0, 'randomskies.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(85, 49, 0, 'mode.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(86, 50, 0, 'multijump.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(87, 51, 0, 'win_messages.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(88, 52, 0, 'steam_bonus.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(89, 53, 0, 'kill_assist.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(90, 54, 0, 'mapmanager.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(91, 54, 0, 'mapmanager_subplugin.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(92, 55, 0, 'all_death_beams.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(93, 56, 0, 'ChristmasTree.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(94, 57, 0, 'FlyingArmourys.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(95, 58, 0, 'FakePing.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(96, 59, 0, 'TeamBalanceControl.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(97, 60, 0, 'no_players_map.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(98, 61, 0, 'adminmodels.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(99, 62, 0, 'preturi.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(100, 63, 0, 'amxx_cracker', '/cstrike/addons/amxmodx/configs/modules.ini', 0),
(101, 63, 0, 'csstats_mysql.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(102, 64, 0, 'admin_freelook.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(103, 65, 0, 'awp.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(109, 66, 0, 'connect_users.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0),
(115, 67, 0, 'info_rank.amxx', '/cstrike/addons/amxmodx/configs/plugins.ini', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `plugins_write_del`
--

CREATE TABLE `plugins_write_del` (
  `id` int(11) NOT NULL,
  `plugin` int(11) NOT NULL,
  `update` int(11) NOT NULL,
  `text` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL,
  `top` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `plugins_write_del`
--

INSERT INTO `plugins_write_del` (`id`, `plugin`, `update`, `text`, `file`, `top`) VALUES
(2, 14, 0, 'linux addons/resemiclip/resemiclip_mm_i386.so', '/cstrike/addons/metamod/plugins.ini', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `privileges`
--

CREATE TABLE `privileges` (
  `id` int(11) NOT NULL,
  `server` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `privileges_buy`
--

CREATE TABLE `privileges_buy` (
  `id` int(11) NOT NULL,
  `server` int(11) NOT NULL,
  `text` text NOT NULL,
  `sql` text NOT NULL,
  `price` float NOT NULL,
  `key` varchar(32) NOT NULL,
  `date` int(11) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `privileges_list`
--

CREATE TABLE `privileges_list` (
  `id` int(11) NOT NULL,
  `server` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `flags` varchar(50) NOT NULL,
  `immunity` int(11) NOT NULL DEFAULT 0,
  `data` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `promo`
--

CREATE TABLE `promo` (
  `id` int(11) NOT NULL,
  `cod` char(20) NOT NULL,
  `value` char(4) NOT NULL,
  `discount` tinyint(1) NOT NULL,
  `data` text NOT NULL,
  `hits` int(11) NOT NULL,
  `use` int(11) NOT NULL,
  `extend` tinyint(1) NOT NULL,
  `tarif` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `server` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `promo_use`
--

CREATE TABLE `promo_use` (
  `id` int(11) NOT NULL,
  `promo` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `recovery`
--

CREATE TABLE `recovery` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `mail` char(50) NOT NULL,
  `key` char(32) NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `security`
--

CREATE TABLE `security` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `address` char(20) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `servers`
--

CREATE TABLE `servers` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL DEFAULT 0,
  `unit` int(11) NOT NULL DEFAULT 0,
  `tarif` int(11) NOT NULL DEFAULT 0,
  `user` int(11) NOT NULL DEFAULT 0,
  `address` char(21) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL DEFAULT 0,
  `game` char(6) NOT NULL DEFAULT '',
  `slots` int(11) NOT NULL DEFAULT 0,
  `slots_start` int(11) NOT NULL DEFAULT 0,
  `online` int(11) NOT NULL DEFAULT 0,
  `players` text DEFAULT NULL,
  `status` char(10) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `pack` varchar(50) NOT NULL DEFAULT '',
  `plugins_use` tinyint(1) NOT NULL DEFAULT 0,
  `console_use` tinyint(1) NOT NULL DEFAULT 0,
  `stats_use` tinyint(1) NOT NULL DEFAULT 0,
  `copy_use` tinyint(1) NOT NULL DEFAULT 0,
  `web_use` tinyint(1) NOT NULL DEFAULT 0,
  `ftp_use` tinyint(1) NOT NULL DEFAULT 0,
  `ftp` tinyint(1) NOT NULL DEFAULT 0,
  `ftp_root` tinyint(1) NOT NULL DEFAULT 1,
  `ftp_passwd` char(20) NOT NULL DEFAULT '',
  `ftp_on` tinyint(1) NOT NULL DEFAULT 0,
  `fps` int(11) NOT NULL DEFAULT 0,
  `tickrate` int(11) NOT NULL DEFAULT 0,
  `ram` int(11) NOT NULL DEFAULT 0,
  `ram_use` int(11) NOT NULL DEFAULT 0,
  `ram_use_max` int(11) NOT NULL DEFAULT 0,
  `ram_fix` tinyint(1) NOT NULL DEFAULT 0,
  `map` varchar(100) NOT NULL DEFAULT '',
  `map_start` varchar(100) NOT NULL DEFAULT '',
  `vac` tinyint(1) NOT NULL DEFAULT 0,
  `tv` tinyint(1) NOT NULL DEFAULT 0,
  `fastdl` int(11) NOT NULL DEFAULT 0,
  `pingboost` int(11) NOT NULL DEFAULT 0,
  `cpu` int(11) NOT NULL DEFAULT 0,
  `cpu_use` int(11) NOT NULL DEFAULT 0,
  `cpu_use_max` int(11) NOT NULL DEFAULT 0,
  `core_fix` int(11) NOT NULL DEFAULT 0,
  `core_fix_one` tinyint(1) NOT NULL DEFAULT 0,
  `core_use` int(11) NOT NULL DEFAULT 0,
  `hdd` int(11) NOT NULL DEFAULT 0,
  `hdd_use` int(11) NOT NULL DEFAULT 0,
  `time` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0,
  `overdue` int(11) NOT NULL DEFAULT 0,
  `block` int(11) NOT NULL DEFAULT 0,
  `test` tinyint(1) NOT NULL DEFAULT 0,
  `stop` tinyint(1) NOT NULL DEFAULT 0,
  `autostop` tinyint(1) NOT NULL DEFAULT 0,
  `time_start` int(11) NOT NULL DEFAULT 0,
  `reinstall` int(11) NOT NULL DEFAULT 0,
  `update` int(11) NOT NULL DEFAULT 0,
  `benefit` int(11) NOT NULL DEFAULT 0,
  `autorestart` tinyint(1) NOT NULL DEFAULT 0,
  `sms` tinyint(1) NOT NULL DEFAULT 0,
  `mail` tinyint(1) NOT NULL DEFAULT 0,
  `ddos` tinyint(1) NOT NULL DEFAULT 0,
  `rcon` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `mail` char(50) NOT NULL,
  `key` char(32) NOT NULL,
  `data` text NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tarifs`
--

CREATE TABLE `tarifs` (
  `id` int(11) NOT NULL,
  `unit` int(11) NOT NULL,
  `game` char(8) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slots_min` int(11) NOT NULL,
  `slots_max` int(11) NOT NULL,
  `port_min` int(11) NOT NULL,
  `port_max` int(11) NOT NULL,
  `hostname` varchar(100) NOT NULL,
  `packs` text NOT NULL,
  `path` varchar(100) NOT NULL,
  `install` varchar(100) NOT NULL,
  `update` varchar(100) NOT NULL,
  `fps` varchar(100) NOT NULL,
  `tickrate` varchar(100) NOT NULL,
  `ram` varchar(100) NOT NULL,
  `param_fix` tinyint(1) NOT NULL DEFAULT 0,
  `time` varchar(100) NOT NULL,
  `timext` varchar(100) NOT NULL,
  `test` int(11) NOT NULL,
  `tests` int(11) NOT NULL,
  `discount` tinyint(1) NOT NULL,
  `map` varchar(50) NOT NULL,
  `ftp` tinyint(1) NOT NULL DEFAULT 0,
  `plugins` tinyint(1) NOT NULL DEFAULT 0,
  `console` tinyint(1) NOT NULL DEFAULT 0,
  `stats` tinyint(1) NOT NULL DEFAULT 0,
  `copy` tinyint(1) NOT NULL DEFAULT 0,
  `web` tinyint(1) NOT NULL DEFAULT 0,
  `plugins_install` text NOT NULL,
  `hdd` int(11) NOT NULL,
  `autostop` tinyint(1) NOT NULL,
  `price` text DEFAULT NULL,
  `core_fix` varchar(100) NOT NULL DEFAULT '',
  `ip` text DEFAULT NULL,
  `show` tinyint(1) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `tarifs`
--

INSERT INTO `tarifs` (`id`, `unit`, `game`, `name`, `slots_min`, `slots_max`, `port_min`, `port_max`, `hostname`, `packs`, `path`, `install`, `update`, `fps`, `tickrate`, `ram`, `param_fix`, `time`, `timext`, `test`, `tests`, `discount`, `map`, `ftp`, `plugins`, `console`, `stats`, `copy`, `web`, `plugins_install`, `hdd`, `autostop`, `price`, `core_fix`, `ip`, `show`, `sort`) VALUES
(1, 1, 'cs', 'Public SSD', 12, 32, 27010, 27056, 'Default CS1.6', 'eyJyZWhsZHMiOiJSZUhMRFMgMy4wIiwiaGxkczgxNzciOiJITERTIDgxNzcifQ==', '/path/cs/', '/servers/', '/path/steam/', '500:1000', '0', '0', 0, '30:60:90', '10:30:60:90', 1, 50, 1, 'de_dust2x2', 1, 1, 1, 1, 1, 1, '', 2048, 0, '0.20:0.25', '', '', 1, 1),
(2, 1, 'cs', 'CW/MIX SSD', 12, 14, 27011, 27055, 'Default CS1.6', 'eyJjdyI6IlJlSExEUy1DV1wvTUlYIn0=', '/path/cs/', '/servers/', '/path/steam/', '1000', '0', '0', 0, '30:60:90', '10:30:60:90', 1, 50, 1, 'de_dust2', 1, 1, 1, 1, 1, 1, '', 2048, 0, '0.10', '', '', 1, 5),
(3, 1, 'cssold', 'Public SSD', 12, 64, 28012, 28086, 'Default CSSv34', 'eyJub25zdGVhbSI6Ik5vblN0ZWFtIn0=', '/path/cssold/', '/servers/', '/path/steam/', '500:1000', '66:100', '0', 0, '30:60:90', '10:30:60:90', 1, 50, 1, 'de_dust2', 1, 1, 1, 1, 1, 1, '', 5120, 0, 'eyI2Nl81MDAiOiIwLjI1IiwiMTAwXzUwMCI6IjAuMzUiLCI2Nl8xMDAwIjoiMC4zMCIsIjEwMF8xMDAwIjoiMC40MCJ9', '', '', 1, 1),
(4, 1, 'cssold', 'CW/MIX SSD', 12, 14, 28019, 28096, 'Default CSSv34', 'eyJub25zdGVhbSI6Ik5vblN0ZWFtIn0=', '/path/cssold/', '/servers/', '/path/steam/', '1000', '100', '0', 0, '30:60:90', '10:30:60:90', 1, 50, 1, 'de_dust2', 1, 1, 1, 1, 1, 1, '', 5120, 0, 'eyIxMDBfMTAwMCI6IjAuMzAifQ==', '', '', 1, 3),
(5, 1, 'css', 'Public SSD', 12, 64, 28013, 28087, 'Default CSS', 'eyJzdGVhbSI6IlN0ZWFtIn0=', '/path/css/', '/servers/', '/path/steam/', '1000', '66:100', '0', 0, '30:60:90', '10:30:60:90', 1, 50, 1, 'de_dust2', 1, 1, 1, 1, 1, 1, '', 5120, 0, '0.25:0.35', '', '', 1, 1),
(6, 1, 'css', 'CW/MIX SSD', 12, 14, 28018, 28056, 'Default CSS', 'eyJzdGVhbSI6IlN0ZWFtIn0=', '/path/css/', '/servers/', '/path/steam/', '1000', '100', '0', 0, '30:60:90', '10:30:60:90', 0, 50, 1, 'de_dust2', 1, 1, 1, 1, 1, 1, '', 5120, 1, '0.15', '', '', 1, 1),
(7, 1, 'csgo', 'Public SSD', 12, 64, 27025, 27999, 'Default CSGO', 'eyJzdGVhbSI6IlN0ZWFtIn0=', '/path/csgo/', '/servers/', '/path/update/', '0', '64:128', '0', 0, '30:60:90', '10:30:60:90', 0, 0, 1, 'de_dust2', 1, 1, 1, 1, 1, 1, '', 30720, 0, '0.40:0.50', '', '', 1, 1),
(8, 1, 'samp', 'SAMP SSD', 20, 100, 7778, 7858, 'Default SAMP', 'eyJzYW1wMDM3UjIiOiJzYW1wMDM3UjIiLCJzYW1wMDNhIjoic2FtcDAzYSIsInNhbXAwM2IiOiJzYW1wMDNiIiwic2FtcDAzYyI6InNhbXAwM2MiLCJzYW1wMDNkIjoic2FtcDAzZCIsInNhbXAwM2UiOiJzYW1wMDNlIiwic2FtcDAzZTIiOiJzYW1wMDNlMiIsInNhbXAwM3giOiJzYW1wMDN4Iiwic2FtcDAzeiI6InNhbXAwM3oifQ==', '/path/samp/', '/servers/', '/path/steam/', '0', '0', '0', 0, '30:60:90', '10:30:60:90', 1, 50, 1, 'samp', 1, 1, 1, 1, 1, 1, '', 1024, 0, '0.05', '', '', 1, 1),
(9, 1, 'mc', 'MC SSD', 10, 50, 25566, 25606, 'Default MC', 'eyJtYzExMiI6Ik1DLTEuMTIiLCJtYzEzIjoiTUMtMS4zIn0=', '/path/mc/', '/servers/', '/path/update/', '0', '0', '50', 0, '30:60:90', '10:30:60:90', 1, 5, 1, '', 1, 1, 1, 1, 1, 1, '', 500, 0, '0.50', '', '', 1, 1),
(10, 1, 'rust', 'Resurce', 200, 200, 28010, 28055, 'Default Rust', 'eyJidWlsZCI6IlN0ZWFtIn0=', '/path/rust/', '/servers/', '/path/update/', '', '10', '8000', 1, '30:60:90', '30:60:90', 0, 1, 0, '', 1, 0, 1, 1, 1, 1, '', 10000, 0, '0.15', '1,2,3,4,5', '', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tests`
--

CREATE TABLE `tests` (
  `id` int(11) NOT NULL,
  `server` int(11) NOT NULL,
  `unit` int(11) NOT NULL,
  `game` char(6) NOT NULL,
  `user` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `units`
--

CREATE TABLE `units` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` char(21) NOT NULL,
  `passwd` char(32) NOT NULL,
  `sql_login` char(20) NOT NULL,
  `sql_passwd` char(32) NOT NULL,
  `sql_port` int(11) NOT NULL,
  `sql_ftp` char(20) NOT NULL,
  `cs` tinyint(1) NOT NULL DEFAULT 0,
  `cssold` tinyint(1) NOT NULL DEFAULT 0,
  `css` tinyint(1) NOT NULL DEFAULT 0,
  `csgo` tinyint(1) NOT NULL DEFAULT 0,
  `samp` tinyint(1) NOT NULL DEFAULT 0,
  `crmp` tinyint(1) NOT NULL DEFAULT 0,
  `mta` tinyint(1) NOT NULL DEFAULT 0,
  `mc` tinyint(1) NOT NULL DEFAULT 0,
  `rust` tinyint(1) NOT NULL DEFAULT 0,
  `ram` int(11) NOT NULL,
  `test` int(11) NOT NULL,
  `show` tinyint(1) NOT NULL,
  `sort` int(11) NOT NULL,
  `domain` varchar(40) NOT NULL DEFAULT 'host.game',
  `ddos` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `units`
--

INSERT INTO `units` (`id`, `name`, `address`, `passwd`, `sql_login`, `sql_passwd`, `sql_port`, `sql_ftp`, `cs`, `cssold`, `css`, `csgo`, `samp`, `crmp`, `mta`, `mc`, `rust`, `ram`, `test`, `show`, `sort`, `domain`, `ddos`) VALUES
(1, 'SRV-1', 'ipaddres:22', 'rootpass', 'ftp', 'ftppasswd', 3306, 'ftp', 1, 1, 1, 1, 1, 1, 1, 1, 1, 2000, 1, 1, 1, 'test.md', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` char(15) NOT NULL,
  `passwd` char(32) NOT NULL,
  `name` char(32) NOT NULL,
  `lastname` char(32) NOT NULL,
  `patronymic` char(32) NOT NULL,
  `mail` char(50) NOT NULL,
  `new_mail` char(50) NOT NULL DEFAULT '',
  `confirm_mail` char(32) NOT NULL DEFAULT '',
  `phone` char(12) NOT NULL,
  `confirm_phone` int(6) NOT NULL DEFAULT 0,
  `contacts` varchar(100) NOT NULL,
  `balance` float NOT NULL,
  `wmr` char(13) NOT NULL DEFAULT '',
  `group` char(7) NOT NULL,
  `support_info` varchar(50) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT 0,
  `ip` char(16) NOT NULL DEFAULT '',
  `browser` char(20) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL,
  `part` int(11) NOT NULL DEFAULT 0,
  `part_money` float NOT NULL DEFAULT 0,
  `security_ip` tinyint(1) NOT NULL DEFAULT 0,
  `security_code` tinyint(1) NOT NULL DEFAULT 0,
  `notice_help` tinyint(1) NOT NULL DEFAULT 0,
  `notice_news` tinyint(1) NOT NULL DEFAULT 1,
  `help` tinyint(1) NOT NULL DEFAULT 0,
  `rental` varchar(4) NOT NULL DEFAULT '0',
  `extend` varchar(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `passwd`, `name`, `lastname`, `patronymic`, `mail`, `new_mail`, `confirm_mail`, `phone`, `confirm_phone`, `contacts`, `balance`, `wmr`, `group`, `support_info`, `level`, `ip`, `browser`, `time`, `date`, `part`, `part_money`, `security_ip`, `security_code`, `notice_help`, `notice_news`, `help`, `rental`, `extend`) VALUES
(1, 'admin', 'ENGINEGPHASH', 'Admin', 'Host', 'Game', 'host@mail.ru', '', '', '', 1, '', 1000, '', 'admin', '', 1, '192.168.1.99', 'Google Chrome', 1642833063, 1511843974, 0, 0, 0, 0, 1, 1, 0, '0', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `web`
--

CREATE TABLE `web` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL DEFAULT 0,
  `type` varchar(20) NOT NULL,
  `desing` varchar(32) NOT NULL DEFAULT '',
  `server` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `unit` int(11) NOT NULL,
  `domain` varchar(40) NOT NULL DEFAULT '',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  `login` varchar(32) NOT NULL DEFAULT '',
  `update` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wiki`
--

CREATE TABLE `wiki` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat` int(11) NOT NULL,
  `tags` varchar(100) NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `wiki`
--

INSERT INTO `wiki` (`id`, `name`, `cat`, `tags`, `date`) VALUES
(1, 'КАК ВКЛЮЧИТЬ БЫСТРУЮ СКАЧКУ ФАЙЛОВ СЕРВЕРА?', 1, 'Скачка файлы Сервер FastDL', 1518506750),
(2, 'КАК СДЕЛАТЬ СЕБЯ АДМИНОМ НА СЕРВЕРЕ?', 1, 'привилегии флаги доступа флаги админа', 1518507435),
(3, 'AMXMODX АДМИНСКИЕ КОНСОЛЬНЫЕ КОМАНДЫ', 1, 'AmxModX Команды', 1518691991),
(4, 'КАК ПРОПИСАТЬ АДМИНКУ', 3, 'Как сделать себя админом в Sourcemod?', 1550340943),
(5, 'ПРИВЯЗКА СЕРВЕРА CS:GO К STEAM (ТОКЕН)', 4, 'Привязка токенатокен ксго', 1550341120);

-- --------------------------------------------------------

--
-- Структура таблицы `wiki_answer`
--

CREATE TABLE `wiki_answer` (
  `wiki` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `wiki_answer`
--

INSERT INTO `wiki_answer` (`wiki`, `cat`, `text`) VALUES
(1, 1, 'Чтобы включить быструю скачку файлов сервера вам необходимо:\n1. Зайти в панель управления сервером.\n2. Перейти во вкладку &quot;Настройки&quot;.\n3. Найти в разделе &quot;Параметры запуска игрового сервера&quot;\n4. &quot;Быстрая скачка файлов сервера&quot; и нажать &quot;Включить&quot;\n5. Перезапускаем сервер, и проверяем через консоль.\n\n&lt;div class=&quot;space&quot;&gt;&lt;/div&gt;\n&lt;a href=&quot;http://real-servers.net/template/images/wiki/fastdl.png&quot; class=&quot;image-zoom&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://real-servers.net/template/images/wiki/fastdl.png&quot; style=&quot;max-width: 100%;&quot;&gt;&lt;/a&gt;\n&lt;div class=&quot;space&quot;&gt;&lt;/div&gt;\n\nЧтобы проверить состояние Быстрой скачки файлов сервера, необходимо зайти во вкладку &quot;Консоль&quot;, \nи нажать кнопку &quot;sv_downloadurl&quot; если ваша строка пуста то:\n- Выключить быструю скачку файлов сервера.\n- Перезапустить сервер.\n- Включить быструю скачку файлов сервера.\n- Перезапустить сервер.\nЕсли после этих действий строчка sv_downloadurl пуста, повторите процедуру снова. \n\n&lt;blockquote&gt;&lt;p&gt;&quot;sv_downloadurl&quot; is &quot;http://93.119.102.130:8080/fast_1001&quot;&lt;/p&gt;&lt;/blockquote&gt;\n'),
(2, 1, 'Есть два способа:\n\n1. Через панель управления сервером:\n\nПереходим в раздел НАСТРОЙКИ, далее Администраторы на сервере (USERS.INI)\n\nВыбираем вид авторизации по никнейму/IP/steamID.\n\nВыбираем период административных прав\n\nЗаполняем необходимые поля, cохраняем и делаем рестарт сервера.\n\nВ консоле сервера прописываем amx_reloadadmins и проверяем на добавление нового администратора.\n\nПример консоля: [AMXX] Загружен 1 администратор из файла\n\nКнопки:\n\n&quot;ON&quot; ознаначает ВКЛЮЧЕНА привилегия.\n\n&quot;OFF&quot; ознаначает ВЫКЛЮЧЕНА привилегия\n\n&lt;div class=&quot;space&quot;&gt;&lt;/div&gt;\n&lt;a href=&quot;http://real-servers.net/template/images/wiki/admin.png&quot; class=&quot;image-zoom&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://real-servers.net/template/images/wiki/admin.png&quot; style=&quot;max-width: 100%;&quot;&gt;&lt;/a&gt;\n&lt;div class=&quot;space&quot;&gt;&lt;/div&gt;\n\n2. Через FTP доступ к файлам сервера.\n\nПодключаемся через FTP к файлам сервера.\n\nОткрываем блокнотом Notepad++ users.ini\n\nОн находится по пути: addons/amxmodx/configs/users.ini и прописываем права.\n\nПрава могут быть прописана 4-мя способами.\n\n1) по нику &quot;мой_ник&quot; &quot;мой_пароль_без_пробелов&quot; &quot;abcdefghijklmnopqrstu&quot; &quot;a&quot;\n\n2) по steamID &quot;мой_Steam_id&quot; &quot;мой_пароль_без_пробелов&quot; &quot;abcdefghijklmnopqrstu&quot; &quot;c&quot;\n\n3) по steamID &quot;мой_Steam_id&quot; &quot;&quot; &quot;abcdefghijklmnopqrstu&quot; &quot;ce&quot;\n\n4) по IP-адресу &quot;142.25.77.49&quot; &quot;&quot; &quot;abcdefghijklmnopqrstu&quot; &quot;de&quot;\n\n142.25.77.49 - Ваш IP. Он может быть либо статическим (внешним, постоянным), либо динамическим (непостоянный).\nУточнить это можно у Вашего провайдера.\n\nSTEAM_0:0:544496544 - Ваш steamID, если Ваша игра является лицензионной копией! Узнать свой steamID можно \nзайдя на любой сервер и написав в консоли status\n\nПример:\n\n&quot;FORGAME&quot; &quot;2f235gefew&quot; &quot;abcdefghijklmnopqrstu&quot; &quot;a&quot;\n\n&quot;STEAM_0:1:544496544&quot; &quot;abcdefghijklmnopqrstu&quot; &quot;c&quot;\n\n&quot;STEAM_0:1:544496544&quot; &quot;&quot; &quot;abcdefghijklmnopqrstu&quot; &quot;ce&quot;\n\n&quot;142.25.77.49&quot; &quot;&quot; &quot;abcdefghijklmnopqrstu&quot; &quot;de&quot;\n\nПримечание 1:\n\nПароли должны быть сложные.\n\nАдминки по IP прописывайте только для статического, выделенного(внешнего) IP адреса.\n\nПримечание 2:\n\nАвторизацию по steamID используйте только для лицензионных клиентов игры.\n\nПримечание 3:\n\nБудьте внимательны. Некоторые специальные символы не допустимы для имени (ника) администратора!\n\nнапример &quot;. To4ka&quot; - это недопустимы ник, так как содержит точку и после нее пробел.\n\nАдминка с таким именем работать не будет!\n\nПримечание 4:\n\nПри авторизации по нику перед заходом на сервер нужно прописать в консоли:\n\nsetinfo &quot;_pw&quot; &quot;пароль&quot;\n\nПримечание 5:\n\n&quot;STEAM_0:0:123456&quot;\n\n&quot;STEAM_0:0:123456 &quot;\n\nЭто различные строки, пробел это такой же символ как и все остальные.\n\nТак что внимательно копируйте свой steamID, ник или ip адресе.\n\nКакие плагины отвечают за админку?\n\nadmin.amxx - берет список админов с файла users.ini\n\namxbans_main.amxx - берет список админов c выделенной базы данных amxbans\n\nadmin_loader.amxx - берет список админов c выделенной базы данных СS:Bans\n\nКакие плагины отвечают за админку?\n\n&quot;abcdefghijklmnopqrstu&quot; - это флаги прав, используются так же в дополнительных плагинах. их значение:\n\na - иммунитет (против игрока не могут быть использованы команды: kick/ban/slay/slap и т.д.)\n\nb - резервация (игрок сможет пользоваться резервным слотом)\n\nc - amx_kick - доступ к команде amx_kick\n\nd - amx_ban and amx_unban commands - доступ к команде amx_ban и amx_unban\n\ne - amx_slay and amx_slap commands - доступ к команде amx_slay и amx_slap\n\nf - amx_map command - доступ к команде amx_map\n\ng - amx_cvar command - доступ к команде amx_cvar (не все переменные могут быть доступны)\n\nh - amx_cfg command - доступ к команде amx_cfg\n\ni - amx_chat and other chat commands - доступ к команде amx_csay и другим чат командам\n\nj - amx_vote and other vote commands - доступ к команде amx_vote и другим командам голосования\n\nk - access to sv_password cvar - доступ к переменной sv_password (через команду amx_cvar)\n\nl - access to amx_rcon command and rcon_password cvar - доступ к переменной amx_rcon и rcon_password (через amx_cvar)\n\nm - произвольный уровень A (если вы используете нестандартные амх плагины)\n\nn - произвольный уровень B\n\no - произвольный уровень C\n\np- произвольный уровень D\n\nq - произвольный уровень E\n\nr - произвольный уровень F\n\ns - произвольный уровень G\n\nt - произвольный уровень H\n\nu - доступ к графическому меню управления (amxmodmenu)\n\nz - пользователь (не админ)\n\n1. Как включить админку на сервере?\n\nЗайти на сервер и прописать в консоли игры &quot;amxmodmenu&quot; или же биндом на клавишу:\n\nbind &quot;F6&quot; &quot;amxmodmenu&quot; - и тогда при нажатии клавиши F6 автоматически сработает команда amxmodmenu.\n'),
(3, 1, 'Консольные команды следует вводить по следующей схеме:\namx_&lt;команда&gt; &lt;опция1&gt; &lt;опция2&gt; [опция3]\n\n\nОбязательные параметры помечены &lt;&gt;, необязательные - []. Символы &lt;&gt; и [] вводить не требуется. \nДля просмотра всех доступных команд, введите в консоле: amx_help\n\nКоманды администратора\namx_kick &quot;ID, Nick or IP&quot; &quot;Reason&quot; - кикнуть игрока с сервера\namx_ban &quot;ID, Nick or IP&quot; &quot;Reason&quot; - забанить игрока на сервере\namx_banid &quot;ID&quot; &quot;Reason&quot; - забанить игрока на сервере по SteamID\namx_banip &quot;IP&quot; &quot;Reason&quot; - забанить игрока по IP\namx_unban &quot;ID, Nick or IP&quot; - разбанить игрока\namx_slay &quot;Nick&quot; - убить игрока\namx_slap &quot;Nick&quot; [power] - пнуть игрока\namx_leave&lt; [tag] [tag] [tag] - оставить на сервере только игроков с определёным &quot;tag&quot; в имени\namx_pause - поставить/убрать паузу\namx_who - показать у кого какие права на сервере\namx_cvar [value] - изменить или отобразить значения cvar-ов. Т.е. можно изменить на отличное от \nсервеного значение, к примеру, mp_timelimit.\namx_map &quot;map_name&quot; - сменить карту\namx_cfg - выполнить конфиг\namx_rcon - выполнить команду в консоле сервера\namx_plugins - список всех загруженных плагинов\namx_modules - список всех загруженных модулей\namx_nick &quot;name&quot; &quot;new_name&quot; - поменять игроку ник\namx_help - посмотреть доступные amxmodx команды\namx_off - поставить на паузу плагины\namx_on - снять с паузы плагины\namx_reloadadmins - перезагрузить список админов\nЧат админов\namx_say - отправить сообщение всем игрокам\namx_chat - отправить сообщение админам\namx_psay - отправить приватное сообщение\namx_tsay - отправить сообщение всем игрокам (слева жирным)\namx_csay - тоже что и выше только по центру экрана\nАдминские голосования\namx_votemap [map] [map] [map] - начать голосование за смену карты\namx_votekick - начать голосование на кик игрока\namx_voteban - Начать голосование на бан игрока\namx_vote &quot;Вопрос&quot; &quot;Ответ №1&quot; &quot;Ответ №2&quot; &quot;Ответ №3&quot; - обычное голосование\namx_cancelvote - прервать последнее голосование\nМеню\namxmodmenu - главное меню\namx_cvarmenu - меню cvars’ов\namx_mapmenu - отображать меню смены карты\namx_kickmenu - отображать меню kick\namx_banmenu - бан меню\namx_cmdmenu - серверные команды (Pause, Restart)\namx_votemapmenu - отображать меню выбора карт на голосование\namx_speechmenu - голосовые сообщения AMX Mod X\namx_slapmenu - меню slap (пнуть игрока)\namx_teammenu - отображать меню выбора команды игрока\namx_clcmdmenu - меню клиентских команд\namx_restmenu - ограничение на использование оружия в игре\namx_teleportmenu - меню телепортаций\namx_statscfgmenu - отобразить меню конфигурации статистики\namx_statscfg [parameters] - отображает справку по конфигурации статистики\nСтатистика\nsay /hp - показать информацию о ваших убийствах\nsay /me - показать текущею статистику за раунд\nsay /rank - показать ваш ранк\nsay /rankstats - показать статистику\nsay /report - показать статистику по оружию\nsay /score - показать последний счет\nsay /stats - показать статистику игроков\nsay /statsme - показать Вашу статистику\nsay /switch - выключить/выключить ведение статистики\nsay /top15 - показать лучших 15 игроков\nsay currentmap - показать текущею карту\nsay ff - показать статус friendly fire (Выключен или включен)\nsay nextmap - показать следующею карту\nsay thetime - показать текущее время на сервере\nsay timeleft - показать время до смены карты/голосования\n'),
(4, 3, 'Как сделать себя админом в Sourcemod?\n\n\n1. Заходим на FTP сервера\n2. Открываем файл admins_simple.ini что папке: addons/sourcemod/configs\n\n\nАдминка по STEAM ID:\n\n\nВ конец файла admins_simple.ini добавляем такую строку:\n\n\n&quot;STEAM_0:1:123456789&quot; &quot;99:z&quot;\n\n\n\n&quot;STEAM_0:1:123456789&quot; - вписываем свой STEAMID (Узнать можно на сервере, в консоль - status)\n&quot;99:z&quot; - полная админка (для главного администратора) Остальным выдавайте: &quot;abcdfgjk&quot;\n\n\nАдминка по нику и паролю:\n\n\n&quot;Игрок&quot; &quot;99:z&quot; &quot;ваш пароль&quot;\n\n\n&quot;Игрок&quot;- вписываем свой ник вместо Игрок\n&quot;ваш пароль&quot; - вписываем свой пароль.\n\n\nТеперь перед тем как зайти на сервер, пропишите в консоле setinfo &quot;_pw&quot; &quot;ваш пароль&quot;\n\n\nАдминка по IP адресу:\n\n\n&quot;!127.0.0.1&quot; &quot;99:z&quot; &quot;ваш пароль&quot;\n\n\n\nПосле этого меняем карту или перезапускаем сервер. И настоятельно Вам рекомендуем все админки по STEAM + PASSWORD\n\n\n\nПрава доступа:\n\n\na - резервный слот\nb - Generic admin; required for admins\nc - Кик игрока\nd - Бан игрока\ne - Разбан игрока\nf - Стукнуть/убить игрока\ng - Смена карт\nh - Изменение настроек cvar\ni - Подключение конфигов\nj - Специальные привилегии чата\nk - Запуск/создание голосований\nl - Установка пароля на сервер\nm - Использование RCON команд\nz - Включение всех флагов\n'),
(5, 4, 'Шаг 1\n\n\nДля Steam аккаунта должны быть выполнены следующие требования:\n\n\n- К аккаунту должен быть привязан номер телефона\n- Аккаунт не должен быть ограниченным, т.е. с аккаунта нужно потратить как минимум 5$ через магазин Steam\n- На аккаунте должна присутствовать данная игра и отсутствовать VAC Ban\n\n\nШаг 2\n\n\nЕсли аккаунт удовлетворяет данным условия, то заходим на данную страницу:http://steamcommunity.com/dev/managegameservers\nВ правом верхнем углу, нажмите Войти и выполните вход в свой Steam аккаунт, если вы этого еще не делали\nВ поле App ID нужно ввести идентификатор игры, для CS:GO это 730\nВ поле Memo вводим любой текст. Желательно написать тот текст, по которому вы в дальнейшем сможете вспомнить для какого \nигрового сервера генерировали данный токен\n\n\n\nMemo можно отредактировать в любой момент. Для удобства можете, например, ввести туда IP:Port игрового сервера, чтобы знать, \nна каком игровом сервере вы использовали полученный токен. После нажатия на кнопку Create, \nвы увидите таблицу со сгенерированными токенами\n\n\nШаг 3\n\n\nСкопируйте полученный токен, откройте server.cfg и вставьте токен с параметром sv_setsteamaccount. \nПример: sv_setsteamaccount &quot;194162A59718347HH5355BC7D08C374&quot;\nСохраните изменения и включите/перезапустите игровой сервер. Иногда токен сразу не привязывается \nи нужно несколько раз перезапустить или обновить сервер\n');

-- --------------------------------------------------------

--
-- Структура таблицы `wiki_category`
--

CREATE TABLE `wiki_category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `wiki_category`
--

INSERT INTO `wiki_category` (`id`, `name`, `sort`) VALUES
(1, 'Counter-Strike 1.6', 2),
(2, 'Counter-Strike Surce', 3),
(3, 'Counter-Strike Surce v34', 4),
(4, 'Counter-Strike Global Ofensive', 5),
(5, 'SAMP', 6),
(6, 'Вопросы общего характера', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `address_buy`
--
ALTER TABLE `address_buy`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `admins_crmp`
--
ALTER TABLE `admins_crmp`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `admins_cs`
--
ALTER TABLE `admins_cs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `admins_csgo`
--
ALTER TABLE `admins_csgo`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `admins_css`
--
ALTER TABLE `admins_css`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `admins_cssold`
--
ALTER TABLE `admins_cssold`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `admins_mc`
--
ALTER TABLE `admins_mc`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `admins_mta`
--
ALTER TABLE `admins_mta`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `admins_rust`
--
ALTER TABLE `admins_rust`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `admins_samp`
--
ALTER TABLE `admins_samp`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `api`
--
ALTER TABLE `api`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `boost`
--
ALTER TABLE `boost`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `boost_rating`
--
ALTER TABLE `boost_rating`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cashback`
--
ALTER TABLE `cashback`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `control`
--
ALTER TABLE `control`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `control_admins_cs`
--
ALTER TABLE `control_admins_cs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `control_admins_csgo`
--
ALTER TABLE `control_admins_csgo`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `control_admins_css`
--
ALTER TABLE `control_admins_css`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `control_admins_cssold`
--
ALTER TABLE `control_admins_cssold`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `control_boost`
--
ALTER TABLE `control_boost`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `control_copy`
--
ALTER TABLE `control_copy`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `control_crontab`
--
ALTER TABLE `control_crontab`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `control_firewall`
--
ALTER TABLE `control_firewall`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `control_plugins_buy`
--
ALTER TABLE `control_plugins_buy`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `control_plugins_install`
--
ALTER TABLE `control_plugins_install`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `control_servers`
--
ALTER TABLE `control_servers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `copy`
--
ALTER TABLE `copy`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `crontab`
--
ALTER TABLE `crontab`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `firewall`
--
ALTER TABLE `firewall`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `graph`
--
ALTER TABLE `graph`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `graph_day`
--
ALTER TABLE `graph_day`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `graph_hour`
--
ALTER TABLE `graph_hour`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `help`
--
ALTER TABLE `help`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `help_dialogs`
--
ALTER TABLE `help_dialogs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `help_upload`
--
ALTER TABLE `help_upload`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `logs_sys`
--
ALTER TABLE `logs_sys`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `maps`
--
ALTER TABLE `maps`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `owners`
--
ALTER TABLE `owners`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `panel`
--
ALTER TABLE `panel`
  ADD KEY `address` (`address`);

--
-- Индексы таблицы `plugins`
--
ALTER TABLE `plugins`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `plugins_buy`
--
ALTER TABLE `plugins_buy`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `plugins_category`
--
ALTER TABLE `plugins_category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `plugins_clear`
--
ALTER TABLE `plugins_clear`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `plugins_config`
--
ALTER TABLE `plugins_config`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `plugins_delete`
--
ALTER TABLE `plugins_delete`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `plugins_delete_ins`
--
ALTER TABLE `plugins_delete_ins`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `plugins_install`
--
ALTER TABLE `plugins_install`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `plugins_update`
--
ALTER TABLE `plugins_update`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `plugins_write`
--
ALTER TABLE `plugins_write`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `plugins_write_del`
--
ALTER TABLE `plugins_write_del`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `privileges`
--
ALTER TABLE `privileges`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `privileges_buy`
--
ALTER TABLE `privileges_buy`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `privileges_list`
--
ALTER TABLE `privileges_list`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `promo_use`
--
ALTER TABLE `promo_use`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `recovery`
--
ALTER TABLE `recovery`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `security`
--
ALTER TABLE `security`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `servers`
--
ALTER TABLE `servers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tarifs`
--
ALTER TABLE `tarifs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `web`
--
ALTER TABLE `web`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wiki`
--
ALTER TABLE `wiki`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wiki_answer`
--
ALTER TABLE `wiki_answer`
  ADD PRIMARY KEY (`wiki`);

--
-- Индексы таблицы `wiki_category`
--
ALTER TABLE `wiki_category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `address_buy`
--
ALTER TABLE `address_buy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `admins_crmp`
--
ALTER TABLE `admins_crmp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `admins_cs`
--
ALTER TABLE `admins_cs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `admins_csgo`
--
ALTER TABLE `admins_csgo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `admins_css`
--
ALTER TABLE `admins_css`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `admins_cssold`
--
ALTER TABLE `admins_cssold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `admins_mc`
--
ALTER TABLE `admins_mc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `admins_mta`
--
ALTER TABLE `admins_mta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `admins_rust`
--
ALTER TABLE `admins_rust`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `admins_samp`
--
ALTER TABLE `admins_samp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `api`
--
ALTER TABLE `api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth`
--
ALTER TABLE `auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `boost`
--
ALTER TABLE `boost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `boost_rating`
--
ALTER TABLE `boost_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `cashback`
--
ALTER TABLE `cashback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `control`
--
ALTER TABLE `control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `control_admins_cs`
--
ALTER TABLE `control_admins_cs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `control_boost`
--
ALTER TABLE `control_boost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `control_copy`
--
ALTER TABLE `control_copy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `control_crontab`
--
ALTER TABLE `control_crontab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `control_firewall`
--
ALTER TABLE `control_firewall`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `control_plugins_buy`
--
ALTER TABLE `control_plugins_buy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `control_plugins_install`
--
ALTER TABLE `control_plugins_install`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `control_servers`
--
ALTER TABLE `control_servers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `copy`
--
ALTER TABLE `copy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `crontab`
--
ALTER TABLE `crontab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `firewall`
--
ALTER TABLE `firewall`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `graph`
--
ALTER TABLE `graph`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `graph_day`
--
ALTER TABLE `graph_day`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `graph_hour`
--
ALTER TABLE `graph_hour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `help`
--
ALTER TABLE `help`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `help_dialogs`
--
ALTER TABLE `help_dialogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `help_upload`
--
ALTER TABLE `help_upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `logs_sys`
--
ALTER TABLE `logs_sys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `maps`
--
ALTER TABLE `maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `owners`
--
ALTER TABLE `owners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `plugins`
--
ALTER TABLE `plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT для таблицы `plugins_buy`
--
ALTER TABLE `plugins_buy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `plugins_category`
--
ALTER TABLE `plugins_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT для таблицы `plugins_clear`
--
ALTER TABLE `plugins_clear`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT для таблицы `plugins_config`
--
ALTER TABLE `plugins_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT для таблицы `plugins_delete`
--
ALTER TABLE `plugins_delete`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `plugins_delete_ins`
--
ALTER TABLE `plugins_delete_ins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `plugins_install`
--
ALTER TABLE `plugins_install`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1967;

--
-- AUTO_INCREMENT для таблицы `plugins_update`
--
ALTER TABLE `plugins_update`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `plugins_write`
--
ALTER TABLE `plugins_write`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT для таблицы `plugins_write_del`
--
ALTER TABLE `plugins_write_del`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `privileges`
--
ALTER TABLE `privileges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `privileges_buy`
--
ALTER TABLE `privileges_buy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `privileges_list`
--
ALTER TABLE `privileges_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `promo`
--
ALTER TABLE `promo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `promo_use`
--
ALTER TABLE `promo_use`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `recovery`
--
ALTER TABLE `recovery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `security`
--
ALTER TABLE `security`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `servers`
--
ALTER TABLE `servers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tarifs`
--
ALTER TABLE `tarifs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `units`
--
ALTER TABLE `units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `web`
--
ALTER TABLE `web`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wiki`
--
ALTER TABLE `wiki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `wiki_answer`
--
ALTER TABLE `wiki_answer`
  MODIFY `wiki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `wiki_category`
--
ALTER TABLE `wiki_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
