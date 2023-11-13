-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 25 juin 2021 à 14:53
-- Version du serveur :  10.4.19-MariaDB
-- Version de PHP : 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bd_alcachy`
--

-- --------------------------------------------------------

--
-- Structure de la table `absences`
--

CREATE TABLE `absences` (
  `id_absence` bigint(10) NOT NULL,
  `justifie` varchar(10) DEFAULT NULL,
  `id_etudiant` bigint(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `id_seance` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `absences`
--

INSERT INTO `absences` (`id_absence`, `justifie`, `id_etudiant`, `created_at`, `update_at`, `deleted_at`, `id_seance`) VALUES
(1, 'oui', NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `administrations`
--

CREATE TABLE `administrations` (
  `logo` varchar(10) DEFAULT NULL,
  `nom_ecole` varchar(20) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `capital` varchar(50) DEFAULT NULL,
  `ville` varchar(200) DEFAULT NULL,
  `code_postal` int(11) DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `update_at` date DEFAULT NULL,
  `cnss` varchar(20) DEFAULT NULL,
  `ice` varchar(20) DEFAULT NULL,
  `num_patente` varchar(20) DEFAULT NULL,
  `site_web` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `rs` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `administrations`
--

INSERT INTO `administrations` (`logo`, `nom_ecole`, `address`, `capital`, `ville`, `code_postal`, `telephone`, `created_at`, `update_at`, `cnss`, `ice`, `num_patente`, `site_web`, `email`, `rs`) VALUES
(NULL, 'AL Cachy', 'shcusiliucjks', 'skchuiwlcjn', 'scjsqcnhmiosn', 1234, 98789383, NULL, NULL, 'KCJHKQSCGI', 'X./JNLQSI', 'S.JCLIQSM', 'SHCPIUSYUIHCEUHOSI', 'SDUISIOSJDUWJKNXOUYISFDMKL', 'Lajzdi,wuosqblkuGCNIOSJMJIYDOU');

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE `admins` (
  `id_admin` bigint(10) NOT NULL,
  `id_user` bigint(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `classes`
--

CREATE TABLE `classes` (
  `id_classe` bigint(10) NOT NULL,
  `libelle_classe` varchar(100) DEFAULT NULL,
  `nb_etudiants` int(100) DEFAULT NULL,
  `annee_scolaire` varchar(10) DEFAULT NULL,
  `niveau` int(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `id_filiere` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `classes`
--

INSERT INTO `classes` (`id_classe`, `libelle_classe`, `nb_etudiants`, `annee_scolaire`, `niveau`, `created_at`, `update_at`, `deleted_at`, `id_filiere`) VALUES
(1, 'dsi', 30, '2021', 1, NULL, NULL, NULL, 12),
(22, 'devlopemnt  - Niv 2', 0, '2021/2022', 2, NULL, NULL, NULL, 26),
(23, 'devlopemnt  - Niv 1', 0, '2021/2022', 1, NULL, NULL, NULL, 26),
(25, 'devlopemnt  - Niv 1', 0, '2021/2022', 1, NULL, NULL, NULL, 26),
(26, 'dsi  - Niv 1', 0, '2021/2022', 1, NULL, NULL, NULL, 27),
(33, 'DSI - Niv 1', 0, '2021/2022', 1, NULL, NULL, NULL, 29),
(34, 'DSI - Niv 2', 0, '2021/2022', 2, NULL, NULL, NULL, 29);

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `id_cour` bigint(20) NOT NULL,
  `id_professeur` bigint(20) DEFAULT NULL,
  `description` varchar(20) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `id_matiere` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`id_cour`, `id_professeur`, `description`, `photo`, `id_matiere`) VALUES
(6, NULL, 'les tableaux', 'http://localhost/matier/uploads/files/yk1rgvja958be4o.PNG', 1),
(7, NULL, 'les tableaux', '', 1),
(8, NULL, 'les tableaux', '', 1),
(9, NULL, 'les tableaux', 'http://localhost/PROJET_STAGE_2021/uploads/files/8i0cw57sb1expln.PNG', 1),
(10, NULL, 'HAMZA', 'http://localhost/PROJET_STAGE_2021/uploads/files/c8mr5zyl7auwsvi.png', 1),
(11, NULL, 'HAMZA', 'http://localhost/PROJET_STAGE_2021/uploads/files/p3kbw_mrint6x09.jpg', 1),
(12, NULL, 'test', 'http://localhost/PROJET_STAGE_2021/uploads/files/5svghoam4u6qdlj.png', 1),
(13, NULL, 'LEQ', '', 2),
(14, NULL, 'LEQ', NULL, 2),
(15, NULL, 'cour fichier', 'http://localhost/PROJET_STAGE_2021/uploads/files/j9fsm2t48r6dbhu.pdf', 2);

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

CREATE TABLE `etudiants` (
  `id_etudiant` bigint(10) NOT NULL,
  `id_tuteur` bigint(10) DEFAULT NULL,
  `CNE` varchar(10) DEFAULT NULL,
  `id_user` bigint(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `id_classe` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`id_etudiant`, `id_tuteur`, `CNE`, `id_user`, `created_at`, `update_at`, `deleted_at`, `id_classe`) VALUES
(1, 4, 'cn345', 48, NULL, NULL, NULL, 1),
(2, 5, 'CN67543', 55, NULL, NULL, NULL, 1),
(3, 6, 'CN45678', 58, NULL, NULL, NULL, 22),
(4, 8, 'hhhhhh', 62, NULL, NULL, NULL, 33);

-- --------------------------------------------------------

--
-- Structure de la table `examens`
--

CREATE TABLE `examens` (
  `id_examen` bigint(10) NOT NULL,
  `libelle_examen` varchar(60) DEFAULT NULL,
  `heur_debut` time DEFAULT NULL,
  `heur_fin` time DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `id_matiere` bigint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `examens`
--

INSERT INTO `examens` (`id_examen`, `libelle_examen`, `heur_debut`, `heur_fin`, `date`, `created_at`, `update_at`, `deleted_at`, `id_matiere`) VALUES
(1, 'DAI', '17:20:18', '19:20:18', NULL, NULL, NULL, NULL, 1),
(2, 'tset01', '11:00:00', '13:00:00', '2021-06-22', NULL, NULL, NULL, 1),
(9, 'CC1', '10:00:00', '12:00:00', '2021-06-09', NULL, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Structure de la table `exercices`
--

CREATE TABLE `exercices` (
  `id_Exercice` bigint(10) NOT NULL,
  `libelle_Exercice` varchar(20) DEFAULT NULL,
  `description_Exercice` varchar(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `id_professeur` bigint(10) DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `id_matiere` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `exercices`
--

INSERT INTO `exercices` (`id_Exercice`, `libelle_Exercice`, `description_Exercice`, `photo`, `id_professeur`, `update_at`, `deleted_at`, `id_matiere`) VALUES
(2, 'exercice', 'ghuijhy', 'http://localhost/matier/uploads/files/glkjzd96ih7u8m3.pdf', NULL, NULL, NULL, NULL),
(4, NULL, 'exercice', NULL, NULL, NULL, NULL, 1),
(5, NULL, 'rffr\'(d(d', 'http://localhost/PROJET_STAGE_2021/uploads/files/cs86lkbhf9_v2rm.jpg', NULL, NULL, NULL, 1),
(11, NULL, 'tp', 'http://localhost/PROJET_STAGE_2021/uploads/files/ihqp19g5jr_oszx.pdf', NULL, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Structure de la table `filieres`
--

CREATE TABLE `filieres` (
  `id_filiere` bigint(20) NOT NULL,
  `libelle_filiere` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `filieres`
--

INSERT INTO `filieres` (`id_filiere`, `libelle_filiere`, `created_at`, `update_at`, `deleted_at`) VALUES
(12, 'dsi2', NULL, NULL, NULL),
(13, 'TC1', NULL, NULL, NULL),
(25, 'MT', NULL, NULL, NULL),
(26, 'devlopemnt ', NULL, NULL, NULL),
(27, 'dsi ', NULL, NULL, NULL),
(29, 'DSI', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `matieres`
--

CREATE TABLE `matieres` (
  `id_matiere` bigint(10) NOT NULL,
  `Libelle_matiere` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `id_module` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `matieres`
--

INSERT INTO `matieres` (`id_matiere`, `Libelle_matiere`, `created_at`, `update_at`, `deleted_at`, `id_module`) VALUES
(1, 'langage c', NULL, NULL, NULL, 1),
(2, 'java', NULL, NULL, NULL, 15);

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id_message` bigint(10) NOT NULL,
  `libelle_message` varchar(200) DEFAULT NULL,
  `emmeteur` varchar(20) DEFAULT NULL,
  `recepteur` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `modules`
--

CREATE TABLE `modules` (
  `id_module` bigint(10) NOT NULL,
  `libelle_module` varchar(55) DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `id_filiere` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `niveau` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `modules`
--

INSERT INTO `modules` (`id_module`, `libelle_module`, `update_at`, `deleted_at`, `id_filiere`, `created_at`, `niveau`) VALUES
(1, 'DAI', NULL, NULL, 1, NULL, '1'),
(2, 'CAI', NULL, NULL, 23, NULL, '1'),
(15, 'dasdsad', NULL, NULL, 33, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

CREATE TABLE `note` (
  `id` bigint(10) NOT NULL,
  `note` double DEFAULT NULL,
  `id_examen` bigint(20) NOT NULL,
  `id_etudiant` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `paiement`
--

CREATE TABLE `paiement` (
  `id_paiement` bigint(20) NOT NULL,
  `Date_Paiement` date DEFAULT NULL,
  `Montant` float DEFAULT NULL,
  `Type_paiement` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `id_etudiant` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `professeurs`
--

CREATE TABLE `professeurs` (
  `id_prof` bigint(10) NOT NULL,
  `cnp` varchar(11) DEFAULT NULL,
  `id_user` bigint(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `professeurs`
--

INSERT INTO `professeurs` (`id_prof`, `cnp`, `id_user`, `created_at`, `update_at`, `deleted_at`) VALUES
(1, 'cn7686', 57, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `salles`
--

CREATE TABLE `salles` (
  `id_salle` bigint(10) NOT NULL,
  `libelle` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `salles`
--

INSERT INTO `salles` (`id_salle`, `libelle`, `created_at`, `update_at`, `deleted_at`) VALUES
(1, 'SALLE A', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `seances`
--

CREATE TABLE `seances` (
  `id_seance` bigint(10) NOT NULL,
  `Libelle_seance` varchar(50) DEFAULT NULL,
  `heurDebut_seance` time DEFAULT NULL,
  `heurFin_seance` time DEFAULT NULL,
  `date_seance` date DEFAULT NULL,
  `id_professeur` bigint(20) DEFAULT NULL,
  `id_salle` bigint(20) DEFAULT NULL,
  `id_examen` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `id_matiere` bigint(20) DEFAULT NULL,
  `anner_scolaire` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `seances`
--

INSERT INTO `seances` (`id_seance`, `Libelle_seance`, `heurDebut_seance`, `heurFin_seance`, `date_seance`, `id_professeur`, `id_salle`, `id_examen`, `created_at`, `update_at`, `deleted_at`, `id_matiere`, `anner_scolaire`) VALUES
(1, 'math', '10:30:00', '11:30:00', '2021-06-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tuteurs`
--

CREATE TABLE `tuteurs` (
  `id_tuteur` bigint(10) NOT NULL,
  `cin` varchar(30) DEFAULT NULL,
  `libelle_tuteur` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `id_user` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tuteurs`
--

INSERT INTO `tuteurs` (`id_tuteur`, `cin`, `libelle_tuteur`, `created_at`, `update_at`, `deleted_at`, `id_user`) VALUES
(4, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'CN67543', NULL, NULL, NULL, NULL, 56),
(6, 'CN45678', NULL, NULL, NULL, NULL, 59),
(7, 'CN411888977', NULL, NULL, NULL, NULL, 61),
(8, 'hhhhhh', NULL, NULL, NULL, NULL, 63);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_user` bigint(10) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `Prenom` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `mot_passe` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `lieu_naissance` varchar(20) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `genre` char(1) DEFAULT NULL,
  `cin` varchar(11) DEFAULT NULL,
  `adresse` varchar(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `login_session_key` varchar(255) DEFAULT NULL,
  `email_status` varchar(20) DEFAULT NULL,
  `password_reset_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id_user`, `nom`, `Prenom`, `email`, `telephone`, `mot_passe`, `type`, `lieu_naissance`, `date_naissance`, `genre`, `cin`, `adresse`, `photo`, `created_at`, `update_at`, `deleted_at`, `login_session_key`, `email_status`, `password_reset_key`) VALUES
(45, 'ujuhazaz', 'azgyea', 'Fadwa.lalloucht@gmail.com', '09929929', '$2y$10$eG4fFHfZjQ10I4M0D2e1VOgSoHfTWNBWgZghfwAjbIR7FXWkvcfIm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'fadwa', 'lalloucht', 'test01@gmail.com', '08765322', '$2y$10$YiazEJVUwlAyhF1dia/9veZdsBhp2BogUUhUWSQ4cv5SArD/TPeQe', 'admin', 'Gigou', '2002-02-01', 'F', 'CN456789', 'skoutalqu', 'http://localhost/PROJET_STAGE_2021/uploads/files/16oew3alz5_dr9g.png', NULL, NULL, NULL, NULL, NULL, '2afgycinmw8r'),
(47, 'mamma', 'mamam01', 'mama01@gmail.com', NULL, '$2y$10$sl8NYXfLfo6KvogXUJGC3.3ypW4n6R/LP.PI/0VAIIFGT1MXZdBVa', 'Etudiant', NULL, NULL, NULL, NULL, 'skoura', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'baba', 'baba01', 'baba@gmail.com', NULL, '$2y$10$8ny2yQWIle1OOV0mvTupqefXATkA4jMTp445cf3z8MsG1mZ4A1uUK', 'Profeseur', NULL, NULL, NULL, NULL, 'fes', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'hanae', 'hanae01', 'hanae@gmail.com', NULL, '$2y$10$M2Dvet/OKVtDiO.ND.eKwu1VHINnJDdrNolio8Tgudg9NhFTMSyKK', 'Tituer', NULL, NULL, NULL, NULL, 'skoura', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'Mohmed', 'Mohmed01', 'Mohmed@gmail.com', NULL, '$2y$10$S.OqpMqDVY3fS1KvA2dVJ.mIVjCR2nTWKUSoZjpQ9wrA347qSE4KC', 'Tuteur', NULL, NULL, NULL, NULL, 'fes', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'fadwa01', 'fadwa02', 'fadwa02@gmail.com', NULL, '$2y$10$xTpPRwkz8ICpPi2OmRAvmeWjupxVrmx68LWtszuO53wtJcRKIWRGm', 'Etudiant', NULL, NULL, NULL, NULL, 'fes', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'fadwa02', 'fadwa02', 'fadwa01@gmail.com', NULL, '$2y$10$abi0KQkyEoCsIWzKeCwt0enz/EwIoqIuljKdUsFM1q2QPXhRmI00a', 'Etudiant', NULL, NULL, NULL, NULL, 'skoura', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'mama', 'mama1', 'mama@gmail.com', NULL, '$2y$10$IvvHVcITJMn0j5NFvbSyqug3xy/cZIlzuRLw0KVucLQ6vvYSdpGYS', 'admin', NULL, NULL, NULL, NULL, 'Skoura', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'hfghfg', 'fadwa', 'mohamed@mechdoud.com', NULL, '$2y$10$VAF9VOJFoZg95YjCznRnAe7IRx9Vs1yOhTq2Dod1yPZVPdysjpfoC', 'admin', NULL, NULL, NULL, NULL, 'Skoura', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'lalloucht', 'fadwa', 'fadwa.lalloucht@gmail.com', '0987654', NULL, 'Etudiant', 'Mdaz', '2002-01-01', 'F', 'CN41188', 'fés', '', NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'Lalloucht', 'Idriss', 'Idriss.lalloucht@gmail.com', '0662469607', NULL, 'Tuteur', NULL, NULL, 'M', 'CN67543', 'skoura', '', NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'LLLL', 'uuuuu', 'fadwa.lalloucht@gmail.com', '098765', NULL, 'Professeur', 'fes', '2021-06-22', 'F', 'CN41188', 'fes', '', NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'LALLOUCHT', 'FADWA', 'fadwa.lalloucht@gmail.com', '098765', NULL, 'Etudiant', 'fes', '2007-12-07', 'F', 'CN41188', 'fes', '', NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'ldkjcldjg', 'jdsuzeul', 'baba@gmail.com', '098765', NULL, 'Tuteur', NULL, NULL, 'M', 'CN45678', 'fes', '', NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'lalloucht', 'fadwa', 'fadwa.lalloucht@gmail.com', '0987654342', NULL, 'Etudiant', 'skoura', '2002-02-01', 'F', 'CN41188', 'fès', '', NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'LALLOUCHT', 'Fadwa', 'fadwa.lalloucht@gmail.com', '09876543', NULL, 'Tuteur', NULL, NULL, 'M', 'CN411888977', 'skoura', '', NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'test01', 'test01', 'test01@gmail.com', '0987654', NULL, 'Etudiant', 'fes', '2021-06-27', 'F', 'CN76894', 'skoura', '', NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'hhhhh', 'hhhhh', 'hhhh@gmail.com', '0987654789', NULL, 'Tuteur', NULL, NULL, 'M', 'hhhhhh', 'fes', '', NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `absences`
--
ALTER TABLE `absences`
  ADD PRIMARY KEY (`id_absence`),
  ADD KEY `fk_1` (`id_etudiant`),
  ADD KEY `fk_seance` (`id_seance`);

--
-- Index pour la table `administrations`
--
ALTER TABLE `administrations`
  ADD PRIMARY KEY (`nom_ecole`);

--
-- Index pour la table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id_admin`),
  ADD KEY `fk_M` (`id_user`);

--
-- Index pour la table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id_classe`),
  ADD KEY `fk_f` (`id_filiere`);

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`id_cour`),
  ADD KEY `fk_p` (`id_professeur`),
  ADD KEY `fk_mat` (`id_matiere`);

--
-- Index pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id_etudiant`),
  ADD KEY `fku` (`id_user`),
  ADD KEY `fkt` (`id_tuteur`),
  ADD KEY `fk_classe` (`id_classe`);

--
-- Index pour la table `examens`
--
ALTER TABLE `examens`
  ADD PRIMARY KEY (`id_examen`),
  ADD KEY `fkmatier` (`id_matiere`);

--
-- Index pour la table `exercices`
--
ALTER TABLE `exercices`
  ADD PRIMARY KEY (`id_Exercice`),
  ADD KEY `fko` (`id_professeur`),
  ADD KEY `fkm` (`id_matiere`);

--
-- Index pour la table `filieres`
--
ALTER TABLE `filieres`
  ADD PRIMARY KEY (`id_filiere`);

--
-- Index pour la table `matieres`
--
ALTER TABLE `matieres`
  ADD PRIMARY KEY (`id_matiere`),
  ADD KEY `fkmodule` (`id_module`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id_message`);

--
-- Index pour la table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id_module`),
  ADD KEY `fk` (`id_filiere`);

--
-- Index pour la table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_e` (`id_examen`),
  ADD KEY `fk_d` (`id_etudiant`);

--
-- Index pour la table `paiement`
--
ALTER TABLE `paiement`
  ADD PRIMARY KEY (`id_paiement`),
  ADD KEY `fk-user` (`id_etudiant`);

--
-- Index pour la table `professeurs`
--
ALTER TABLE `professeurs`
  ADD PRIMARY KEY (`id_prof`),
  ADD KEY `fk_r` (`id_user`);

--
-- Index pour la table `salles`
--
ALTER TABLE `salles`
  ADD PRIMARY KEY (`id_salle`);

--
-- Index pour la table `seances`
--
ALTER TABLE `seances`
  ADD PRIMARY KEY (`id_seance`),
  ADD KEY `fkpp` (`id_professeur`),
  ADD KEY `fks` (`id_salle`),
  ADD KEY `fke` (`id_examen`),
  ADD KEY `fkma` (`id_matiere`);

--
-- Index pour la table `tuteurs`
--
ALTER TABLE `tuteurs`
  ADD PRIMARY KEY (`id_tuteur`),
  ADD KEY `fk_user` (`id_user`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `absences`
--
ALTER TABLE `absences`
  MODIFY `id_absence` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `admins`
--
ALTER TABLE `admins`
  MODIFY `id_admin` bigint(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `classes`
--
ALTER TABLE `classes`
  MODIFY `id_classe` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `id_cour` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id_etudiant` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `examens`
--
ALTER TABLE `examens`
  MODIFY `id_examen` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `exercices`
--
ALTER TABLE `exercices`
  MODIFY `id_Exercice` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `filieres`
--
ALTER TABLE `filieres`
  MODIFY `id_filiere` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `matieres`
--
ALTER TABLE `matieres`
  MODIFY `id_matiere` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id_message` bigint(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `modules`
--
ALTER TABLE `modules`
  MODIFY `id_module` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `note`
--
ALTER TABLE `note`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `paiement`
--
ALTER TABLE `paiement`
  MODIFY `id_paiement` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `professeurs`
--
ALTER TABLE `professeurs`
  MODIFY `id_prof` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `salles`
--
ALTER TABLE `salles`
  MODIFY `id_salle` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `seances`
--
ALTER TABLE `seances`
  MODIFY `id_seance` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `tuteurs`
--
ALTER TABLE `tuteurs`
  MODIFY `id_tuteur` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `absences`
--
ALTER TABLE `absences`
  ADD CONSTRAINT `fk_1` FOREIGN KEY (`id_etudiant`) REFERENCES `etudiants` (`id_etudiant`),
  ADD CONSTRAINT `fk_seance` FOREIGN KEY (`id_seance`) REFERENCES `seances` (`id_seance`);

--
-- Contraintes pour la table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `fk_M` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Contraintes pour la table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `fk_f` FOREIGN KEY (`id_filiere`) REFERENCES `filieres` (`id_filiere`);

--
-- Contraintes pour la table `cours`
--
ALTER TABLE `cours`
  ADD CONSTRAINT `fk_mat` FOREIGN KEY (`id_matiere`) REFERENCES `matieres` (`id_matiere`),
  ADD CONSTRAINT `fk_p` FOREIGN KEY (`id_professeur`) REFERENCES `professeurs` (`id_prof`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD CONSTRAINT `fk_classe` FOREIGN KEY (`id_classe`) REFERENCES `classes` (`id_classe`),
  ADD CONSTRAINT `fkt` FOREIGN KEY (`id_tuteur`) REFERENCES `tuteurs` (`id_tuteur`),
  ADD CONSTRAINT `fku` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Contraintes pour la table `examens`
--
ALTER TABLE `examens`
  ADD CONSTRAINT `fkmatier` FOREIGN KEY (`id_matiere`) REFERENCES `matieres` (`id_matiere`);

--
-- Contraintes pour la table `exercices`
--
ALTER TABLE `exercices`
  ADD CONSTRAINT `fkm` FOREIGN KEY (`id_matiere`) REFERENCES `matieres` (`id_matiere`),
  ADD CONSTRAINT `fko` FOREIGN KEY (`id_professeur`) REFERENCES `professeurs` (`id_prof`);

--
-- Contraintes pour la table `matieres`
--
ALTER TABLE `matieres`
  ADD CONSTRAINT `fkmodule` FOREIGN KEY (`id_module`) REFERENCES `modules` (`id_module`);

--
-- Contraintes pour la table `modules`
--
ALTER TABLE `modules`
  ADD CONSTRAINT `fk` FOREIGN KEY (`id_filiere`) REFERENCES `classes` (`id_classe`);

--
-- Contraintes pour la table `paiement`
--
ALTER TABLE `paiement`
  ADD CONSTRAINT `fk-user` FOREIGN KEY (`id_etudiant`) REFERENCES `etudiants` (`id_etudiant`);

--
-- Contraintes pour la table `professeurs`
--
ALTER TABLE `professeurs`
  ADD CONSTRAINT `fk_r` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Contraintes pour la table `seances`
--
ALTER TABLE `seances`
  ADD CONSTRAINT `fke` FOREIGN KEY (`id_examen`) REFERENCES `examens` (`id_examen`),
  ADD CONSTRAINT `fkma` FOREIGN KEY (`id_matiere`) REFERENCES `matieres` (`id_matiere`),
  ADD CONSTRAINT `fkpp` FOREIGN KEY (`id_professeur`) REFERENCES `professeurs` (`id_prof`),
  ADD CONSTRAINT `fks` FOREIGN KEY (`id_salle`) REFERENCES `salles` (`id_salle`);

--
-- Contraintes pour la table `tuteurs`
--
ALTER TABLE `tuteurs`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
