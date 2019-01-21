-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jan 21, 2019 at 11:15 AM
-- Server version: 5.7.24-0ubuntu0.16.04.1
-- PHP Version: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `the_project_factory`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add evaluation', 7, 'add_evaluation'),
(20, 'Can change evaluation', 7, 'change_evaluation'),
(21, 'Can delete evaluation', 7, 'delete_evaluation'),
(22, 'Can add evaluateur', 8, 'add_evaluateur'),
(23, 'Can change evaluateur', 8, 'change_evaluateur'),
(24, 'Can delete evaluateur', 8, 'delete_evaluateur'),
(25, 'Can add critere', 9, 'add_critere'),
(26, 'Can change critere', 9, 'change_critere'),
(27, 'Can delete critere', 9, 'delete_critere'),
(28, 'Can add financeur', 10, 'add_financeur'),
(29, 'Can change financeur', 10, 'change_financeur'),
(30, 'Can delete financeur', 10, 'delete_financeur'),
(31, 'Can add financement', 11, 'add_financement'),
(32, 'Can change financement', 11, 'change_financement'),
(33, 'Can delete financement', 11, 'delete_financement'),
(34, 'Can add projet', 12, 'add_projet'),
(35, 'Can change projet', 12, 'change_projet'),
(36, 'Can delete projet', 12, 'delete_projet'),
(37, 'Can add photo projet', 13, 'add_photoprojet'),
(38, 'Can change photo projet', 13, 'change_photoprojet'),
(39, 'Can delete photo projet', 13, 'delete_photoprojet'),
(40, 'Can add type', 14, 'add_type'),
(41, 'Can change type', 14, 'change_type'),
(42, 'Can delete type', 14, 'delete_type'),
(43, 'Can add commentaire projet', 15, 'add_commentaireprojet'),
(44, 'Can change commentaire projet', 15, 'change_commentaireprojet'),
(45, 'Can delete commentaire projet', 15, 'delete_commentaireprojet'),
(46, 'Can add personne', 16, 'add_personne'),
(47, 'Can change personne', 16, 'change_personne'),
(48, 'Can delete personne', 16, 'delete_personne'),
(49, 'Can add message', 17, 'add_message'),
(50, 'Can change message', 17, 'change_message'),
(51, 'Can delete message', 17, 'delete_message');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$36000$9FkSh0r6TS2s$f7OcZ6loHXK4AwieAcVpW6AGxRcvhov/Wy7CDeMnb3s=', '2019-01-21 10:11:28.451893', 1, 'admin', '', '', '', 1, 1, '2019-01-21 09:45:53.141564'),
(2, 'pbkdf2_sha256$36000$FQtnIhdLAvGp$pBSs/sfLzF/LVqU6TOXAsy3vfDSCxkLH5kJ+fnvodKE=', '2019-01-21 10:03:30.631690', 0, 'utilisateur', 'None', 'None', 'None', 0, 1, '2019-01-21 09:50:03.066290');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us_message`
--

CREATE TABLE `contact_us_message` (
  `id` int(11) NOT NULL,
  `texte` longtext NOT NULL,
  `mail` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact_us_message`
--

INSERT INTO `contact_us_message` (`id`, `texte`, `mail`) VALUES
(1, 'Je trouve ce site super, dommage qu\'il n\'y ai pas beaucoup d\'utilisateur...', 'anonymous@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(17, 'contact_us', 'message'),
(5, 'contenttypes', 'contenttype'),
(9, 'evaluateur', 'critere'),
(8, 'evaluateur', 'evaluateur'),
(7, 'evaluateur', 'evaluation'),
(11, 'financeur', 'financement'),
(10, 'financeur', 'financeur'),
(15, 'projet', 'commentaireprojet'),
(13, 'projet', 'photoprojet'),
(12, 'projet', 'projet'),
(14, 'projet', 'type'),
(6, 'sessions', 'session'),
(16, 'the_project_factory_default', 'personne');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-01-21 09:43:31.708344'),
(2, 'auth', '0001_initial', '2019-01-21 09:43:32.627493'),
(3, 'admin', '0001_initial', '2019-01-21 09:43:32.852907'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-01-21 09:43:32.893207'),
(5, 'contenttypes', '0002_remove_content_type_name', '2019-01-21 09:43:33.053592'),
(6, 'auth', '0002_alter_permission_name_max_length', '2019-01-21 09:43:33.145597'),
(7, 'auth', '0003_alter_user_email_max_length', '2019-01-21 09:43:33.244720'),
(8, 'auth', '0004_alter_user_username_opts', '2019-01-21 09:43:33.272283'),
(9, 'auth', '0005_alter_user_last_login_null', '2019-01-21 09:43:33.345683'),
(10, 'auth', '0006_require_contenttypes_0002', '2019-01-21 09:43:33.352686'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2019-01-21 09:43:33.380140'),
(12, 'auth', '0008_alter_user_username_max_length', '2019-01-21 09:43:33.477738'),
(13, 'contact_us', '0001_initial', '2019-01-21 09:43:33.512839'),
(14, 'the_project_factory_default', '0001_initial', '2019-01-21 09:43:33.649501'),
(15, 'projet', '0001_initial', '2019-01-21 09:43:34.402790'),
(16, 'evaluateur', '0001_initial', '2019-01-21 09:43:34.882062'),
(17, 'financeur', '0001_initial', '2019-01-21 09:43:35.333283'),
(18, 'sessions', '0001_initial', '2019-01-21 09:43:35.411346');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('rwqhgftml3tt5ivnw5js4sfq4dlbpsfw', 'MDZlYjg1MWY5ZjZkYjlmZWJmOWQ0N2JkNmRlNmIyOTQwYjg1ODcyOTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTc5ZjJiNjg2NzM5ODk2MGZmMDJkYTAxYTMwYWVjZTA5MWZjNGNkMyIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2019-02-04 10:11:28.458806');

-- --------------------------------------------------------

--
-- Table structure for table `evaluateur_critere`
--

CREATE TABLE `evaluateur_critere` (
  `id` int(11) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `evaluateur_evaluateur`
--

CREATE TABLE `evaluateur_evaluateur` (
  `id` int(11) NOT NULL,
  `karma` int(11) NOT NULL,
  `personne_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `evaluateur_evaluateur`
--

INSERT INTO `evaluateur_evaluateur` (`id`, `karma`, `personne_id`) VALUES
(1, 4, 2),
(2, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `evaluateur_evaluation`
--

CREATE TABLE `evaluateur_evaluation` (
  `id` int(11) NOT NULL,
  `note` int(11) NOT NULL,
  `Evaluateur_id` int(11) NOT NULL,
  `Projet_id` int(11) NOT NULL,
  `Type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `evaluateur_evaluation`
--

INSERT INTO `evaluateur_evaluation` (`id`, `note`, `Evaluateur_id`, `Projet_id`, `Type_id`) VALUES
(2, 5, 2, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `financeur_financement`
--

CREATE TABLE `financeur_financement` (
  `id` int(11) NOT NULL,
  `somme` int(11) NOT NULL,
  `financeur_id` int(11) NOT NULL,
  `projet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `financeur_financement`
--

INSERT INTO `financeur_financement` (`id`, `somme`, `financeur_id`, `projet_id`) VALUES
(1, 5000, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `financeur_financeur`
--

CREATE TABLE `financeur_financeur` (
  `id` int(11) NOT NULL,
  `capacite_financiere` int(11) NOT NULL,
  `limite_projet` int(11) NOT NULL,
  `personne_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `financeur_financeur`
--

INSERT INTO `financeur_financeur` (`id`, `capacite_financiere`, `limite_projet`, `personne_id`) VALUES
(1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `projet_commentaireprojet`
--

CREATE TABLE `projet_commentaireprojet` (
  `id` int(11) NOT NULL,
  `texte` longtext NOT NULL,
  `mail` varchar(254) NOT NULL,
  `projet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projet_commentaireprojet`
--

INSERT INTO `projet_commentaireprojet` (`id`, `texte`, `mail`, `projet_id`) VALUES
(2, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.', 'monavis@gmail.com', 6);

-- --------------------------------------------------------

--
-- Table structure for table `projet_photoprojet`
--

CREATE TABLE `projet_photoprojet` (
  `id` int(11) NOT NULL,
  `texte` varchar(300) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `projet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projet_projet`
--

CREATE TABLE `projet_projet` (
  `id` int(11) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `Type_id` int(11) NOT NULL,
  `personne_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projet_projet`
--

INSERT INTO `projet_projet` (`id`, `titre`, `description`, `image`, `Type_id`, `personne_id`) VALUES
(4, 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'image_projet/interior_w6xPgXm.png', 3, 2),
(5, 'Sed ut perspiciatis unde omnis iste', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', 'image_projet/index_heLvY2o.png', 2, 2),
(6, 'At vero eos et accusamus et iusto odio dignissimos', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.', 'image_projet/house_38533_YADxgjj.png', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `projet_type`
--

CREATE TABLE `projet_type` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projet_type`
--

INSERT INTO `projet_type` (`id`, `nom`) VALUES
(3, 'Intérieur'),
(2, 'Jardin'),
(1, 'Maison');

-- --------------------------------------------------------

--
-- Table structure for table `the_project_factory_default_personne`
--

CREATE TABLE `the_project_factory_default_personne` (
  `id` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `site_web` varchar(200) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `signature` longtext NOT NULL,
  `inscrit_newsletter` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `the_project_factory_default_personne`
--

INSERT INTO `the_project_factory_default_personne` (`id`, `age`, `site_web`, `avatar`, `signature`, `inscrit_newsletter`, `user_id`) VALUES
(1, 0, 'None', 'avatars/user-male-circle-filled.png', 'None', 0, 2),
(2, 0, '', '', '', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `contact_us_message`
--
ALTER TABLE `contact_us_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `evaluateur_critere`
--
ALTER TABLE `evaluateur_critere`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evaluateur_evaluateur`
--
ALTER TABLE `evaluateur_evaluateur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evaluateur_evaluateu_personne_id_f319410c_fk_the_proje` (`personne_id`);

--
-- Indexes for table `evaluateur_evaluation`
--
ALTER TABLE `evaluateur_evaluation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evaluateur_evaluatio_Evaluateur_id_4b28116c_fk_evaluateu` (`Evaluateur_id`),
  ADD KEY `evaluateur_evaluation_Projet_id_92771c8f_fk_projet_projet_id` (`Projet_id`),
  ADD KEY `evaluateur_evaluation_Type_id_ec6487da_fk_projet_type_id` (`Type_id`);

--
-- Indexes for table `financeur_financement`
--
ALTER TABLE `financeur_financement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `financeur_financemen_financeur_id_091bf3d6_fk_financeur` (`financeur_id`),
  ADD KEY `financeur_financement_projet_id_c24106c9_fk_projet_projet_id` (`projet_id`);

--
-- Indexes for table `financeur_financeur`
--
ALTER TABLE `financeur_financeur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `financeur_financeur_personne_id_84c0f0aa_fk_the_proje` (`personne_id`);

--
-- Indexes for table `projet_commentaireprojet`
--
ALTER TABLE `projet_commentaireprojet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projet_commentaireprojet_projet_id_cef712a1_fk_projet_projet_id` (`projet_id`);

--
-- Indexes for table `projet_photoprojet`
--
ALTER TABLE `projet_photoprojet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projet_photoprojet_projet_id_b6b3fe1e_fk_projet_projet_id` (`projet_id`);

--
-- Indexes for table `projet_projet`
--
ALTER TABLE `projet_projet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projet_projet_Type_id_4b5d6ac0_fk_projet_type_id` (`Type_id`),
  ADD KEY `projet_projet_personne_id_a69c8fd7_fk_the_proje` (`personne_id`);

--
-- Indexes for table `projet_type`
--
ALTER TABLE `projet_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nom` (`nom`);

--
-- Indexes for table `the_project_factory_default_personne`
--
ALTER TABLE `the_project_factory_default_personne`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contact_us_message`
--
ALTER TABLE `contact_us_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `evaluateur_critere`
--
ALTER TABLE `evaluateur_critere`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `evaluateur_evaluateur`
--
ALTER TABLE `evaluateur_evaluateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `evaluateur_evaluation`
--
ALTER TABLE `evaluateur_evaluation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `financeur_financement`
--
ALTER TABLE `financeur_financement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `financeur_financeur`
--
ALTER TABLE `financeur_financeur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `projet_commentaireprojet`
--
ALTER TABLE `projet_commentaireprojet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `projet_photoprojet`
--
ALTER TABLE `projet_photoprojet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `projet_projet`
--
ALTER TABLE `projet_projet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `projet_type`
--
ALTER TABLE `projet_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `the_project_factory_default_personne`
--
ALTER TABLE `the_project_factory_default_personne`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `evaluateur_evaluateur`
--
ALTER TABLE `evaluateur_evaluateur`
  ADD CONSTRAINT `evaluateur_evaluateu_personne_id_f319410c_fk_the_proje` FOREIGN KEY (`personne_id`) REFERENCES `the_project_factory_default_personne` (`id`);

--
-- Constraints for table `evaluateur_evaluation`
--
ALTER TABLE `evaluateur_evaluation`
  ADD CONSTRAINT `evaluateur_evaluatio_Evaluateur_id_4b28116c_fk_evaluateu` FOREIGN KEY (`Evaluateur_id`) REFERENCES `evaluateur_evaluateur` (`id`),
  ADD CONSTRAINT `evaluateur_evaluation_Projet_id_92771c8f_fk_projet_projet_id` FOREIGN KEY (`Projet_id`) REFERENCES `projet_projet` (`id`),
  ADD CONSTRAINT `evaluateur_evaluation_Type_id_ec6487da_fk_projet_type_id` FOREIGN KEY (`Type_id`) REFERENCES `projet_type` (`id`);

--
-- Constraints for table `financeur_financement`
--
ALTER TABLE `financeur_financement`
  ADD CONSTRAINT `financeur_financemen_financeur_id_091bf3d6_fk_financeur` FOREIGN KEY (`financeur_id`) REFERENCES `financeur_financeur` (`id`),
  ADD CONSTRAINT `financeur_financement_projet_id_c24106c9_fk_projet_projet_id` FOREIGN KEY (`projet_id`) REFERENCES `projet_projet` (`id`);

--
-- Constraints for table `financeur_financeur`
--
ALTER TABLE `financeur_financeur`
  ADD CONSTRAINT `financeur_financeur_personne_id_84c0f0aa_fk_the_proje` FOREIGN KEY (`personne_id`) REFERENCES `the_project_factory_default_personne` (`id`);

--
-- Constraints for table `projet_commentaireprojet`
--
ALTER TABLE `projet_commentaireprojet`
  ADD CONSTRAINT `projet_commentaireprojet_projet_id_cef712a1_fk_projet_projet_id` FOREIGN KEY (`projet_id`) REFERENCES `projet_projet` (`id`);

--
-- Constraints for table `projet_photoprojet`
--
ALTER TABLE `projet_photoprojet`
  ADD CONSTRAINT `projet_photoprojet_projet_id_b6b3fe1e_fk_projet_projet_id` FOREIGN KEY (`projet_id`) REFERENCES `projet_projet` (`id`);

--
-- Constraints for table `projet_projet`
--
ALTER TABLE `projet_projet`
  ADD CONSTRAINT `projet_projet_Type_id_4b5d6ac0_fk_projet_type_id` FOREIGN KEY (`Type_id`) REFERENCES `projet_type` (`id`),
  ADD CONSTRAINT `projet_projet_personne_id_a69c8fd7_fk_the_proje` FOREIGN KEY (`personne_id`) REFERENCES `the_project_factory_default_personne` (`id`);

--
-- Constraints for table `the_project_factory_default_personne`
--
ALTER TABLE `the_project_factory_default_personne`
  ADD CONSTRAINT `the_project_factory__user_id_9951419a_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
