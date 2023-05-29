-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2022 at 03:04 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_learning`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `course_intro` varchar(255) NOT NULL,
  `course_description` varchar(255) NOT NULL,
  `modul_number` int(11) NOT NULL,
  `time_estimate` int(11) NOT NULL,
  `course_image` varchar(255) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `course_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `course_intro`, `course_description`, `modul_number`, `time_estimate`, `course_image`, `subject_id`, `course_level`) VALUES
(1, 'Seni Lukis', 'Pelajari sejarah, aliran, tujuan, dan metode seni lukis untuk menghasilkan lukisan yang menarik.', 'course_description_1.txt', 6, 5, 'subject-1-course-1.png', 1, 2),
(2, 'Geometri', 'Pelajari konsep geometri untuk memecahkan berbagai masalah dan melihat dunia dari sudut pandang berbeda.', 'course_description_2.txt', 4, 4, 'subject-2-course-1.png', 2, 2),
(3, 'Hukum Newton', 'Pelajari hukum newton atau hukum gerak untuk melihat bagaimana pengaruh gaya pada gerak benda.', 'course_description_3.txt', 4, 6, 'subject-4-course-1.png', 4, 2),
(4, 'Evolusi Biologi', 'Pelajari bagaimana teori evolusi menggambarkan proses  perubahan manusia dari waktu ke waktu.', 'course_description_4.txt', 7, 7, 'subject-3-course-2.png', 3, 3),
(5, 'Fisika Dasar', 'Pelajari konsep-konsep dasar fisika untuk menjelajahi ilmu fisika lebih jauh', 'course_description_5.txt', 3, 6, 'subject-4-course-2.png', 4, 2),
(6, 'Sistem Pernapasan', 'Pelajari mengapa makhluk hidup perlu bernapas dan bagaimana proses pernapasan terjadi.', 'course_description_6.txt', 5, 7, 'subject-3-course-1.png', 3, 1),
(7, 'Sistem Peredaran Darah', 'Pelajari bagaimana proses perjalanan sel darah di seluruh bagian tubuh manusia.', 'course_description_7.txt', 8, 8, 'subject-3-course-3.jpg', 3, 1),
(8, 'Reaksi Kimia', 'Memahami apa itu reaksi kimia, bagaimana ciri-cirinya, apa jenis dan contohnya dalam kehidupan sehari-hari.', 'course_description_8.txt', 4, 8, 'subject-7-course-1.jpg', 7, 3),
(9, 'Teks Eksposisi', 'Pelajari ciri-ciri, struktur, contoh, dan pola untuk mengenali teks ekposisi lebih baik.', 'course_description_9.txt', 4, 10, 'subject-6-course-1.jpg', 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `course_learning_content`
--

CREATE TABLE `course_learning_content` (
  `content_id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `syllabus_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_learning_content`
--

INSERT INTO `course_learning_content` (`content_id`, `content`, `syllabus_id`, `course_id`) VALUES
(1, 'pengenalan_hukum_newton.php', 11, 3),
(2, 'hukum_1_newton.php', 12, 3),
(3, 'hukum_2_newton.php', 13, 3),
(4, 'hukum_3_newton.php', 14, 3),
(5, 'pengertian_geometri.php', 7, 2),
(6, 'sejarah_geometri.php', 8, 2),
(7, 'konsep_penting_geometri.php', 9, 2),
(8, 'kedudukan_titik_dan_garis.php', 10, 2),
(9, 'pengertian_seni_lukis.php', 1, 1),
(10, 'sejarah_seni_lukis.php', 2, 1),
(11, 'jenis_seni_lukis.php', 3, 1),
(12, 'teknik_seni_lukis.php', 4, 1),
(13, 'alat_bahan_melukis.php', 5, 1),
(14, 'tujuan_seni_lukis.php', 6, 1),
(15, 'apa_itu_evolusi.php', 15, 4),
(16, 'dasar_teori_evolusi.php', 16, 4),
(17, 'faktor_mempengaruhi_evolusi.php', 17, 4),
(18, 'faktor_terbentuk_spesies.php', 18, 4),
(19, 'ciri_proses_evolusi.php', 19, 4),
(20, 'prinsip_evolusi.php', 20, 4),
(21, 'petunjuk_adanya_evolusi.php', 21, 4),
(22, 'konsep_fisika_informasi_dasar.php', 22, 5),
(23, 'konsep_fisika_pengukuran.php', 23, 5),
(24, 'konsep_fisika_rumus_hukum.php', 24, 5),
(25, 'pengertian_sistem_pernapasan.php', 25, 6),
(26, 'organ_pernapasan.php', 26, 6),
(27, 'mekanisme_pertukaran_udara.php', 27, 6),
(28, 'macam_udara_pernapasan.php', 28, 6),
(29, 'gangguan_organ_pernapasan.php', 29, 6),
(30, 'pengenalan_sistem_peredaran_darah.php', 30, 7),
(31, 'fungsi_darah.php', 31, 7),
(32, 'penyusun_jaringan_darah.php', 32, 7),
(33, 'golongan_darah.php', 33, 7),
(34, 'organ_sistem_peredaran_darah.php', 34, 7),
(35, 'mekanisme_siklus_peredaran_darah.php', 35, 7),
(36, 'sistem_limfatik.php', 36, 7),
(37, 'gangguan_sistem_peredaran_darah.php', 37, 7),
(38, 'pengertian_reaksi_kimia.php', 38, 8),
(39, 'ciri_reaksi_kimia.php', 39, 8),
(40, 'jenis_reaksi_kimia.php', 40, 8),
(41, 'contoh_reaksi_kimia.php', 41, 8),
(42, 'pengertian_teks_eksposisi.php', 42, 9),
(43, 'contoh_teks_eksposisi.php', 43, 9),
(44, 'struktur_teks_eksposisi.php', 44, 9),
(45, 'ciri_teks_eksposisi.php', 45, 9),
(46, 'unsur_teks_eksposisi.php', 46, 9),
(47, 'pola_teks_eksposisi.php', 47, 9);

-- --------------------------------------------------------

--
-- Table structure for table `course_syllabus`
--

CREATE TABLE `course_syllabus` (
  `syllabus_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `syllabus_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_syllabus`
--

INSERT INTO `course_syllabus` (`syllabus_id`, `course_id`, `syllabus_name`) VALUES
(1, 1, 'Pengertian Seni Lukis'),
(2, 1, 'Sejarah Seni Lukis'),
(3, 1, 'Jenis-Jenis Seni Lukis'),
(4, 1, 'Teknik-Teknik dalam Seni Lukis'),
(5, 1, 'Alat dan Bahan dalam Melukis'),
(6, 1, 'Fungsi Seni Lukis'),
(7, 2, 'Pengertian Geometri'),
(8, 2, 'Sejarah Geometri'),
(9, 2, 'Konsep Penting Dalam Geometri'),
(10, 2, 'kedudukan titik dan garis pada bidang'),
(11, 3, 'Pengenalan Hukum Newton'),
(12, 3, 'Hukum I Newton'),
(13, 3, 'Hukum II Newton'),
(14, 3, 'Hukum III Newton'),
(15, 4, 'apa itu evolusi'),
(16, 4, 'dasar teori evolusi'),
(17, 4, 'faktor yang mempengaruhi evolusi'),
(18, 4, 'faktor terbentuknya spesies baru'),
(19, 4, 'ciri-ciri proses evolusi'),
(20, 4, 'prinsip evolusi'),
(21, 4, 'petunjuk adanya evolusi'),
(22, 5, 'Konsep Fisika: Informasi Dasar'),
(23, 5, 'Konsep Fisika: Pengukuran'),
(24, 5, 'Konsep Fisika: Hukum dan Rumus Utama'),
(25, 6, 'pengertian sistem pernapasan'),
(26, 6, 'organ-organ pernapasan'),
(27, 6, 'mekanisme pertukaran udara'),
(28, 6, 'macam-macam udara pernapasan'),
(29, 6, 'gangguan pada organ pernapasan'),
(30, 7, 'Pengenalan Sistem Peredaran Darah'),
(31, 7, 'fungsi darah'),
(32, 7, 'penyusun jaringan darah'),
(33, 7, 'golongan darah'),
(34, 7, 'organ-organ dalam sistem peredaran darah'),
(35, 7, 'mekanisme siklus peredaran darah besar dan kecil'),
(36, 7, 'sistem limfatik'),
(37, 7, 'gangguan atau penyakit pada sistem peredaran darah'),
(38, 8, 'pengertian reaksi kimia'),
(39, 8, 'ciri-ciri reaksi kimia'),
(40, 8, 'jenis-jenis reaksi kimia'),
(41, 8, 'contoh reaksi kimia'),
(42, 9, 'pengertian teks eksposisi'),
(43, 9, 'contoh teks eksposisi'),
(44, 9, 'struktur teks eksposisi'),
(45, 9, 'ciri-ciri teks eksposisi'),
(46, 9, 'unsur-unsur teks eksposisi'),
(47, 9, 'pola teks eksposisi');

-- --------------------------------------------------------

--
-- Table structure for table `google_login`
--

CREATE TABLE `google_login` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `last_name` varchar(50) NOT NULL DEFAULT '',
  `gender` varchar(50) DEFAULT NULL,
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `picture` varchar(255) NOT NULL DEFAULT '',
  `verifiedEmail` int(11) NOT NULL DEFAULT 0,
  `token` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `google_login`
--

INSERT INTO `google_login` (`id`, `email`, `first_name`, `last_name`, `gender`, `fullname`, `picture`, `verifiedEmail`, `token`) VALUES
(1, 'bastianarisna@gmail.com', 'Basthian', 'Arisna', NULL, 'Basthian Arisna', 'https://lh3.googleusercontent.com/a/ALm5wu3xgAJEKWeL4-ZKqwGxiGkH4CHGpN1pntQA8kCu0w=s96-c', 1, '108352157097526499166'),
(4, 'basthianarisna@gmail.com', 'Basthian', 'Arisna', NULL, 'Basthian Arisna', 'https://lh3.googleusercontent.com/a/ALm5wu2YvrQSVfw_RoeqMw-buaHyfxryXme3wg0ureaV=s96-c', 1, '100243755375414133801'),
(5, 'slmnfariz.kamb@gmail.com', 'Salman', 'Fariz', NULL, 'Salman Fariz', 'https://lh3.googleusercontent.com/a/ALm5wu3LDy7I-4L_IvO88C-gxhMsgpNo9xTZcxax1mbF=s96-c', 1, '111563342786048961280');

-- --------------------------------------------------------

--
-- Table structure for table `level_courses`
--

CREATE TABLE `level_courses` (
  `level_id` int(11) NOT NULL,
  `level_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `level_courses`
--

INSERT INTO `level_courses` (`level_id`, `level_name`) VALUES
(1, 'SD'),
(2, 'SMP'),
(3, 'SMA');

-- --------------------------------------------------------

--
-- Table structure for table `platform_subscribers`
--

CREATE TABLE `platform_subscribers` (
  `id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_subscribed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `platform_subscribers`
--

INSERT INTO `platform_subscribers` (`id`, `user_email`, `user_id`, `date_subscribed`) VALUES
(7, 'bastian@gmail.com', 16, 1671499813),
(8, 'basthianarisna@gmail.com', 16, 1671499838);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `courses_number` int(11) NOT NULL,
  `subject_icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_id`, `subject_name`, `courses_number`, `subject_icon`) VALUES
(1, 'Seni Budaya', 1, 'subject-icon-1.png'),
(2, 'Matematika', 1, 'subject-icon-2.png'),
(3, 'Biologi', 3, 'subject-icon-3.png'),
(4, 'Fisika', 2, 'subject-icon-4.png'),
(6, 'Bahasa Indonesia', 1, 'subject-icon-6.png'),
(7, 'Kimia', 1, 'subject-icon-7.png');

-- --------------------------------------------------------

--
-- Table structure for table `taken_courses`
--

CREATE TABLE `taken_courses` (
  `taken_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `date_taken` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taken_courses`
--

INSERT INTO `taken_courses` (`taken_id`, `user_id`, `subject_id`, `course_id`, `date_taken`) VALUES
(85, 16, 3, 6, 1671802709),
(86, 23, 3, 7, 1671803588),
(87, 23, 1, 1, 1671803838),
(88, 23, 2, 2, 1671803853),
(89, 24, 4, 3, 1671804025),
(90, 24, 4, 5, 1671804039),
(91, 24, 3, 4, 1671804052),
(92, 30, 7, 8, 1671804137),
(93, 30, 6, 9, 1671804148),
(94, 30, 1, 1, 1671804160),
(95, 30, 1, 1, 1671804161);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `image_profile` varchar(255) DEFAULT NULL,
  `user_coupon` int(11) NOT NULL,
  `subscribers` int(11) NOT NULL,
  `user_token` varchar(255) DEFAULT NULL,
  `role_id` varchar(5) NOT NULL,
  `date_join` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `password`, `full_name`, `phone`, `image_profile`, `user_coupon`, `subscribers`, `user_token`, `role_id`, `date_join`) VALUES
(16, 'bastianarisna@gmail.com', '$2y$10$Da2RmzsOzPAbPBMcYlUq1.oeqeoWghNl876KaxRxPTdOWw0cJrQh.', 'Basthian Arisna', '+6285256260040', 'image_(2)3.jpg', 6, 100, '108352157097526499166', '2', 1669640485),
(23, 'ace@gmail.com', '$2y$10$rlZpafQp0v7z7z/DO3BuzO2ogsJssh/wRUi.iBSTZuEH5dcuDCjgW', 'Portgas D. Ace', NULL, 'teacher-1.png', 6, 200, NULL, '2', 1671500028),
(24, 'luffy@gmail.com', '$2y$10$QzM9e7h7kbKdAXwxOSDj7ORyyz2B2ZKV5WGgQZsAmasp0TWvl/u1u', 'Monkey D. Luffy', NULL, 'teacher-2.png', 0, 250, NULL, '2', 1671500070),
(25, 'zoro@gmail.com', '$2y$10$Mf1qSGoo5PzmEu/L3Hh/N.ONCUYvljSxiXwykWnmRr0Pm.LgRdW6O', 'Roronoa Zoro', NULL, 'teacher-3.png', 9, 300, NULL, '2', 1671500141),
(26, 'sanji@gmail.com', '$2y$10$.IheOXeLZdpz4rUw7jZNqelBtelmVITf.Q.HHh6WwmtQ2QquuEUku', 'Vinsmoke Sanji', NULL, 'teacher-4.png', 9, 80, NULL, '2', 1671500178),
(27, 'ray@gmail.com', '$2y$10$39zeIjpepeVClXTzlL7BZODEIv49t7nJ6QG/WGPju4M9vpfS7..Qq', 'Silver Rayleigh', NULL, 'teacher-5.png', 9, 150, NULL, '2', 1671500217),
(28, 'roger@gmail.com', '$2y$10$QTJk02qHu2PDuWZznaAbK.oRliYzSxiYps61fXCiY4V5CGBZelDh2', 'Gol D. Roger', NULL, 'teacher-6.png', 9, 120, NULL, '2', 1671500245),
(30, 'basthianarisna@gmail.com', '$2y$10$qIaorBBKIEZbPe0qN.TR.ekq6pYEAfHQ.kCQZmnQE9ZnPokrOSOni', 'Basthian Arisna', NULL, 'user_logo.jpg', -3, 0, '100243755375414133801', '2', 1671804112);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(100) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`, `role_id`) VALUES
(1, 'Users', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_messages_feedback`
--

CREATE TABLE `user_messages_feedback` (
  `id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `date_submitted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_messages_feedback`
--

INSERT INTO `user_messages_feedback` (`id`, `message`, `user_id`, `user_email`, `user_phone`, `date_submitted`) VALUES
(1, 'Hai, can you change my account password?', 16, 'bastian@gmail.com', '085256260040', 1671499038),
(2, 'Hai MerdekaBelajar', 16, 'bastianarisna@gmail.com', '+6285256260040', 1671499102);

-- --------------------------------------------------------

--
-- Table structure for table `user_tasks`
--

CREATE TABLE `user_tasks` (
  `task_id` int(11) NOT NULL,
  `task_name` varchar(255) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_created` int(11) NOT NULL,
  `submission_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_tasks`
--

INSERT INTO `user_tasks` (`task_id`, `task_name`, `course_id`, `user_id`, `date_created`, `submission_status`) VALUES
(13, 'Membuat Resume Materi Kursus Sistem Pernapasan', 6, 16, 1671802709, 0),
(14, 'Membuat Resume Materi Kursus Sistem Peredaran Darah', 7, 23, 1671803588, 1),
(15, 'Membuat Resume Materi Kursus Seni Lukis', 1, 23, 1671803838, 1),
(16, 'Membuat Resume Materi Kursus Geometri', 2, 23, 1671803853, 0),
(17, 'Membuat Resume Materi Kursus Hukum Newton', 3, 24, 1671804025, 0),
(18, 'Membuat Resume Materi Kursus Fisika Dasar', 5, 24, 1671804040, 0),
(19, 'Membuat Resume Materi Kursus Evolusi Biologi', 4, 24, 1671804052, 0),
(20, 'Membuat Resume Materi Kursus Reaksi Kimia', 8, 30, 1671804137, 0),
(21, 'Membuat Resume Materi Kursus Teks Eksposisi', 9, 30, 1671804148, 0),
(22, 'Membuat Resume Materi Kursus Seni Lukis', 1, 30, 1671804161, 0),
(23, 'Membuat Resume Materi Kursus Seni Lukis', 1, 30, 1671804161, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_task_submissions`
--

CREATE TABLE `user_task_submissions` (
  `submission_id` int(11) NOT NULL,
  `submission_name` varchar(255) NOT NULL,
  `task_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `date_submitted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_task_submissions`
--

INSERT INTO `user_task_submissions` (`submission_id`, `submission_name`, `task_id`, `course_id`, `date_submitted`) VALUES
(27, 'MODUL_II.pdf', 14, 7, 1671803919),
(28, 'Modul_IV_Kecerdasan_Buatan.pdf', 15, 1, 1671804248);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `course_learning_content`
--
ALTER TABLE `course_learning_content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `course_syllabus`
--
ALTER TABLE `course_syllabus`
  ADD PRIMARY KEY (`syllabus_id`);

--
-- Indexes for table `google_login`
--
ALTER TABLE `google_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level_courses`
--
ALTER TABLE `level_courses`
  ADD PRIMARY KEY (`level_id`);

--
-- Indexes for table `platform_subscribers`
--
ALTER TABLE `platform_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `taken_courses`
--
ALTER TABLE `taken_courses`
  ADD PRIMARY KEY (`taken_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_messages_feedback`
--
ALTER TABLE `user_messages_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_tasks`
--
ALTER TABLE `user_tasks`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `user_task_submissions`
--
ALTER TABLE `user_task_submissions`
  ADD PRIMARY KEY (`submission_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `course_learning_content`
--
ALTER TABLE `course_learning_content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `course_syllabus`
--
ALTER TABLE `course_syllabus`
  MODIFY `syllabus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `google_login`
--
ALTER TABLE `google_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `level_courses`
--
ALTER TABLE `level_courses`
  MODIFY `level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `platform_subscribers`
--
ALTER TABLE `platform_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `taken_courses`
--
ALTER TABLE `taken_courses`
  MODIFY `taken_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_messages_feedback`
--
ALTER TABLE `user_messages_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_tasks`
--
ALTER TABLE `user_tasks`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user_task_submissions`
--
ALTER TABLE `user_task_submissions`
  MODIFY `submission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
