-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 22 mars 2021 à 17:41
-- Version du serveur :  10.3.25-MariaDB-0ubuntu0.20.04.1
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `image` varchar(255) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `title`, `author_id`, `date`, `image`, `content`) VALUES
(1, 'Shingeki no Kyojin / Attack on Titan', 1, '2021-03-18 14:13:23', 'upload/shingekinokyojin.jpg', '\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur euismod ante mi, et dictum enim tincidunt at. Cras varius eu urna a gravida. Aenean nunc dolor, sodales vel commodo vel, fermentum ut orci. Sed faucibus dui risus. Fusce risus turpis, iaculis interdum nulla id, tempor vestibulum velit. Praesent tempus placerat est quis pulvinar. Nam ultrices facilisis enim, ac porttitor sapien. Vivamus dignissim, est vel varius porttitor, sem lacus bibendum nulla, vitae vulputate ante elit quis ipsum. Curabitur faucibus, orci interdum porta malesuada, arcu risus gravida arcu, a pellentesque lorem diam ut lorem. Vivamus a felis id ante lobortis dignissim.\r\n\r\nCurabitur purus ante, vestibulum et rhoncus vitae, mollis ac mi. Maecenas ut enim quis risus imperdiet varius. Integer quis ullamcorper eros, ac vulputate metus. Cras sollicitudin ligula non purus aliquam, at viverra nunc rutrum. Maecenas interdum malesuada feugiat. Nullam mollis arcu congue massa egestas fermentum. Nunc erat tortor, volutpat in massa et, congue dapibus quam. In congue porttitor felis, sed sagittis velit eleifend at. Proin in lacinia turpis, ac commodo leo. Donec eu erat venenatis, consectetur tellus a, tristique sapien. Sed pharetra nec risus ac aliquam. Sed vel ante gravida, pharetra lacus maximus, malesuada arcu. Ut a mi lacinia, laoreet risus nec, dignissim tellus. Integer ac sem maximus massa hendrerit rhoncus ac malesuada nibh. Nulla efficitur, massa in tincidunt bibendum, tortor ligula sodales nunc, sed gravida dolor nibh vitae ipsum.\r\n\r\nVivamus et massa vel felis consequat tincidunt eu a felis. Nulla nec suscipit velit. Nullam eros magna, egestas ac metus sit amet, dignissim hendrerit lorem. Sed eget tellus viverra, interdum turpis et, tincidunt eros. In venenatis pulvinar mi, sit amet dapibus velit aliquet quis. Nunc varius accumsan ipsum sit amet commodo. Nam consectetur placerat mauris quis consectetur. Donec laoreet ante ullamcorper nulla mollis semper. Integer sodales tellus sem, et ornare eros vehicula at. Donec felis quam, molestie eget elit vitae, hendrerit pharetra enim. Nullam in justo a elit bibendum semper. Donec molestie odio erat, quis ultricies dui commodo a. Maecenas scelerisque metus quis tellus luctus, non fringilla sem placerat.\r\n\r\nAliquam risus nisl, sodales a lacus molestie, bibendum convallis leo. Sed pellentesque gravida neque ac dictum. Donec eu quam molestie, suscipit velit at, maximus metus. Pellentesque volutpat maximus nisi, ut iaculis orci semper ut. Integer tristique hendrerit odio. Suspendisse tristique posuere ligula, sed dignissim lorem bibendum quis. In commodo dapibus pharetra. In pellentesque ac dui non semper. Etiam suscipit dolor quis imperdiet finibus. Phasellus ornare congue risus pulvinar maximus. Vivamus aliquet dignissim metus vel vestibulum. Duis sollicitudin venenatis dolor, vel laoreet lorem condimentum quis. Curabitur nibh nulla, dignissim eget dolor sit amet, ullamcorper tempus mauris. Integer convallis risus eu libero pellentesque lacinia. Aenean sit amet vehicula nisl, faucibus sagittis nisl.\r\n\r\nSuspendisse et quam nec mi varius tempor vel nec odio. Suspendisse potenti. Praesent posuere ultrices nunc, quis pharetra massa sollicitudin quis. Pellentesque pulvinar leo ut consectetur molestie. In elit felis, sollicitudin vitae accumsan et, iaculis egestas nulla. Suspendisse nec odio a mi feugiat fringilla. Morbi dictum elit nec blandit congue. Aenean leo eros, tristique eu nunc sed, volutpat consectetur quam. Proin fringilla, erat vel sodales dictum, felis orci suscipit leo, in egestas lorem urna ac sem. Quisque vel posuere urna, et placerat elit. In volutpat eget lectus id pellentesque. '),
(2, 'Serial Experimental Lain', 1, '2021-03-18 14:13:23', 'upload/lain.jpg', '\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur euismod ante mi, et dictum enim tincidunt at. Cras varius eu urna a gravida. Aenean nunc dolor, sodales vel commodo vel, fermentum ut orci. Sed faucibus dui risus. Fusce risus turpis, iaculis interdum nulla id, tempor vestibulum velit. Praesent tempus placerat est quis pulvinar. Nam ultrices facilisis enim, ac porttitor sapien. Vivamus dignissim, est vel varius porttitor, sem lacus bibendum nulla, vitae vulputate ante elit quis ipsum. Curabitur faucibus, orci interdum porta malesuada, arcu risus gravida arcu, a pellentesque lorem diam ut lorem. Vivamus a felis id ante lobortis dignissim.\r\n\r\nCurabitur purus ante, vestibulum et rhoncus vitae, mollis ac mi. Maecenas ut enim quis risus imperdiet varius. Integer quis ullamcorper eros, ac vulputate metus. Cras sollicitudin ligula non purus aliquam, at viverra nunc rutrum. Maecenas interdum malesuada feugiat. Nullam mollis arcu congue massa egestas fermentum. Nunc erat tortor, volutpat in massa et, congue dapibus quam. In congue porttitor felis, sed sagittis velit eleifend at. Proin in lacinia turpis, ac commodo leo. Donec eu erat venenatis, consectetur tellus a, tristique sapien. Sed pharetra nec risus ac aliquam. Sed vel ante gravida, pharetra lacus maximus, malesuada arcu. Ut a mi lacinia, laoreet risus nec, dignissim tellus. Integer ac sem maximus massa hendrerit rhoncus ac malesuada nibh. Nulla efficitur, massa in tincidunt bibendum, tortor ligula sodales nunc, sed gravida dolor nibh vitae ipsum.\r\n\r\nVivamus et massa vel felis consequat tincidunt eu a felis. Nulla nec suscipit velit. Nullam eros magna, egestas ac metus sit amet, dignissim hendrerit lorem. Sed eget tellus viverra, interdum turpis et, tincidunt eros. In venenatis pulvinar mi, sit amet dapibus velit aliquet quis. Nunc varius accumsan ipsum sit amet commodo. Nam consectetur placerat mauris quis consectetur. Donec laoreet ante ullamcorper nulla mollis semper. Integer sodales tellus sem, et ornare eros vehicula at. Donec felis quam, molestie eget elit vitae, hendrerit pharetra enim. Nullam in justo a elit bibendum semper. Donec molestie odio erat, quis ultricies dui commodo a. Maecenas scelerisque metus quis tellus luctus, non fringilla sem placerat.\r\n\r\nAliquam risus nisl, sodales a lacus molestie, bibendum convallis leo. Sed pellentesque gravida neque ac dictum. Donec eu quam molestie, suscipit velit at, maximus metus. Pellentesque volutpat maximus nisi, ut iaculis orci semper ut. Integer tristique hendrerit odio. Suspendisse tristique posuere ligula, sed dignissim lorem bibendum quis. In commodo dapibus pharetra. In pellentesque ac dui non semper. Etiam suscipit dolor quis imperdiet finibus. Phasellus ornare congue risus pulvinar maximus. Vivamus aliquet dignissim metus vel vestibulum. Duis sollicitudin venenatis dolor, vel laoreet lorem condimentum quis. Curabitur nibh nulla, dignissim eget dolor sit amet, ullamcorper tempus mauris. Integer convallis risus eu libero pellentesque lacinia. Aenean sit amet vehicula nisl, faucibus sagittis nisl.\r\n\r\nSuspendisse et quam nec mi varius tempor vel nec odio. Suspendisse potenti. Praesent posuere ultrices nunc, quis pharetra massa sollicitudin quis. Pellentesque pulvinar leo ut consectetur molestie. In elit felis, sollicitudin vitae accumsan et, iaculis egestas nulla. Suspendisse nec odio a mi feugiat fringilla. Morbi dictum elit nec blandit congue. Aenean leo eros, tristique eu nunc sed, volutpat consectetur quam. Proin fringilla, erat vel sodales dictum, felis orci suscipit leo, in egestas lorem urna ac sem. Quisque vel posuere urna, et placerat elit. In volutpat eget lectus id pellentesque. '),
(3, 'Black Mirror', 2, '2021-03-18 14:13:23', 'upload/black-mirror.jpg', '\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur euismod ante mi, et dictum enim tincidunt at. Cras varius eu urna a gravida. Aenean nunc dolor, sodales vel commodo vel, fermentum ut orci. Sed faucibus dui risus. Fusce risus turpis, iaculis interdum nulla id, tempor vestibulum velit. Praesent tempus placerat est quis pulvinar. Nam ultrices facilisis enim, ac porttitor sapien. Vivamus dignissim, est vel varius porttitor, sem lacus bibendum nulla, vitae vulputate ante elit quis ipsum. Curabitur faucibus, orci interdum porta malesuada, arcu risus gravida arcu, a pellentesque lorem diam ut lorem. Vivamus a felis id ante lobortis dignissim.\r\n\r\nCurabitur purus ante, vestibulum et rhoncus vitae, mollis ac mi. Maecenas ut enim quis risus imperdiet varius. Integer quis ullamcorper eros, ac vulputate metus. Cras sollicitudin ligula non purus aliquam, at viverra nunc rutrum. Maecenas interdum malesuada feugiat. Nullam mollis arcu congue massa egestas fermentum. Nunc erat tortor, volutpat in massa et, congue dapibus quam. In congue porttitor felis, sed sagittis velit eleifend at. Proin in lacinia turpis, ac commodo leo. Donec eu erat venenatis, consectetur tellus a, tristique sapien. Sed pharetra nec risus ac aliquam. Sed vel ante gravida, pharetra lacus maximus, malesuada arcu. Ut a mi lacinia, laoreet risus nec, dignissim tellus. Integer ac sem maximus massa hendrerit rhoncus ac malesuada nibh. Nulla efficitur, massa in tincidunt bibendum, tortor ligula sodales nunc, sed gravida dolor nibh vitae ipsum.\r\n\r\nVivamus et massa vel felis consequat tincidunt eu a felis. Nulla nec suscipit velit. Nullam eros magna, egestas ac metus sit amet, dignissim hendrerit lorem. Sed eget tellus viverra, interdum turpis et, tincidunt eros. In venenatis pulvinar mi, sit amet dapibus velit aliquet quis. Nunc varius accumsan ipsum sit amet commodo. Nam consectetur placerat mauris quis consectetur. Donec laoreet ante ullamcorper nulla mollis semper. Integer sodales tellus sem, et ornare eros vehicula at. Donec felis quam, molestie eget elit vitae, hendrerit pharetra enim. Nullam in justo a elit bibendum semper. Donec molestie odio erat, quis ultricies dui commodo a. Maecenas scelerisque metus quis tellus luctus, non fringilla sem placerat.\r\n\r\nAliquam risus nisl, sodales a lacus molestie, bibendum convallis leo. Sed pellentesque gravida neque ac dictum. Donec eu quam molestie, suscipit velit at, maximus metus. Pellentesque volutpat maximus nisi, ut iaculis orci semper ut. Integer tristique hendrerit odio. Suspendisse tristique posuere ligula, sed dignissim lorem bibendum quis. In commodo dapibus pharetra. In pellentesque ac dui non semper. Etiam suscipit dolor quis imperdiet finibus. Phasellus ornare congue risus pulvinar maximus. Vivamus aliquet dignissim metus vel vestibulum. Duis sollicitudin venenatis dolor, vel laoreet lorem condimentum quis. Curabitur nibh nulla, dignissim eget dolor sit amet, ullamcorper tempus mauris. Integer convallis risus eu libero pellentesque lacinia. Aenean sit amet vehicula nisl, faucibus sagittis nisl.\r\n\r\nSuspendisse et quam nec mi varius tempor vel nec odio. Suspendisse potenti. Praesent posuere ultrices nunc, quis pharetra massa sollicitudin quis. Pellentesque pulvinar leo ut consectetur molestie. In elit felis, sollicitudin vitae accumsan et, iaculis egestas nulla. Suspendisse nec odio a mi feugiat fringilla. Morbi dictum elit nec blandit congue. Aenean leo eros, tristique eu nunc sed, volutpat consectetur quam. Proin fringilla, erat vel sodales dictum, felis orci suscipit leo, in egestas lorem urna ac sem. Quisque vel posuere urna, et placerat elit. In volutpat eget lectus id pellentesque. '),
(4, 'Westworld', 1, '2021-03-18 14:13:23', 'upload/westworld.jpg', '\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur euismod ante mi, et dictum enim tincidunt at. Cras varius eu urna a gravida. Aenean nunc dolor, sodales vel commodo vel, fermentum ut orci. Sed faucibus dui risus. Fusce risus turpis, iaculis interdum nulla id, tempor vestibulum velit. Praesent tempus placerat est quis pulvinar. Nam ultrices facilisis enim, ac porttitor sapien. Vivamus dignissim, est vel varius porttitor, sem lacus bibendum nulla, vitae vulputate ante elit quis ipsum. Curabitur faucibus, orci interdum porta malesuada, arcu risus gravida arcu, a pellentesque lorem diam ut lorem. Vivamus a felis id ante lobortis dignissim.\r\n\r\nCurabitur purus ante, vestibulum et rhoncus vitae, mollis ac mi. Maecenas ut enim quis risus imperdiet varius. Integer quis ullamcorper eros, ac vulputate metus. Cras sollicitudin ligula non purus aliquam, at viverra nunc rutrum. Maecenas interdum malesuada feugiat. Nullam mollis arcu congue massa egestas fermentum. Nunc erat tortor, volutpat in massa et, congue dapibus quam. In congue porttitor felis, sed sagittis velit eleifend at. Proin in lacinia turpis, ac commodo leo. Donec eu erat venenatis, consectetur tellus a, tristique sapien. Sed pharetra nec risus ac aliquam. Sed vel ante gravida, pharetra lacus maximus, malesuada arcu. Ut a mi lacinia, laoreet risus nec, dignissim tellus. Integer ac sem maximus massa hendrerit rhoncus ac malesuada nibh. Nulla efficitur, massa in tincidunt bibendum, tortor ligula sodales nunc, sed gravida dolor nibh vitae ipsum.\r\n\r\nVivamus et massa vel felis consequat tincidunt eu a felis. Nulla nec suscipit velit. Nullam eros magna, egestas ac metus sit amet, dignissim hendrerit lorem. Sed eget tellus viverra, interdum turpis et, tincidunt eros. In venenatis pulvinar mi, sit amet dapibus velit aliquet quis. Nunc varius accumsan ipsum sit amet commodo. Nam consectetur placerat mauris quis consectetur. Donec laoreet ante ullamcorper nulla mollis semper. Integer sodales tellus sem, et ornare eros vehicula at. Donec felis quam, molestie eget elit vitae, hendrerit pharetra enim. Nullam in justo a elit bibendum semper. Donec molestie odio erat, quis ultricies dui commodo a. Maecenas scelerisque metus quis tellus luctus, non fringilla sem placerat.\r\n\r\nAliquam risus nisl, sodales a lacus molestie, bibendum convallis leo. Sed pellentesque gravida neque ac dictum. Donec eu quam molestie, suscipit velit at, maximus metus. Pellentesque volutpat maximus nisi, ut iaculis orci semper ut. Integer tristique hendrerit odio. Suspendisse tristique posuere ligula, sed dignissim lorem bibendum quis. In commodo dapibus pharetra. In pellentesque ac dui non semper. Etiam suscipit dolor quis imperdiet finibus. Phasellus ornare congue risus pulvinar maximus. Vivamus aliquet dignissim metus vel vestibulum. Duis sollicitudin venenatis dolor, vel laoreet lorem condimentum quis. Curabitur nibh nulla, dignissim eget dolor sit amet, ullamcorper tempus mauris. Integer convallis risus eu libero pellentesque lacinia. Aenean sit amet vehicula nisl, faucibus sagittis nisl.\r\n\r\nSuspendisse et quam nec mi varius tempor vel nec odio. Suspendisse potenti. Praesent posuere ultrices nunc, quis pharetra massa sollicitudin quis. Pellentesque pulvinar leo ut consectetur molestie. In elit felis, sollicitudin vitae accumsan et, iaculis egestas nulla. Suspendisse nec odio a mi feugiat fringilla. Morbi dictum elit nec blandit congue. Aenean leo eros, tristique eu nunc sed, volutpat consectetur quam. Proin fringilla, erat vel sodales dictum, felis orci suscipit leo, in egestas lorem urna ac sem. Quisque vel posuere urna, et placerat elit. In volutpat eget lectus id pellentesque. '),
(5, 'Steins Gate', 1, '2021-03-20 20:55:48', 'upload/605653441e3b1steinsgate.png', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare aliquet urna, quis molestie metus bibendum a. Nam aliquam feugiat arcu vitae auctor. Mauris venenatis mi eros, sollicitudin placerat odio accumsan sed. Proin auctor libero quis sagittis semper. Phasellus vel velit libero. Fusce cursus tristique mi, eget lacinia leo aliquam quis. Sed fermentum aliquam quam, sed mollis justo lacinia vel. Cras dapibus leo nibh, in sollicitudin nulla lacinia ut. Sed pulvinar dolor non ligula consectetur, id pretium felis elementum. Integer sit amet tellus pellentesque, auctor est eu, semper mauris. Quisque vel ligula justo. Quisque tristique quis mauris ac dapibus. Sed fermentum lacus nisi, at scelerisque dui volutpat quis. Quisque ultrices orci eget odio lobortis, eu consectetur eros molestie.\r\n\r\nFusce ut purus imperdiet, maximus risus in, bibendum nunc. Curabitur vitae lacus viverra, volutpat erat sed, venenatis ligula. Curabitur ex nulla, malesuada in auctor ut, consequat ac sapien. Nulla at ipsum vel turpis ullamcorper semper. Curabitur quis convallis ante, ut consequat elit. Phasellus laoreet tempus orci, ac efficitur mi blandit vel. Vestibulum felis felis, finibus et feugiat in, tempor a est. In nulla dui, viverra ut vestibulum at, pellentesque quis neque. Nullam ullamcorper felis quis leo malesuada, ac suscipit lacus blandit.\r\n\r\nOrci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent elementum enim a enim volutpat, a volutpat odio maximus. Cras lobortis gravida justo, quis accumsan mi tincidunt eget. In id nibh fringilla, sagittis neque vel, imperdiet elit. Phasellus vel mi metus. Proin in lectus vitae justo pulvinar convallis fermentum at nibh. Pellentesque id justo turpis. Fusce gravida diam non velit faucibus convallis. Nulla leo est, tempus in augue at, fermentum ornare urna. Suspendisse dignissim lectus urna. Mauris mauris magna, viverra non fringilla ut, ultrices id sapien. Praesent a justo vel magna hendrerit consectetur quis id justo. In hac habitasse platea dictumst. Donec non congue lacus, a commodo orci.\r\n\r\nVestibulum a maximus justo, eu venenatis dui. Aliquam tincidunt mattis eros a iaculis. Nam iaculis est ac arcu ultrices, nec cursus leo pharetra. Nulla finibus malesuada mauris non sagittis. Donec vitae purus dignissim, varius velit sed, porttitor augue. Nulla convallis nisi sed rutrum ornare. Cras lectus mi, vulputate nec venenatis non, posuere vitae mauris. Vivamus lectus quam, faucibus vel est ut, rhoncus cursus tellus. Duis mollis eleifend elit, vitae mollis neque. ');

-- --------------------------------------------------------

--
-- Structure de la table `article_category`
--

CREATE TABLE `article_category` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `article_category`
--

INSERT INTO `article_category` (`id`, `article_id`, `category_id`) VALUES
(1, 1, 1),
(2, 1, 5),
(3, 1, 10),
(4, 2, 1),
(5, 2, 8),
(6, 3, 2),
(7, 3, 8),
(8, 3, 7),
(9, 4, 2),
(10, 4, 7),
(41, 5, 1),
(42, 5, 7),
(43, 5, 8);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Anime'),
(2, 'Show'),
(3, 'Movie'),
(4, 'Thriller'),
(5, 'Action'),
(6, 'Horror'),
(7, 'SF'),
(8, 'Drama'),
(9, 'Love'),
(10, 'Book');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `pseudo`, `content`, `date`, `article_id`) VALUES
(3, 'FB', 'Honnêtement le personnage principal m\'ennui', '2021-03-22 07:59:18', 5),
(4, 'Dr Who', 'Une histoire de scientifique qui voyage dans le temps... ça n\'a aucun sens ! ', '2021-03-22 07:59:18', 5),
(7, 'Egregorion', 'Très très bon manga !', '2021-03-22 17:34:23', 5),
(8, 'Marty McFly', 'Pff....Y a même pas de voiture :(', '2021-03-22 17:36:43', 5),
(9, 'Egregorion', 'Une expérience exceptionnelle ! ', '2021-03-22 17:38:53', 2);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `lastname`, `firstname`, `pseudo`, `email`, `password`) VALUES
(1, 'FOURMAUX', 'Grégory', 'Egregorion', 'gregory.fourmaux@gmail.com', '$2y$10$Pcn0RqkfRYDr3ealhpvdF.nC8UBQJax64E7uuvRaKvd2B1pBhHNKC'),
(2, 'SCAFARI', 'Vadim', 'hax0r', 'test@test.fr', '$2y$10$W0wpixOo/wXjpYcEWICUWez1LP2NX1StVyqMBJLUJXWJLYUdeWn/a');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_title` (`title`),
  ADD KEY `user_article` (`author_id`);

--
-- Index pour la table `article_category`
--
ALTER TABLE `article_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id` (`article_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_commentaire` (`article_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `article_category`
--
ALTER TABLE `article_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `user_article` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `article_category`
--
ALTER TABLE `article_category`
  ADD CONSTRAINT `article_id` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Contraintes pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `article_commentaire` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
