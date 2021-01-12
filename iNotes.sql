-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 12, 2021 at 02:45 PM
-- Server version: 8.0.22-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iNotes`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_01_09_022802_create_notes_table', 1),
(5, '2021_01_09_023359_create_note_types_table', 1),
(6, '2021_01_09_024614_pkfk_note_types_to_notes', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `title`, `content`, `type_id`, `created_at`, `updated_at`) VALUES
(17, 'NHÂM NHI TẾT TÂN SỬU 2021', 'Cứ thấy miền Bắc chuyển mưa phùn lắc rắc, \r\nmiền Trung đón gió se se, miền Nam mây trắng nắng tràn, \r\ncây trổ lộc biếc, trăm hoa khoe sắc, ấy là trời vào xuân. \r\nThoảng trong gió nghe mùi náo nức, nồi bánh chưng lục bục, \r\ntiếng còi tàu hồi hương, người người ngóng dịp đoàn viên.\r\nA Tết! Tết về!', 13, '2021-01-10 02:08:04', '2021-01-10 02:08:04'),
(18, 'HÀNG RONG VÀ TIẾNG RAO HÀNG HÀ NỘI', 'Đây là một cuốn sách thật đặc biệt.\r\nMột cuốn du kí ngược thời gian.\r\nNó gói gọn một Hà Nội thu nhỏ với đặc sản văn hóa không thể trộn lẫn.\r\nĐó là những gánh hàng rong, những tiếng rao hàng của Hà Nội đầu thế kỉ XX.', 14, '2021-01-10 02:09:22', '2021-01-10 02:09:22'),
(19, 'KINH NGHIỆM TỪ NƯỚC NHẬT', 'Cuốn sách “Giải quyết những trở ngại trong học tập” được viết bởi tác giả là những sinh viên đang theo học đại học, \r\nbật mí cho các bạn học sinh trung học cơ sở và trung học phổ thông cách giải quyết 40 vấn đề thường gặp trong học \r\ntập và cuộc sống thường ngày, từ chuyện thi cử.\r\nPhương pháp học, cho đến chuyện “yêu thầm nhớ trộm” hay định hướng tương lai.', 15, '2021-01-10 02:10:23', '2021-01-10 02:10:23'),
(20, 'GIÚP CON TỰ LẬP TỪ 0-6 TUỔI', 'Những thói quen sinh hoạt cơ bản được dạy ở gia đình và trường mầm non\r\nĐiều quan trọng nhất trong nuôi  dạy  trẻ  trước  6  tuổi  là làm cho trẻ có thói quen sinh hoạt cơ bản. \r\nCha mẹ thường có  xu  hướng  so  sánh  con mình với những đứa trẻ khác ở mặt này mặt kia. \r\nTuy nhiên, việc đó sẽ chỉ làm cho cha mẹ và con cái thêm căng thẳng.', 14, '2021-01-10 02:18:25', '2021-01-10 02:36:27'),
(21, 'BỈ VỎ', '“Bỉ vỏ” là tiểu thuyết đầu tay gây tiếng vang lớn của nhà văn Nguyên Hồng, được Tự Lực Văn Đoàn tặng giải Nhì năm 1937.', 13, '2021-01-10 02:19:11', '2021-01-10 02:19:11'),
(22, 'NHỮNG NGÀY THƠ ẤU', 'Những ngày thơ ấu mà Nguyên Hồng kể lại , \r\ntôi không muốn biết là có nên hay không, \r\ntôi chỉ thấy trong những kỉ niệm cứ đau đớn ấy sự rung động cực điểm của một tâm hồn trẻ dại, \r\nlạc loài trong những lề lối khắc nghiệt của một gia đình sắp tàn.', 15, '2021-01-10 02:19:56', '2021-01-10 02:36:14');

-- --------------------------------------------------------

--
-- Table structure for table `note_types`
--

CREATE TABLE `note_types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `note_types`
--

INSERT INTO `note_types` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(13, 'Ghi chú đầu trang', 'Ghi chú đầu trang để cung cấp liên kết đến nội dung Wikipedia khác, chẳng hạn như các định nghĩa khác của tiêu đề, cụm từ hoặc từ.', '2021-01-10 01:59:31', '2021-01-10 02:01:29'),
(14, 'Viết tắt quy định', 'Bản mẫu này nên được sử dụng thay cho bản mẫu {{viết tắt}} chuẩn trong các phần riêng lẻ của các trang quy định mà người đọc được chuyển hướng mà không thấy thông báo {{quy định}} ở đầu trang.', '2021-01-10 02:01:21', '2021-01-10 02:01:21'),
(15, 'Chú thích nguồn gốc', 'Thông tin có thể dễ dàng được viết ra mà không cần sử dụng mẫu.', '2021-01-10 02:03:14', '2021-01-10 02:03:14');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_type_id_foreign` (`type_id`);

--
-- Indexes for table `note_types`
--
ALTER TABLE `note_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `note_types`
--
ALTER TABLE `note_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `note_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
