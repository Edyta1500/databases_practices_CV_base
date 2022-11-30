-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 30 Lis 2022, 10:39
-- Wersja serwera: 10.4.25-MariaDB
-- Wersja PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `cv_base`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `list_shools`
--

CREATE TABLE `list_shools` (
  `id_shool` int(11) NOT NULL,
  `name_shool` varchar(160) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `list_shools`
--

INSERT INTO `list_shools` (`id_shool`, `name_shool`) VALUES
(1, 'Uniwersytet Przyrodniczy '),
(2, 'Uniwersytet Warszawski '),
(3, 'Uniwersytet w Białymstoku'),
(4, 'Uniwersytet Gdański'),
(5, 'Uniwersytet im. Adama Mickiewicza w Poznaniu'),
(6, 'Uniwersytet Jagielloński w Krakowie '),
(7, 'Uniwersytet Łódzki'),
(8, 'Uniwersytet Marii Curie-Skłodowskiej w Lublinie'),
(9, 'Uniwersytet Mikołaja Kopernika w Toruniu'),
(10, 'Uniwersytet Opolski'),
(11, 'Uniwersytet Szczeciński'),
(12, 'Uniwersytet Śląski w Katowicach'),
(13, 'Uniwersytet Rzeszowski'),
(14, 'Uniwersytet Warmińsko-Mazurski w Olsztynie'),
(15, 'Uniwersytet Wrocławski'),
(16, 'Uniwersytet Kardynała Stefana Wyszyńskiego w Warszawie'),
(17, 'Uniwersytet Zielonogórski'),
(18, 'Uniwersytet Kazimierza Wielkiego w Bydgoszczy'),
(19, 'Uniwersytet Jana Kochanowskiego w Kielcach'),
(20, 'Zachodniopomorski Uniwersytet Technologiczny w Szczecinie'),
(21, 'Politechnika Warszawska'),
(22, 'Politechnika Białostocka'),
(23, 'Akademia Techniczno-Humanistyczna w Bielsku -Białej'),
(24, 'Politechnika Częstochowska'),
(25, 'Politechnika Gdańska'),
(26, 'Politechnika Śląska Gliwice'),
(27, 'Politechnika Świętokrzyska w Kielcach'),
(28, 'Politechnika Koszalińska'),
(29, 'Politechnika Krakowska im. Tadeusza Kościuszki'),
(30, 'Akademia Górniczo-Hutnicza im. Stanisława Staszica w Krakowie'),
(31, 'Politechnika Lubelska'),
(32, 'Politechnika Łódzka'),
(33, 'Politechnika Opolska'),
(34, 'Politechnika Poznańska'),
(35, 'Uniwersytet Technologiczno-Humanistyczny im. Kazimierza Pułaskiego w Radomiu'),
(36, 'Politechnika Rzeszowska im. Ignacego Łukasiewicza'),
(37, 'Politechnika Wrocławska'),
(38, 'Uniwersytet Ekonomiczny w Katowicach'),
(39, 'Uniwersytet Ekonomiczny w Krakowie'),
(40, 'Uniwersytet Ekonomiczny w Poznaniu'),
(41, 'Szkoła Główna Handlowa w Warszawie'),
(42, 'Uniwersytet Ekonomiczny we Wrocławiu'),
(43, 'Uczelnie pedagogiczne:'),
(44, 'Akademia Pedagogiki Specjalnej im. Marii Grzegorzewskiej (Warszawa)'),
(45, 'Uniwersytet Humanistyczno-Przyrodniczy im. Jana Długosza w Częstochowie'),
(46, 'Uniwersytet Pedagogiczny im. Komisji Edukacji Narodowej w Krakowie'),
(47, 'Akademia Pomorska w Słupsku'),
(48, 'Uniwersytet Przyrodniczo-Humanistyczny w Siedlcach'),
(49, 'Szkoła Główna Gospodarstwa Wiejskiego w Warszawie'),
(50, 'Politechnika Bydgoska im. Jana i Jędrzeja Śniadeckich'),
(51, 'Uniwersytet Rolniczy im. Hugona Kołłątaja w Krakowie'),
(52, 'Uniwersytet Przyrodniczy w Lublinie'),
(53, 'Uniwersytet Przyrodniczy w Poznaniu'),
(54, 'Uniwersytet Przyrodniczy we Wrocławiu'),
(55, 'Akademia Wychowania Fizycznego i Sportu im. Jędrzeja Śniadeckiego w Gdańsku'),
(56, 'Akademia Wychowania Fizycznego im. Jerzego Kukuczki w Katowicach'),
(57, 'Akademia Wychowania Fizycznego im. Bronisława Czecha w Krakowie'),
(58, 'Akademia Wychowania Fizycznego im. Eugeniusza Piaseckiego w Poznaniu'),
(59, 'Akademia Wychowania Fizycznego Józefa Piłsudskiego w Warszawie'),
(60, 'Akademia Wychowania Fizycznego im. Polskich Olimpijczyków we Wrocławiu'),
(61, 'Chrześcijańska Akademia Teologiczna w Warszawie'),
(62, 'inna');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `list_shools`
--
ALTER TABLE `list_shools`
  ADD PRIMARY KEY (`id_shool`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `list_shools`
--
ALTER TABLE `list_shools`
  MODIFY `id_shool` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
