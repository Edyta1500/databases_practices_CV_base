-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 30 Lis 2022, 09:53
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
-- Struktura tabeli dla tabeli `list_address_type`
--

CREATE TABLE `list_address_type` (
  `id_type` int(11) NOT NULL,
  `address_type` varchar(20) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `list_address_type`
--

INSERT INTO `list_address_type` (`id_type`, `address_type`) VALUES
(1, 'residence'),
(2, 'correspondence');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `list_driving_licence`
--

CREATE TABLE `list_driving_licence` (
  `id_driv_lic` int(11) NOT NULL,
  `kat.` char(10) COLLATE utf8mb4_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `list_driving_licence`
--

INSERT INTO `list_driving_licence` (`id_driv_lic`, `kat.`) VALUES
(1, 'AM'),
(2, 'A1'),
(3, 'A2'),
(4, 'B1'),
(5, 'B'),
(6, 'B+E'),
(7, 'C'),
(8, 'C1'),
(9, 'C1+E'),
(10, 'C+E'),
(11, 'D'),
(12, 'D1'),
(13, 'D1+E'),
(14, 'D+E'),
(15, 'T'),
(16, 'tramwaj');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `list_field_of_study`
--

CREATE TABLE `list_field_of_study` (
  `id_field_of_study` int(11) NOT NULL,
  `name_field` varchar(60) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `list_field_of_study`
--

INSERT INTO `list_field_of_study` (`id_field_of_study`, `name_field`) VALUES
(1, 'analityka medyczna'),
(2, 'biologia'),
(3, 'mechanika i budowa maszyn'),
(4, 'elektronika'),
(5, 'kulturoznawstwo'),
(6, 'informatyka'),
(7, 'turystyka i krajoznawcza'),
(8, 'medycyna'),
(9, 'stomatologia'),
(10, 'medycyna weterynaryjna');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `list_languages_names`
--

CREATE TABLE `list_languages_names` (
  `id_lang` int(11) NOT NULL,
  `name_lang` varchar(20) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `list_languages_names`
--

INSERT INTO `list_languages_names` (`id_lang`, `name_lang`) VALUES
(1, 'angielski'),
(2, 'niemiecki'),
(3, 'rosyjski'),
(4, 'hiszpański'),
(5, 'włoski'),
(6, 'czeski'),
(7, 'ukraiński'),
(8, 'białoruski'),
(9, 'litewski'),
(10, 'inny');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `list_levels_education`
--

CREATE TABLE `list_levels_education` (
  `id_level_edu` int(11) NOT NULL,
  `level_edu` varchar(20) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `list_levels_education`
--

INSERT INTO `list_levels_education` (`id_level_edu`, `level_edu`) VALUES
(1, 'podstawowe'),
(2, 'zawodowe'),
(3, 'średnie'),
(4, 'licencjat'),
(5, 'inżynier'),
(6, 'magister'),
(7, 'magister inżynier'),
(8, 'lekarz medycyny'),
(9, 'lekarz weterynarii'),
(10, 'studia podyplomowe'),
(11, 'MBA'),
(12, 'doktorat'),
(13, 'doktor habilitowany'),
(14, 'profesor');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `list_level_lang`
--

CREATE TABLE `list_level_lang` (
  `id_lang_lev` int(11) NOT NULL,
  `name_lang_lev` varchar(20) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `list_level_lang`
--

INSERT INTO `list_level_lang` (`id_lang_lev`, `name_lang_lev`) VALUES
(1, 'podstawowy'),
(2, 'średni'),
(3, 'średnio zaawansowany'),
(4, 'zaawansowany'),
(5, 'ojczysty');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `list_positions`
--

CREATE TABLE `list_positions` (
  `id_position` int(11) NOT NULL,
  `position` varchar(60) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `list_positions`
--

INSERT INTO `list_positions` (`id_position`, `position`) VALUES
(1, 'kierownik'),
(2, 'Młodszy asystent'),
(3, 'Asystent'),
(4, 'Specjalista'),
(5, 'rezydent'),
(6, 'kierowca'),
(7, 'Junior Front-end Developer'),
(8, 'Junior Java Developer'),
(9, 'inżynier utrzymania ruchu'),
(10, 'programista maszyn CNC'),
(11, 'kasjer'),
(12, 'inny');

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
(2, 'Uniwersytet Medyczny '),
(3, 'Uniwersytet Wrocławski'),
(4, 'Uniwersytet Ekonomiczny '),
(5, 'Politechnika '),
(6, 'Akademia Wojsk Lądowych'),
(7, 'Akademia Wychowania Fizycznego'),
(8, 'Akademia Sztuk Pięknych'),
(9, 'Akademia Muzyczna'),
(10, 'Akademia Sztuk Teatralnych'),
(11, 'Wyższa Szkoła Gotowania na Gazie');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `person_additional`
--

CREATE TABLE `person_additional` (
  `id_additional` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `skils` text COLLATE utf8mb4_polish_ci NOT NULL,
  `hobby` text COLLATE utf8mb4_polish_ci NOT NULL,
  `activity` text COLLATE utf8mb4_polish_ci NOT NULL,
  `links` varchar(150) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `person_addresses`
--

CREATE TABLE `person_addresses` (
  `id_address` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `country` varchar(30) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `city` varchar(60) COLLATE utf8mb4_polish_ci NOT NULL,
  `postal_code` char(6) COLLATE utf8mb4_polish_ci NOT NULL,
  `post` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `street_name` varchar(60) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `building_nr` char(6) COLLATE utf8mb4_polish_ci NOT NULL,
  `flat_nr` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `person_addresses`
--

INSERT INTO `person_addresses` (`id_address`, `id_user`, `id_type`, `country`, `city`, `postal_code`, `post`, `street_name`, `building_nr`, `flat_nr`) VALUES
(1, 1, 1, 'Polska', 'Czernica', '55-003', 'Czernica', 'Odrzańska', '31', NULL),
(2, 2, 1, 'Polska', 'Jeziorszczyzna', '24-100', 'Kazimierz Dolny', NULL, '15a', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `person_basic_info`
--

CREATE TABLE `person_basic_info` (
  `id_basic` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `surname` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `f_name` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `mail` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `phone_nr` varchar(15) COLLATE utf8mb4_polish_ci NOT NULL,
  `birth` date NOT NULL,
  `nationality` varchar(20) COLLATE utf8mb4_polish_ci NOT NULL,
  `photo` varchar(40) COLLATE utf8mb4_polish_ci NOT NULL,
  `id_driv` int(11) DEFAULT NULL,
  `rodo_accept` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `person_basic_info`
--

INSERT INTO `person_basic_info` (`id_basic`, `id_user`, `surname`, `f_name`, `mail`, `phone_nr`, `birth`, `nationality`, `photo`, `id_driv`, `rodo_accept`) VALUES
(1, 1, 'Dudek', 'Edyta', 'edyta.dudek@10g.pl', '+48603490310', '1982-02-26', 'polska', 'edyta.jpg', NULL, 0),
(2, 2, 'Dudek', 'Bartłomiej', 'bdudek@airforces.pl', '654312987', '1980-07-19', 'polska', 'bd.jpg', 5, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `person_courses_certificates`
--

CREATE TABLE `person_courses_certificates` (
  `id_courses` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `name_cours_cert` varchar(150) COLLATE utf8mb4_polish_ci NOT NULL,
  `organization` varchar(150) COLLATE utf8mb4_polish_ci NOT NULL,
  `date` date NOT NULL,
  `description` text COLLATE utf8mb4_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `person_courses_certificates`
--

INSERT INTO `person_courses_certificates` (`id_courses`, `id_user`, `name_cours_cert`, `organization`, `date`, `description`) VALUES
(1, 1, 'Kurs Frond-End Developer', 'Piotr Kania Company', '2022-10-01', 'TAkie tam');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `person_education`
--

CREATE TABLE `person_education` (
  `id_edu` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_shool` int(11) NOT NULL,
  `field_of_study` int(11) DEFAULT NULL,
  `degree` int(11) NOT NULL,
  `date from` date NOT NULL,
  `date to` date DEFAULT NULL,
  `currently` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `person_education`
--

INSERT INTO `person_education` (`id_edu`, `id_user`, `id_shool`, `field_of_study`, `degree`, `date from`, `date to`, `currently`) VALUES
(1, 1, 1, 2, 6, '2001-10-01', '2007-09-20', NULL),
(2, 1, 2, 1, 10, '2008-10-01', '2010-06-20', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `person_experience`
--

CREATE TABLE `person_experience` (
  `id_experience` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `else_position` varchar(250) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `company` varchar(160) COLLATE utf8mb4_polish_ci NOT NULL,
  `location` varchar(60) COLLATE utf8mb4_polish_ci NOT NULL,
  `date from` date NOT NULL,
  `date to` date DEFAULT NULL,
  `currently` tinyint(1) DEFAULT NULL,
  `specification` text COLLATE utf8mb4_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `person_experience`
--

INSERT INTO `person_experience` (`id_experience`, `id_user`, `position`, `else_position`, `company`, `location`, `date from`, `date to`, `currently`, `specification`) VALUES
(1, 1, 2, NULL, 'ZOZ w Oławie Laboratorium Centralne', 'Oława', '2015-07-01', NULL, 1, 'Niektórych rzeczy nie da się opisać słowami.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `person_lang_skils`
--

CREATE TABLE `person_lang_skils` (
  `id_language` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `name_lang` int(11) NOT NULL,
  `else_lang` varchar(20) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `level_lang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `person_lang_skils`
--

INSERT INTO `person_lang_skils` (`id_language`, `id_user`, `name_lang`, `else_lang`, `level_lang`) VALUES
(1, 1, 1, NULL, 3),
(2, 1, 3, NULL, 1),
(3, 2, 10, 'Zulugula', 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `login` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `password` varchar(40) COLLATE utf8mb4_polish_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id_user`, `login`, `password`, `admin`, `date_added`) VALUES
(1, 'edudek', '23c6834b1d353eabf976e524ed489c812ff86a7d', 1, '2022-11-28'),
(2, 'bdudek', '4347d0f8ba661234a8eadc005e2e1d1b646c9682', 0, '2022-11-28');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `list_address_type`
--
ALTER TABLE `list_address_type`
  ADD PRIMARY KEY (`id_type`);

--
-- Indeksy dla tabeli `list_driving_licence`
--
ALTER TABLE `list_driving_licence`
  ADD PRIMARY KEY (`id_driv_lic`);

--
-- Indeksy dla tabeli `list_field_of_study`
--
ALTER TABLE `list_field_of_study`
  ADD PRIMARY KEY (`id_field_of_study`);

--
-- Indeksy dla tabeli `list_languages_names`
--
ALTER TABLE `list_languages_names`
  ADD PRIMARY KEY (`id_lang`);

--
-- Indeksy dla tabeli `list_levels_education`
--
ALTER TABLE `list_levels_education`
  ADD PRIMARY KEY (`id_level_edu`);

--
-- Indeksy dla tabeli `list_level_lang`
--
ALTER TABLE `list_level_lang`
  ADD PRIMARY KEY (`id_lang_lev`);

--
-- Indeksy dla tabeli `list_positions`
--
ALTER TABLE `list_positions`
  ADD PRIMARY KEY (`id_position`);

--
-- Indeksy dla tabeli `list_shools`
--
ALTER TABLE `list_shools`
  ADD PRIMARY KEY (`id_shool`);

--
-- Indeksy dla tabeli `person_additional`
--
ALTER TABLE `person_additional`
  ADD PRIMARY KEY (`id_additional`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeksy dla tabeli `person_addresses`
--
ALTER TABLE `person_addresses`
  ADD PRIMARY KEY (`id_address`),
  ADD KEY `id_person` (`id_user`),
  ADD KEY `id_type` (`id_type`);

--
-- Indeksy dla tabeli `person_basic_info`
--
ALTER TABLE `person_basic_info`
  ADD PRIMARY KEY (`id_basic`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_driv` (`id_driv`),
  ADD KEY `id_driv_2` (`id_driv`);

--
-- Indeksy dla tabeli `person_courses_certificates`
--
ALTER TABLE `person_courses_certificates`
  ADD PRIMARY KEY (`id_courses`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeksy dla tabeli `person_education`
--
ALTER TABLE `person_education`
  ADD PRIMARY KEY (`id_edu`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_shool` (`id_shool`),
  ADD KEY `spetialization` (`field_of_study`),
  ADD KEY `degree` (`degree`),
  ADD KEY `field_of_study` (`field_of_study`);

--
-- Indeksy dla tabeli `person_experience`
--
ALTER TABLE `person_experience`
  ADD PRIMARY KEY (`id_experience`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `position` (`position`);

--
-- Indeksy dla tabeli `person_lang_skils`
--
ALTER TABLE `person_lang_skils`
  ADD PRIMARY KEY (`id_language`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `level_lang` (`level_lang`),
  ADD KEY `name_lang` (`name_lang`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `list_address_type`
--
ALTER TABLE `list_address_type`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `list_driving_licence`
--
ALTER TABLE `list_driving_licence`
  MODIFY `id_driv_lic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT dla tabeli `list_field_of_study`
--
ALTER TABLE `list_field_of_study`
  MODIFY `id_field_of_study` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `list_languages_names`
--
ALTER TABLE `list_languages_names`
  MODIFY `id_lang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `list_levels_education`
--
ALTER TABLE `list_levels_education`
  MODIFY `id_level_edu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT dla tabeli `list_level_lang`
--
ALTER TABLE `list_level_lang`
  MODIFY `id_lang_lev` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `list_positions`
--
ALTER TABLE `list_positions`
  MODIFY `id_position` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT dla tabeli `list_shools`
--
ALTER TABLE `list_shools`
  MODIFY `id_shool` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `person_addresses`
--
ALTER TABLE `person_addresses`
  MODIFY `id_address` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `person_basic_info`
--
ALTER TABLE `person_basic_info`
  MODIFY `id_basic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `person_courses_certificates`
--
ALTER TABLE `person_courses_certificates`
  MODIFY `id_courses` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `person_education`
--
ALTER TABLE `person_education`
  MODIFY `id_edu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `person_experience`
--
ALTER TABLE `person_experience`
  MODIFY `id_experience` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `person_lang_skils`
--
ALTER TABLE `person_lang_skils`
  MODIFY `id_language` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `person_additional`
--
ALTER TABLE `person_additional`
  ADD CONSTRAINT `person_additional_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Ograniczenia dla tabeli `person_addresses`
--
ALTER TABLE `person_addresses`
  ADD CONSTRAINT `person_addresses_ibfk_2` FOREIGN KEY (`id_type`) REFERENCES `list_address_type` (`id_type`),
  ADD CONSTRAINT `person_addresses_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Ograniczenia dla tabeli `person_basic_info`
--
ALTER TABLE `person_basic_info`
  ADD CONSTRAINT `person_basic_info_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `person_basic_info_ibfk_2` FOREIGN KEY (`id_driv`) REFERENCES `list_driving_licence` (`id_driv_lic`);

--
-- Ograniczenia dla tabeli `person_courses_certificates`
--
ALTER TABLE `person_courses_certificates`
  ADD CONSTRAINT `person_courses_certificates_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Ograniczenia dla tabeli `person_education`
--
ALTER TABLE `person_education`
  ADD CONSTRAINT `person_education_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `person_education_ibfk_2` FOREIGN KEY (`degree`) REFERENCES `list_levels_education` (`id_level_edu`),
  ADD CONSTRAINT `person_education_ibfk_3` FOREIGN KEY (`id_shool`) REFERENCES `list_shools` (`id_shool`),
  ADD CONSTRAINT `person_education_ibfk_4` FOREIGN KEY (`field_of_study`) REFERENCES `list_field_of_study` (`id_field_of_study`);

--
-- Ograniczenia dla tabeli `person_experience`
--
ALTER TABLE `person_experience`
  ADD CONSTRAINT `person_experience_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `person_experience_ibfk_2` FOREIGN KEY (`position`) REFERENCES `list_positions` (`id_position`);

--
-- Ograniczenia dla tabeli `person_lang_skils`
--
ALTER TABLE `person_lang_skils`
  ADD CONSTRAINT `person_lang_skils_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `person_lang_skils_ibfk_2` FOREIGN KEY (`level_lang`) REFERENCES `list_level_lang` (`id_lang_lev`),
  ADD CONSTRAINT `person_lang_skils_ibfk_3` FOREIGN KEY (`name_lang`) REFERENCES `list_languages_names` (`id_lang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
