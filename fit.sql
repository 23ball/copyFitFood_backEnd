-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 20-05-06 00:52
-- 서버 버전: 10.4.6-MariaDB
-- PHP 버전: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `demo`
--
CREATE DATABASE IF NOT EXISTS `demo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `demo`;

-- --------------------------------------------------------

--
-- 테이블 구조 `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `infos`
--

CREATE TABLE `infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `objective` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 테이블의 덤프 데이터 `infos`
--

INSERT INTO `infos` (`id`, `outline`, `objective`, `created_at`, `updated_at`) VALUES
(2, '2343', '234234', NULL, NULL);

-- --------------------------------------------------------

--
-- 테이블 구조 `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 테이블의 덤프 데이터 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_10_29_102019_create_questions_table', 1),
(4, '2019_10_29_102020_create_comments_table', 1),
(5, '2019_11_14_125110_create_infos_table', 1),
(6, '2019_11_14_125756_create_places_table', 1),
(7, '2019_11_17_052506_create_members_table', 1);

-- --------------------------------------------------------

--
-- 테이블 구조 `places`
--

CREATE TABLE `places` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `place_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `question_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirm_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 테이블의 덤프 데이터 `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `confirm_code`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test@test', NULL, '$2y$10$6X93R91l/L/NjwkNU5bk6ecYYC678STsssHjESO8s0PME.R3/.dmm', 'wYfLYQKVDjcdn8M', NULL, '2019-12-07 18:09:45', '2019-12-07 18:09:45');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_email_foreign` (`user_email`),
  ADD KEY `comments_question_id_index` (`question_id`);

--
-- 테이블의 인덱스 `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `infos`
--
ALTER TABLE `infos`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_user_email_foreign` (`user_email`);

--
-- 테이블의 인덱스 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_confirm_code_unique` (`confirm_code`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `infos`
--
ALTER TABLE `infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 테이블의 AUTO_INCREMENT `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 테이블의 AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 테이블의 AUTO_INCREMENT `places`
--
ALTER TABLE `places`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 덤프된 테이블의 제약사항
--

--
-- 테이블의 제약사항 `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_user_email_foreign` FOREIGN KEY (`user_email`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 테이블의 제약사항 `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_user_email_foreign` FOREIGN KEY (`user_email`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- 데이터베이스: `fit`
--
CREATE DATABASE IF NOT EXISTS `fit` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `fit`;

-- --------------------------------------------------------

--
-- 테이블 구조 `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id2` int(11) NOT NULL,
  `review_id2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `comment`
--

INSERT INTO `comment` (`comment_id`, `comment`, `created_at`, `updated_at`, `user_id2`, `review_id2`) VALUES
(1, 'test_comment01', NULL, NULL, 1, 1),
(2, 'test_comment01', NULL, NULL, 2, 2),
(3, 'test_comment03', NULL, NULL, 3, 3);

-- --------------------------------------------------------

--
-- 테이블 구조 `food`
--

CREATE TABLE `food` (
  `food_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `calorie` float DEFAULT NULL,
  `Carbohydrate` float DEFAULT NULL,
  `protein` float DEFAULT NULL,
  `fat` float DEFAULT NULL,
  `salt` float DEFAULT NULL,
  `Cholesterol` float DEFAULT NULL,
  `Kamium` float DEFAULT NULL,
  `stored_id2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `food`
--

INSERT INTO `food` (`food_id`, `name`, `price`, `calorie`, `Carbohydrate`, `protein`, `fat`, `salt`, `Cholesterol`, `Kamium`, `stored_id2`) VALUES
(455, '간짜장', NULL, 810, 132, 26.08, 23.3, 622, NULL, 563, 53),
(456, '짜장면', NULL, 785, 129.41, 26.81, 19.98, 600, NULL, 803, 29),
(457, '짜장면', NULL, 785, 129.41, 26.81, 19.98, 600, NULL, 803, 37),
(458, '짜장면', NULL, 785, 129.41, 26.81, 19.98, 600, NULL, 803, 53),
(459, '라볶이', NULL, 417, 67.71, 10.32, 13.83, 670, NULL, 678, 17),
(460, '울면', NULL, 706, 108.85, 29.41, 14.5, 1165, NULL, 821, 29),
(461, '칼국수', NULL, 420, 71.74, 16.04, 8.79, 566, NULL, 529, 36),
(462, '칼국수', NULL, 420, 71.74, 16.04, 8.79, 566, NULL, 529, 80),
(463, '카레돈까스', NULL, 552, 53.12, 32.55, 23.91, 614, NULL, 861, 82),
(464, '낙지볶음밥', NULL, 552, 53.12, 32.55, 23.91, 925, NULL, 164, 82),
(465, '통새우볶음밥', NULL, 321, 41.88, 10.95, 11.6, 614, NULL, 861, 82),
(466, '콩국수', NULL, 513, 81.4, 25.01, 10.47, 526, NULL, 794, 36),
(467, '장어덮밥', NULL, 626, 75.16, 33.98, 20.93, 1225, NULL, 763, 47),
(468, '곱창전골', NULL, 332, 20.96, 14.86, 23.54, 469, NULL, 553, 78),
(469, '곱창전골', NULL, 332, 20.96, 14.86, 23.54, 469, NULL, 553, 104),
(470, '곱창전골', NULL, 332, 20.96, 14.86, 23.54, 469, NULL, 553, 104),
(471, '크림 파스타', NULL, 660, 72.59, 22.57, 30.88, 678, NULL, 408, 105),
(472, '쇠고기 스테이크', NULL, 685, 0, 74.23, 40.83, 1015, NULL, 830, 105),
(473, '떡볶이', NULL, 280, 60.42, 6.97, 2.91, 249, NULL, 571, 17),
(474, '잔치국수', NULL, 447, 83.16, 20.78, 3.94, 507, NULL, 560, 36),
(475, '떡볶이', NULL, 280, 60.42, 6.97, 2.91, 249, NULL, 571, 61),
(476, '잔치국수', NULL, 447, 83.16, 20.78, 3.94, 507, NULL, 560, 69),
(477, '잔치국수', NULL, 447, 83.16, 20.78, 3.94, 507, NULL, 560, 80),
(478, '잔치국수', NULL, 447, 83.16, 20.78, 3.94, 507, NULL, 560, 108),
(479, '우동', NULL, 361, 73.62, 11.82, 1.42, 1537, NULL, 177, 29),
(480, '해물칼국수', NULL, 292, 46.37, 14.19, 6.24, 400, NULL, 410, 38),
(481, '들깨칼국수', NULL, 280, 47.67, 11.43, 5.8, 372, NULL, 443, 38),
(482, '물냉면', NULL, 383, 64.58, 16.5, 5.74, 1760, NULL, 244, 40),
(483, '우동', NULL, 361, 73.62, 11.82, 1.42, 1537, NULL, 177, 53),
(484, '물냉면', NULL, 383, 64.58, 16.5, 5.74, 1760, NULL, 244, 56),
(485, '제육볶음', NULL, 572, 31.12, 39.64, 33.08, 832, NULL, 1055, 108),
(486, '우동', NULL, 361, 73.62, 11.82, 1.42, 1537, NULL, 177, 109),
(487, '회냉면', NULL, 531, 86.61, 19.91, 11.59, 1454, NULL, 408, 22),
(488, '짬뽕', NULL, 764, 133.56, 28.79, 12, 1599, NULL, 755, 29),
(489, '즉석떡볶이', NULL, 358, 58.45, 5.92, 11.44, 468, NULL, 324, 30),
(490, '짬뽕', NULL, 764, 133.56, 28.79, 12, 1599, NULL, 755, 37),
(491, '된장찌개', NULL, 176, 16.46, 15.51, 5.83, 2452, NULL, 559, 38),
(492, '두루치기', NULL, 436, 16.62, 32.01, 26.84, 917, NULL, 850, 41),
(493, '짬뽕', NULL, 764, 133.56, 28.79, 12, 1599, NULL, 755, 53),
(494, '멸치국수', NULL, 441, 61.71, 22.1, 11.44, 1331, NULL, 329, 81),
(495, '콩나물국밥', NULL, 445, 90.3, 10.58, 4.38, 1221, NULL, 304, 84),
(496, '콩나물국밥', NULL, 445, 90.3, 10.58, 4.38, 1221, NULL, 304, 95),
(497, '제육덮밥', NULL, 779, 115.13, 29.85, 21.41, 544, NULL, 725, 107),
(498, '닭갈비', NULL, 585, 43.18, 40.2, 26.98, 492, NULL, 612, 107),
(499, '김치볶음밥', NULL, 446, 75.09, 8.75, 12.37, 844, NULL, 520, 108),
(500, '알밥', NULL, 392, 65.21, 20.77, 6.16, 395, NULL, 586, 108),
(501, '감자핫도그', NULL, 419, 31.96, 9.5, 27.93, 729, NULL, 497, 5),
(502, '찜닭', NULL, 385, 31.64, 27.85, 15.39, 627, NULL, 480, 7),
(503, '갈비탕', NULL, 466, 11.63, 33.29, 31.26, 1365, NULL, 807, 22),
(504, '돼지불고기', NULL, 464, 12.74, 30.32, 30.9, 447, NULL, 688, 36),
(505, '육개장', NULL, 165, 10.45, 14.32, 7.57, 720, NULL, 429, 40),
(506, '갈비탕', NULL, 466, 11.63, 33.29, 31.26, 1365, NULL, 807, 40),
(507, '해물된장찌개', NULL, 183, 15.2, 18.57, 5.67, 2227, NULL, 588, 41),
(508, '선지해장국', NULL, 430, 12.01, 49.19, 21.71, 2469, NULL, 1179, 54),
(509, '갈비탕', NULL, 466, 11.63, 33.29, 31.26, 1365, NULL, 807, 56),
(510, '막창', NULL, 601, 5.73, 29.84, 51.59, 1036, NULL, 384, 58),
(511, '어묵탕', NULL, 125, 13.06, 13.11, 2.45, 1225, NULL, 413, 58),
(512, '막창', NULL, 601, 5.73, 29.84, 51.59, 1036, NULL, 384, 61),
(513, '후라이드치킨', NULL, 601, 5.73, 29.84, 51.59, 1036, NULL, 384, 61),
(514, '동태탕', NULL, 158, 12.72, 18.95, 3.61, 638, NULL, 492, 69),
(515, '참치비빔밥', NULL, 583, 81.06, 29.93, 13.81, 549, NULL, 635, 82),
(516, '샐러드', NULL, 184, 10.03, 1.45, 15.68, 274, NULL, 299, 82),
(517, '육개장', NULL, 165, 10.45, 14.32, 7.57, 720, NULL, 429, 82),
(518, '뼈해장국', NULL, 309, 7.94, 38.86, 13.3, 2377, NULL, 640, 84),
(519, '부대찌개', NULL, 626, 41.11, 27.7, 38.55, 2913, NULL, 756, 85),
(520, '깻잎전', NULL, 423, 43.24, 20.85, 18.3, 651, NULL, 468, 94),
(521, '감자전', NULL, 140, 15.03, 1.92, 8.18, 586, NULL, 399, 94),
(522, '콤비네이션피자', NULL, 242, 26.08, 10.7, 10.47, 608, NULL, 182, 105),
(523, '밀면', NULL, 410, 83.48, 6.4, 4.85, 769, NULL, 183, 107),
(524, '떡만둣국', NULL, 442, 68.42, 15, 11.05, 1324, NULL, 271, 108),
(525, '참치비빔밥', NULL, 583, 81.06, 29.93, 13.81, 549, NULL, 635, 108),
(526, '불고기', NULL, 486, 14.77, 48.38, 23.86, 583, NULL, 853, 109);

-- --------------------------------------------------------

--
-- 테이블 구조 `foodeaten`
--

CREATE TABLE `foodeaten` (
  `eaten_id` int(11) NOT NULL,
  `food_image` varchar(255) NOT NULL,
  `entered` datetime NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `user_id2` int(11) NOT NULL,
  `food_id2` int(11) NOT NULL,
  `stored_id2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `nutrient`
--

CREATE TABLE `nutrient` (
  `calorie` float DEFAULT NULL,
  `carbohydrate` float DEFAULT NULL,
  `protein` float DEFAULT NULL,
  `fat` float DEFAULT NULL,
  `salt` float DEFAULT NULL,
  `cholesterol` float DEFAULT NULL,
  `kalium` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `recipe`
--

CREATE TABLE `recipe` (
  `recipe_id` int(11) NOT NULL,
  `recipe` text DEFAULT NULL,
  `food_id2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `star_rating` float NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `image_route` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id2` int(11) NOT NULL,
  `stored_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `store`
--

CREATE TABLE `store` (
  `stored_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gps` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `star_rating` float DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  `model_route` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `store`
--

INSERT INTO `store` (`stored_id`, `name`, `gps`, `address`, `star_rating`, `category`, `model_route`) VALUES
(1, '용쉐프의맛있는하루', NULL, '대구 북구 복현로북2길 23', NULL, '스파게티,파스타전문', './models/1.hdf5'),
(2, '토스트앤후르츠 본점', NULL, '대구 북구 동북로57길 26', NULL, '분식', './models/2.hdf5'),
(3, '굽네치킨 대구복현점', NULL, '대구 북구 복현로 34-1', NULL, '치킨,닭강정', './models/3.hdf5'),
(4, '여부초밥', NULL, '대구 북구 복현로 22', NULL, '초밥,롤', './models/4.hdf5'),
(5, '명랑핫도그 영진전문대점', NULL, '대구 북구 복현로 25-1', NULL, '핫도그', './models/5.hdf5'),
(6, '본가옛날통닭 복현점', NULL, '대구 북구 복현로 30-1', NULL, '치킨,닭강정', './models/6.hdf5'),
(7, '맘스터치 영진전문대점', NULL, '대구 북구 복현로 31', NULL, '치킨,닭강정', './models/7.hdf5'),
(8, '블랙디어 카페&펍', NULL, '대구 북구 복현로 23', NULL, '카페,디저트', './models/8.hdf5'),
(9, '복현동커피', NULL, '대구 북구 복현로 26', NULL, '카페,디저트', './models/9.hdf5'),
(10, '한솥도시락 영진전문대정문점', NULL, '대구 북구 복현로 38', NULL, '도시락,컵밥', './models/10.hdf5'),
(11, '홍대함바그 영진점', NULL, '대구 북구 복현로 33-1', NULL, '양식', './models/11.hdf5'),
(12, '더오니기리 영진전문대점', NULL, '대구 북구 복현로 31', NULL, '오니기리', './models/12.hdf5'),
(13, '홍고추불닭발 복현동', NULL, '대구 북구 복현로 36', NULL, '닭발', './models/13.hdf5'),
(14, '포레스트', NULL, '대구 북구 복현로 29-1', NULL, '카페,디저트', './models/14.hdf5'),
(15, '오태식해바라기치킨 대구복현점', NULL, '대구 북구 복현로 33', NULL, '치킨,닭강정', './models/15.hdf5'),
(16, '반반다방', NULL, '대구 북구 복현로 27', NULL, '카페,디저트', './models/16.hdf5'),
(17, '신참떡볶이 영진전문대점', NULL, '대구 북구 복현로 38', NULL, '분식', './models/17.hdf5'),
(18, '카페봄봄 영진전문대점', NULL, '대구 북구 복현로 33-2', NULL, '카페', './models/18.hdf5'),
(19, '치킨파티 복현점', NULL, '대구 북구 복현로 18', NULL, '치킨,닭강정', './models/19.hdf5'),
(20, '김밥파는사람들 영진전문대점', NULL, '대구 북구 복현로 33', NULL, '한식', './models/20.hdf5'),
(21, '홍춘천치즈닭갈비 복현점', NULL, '대구 북구 동북로 291', NULL, '닭갈비', './models/21.hdf5'),
(22, '교동면옥 복현점', NULL, '대구 북구 동북로 303-1', NULL, '냉면', './models/22.hdf5'),
(23, '왓쇼이', NULL, '대구 북구 복현로 7', NULL, '일식당', './models/23.hdf5'),
(24, '이화수전통육개장 대구복현점', NULL, '대구 북구 동북로 289', NULL, '찌개,전골', './models/24.hdf5'),
(25, '자연숯불갈비', NULL, '대구 북구 동북로 307', NULL, '육류,고기요리', './models/25.hdf5'),
(26, '맥도날드 대구복현DT점', NULL, '대구 북구 동북로 303', NULL, '햄버거', './models/26.hdf5'),
(27, 'ASO cafe', NULL, '대구 북구 복현로 3', NULL, '카페,디저트', './models/27.hdf5'),
(28, '디저트먹는날디데이', NULL, '대구 북구 복현로 10', NULL, '카페,디저트', './models/28.hdf5'),
(29, '석수반점', NULL, '대구 북구 동북로57길 7', NULL, '중식당', './models/29.hdf5'),
(30, '단짝즉석떡볶이', NULL, '대구 북구 동북로57길 10', NULL, '떡볶이', './models/30.hdf5'),
(31, '작은이태리', NULL, '대구 북구 복현로 3-2', NULL, '양식', './models/31.hdf5'),
(32, '삼겹사랑복현점', NULL, '대구 북구 동북로 299', NULL, '돼지고기구이', './models/32.hdf5'),
(33, '파리바게뜨 대구복현점', NULL, '대구 북구 동북로 291', NULL, '베이커리', './models/33.hdf5'),
(34, '집밥한끼', NULL, '대구 북구 동북로57길 7', NULL, '한식', './models/34.hdf5'),
(35, '꾸꼬뽀꼬숯불양념치킨', NULL, '대구 북구 동북로57길 2', NULL, '치킨,닭강정', './models/35.hdf5'),
(36, '손칼국수명가 복현점', NULL, '대구 북구 동북로57길 5', NULL, '국수', './models/36.hdf5'),
(37, '오늘은짬뽕이땡기는날', NULL, '대구 북구 동북로 290', NULL, '중식당', './models/37.hdf5'),
(38, '손맛집', NULL, '대구 동구 경대로 148', NULL, '한식', './models/38.hdf5'),
(39, '대연루 복현점', NULL, '대구 북구 복현로 18', NULL, '중식당', './models/39.hdf5'),
(40, '뚝불', NULL, '대구 북구 동북로57길 6-1', NULL, '한식', './models/40.hdf5'),
(41, '서울식당', NULL, '대구 북구 동북로 271', NULL, '한식', './models/41.hdf5'),
(43, '369차차 복현점', NULL, '대구 북구 동북로 265-1', NULL, '맥주,호프', './models/43.hdf5'),
(44, '카페데코믹스 대구점', NULL, '대구 북구 동북로 276', NULL, '카페', './models/44.hdf5'),
(45, '교촌치킨 복현1호점', NULL, '대구 북구 동북로 282', NULL, '치킨,닭강정', './models/45.hdf5'),
(46, '싱싱산오징어', NULL, '대구 북구 동북로 282', NULL, '생선회', './models/46.hdf5'),
(47, '정동진', NULL, '대구 북구 동북로 279', NULL, '생선회', './models/47.hdf5'),
(48, '피자알볼로 복현점', NULL, '대구 북구 동북로 265-1', NULL, '피자', './models/48.hdf5'),
(49, '찐한부산돼지국밥', NULL, '대구 북구 동북로 275', NULL, '국밥', './models/49.hdf5'),
(50, '본죽 대구복현동점', NULL, '대구 북구 동북로 280', NULL, '죽', './models/50.hdf5'),
(51, '김희예만두수작', NULL, '대구 북구 동북로 271', NULL, '만두', './models/51.hdf5'),
(52, '수야모커피', NULL, '대구 북구 동북로 268', NULL, '카페', './models/52.hdf5'),
(53, '해성', NULL, '대구 북구 동북로 269', NULL, '중식당', './models/53.hdf5'),
(54, '뼈큰청진동해장국 복현점', NULL, '대구 북구 동북로 272', NULL, '한식', './models/54.hdf5'),
(55, '다원카페', NULL, '대구 북구 경진로1길 79', NULL, '카페,디저트', './models/55.hdf5'),
(56, '청담면옥복현점', NULL, '대구 북구 동북로 281', NULL, '한식', './models/56.hdf5'),
(57, '전주꼬부리콩나물국밥 복현직영점', NULL, '대구 북구 동북로 286', NULL, '국밥', './models/57.hdf5'),
(58, '통큰총각', NULL, '대구 북구 동북로 282', NULL, '백반,가정식', './models/58.hdf5'),
(59, '불스떡볶이 복현점', NULL, '대구 북구 동북로58길 3', NULL, '분식', './models/59.hdf5'),
(60, '전주콩나물해장국밥', NULL, '대구 북구 동북로 271', NULL, '국밥', './models/60.hdf5'),
(61, '큐브30', NULL, '대구 북구 동북로 261', NULL, '한식', './models/61.hdf5'),
(64, '프라이스커피', NULL, '대구 북구 동북로52길 3', NULL, '테이크아웃커피', './models/64.hdf5'),
(65, '호식이두마리치킨 복현점', NULL, '대구 북구 경진로1길 47', NULL, '치킨,닭강정', './models/65.hdf5'),
(66, '멕시카나치킨 복현점', NULL, '대구 북구 경진로1길 49', NULL, '치킨,닭강정', './models/66.hdf5'),
(68, '양팀장김밥 복현점', NULL, '대구 북구 동북로 263', NULL, '종합분식', './models/68.hdf5'),
(69, '정민네', NULL, '대구 북구 경진로1길 47', NULL, '한식', './models/69.hdf5'),
(70, '묵은지19금닭', NULL, '대구 북구 경진로1길 55', NULL, '찜닭', './models/70.hdf5'),
(71, '서민보쌈', NULL, '대구 북구 경진로1길 55', NULL, '국밥', './models/71.hdf5'),
(72, '영숙이네코다리찜', NULL, '대구 북구 경진로1길 57', NULL, '아귀찜,해물찜', './models/72.hdf5'),
(73, '파리바게뜨 대구영진점', NULL, '대구 북구 동북로 244', NULL, '베이커리', './models/73.hdf5'),
(74, '코리안숯불닭바베큐 복현점', NULL, '대구 북구 동북로 264-2', NULL, '치킨,닭강정', './models/74.hdf5'),
(75, '이가네한식뷔페', NULL, '대구 북구 동북로 265', NULL, '뷔페', './models/75.hdf5'),
(76, '진배기할매국밥 복현점', NULL, '대구 북구 동북로 264', NULL, '순대,순댓국', './models/76.hdf5'),
(77, '꼴까닭', NULL, '대구 북구 경진로1길 43', NULL, '치킨,닭강정', './models/77.hdf5'),
(78, '만금식당', NULL, '대구 북구 경진로1길 43', NULL, '한식', './models/78.hdf5'),
(79, '삼화푸드몰', NULL, '대구 북구 동북로 246', NULL, '종합분식', './models/79.hdf5'),
(80, '복현국시집', NULL, '대구 북구 경진로1길 55', NULL, '국수', './models/80.hdf5'),
(81, '숨쉬는항아리보쌈', NULL, '대구 북구 공항로 10-12', NULL, '족발,보쌈', './models/81.hdf5'),
(82, '밥풀 도시락', NULL, '대구 북구 동북로 244', NULL, '도시락,컵밥', './models/82.hdf5'),
(83, '네네치킨 복현검단점', NULL, '대구 북구 경진로1길 31', NULL, '치킨,닭강정', './models/83.hdf5'),
(84, '전주콩나물해장국', NULL, '대구 북구 경진로1길 29', NULL, '해장국', './models/84.hdf5'),
(85, '신바람 야시장', NULL, '대구 북구 경진로1길 35-1', NULL, '한식', './models/85.hdf5'),
(86, '풍류주점', NULL, '대구 북구 동북로 240', NULL, '유흥주점', './models/86.hdf5'),
(87, '김경옥닭발', NULL, '대구 북구 동북로 232', NULL, '닭발', './models/87.hdf5'),
(88, '흑곰s', NULL, '대구 북구 경진로1길 37', NULL, '퓨전음식', './models/88.hdf5'),
(89, '별별치킨 복현점', NULL, '대구 북구 동북로 232', NULL, '치킨,닭강정', './models/89.hdf5'),
(91, '바다애산오징어', NULL, '대구 북구 동북로 232-1', NULL, '낙지요리', './models/91.hdf5'),
(92, '모나코카페', NULL, '대구 북구 동북로 223', NULL, '카페', './models/92.hdf5'),
(93, '북성로우동불고기포차', NULL, '대구 북구 동북로 232-1', NULL, '생선회', './models/93.hdf5'),
(94, '꿀막걸리', NULL, '대구 북구 경진로1길 35', NULL, '전통,민속주점', './models/94.hdf5'),
(95, '잔칫날', NULL, '대구 북구 동북로 240', NULL, '한식', './models/95.hdf5'),
(96, '대구생막창', NULL, '대구 북구 동북로 232', NULL, '곱창,막창,양', './models/96.hdf5'),
(97, '돈낭자꿀맛족발보쌈 북구점', NULL, '대구 북구 동북로 244', NULL, '족발,보쌈', './models/97.hdf5'),
(98, '코코노래클럽주점', NULL, '대구 북구 경진로1길 35-1', NULL, '요리주점', './models/98.hdf5'),
(99, '김대감생고기육회', NULL, '대구 북구 경진로1길 37', NULL, '육류,고기요리', './models/99.hdf5'),
(100, '동경노래방식주점', NULL, '대구 북구 경진로1길 35', NULL, '유흥주점', './models/100.hdf5'),
(101, '포크팬', NULL, '대구 북구 동북로 219', NULL, '고기뷔페', './models/101.hdf5'),
(102, '싱글벙글 막창 전문점', NULL, '대구 북구 경진로1길 13', NULL, '곱창,막창,양', './models/102.hdf5'),
(103, '플랫헤이', NULL, '대구 북구 대학로 153', NULL, '카페,디저트', './models/103.hdf5'),
(104, '퇴근길생고기 복현점', NULL, '대구 북구 동북로 218', NULL, '육류,고기요리', './models/104.hdf5'),
(105, '라라코스트 복현점', NULL, '대구 북구 검단로 5', NULL, '패밀리레스토랑', './models/105.hdf5'),
(106, '우리동네통삼겹숯불갈비 본점', NULL, '대구 북구 동북로 212', NULL, '돼지고기구이', './models/106.hdf5'),
(107, '김민성I\'m넙띠기돈까스 복현오거리점', NULL, '대구 북구 동북로 197', NULL, '돈가스', './models/107.hdf5'),
(108, '학교식당(본관)', NULL, '', NULL, '', './models/108.hdf5'),
(109, '밥스', NULL, '', NULL, '', './models/109.hdf5');

-- --------------------------------------------------------

--
-- 테이블 구조 `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `height` float NOT NULL,
  `weight` float NOT NULL,
  `gender` char(1) NOT NULL,
  `character image` varchar(255) DEFAULT NULL,
  `character color` char(7) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`, `birthday`, `height`, `weight`, `gender`, `character image`, `character color`, `created_at`, `updated_at`) VALUES
(1, 'test1', 'test1@example.com', 'test1', '2020-04-11', 180, 77.7, 'M', NULL, NULL, NULL, NULL),
(2, 'test2', 'test2@example.com', 'test2', '2020-03-11', 160, 55.5, 'F', NULL, NULL, NULL, NULL),
(3, 'test3', 'test3@example.com', 'test3', '2020-02-11', 166.6, 60, 'F', NULL, NULL, NULL, NULL);

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `comment_review_foreign` (`review_id2`),
  ADD KEY `comment_users_foreign` (`user_id2`);

--
-- 테이블의 인덱스 `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`food_id`);

--
-- 테이블의 인덱스 `foodeaten`
--
ALTER TABLE `foodeaten`
  ADD PRIMARY KEY (`eaten_id`),
  ADD KEY `foodeaten_users_foreign` (`user_id2`),
  ADD KEY `foodeaten_food_foreign` (`food_id2`),
  ADD KEY `foodeaten_store_foreign` (`stored_id2`);

--
-- 테이블의 인덱스 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`recipe_id`);

--
-- 테이블의 인덱스 `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `review_users_foreign` (`user_id2`),
  ADD KEY `review_store_foreign` (`stored_id`);

--
-- 테이블의 인덱스 `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`stored_id`);

--
-- 테이블의 인덱스 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 테이블의 AUTO_INCREMENT `food`
--
ALTER TABLE `food`
  MODIFY `food_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=527;

--
-- 테이블의 AUTO_INCREMENT `foodeaten`
--
ALTER TABLE `foodeaten`
  MODIFY `eaten_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 테이블의 AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 테이블의 AUTO_INCREMENT `store`
--
ALTER TABLE `store`
  MODIFY `stored_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- 테이블의 AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 덤프된 테이블의 제약사항
--

--
-- 테이블의 제약사항 `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_review_foreign` FOREIGN KEY (`review_id2`) REFERENCES `review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_users_foreign` FOREIGN KEY (`user_id2`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 테이블의 제약사항 `foodeaten`
--
ALTER TABLE `foodeaten`
  ADD CONSTRAINT `foodeaten_food_foreign` FOREIGN KEY (`food_id2`) REFERENCES `food` (`food_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foodeaten_store_foreign` FOREIGN KEY (`stored_id2`) REFERENCES `store` (`stored_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foodeaten_users_foreign` FOREIGN KEY (`user_id2`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 테이블의 제약사항 `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_store_foreign` FOREIGN KEY (`stored_id`) REFERENCES `store` (`stored_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `review_users_foreign` FOREIGN KEY (`user_id2`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- 데이터베이스: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- 테이블의 덤프 데이터 `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'fit.sql', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"comment\",\"food\",\"foodeaten\",\"migrations\",\"nutrient\",\"recipe\",\"review\",\"store\",\"users\"],\"table_structure[]\":[\"comment\",\"food\",\"foodeaten\",\"migrations\",\"nutrient\",\"recipe\",\"review\",\"store\",\"users\"],\"table_data[]\":[\"comment\",\"food\",\"foodeaten\",\"migrations\",\"nutrient\",\"recipe\",\"review\",\"store\",\"users\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"@TABLE@ 테이블 구조\",\"latex_structure_continued_caption\":\"@TABLE@ 테이블 구조 (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- 테이블의 덤프 데이터 `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"fit\",\"table\":\"food\"},{\"db\":\"fit\",\"table\":\"store\"}]');

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- 테이블의 덤프 데이터 `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-05-05 22:49:13', '{\"lang\":\"ko\",\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- 테이블의 인덱스 `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- 테이블의 인덱스 `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- 테이블의 인덱스 `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- 테이블의 인덱스 `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- 테이블의 인덱스 `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- 테이블의 인덱스 `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- 테이블의 인덱스 `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- 테이블의 인덱스 `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- 테이블의 인덱스 `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- 테이블의 인덱스 `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- 테이블의 인덱스 `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- 테이블의 인덱스 `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- 테이블의 인덱스 `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- 테이블의 인덱스 `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- 테이블의 인덱스 `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- 테이블의 인덱스 `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- 테이블의 인덱스 `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 테이블의 AUTO_INCREMENT `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 데이터베이스: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
