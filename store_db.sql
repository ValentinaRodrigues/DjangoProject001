SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add group', 4, 'add_group'),
(11, 'Can change group', 4, 'change_group'),
(12, 'Can delete group', 4, 'delete_group'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add csv file', 7, 'add_csvfile'),
(20, 'Can change csv file', 7, 'change_csvfile'),
(21, 'Can delete csv file', 7, 'delete_csvfile'),
(22, 'Can add product', 8, 'add_product'),
(23, 'Can change product', 8, 'change_product'),
(24, 'Can delete product', 8, 'delete_product'),
(25, 'Can add category', 9, 'add_category'),
(26, 'Can change category', 9, 'change_category'),
(27, 'Can delete category', 9, 'delete_category');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$100000$A0H7slfVEcDG$1YgAaqXohdmSanC7AGAWRIDfUrPuG6zHTu2S7fB+j4k=', '2018-07-20 07:45:16.857376', 1, 'admin', '', '', 'abc@abc.com', 1, 1, '2018-07-18 11:59:54.498234');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-07-18 12:06:15.670625', '1', 'CSVFile object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2018-07-18 12:06:46.062920', '2', 'CSVFile object (2)', 1, '[{\"added\": {}}]', 7, 1),
(3, '2018-07-18 12:22:04.986957', '3', 'CSVFile object (3)', 1, '[{\"added\": {}}]', 7, 1),
(4, '2018-07-18 12:39:08.402524', '4', 'CSVFile object (4)', 1, '[{\"added\": {}}]', 7, 1),
(5, '2018-07-18 12:55:14.552543', '5', 'CSVFile object (5)', 1, '[{\"added\": {}}]', 7, 1),
(6, '2018-07-18 12:56:32.928685', '6', 'CSVFile object (6)', 1, '[{\"added\": {}}]', 7, 1),
(7, '2018-07-18 13:28:28.782901', '7', 'CSVFile object (7)', 1, '[{\"added\": {}}]', 7, 1),
(8, '2018-07-18 13:36:18.236278', '1', 'Category object (1)', 1, '[{\"added\": {}}]', 9, 1),
(9, '2018-07-18 13:42:44.426521', '1', 'Redmi Note 5 32 GB', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(4, 'auth', 'group'),
(2, 'auth', 'permission'),
(3, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'inventory', 'category'),
(7, 'inventory', 'csvfile'),
(8, 'inventory', 'product'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-07-18 11:11:28.736471'),
(2, 'auth', '0001_initial', '2018-07-18 11:11:39.004049'),
(3, 'admin', '0001_initial', '2018-07-18 11:11:41.383507'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-07-18 11:11:41.433314'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-07-18 11:11:42.484534'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-07-18 11:11:43.441024'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-07-18 11:11:44.358126'),
(8, 'auth', '0004_alter_user_username_opts', '2018-07-18 11:11:44.398107'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-07-18 11:11:45.145542'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-07-18 11:11:45.268070'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-07-18 11:11:45.354840'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-07-18 11:11:46.398078'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2018-07-18 11:11:47.425397'),
(14, 'sessions', '0001_initial', '2018-07-18 11:11:48.212195'),
(15, 'inventory', '0001_initial', '2018-07-18 11:58:16.149768'),
(16, 'inventory', '0002_auto_20180718_1819', '2018-07-18 12:49:41.477484'),
(17, 'inventory', '0003_auto_20180718_1901', '2018-07-18 13:31:33.079046'),
(18, 'inventory', '0004_auto_20180718_1910', '2018-07-18 13:40:49.657727'),
(19, 'inventory', '0005_auto_20180718_1912', '2018-07-18 13:42:33.191042'),
(20, 'inventory', '0006_auto_20180718_1914', '2018-07-18 13:44:56.796726'),
(21, 'inventory', '0007_auto_20180719_0249', '2018-07-18 21:19:58.882619'),
(22, 'inventory', '0008_auto_20180719_1335', '2018-07-19 08:05:53.535082'),
(23, 'inventory', '0009_auto_20180720_1045', '2018-07-20 05:16:07.316803');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_csvfile`
--

CREATE TABLE `inventory_csvfile` (
  `id` int(11) NOT NULL,
  `docfile` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `inventory_csvfile`
--

INSERT INTO `inventory_csvfile` (`id`, `docfile`) VALUES
(3, '2henry_ford_quote.jpg'),
(4, 'Machine-Learning-Electricity-industry.png'),
(5, 'uploaded_files/cities.csv'),
(6, 'uploaded_files/The_Intelligent_Investor_-_BENJAMIN_GRAHAM.pdf'),
(7, 'uploaded_files/cities_Lec2yW9.csv');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_product`
--

CREATE TABLE `inventory_product` (
  `id` int(11) NOT NULL,
  `pname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cost` double NOT NULL,
  `is_sold` tinyint(1) NOT NULL,
  `order_date` date DEFAULT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `inventory_product`
--

INSERT INTO `inventory_product` (`id`, `pname`, `cost`, `is_sold`, `order_date`, `quantity`) VALUES
(1, 'Redmi Note 5 32 GB', 9999, 0, NULL, 1),
(2, 'Mobile Phone', 59, 0, NULL, 1),
(83, 'Redmi Note 5 Pro', 15000, 0, NULL, 1),
(84, 'Phones', 45, 0, NULL, 20),
(85, 'Mens Short Sleeves Slim Fit Solid Polo T-Shirt', 200, 0, NULL, 3),
(86, 'SASSAFRAS Women Pink Fit & Flare Off-Shoulder Midi Dress', 2000, 0, NULL, 3),
(87, 'AKS Women Green & White Printed Layered Maxi Dress', 2000, 0, NULL, 3),
(88, 'AKS Women Green & White Printed Layered Maxi Dress', 3000, 0, NULL, 1),
(89, 'AKS Women Green & White Printed Layered Maxi Dress', 3000, 0, NULL, 1),
(90, 'AKS Women Green & White Printed Layered Maxi Dress', 3000, 0, NULL, 1),
(91, 'AKS Women Green & White Printed Layered Maxi Dress', 3000, 0, NULL, 1),
(92, 'DressBerry Women Rose Gold-Toned Dial Watch DB2-A', 1322, 1, '2018-12-12', 1);

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
-- Indexes for table `inventory_csvfile`
--
ALTER TABLE `inventory_csvfile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_product`
--
ALTER TABLE `inventory_product`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `inventory_csvfile`
--
ALTER TABLE `inventory_csvfile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `inventory_product`
--
ALTER TABLE `inventory_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
