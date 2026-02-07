-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 07, 2026 at 06:40 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edtech_platform`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-BtbBSwS0Kqb4PiaI', 'a:1:{s:11:\"valid_until\";i:1770482936;}', 1771692596),
('laravel-cache-WbIB3mGVVAlkSesh', 'a:1:{s:11:\"valid_until\";i:1770482907;}', 1771692387);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `level` enum('beginner','intermediate','advanced') COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instructor_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `description`, `price`, `level`, `image`, `instructor_id`, `created_at`, `updated_at`) VALUES
(1, 'Updated Course Title', 'Updated Description', 1200.00, 'intermediate', 'e-learning-concept-woman-learning-online-with-webinar-internet-is-used-modern-education-seminar-meeting-elearning-technology-video-tutorial-online-lessons-digital-training-study-course_708636-1338.avif', 2, '2026-02-07 10:25:09', '2026-02-07 10:51:35'),
(2, 'Et non omnis.', 'Omnis libero eum unde. Quia perspiciatis sequi veritatis enim tenetur fuga. Laudantium assumenda nihil dolores laboriosam atque molestiae earum eveniet.', 28.26, 'intermediate', 'content-concept-laptop-screen_53876-13531.avif', 2, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(3, 'Eos sint dolorem.', 'Culpa quibusdam possimus in praesentium sapiente ratione. Magni rerum molestiae cum aut. Ex natus doloremque facere eligendi qui et. Commodi neque qui dolor natus optio architecto.', 12.43, 'intermediate', 'e-learning-technology-concept-online-education-webinar-online-courses-ai-machine-learning-en_1006743-591.avif', 2, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(4, 'Dolorum tenetur ut aspernatur.', 'Aut dolores quo alias possimus. Non ex incidunt aliquam error deserunt dicta dolorum. Consequuntur rerum itaque deleniti alias eos quaerat fuga.', 132.45, 'beginner', 'e-learning-technology-concept-online-education-webinar-online-courses-ai-machine-learning-en_1006743-591.avif', 2, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(5, 'Suscipit quisquam non cum quae.', 'Nihil aut pariatur dolores. Et sint temporibus id sit. Architecto voluptatem quam sapiente aliquid perferendis ut sit alias. Ad et neque eos cupiditate sint quo accusantium totam.', 124.43, 'beginner', 'e-learning-technology-concept-online-education-webinar-online-courses-ai-machine-learning-en_1006743-591.avif', 2, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(6, 'Enim eligendi praesentium.', 'Velit quia voluptates inventore et quia similique. Sit sint eum cumque voluptatem nulla dolore est. Eligendi sunt cumque eius ut eligendi.', 147.14, 'beginner', 'content-concept-laptop-screen_53876-13531.avif', 2, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(7, 'At ad et.', 'Vitae voluptatem aut sit molestiae commodi nemo cumque blanditiis. Earum aliquam et aut fuga adipisci. Dolorem dicta nemo enim nulla molestias veniam voluptas.', 199.54, 'beginner', 'elearning-concept-innovative-online-education-internet-technology-webinars-teaching-online-training-courses-skill-development_27634-1136.avif', 3, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(8, 'Corporis asperiores.', 'Voluptas minima temporibus et. Laboriosam commodi ut vitae qui. Ea odio voluptatem rerum et itaque aspernatur. Possimus voluptatem soluta cum qui sapiente consequatur earum.', 69.38, 'intermediate', 'content-concept-laptop-screen_53876-13531.avif', 3, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(9, 'Et sit culpa neque et.', 'Delectus consequuntur facere soluta et. At repellendus voluptatem sequi consectetur ut in quia voluptas. Corrupti atque quaerat consectetur. Consequatur odit impedit consequatur rerum assumenda ex. Facilis ea voluptate consequuntur.', 103.49, 'beginner', 'e-learning-technology-concept-online-education-webinar-online-courses-ai-machine-learning-en_1006743-591.avif', 3, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(10, 'Vitae eum ut ullam.', 'Atque molestiae nesciunt rerum debitis labore. Impedit eaque id quo officia ullam. Rem dolore ducimus voluptate aut. Omnis similique saepe harum dolorem est sit.', 88.54, 'intermediate', 'elearning-concept-innovative-online-education-internet-technology-webinars-teaching-online-training-courses-skill-development_27634-1136.avif', 3, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(11, 'Animi voluptatem blanditiis ullam.', 'Est dolor molestiae molestiae animi eum enim eum voluptatem. Necessitatibus et nemo fugit vitae mollitia dolorem. Similique in ratione veniam ea quia.', 58.07, 'intermediate', 'elearning-concept-innovative-online-education-internet-technology-webinars-teaching-online-training-courses-skill-development_27634-1136.avif', 3, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(12, 'Vitae labore non.', 'Omnis deleniti voluptas eaque vitae in ea reprehenderit. Quo aut totam eum in debitis consequatur impedit. Unde quod ut iure sint. Inventore dolores voluptas aut non quod quae porro. Repellendus consectetur occaecati aspernatur voluptatem eveniet pariatur.', 46.34, 'advanced', 'content-concept-laptop-screen_53876-13531.avif', 3, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(13, 'Consequatur dolor iste.', 'Saepe itaque et repellendus consectetur voluptates odit a. Sequi asperiores eveniet sit sit.', 18.79, 'advanced', 'elearning-concept-innovative-online-education-internet-technology-webinars-teaching-online-training-courses-skill-development_27634-1136.avif', 6, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(14, 'Incidunt et iusto at.', 'Totam aliquid omnis mollitia tempora odio minus et unde. Minus est eum quam harum rem itaque. Ut incidunt maxime quidem neque non dolores.', 191.89, 'advanced', 'e-learning-concept-woman-learning-online-with-webinar-internet-is-used-modern-education-seminar-meeting-elearning-technology-video-tutorial-online-lessons-digital-training-study-course_708636-1338.avif', 6, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(15, 'Quia quam qui itaque.', 'Repudiandae sit quod rerum commodi quaerat. Omnis maxime sunt quo saepe voluptatum. Velit impedit nam ut dolor illo voluptatem explicabo aut.', 186.39, 'beginner', 'elearning-concept-innovative-online-education-internet-technology-webinars-teaching-online-training-courses-skill-development_27634-1136.avif', 6, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(16, 'Laudantium repellendus aut voluptates.', 'Ea voluptas in quibusdam ratione doloremque. Adipisci qui corporis autem voluptas. Labore inventore nostrum et consequatur minus reiciendis dignissimos qui. Dicta est exercitationem reprehenderit quaerat.', 170.82, 'advanced', 'elearning-concept-innovative-online-education-internet-technology-webinars-teaching-online-training-courses-skill-development_27634-1136.avif', 6, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(17, 'In cumque perspiciatis.', 'Quisquam nihil eos sit repellendus. Ullam placeat molestiae rerum ad dolorum optio. Error itaque sit possimus totam omnis.', 106.50, 'intermediate', 'elearning-concept-innovative-online-education-internet-technology-webinars-teaching-online-training-courses-skill-development_27634-1136.avif', 6, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(18, 'Velit sunt sint.', 'Est sit deserunt enim voluptatem tenetur. Necessitatibus eligendi et neque recusandae animi. Qui voluptatem quis enim. Ipsum atque consectetur non molestias ullam voluptatem at.', 131.19, 'intermediate', 'content-concept-laptop-screen_53876-13531.avif', 6, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(19, 'Praesentium aliquid omnis rerum.', 'Repudiandae aut ad fugit incidunt et. Neque sapiente culpa voluptatem vel. Rerum quaerat aut ut.', 98.70, 'intermediate', 'content-concept-laptop-screen_53876-13531.avif', 7, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(20, 'Voluptates sint ab ipsa.', 'Aspernatur ut ipsa suscipit repellendus qui. Ea suscipit quis sed unde nostrum dicta deserunt ipsum. Sapiente debitis vel sed et.', 109.69, 'advanced', 'media-journalism-global-daily-news-content-concept_53876-123733.avif', 7, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(21, 'Veritatis officiis ut.', 'Nihil iure non quo qui id. Enim eum est rerum ut corrupti est nostrum. Quibusdam aperiam pariatur cumque qui ex rerum fugit.', 150.27, 'beginner', 'media-journalism-global-daily-news-content-concept_53876-123733.avif', 7, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(22, 'Rerum accusamus soluta et.', 'Voluptas odio error labore non sit ipsa quis. Sit dolores officia iusto assumenda cupiditate similique. Maxime rerum vel totam reiciendis.', 27.65, 'beginner', 'e-learning-technology-concept-online-education-webinar-online-courses-ai-machine-learning-en_1006743-591.avif', 7, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(23, 'Dolorem pariatur rem ut.', 'Nostrum ex eaque velit tempore veniam. Repudiandae ducimus sint minima. Quis nihil deserunt aspernatur ut aperiam occaecati quod cupiditate. Laboriosam culpa minus aut.', 185.81, 'intermediate', 'e-learning-concept-woman-learning-online-with-webinar-internet-is-used-modern-education-seminar-meeting-elearning-technology-video-tutorial-online-lessons-digital-training-study-course_708636-1338.avif', 7, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(24, 'Quas incidunt sit.', 'Blanditiis et delectus molestiae eum ut veniam quia sunt. Ut recusandae rem ipsum in rerum inventore. Et qui minus explicabo.', 79.41, 'intermediate', 'media-journalism-global-daily-news-content-concept_53876-123733.avif', 7, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(25, 'Id est non itaque sit.', 'Veniam eaque voluptates autem reiciendis. Sint tempore corporis mollitia et. Minima officia quia nihil corporis maiores voluptates placeat. Odio qui eum sit unde itaque.', 188.39, 'intermediate', 'e-learning-technology-concept-online-education-webinar-online-courses-ai-machine-learning-en_1006743-591.avif', 8, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(26, 'Qui consectetur laudantium.', 'Ipsam facilis minus minus. Et modi sed magni suscipit. A dolores dolor beatae accusamus quibusdam commodi.', 191.06, 'intermediate', 'elearning-concept-innovative-online-education-internet-technology-webinars-teaching-online-training-courses-skill-development_27634-1136.avif', 8, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(27, 'Quasi occaecati velit.', 'Sunt dolorum quidem voluptatem minus. Consequatur iste temporibus ipsum minima veniam sint. Eveniet placeat accusantium esse dolorem ut.', 109.42, 'beginner', 'e-learning-concept-woman-learning-online-with-webinar-internet-is-used-modern-education-seminar-meeting-elearning-technology-video-tutorial-online-lessons-digital-training-study-course_708636-1338.avif', 8, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(28, 'Harum magni quia delectus.', 'Consequuntur debitis repellendus corrupti. Sit optio maiores blanditiis quaerat. Voluptates sed corrupti eius nisi.', 154.44, 'intermediate', 'e-learning-concept-woman-learning-online-with-webinar-internet-is-used-modern-education-seminar-meeting-elearning-technology-video-tutorial-online-lessons-digital-training-study-course_708636-1338.avif', 8, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(29, 'Sunt esse labore nam est.', 'Saepe blanditiis officia velit cupiditate qui quis nemo. Aut fugit velit aliquid occaecati.', 17.32, 'advanced', 'elearning-concept-innovative-online-education-internet-technology-webinars-teaching-online-training-courses-skill-development_27634-1136.avif', 8, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(30, 'Officiis aut voluptatum molestiae.', 'Qui consequatur voluptas ab est. Dolores qui aut voluptatem veritatis ullam.', 57.23, 'advanced', 'content-concept-laptop-screen_53876-13531.avif', 8, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(31, 'New Course API', 'Description here', 1000.00, 'beginner', NULL, 1, '2026-02-07 10:51:26', '2026-02-07 10:51:26');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `user_id` bigint UNSIGNED NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `enrolled_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('active','completed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`user_id`, `course_id`, `enrolled_at`, `status`, `created_at`, `updated_at`) VALUES
(4, 2, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(4, 3, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(4, 4, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(4, 5, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(4, 8, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(4, 13, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(4, 16, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(4, 23, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(4, 26, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(4, 28, '2026-02-07 10:25:11', 'active', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(5, 4, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(5, 8, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(5, 9, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(5, 11, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(5, 19, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(5, 21, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(5, 22, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(5, 23, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(5, 25, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(5, 28, '2026-02-07 10:25:11', 'active', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(9, 2, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(9, 6, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(9, 11, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(9, 12, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(9, 13, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(9, 19, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(9, 22, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(9, 24, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(9, 28, '2026-02-07 10:25:11', 'active', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(9, 29, '2026-02-07 10:25:11', 'active', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(10, 3, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(10, 5, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(10, 6, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(10, 9, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(10, 10, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(10, 11, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(10, 12, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(10, 14, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(10, 17, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(10, 20, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(10, 21, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(10, 22, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(10, 27, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(10, 28, '2026-02-07 10:25:11', 'active', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(10, 29, '2026-02-07 10:25:11', 'active', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(11, 8, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(11, 10, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(11, 17, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(11, 24, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(11, 28, '2026-02-07 10:25:11', 'active', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(11, 30, '2026-02-07 10:25:11', 'active', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(12, 5, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(12, 10, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(12, 14, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(12, 17, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(12, 18, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(12, 30, '2026-02-07 10:25:11', 'active', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(13, 6, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(13, 7, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(13, 13, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(13, 14, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(13, 15, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(13, 18, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(13, 25, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(13, 26, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(14, 2, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(14, 3, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(14, 10, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(14, 19, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(14, 20, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(14, 21, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(14, 23, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(14, 25, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(14, 27, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(14, 30, '2026-02-07 10:25:11', 'active', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(15, 3, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(15, 5, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(15, 6, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(15, 9, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(15, 11, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(15, 16, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(15, 17, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(15, 18, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(15, 24, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(15, 25, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(15, 27, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(15, 30, '2026-02-07 10:25:11', 'active', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(16, 3, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(16, 5, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(16, 7, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(16, 11, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(16, 17, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(16, 18, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(16, 19, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(16, 25, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(16, 27, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(16, 28, '2026-02-07 10:25:11', 'active', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(16, 29, '2026-02-07 10:25:11', 'active', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(16, 30, '2026-02-07 10:25:11', 'active', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(17, 1, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(17, 3, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(17, 9, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(17, 11, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(17, 12, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(17, 13, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(17, 16, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(17, 17, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(17, 18, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(17, 19, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(17, 22, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(17, 25, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(17, 27, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(18, 2, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(18, 4, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(18, 6, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(18, 7, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(18, 13, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(18, 14, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(18, 15, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(18, 23, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(18, 25, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(18, 27, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(18, 30, '2026-02-07 10:25:11', 'active', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(19, 1, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(19, 3, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(19, 4, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(19, 7, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(19, 8, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(19, 10, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(19, 16, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(19, 21, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(19, 25, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(19, 26, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(20, 6, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(20, 10, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(20, 14, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(20, 16, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(20, 21, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(20, 23, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(20, 24, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(20, 25, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(20, 28, '2026-02-07 10:25:11', 'active', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(20, 30, '2026-02-07 10:25:11', 'active', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(21, 4, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(21, 9, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(21, 10, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(21, 14, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(21, 18, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(21, 19, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(21, 21, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(21, 23, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(21, 24, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(21, 25, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(21, 26, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(21, 28, '2026-02-07 10:25:11', 'active', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(21, 30, '2026-02-07 10:25:11', 'active', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(22, 4, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(22, 13, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(22, 15, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(22, 16, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(22, 21, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(22, 23, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(22, 27, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(23, 1, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(23, 3, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(23, 6, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(23, 8, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(23, 10, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(23, 16, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(23, 18, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(23, 20, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(23, 21, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(23, 23, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(23, 24, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(23, 26, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(23, 29, '2026-02-07 10:25:11', 'active', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(24, 4, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(24, 11, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(24, 12, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(24, 13, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(24, 21, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(24, 22, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(24, 26, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(24, 29, '2026-02-07 10:25:11', 'active', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(25, 1, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(25, 2, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(25, 5, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(25, 7, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(25, 8, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(25, 12, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(25, 14, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(25, 18, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(25, 21, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(25, 26, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(25, 27, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(25, 28, '2026-02-07 10:25:11', 'active', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(26, 7, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(26, 9, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(26, 10, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(26, 11, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(26, 15, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(26, 28, '2026-02-07 10:25:11', 'active', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(26, 29, '2026-02-07 10:25:11', 'active', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(27, 1, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(27, 8, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(27, 9, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(27, 10, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(27, 12, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(27, 13, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(27, 16, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(27, 20, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(28, 4, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(28, 11, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(28, 13, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(28, 15, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(28, 16, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(28, 18, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(28, 19, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(28, 26, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(29, 2, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(29, 4, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(29, 5, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(29, 8, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(29, 9, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(29, 16, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(29, 17, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(29, 30, '2026-02-07 10:25:11', 'active', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(30, 4, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(30, 5, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(30, 8, '2026-02-07 10:25:09', 'active', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(30, 12, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(30, 18, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(30, 19, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(30, 20, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(30, 22, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(30, 26, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(30, 27, '2026-02-07 10:25:10', 'active', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(30, 30, '2026-02-07 10:25:11', 'active', '2026-02-07 10:25:11', '2026-02-07 10:25:11');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` bigint UNSIGNED NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `course_id`, `title`, `content`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'Maiores iure nulla reprehenderit ullam.', 'http://corkery.com/magnam-labore-ab-autem-delectus', 1, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(2, 1, 'Enim aliquid necessitatibus earum sunt voluptas.', 'http://www.oberbrunner.org/enim-vel-culpa-quia', 2, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(3, 1, 'Voluptatem voluptatem accusamus et ut.', 'http://vonrueden.com/aperiam-ipsam-quisquam-eum-aut-exercitationem-omnis', 3, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(4, 1, 'Est dolor saepe beatae reprehenderit.', 'http://www.grant.info/', 4, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(5, 1, 'Consequatur magnam est dolores asperiores vel.', 'http://grimes.info/', 5, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(6, 1, 'Qui deserunt in officia aut.', 'http://www.brakus.info/quia-eum-exercitationem-et-sed-hic', 6, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(7, 1, 'Ut ducimus ea.', 'http://stark.com/recusandae-distinctio-in-impedit-dolor', 7, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(8, 1, 'Molestiae provident dolor quae.', 'http://effertz.com/', 8, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(9, 1, 'Qui nihil quia est.', 'http://williamson.com/quibusdam-sit-corrupti-dolorum-repellendus-quos-odio', 9, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(10, 1, 'Enim repellendus quibusdam quibusdam laboriosam.', 'http://www.hayes.com/ipsum-neque-ipsam-est-ea-consequatur', 10, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(11, 1, 'Iste corrupti et.', 'http://larkin.net/incidunt-aut-aspernatur-eos-hic-ea-excepturi-labore-consectetur.html', 11, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(12, 1, 'Quod perspiciatis qui consequatur quia aspernatur.', 'https://www.christiansen.net/iure-quidem-aut-et-quia-nobis-reprehenderit-maiores', 12, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(13, 1, 'Ab quae vero inventore.', 'http://rolfson.biz/qui-similique-sunt-itaque-ex-id.html', 13, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(14, 1, 'Est necessitatibus non repellat enim.', 'https://www.harvey.com/magni-soluta-beatae-dolor-ea-fugiat', 14, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(15, 1, 'Voluptas porro asperiores ipsa ducimus.', 'http://schowalter.info/', 15, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(16, 1, 'Quaerat iste alias voluptatem rem.', 'http://www.wilkinson.com/voluptatem-et-aut-voluptatem-voluptas-sed-mollitia-voluptates.html', 16, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(17, 1, 'Consequatur itaque minima est iure.', 'http://muller.com/sequi-velit-saepe-rem', 17, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(18, 1, 'Et eaque dolorum praesentium ut.', 'http://dietrich.net/in-fugit-deleniti-nam.html', 18, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(19, 1, 'Voluptatibus est qui.', 'http://bashirian.com/quia-et-tenetur-numquam-non-incidunt', 19, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(20, 1, 'Nihil praesentium a sint.', 'http://baumbach.com/', 20, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(21, 2, 'Animi aperiam nobis qui maxime.', 'https://www.stokes.com/quae-error-aut-ducimus-eum-recusandae-adipisci-sit', 1, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(22, 2, 'Modi sed eum exercitationem.', 'http://fahey.com/consequatur-ea-in-eveniet-blanditiis-consequuntur-et-omnis', 2, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(23, 2, 'Magnam occaecati enim.', 'http://www.okon.org/soluta-provident-delectus-quidem-temporibus-quia-facilis', 3, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(24, 2, 'Qui quo dolore veniam deserunt.', 'http://douglas.net/ab-autem-eius-dolorem-autem.html', 4, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(25, 2, 'Sint maiores similique.', 'https://www.hudson.biz/et-eius-necessitatibus-et-id-reiciendis', 5, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(26, 2, 'Dignissimos quae quam et ut sit.', 'http://dach.net/aut-autem-fuga-tempore-dolorum-cum-modi.html', 6, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(27, 2, 'Laboriosam non nihil dolor corporis.', 'https://www.kirlin.com/vel-molestiae-beatae-odit-ad-ratione-ullam-sed', 7, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(28, 2, 'Odit et quia qui.', 'http://oconnell.com/laboriosam-alias-omnis-vitae-ut-fuga-iste.html', 8, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(29, 2, 'Et nulla eos saepe modi.', 'http://www.paucek.org/velit-quibusdam-eos-totam-enim-dicta', 9, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(30, 2, 'Distinctio pariatur culpa aut eos error.', 'http://www.heller.com/occaecati-aut-consectetur-nisi-voluptatem-eligendi-eaque', 10, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(31, 2, 'Consectetur dolor voluptatem autem architecto.', 'https://schiller.info/amet-facilis-molestiae-debitis-aut-est.html', 11, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(32, 2, 'Esse error enim in voluptatum.', 'http://koss.net/', 12, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(33, 2, 'Explicabo harum temporibus et.', 'https://muller.info/veritatis-excepturi-rerum-ut-a-consequatur.html', 13, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(34, 2, 'Deserunt fugit laudantium et.', 'http://www.rath.com/sed-necessitatibus-et-qui-labore-cum-voluptate.html', 14, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(35, 2, 'Deserunt eum praesentium facilis.', 'https://walker.com/reiciendis-nemo-eius-qui-molestiae.html', 15, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(36, 2, 'Maiores aperiam est rem ea.', 'http://www.jacobson.org/et-et-aspernatur-minus-aspernatur-veritatis.html', 16, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(37, 2, 'Et reiciendis similique necessitatibus consequatur id.', 'http://www.cassin.com/rem-libero-delectus-odio-optio-error', 17, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(38, 2, 'Minus magnam fugit minima laudantium in.', 'http://ratke.biz/ut-at-ullam-asperiores-ut', 18, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(39, 2, 'Mollitia et officiis laboriosam.', 'http://schuppe.net/vel-quo-explicabo-quo-at.html', 19, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(40, 2, 'Necessitatibus maiores commodi iusto doloremque.', 'http://heidenreich.net/', 20, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(41, 3, 'Enim totam eaque.', 'http://www.roob.info/quibusdam-nihil-consectetur-accusantium-eaque', 1, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(42, 3, 'Facere voluptas enim modi consequatur.', 'http://kassulke.net/quia-quam-enim-et-modi-dolores-deserunt-et-sunt.html', 2, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(43, 3, 'Aut mollitia illum tempora.', 'https://www.lehner.biz/maiores-perspiciatis-voluptas-et-illo-aut', 3, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(44, 3, 'Delectus nihil consequatur voluptas.', 'http://deckow.com/quia-similique-rerum-nobis-ut-assumenda-eum', 4, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(45, 3, 'Similique est amet minima ipsum.', 'http://www.littel.com/soluta-iste-eligendi-dolor-eaque-voluptatum', 5, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(46, 3, 'Ea fuga sit ratione.', 'http://www.roberts.com/sint-iusto-quasi-maxime-voluptatum', 6, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(47, 3, 'Itaque expedita eum et dolores.', 'http://www.cartwright.com/laudantium-quia-placeat-et-praesentium.html', 7, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(48, 3, 'Velit tempora rerum ut ut qui.', 'http://www.turner.com/provident-ipsa-animi-dolore', 8, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(49, 3, 'Fugiat consequuntur laudantium aut qui.', 'https://nolan.com/voluptatem-aperiam-aut-libero-ut-sequi-assumenda-ea-similique.html', 9, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(50, 3, 'A nam et non.', 'https://www.wolff.com/sit-eum-omnis-ducimus-rem-et-adipisci', 10, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(51, 3, 'Id pariatur deleniti est.', 'http://king.net/ut-et-magni-et', 11, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(52, 3, 'Et consequuntur veniam dolor fugit dolores.', 'https://www.kohler.com/id-quae-nemo-corrupti', 12, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(53, 3, 'Alias voluptas sit commodi.', 'http://quitzon.com/sunt-rem-veniam-aut-eveniet', 13, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(54, 3, 'Provident labore nulla.', 'https://grimes.biz/minima-ad-voluptatibus-deserunt.html', 14, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(55, 3, 'Omnis nesciunt ratione impedit id.', 'http://www.hand.com/', 15, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(56, 3, 'Libero nihil voluptate.', 'http://larson.com/autem-sed-dolores-est-tenetur-voluptas-consequatur', 16, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(57, 3, 'Minus aperiam sed.', 'http://hills.com/suscipit-velit-consequatur-rem-quaerat-architecto-omnis.html', 17, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(58, 3, 'Et id maiores officia voluptas quasi.', 'http://schmeler.org/quia-voluptas-quia-aliquid-repellat-tempora', 18, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(59, 3, 'Expedita magni architecto voluptatem odit.', 'http://leuschke.org/eligendi-quia-qui-nostrum-aut-in-eos-ullam', 19, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(60, 3, 'Ut odio laborum sed culpa.', 'https://walker.biz/qui-eveniet-magnam-voluptatem-molestiae.html', 20, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(61, 4, 'Nobis inventore eligendi autem omnis.', 'https://www.bogisich.info/minus-qui-quasi-maiores-numquam', 1, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(62, 4, 'Adipisci nihil in dignissimos.', 'https://strosin.com/delectus-voluptate-totam-est-blanditiis-explicabo-unde-omnis.html', 2, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(63, 4, 'Rem minus voluptatem.', 'https://www.ondricka.net/amet-at-et-recusandae-doloribus', 3, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(64, 4, 'Doloremque et rem qui cum aut.', 'http://fritsch.biz/dignissimos-quaerat-sint-rerum-debitis.html', 4, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(65, 4, 'Sunt corrupti maiores ipsum optio.', 'http://www.christiansen.info/deleniti-similique-assumenda-qui-id', 5, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(66, 4, 'Assumenda laboriosam ullam aliquid temporibus.', 'https://www.williamson.biz/ea-quo-accusamus-quae-laboriosam-quod-cumque', 6, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(67, 4, 'Sed pariatur rerum consectetur repudiandae.', 'http://www.willms.com/', 7, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(68, 4, 'Soluta tempore illo.', 'http://hodkiewicz.info/', 8, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(69, 4, 'Debitis quia necessitatibus vitae.', 'http://www.emmerich.biz/', 9, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(70, 4, 'Sit quia adipisci.', 'https://buckridge.com/sed-architecto-dolore-quo-ut-expedita-ratione-sapiente-explicabo.html', 10, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(71, 4, 'Amet voluptas laudantium vel dolor quia.', 'http://www.robel.com/nobis-alias-amet-aut-possimus', 11, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(72, 4, 'Ipsa earum ut voluptate velit temporibus.', 'http://maggio.com/', 12, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(73, 4, 'Possimus corporis rerum debitis.', 'http://www.russel.biz/itaque-mollitia-porro-sint-optio', 13, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(74, 4, 'Non sed aliquid nihil qui.', 'http://www.kris.info/', 14, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(75, 4, 'Voluptatem qui labore maxime dolorem.', 'http://waelchi.biz/', 15, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(76, 4, 'Ut omnis non.', 'http://mckenzie.com/aut-molestias-numquam-perferendis-ea', 16, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(77, 4, 'Et qui est molestiae.', 'https://www.rolfson.com/eum-et-et-atque-autem-perspiciatis-accusantium-eum-est', 17, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(78, 4, 'Eius rem ipsa pariatur dolore.', 'http://www.cummerata.com/eos-libero-quia-beatae-quis-dolore', 18, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(79, 4, 'Animi non aperiam.', 'http://www.willms.net/', 19, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(80, 4, 'Deserunt sed eveniet velit.', 'http://swift.com/enim-atque-sed-exercitationem-est-amet', 20, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(81, 5, 'Aliquam voluptate sed enim asperiores.', 'http://www.lesch.com/', 1, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(82, 5, 'Assumenda omnis sint rerum inventore beatae.', 'http://www.huel.org/blanditiis-in-ad-veniam-odio-voluptatem.html', 2, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(83, 5, 'Quidem ducimus suscipit dicta dolor.', 'http://www.morissette.com/porro-voluptatibus-pariatur-modi-eius-laborum', 3, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(84, 5, 'Voluptas quisquam ut est doloribus.', 'http://www.wiegand.com/aspernatur-beatae-repellat-explicabo-molestias-totam-numquam.html', 4, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(85, 5, 'Tempore nobis occaecati minus id.', 'http://www.carter.com/est-doloribus-qui-culpa-modi-mollitia-repellendus-qui', 5, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(86, 5, 'Et aut sapiente quisquam eos.', 'http://nitzsche.com/inventore-asperiores-quaerat-velit-esse.html', 6, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(87, 5, 'Similique non consequuntur.', 'https://www.douglas.org/saepe-ut-vel-suscipit-iste-ea-quod-ut', 7, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(88, 5, 'Quia numquam voluptatem et.', 'http://www.blanda.com/incidunt-nesciunt-vel-qui-itaque.html', 8, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(89, 5, 'Quo earum accusantium quia mollitia exercitationem.', 'http://www.cummings.com/et-est-nobis-cupiditate-doloribus-quis-qui', 9, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(90, 5, 'Quae autem sit voluptatem id recusandae.', 'http://sipes.com/sed-possimus-nemo-neque-reprehenderit-nemo-dignissimos-ut.html', 10, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(91, 5, 'Dolores rerum harum ducimus nisi.', 'http://www.simonis.com/aut-pariatur-tempore-omnis-voluptate-et-et-sit.html', 11, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(92, 5, 'Quia officia neque.', 'http://www.jenkins.com/aut-voluptas-aspernatur-at.html', 12, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(93, 5, 'At molestiae ut.', 'http://www.hartmann.net/eius-vel-hic-nostrum-ipsum-sunt-corrupti-ut', 13, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(94, 5, 'Quis ducimus ea.', 'http://collins.info/', 14, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(95, 5, 'Sit voluptatum iste tempore similique.', 'http://www.roob.org/', 15, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(96, 5, 'Ut iusto animi consectetur.', 'http://www.quitzon.net/', 16, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(97, 5, 'Ipsam sequi consequatur voluptas aut ducimus.', 'http://fritsch.org/', 17, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(98, 5, 'Labore beatae et.', 'http://lehner.com/', 18, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(99, 5, 'Eos labore qui.', 'http://www.olson.net/aliquid-consequatur-modi-harum-reprehenderit', 19, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(100, 5, 'Iure quo excepturi.', 'http://goldner.biz/', 20, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(101, 6, 'Dolorem dicta at consequatur explicabo.', 'http://wehner.com/dolor-quos-adipisci-quisquam-sit-est', 1, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(102, 6, 'Animi ipsum voluptas tempore provident omnis.', 'https://www.orn.com/ut-perferendis-nihil-accusantium', 2, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(103, 6, 'Sit saepe nulla vitae asperiores.', 'https://grant.com/libero-eum-molestias-dolore-deserunt-consequatur-quas.html', 3, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(104, 6, 'Nostrum itaque maxime rem.', 'https://www.denesik.com/molestiae-autem-magni-illum-ut-dolorum-dolor-eius', 4, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(105, 6, 'Rerum quaerat et.', 'http://www.hand.org/voluptatem-tempore-provident-natus-neque-explicabo-accusantium.html', 5, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(106, 6, 'Doloribus totam molestiae blanditiis.', 'http://www.waters.com/enim-rerum-modi-qui-adipisci-repudiandae-omnis-ex.html', 6, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(107, 6, 'Ab repellat iste illo magnam.', 'https://www.beahan.biz/minus-cumque-voluptates-doloribus-quidem-in-sint-est', 7, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(108, 6, 'Provident harum velit ex id.', 'http://www.kerluke.net/', 8, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(109, 6, 'Rerum atque eveniet esse.', 'http://www.rice.com/', 9, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(110, 6, 'Repellat qui numquam possimus error occaecati.', 'http://glover.info/voluptatem-eligendi-voluptates-voluptatem-eum.html', 10, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(111, 6, 'Quas esse et sit necessitatibus.', 'http://www.gutkowski.info/aut-dolores-et-sit-quia-ut', 11, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(112, 6, 'Harum magnam accusamus non.', 'http://okeefe.com/consequuntur-tempore-esse-atque-est.html', 12, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(113, 6, 'Consequatur laboriosam nostrum sunt facilis nemo.', 'http://www.schmeler.net/sapiente-molestias-hic-et-neque-architecto-molestias', 13, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(114, 6, 'Similique quaerat sit quia minima.', 'http://schmitt.org/dignissimos-cupiditate-itaque-voluptas', 14, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(115, 6, 'Accusamus reiciendis nulla porro.', 'http://www.dubuque.biz/', 15, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(116, 6, 'Quas qui id.', 'http://rowe.com/eos-doloremque-fugiat-aliquid', 16, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(117, 6, 'Aliquam sapiente aut suscipit necessitatibus.', 'http://www.rutherford.info/dolor-eos-minima-est.html', 17, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(118, 6, 'Quam eligendi similique ipsum alias.', 'http://dickinson.com/dolorum-porro-dolorem-aut-provident-dolores-laudantium', 18, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(119, 6, 'Sunt voluptas dolore harum tempore.', 'https://ohara.com/quibusdam-dolores-beatae-eos-ad-sequi-nostrum-voluptas.html', 19, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(120, 6, 'Animi tempora magnam velit quis.', 'http://www.ritchie.com/et-veritatis-et-est-ut', 20, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(121, 7, 'Vitae tenetur sit omnis repellendus neque.', 'http://hartmann.biz/voluptatem-non-molestiae-rerum-atque-ea', 1, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(122, 7, 'Possimus voluptatem dolores vero illum voluptatem.', 'http://www.frami.net/', 2, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(123, 7, 'Beatae sed ducimus dolorum dolore voluptates.', 'http://www.hill.info/repudiandae-est-facilis-sapiente-quisquam-aliquam-perferendis-amet', 3, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(124, 7, 'Tempore consectetur commodi.', 'https://corwin.com/natus-veniam-delectus-in-hic-consequatur-est.html', 4, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(125, 7, 'Beatae quibusdam qui deserunt.', 'http://ryan.com/', 5, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(126, 7, 'Ullam cumque velit autem.', 'https://goyette.com/est-optio-omnis-in-repudiandae.html', 6, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(127, 7, 'At ab pariatur.', 'http://ward.org/unde-quia-perspiciatis-voluptates-nesciunt-reprehenderit-nihil-expedita', 7, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(128, 7, 'Earum voluptatem aut earum et.', 'http://harber.com/', 8, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(129, 7, 'Eveniet unde consequatur iste magni.', 'http://www.walker.org/incidunt-laudantium-perspiciatis-ipsum-nihil', 9, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(130, 7, 'Totam consequatur qui veritatis laudantium tempora.', 'http://www.mayert.com/a-porro-temporibus-aut-reiciendis-tenetur-voluptatem-voluptatem.html', 10, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(131, 7, 'Et cumque sapiente ullam nihil.', 'http://www.aufderhar.com/sunt-reiciendis-ea-rerum-asperiores-officiis', 11, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(132, 7, 'Id nam rerum nesciunt.', 'https://blick.com/omnis-dolores-fugiat-repellat-praesentium-aspernatur.html', 12, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(133, 7, 'Commodi optio vel soluta est.', 'http://www.harris.info/occaecati-commodi-illo-error-temporibus-perferendis', 13, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(134, 7, 'Facilis nemo architecto repellendus velit.', 'http://marvin.com/facere-at-esse-ab-culpa-dolores-repellendus', 14, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(135, 7, 'Amet molestiae cumque dolorum tempore vitae.', 'http://www.feeney.info/', 15, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(136, 7, 'Pariatur praesentium repudiandae.', 'http://dietrich.biz/esse-et-cumque-dolor-ipsum', 16, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(137, 7, 'Dignissimos voluptatem voluptates minus est.', 'http://wisozk.com/', 17, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(138, 7, 'Ea vel praesentium sint.', 'https://www.hudson.com/incidunt-eveniet-eos-enim-facere-nesciunt', 18, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(139, 7, 'Consequuntur quis aut ab.', 'http://quitzon.org/rem-dolorem-nulla-iste-dolores-deleniti-autem-voluptates.html', 19, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(140, 7, 'Rerum rerum non est.', 'http://quitzon.com/ullam-hic-quo-dolores-quas-sunt-aut', 20, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(141, 8, 'Est harum illum.', 'http://pfannerstill.com/', 1, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(142, 8, 'Iure tempore dolor nulla dolores.', 'http://www.king.info/', 2, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(143, 8, 'Magnam praesentium non ut.', 'http://pouros.com/ut-corporis-omnis-in-dolorum', 3, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(144, 8, 'Autem et itaque exercitationem.', 'https://www.schinner.org/doloremque-impedit-quo-porro-tenetur-nisi-commodi-sapiente-aut', 4, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(145, 8, 'Corporis veniam aliquam fugit consectetur.', 'http://torp.com/a-accusantium-quo-suscipit-fugit-qui', 5, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(146, 8, 'Rerum quis recusandae aut et pariatur.', 'http://parker.biz/', 6, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(147, 8, 'Quis nisi et eius quos.', 'http://lindgren.com/', 7, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(148, 8, 'Sit sunt aut.', 'http://hermiston.com/voluptatem-qui-dolores-atque-omnis-quae-eveniet-qui.html', 8, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(149, 8, 'Eligendi nostrum aut voluptas voluptatem rem.', 'http://www.bogan.com/quas-nihil-facere-sunt-occaecati-quisquam', 9, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(150, 8, 'Soluta neque labore ut et voluptatem.', 'http://www.mann.org/', 10, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(151, 8, 'Molestiae quis esse.', 'http://powlowski.biz/eligendi-aliquid-odit-perspiciatis-et-suscipit', 11, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(152, 8, 'Et explicabo et est illo.', 'https://www.flatley.net/eius-natus-provident-eligendi-tenetur-quis', 12, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(153, 8, 'Veritatis voluptatem ea nisi.', 'http://romaguera.info/magni-quidem-hic-porro-rerum-officia-est-corporis.html', 13, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(154, 8, 'Numquam sunt pariatur molestias.', 'http://wyman.com/est-alias-aspernatur-iste-ad-qui', 14, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(155, 8, 'Et veniam est optio inventore.', 'http://bosco.info/tenetur-iste-eos-architecto-error', 15, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(156, 8, 'Quod asperiores et nihil consequatur.', 'http://reynolds.com/voluptas-itaque-sed-consectetur-quis-recusandae-voluptatem', 16, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(157, 8, 'Consequatur optio tempora quas molestias.', 'http://www.mills.biz/maxime-consequatur-perspiciatis-accusamus-hic-velit-atque', 17, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(158, 8, 'Suscipit ad amet.', 'http://veum.biz/sunt-est-sed-saepe-velit-et-facere', 18, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(159, 8, 'Fuga consequatur aut cumque optio.', 'http://kilback.com/odit-minima-veniam-ab-ut-dolorem.html', 19, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(160, 8, 'Ut quo molestiae.', 'http://grant.com/non-quidem-id-dicta-dolores-eligendi.html', 20, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(161, 9, 'Soluta sit quia.', 'http://www.deckow.com/ut-quod-sed-perspiciatis', 1, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(162, 9, 'Iusto et autem voluptas aspernatur in.', 'http://strosin.com/odit-nobis-necessitatibus-assumenda-dolorem-perspiciatis-totam-repellendus-minima.html', 2, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(163, 9, 'Dolorem ad dolor molestiae repellat laborum.', 'http://www.hirthe.com/commodi-amet-ea-labore-velit-ducimus-amet-repellat-iste', 3, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(164, 9, 'Quo qui error.', 'http://effertz.com/dolores-vel-dignissimos-autem-ea-corrupti-est-placeat', 4, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(165, 9, 'Esse possimus reprehenderit accusamus qui odio.', 'https://www.zulauf.com/rerum-et-repudiandae-asperiores-enim', 5, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(166, 9, 'Unde quasi sint aut aut.', 'http://emmerich.com/', 6, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(167, 9, 'Doloribus soluta distinctio sit.', 'http://paucek.com/recusandae-cumque-repellat-perferendis', 7, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(168, 9, 'Autem qui ipsa minima veritatis.', 'http://www.brakus.com/', 8, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(169, 9, 'Mollitia officiis quis facere eum qui.', 'http://kiehn.com/', 9, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(170, 9, 'Itaque et consectetur consequatur.', 'http://www.connelly.net/molestiae-omnis-praesentium-voluptatibus-aut-debitis-inventore-perferendis', 10, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(171, 9, 'Error et est dignissimos praesentium iure.', 'http://stiedemann.com/aut-atque-vero-odit-exercitationem', 11, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(172, 9, 'Aut facere velit.', 'http://www.hoppe.com/porro-qui-odio-commodi-illum-minus-dolore-cupiditate.html', 12, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(173, 9, 'Quia modi velit rerum quam reprehenderit.', 'http://www.hudson.com/qui-ut-corrupti-excepturi', 13, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(174, 9, 'Et aut accusantium amet accusamus deserunt.', 'http://schuster.org/repellendus-nemo-deserunt-earum-tempora-rem-aut', 14, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(175, 9, 'Placeat cum cum tempora.', 'http://steuber.com/quis-dignissimos-voluptates-quas-repellat-minima', 15, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(176, 9, 'Maxime voluptatibus ratione hic dolores qui.', 'http://feeney.com/corporis-voluptas-deleniti-eos-dolores-consectetur-rerum.html', 16, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(177, 9, 'Qui doloremque at natus sapiente.', 'http://cruickshank.com/et-laborum-culpa-natus-eos.html', 17, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(178, 9, 'Esse nihil omnis voluptate ad.', 'http://mann.biz/eum-aut-quasi-ut-natus.html', 18, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(179, 9, 'Asperiores ratione qui ex.', 'http://www.thompson.com/voluptatibus-labore-est-delectus-voluptas-consectetur-sint', 19, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(180, 9, 'Laborum repellat explicabo et.', 'https://hoeger.com/voluptatem-animi-laboriosam-deserunt-atque-ut-impedit-architecto.html', 20, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(181, 10, 'Voluptas qui sit voluptates.', 'http://www.dare.org/tempora-enim-voluptas-eius-cupiditate-esse.html', 1, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(182, 10, 'Labore qui quaerat quia.', 'http://www.dickinson.com/ut-voluptas-hic-aut-libero-illum-eos', 2, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(183, 10, 'Voluptatum asperiores aut molestias eligendi praesentium.', 'http://ondricka.com/numquam-id-facere-necessitatibus-aut-nobis-modi', 3, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(184, 10, 'Aliquam qui facere quas vel.', 'http://vandervort.com/porro-non-quod-voluptatem-velit-eos-doloremque-eius-est.html', 4, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(185, 10, 'Omnis ut officia et temporibus.', 'https://www.mcglynn.net/totam-quidem-nisi-fugit-quos-itaque', 5, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(186, 10, 'Vero veniam voluptas id aut qui.', 'http://www.kub.org/eius-commodi-et-id-et-vel-culpa-cumque', 6, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(187, 10, 'Inventore consequatur eaque possimus eum nihil.', 'http://www.heathcote.com/', 7, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(188, 10, 'Rerum quasi ut tempore.', 'https://wiza.com/quos-assumenda-quibusdam-est-fuga-temporibus-unde.html', 8, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(189, 10, 'Animi magnam impedit quis.', 'http://www.blanda.com/voluptatibus-architecto-corporis-qui-sunt-harum.html', 9, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(190, 10, 'Non voluptatem quia est vero occaecati.', 'http://bartoletti.info/at-tenetur-doloremque-dolores-aut.html', 10, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(191, 10, 'Quis quasi sint.', 'https://schiller.biz/architecto-maiores-sed-corrupti-ipsum-at.html', 11, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(192, 10, 'Excepturi qui sed placeat.', 'http://roob.com/nemo-voluptatum-aut-praesentium-magnam', 12, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(193, 10, 'Aut laborum dolore dolore.', 'http://www.batz.net/ex-consequatur-maiores-et-aut-aut-repellendus-ea', 13, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(194, 10, 'Nisi tempore sit et quam aspernatur.', 'http://schuster.com/recusandae-magnam-quis-harum-non-est-quis-veniam', 14, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(195, 10, 'Tempore iusto error fugit.', 'http://stokes.net/sed-occaecati-qui-et', 15, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(196, 10, 'Rerum officiis voluptatem velit.', 'http://www.senger.com/placeat-beatae-nihil-nostrum-ut-aut-vitae-est.html', 16, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(197, 10, 'Incidunt quia quaerat.', 'http://www.mann.com/ab-voluptas-ad-excepturi', 17, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(198, 10, 'Occaecati et enim occaecati.', 'http://kuhlman.com/consequatur-dolore-velit-id-nam-sit-voluptatibus', 18, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(199, 10, 'Quam pariatur est esse dolor et.', 'http://wyman.info/dignissimos-saepe-voluptatem-architecto-ipsum-enim', 19, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(200, 10, 'Ullam rerum aut.', 'http://www.oconnell.info/quasi-fugit-numquam-qui-praesentium-non-facere-ipsam', 20, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(201, 11, 'Nisi aut accusamus quo.', 'http://www.brown.com/', 1, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(202, 11, 'Sit tempora ut aspernatur delectus.', 'http://www.schoen.com/minima-ipsum-ut-deserunt-cupiditate-dolorum', 2, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(203, 11, 'Est quaerat optio incidunt ratione.', 'http://www.altenwerth.com/', 3, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(204, 11, 'Consequatur autem reprehenderit perferendis.', 'http://www.muller.org/esse-in-id-autem.html', 4, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(205, 11, 'Cupiditate assumenda dolorem eveniet.', 'http://feeney.info/aut-nam-molestiae-rerum-ipsam-provident', 5, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(206, 11, 'Quisquam ut excepturi qui mollitia.', 'https://www.reichel.biz/sit-ipsum-esse-eos-voluptatibus-maxime-at-ut', 6, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(207, 11, 'Sed totam voluptatibus odio repudiandae.', 'http://hartmann.com/quasi-fugiat-voluptatem-quam', 7, '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(208, 11, 'Aut ex eum est.', 'http://bayer.com/voluptatem-nam-non-tenetur-error-consequuntur', 8, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(209, 11, 'Sit praesentium vero quis.', 'http://langworth.com/nam-qui-quasi-quia-cumque-placeat', 9, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(210, 11, 'Sed consectetur assumenda voluptatibus.', 'http://www.damore.net/', 10, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(211, 11, 'Dolore et ut natus temporibus.', 'http://www.hansen.net/eum-non-aut-dolor-libero', 11, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(212, 11, 'Hic eius commodi magnam.', 'http://www.casper.org/ut-illo-tempora-sequi-fugit', 12, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(213, 11, 'Adipisci laudantium quia voluptatum.', 'http://www.leffler.biz/eligendi-rerum-atque-voluptatibus-quod-aut-nam', 13, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(214, 11, 'Beatae aut laboriosam suscipit iure voluptatem.', 'http://www.mills.com/', 14, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(215, 11, 'Sint eligendi omnis voluptate.', 'http://king.com/veritatis-assumenda-numquam-error-alias-velit-in-perferendis', 15, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(216, 11, 'Eos porro et.', 'http://www.goyette.org/', 16, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(217, 11, 'Voluptate quo qui.', 'http://www.koepp.com/et-ab-dolores-debitis-et', 17, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(218, 11, 'At similique quam velit.', 'http://www.monahan.com/et-dignissimos-omnis-ut-aspernatur-officiis-aut', 18, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(219, 11, 'Dolorem atque assumenda.', 'http://hammes.com/', 19, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(220, 11, 'Dolore explicabo consectetur.', 'http://www.haag.com/maxime-autem-vel-ab-alias-saepe.html', 20, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(221, 12, 'Similique reprehenderit saepe pariatur.', 'http://kris.org/architecto-numquam-doloremque-sed-quaerat-nihil-ab-optio-vero', 1, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(222, 12, 'Est placeat dolorem omnis.', 'https://www.volkman.org/libero-voluptatibus-est-ducimus', 2, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(223, 12, 'Est odit ducimus consequatur.', 'http://www.lemke.com/eum-ut-nihil-enim-saepe-quia-iste.html', 3, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(224, 12, 'Placeat rerum ut libero quis.', 'http://johnson.com/omnis-officia-veniam-dolore-consequatur.html', 4, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(225, 12, 'Asperiores deleniti ut porro quia sint.', 'http://kiehn.com/', 5, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(226, 12, 'Voluptatem qui cupiditate voluptatem tempore et.', 'http://leuschke.com/numquam-dolorem-quae-voluptatum-mollitia-laboriosam-provident-ea', 6, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(227, 12, 'Rerum nihil excepturi vel.', 'http://www.goyette.net/dolores-non-beatae-dicta-exercitationem-reprehenderit-quis.html', 7, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(228, 12, 'Unde sapiente rem a possimus consectetur.', 'http://www.nader.com/sint-quod-et-ducimus-harum-dolorum-fugiat-doloribus-et', 8, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(229, 12, 'Et molestiae sit et.', 'http://hahn.info/quibusdam-et-laborum-ut', 9, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(230, 12, 'Perspiciatis ea nam aut.', 'http://www.runolfsson.com/expedita-dolores-omnis-adipisci-quaerat', 10, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(231, 12, 'Ut est similique.', 'https://www.sporer.com/ipsa-hic-repellendus-tempore-soluta-a-totam', 11, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(232, 12, 'Saepe ut expedita quia nobis eveniet.', 'http://kuvalis.net/natus-alias-ipsum-blanditiis-molestiae-et', 12, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(233, 12, 'Ipsum omnis dolorem eum occaecati beatae.', 'http://torphy.com/', 13, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(234, 12, 'Minima quisquam omnis beatae.', 'http://witting.com/ut-vel-reprehenderit-impedit.html', 14, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(235, 12, 'Consequatur cupiditate nulla laboriosam.', 'http://hilpert.com/ullam-ipsa-quam-harum-nulla', 15, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(236, 12, 'Sit enim atque velit omnis.', 'http://www.schimmel.com/earum-blanditiis-aut-laudantium-ratione-mollitia-optio-voluptatem', 16, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(237, 12, 'Et voluptatem cupiditate non.', 'http://www.shanahan.com/', 17, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(238, 12, 'Id ducimus quaerat.', 'http://www.hilpert.com/labore-sit-vitae-earum-maxime-libero-culpa', 18, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(239, 12, 'Sunt nulla natus sunt.', 'http://www.frami.com/est-suscipit-consequuntur-et-optio-necessitatibus', 19, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(240, 12, 'Eos quam ea non ullam adipisci.', 'http://blanda.com/dolore-omnis-temporibus-aut', 20, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(241, 13, 'Omnis dolorum corrupti voluptatum aut iure.', 'http://www.torphy.com/', 1, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(242, 13, 'Et et officia cupiditate voluptatem.', 'http://www.okon.com/laboriosam-ab-nihil-ad-cupiditate-vel.html', 2, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(243, 13, 'Aut dolores quas.', 'http://morar.biz/', 3, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(244, 13, 'Animi sed sint.', 'http://www.swift.com/quaerat-enim-est-ducimus-corporis-quam-et-molestias-corrupti', 4, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(245, 13, 'Nesciunt magnam quam commodi.', 'http://www.howell.com/aspernatur-odit-ea-quis-doloribus-aut-quibusdam.html', 5, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(246, 13, 'Quam eos rerum maiores.', 'http://goyette.net/enim-sint-sit-laboriosam.html', 6, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(247, 13, 'Quae harum sunt delectus.', 'http://www.monahan.net/ipsa-quidem-est-voluptate-est.html', 7, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(248, 13, 'Nemo qui corrupti adipisci.', 'http://borer.com/quos-adipisci-et-suscipit-et', 8, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(249, 13, 'Ex voluptatem enim id unde.', 'http://www.sawayn.com/nihil-sint-magnam-necessitatibus-doloribus-consectetur.html', 9, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(250, 13, 'Non dolores commodi at.', 'http://schimmel.org/non-accusantium-ut-vel-reprehenderit', 10, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(251, 13, 'Fugit veritatis aut sequi.', 'https://www.weimann.com/fugit-vero-saepe-et-omnis-et-exercitationem', 11, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(252, 13, 'Architecto ut quos est.', 'https://lakin.com/suscipit-quis-voluptatum-nostrum-qui-quasi-autem-quas-consequatur.html', 12, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(253, 13, 'Voluptatum ut dolorum autem.', 'https://trantow.biz/cupiditate-numquam-voluptatum-quidem-qui-nobis-recusandae-sunt-alias.html', 13, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(254, 13, 'Voluptatum ratione et expedita.', 'http://crooks.biz/expedita-et-distinctio-voluptatibus-excepturi-eos.html', 14, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(255, 13, 'Quaerat et quas sequi dolor.', 'https://www.johnson.com/enim-et-non-explicabo-repellat-hic-architecto-aspernatur', 15, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(256, 13, 'Esse quasi quam.', 'http://halvorson.com/ex-a-beatae-qui-et', 16, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(257, 13, 'Vel tenetur tempora eos non.', 'http://www.tillman.info/soluta-et-porro-unde-blanditiis-incidunt', 17, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(258, 13, 'Hic recusandae repudiandae et reiciendis.', 'http://www.kertzmann.net/voluptatem-omnis-et-ut-dicta', 18, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(259, 13, 'Ut qui possimus ea blanditiis.', 'http://sporer.com/ut-architecto-ratione-mollitia-beatae-molestiae-reiciendis', 19, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(260, 13, 'Qui dicta hic quia minima.', 'https://heathcote.biz/aut-quo-sint-aliquid-placeat-et-qui-aut.html', 20, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(261, 14, 'Harum voluptas est facilis.', 'http://www.johns.com/', 1, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(262, 14, 'Quisquam ipsum error beatae repellat velit.', 'http://www.witting.com/sunt-nulla-sunt-officia-molestiae-ut-repellat.html', 2, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(263, 14, 'Aut ipsa quia vel.', 'http://mertz.org/blanditiis-autem-voluptatem-id-distinctio-consectetur-in-ducimus', 3, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(264, 14, 'Vel mollitia minima nihil non.', 'http://www.schultz.net/', 4, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(265, 14, 'Dignissimos facere eos corrupti veniam.', 'http://quigley.net/quae-culpa-consequatur-quasi-eaque.html', 5, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(266, 14, 'Fugit ea molestias.', 'http://crooks.com/voluptatem-vero-voluptas-est-velit', 6, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(267, 14, 'Eligendi dolorem corrupti eos.', 'http://quitzon.biz/', 7, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(268, 14, 'Modi id qui.', 'http://www.ankunding.com/laboriosam-magni-sit-id', 8, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(269, 14, 'Debitis sed perferendis.', 'https://roberts.com/qui-quasi-commodi-voluptatibus-ea-cum-dolorum-magnam.html', 9, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(270, 14, 'Praesentium explicabo tempora.', 'https://www.schinner.com/sunt-aut-eaque-sint-dolor-dicta-alias', 10, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(271, 14, 'Animi commodi natus occaecati excepturi.', 'http://dach.com/temporibus-quae-quia-quo-assumenda-id', 11, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(272, 14, 'Voluptatem vel et debitis nobis.', 'http://swaniawski.org/', 12, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(273, 14, 'Non aut molestias sed et.', 'https://www.klocko.info/sint-aperiam-nisi-dolor', 13, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(274, 14, 'Dicta possimus quia dignissimos optio inventore.', 'http://www.lang.com/labore-expedita-odit-libero-excepturi-tenetur', 14, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(275, 14, 'Debitis et perspiciatis et sit.', 'http://schaden.biz/', 15, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(276, 14, 'Incidunt esse ut error.', 'http://www.bosco.com/illo-neque-autem-ut-et-blanditiis', 16, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(277, 14, 'Eveniet similique eaque corrupti non.', 'http://www.schamberger.info/consequuntur-magni-officia-est-quas-non-enim', 17, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(278, 14, 'In rem reiciendis dolore explicabo.', 'http://www.hand.com/suscipit-et-consequatur-voluptatem-exercitationem-iure-a-et', 18, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(279, 14, 'Sint omnis minus rerum.', 'http://www.hills.biz/libero-quia-libero-repellat-dolores-molestias-incidunt-qui', 19, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(280, 14, 'Adipisci fugit quis repellendus cum.', 'https://www.koelpin.com/architecto-est-et-in-modi-mollitia', 20, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(281, 15, 'Aspernatur occaecati provident dolores nostrum.', 'http://marks.net/', 1, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(282, 15, 'Dicta autem eos.', 'http://www.morissette.com/', 2, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(283, 15, 'Et reprehenderit voluptatum vero aliquam.', 'http://www.bednar.org/', 3, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(284, 15, 'Et est magni molestiae.', 'http://spinka.com/', 4, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(285, 15, 'Est et possimus aliquam at.', 'http://fisher.com/', 5, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(286, 15, 'Error quasi eius modi et.', 'http://www.borer.com/rerum-ea-et-voluptate-voluptatem-nam.html', 6, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(287, 15, 'Dolor sed quaerat vero sapiente.', 'http://marquardt.org/', 7, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(288, 15, 'Nam totam fugiat.', 'http://goldner.com/natus-odit-deserunt-suscipit-doloremque-vero.html', 8, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(289, 15, 'Earum dolores repellat.', 'http://roberts.com/odio-qui-quae-et-sit-tenetur-laboriosam-aut-blanditiis', 9, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(290, 15, 'Et accusamus consequatur reiciendis odit saepe.', 'http://www.schroeder.com/id-provident-ut-ex-dolores', 10, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(291, 15, 'Voluptatum nesciunt voluptas omnis ipsam.', 'http://www.hirthe.biz/', 11, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(292, 15, 'Eos vel fugiat facere alias.', 'http://www.haag.biz/est-quae-iure-omnis-dolor-sint-odit-dolorem-quia', 12, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(293, 15, 'Dolorum repudiandae odio.', 'http://okeefe.com/enim-deserunt-velit-recusandae', 13, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(294, 15, 'Tempora quibusdam quis provident et.', 'http://beier.com/voluptas-dolores-fuga-quam-rerum', 14, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(295, 15, 'Perferendis et aut nostrum.', 'http://www.bergstrom.net/deleniti-facere-non-ullam-facere-sint-unde', 15, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(296, 15, 'A distinctio consequatur sit.', 'https://ebert.biz/numquam-minima-quia-laudantium-eos-in-explicabo-ut-consequatur.html', 16, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(297, 15, 'Est in non sunt.', 'http://lueilwitz.com/dolorem-nulla-vel-atque', 17, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(298, 15, 'Voluptas sed saepe.', 'https://www.treutel.com/quia-provident-accusamus-doloremque-odio-eius-qui-ex', 18, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(299, 15, 'Deleniti aut dolores veniam non.', 'http://www.harber.net/rerum-ipsum-sit-quae', 19, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(300, 15, 'Facilis nam omnis.', 'http://daniel.com/', 20, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(301, 16, 'Qui non veritatis assumenda quaerat nostrum.', 'http://howell.com/perspiciatis-delectus-ea-illum-qui-recusandae-adipisci-est.html', 1, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(302, 16, 'Distinctio doloribus est velit cumque.', 'http://hammes.org/enim-inventore-possimus-quo-et.html', 2, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(303, 16, 'Autem sit magnam in totam.', 'http://www.kozey.info/totam-aut-delectus-minima.html', 3, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(304, 16, 'Nemo distinctio deserunt laboriosam ut.', 'https://www.kuhn.net/sunt-inventore-quia-voluptas-praesentium-velit', 4, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(305, 16, 'Cumque officiis reiciendis itaque.', 'http://www.bradtke.com/ea-iure-quam-nisi-quidem', 5, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(306, 16, 'Eos voluptas error tenetur ipsum omnis.', 'http://bednar.org/ex-id-facilis-quam-consequuntur.html', 6, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(307, 16, 'Autem aspernatur iure praesentium.', 'http://www.runte.com/debitis-in-dolore-necessitatibus-excepturi-officiis', 7, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(308, 16, 'Dolorem eos animi.', 'http://okeefe.org/voluptas-nam-sunt-dolorum-quis-aspernatur-eveniet.html', 8, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(309, 16, 'Exercitationem rem reprehenderit quae.', 'http://grant.com/ad-doloribus-adipisci-accusantium', 9, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(310, 16, 'Et pariatur sunt dolor.', 'http://www.thiel.biz/natus-molestias-perferendis-modi-aliquam.html', 10, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(311, 16, 'Quisquam odit porro quidem.', 'http://turner.com/ab-velit-consequuntur-repudiandae-voluptas-vitae-ut', 11, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(312, 16, 'Et magnam nihil qui.', 'http://www.daugherty.biz/placeat-vel-fuga-sunt-distinctio-molestiae-sed-architecto', 12, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(313, 16, 'Necessitatibus tempore iste reprehenderit consequuntur.', 'http://www.waters.com/', 13, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(314, 16, 'Ut magnam quos aut rerum.', 'https://www.connelly.net/perspiciatis-ut-amet-quia-culpa-deserunt-ab', 14, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(315, 16, 'Repellendus asperiores nulla consequatur architecto explicabo.', 'http://crooks.info/quo-repellendus-non-reiciendis-modi-vel-consectetur-voluptatem-minima.html', 15, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(316, 16, 'Ab nesciunt reiciendis maxime placeat.', 'http://www.daugherty.com/nisi-molestias-quia-voluptatem-perspiciatis-et-explicabo.html', 16, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(317, 16, 'Placeat voluptatem dolorem quas.', 'http://www.willms.biz/exercitationem-placeat-minus-qui-quasi-porro', 17, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(318, 16, 'Recusandae pariatur praesentium enim ab.', 'http://www.koelpin.com/ex-et-repudiandae-corrupti-et-sed-nisi-iste.html', 18, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(319, 16, 'Corporis repellat qui optio.', 'http://www.langosh.com/', 19, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(320, 16, 'Assumenda quidem perspiciatis incidunt labore.', 'http://www.upton.biz/necessitatibus-amet-omnis-impedit-distinctio-ea-voluptatem-dignissimos-itaque', 20, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(321, 17, 'A dolorem non voluptatem.', 'http://leannon.com/', 1, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(322, 17, 'Modi esse temporibus officiis modi.', 'http://haag.com/saepe-molestiae-corrupti-necessitatibus-quae-sint.html', 2, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(323, 17, 'Qui suscipit eaque quis et autem.', 'http://www.runte.com/', 3, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(324, 17, 'Ut consectetur nam.', 'http://www.morar.info/et-cum-consequuntur-et-quae-et-et', 4, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(325, 17, 'Qui consequuntur consequatur nihil.', 'http://www.schamberger.com/', 5, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(326, 17, 'Ipsum magnam tempore.', 'http://www.stoltenberg.com/ea-ea-non-consequatur.html', 6, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(327, 17, 'Atque omnis placeat voluptas.', 'http://www.toy.com/aut-accusamus-dolore-autem-voluptates.html', 7, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(328, 17, 'Facere expedita aut et temporibus.', 'http://www.hermiston.biz/', 8, '2026-02-07 10:25:10', '2026-02-07 10:25:10');
INSERT INTO `lessons` (`id`, `course_id`, `title`, `content`, `order`, `created_at`, `updated_at`) VALUES
(329, 17, 'Voluptatum modi ea.', 'http://gottlieb.com/qui-explicabo-porro-harum-facilis', 9, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(330, 17, 'Dolores voluptatem quis aut.', 'https://www.collier.net/unde-doloribus-autem-quia-sit-id-libero-quo', 10, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(331, 17, 'Qui autem officiis non assumenda nesciunt.', 'http://schowalter.com/porro-blanditiis-magnam-voluptatem-fugit-maxime-aliquid', 11, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(332, 17, 'Recusandae quos sunt.', 'http://mayert.net/fugiat-reprehenderit-quo-molestiae-voluptate', 12, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(333, 17, 'Consequatur quaerat voluptatem sed dolore.', 'http://www.bartoletti.com/', 13, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(334, 17, 'Accusantium optio eum sunt ex.', 'http://www.murazik.com/velit-quo-iure-officiis-sed-est-blanditiis', 14, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(335, 17, 'Sint ipsam ratione tenetur unde est.', 'http://www.hauck.com/', 15, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(336, 17, 'Modi accusamus accusamus delectus odio.', 'http://stanton.net/aut-eius-corporis-dolore-distinctio.html', 16, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(337, 17, 'Recusandae et voluptatum dolores.', 'http://ryan.com/sit-ut-modi-nam-quia-cum-tempora-qui', 17, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(338, 17, 'Distinctio atque maiores quos provident sint.', 'https://pagac.com/earum-est-provident-quos-delectus.html', 18, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(339, 17, 'Illo nobis est expedita ipsam.', 'http://www.reynolds.biz/at-repudiandae-at-consectetur-sit-aliquid-quo-quas-deleniti', 19, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(340, 17, 'Quas sapiente et.', 'http://brekke.com/aliquid-consequatur-nemo-ad-dolor-sed-doloribus-voluptatem', 20, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(341, 18, 'Quia excepturi quisquam et in.', 'http://mayert.org/voluptates-recusandae-fuga-est-laudantium-et-alias', 1, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(342, 18, 'Iusto facilis dignissimos nihil.', 'http://www.lebsack.com/', 2, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(343, 18, 'Magni sunt maiores rerum aperiam dolore.', 'http://www.schuster.com/', 3, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(344, 18, 'Nesciunt non ea est assumenda.', 'https://www.torp.com/veniam-et-vel-harum-velit-non-facere', 4, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(345, 18, 'Nihil corrupti maiores distinctio.', 'http://ledner.info/voluptas-illum-modi-ut-perferendis-ducimus-sunt-autem', 5, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(346, 18, 'Dolor et molestias provident.', 'https://bartell.com/ex-omnis-sint-voluptates-quisquam-cupiditate-repudiandae.html', 6, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(347, 18, 'Necessitatibus id deserunt debitis et.', 'http://www.renner.net/molestiae-atque-culpa-unde-corrupti-esse', 7, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(348, 18, 'Quia debitis expedita voluptas.', 'http://www.wunsch.biz/nulla-blanditiis-magni-voluptas-deleniti-fuga-voluptatibus.html', 8, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(349, 18, 'Illo voluptatem commodi eaque voluptatem magni.', 'http://metz.org/odit-et-aut-unde-vero-sed-dolorem-voluptas', 9, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(350, 18, 'Voluptates incidunt totam eum ut.', 'https://rodriguez.info/alias-sint-aut-expedita-dolor-fuga.html', 10, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(351, 18, 'Ut nam enim dolorem.', 'http://www.lubowitz.com/ipsum-rerum-quia-sed-enim-dolorum-et-velit-eius.html', 11, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(352, 18, 'Sed delectus quis vero.', 'http://buckridge.com/non-quia-voluptas-magni-ab-ea-pariatur', 12, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(353, 18, 'Aut dolorem fugit aspernatur qui.', 'http://www.kirlin.biz/consequatur-repellendus-et-accusantium-recusandae', 13, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(354, 18, 'Aut necessitatibus deserunt mollitia temporibus.', 'http://www.bailey.com/illo-repudiandae-et-veniam-rerum-non.html', 14, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(355, 18, 'Id et nisi illum aut.', 'http://www.friesen.com/nemo-ut-quo-repellendus-fugit-tempora.html', 15, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(356, 18, 'Optio repudiandae labore quasi in.', 'https://hudson.com/quae-qui-quis-iusto-id-a.html', 16, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(357, 18, 'Inventore et aut suscipit ad a.', 'http://www.fadel.org/provident-quaerat-dignissimos-ut-eaque-minus-repellendus-quia', 17, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(358, 18, 'Quasi ipsa ullam.', 'http://www.boehm.com/magni-nobis-reprehenderit-facilis-est-eum-quaerat', 18, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(359, 18, 'Asperiores placeat qui quisquam ipsa.', 'http://www.zemlak.com/velit-rerum-a-atque-fugiat-dolor-et-provident-assumenda', 19, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(360, 18, 'Vero perspiciatis repellendus doloribus molestiae.', 'http://www.maggio.net/fuga-voluptatem-nulla-unde-ab-deleniti-voluptatum-vel', 20, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(361, 19, 'Eos quis doloremque voluptas qui repellendus.', 'http://www.goldner.com/blanditiis-possimus-quia-sint-cum-ea-saepe', 1, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(362, 19, 'Autem iste dolor dolorum.', 'http://legros.org/', 2, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(363, 19, 'Ea illo dolores nobis tempora.', 'http://www.effertz.org/qui-aut-sunt-quam-consequuntur.html', 3, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(364, 19, 'Dolor blanditiis est aut.', 'https://gorczany.org/ea-earum-vel-reprehenderit-dolores-omnis-mollitia-recusandae.html', 4, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(365, 19, 'Earum molestiae temporibus a animi quia.', 'http://www.zemlak.com/aut-animi-est-eaque-illum-iusto.html', 5, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(366, 19, 'Eum quia consectetur deserunt fuga et.', 'https://leffler.com/architecto-sint-et-enim-corporis.html', 6, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(367, 19, 'Possimus dolorem ut consequuntur.', 'http://www.jast.net/reprehenderit-dolores-id-illum-praesentium-sed-nihil-voluptatum.html', 7, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(368, 19, 'Magnam aut dolores.', 'http://www.will.net/eveniet-hic-ratione-officiis-ipsa-fugit-ducimus-at', 8, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(369, 19, 'Occaecati et repudiandae doloribus laboriosam.', 'http://bashirian.com/voluptatibus-eligendi-eos-cum-illum.html', 9, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(370, 19, 'Atque qui culpa praesentium repellat.', 'http://www.barrows.com/sit-est-enim-tempore-qui-quas-autem-repellat', 10, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(371, 19, 'Alias sed aut.', 'http://luettgen.biz/hic-enim-similique-alias-fugiat-nihil-nihil-amet-esse', 11, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(372, 19, 'Qui fugiat architecto.', 'http://www.deckow.net/eos-voluptates-fugit-magni-occaecati-necessitatibus-repellat.html', 12, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(373, 19, 'Ut in excepturi ea ipsa.', 'http://www.hirthe.org/est-odio-quia-sapiente-ut-qui-est', 13, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(374, 19, 'Qui est eligendi enim ex fugit.', 'http://www.gaylord.com/adipisci-sunt-ut-optio', 14, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(375, 19, 'Dolorem sit quis laborum ratione.', 'http://will.com/placeat-libero-voluptatem-quia-ducimus-tenetur', 15, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(376, 19, 'Sit fugiat nesciunt debitis.', 'http://larson.com/accusantium-aperiam-harum-molestiae-et.html', 16, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(377, 19, 'Inventore inventore praesentium odit occaecati.', 'https://www.lebsack.com/odio-voluptas-dolorum-eos-facilis-officiis', 17, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(378, 19, 'Rem libero provident.', 'http://www.dach.com/placeat-praesentium-ut-eum-accusamus-quasi-consectetur', 18, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(379, 19, 'Qui et enim non.', 'http://www.sipes.com/animi-fugiat-perferendis-ut-qui-provident.html', 19, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(380, 19, 'Illo aspernatur quod enim.', 'https://www.hagenes.com/itaque-nostrum-corporis-et-dolor-rerum-consequatur-in', 20, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(381, 20, 'Asperiores neque laudantium quisquam.', 'http://www.daniel.info/', 1, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(382, 20, 'Quo quod inventore deserunt magni.', 'http://blick.com/dolor-soluta-libero-in-minima-et-corporis-quis-commodi', 2, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(383, 20, 'Dolor consectetur blanditiis tempore.', 'http://www.herman.org/', 3, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(384, 20, 'Perspiciatis nulla aspernatur nulla.', 'http://casper.com/in-sed-deleniti-blanditiis-suscipit-odio.html', 4, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(385, 20, 'Repellat et repellat dignissimos.', 'http://www.rippin.com/suscipit-non-pariatur-animi-nam-qui-iste-aperiam.html', 5, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(386, 20, 'Assumenda est omnis unde excepturi.', 'http://www.huels.com/', 6, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(387, 20, 'Eligendi a quos.', 'http://www.mueller.info/mollitia-nobis-sint-vero-velit-numquam', 7, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(388, 20, 'Non quis facere.', 'http://rogahn.com/accusantium-voluptatem-ut-laborum-eius-quos-ut.html', 8, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(389, 20, 'Officiis earum recusandae omnis.', 'https://www.gutmann.net/eius-laudantium-veniam-fugiat-at-accusamus-consequatur', 9, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(390, 20, 'Nihil dolorum sapiente sunt dolores.', 'http://haag.com/hic-quam-consectetur-quo-optio-odio-quasi', 10, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(391, 20, 'Sunt in alias reprehenderit.', 'http://www.leffler.com/non-quis-aspernatur-aspernatur.html', 11, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(392, 20, 'Dignissimos culpa fugiat laudantium.', 'http://orn.info/et-est-quidem-vero-et-necessitatibus-odit-labore', 12, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(393, 20, 'Soluta laborum ullam est rem.', 'http://ankunding.com/', 13, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(394, 20, 'Sit excepturi et ipsa.', 'http://goldner.com/similique-vel-non-et-ut-ut-aut-error', 14, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(395, 20, 'Explicabo ipsam consectetur ratione voluptates molestias.', 'http://greenfelder.com/', 15, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(396, 20, 'Dolores repellendus corrupti sapiente.', 'http://www.nolan.biz/voluptas-dolor-corrupti-veniam-atque', 16, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(397, 20, 'Assumenda dignissimos commodi iste quidem.', 'http://volkman.com/iusto-maxime-commodi-fugiat-nemo-veritatis', 17, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(398, 20, 'Quae et aliquid sequi.', 'http://bayer.biz/corrupti-ex-molestiae-quae-necessitatibus-et-amet-doloremque-sint.html', 18, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(399, 20, 'Rerum repellat quam at enim.', 'http://www.erdman.biz/', 19, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(400, 20, 'Vitae quibusdam labore.', 'http://www.hane.com/hic-ut-iusto-aut-maiores.html', 20, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(401, 21, 'Laborum tempora ut.', 'https://www.jakubowski.com/occaecati-iure-repudiandae-neque-atque-veritatis', 1, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(402, 21, 'Labore repellendus illo rem.', 'http://renner.org/', 2, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(403, 21, 'Atque consequatur dolorem nemo.', 'https://www.lynch.info/quidem-veritatis-facilis-eius-non-et-nihil', 3, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(404, 21, 'Libero eligendi fugiat optio.', 'https://doyle.com/quas-voluptate-voluptatum-repellendus-tenetur-ipsum-et-quaerat-qui.html', 4, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(405, 21, 'Minima nihil vitae esse enim.', 'http://feest.biz/', 5, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(406, 21, 'Voluptatem consequuntur vel.', 'http://prohaska.com/quia-voluptas-est-unde-aut', 6, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(407, 21, 'Asperiores aut dolore dolorem rerum.', 'https://www.brakus.net/occaecati-unde-minus-deleniti-quis', 7, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(408, 21, 'Laboriosam porro et.', 'http://www.schinner.org/optio-ipsum-libero-similique-et-porro-rerum.html', 8, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(409, 21, 'Labore illum facilis.', 'https://kemmer.biz/harum-vitae-ut-tempora-ratione-est-sed-aut.html', 9, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(410, 21, 'Ad sequi voluptatibus quo.', 'http://veum.info/non-et-sit-quisquam-in-aut-excepturi-et', 10, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(411, 21, 'Porro voluptatem quo.', 'http://lakin.net/ab-et-assumenda-quam-asperiores-ut-reiciendis-debitis-consectetur', 11, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(412, 21, 'Pariatur aperiam error exercitationem qui.', 'http://marks.com/et-aspernatur-dolorem-quia-necessitatibus-dolores', 12, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(413, 21, 'Et molestiae porro dolore doloremque.', 'http://www.braun.biz/hic-maxime-molestiae-eius-repudiandae-earum-illo', 13, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(414, 21, 'Autem qui excepturi voluptatem facere placeat.', 'https://hettinger.org/itaque-quisquam-velit-quis-et-non.html', 14, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(415, 21, 'Tenetur asperiores error qui nam.', 'http://simonis.com/sequi-dolores-cupiditate-ut-qui.html', 15, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(416, 21, 'Earum labore alias tenetur quis.', 'http://weimann.com/non-quibusdam-facere-molestias-voluptatum.html', 16, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(417, 21, 'Tempore sapiente minus ab sit architecto.', 'http://lynch.net/autem-hic-dolorem-voluptas-amet', 17, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(418, 21, 'Est ipsam alias esse.', 'http://wintheiser.com/velit-quidem-aut-doloremque-corporis-eum-quia.html', 18, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(419, 21, 'Dolor beatae dolorum.', 'https://www.jaskolski.com/quo-ipsum-odio-expedita-illo-esse-quos-eveniet', 19, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(420, 21, 'Et architecto repellendus vel debitis.', 'http://grant.info/', 20, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(421, 22, 'Molestiae et laudantium magnam.', 'http://www.streich.com/consequatur-cum-voluptas-dolor-adipisci-consectetur-reiciendis-voluptatem', 1, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(422, 22, 'Aut aut occaecati corporis dolores quaerat.', 'http://www.heidenreich.org/consequatur-eum-in-soluta-non-ut-eos-enim.html', 2, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(423, 22, 'Enim distinctio libero et molestiae.', 'http://www.mann.org/id-voluptas-aut-officia.html', 3, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(424, 22, 'Itaque quis perferendis qui numquam.', 'http://www.green.com/illo-a-dolore-expedita-suscipit-aliquam-quasi', 4, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(425, 22, 'Quaerat non sequi aut.', 'http://www.frami.com/eum-rem-sunt-corrupti-cupiditate.html', 5, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(426, 22, 'Sint eaque placeat fugiat.', 'http://www.lakin.com/ducimus-ipsum-nostrum-architecto-quibusdam.html', 6, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(427, 22, 'Est minima et itaque.', 'http://www.herman.com/facere-ipsam-et-officiis-iste-expedita', 7, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(428, 22, 'Ipsam at architecto illo placeat.', 'http://www.altenwerth.com/ipsum-aut-corrupti-occaecati-corporis-autem-optio-rerum', 8, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(429, 22, 'Debitis qui sit tempora minima.', 'http://www.koelpin.com/qui-eligendi-rerum-culpa.html', 9, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(430, 22, 'Est at et sed ex.', 'http://www.romaguera.com/qui-non-expedita-aut-labore-ullam-et-fugit', 10, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(431, 22, 'Voluptatem in fuga est illum.', 'https://howe.biz/totam-incidunt-qui-dolores-ut-hic.html', 11, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(432, 22, 'Et voluptatem debitis voluptas.', 'http://www.ratke.com/voluptas-sit-dolorum-doloremque-similique-amet-consectetur-quia', 12, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(433, 22, 'Vitae qui quis facilis necessitatibus.', 'http://www.schmidt.com/commodi-ducimus-vel-explicabo-eligendi-vero', 13, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(434, 22, 'Atque ipsa labore sunt.', 'http://roberts.net/dicta-ipsa-veniam-in-dolor', 14, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(435, 22, 'In repudiandae et.', 'http://www.hintz.com/voluptatem-amet-corrupti-vero-quis-fuga-earum.html', 15, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(436, 22, 'Minus consectetur voluptates distinctio itaque.', 'https://www.osinski.com/repellendus-quo-totam-dolore-odit-minima-quidem-quos', 16, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(437, 22, 'Voluptas qui est maiores.', 'http://www.lindgren.org/', 17, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(438, 22, 'Aliquam dolores et aut voluptatem aliquid.', 'http://www.lang.com/qui-at-nobis-deserunt-ipsa.html', 18, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(439, 22, 'Voluptates consectetur quidem.', 'http://www.quigley.com/doloribus-nemo-nihil-ab-quasi-perferendis-ipsa-et-sit', 19, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(440, 22, 'Eveniet quis sunt autem illum.', 'http://schneider.biz/quam-qui-ut-dolor-laudantium-iste', 20, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(441, 23, 'Voluptatibus repellat sapiente aliquam cupiditate.', 'http://oconner.com/omnis-beatae-architecto-fugiat-unde-alias.html', 1, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(442, 23, 'Enim qui non aperiam.', 'http://prohaska.com/', 2, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(443, 23, 'Voluptatem in laborum.', 'http://www.hagenes.com/sed-voluptas-dolor-quibusdam-sit-accusantium-in.html', 3, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(444, 23, 'Ratione illo fugiat tempora.', 'http://bins.com/ipsum-dolorum-reprehenderit-aperiam-qui-et', 4, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(445, 23, 'Repellat laborum praesentium autem.', 'http://www.macejkovic.com/quia-laborum-voluptas-voluptate-excepturi-non.html', 5, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(446, 23, 'Labore repellat ut mollitia tempore est.', 'http://abbott.com/', 6, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(447, 23, 'Fugiat aut dolores architecto.', 'http://purdy.info/dolore-quibusdam-iure-enim-sint-ex-fugit-velit.html', 7, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(448, 23, 'Rerum quia ut aut.', 'http://champlin.com/delectus-eum-velit-at-qui-dolores.html', 8, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(449, 23, 'Non excepturi omnis alias.', 'http://www.braun.com/aut-eligendi-mollitia-quos-aliquam-placeat-nulla-qui', 9, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(450, 23, 'Et hic odit odit et.', 'http://little.com/ipsa-minus-perspiciatis-doloremque-ipsam-deserunt', 10, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(451, 23, 'Occaecati voluptatum facilis.', 'http://www.runte.biz/voluptas-maiores-voluptate-doloribus-ab-ea-placeat-exercitationem-libero', 11, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(452, 23, 'Rerum officia voluptas vitae porro assumenda.', 'http://ledner.info/aut-porro-non-nesciunt', 12, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(453, 23, 'Amet iste cupiditate excepturi.', 'http://www.roob.com/labore-accusantium-voluptatem-ullam-et', 13, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(454, 23, 'Sit incidunt enim deleniti.', 'http://treutel.com/illo-odio-natus-voluptatum-aperiam-quis-odit-et.html', 14, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(455, 23, 'Possimus pariatur reprehenderit delectus similique.', 'http://boyle.org/', 15, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(456, 23, 'Quia facilis aspernatur aspernatur.', 'http://www.vonrueden.com/qui-nihil-quae-id-aut-eligendi-omnis-autem', 16, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(457, 23, 'Cumque et ipsa impedit.', 'http://rath.com/exercitationem-rerum-ullam-dolorum-qui-ratione', 17, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(458, 23, 'Necessitatibus itaque distinctio consequatur.', 'http://www.schneider.info/autem-et-debitis-maiores-excepturi-excepturi-atque', 18, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(459, 23, 'Distinctio maxime similique debitis qui.', 'http://www.lang.com/sint-est-quo-quisquam-velit-iste-eos.html', 19, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(460, 23, 'Veritatis quidem quas accusamus.', 'http://www.emard.com/quod-rerum-provident-qui', 20, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(461, 24, 'Eum molestiae id numquam.', 'http://klein.info/hic-doloremque-voluptatum-quisquam-sint-sint-eaque', 1, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(462, 24, 'Labore voluptate voluptatem est in quibusdam.', 'http://www.sanford.com/quaerat-repudiandae-magnam-at-quas-ab-enim-beatae', 2, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(463, 24, 'Ratione consequatur officiis accusantium sint rerum.', 'http://www.fay.com/et-minima-culpa-dolorum.html', 3, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(464, 24, 'Ex placeat vero neque.', 'http://www.wehner.net/', 4, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(465, 24, 'Illo quibusdam deserunt reiciendis aliquam.', 'http://muller.biz/ea-illum-fugiat-molestias-occaecati-nesciunt-et', 5, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(466, 24, 'Quos voluptate aut quisquam.', 'http://www.legros.info/molestias-quos-magnam-tenetur-quasi.html', 6, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(467, 24, 'Et aperiam ex beatae aut aliquid.', 'http://jacobi.com/enim-ex-molestias-dolor', 7, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(468, 24, 'Aperiam pariatur pariatur doloribus amet est.', 'http://kassulke.com/vel-officiis-voluptas-ut-officia-labore-fuga-placeat-rerum.html', 8, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(469, 24, 'Voluptatibus rerum itaque.', 'http://www.turner.org/', 9, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(470, 24, 'Ut impedit totam voluptate qui et.', 'http://www.ortiz.com/repudiandae-iusto-aut-dolore-sint.html', 10, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(471, 24, 'Reprehenderit eos dolores culpa nulla consequuntur.', 'https://www.sauer.com/voluptates-id-inventore-beatae-natus-dolores', 11, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(472, 24, 'Laboriosam sint magni fuga.', 'https://www.torphy.com/ab-eos-quibusdam-alias-aut-velit-recusandae-ipsam', 12, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(473, 24, 'Rerum et reiciendis deleniti eos.', 'https://www.doyle.info/aut-sapiente-exercitationem-id-nihil-molestiae', 13, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(474, 24, 'Dolorum pariatur eligendi.', 'http://weissnat.org/reprehenderit-sed-quia-ut-praesentium', 14, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(475, 24, 'Aut ex molestiae.', 'http://purdy.com/vel-asperiores-et-unde-vel-commodi-accusamus.html', 15, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(476, 24, 'Sint et natus.', 'http://kovacek.com/', 16, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(477, 24, 'Ea sed est et necessitatibus.', 'http://www.kilback.org/commodi-ea-fugit-dolores-ipsa-eos-sit-ea-provident', 17, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(478, 24, 'Dolorem aperiam nobis aut quis.', 'https://hyatt.com/quia-aliquam-qui-vero-magni-qui-error-quam.html', 18, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(479, 24, 'Dolorem iste aliquid doloribus.', 'http://www.ledner.com/', 19, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(480, 24, 'Est laboriosam placeat temporibus et.', 'http://hintz.info/', 20, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(481, 25, 'Dolore et delectus dolores accusantium voluptas.', 'https://www.boyle.com/tempora-natus-ea-a-quod-earum-nemo', 1, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(482, 25, 'Quae in error quia.', 'https://brakus.com/suscipit-nihil-voluptates-excepturi.html', 2, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(483, 25, 'Est officia quia dignissimos.', 'http://www.larson.com/', 3, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(484, 25, 'Necessitatibus numquam consequatur.', 'http://www.oconner.org/neque-ut-asperiores-fugiat-ipsum', 4, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(485, 25, 'Modi dolore dicta aut.', 'http://www.schaefer.com/beatae-quia-sed-soluta-autem-aspernatur-illo-a', 5, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(486, 25, 'Expedita repellendus id sint provident.', 'http://www.lueilwitz.info/ab-est-corrupti-quod', 6, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(487, 25, 'Ipsam esse quasi ipsum velit non.', 'http://www.barrows.net/aut-ut-architecto-mollitia-qui-sequi-pariatur.html', 7, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(488, 25, 'Asperiores soluta explicabo voluptatem et.', 'https://parker.com/inventore-architecto-voluptas-quos-itaque-ut-odio.html', 8, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(489, 25, 'Ut id quis.', 'http://hermiston.com/', 9, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(490, 25, 'Laboriosam ad placeat eveniet.', 'http://raynor.com/quia-qui-itaque-autem-sit-atque-aut-similique', 10, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(491, 25, 'Maxime atque saepe velit.', 'http://www.goldner.com/', 11, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(492, 25, 'Est architecto harum.', 'http://www.mitchell.com/', 12, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(493, 25, 'Veritatis quasi aut nam.', 'http://swift.net/', 13, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(494, 25, 'Quod quo laboriosam.', 'http://labadie.info/', 14, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(495, 25, 'Explicabo et facere fugit dolorem eaque.', 'http://www.heaney.com/voluptates-aut-et-illo-maiores-quia', 15, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(496, 25, 'Modi et earum odio velit.', 'http://rutherford.net/eveniet-sed-molestiae-minus', 16, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(497, 25, 'Et hic eveniet qui debitis.', 'http://www.bergnaum.com/ut-consectetur-autem-voluptatem-animi', 17, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(498, 25, 'Placeat sint non et possimus assumenda.', 'http://kihn.com/', 18, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(499, 25, 'Beatae quasi at est explicabo.', 'http://www.simonis.biz/odit-et-reiciendis-sit-aliquam.html', 19, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(500, 25, 'Vel qui voluptatem velit cumque autem.', 'http://bayer.com/laborum-quia-excepturi-eum-mollitia-minima-enim-omnis.html', 20, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(501, 26, 'Numquam quia ipsum.', 'http://boehm.com/suscipit-distinctio-ut-quos-est', 1, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(502, 26, 'Sed consequatur saepe ab ipsum inventore.', 'http://bins.biz/iure-quam-labore-sit-et', 2, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(503, 26, 'Quis omnis corrupti repudiandae.', 'http://kling.com/ut-nesciunt-sit-et-sapiente-cum.html', 3, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(504, 26, 'Et excepturi beatae rerum.', 'http://www.kuvalis.biz/voluptatem-quia-ea-reprehenderit-possimus-est-quod.html', 4, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(505, 26, 'Adipisci impedit et quas ratione voluptate.', 'http://www.douglas.com/doloremque-similique-veniam-amet-ipsam-voluptas-maiores-corrupti.html', 5, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(506, 26, 'Consequatur voluptatum doloribus dicta soluta.', 'http://www.orn.com/necessitatibus-ex-aut-veritatis-cumque.html', 6, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(507, 26, 'Accusantium velit ducimus facere quod.', 'http://www.skiles.com/', 7, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(508, 26, 'Ipsam sit suscipit.', 'http://flatley.info/libero-dolorem-cupiditate-laudantium-adipisci-quaerat-et', 8, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(509, 26, 'Fuga qui est et dolorem.', 'https://grant.com/quaerat-magni-non-incidunt-ipsam.html', 9, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(510, 26, 'Natus ad repellat et.', 'http://www.grimes.com/saepe-harum-laboriosam-libero-assumenda-sit-inventore-nemo-deleniti', 10, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(511, 26, 'Dolor non dolores sit voluptas.', 'http://www.littel.org/qui-magni-nemo-recusandae-corrupti-suscipit-molestiae-aut', 11, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(512, 26, 'Sed delectus necessitatibus perferendis magnam.', 'https://cartwright.biz/asperiores-quaerat-minima-deleniti-qui-sed.html', 12, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(513, 26, 'Vitae dolore vero minus veniam ipsam.', 'https://www.jacobi.com/exercitationem-eaque-sit-quis-earum-architecto-neque', 13, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(514, 26, 'Consequatur nihil aliquam dolor qui.', 'http://www.gorczany.biz/tempore-deserunt-nihil-culpa-repellat-laborum.html', 14, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(515, 26, 'Ducimus optio ea velit dolores doloribus.', 'http://streich.com/iste-accusantium-voluptatibus-sed-voluptatem-consequatur', 15, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(516, 26, 'Molestias quaerat nesciunt quo.', 'http://wiza.org/minima-dolores-dignissimos-modi-iste-minima-quasi-consequatur.html', 16, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(517, 26, 'Quisquam dolore nam et quaerat similique.', 'http://www.lemke.com/', 17, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(518, 26, 'Iure id sint earum.', 'http://welch.info/', 18, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(519, 26, 'Accusantium numquam ipsa cum et.', 'http://www.hammes.com/architecto-est-voluptas-fugiat-officia-fugiat-explicabo', 19, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(520, 26, 'Ea est illo dolorem dignissimos.', 'http://www.volkman.biz/', 20, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(521, 27, 'Cum dolorum culpa voluptatem tenetur.', 'http://vonrueden.com/perspiciatis-quis-assumenda-vel-voluptatibus-voluptas-dolorum-id', 1, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(522, 27, 'Eos illum deserunt modi.', 'http://www.koch.com/corrupti-doloremque-quia-nesciunt', 2, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(523, 27, 'Itaque est optio aut.', 'http://www.green.info/qui-voluptatem-molestiae-in', 3, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(524, 27, 'Qui aliquid ea.', 'http://marvin.net/temporibus-tempore-sed-animi-sint-qui-ea', 4, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(525, 27, 'Doloribus in quod.', 'http://padberg.com/ipsa-eius-dignissimos-sequi-cum-sed-itaque-debitis-magnam', 5, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(526, 27, 'Neque debitis est velit qui officiis.', 'http://www.cummings.org/earum-adipisci-deleniti-dolor-rerum-velit-blanditiis-impedit', 6, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(527, 27, 'Nesciunt assumenda ullam praesentium ut dolore.', 'http://kreiger.com/aut-facere-omnis-eligendi-omnis-laudantium-ullam-quia-assumenda', 7, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(528, 27, 'Qui sed adipisci.', 'http://padberg.com/dignissimos-in-voluptas-sequi-quis-doloremque.html', 8, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(529, 27, 'Blanditiis dolor nesciunt neque enim.', 'https://bednar.com/possimus-soluta-labore-eos-qui-ad-voluptatibus.html', 9, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(530, 27, 'Eum quia optio.', 'http://www.wilderman.info/voluptate-dignissimos-deleniti-magni-autem-ut-ut', 10, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(531, 27, 'Sed et asperiores nihil.', 'http://www.shanahan.com/', 11, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(532, 27, 'Voluptas nostrum ut.', 'http://dickens.com/porro-facilis-inventore-autem-tempora-autem-tempore', 12, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(533, 27, 'Non quae veniam non.', 'http://www.nitzsche.biz/atque-voluptatem-omnis-blanditiis-odio-et-porro-rerum.html', 13, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(534, 27, 'Eos at quis vel in id.', 'https://kshlerin.com/praesentium-id-doloremque-nesciunt-asperiores-incidunt.html', 14, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(535, 27, 'Error modi odio aspernatur autem ad.', 'http://jenkins.com/est-ullam-blanditiis-dolores-itaque-blanditiis-aperiam-necessitatibus.html', 15, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(536, 27, 'Consequatur qui non aut.', 'http://witting.com/fugit-ex-et-enim-rem-voluptates', 16, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(537, 27, 'Id doloremque quia aut distinctio.', 'http://marquardt.com/', 17, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(538, 27, 'Et doloribus eligendi qui consectetur.', 'https://raynor.biz/quae-sit-quaerat-quam-illum-perferendis-harum-doloremque.html', 18, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(539, 27, 'Culpa quia voluptas recusandae temporibus omnis.', 'http://bernhard.org/', 19, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(540, 27, 'Repellat consequatur reiciendis.', 'https://www.sawayn.com/maiores-aliquid-et-repellendus-accusamus-qui', 20, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(541, 28, 'Eum ut voluptas perferendis.', 'http://www.mraz.biz/aut-aut-sequi-totam-totam-quos-sapiente-et', 1, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(542, 28, 'Quae quas omnis officiis.', 'https://www.swift.com/eum-autem-quidem-atque-in-accusantium-ab', 2, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(543, 28, 'Aut alias vitae rerum rerum.', 'http://rolfson.com/nihil-veniam-est-vero-explicabo-a-blanditiis.html', 3, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(544, 28, 'Velit error velit itaque.', 'https://www.boyer.com/aut-temporibus-neque-rem', 4, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(545, 28, 'Culpa minus facilis.', 'http://senger.com/eum-ullam-adipisci-quo-est-doloribus-consequuntur-harum', 5, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(546, 28, 'Repudiandae laborum voluptatem.', 'http://www.schneider.info/sint-et-rerum-iusto-doloribus-qui', 6, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(547, 28, 'Ut eos beatae officiis vero.', 'http://zulauf.info/ut-quas-sit-laborum-nihil-ea-commodi-voluptatem-in', 7, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(548, 28, 'Enim minima quia sint.', 'http://zemlak.info/deserunt-reiciendis-inventore-illo-pariatur-cupiditate-dolor', 8, '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(549, 28, 'Non consequatur repudiandae enim eum.', 'http://haley.com/', 9, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(550, 28, 'Ut aliquam similique eum molestias.', 'http://renner.com/', 10, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(551, 28, 'Non ab corporis quod.', 'http://www.roberts.net/odit-est-et-quia-temporibus-explicabo.html', 11, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(552, 28, 'Sunt ut voluptatem in sequi beatae.', 'http://bruen.com/rerum-et-est-commodi-libero-voluptatem-eveniet-sunt.html', 12, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(553, 28, 'Ullam et vero non repudiandae qui.', 'http://gaylord.com/asperiores-officia-corporis-sunt-ad-qui-voluptas.html', 13, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(554, 28, 'Id ut nobis voluptatem molestias facere.', 'http://pollich.info/nam-debitis-consequatur-nisi-iure-ratione.html', 14, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(555, 28, 'Eos dolores eligendi.', 'https://pagac.net/sunt-animi-praesentium-voluptates-architecto-cupiditate-veniam.html', 15, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(556, 28, 'Non maiores velit.', 'https://glover.info/necessitatibus-omnis-ea-enim.html', 16, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(557, 28, 'Et delectus voluptatem nostrum laborum.', 'http://mcclure.com/adipisci-velit-nostrum-quo-suscipit-dolores-aperiam-quis.html', 17, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(558, 28, 'Et voluptatum facere architecto.', 'http://schultz.com/hic-suscipit-necessitatibus-aut-nisi-nostrum-inventore-dolore', 18, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(559, 28, 'Voluptatem similique rerum facere.', 'http://www.goodwin.com/', 19, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(560, 28, 'Assumenda sit hic.', 'http://waters.biz/illum-necessitatibus-incidunt-ullam-aut-est.html', 20, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(561, 29, 'Odio eius ad omnis voluptas aut.', 'http://www.langworth.com/quasi-quis-occaecati-dolorum-impedit-unde-omnis-explicabo-ut', 1, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(562, 29, 'Natus dolores repellat.', 'https://mueller.com/minus-natus-soluta-soluta-pariatur-et.html', 2, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(563, 29, 'Omnis consectetur eius sit nam.', 'http://www.casper.com/natus-provident-aut-qui.html', 3, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(564, 29, 'Ipsa recusandae doloremque et vitae.', 'http://harris.org/et-aut-sunt-magnam.html', 4, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(565, 29, 'Quod temporibus rerum recusandae minima.', 'http://www.blick.org/libero-cumque-maiores-adipisci-porro.html', 5, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(566, 29, 'Qui et repellendus quis qui nostrum.', 'http://www.prosacco.info/et-et-sint-et-quas-voluptatibus-ut-eos', 6, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(567, 29, 'Incidunt officiis error.', 'https://kerluke.com/cum-illo-est-id-aut-libero.html', 7, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(568, 29, 'Et enim aut quo dolore et.', 'http://www.will.com/et-a-quia-consequatur-sit-deserunt', 8, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(569, 29, 'Sed nostrum vel eius iste.', 'http://www.bednar.com/', 9, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(570, 29, 'Et delectus rerum et.', 'https://effertz.com/alias-culpa-at-esse-corporis-perferendis.html', 10, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(571, 29, 'Rerum voluptas esse culpa quia.', 'http://bahringer.org/magnam-temporibus-fugit-architecto-et-aut-fuga-sit-est.html', 11, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(572, 29, 'Eum quibusdam quis.', 'http://www.morar.com/atque-fugiat-quia-qui-in-sint-explicabo-ea.html', 12, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(573, 29, 'Molestiae veritatis nisi.', 'http://www.bradtke.com/quos-iusto-placeat-vel-magnam-at', 13, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(574, 29, 'Quisquam expedita error iure blanditiis quis.', 'http://wilkinson.com/', 14, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(575, 29, 'Occaecati autem ad dolor voluptatibus exercitationem.', 'http://www.gusikowski.com/', 15, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(576, 29, 'Eum voluptas quia animi quae.', 'http://www.okon.com/veritatis-quaerat-necessitatibus-minus-at.html', 16, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(577, 29, 'Ad amet et.', 'http://runolfsson.org/quis-accusantium-magni-quia-et', 17, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(578, 29, 'Dignissimos pariatur dolorem nulla sit adipisci.', 'http://www.reinger.com/', 18, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(579, 29, 'Eos consequatur libero perspiciatis quo.', 'http://www.jacobi.com/consequatur-quia-iusto-repudiandae-voluptatem-voluptas-eaque.html', 19, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(580, 29, 'Officia est a saepe quisquam nemo.', 'http://www.trantow.net/', 20, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(581, 30, 'Qui omnis rerum.', 'http://moen.com/', 1, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(582, 30, 'Reprehenderit vitae itaque et maiores velit.', 'https://rohan.net/sequi-omnis-eaque-sed-rerum-atque-assumenda-sunt.html', 2, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(583, 30, 'Veritatis quo rerum impedit incidunt ab.', 'http://lang.com/ad-recusandae-est-laborum-temporibus.html', 3, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(584, 30, 'Ut quia non.', 'http://langworth.com/perspiciatis-officia-sit-maiores-rerum', 4, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(585, 30, 'Consequatur tempore fugiat quia ea est.', 'http://howell.com/nulla-illo-voluptas-fugiat-dolor-quis-aut-quia.html', 5, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(586, 30, 'Sed aliquam ea sint.', 'http://www.blanda.com/architecto-nostrum-corporis-non-sed-incidunt-aut', 6, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(587, 30, 'Asperiores dolor ut itaque omnis.', 'http://www.toy.biz/illum-et-veniam-quia-repellendus-voluptas-voluptas-in-adipisci', 7, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(588, 30, 'Non voluptatem iusto sint nemo est.', 'http://stiedemann.com/excepturi-ratione-placeat-rerum-omnis-dolores-deleniti.html', 8, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(589, 30, 'Earum repellat dicta dolorem.', 'https://ziemann.com/ad-autem-excepturi-porro-sit-repellendus.html', 9, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(590, 30, 'Dolores ipsam asperiores itaque.', 'http://ledner.com/aut-et-molestiae-incidunt-aperiam-placeat-est-quidem', 10, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(591, 30, 'Voluptas consequuntur qui dolorum consequatur amet.', 'http://www.marvin.org/', 11, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(592, 30, 'Fugiat veniam est molestiae odit.', 'http://kulas.com/eaque-et-molestiae-inventore.html', 12, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(593, 30, 'Aperiam doloribus quo dolor.', 'http://www.yost.com/', 13, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(594, 30, 'Dolorem error culpa.', 'https://www.friesen.com/rerum-doloremque-voluptatem-ut-magnam-similique-aliquam', 14, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(595, 30, 'Quis et modi est dolor.', 'https://www.medhurst.com/numquam-totam-qui-nihil-dignissimos-facere', 15, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(596, 30, 'Quis sed et enim dolor quaerat.', 'http://connelly.org/', 16, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(597, 30, 'Ea voluptatem tempora aliquam totam.', 'http://www.bogisich.com/ex-debitis-id-aut-quo-vitae-blanditiis-quis-omnis', 17, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(598, 30, 'Eos excepturi est aut.', 'http://mertz.net/doloremque-ut-corrupti-fugit', 18, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(599, 30, 'Eligendi sit voluptas temporibus hic.', 'http://schultz.com/dolore-soluta-est-id-nesciunt-repudiandae', 19, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(600, 30, 'Incidunt voluptatem architecto.', 'http://www.okuneva.com/ipsa-aperiam-quia-voluptate-aspernatur-aut-incidunt-est.html', 20, '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(601, 1, 'Lesson 1', 'Video URL or Text', 1, '2026-02-07 10:52:05', '2026-02-07 10:52:05');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_02_05_165452_add_role_to_users_table', 1),
(5, '2026_02_05_165452_create_courses_table', 1),
(6, '2026_02_05_165453_create_enrollments_table', 1),
(7, '2026_02_05_165453_create_lessons_table', 1),
(8, '2026_02_05_165454_create_reviews_table', 1),
(9, '2026_02_06_091550_create_personal_access_tokens_table', 1),
(10, '2026_02_06_222648_add_image_to_courses_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `rating` tinyint UNSIGNED NOT NULL DEFAULT '5',
  `comment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `course_id`, `rating`, `comment`, `created_at`, `updated_at`) VALUES
(1, 25, 1, 3, 'Eum sint sequi ducimus dolor rerum. Molestias enim reiciendis nesciunt et. Reiciendis ab eum amet ullam voluptatem nesciunt.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(2, 27, 1, 2, 'Sequi dolor necessitatibus ea perferendis. Odit saepe reprehenderit aut libero. Sit ut aut provident.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(3, 4, 2, 1, 'Doloribus officia optio expedita ipsa perferendis eaque. Qui mollitia corrupti repellendus. Rem deleniti veniam et sit eum sunt et minima. Mollitia atque sed possimus vero. Ipsam ipsum quia eius numquam.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(4, 9, 2, 4, 'Est error harum repudiandae et. Temporibus architecto maiores tempore aut. Dolorum dolorem sed et dignissimos dolore beatae a. Est officia molestiae atque natus. Facilis molestiae dolor adipisci voluptas voluptatem modi deleniti.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(5, 29, 2, 5, 'Alias animi voluptatem et et. Repudiandae dolorem et minus ducimus dolores ratione doloribus. Molestiae vel soluta soluta exercitationem ut qui. Eligendi consequuntur enim numquam mollitia ipsa hic accusamus neque.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(6, 17, 3, 4, 'Facere maiores et inventore quaerat nobis quia. Ea soluta alias alias vel rerum. Accusantium et in suscipit voluptatem impedit. Similique optio aut et doloribus et qui sint.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(7, 23, 3, 3, 'Commodi ut sapiente fuga maiores consequuntur asperiores. Veritatis voluptatem veniam veritatis.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(8, 18, 4, 3, 'Tempora sit eos qui sed. Sint eligendi aut adipisci eligendi. Pariatur velit fugiat voluptatem ab itaque.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(9, 22, 4, 4, 'Aperiam impedit tenetur numquam minima rerum eveniet voluptatem blanditiis. Et ut velit quam voluptas nihil iste perspiciatis. Non voluptatem quia magnam voluptas repellendus alias.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(10, 30, 4, 5, 'Reiciendis explicabo ipsa rerum sed perspiciatis. Voluptas et tempora aut non animi voluptas. Ratione iste placeat sed perspiciatis earum culpa. Velit omnis odit reiciendis aut.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(11, 4, 5, 3, 'Et exercitationem laboriosam doloribus nostrum est amet. Qui similique repellat eos cumque tenetur cumque. Enim magni sequi perspiciatis dolor laboriosam voluptatem ut sapiente.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(12, 12, 5, 1, 'Perspiciatis id dolorem veniam aut amet consequatur distinctio. Deserunt aut repellendus assumenda nihil ut. Itaque officia voluptas quos autem omnis.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(13, 16, 5, 5, 'Quasi quaerat aliquam non voluptas eum. Atque aut ea facilis libero cupiditate rerum rerum. Minus nostrum similique explicabo eos similique eum amet adipisci. Delectus laborum sunt sed hic natus.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(14, 29, 5, 5, 'Ut praesentium laboriosam doloremque atque iusto sunt cupiditate. Rerum placeat ex et rerum dignissimos commodi aspernatur. Est aut officiis error minima. Quod consequatur cumque atque praesentium ea et doloremque.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(15, 15, 6, 2, 'Velit nulla natus aliquid qui a reiciendis. Et occaecati eos praesentium tenetur qui expedita harum. Qui ut molestias mollitia odio ex.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(16, 18, 6, 1, 'Quod quas impedit quia sint. Necessitatibus harum distinctio qui accusamus autem. Sed numquam assumenda sit voluptatem nemo voluptatum sed sit.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(17, 13, 7, 3, 'Hic esse molestiae non. Asperiores veniam consectetur repudiandae perferendis animi.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(18, 16, 7, 1, 'Et et natus labore nisi sint. Et ut corporis quia ut suscipit. Nobis sunt animi illo. Quibusdam nobis quisquam praesentium qui. Non vel similique consequuntur.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(19, 19, 7, 5, 'Quam quia voluptatum ullam id quisquam. Eum dolorem qui eveniet. Est voluptas saepe et commodi.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(20, 25, 7, 3, 'Velit consequatur ducimus iusto perspiciatis corrupti rerum culpa. Reiciendis omnis molestiae veniam cupiditate debitis delectus accusantium odit. Ut aperiam sunt dolore corporis blanditiis. Incidunt sunt consequuntur consectetur veritatis.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(21, 4, 8, 2, 'Aut perspiciatis exercitationem veniam quia optio. Aut dolor ut doloremque. Laudantium voluptas mollitia voluptate. Deleniti et omnis neque in.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(22, 11, 8, 5, 'In tenetur aut dolores labore vel quis quae. Eius ut et dolor eos recusandae amet. Nisi rerum dolor et enim natus et voluptatem laboriosam. Eos voluptatibus minus natus aut quia.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(23, 23, 8, 5, 'Quo aperiam non minus. Ut odio iste saepe voluptatibus. Ut dicta iste consequatur officia. Libero minus voluptate placeat quis labore est et dolore.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(24, 27, 8, 1, 'Ducimus nam excepturi unde libero alias. Eligendi possimus asperiores quam sed aut. Corrupti excepturi quae dolore soluta. Tenetur eos voluptas commodi.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(25, 29, 8, 3, 'Odit officiis dolores atque accusantium. Eos iure optio veniam cumque voluptatem. Possimus non aut placeat et. Sint unde dolores debitis corrupti voluptatem sit. Sequi sed id aperiam maxime voluptates ab voluptatem.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(26, 10, 9, 5, 'Voluptatem placeat atque enim sunt porro et. Error aliquam dolorem consequatur suscipit voluptate. Fugiat est aut consectetur.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(27, 15, 9, 4, 'Adipisci earum distinctio voluptatem nisi vel. Qui non et recusandae provident aut incidunt quos. Et consequatur sit repellendus officia sed et. Fugit dicta quo dignissimos sapiente dolore.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(28, 26, 9, 4, 'Sed quia nihil reiciendis illum autem. Qui non occaecati ut deleniti minus. Eos aut sequi dolorem corporis. Fuga et quibusdam voluptas fuga consequatur tempora neque.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(29, 27, 9, 3, 'Neque quos necessitatibus voluptatum architecto quasi et. Voluptates aliquam laudantium molestiae aut quis. Aut ullam aut doloremque.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(30, 29, 9, 2, 'Magni sint adipisci ad. Voluptatem ratione id dolorum sit repudiandae. Id voluptatem repellendus nemo aut sint.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(31, 10, 10, 5, 'Et ratione eveniet occaecati officia doloribus eius. Cum reiciendis incidunt non architecto id. Dicta omnis sint quibusdam nam consequatur officiis odit. Accusantium ab sit cupiditate in qui nesciunt repellendus.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(32, 12, 10, 1, 'Dolores delectus et qui nostrum sunt et deserunt. Modi necessitatibus consequatur tempore accusamus rerum vitae. Perspiciatis mollitia doloremque quod voluptatum. Iure quam nobis non qui.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(33, 14, 10, 2, 'Cupiditate eius deleniti possimus quia. Adipisci voluptas sapiente et. Fugiat laudantium voluptas voluptatibus eligendi tempora et et.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(34, 23, 10, 5, 'Eaque iusto cupiditate vel unde et quia sit. Dicta aperiam aut est esse explicabo ad. Sit sunt quisquam velit. Optio vel et id eos ipsam voluptate.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(35, 26, 10, 5, 'Repudiandae eligendi sed ut atque unde consequatur. Quod doloribus molestiae consequatur doloremque voluptas. Blanditiis minus ratione est consequatur. Deserunt provident harum deleniti optio.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(36, 27, 10, 1, 'Aut qui omnis vel sapiente et. Iure et reprehenderit et natus ad fugit et. Blanditiis sit odit dolorum animi ut harum. Ut veniam quam deleniti neque et.', '2026-02-07 10:25:09', '2026-02-07 10:25:09'),
(37, 10, 11, 2, 'Sed magnam eius nam esse consectetur quaerat magni praesentium. Et ipsa repellat numquam sed perspiciatis veritatis voluptatem. Minus et perferendis veniam sint.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(38, 15, 11, 3, 'Autem reiciendis sapiente ut voluptatum qui nobis esse. Beatae alias voluptatem corrupti beatae. Qui cupiditate voluptate reprehenderit. Non beatae nemo molestiae dicta repudiandae et accusantium.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(39, 16, 11, 2, 'Consequatur sit sit voluptas et. Dolorem ea hic quas qui est sit rerum. Commodi quas ipsa fugit esse. Repellat omnis tempora aut ipsam rerum quibusdam sequi. Consequuntur rerum laborum aperiam sint.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(40, 17, 11, 3, 'Assumenda earum doloremque omnis. Blanditiis in dolorem error ut. Corporis impedit dolore magnam reprehenderit non maxime eos omnis.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(41, 24, 11, 2, 'Consectetur earum architecto labore architecto quo consequatur. Quia itaque qui qui numquam vel dolore. Qui illum iure sunt beatae.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(42, 28, 11, 1, 'Enim officia amet veniam voluptatem fugit. Repellat aut ratione sit libero. A quia sit dicta corrupti quas dolor. Sequi magni fuga aut quo nisi quae commodi.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(43, 17, 12, 1, 'Nesciunt quam nam corporis atque temporibus similique. Possimus molestiae nesciunt velit deserunt in dolorum perferendis. Est maiores accusantium dolor non rerum labore ut. Ut nesciunt aliquam iure aut eveniet.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(44, 24, 12, 3, 'Aut non sed ea ut. Ut est necessitatibus cumque non et beatae. Iusto incidunt explicabo odio.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(45, 25, 12, 1, 'Non vero iure eum velit blanditiis vero a. Amet sunt exercitationem nobis eum unde placeat quis. Assumenda ut blanditiis cupiditate a. Et nisi sed deserunt accusamus.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(46, 4, 13, 4, 'Vel recusandae id amet. Sed sunt eligendi aperiam dolor. Eos quibusdam fugiat sed dolores. Qui sed commodi aut eveniet.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(47, 9, 13, 1, 'Velit recusandae architecto vero. Esse ducimus adipisci sed a saepe. Aut omnis molestias sapiente fugit eos est illo. Provident quisquam maxime quisquam ullam numquam reiciendis sint.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(48, 18, 13, 1, 'Voluptatum iure rerum tenetur veritatis. Rem aut consequatur dolores labore aliquam. Explicabo sed minima recusandae nesciunt est nobis rerum.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(49, 28, 13, 1, 'Dolor architecto ratione numquam vel quia ipsa. Totam numquam optio maiores debitis amet. Ab maxime mollitia omnis consectetur cupiditate.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(50, 12, 14, 3, 'Necessitatibus ipsum explicabo omnis aut porro. Et ut sint quasi aut voluptas ut error est. Optio quia sequi ea voluptatem voluptatem nisi.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(51, 13, 14, 3, 'Animi facilis amet eos consequuntur. Atque tenetur perspiciatis exercitationem. Minus rerum sed inventore autem doloribus eum molestiae. Amet ratione enim error perspiciatis suscipit assumenda vel.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(52, 18, 14, 2, 'Repellendus aut aperiam et. Vitae cumque ad hic aut rem. Libero culpa ipsa et et voluptatem culpa ratione. Tempora quam illum quasi sint qui placeat et.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(53, 21, 14, 5, 'Similique officiis libero culpa consequatur. Suscipit voluptatem qui aut fuga repudiandae aliquid. Doloribus laborum ut ea consectetur earum amet modi. Perferendis dolorem cum adipisci iure quibusdam aut possimus.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(54, 4, 16, 5, 'Doloribus consequatur repellendus amet consectetur blanditiis id. Facilis et provident rerum vitae totam consequatur ea cumque. Qui autem animi explicabo exercitationem illo ut quo. Dolores fuga vel quia similique debitis voluptates.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(55, 17, 16, 2, 'Omnis qui esse aspernatur voluptates cumque consectetur. Alias velit voluptatem dolorum non voluptate. Impedit nam voluptatem delectus doloribus quia minus.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(56, 19, 16, 1, 'Voluptates sequi molestiae est vitae maiores maxime similique. Ipsa doloribus harum cumque blanditiis aut illum voluptatem. Aut quia quo perspiciatis eos impedit.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(57, 20, 16, 5, 'Non repellendus deleniti ea qui. Et laborum sit deleniti voluptatem est illum ut. Id vel modi consequuntur rerum illo odio molestiae. Ut ipsa aut delectus molestiae quasi molestiae voluptas.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(58, 23, 16, 1, 'Voluptatem ab natus itaque est explicabo est quisquam. Officia velit temporibus eos qui. Modi beatae excepturi unde temporibus vero magnam debitis.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(59, 27, 16, 1, 'Perferendis fugiat tempore voluptas in. Ab harum asperiores veritatis sunt voluptatem. In dolorem mollitia cupiditate voluptas.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(60, 28, 16, 5, 'Laudantium unde eum dignissimos ut iure rem consequatur. Qui mollitia ea voluptates beatae molestias consequatur est. Ad est dolores exercitationem aut omnis.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(61, 29, 16, 5, 'Aut soluta necessitatibus aperiam omnis. Dolores dolore porro molestiae. Qui rem assumenda ea voluptas quia. A earum quidem voluptatem maxime pariatur id.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(62, 10, 17, 4, 'Magni nihil fuga ducimus amet odit. Unde et dolorem vel a nulla qui. Maxime culpa qui ut delectus.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(63, 11, 17, 3, 'Quasi et fugiat earum omnis et ipsa sunt qui. Neque sapiente sit dolor reprehenderit nesciunt. Culpa vero consequatur aliquam odio magni eos quis. Officia repellat nemo earum quibusdam laboriosam corrupti dolorem deserunt.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(64, 13, 18, 3, 'Neque temporibus non qui. Ut reprehenderit velit ab ipsum excepturi explicabo dolor. Ratione itaque voluptas omnis aliquam. Mollitia tenetur adipisci sequi voluptatum quisquam. Aspernatur a id qui nemo voluptate ut soluta quam.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(65, 15, 18, 4, 'Nihil vitae nostrum dolorum. Voluptatem est minima impedit. Est rerum autem ea.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(66, 28, 18, 2, 'Architecto quia et eos quo sit voluptatem asperiores a. Sit repellendus ut omnis laboriosam. Ipsa laboriosam et corporis itaque vitae error qui.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(67, 30, 18, 2, 'Dolorem esse sed voluptatem. Natus facere ut nobis. Officia culpa corrupti labore rem dolores architecto.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(68, 5, 19, 5, 'Vitae vero corporis nulla totam numquam et rerum. Suscipit et est accusamus quod reprehenderit soluta ut. Optio non quo rerum suscipit doloremque. Sit molestiae consequatur eum sunt eos.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(69, 30, 19, 2, 'Et ex iusto adipisci vero. Adipisci aliquid dolor quia. Soluta dolore dolorem maiores consectetur rerum necessitatibus ratione.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(70, 23, 20, 1, 'Excepturi facilis ut excepturi quae earum tempore maiores. Et laboriosam et natus ea. Eum id veniam est numquam doloremque vel.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(71, 30, 20, 2, 'Vel quia eveniet ut est voluptatem illo. Omnis qui libero ratione in facere quia at. Voluptas qui dolor cumque qui ex consequatur in. Alias accusantium optio ut doloribus deleniti similique accusamus.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(72, 5, 21, 1, 'Eius hic omnis tenetur nobis mollitia. Consequatur praesentium veritatis vero assumenda. Qui modi vel sunt quis. Voluptatibus totam sit repellendus beatae ea explicabo.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(73, 19, 21, 5, 'Voluptatem earum pariatur nam qui. Ut illo architecto distinctio. Rerum molestiae cumque nesciunt quis dolorum nesciunt. Rerum ut est qui nobis harum placeat.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(74, 21, 21, 1, 'Vel est deserunt optio quos. Voluptas doloremque omnis excepturi ipsum et qui. Dolorem necessitatibus placeat sint nihil quis pariatur. Voluptas ut ut voluptas dolor.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(75, 5, 22, 2, 'Vitae occaecati est tenetur consequatur. Voluptas sit minima accusantium quia quaerat. Distinctio maxime totam consequatur reiciendis.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(76, 9, 22, 1, 'Molestias aut id ratione odio. Corrupti culpa voluptates facere vitae cupiditate voluptas. Consectetur facilis accusantium ea iure et sit ut.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(77, 17, 22, 5, 'Tempore quaerat ut id aut ea. Similique error rem qui aut. Veritatis voluptatibus laboriosam nobis est dolores quia sed aut.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(78, 24, 22, 1, 'Sapiente omnis fugiat et dolores. Qui ut eaque cumque ducimus eum eveniet.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(79, 30, 22, 2, 'Quo omnis qui inventore reprehenderit et. In optio rem quo nihil veritatis explicabo. Aliquid quae qui vitae veritatis.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(80, 5, 23, 5, 'Asperiores aut temporibus quisquam sunt quia aut. Similique harum sit iusto et nihil. Molestias velit praesentium laborum facilis ducimus dolor nisi.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(81, 20, 23, 5, 'Aspernatur voluptatem libero quaerat qui dolore quae. Et omnis quas qui impedit quia culpa et eaque. Vero error est tempore quia. Doloremque nulla error qui esse quia minima eos.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(82, 22, 23, 4, 'Perspiciatis repudiandae molestiae placeat suscipit nemo. Quidem et sit et amet. Sed repudiandae aliquid occaecati modi quibusdam.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(83, 9, 24, 3, 'Ducimus dolorum impedit natus accusamus doloribus maxime. Unde repellat culpa voluptatem sunt molestiae nulla. Rerum consequatur et minus maxime vel voluptatem eius itaque. Totam enim dicta similique sequi.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(84, 15, 24, 1, 'Totam voluptatum ut cupiditate perspiciatis ipsa iste quia. Iure sed accusamus explicabo aut.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(85, 20, 24, 4, 'Unde unde perspiciatis pariatur sit nesciunt. Modi quas nihil fuga vel et. Corporis ab voluptas quo doloremque maxime.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(86, 21, 24, 4, 'A voluptatem molestiae reprehenderit maiores. Et quae ducimus voluptas dolores error. Aliquid et officia blanditiis numquam in quod.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(87, 23, 24, 2, 'Est voluptatum distinctio ipsa ex fugit accusamus. Rerum molestias esse expedita. Quod in dolore est dignissimos tenetur.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(88, 13, 25, 5, 'Explicabo nihil minima pariatur. Aut dolore eum unde voluptate rerum nisi labore incidunt. Aut nisi eos a et cum dolor alias.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(89, 16, 25, 1, 'Quam cum sequi autem sequi est in sapiente. Sit autem tempore minima incidunt ut facilis non. Nobis beatae iusto aut.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(90, 17, 25, 4, 'Qui ipsa laboriosam nihil corporis voluptas. Consequatur odit sed quo dolores rerum. Necessitatibus vel quis veniam nesciunt quod. Cum maxime omnis ut est voluptatem adipisci. Et quos mollitia magnam consequuntur maxime ex.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(91, 20, 25, 1, 'Architecto quia quidem esse consectetur sunt aut dolores. Omnis quia saepe dicta nesciunt deserunt dolores voluptatum. In voluptate eaque aliquam quae commodi dolor. Magnam sint ullam numquam facere aliquid. A architecto et numquam sunt.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(92, 4, 26, 4, 'Qui qui sunt distinctio autem repellendus nesciunt tempora incidunt. Voluptatibus voluptatem ea facilis non ducimus et nostrum. Consequuntur itaque adipisci amet explicabo. Voluptate in dolorum quam commodi perspiciatis suscipit. Id quae ut rerum delectus dignissimos error.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(93, 25, 26, 1, 'Recusandae sit similique ea nostrum eius tempora. Eveniet ea voluptatibus et nihil voluptatibus quia. Atque rerum accusamus aspernatur.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(94, 30, 26, 4, 'Eaque vel nam sunt rerum. Aut alias temporibus numquam mollitia quia qui reiciendis ratione. Fuga dolor et maiores accusantium qui eius. Soluta dolor eos quam ea voluptatibus.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(95, 16, 27, 4, 'Ea ratione qui eum voluptatem. Soluta aut est aut aliquam assumenda accusamus. Non laboriosam rerum soluta aut. Nesciunt perspiciatis tempora ut cum velit esse voluptates voluptatibus. Consequuntur eum ab aliquid esse in fugiat perspiciatis.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(96, 25, 27, 4, 'Aliquam et ut repellendus et repudiandae eius quas sunt. Molestias praesentium sunt iure aliquam molestiae. Et aut ipsum molestiae. Officiis eum aut nisi cumque.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(97, 30, 27, 2, 'Cum est enim quia quibusdam et quis. Quae est dolores assumenda rerum iusto. Nisi odio culpa enim et. Ipsam fugiat quo necessitatibus eum ullam quia placeat.', '2026-02-07 10:25:10', '2026-02-07 10:25:10'),
(98, 4, 28, 5, 'Et accusamus delectus sed aut. Et libero aut magnam. Vel vitae quidem quis.', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(99, 5, 28, 4, 'Eum aut ipsa est quo voluptatem et id. Adipisci qui doloribus natus quasi. Dicta et nostrum excepturi non.', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(100, 11, 28, 2, 'Repellendus totam quisquam reiciendis et. Magnam iusto magnam iste blanditiis hic dolores similique officia. Ab dolor culpa ab ex quis accusantium. Atque voluptatibus pariatur delectus sequi ut.', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(101, 16, 28, 2, 'Voluptatum iste laudantium omnis. Non nobis sequi recusandae numquam qui nostrum temporibus. Cum porro ut quod libero delectus nihil expedita.', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(102, 21, 28, 2, 'Accusamus non et iste repellat ipsum. Neque consequatur deleniti ullam velit accusamus sequi. Ut est ex magni. Alias voluptate a nisi eveniet consectetur nihil quisquam.', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(103, 25, 28, 5, 'Eum est quis qui eum facilis. Provident et veniam exercitationem ex odio alias. Numquam vero illum sed illum voluptatum.', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(104, 26, 28, 5, 'Qui vel est inventore. Dolore quibusdam repudiandae quaerat sed inventore. Tempore aut ea iusto placeat.', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(105, 9, 29, 5, 'Ratione exercitationem culpa nobis suscipit voluptatibus numquam incidunt molestiae. Aut non quidem ut maiores non quae expedita. Sunt esse qui ea non expedita. Illo ad voluptate voluptatem quia qui mollitia maxime.', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(106, 26, 29, 1, 'Quo dolorem voluptates totam. Quis veritatis vero neque explicabo nesciunt optio in. Dolores molestias veniam assumenda facilis id necessitatibus. Hic iure voluptatem non iste magni nobis. Dolorem voluptatem rerum in.', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(107, 11, 30, 1, 'Qui dolorem ut ratione voluptatem expedita. Soluta eveniet magni qui et. Quidem exercitationem dolorum optio qui repellendus rerum. Enim eum aut et quod impedit laudantium possimus.', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(108, 12, 30, 4, 'Corporis aut ipsam quo eveniet saepe harum impedit. Corrupti quia exercitationem dolor voluptate in. Est explicabo et quibusdam cumque dolorum sed fugit. Ut est quibusdam aut rerum perferendis rerum et odit.', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(109, 14, 30, 4, 'Et culpa aliquid voluptatem provident ut adipisci quod tenetur. A officiis animi velit. Natus explicabo minus delectus rerum soluta eos atque. Beatae qui expedita et sequi culpa quaerat quis.', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(110, 16, 30, 2, 'Porro facilis et est eius. Voluptatem repudiandae natus vel exercitationem sunt ut. Nihil ducimus blanditiis distinctio est.', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(111, 18, 30, 1, 'Excepturi iste voluptatibus suscipit ut molestias omnis id. Voluptas nisi modi est pariatur qui nisi. Ut sit iure et dolor delectus blanditiis.', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(112, 20, 30, 4, 'Eum eius laudantium et incidunt. Nemo dicta velit omnis doloremque assumenda quaerat quisquam. Eos eveniet hic quod voluptatem magni maiores.', '2026-02-07 10:25:11', '2026-02-07 10:25:11'),
(113, 30, 30, 1, 'Fuga qui asperiores expedita delectus odit eum eligendi. Et quo cupiditate facilis corporis delectus recusandae. Qui molestiae minus voluptatem error. Ipsum voluptatem voluptates non in adipisci delectus.', '2026-02-07 10:25:11', '2026-02-07 10:25:11');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3YKFRsJEepgtH1kkdV7tdTaYuZmHIp8NSzBOW7ri', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTzE2Vk9yb2JDTXRSdUdrSHJlVVFxMFByUzJNODcxbkdhWjVhUjdWZyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1770482215);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','instructor','student') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'student'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Admin', 'admin@edtech.com', NULL, '$2y$12$Sa/gKgdkgA9ptKWtZSKpi.btqist1nC7rd3zTcWfzmH7s3etvrZhm', NULL, '2026-02-07 10:25:07', '2026-02-07 10:25:07', 'admin'),
(2, 'Instructor One', 'instructor1@edtech.com', NULL, '$2y$12$qX.IO61T2R5Y1fl3CQiRZ.EE3ZrtjNCLxo/Wmlhf8/K1DXbhpLRfq', NULL, '2026-02-07 10:25:07', '2026-02-07 10:25:07', 'instructor'),
(3, 'Instructor Two', 'instructor2@edtech.com', NULL, '$2y$12$L100C5D8dTsf/kWBSN.GPu4JeZFBSP7wwbGkdRxMw3T.eIY5DQ0f.', NULL, '2026-02-07 10:25:07', '2026-02-07 10:25:07', 'instructor'),
(4, 'Student One', 'student1@edtech.com', NULL, '$2y$12$10e0RwuDbP942tomplFt2.LlEG7zpXUWAm/JI0Y739ALvxrbI462G', NULL, '2026-02-07 10:25:08', '2026-02-07 10:25:08', 'student'),
(5, 'Student Two', 'student2@edtech.com', NULL, '$2y$12$JpRREaG2X0.FtwVGUbKSFufbv8Rz15hb/fHNh5icovwdjUFryYgse', NULL, '2026-02-07 10:25:08', '2026-02-07 10:25:08', 'student'),
(6, 'Easton Streich III', 'constance.sanford@example.com', '2026-02-07 10:25:08', '$2y$12$.x/wJLCT0T5BZyhtThkhuuOgTsbMw/cWWOskB1ZjxsDOA9m9TQODu', 'PniYrmO5Vo', '2026-02-07 10:25:09', '2026-02-07 10:25:09', 'instructor'),
(7, 'Allen Considine', 'wmitchell@example.org', '2026-02-07 10:25:09', '$2y$12$.x/wJLCT0T5BZyhtThkhuuOgTsbMw/cWWOskB1ZjxsDOA9m9TQODu', 'BOiv0xijqv', '2026-02-07 10:25:09', '2026-02-07 10:25:09', 'instructor'),
(8, 'Anita Harvey', 'ibeatty@example.com', '2026-02-07 10:25:09', '$2y$12$.x/wJLCT0T5BZyhtThkhuuOgTsbMw/cWWOskB1ZjxsDOA9m9TQODu', '6kSSPlmbB1', '2026-02-07 10:25:09', '2026-02-07 10:25:09', 'instructor'),
(9, 'Halle Tremblay', 'presley76@example.net', '2026-02-07 10:25:09', '$2y$12$.x/wJLCT0T5BZyhtThkhuuOgTsbMw/cWWOskB1ZjxsDOA9m9TQODu', 'dduNRVxdjo', '2026-02-07 10:25:09', '2026-02-07 10:25:09', 'student'),
(10, 'Greyson Tromp', 'maritza84@example.net', '2026-02-07 10:25:09', '$2y$12$.x/wJLCT0T5BZyhtThkhuuOgTsbMw/cWWOskB1ZjxsDOA9m9TQODu', 'DDWvDHD4mL', '2026-02-07 10:25:09', '2026-02-07 10:25:09', 'student'),
(11, 'Sydnie Hauck', 'aurelia.tremblay@example.net', '2026-02-07 10:25:09', '$2y$12$.x/wJLCT0T5BZyhtThkhuuOgTsbMw/cWWOskB1ZjxsDOA9m9TQODu', 'zGFAqj6qpC', '2026-02-07 10:25:09', '2026-02-07 10:25:09', 'student'),
(12, 'Kitty Maggio I', 'bridgette93@example.net', '2026-02-07 10:25:09', '$2y$12$.x/wJLCT0T5BZyhtThkhuuOgTsbMw/cWWOskB1ZjxsDOA9m9TQODu', 'UVaxXgorz3', '2026-02-07 10:25:09', '2026-02-07 10:25:09', 'student'),
(13, 'Dr. Yasmeen Schaden', 'padberg.elmira@example.net', '2026-02-07 10:25:09', '$2y$12$.x/wJLCT0T5BZyhtThkhuuOgTsbMw/cWWOskB1ZjxsDOA9m9TQODu', 'xKUVOZuk6y', '2026-02-07 10:25:09', '2026-02-07 10:25:09', 'student'),
(14, 'Margaret Ritchie PhD', 'jdonnelly@example.com', '2026-02-07 10:25:09', '$2y$12$.x/wJLCT0T5BZyhtThkhuuOgTsbMw/cWWOskB1ZjxsDOA9m9TQODu', 'b09QHHmgNq', '2026-02-07 10:25:09', '2026-02-07 10:25:09', 'student'),
(15, 'Miss Georgianna Rosenbaum', 'howe.joana@example.com', '2026-02-07 10:25:09', '$2y$12$.x/wJLCT0T5BZyhtThkhuuOgTsbMw/cWWOskB1ZjxsDOA9m9TQODu', 'wHHRKtVqOm', '2026-02-07 10:25:09', '2026-02-07 10:25:09', 'student'),
(16, 'Maryjane Blick DVM', 'cristobal55@example.com', '2026-02-07 10:25:09', '$2y$12$.x/wJLCT0T5BZyhtThkhuuOgTsbMw/cWWOskB1ZjxsDOA9m9TQODu', 'gdYztiQMQp', '2026-02-07 10:25:09', '2026-02-07 10:25:09', 'student'),
(17, 'Tristian Balistreri DVM', 'louvenia.mayert@example.org', '2026-02-07 10:25:09', '$2y$12$.x/wJLCT0T5BZyhtThkhuuOgTsbMw/cWWOskB1ZjxsDOA9m9TQODu', '328GyuZWPL', '2026-02-07 10:25:09', '2026-02-07 10:25:09', 'student'),
(18, 'Everett Hoeger', 'rolfson.jamir@example.net', '2026-02-07 10:25:09', '$2y$12$.x/wJLCT0T5BZyhtThkhuuOgTsbMw/cWWOskB1ZjxsDOA9m9TQODu', 'BZdKLuB3L7', '2026-02-07 10:25:09', '2026-02-07 10:25:09', 'student'),
(19, 'Anderson Rippin', 'zboncak.walton@example.net', '2026-02-07 10:25:09', '$2y$12$.x/wJLCT0T5BZyhtThkhuuOgTsbMw/cWWOskB1ZjxsDOA9m9TQODu', 'ubRCjiU9X5', '2026-02-07 10:25:09', '2026-02-07 10:25:09', 'student'),
(20, 'Eulalia Leffler Sr.', 'samanta.adams@example.com', '2026-02-07 10:25:09', '$2y$12$.x/wJLCT0T5BZyhtThkhuuOgTsbMw/cWWOskB1ZjxsDOA9m9TQODu', 'V25FW6JLJ3', '2026-02-07 10:25:09', '2026-02-07 10:25:09', 'student'),
(21, 'Shawna Bartoletti', 'ahowell@example.org', '2026-02-07 10:25:09', '$2y$12$.x/wJLCT0T5BZyhtThkhuuOgTsbMw/cWWOskB1ZjxsDOA9m9TQODu', '0JyrI9anZJ', '2026-02-07 10:25:09', '2026-02-07 10:25:09', 'student'),
(22, 'Buster Schiller', 'lsenger@example.com', '2026-02-07 10:25:09', '$2y$12$.x/wJLCT0T5BZyhtThkhuuOgTsbMw/cWWOskB1ZjxsDOA9m9TQODu', '6S8HKOFBrT', '2026-02-07 10:25:09', '2026-02-07 10:25:09', 'student'),
(23, 'Armand Bradtke', 'oswaldo.denesik@example.org', '2026-02-07 10:25:09', '$2y$12$.x/wJLCT0T5BZyhtThkhuuOgTsbMw/cWWOskB1ZjxsDOA9m9TQODu', '8L2qBM6n0O', '2026-02-07 10:25:09', '2026-02-07 10:25:09', 'student'),
(24, 'Colin Fritsch', 'jamal96@example.net', '2026-02-07 10:25:09', '$2y$12$.x/wJLCT0T5BZyhtThkhuuOgTsbMw/cWWOskB1ZjxsDOA9m9TQODu', 'JztWzhDL7H', '2026-02-07 10:25:09', '2026-02-07 10:25:09', 'student'),
(25, 'Noemie Deckow', 'alex46@example.com', '2026-02-07 10:25:09', '$2y$12$.x/wJLCT0T5BZyhtThkhuuOgTsbMw/cWWOskB1ZjxsDOA9m9TQODu', 'JXhgqGeE1H', '2026-02-07 10:25:09', '2026-02-07 10:25:09', 'student'),
(26, 'Precious Bode', 'lschowalter@example.org', '2026-02-07 10:25:09', '$2y$12$.x/wJLCT0T5BZyhtThkhuuOgTsbMw/cWWOskB1ZjxsDOA9m9TQODu', 'aIhUi4nm9y', '2026-02-07 10:25:09', '2026-02-07 10:25:09', 'student'),
(27, 'Timmothy Herman', 'maya19@example.net', '2026-02-07 10:25:09', '$2y$12$.x/wJLCT0T5BZyhtThkhuuOgTsbMw/cWWOskB1ZjxsDOA9m9TQODu', 'NHZ12lN1Fn', '2026-02-07 10:25:09', '2026-02-07 10:25:09', 'student'),
(28, 'Prof. Abigale Jacobs I', 'scarlett91@example.net', '2026-02-07 10:25:09', '$2y$12$.x/wJLCT0T5BZyhtThkhuuOgTsbMw/cWWOskB1ZjxsDOA9m9TQODu', 'CKinPDYdOP', '2026-02-07 10:25:09', '2026-02-07 10:25:09', 'student'),
(29, 'Reba Dickens', 'nhauck@example.org', '2026-02-07 10:25:09', '$2y$12$.x/wJLCT0T5BZyhtThkhuuOgTsbMw/cWWOskB1ZjxsDOA9m9TQODu', 'YUEWB9S91q', '2026-02-07 10:25:09', '2026-02-07 10:25:09', 'student'),
(30, 'Alf Hartmann', 'dpaucek@example.com', '2026-02-07 10:25:09', '$2y$12$.x/wJLCT0T5BZyhtThkhuuOgTsbMw/cWWOskB1ZjxsDOA9m9TQODu', 'a2OsPzQosy', '2026-02-07 10:25:09', '2026-02-07 10:25:09', 'student'),
(31, 'John Doe', 'john@example.com', NULL, '$2y$12$7L4YIbMJZ9aUx10EcrjG2ughZlhGRQONrBgJ6oZ/lxYnYG4Fjvqhy', NULL, '2026-02-07 10:34:25', '2026-02-07 10:34:25', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_instructor_id_foreign` (`instructor_id`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`user_id`,`course_id`),
  ADD KEY `enrollments_course_id_foreign` (`course_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lessons_course_id_foreign` (`course_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_course_id_foreign` (`course_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=602;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `enrollments_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enrollments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `lessons_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
