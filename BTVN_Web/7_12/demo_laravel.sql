-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 13, 2024 lúc 05:50 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `demo_laravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `grade_level` enum('Pre-K','Kindergarten') NOT NULL,
  `room_number` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `classes`
--

INSERT INTO `classes` (`id`, `grade_level`, `room_number`, `created_at`, `updated_at`) VALUES
(1, 'Pre-K', 'culpa4', '2024-12-08 18:49:16', '2024-12-08 18:49:16'),
(2, 'Kindergarten', 'nemo10', '2024-12-08 18:49:16', '2024-12-08 18:49:16'),
(3, 'Kindergarten', 'voluptatibus7', '2024-12-08 18:49:16', '2024-12-08 18:49:16'),
(4, 'Pre-K', 'tempora2', '2024-12-08 18:49:16', '2024-12-08 18:49:16'),
(5, 'Kindergarten', 'rerum2', '2024-12-08 18:49:16', '2024-12-08 18:49:16'),
(6, 'Pre-K', 'numquam8', '2024-12-08 18:49:16', '2024-12-08 18:49:16'),
(7, 'Kindergarten', 'voluptatibus9', '2024-12-08 18:49:16', '2024-12-08 18:49:16'),
(8, 'Pre-K', 'non1', '2024-12-08 18:49:16', '2024-12-08 18:49:16'),
(9, 'Pre-K', 'et3', '2024-12-08 18:49:16', '2024-12-08 18:49:16'),
(10, 'Pre-K', 'facilis2', '2024-12-08 18:49:16', '2024-12-08 18:49:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `computers`
--

CREATE TABLE `computers` (
  `id` int(10) UNSIGNED NOT NULL,
  `computer_name` varchar(50) NOT NULL,
  `model` varchar(100) NOT NULL,
  `operating_system` varchar(50) NOT NULL,
  `processor` varchar(50) NOT NULL,
  `memory` int(11) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `computers`
--

INSERT INTO `computers` (`id`, `computer_name`, `model`, `operating_system`, `processor`, `memory`, `available`, `created_at`, `updated_at`) VALUES
(1, 'et-100', 'Bailey PLC necessitatibus', 'Windows 10 Pro', 'Intel Core i7-10700', 21, 1, '2024-12-08 18:51:08', '2024-12-08 18:51:08'),
(2, 'porro-69', 'Jones PLC beatae', 'Ubuntu 20.04', 'AMD Ryzen 7', 33, 1, '2024-12-08 18:51:08', '2024-12-08 18:51:08'),
(3, 'rem-1', 'Lang-West saepe', 'Windows 11', 'AMD Ryzen 7', 51, 1, '2024-12-08 18:51:08', '2024-12-08 18:51:08'),
(4, 'vitae-63', 'Leuschke and Sons ipsam', 'Windows 10 Pro', 'Intel Core i5-11499', 34, 0, '2024-12-08 18:51:08', '2024-12-08 18:51:08'),
(5, 'et-14', 'Kertzmann, Ledner and Weber commodi', 'Windows 10 Pro', 'Intel Core i7-10700', 54, 0, '2024-12-08 18:51:08', '2024-12-08 18:51:08'),
(6, 'omnis-72', 'Koss Inc recusandae', 'Windows 10 Pro', 'Intel Core i5-11499', 23, 0, '2024-12-08 18:51:08', '2024-12-08 18:51:08'),
(7, 'sit-12', 'Monahan-Conroy corrupti', 'Ubuntu 20.04', 'Intel Core i7-10700', 29, 0, '2024-12-08 18:51:08', '2024-12-08 18:51:08'),
(8, 'dignissimos-21', 'Rutherford, Boyer and Price debitis', 'Windows 10 Pro', 'Intel Core i5-11499', 43, 1, '2024-12-08 18:51:08', '2024-12-08 18:51:08'),
(9, 'esse-58', 'West Group quo', 'Windows 11', 'Intel Core i5-11499', 21, 1, '2024-12-08 18:51:08', '2024-12-08 18:51:08'),
(10, 'assumenda-61', 'Predovic Ltd nam', 'Windows 10 Pro', 'Intel Core i5-11499', 61, 0, '2024-12-08 18:51:08', '2024-12-08 18:51:08'),
(11, 'amet-8', 'Glover LLC odit', 'Ubuntu 20.04', 'Intel Core i7-10700', 27, 1, '2024-12-08 18:51:08', '2024-12-08 18:51:08'),
(12, 'saepe-39', 'Murray, Volkman and Fritsch et', 'Windows 10 Pro', 'AMD Ryzen 7', 17, 1, '2024-12-08 18:51:08', '2024-12-08 18:51:08'),
(13, 'nihil-5', 'Dooley-Satterfield mollitia', 'Windows 10 Pro', 'AMD Ryzen 7', 48, 1, '2024-12-08 18:51:08', '2024-12-08 18:51:08'),
(14, 'corrupti-49', 'Schoen, Schoen and Koss accusantium', 'Windows 11', 'Intel Core i7-10700', 36, 1, '2024-12-08 18:51:08', '2024-12-08 18:51:08'),
(15, 'doloribus-75', 'Yundt, Stanton and Witting et', 'Windows 11', 'AMD Ryzen 7', 26, 1, '2024-12-08 18:51:08', '2024-12-08 18:51:08'),
(16, 'consectetur-96', 'Pfannerstill-Luettgen nobis', 'Ubuntu 20.04', 'AMD Ryzen 7', 64, 1, '2024-12-08 18:51:08', '2024-12-08 18:51:08'),
(17, 'velit-98', 'Littel, Lehner and Ankunding harum', 'Windows 11', 'Intel Core i5-11499', 25, 1, '2024-12-08 18:51:08', '2024-12-08 18:51:08'),
(18, 'necessitatibus-16', 'Bednar, Douglas and Bartell dolorem', 'Windows 11', 'Intel Core i7-10700', 26, 1, '2024-12-08 18:51:08', '2024-12-08 18:51:08'),
(19, 'sint-73', 'Batz-Gorczany quae', 'Ubuntu 20.04', 'Intel Core i7-10700', 52, 1, '2024-12-08 18:51:08', '2024-12-08 18:51:08'),
(20, 'hic-60', 'Kuhlman, Kshlerin and Altenwerth quae', 'Windows 11', 'Intel Core i7-10700', 36, 0, '2024-12-08 18:51:08', '2024-12-08 18:51:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `issues`
--

CREATE TABLE `issues` (
  `id` int(10) UNSIGNED NOT NULL,
  `computer_id` int(10) UNSIGNED NOT NULL,
  `reported_by` varchar(58) DEFAULT NULL,
  `reported_date` datetime NOT NULL,
  `description` text NOT NULL,
  `urgency` enum('Low','Medium','High') NOT NULL,
  `status` enum('Open','In Progress','Resolved') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `issues`
--

INSERT INTO `issues` (`id`, `computer_id`, `reported_by`, `reported_date`, `description`, `urgency`, `status`, `created_at`, `updated_at`) VALUES
(1, 19, 'Prof. Julian Satterfield', '2024-11-15 08:35:10', 'Quo iusto ut ducimus soluta. Recusandae rem dolore facere. Suscipit similique quidem delectus alias. Reiciendis ab eos sit porro non.', 'Medium', 'Resolved', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(2, 4, 'Berry Lubowitz III', '2024-11-20 04:56:15', 'Libero aut debitis et quod labore rerum eaque et. Ea illum eligendi non quo rem. Dolorem eius quae dicta modi mollitia. Possimus necessitatibus dolores debitis nihil expedita odit.', 'Low', 'In Progress', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(3, 1, 'Eleanore Kessler', '2024-11-09 12:15:06', 'Animi eius fugit similique sint aperiam. Officia harum fugit impedit hic modi et ex. Fuga voluptatem eaque ipsam est sit qui dolor accusantium.', 'Low', 'Resolved', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(4, 20, 'Amya Morissette', '2024-11-30 08:11:00', 'Voluptatibus et in et aut quo qui aliquam in. Debitis quo facere sunt quod est earum eaque libero. Aperiam dolor eius atque.', 'Medium', 'Resolved', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(5, 7, 'Sheridan Morissette III', '2024-11-15 00:37:28', 'Ratione tempore eum qui autem veniam vel pariatur. Autem harum dolor beatae. Rem sunt cumque incidunt reiciendis fuga accusamus aut.', 'Low', 'In Progress', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(6, 16, 'Kaylin Shields', '2024-12-01 07:58:38', 'Quia et dolorem ut omnis corrupti. Molestiae maiores impedit sint quia dolores eveniet. Et enim voluptatibus qui.', 'High', 'In Progress', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(7, 2, 'Gerhard Kemmer', '2024-12-08 14:40:19', 'Fuga exercitationem incidunt quidem ex odio. Optio quia dolor deleniti voluptas. Laudantium eos et nihil eveniet optio. Voluptates officiis quisquam et quidem.', 'Medium', 'Open', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(8, 6, 'Reina Lang', '2024-11-24 16:36:41', 'Est nobis quibusdam ea quas. Et eligendi modi non doloribus ex ea. Aut vel voluptas dolores possimus ducimus libero dolores officiis.', 'Medium', 'Open', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(9, 3, 'Art Feest', '2024-11-12 17:30:32', 'Ut aut sapiente autem. Quisquam suscipit velit rerum in voluptas sed aut. Unde eum soluta voluptatem inventore maiores.', 'Low', 'Open', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(10, 9, 'Ahmed Prosacco MD', '2024-12-06 20:35:57', 'Qui non illo et autem commodi sit. Reprehenderit aperiam sunt eius voluptas suscipit dolor corporis. Cupiditate in dolorem voluptas sunt est voluptas excepturi. Et aliquam blanditiis itaque eius odio eius consequatur.', 'Low', 'Open', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(11, 6, 'Bethany McGlynn', '2024-11-27 01:48:10', 'Magni quisquam tempora exercitationem saepe dolore labore. Maiores voluptate repellat mollitia dolores. Ut ipsum fuga eum maxime itaque a.', 'Low', 'Resolved', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(12, 2, 'Dr. Emil Reichel', '2024-11-30 12:39:39', 'Ab et voluptas reprehenderit quae. Facere dolores eum officia numquam accusamus ab. Atque reiciendis sed commodi iusto consequuntur aliquid.', 'High', 'Resolved', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(13, 19, 'Schuyler Ruecker', '2024-11-19 11:06:35', 'Aspernatur officia magnam magni doloremque. Delectus non est ut nisi inventore quia dolores. Sint rerum repellat dignissimos labore vitae iusto et. Quo ut asperiores aperiam architecto tempora.', 'Medium', 'Resolved', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(14, 20, 'Zaria Pagac', '2024-11-20 04:00:32', 'Esse consequatur animi neque voluptates. Voluptate quibusdam atque illo voluptas officia et sint soluta.', 'Medium', 'Open', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(15, 9, 'Sheridan Kiehn', '2024-11-27 14:52:08', 'Nemo et ipsa error voluptatum non. Consectetur autem optio consequatur voluptatem. Placeat voluptatibus illum soluta labore recusandae. Necessitatibus quidem deleniti deleniti tempore culpa.', 'Low', 'Resolved', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(16, 19, 'Larry Schinner', '2024-11-20 23:21:27', 'Architecto porro harum excepturi veniam dicta reiciendis est. Sequi rem rerum aperiam sunt quos ducimus molestias asperiores.', 'Medium', 'Resolved', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(17, 4, 'Mr. Oda Reinger', '2024-12-08 07:45:03', 'Reiciendis nisi a exercitationem est et quidem deserunt. Et voluptates voluptas sed. Enim ex cum a deleniti optio vel non.', 'Low', 'Open', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(18, 15, 'Kelley Dicki', '2024-11-26 03:04:47', 'Nesciunt eos blanditiis ipsa fugit. Repellendus eos et et nulla. Molestiae nihil labore officia quisquam qui.', 'High', 'In Progress', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(19, 4, 'Marianna Hackett', '2024-11-25 04:25:39', 'Consectetur at veniam recusandae. Esse facere facere veniam facilis accusamus aut tempore. Voluptatum iure tenetur aut harum quis consequatur non labore. Omnis nihil voluptas omnis eum.', 'High', 'Open', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(20, 1, 'Mrs. Madeline Kulas', '2024-11-19 20:21:15', 'Velit cum unde eum dicta nihil aut perspiciatis. Dolore molestiae quod tempora qui aut fuga occaecati. Odit est excepturi dolorem sit eveniet eos.', 'Medium', 'In Progress', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(21, 8, 'Lonny Hegmann', '2024-11-19 02:14:53', 'Illo quia corrupti ad est. Praesentium non unde molestias iusto animi quaerat et repellat. Omnis consequuntur dolores vel dignissimos. Nihil omnis est quidem est dolor. Aut et minima voluptates quis eum ea a fuga.', 'Medium', 'In Progress', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(22, 12, 'Mr. Nigel Reinger IV', '2024-11-10 20:08:46', 'Non nostrum temporibus iste voluptas fugit aut nostrum. Nulla esse quia eligendi vel. Odio magnam neque ut dicta placeat perspiciatis voluptatibus. Praesentium amet in praesentium aut voluptatum non.', 'High', 'Open', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(23, 16, 'Gracie Klein', '2024-12-05 10:18:48', 'Cumque quod sint nihil autem eum. Ratione maiores nesciunt pariatur. Asperiores qui perspiciatis id in debitis saepe. Ipsam maxime ullam labore.', 'High', 'Resolved', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(24, 9, 'Lilian Towne I', '2024-11-09 23:02:13', 'Nemo nam dolores qui incidunt. Ullam laboriosam non aspernatur placeat pariatur sint. Maiores totam et et voluptas at et assumenda. Illo illo ut qui blanditiis.', 'High', 'In Progress', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(25, 3, 'Prof. Ilene Ankunding', '2024-11-22 23:07:50', 'Consequatur ut repudiandae culpa magnam. Est aut quam porro qui quos. Et autem aspernatur non modi consequatur consequuntur.', 'Medium', 'Resolved', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(26, 15, 'Dr. Angelica Kreiger I', '2024-11-14 11:49:16', 'Nostrum voluptatum porro sapiente quia aliquam sint officia odio. Quo labore ut vel ut eum unde. Repellendus soluta eius sunt vitae explicabo aperiam.', 'High', 'In Progress', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(27, 14, 'Josue Goyette PhD', '2024-11-25 17:16:03', 'Vero nihil quod dolorem eveniet et. Voluptas delectus laborum vero rerum. Error nam eos perferendis porro et et et. Architecto itaque ut cum perferendis eum quibusdam. Qui perspiciatis enim saepe et recusandae vel doloribus.', 'Medium', 'Resolved', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(28, 14, 'Hildegard Stamm', '2024-12-08 14:09:13', 'Dicta voluptates beatae sed consequatur voluptate alias. Laudantium sint in itaque nisi hic. Enim velit qui repellat culpa.', 'Low', 'In Progress', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(29, 2, 'Lindsey Gleason', '2024-12-01 05:27:14', 'Illo aliquam fugit quasi voluptas ipsam exercitationem. Nesciunt cupiditate beatae sunt autem officiis rem. Dolorum assumenda adipisci et sed nam.', 'High', 'Open', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(30, 10, 'Eldon Hodkiewicz', '2024-11-20 22:18:45', 'Enim delectus minima temporibus labore quo laudantium. Quia animi voluptatem omnis. Amet vitae voluptatem soluta corrupti nostrum voluptate.', 'Low', 'In Progress', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(31, 11, 'Ulises Okuneva', '2024-12-02 09:33:28', 'Minima qui repellat est ut. Voluptate itaque molestias voluptas quidem quis quo et. Fuga dignissimos inventore non. Laudantium tempore libero suscipit dolore necessitatibus.', 'High', 'Open', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(32, 18, 'Jaycee Schuppe', '2024-11-23 07:25:22', 'Minus nisi delectus rerum tempora at dolor. At velit incidunt iure est. Doloribus vel est doloremque accusantium et delectus aspernatur.', 'Low', 'Open', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(33, 14, 'Miss Tiana Flatley IV', '2024-12-02 21:42:00', 'Sint voluptatem minima ipsam nisi. Aut et et quia eos dolores. Tenetur doloribus voluptates odio assumenda tempora.', 'Low', 'Resolved', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(34, 6, 'Arch Kshlerin', '2024-11-24 15:16:37', 'Ullam modi tempore distinctio unde illum. Repellat aliquid nam impedit cum et. Veritatis ducimus veniam voluptatem.', 'High', 'Open', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(35, 19, 'Mr. Chesley Crist II', '2024-11-27 04:53:11', 'Consequatur blanditiis quo saepe voluptatum deserunt. Impedit adipisci aliquam nostrum totam. Rem dolorem assumenda natus aut quia quia ut. Repellendus natus iste quisquam quia beatae.', 'Low', 'Open', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(36, 3, 'Elise Kunde', '2024-11-18 16:50:38', 'Et dolore sed est vitae autem sit beatae. Molestiae quas id porro tempore in omnis. Non quos dolor repellendus qui facere. Qui quos deserunt voluptatem labore esse doloremque.', 'Low', 'In Progress', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(37, 2, 'Uriel Emard III', '2024-12-08 14:44:20', 'Sed ut excepturi perferendis commodi ex. Commodi atque ea rem blanditiis esse eos sequi. Molestiae et rerum qui alias quis consequatur reiciendis dolore. Molestias ea qui magni dolorem et. Debitis praesentium consequatur rerum dignissimos.', 'Medium', 'Resolved', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(38, 3, 'Myrna Schoen', '2024-11-10 08:09:43', 'Sint culpa nobis rerum velit quo nam debitis voluptas. Veritatis sequi eveniet et optio est magni sint. Tenetur deleniti blanditiis error nesciunt consequuntur.', 'High', 'In Progress', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(39, 12, 'Miss Elna Lind V', '2024-11-30 18:35:06', 'Aut error totam dolore velit excepturi rerum. Ut in labore est sapiente et non debitis. Dolor et aliquam reiciendis cupiditate incidunt qui sit.', 'High', 'In Progress', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(40, 6, 'Mrs. Pauline Bednar MD', '2024-11-23 10:26:29', 'Consequatur sunt totam ratione blanditiis eligendi. Reiciendis sint temporibus esse nihil exercitationem. Illum eaque est sed reprehenderit tempore voluptatem corrupti.', 'Low', 'Resolved', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(41, 12, 'Kathleen Crona', '2024-11-28 21:53:30', 'Quia qui magnam nisi dignissimos est ab aspernatur. Sequi quia ut perferendis nisi ea aut.', 'Medium', 'Open', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(42, 16, 'Kurt Leffler PhD', '2024-11-18 02:16:44', 'Beatae voluptates quod quis dolor debitis officiis. Et fugit exercitationem voluptatem. Est laudantium atque alias ut. Fugit ratione ut deleniti amet explicabo.', 'Medium', 'Resolved', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(43, 4, 'Madilyn Schulist', '2024-11-30 16:25:40', 'Enim et cupiditate ea animi explicabo alias. Debitis reiciendis nobis tenetur delectus quasi omnis quo. Ex quisquam dolor sed voluptas voluptas.', 'Low', 'In Progress', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(44, 14, 'Garnet Wisoky', '2024-12-04 17:04:26', 'Odio ab error voluptas laudantium. Ducimus repellendus cumque quidem qui et ad. Veniam quia possimus eveniet sint nam pariatur. Explicabo est qui sequi qui rerum consequatur assumenda.', 'Low', 'Open', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(45, 18, 'Victor Conroy', '2024-11-29 07:46:30', 'Et eum vitae odit quia. Aut tempore repudiandae ut architecto. Inventore facere id ut rem voluptas dolorum fugit sint. Delectus hic libero ea vel et tempore.', 'Medium', 'In Progress', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(46, 2, 'Mrs. Deanna Schumm DDS', '2024-11-23 05:24:09', 'Et assumenda et quod temporibus ipsum. Qui ut sed est nisi quisquam. Aut quo sed velit. Alias qui qui quis corporis repudiandae.', 'High', 'Resolved', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(47, 15, 'Eugenia Thiel DDS', '2024-11-12 01:57:49', 'Facilis architecto eum esse in facere sed. Est ipsum ut excepturi qui praesentium numquam. Voluptas distinctio consequatur quis ipsum autem quis doloribus et.', 'Low', 'Resolved', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(48, 15, 'Leif Gleichner', '2024-12-06 20:23:15', 'Earum voluptatum culpa tenetur animi accusantium quia adipisci. Necessitatibus eum incidunt rerum. Modi qui iusto facilis officia suscipit. Assumenda maxime corrupti nihil voluptatem maxime vitae.', 'Medium', 'In Progress', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(49, 12, 'Michaela Schamberger', '2024-11-22 19:45:53', 'Nihil quia et qui accusamus eaque totam debitis illo. Dolorem est error et cumque omnis similique qui velit. Saepe iste consequuntur accusamus odit. Sunt perferendis saepe eaque est. Amet dolorem sit sed consequatur provident quidem tenetur deserunt.', 'High', 'In Progress', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(50, 9, 'Lupe Reinger', '2024-12-01 08:03:35', 'Quam saepe ullam neque consequatur quia numquam. Quis qui quia libero. Natus esse perferendis dolor nobis tempora. Blanditiis voluptates non cumque aut corporis minima.', 'High', 'Resolved', '2024-12-08 18:51:14', '2024-12-08 18:51:14'),
(51, 16, 'Breanna Waelchi', '2024-12-01 07:00:35', 'Ad consequuntur voluptate quasi nemo. Accusamus assumenda autem omnis enim sequi corporis fuga consequatur. Quasi nihil neque hic iusto qui maxime.', 'Medium', 'Open', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(52, 4, 'Pete Brakus', '2024-11-27 03:06:22', 'Voluptatem rerum rerum nostrum a et. Et ut et exercitationem et non incidunt. Maiores praesentium corporis itaque aut. Laboriosam sequi dolores et soluta porro qui ea soluta.', 'High', 'In Progress', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(53, 2, 'Madie Koepp', '2024-11-10 16:31:06', 'Illo aspernatur veritatis in provident modi. Odio laboriosam laudantium laborum fugit velit qui dolor. Iusto aliquid quis sit.', 'Low', 'Open', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(54, 9, 'Enola Schmitt', '2024-11-13 04:40:59', 'Animi cum et iure vel. Qui nemo eum ducimus cum nostrum. Nihil sunt aliquid quam nesciunt ipsum harum iusto. Provident molestiae nesciunt earum voluptas. Eos deleniti dolore id dolorem.', 'Medium', 'Open', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(55, 16, 'Ceasar Kunze', '2024-11-30 14:36:43', 'Fugit repudiandae fuga cupiditate eos. Minus delectus in beatae dolor numquam nemo molestiae. Magni corporis rerum aut nulla beatae.', 'High', 'Resolved', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(56, 3, 'Liana Schinner', '2024-11-25 18:02:07', 'Et et error non voluptatum doloremque natus. Perferendis praesentium beatae reprehenderit enim excepturi necessitatibus vel.', 'High', 'Open', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(57, 13, 'Dr. Remington Marvin', '2024-12-08 03:01:19', 'Deleniti eos et omnis eaque. Fugit sed consequatur id incidunt et sit nostrum. Doloremque illo molestiae autem non.', 'High', 'Open', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(58, 6, 'Violette Labadie', '2024-11-21 10:41:09', 'Natus quia deleniti accusamus adipisci sunt. Esse dolorem autem omnis repudiandae. Excepturi debitis aperiam asperiores maxime sit enim.', 'Low', 'In Progress', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(59, 11, 'Dr. Glen Corwin IV', '2024-11-28 18:18:46', 'Ut aspernatur doloremque est quia. Non ut sint ipsum architecto temporibus. Esse accusantium assumenda ex quidem dolores ea delectus.', 'Low', 'In Progress', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(60, 17, 'Prof. Oliver Schmitt', '2024-12-05 02:34:07', 'Et ut fuga delectus officia ab. Et quia consequatur quod quam expedita quam ullam. Est iste natus est unde laudantium occaecati ipsa. Accusantium dignissimos error non voluptas nostrum expedita ad esse.', 'Medium', 'In Progress', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(61, 1, 'Miss Violette Zulauf MD', '2024-12-04 20:29:43', 'Quasi consequuntur reiciendis aut et sequi. Beatae est nulla dolore aut ipsam neque qui. Consequatur provident sit et. Reprehenderit mollitia eveniet est.', 'High', 'Resolved', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(62, 14, 'Miss Kasandra Heathcote MD', '2024-11-12 13:42:25', 'Nostrum nesciunt ab enim dignissimos est. Est molestiae voluptas magnam reprehenderit deleniti. Optio est fugiat et necessitatibus voluptatum sequi debitis. Molestiae et est dignissimos tenetur id.', 'High', 'In Progress', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(63, 16, 'Ms. Marisol West III', '2024-11-25 08:49:42', 'Quia rerum ipsam dicta voluptatem autem ut occaecati rem. Minus doloribus laboriosam voluptatem aut similique sed. Doloremque consequatur velit voluptatum quia. Libero eius voluptates assumenda consectetur voluptatem placeat.', 'High', 'Resolved', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(64, 2, 'Flavie Roob', '2024-12-01 06:50:20', 'Dolore optio facilis explicabo voluptas. Repudiandae vitae aut ipsum iusto nemo odio. Consequuntur impedit cupiditate nam optio occaecati.', 'High', 'Open', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(65, 13, 'Cassie Thompson I', '2024-12-01 14:07:51', 'Quis fugit eum fuga temporibus nemo. Ea non molestiae commodi ut in. Aut possimus tempore nam molestias. Occaecati deleniti quis nam ut qui asperiores.', 'Low', 'Resolved', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(66, 18, 'Mrs. April Murray Sr.', '2024-11-19 19:17:59', 'Eveniet dolor illum et et explicabo vitae. Quisquam non maiores est assumenda ab odio vel incidunt. Debitis qui omnis est recusandae illum id. Fuga voluptatem cupiditate fugit illo corporis.', 'Low', 'Open', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(67, 10, 'Forrest Hilpert', '2024-11-10 17:26:09', 'Quae qui qui vero perspiciatis est natus. Ipsam nisi qui quos et. Quia necessitatibus et ipsam occaecati accusamus nisi.', 'High', 'Resolved', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(68, 20, 'Prof. Elwin Bins', '2024-11-19 07:56:01', 'Dolorem reprehenderit quia non non aut facilis. A voluptas voluptatem quos fuga repudiandae in quae. Ipsa doloribus id possimus ut aut maxime molestiae. Maiores vitae est aut aut voluptas.', 'Low', 'Open', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(69, 11, 'Amos Grimes I', '2024-11-12 12:00:17', 'Omnis quo eos doloribus ad ducimus eum voluptates. Ut culpa omnis ex temporibus animi velit aut ut. Quae numquam dolore rem cumque ut exercitationem.', 'High', 'Open', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(70, 17, 'Ms. Emilie VonRueden III', '2024-12-08 12:27:20', 'Asperiores aliquid consequatur aut facere unde. Quis quod tenetur ea. Ea rerum et et qui. Repudiandae tempore molestiae ea eum.', 'Medium', 'Open', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(71, 18, 'Abbigail Wunsch', '2024-12-05 11:52:23', 'Accusamus est molestias eos qui nulla quod. Aliquam ut omnis qui nihil qui consequatur dicta. Id non sit dolor ipsa.', 'High', 'In Progress', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(72, 18, 'Velva Lubowitz', '2024-12-05 11:48:44', 'In autem repellendus ex sint quisquam. Minus voluptas maxime qui nam suscipit.', 'High', 'Open', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(73, 16, 'Libby Douglas', '2024-11-09 15:15:44', 'Sed reprehenderit pariatur quos consequatur placeat ipsa. Quia eaque voluptatem qui et. Rerum explicabo accusantium qui.', 'Low', 'In Progress', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(74, 8, 'Hilbert Olson', '2024-12-07 15:05:38', 'Vero nemo nisi veniam atque distinctio aut unde. Labore nisi cumque non dolor qui asperiores iure. Iste cum et aut quis. Autem voluptatem at quod inventore impedit.', 'Medium', 'In Progress', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(75, 4, 'Arne Mayer', '2024-12-08 17:32:12', 'Voluptatem alias eveniet eaque quas sed autem. Voluptas aut doloribus odit ut. Id placeat modi esse nisi ratione tempora nisi.', 'Medium', 'Open', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(76, 7, 'Ms. Antoinette Stehr', '2024-11-28 23:18:10', 'Quis sit quibusdam qui maxime amet qui officia. Et et ut sint in laboriosam nisi debitis. Doloribus neque et non praesentium veniam. Aut eaque ut illo nam voluptas ut impedit.', 'High', 'Resolved', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(77, 18, 'Prof. Fay Gutmann MD', '2024-11-23 01:53:55', 'Ad excepturi est nostrum repellat voluptate commodi repudiandae quo. Natus est odit sapiente dolores cupiditate. Ipsa expedita et id eum occaecati voluptatem sed.', 'High', 'Open', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(78, 2, 'Dr. Myron Johns III', '2024-11-25 23:36:33', 'Rerum sunt molestiae ut qui voluptatem. Explicabo expedita non autem in unde molestiae reiciendis. Natus iusto ut aut alias. Sed voluptatibus sint ut necessitatibus unde ipsum dolorum.', 'Medium', 'Resolved', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(79, 6, 'Jimmie Turcotte', '2024-12-08 01:26:30', 'A ut sunt enim facilis. Consequatur consequatur autem mollitia ex. Voluptas ab aliquid asperiores reprehenderit. Omnis rerum at impedit libero sint dolor rerum.', 'Medium', 'Resolved', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(80, 4, 'Oliver Medhurst', '2024-11-20 08:09:58', 'Provident praesentium at ut consequatur aut beatae eos. Et quo possimus provident magnam vel veniam.', 'Medium', 'In Progress', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(81, 5, 'Mr. Alberto Wyman', '2024-11-11 02:07:43', 'Eum aperiam repudiandae doloribus. Doloribus nesciunt ad consequatur cumque. Fugiat est atque ut temporibus veritatis quae. Sapiente laborum dolores reprehenderit molestias molestiae sed est. Culpa voluptatum ut modi.', 'Low', 'Resolved', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(82, 15, 'Marlee Goodwin', '2024-11-21 04:53:20', 'Sunt accusantium tempore neque. Animi aut esse sit delectus impedit dolore ut. Qui accusantium ut qui unde officiis consectetur labore.', 'Medium', 'Resolved', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(83, 4, 'Hester Erdman', '2024-11-30 18:12:49', 'Ut aliquam dolores laudantium doloremque. Voluptatum in sed qui iure amet modi enim. Voluptatem perspiciatis quo neque veniam aut quod. Error quidem in temporibus eum.', 'Low', 'Open', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(84, 20, 'Vernie Pouros', '2024-11-27 09:48:21', 'Perferendis laborum eveniet ut reprehenderit in ab. Quo cupiditate beatae aspernatur et quis natus. Aut numquam voluptatem et accusantium accusantium.', 'High', 'In Progress', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(85, 12, 'Kade Orn PhD', '2024-11-26 07:18:58', 'Alias explicabo odit praesentium atque omnis quae. Quam aut quod in quo est. Eum eum reprehenderit qui dolor et non est sunt. Neque quod aut eaque et.', 'Medium', 'In Progress', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(86, 20, 'Earnest Bechtelar DVM', '2024-11-15 05:25:49', 'Recusandae impedit nobis non. Nihil nobis ipsum et quia repellendus pariatur. Alias et aut porro assumenda ut et. Illum blanditiis vel velit qui rerum dolor.', 'Low', 'Resolved', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(87, 10, 'Robin Ebert', '2024-12-06 08:54:58', 'Et est voluptatibus ex ipsum porro odio. Aut fugiat sint excepturi animi recusandae ullam. Perferendis saepe quis perferendis voluptas adipisci et quasi asperiores. In debitis reiciendis quam cum blanditiis aut.', 'Low', 'In Progress', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(88, 14, 'Macie Fay', '2024-11-19 07:09:47', 'Iure quis qui magni voluptas ut. Repellat aspernatur velit fuga quia eaque sint a. Sapiente ut aliquam dolorum quia.', 'Medium', 'In Progress', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(89, 7, 'Dr. Norwood Bradtke V', '2024-11-17 11:58:32', 'Hic similique et voluptas animi quisquam neque. Perferendis voluptas quia expedita optio dolores at.', 'Medium', 'In Progress', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(90, 14, 'Martine Hahn', '2024-11-27 18:16:33', 'Excepturi vero expedita consequuntur nostrum. Sint voluptas aspernatur dolorum repellat in facere voluptatibus.', 'Medium', 'Open', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(91, 11, 'Domenico Christiansen II', '2024-11-13 06:16:14', 'Quia consequatur esse rerum saepe qui. Aut eum minus voluptas ut aliquam deserunt hic amet.', 'Medium', 'Open', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(92, 11, 'Prof. Osborne Cronin', '2024-11-29 09:56:23', 'Officia unde repellendus ut doloribus. Rerum perspiciatis itaque ex rerum perferendis repellendus. Voluptas minima molestias reprehenderit non id. Incidunt provident qui ut excepturi.', 'Medium', 'Resolved', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(93, 5, 'Vicente Abernathy', '2024-11-14 04:30:29', 'Impedit minus accusantium non repudiandae excepturi. Illum voluptatibus eius provident alias omnis deserunt. Possimus id in debitis vel. Dolorem dolor quae et.', 'High', 'In Progress', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(94, 2, 'Aurore Stoltenberg', '2024-11-27 18:51:19', 'Quia suscipit recusandae quae voluptatem eveniet nulla. Vitae debitis voluptatibus dolores corporis vero. Deleniti earum vel dolores. Placeat et dolores temporibus quae quo rerum. Nulla voluptatem sint sit et.', 'High', 'In Progress', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(95, 6, 'Heber Herman', '2024-12-06 07:47:40', 'Est fuga ut alias inventore. Voluptatem eaque sed maiores. Non sunt officiis voluptatem tempore. Sapiente impedit illum unde quis id ut nostrum.', 'Low', 'Open', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(96, 20, 'Jewell Weissnat', '2024-11-21 23:20:44', 'Omnis dolores quis quia ipsum est ipsam. Iste consequatur autem accusantium velit. Est non exercitationem perferendis aut voluptas et.', 'Medium', 'Open', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(97, 12, 'Mr. Van Kessler', '2024-12-01 22:37:22', 'Quidem laboriosam aliquam qui maxime eum. Iste est qui eius fuga. Non ipsam est consequatur facere velit mollitia fuga. Laudantium et quae ea tenetur sequi rem veritatis.', 'High', 'Resolved', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(98, 12, 'Marilie Mitchell', '2024-12-03 08:52:27', 'Et enim sed impedit omnis. Temporibus architecto est tempora. Voluptatem ut eveniet magnam voluptatem.', 'Low', 'Open', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(99, 5, 'Amelie Muller MD', '2024-11-20 04:28:45', 'Aut sit qui dolor magnam sed autem. Dolores velit adipisci rerum deleniti doloremque asperiores. Id rerum perferendis quia officiis.', 'Low', 'Resolved', '2024-12-08 19:22:37', '2024-12-08 19:22:37'),
(100, 12, 'Trisha Altenwerth', '2024-11-27 15:20:00', 'Non molestias rerum laudantium harum ipsa ut. Dolorem modi necessitatibus similique.', 'Low', 'Open', '2024-12-08 19:22:37', '2024-12-08 19:22:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `medicines`
--

CREATE TABLE `medicines` (
  `medicine_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `dosage` varchar(50) NOT NULL,
  `form` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `medicines`
--

INSERT INTO `medicines` (`medicine_id`, `name`, `brand`, `dosage`, `form`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(1, 'voluptas', 'McDermott Group', 'quos', 'Xi-rô', 347.02, 485, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(2, 'rerum', 'Champlin, Barrows and Gulgowski', 'et', 'Thuốc bột', 180.45, 374, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(3, 'sed', 'Pouros-Reichel', 'voluptas', 'Viên nén', 412.49, 859, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(4, 'molestiae', 'Rau, Goldner and Pacocha', 'fuga', 'Viên nén', 347.06, 749, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(5, 'sint', 'Harvey Group', 'unde', 'Viên con nhộng', 482.44, 82, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(6, 'vel', 'Ernser-Pacocha', 'nulla', 'Xi-rô', 184.24, 61, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(7, 'consequuntur', 'O\'Hara-Rau', 'quos', 'Viên nén', 479.07, 726, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(8, 'vero', 'Bogisich LLC', 'molestias', 'Viên nén', 196.29, 896, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(9, 'tempore', 'Langosh, O\'Reilly and Wolff', 'fugiat', 'Viên nén', 488.47, 68, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(10, 'id', 'Wisoky, Brown and McKenzie', 'aut', 'Xi-rô', 382.44, 478, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(11, 'necessitatibus', 'Effertz-Crist', 'dolores', 'Viên con nhộng', 288.71, 920, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(12, 'sapiente', 'Aufderhar, Bruen and Johnston', 'reprehenderit', 'Viên nén', 130.46, 962, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(13, 'temporibus', 'Johnson LLC', 'amet', 'Xi-rô', 498.41, 324, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(14, 'qui', 'Heaney-Hoeger', 'quisquam', 'Viên nén', 455.66, 655, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(15, 'iusto', 'Green-Heaney', 'beatae', 'Xi-rô', 486.45, 188, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(16, 'exercitationem', 'Terry, Bartoletti and Von', 'autem', 'Viên nén', 16.47, 56, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(17, 'quo', 'Reynolds-Ziemann', 'maxime', 'Xi-rô', 213.57, 423, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(18, 'consequuntur', 'Gislason, Wisoky and Hermiston', 'odio', 'Viên nén', 460.32, 534, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(19, 'debitis', 'Schulist PLC', 'laudantium', 'Viên con nhộng', 428.78, 315, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(20, 'odit', 'Kunde LLC', 'porro', 'Xi-rô', 133.20, 416, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(21, 'mollitia', 'Gulgowski-VonRueden', 'cum', 'Xi-rô', 300.90, 757, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(22, 'magni', 'Schuster, Jones and Sawayn', 'quibusdam', 'Viên con nhộng', 304.16, 179, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(23, 'excepturi', 'Stoltenberg-Nikolaus', 'vel', 'Xi-rô', 395.69, 344, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(24, 'sit', 'Daugherty Inc', 'cumque', 'Xi-rô', 74.92, 198, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(25, 'quis', 'Sauer, Graham and Shanahan', 'amet', 'Thuốc bột', 70.04, 453, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(26, 'rerum', 'Beatty-Kreiger', 'recusandae', 'Viên con nhộng', 184.62, 894, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(27, 'minima', 'Waelchi-Treutel', 'odit', 'Viên nén', 36.76, 378, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(28, 'fuga', 'Prosacco-Carter', 'et', 'Viên nén', 96.69, 868, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(29, 'et', 'Leuschke-Hermann', 'iste', 'Thuốc bột', 103.72, 454, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(30, 'sint', 'Hahn PLC', 'sequi', 'Xi-rô', 196.89, 6, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(31, 'similique', 'Maggio-Bernier', 'quidem', 'Xi-rô', 211.06, 463, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(32, 'quas', 'Frami LLC', 'ipsum', 'Thuốc bột', 242.71, 246, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(33, 'odio', 'Emard Group', 'est', 'Xi-rô', 202.76, 949, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(34, 'dolorum', 'Gaylord, Spencer and Bins', 'non', 'Viên nén', 243.17, 452, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(35, 'amet', 'Kulas Inc', 'est', 'Viên nén', 295.41, 434, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(36, 'pariatur', 'Krajcik and Sons', 'aliquam', 'Thuốc bột', 271.67, 550, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(37, 'quo', 'Hettinger, Jenkins and Batz', 'natus', 'Viên nén', 144.39, 42, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(38, 'est', 'Haag-Watsica', 'sint', 'Viên con nhộng', 386.02, 644, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(39, 'veritatis', 'Rempel, Gusikowski and Pagac', 'accusamus', 'Xi-rô', 73.68, 256, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(40, 'sunt', 'Mueller-Terry', 'occaecati', 'Thuốc bột', 183.83, 51, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(41, 'ratione', 'Bernier-Ortiz', 'quis', 'Thuốc bột', 97.83, 290, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(42, 'necessitatibus', 'Schamberger Ltd', 'cum', 'Xi-rô', 481.86, 361, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(43, 'minus', 'Cronin-Abernathy', 'vero', 'Xi-rô', 423.65, 273, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(44, 'quam', 'Bins-Rath', 'quis', 'Xi-rô', 408.48, 521, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(45, 'minima', 'Schamberger, Sawayn and Nienow', 'assumenda', 'Xi-rô', 419.04, 11, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(46, 'ut', 'Weber-Dickinson', 'unde', 'Thuốc bột', 174.32, 340, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(47, 'at', 'Oberbrunner-Wiegand', 'magni', 'Xi-rô', 421.39, 962, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(48, 'aut', 'Marks, Hyatt and Kessler', 'aliquam', 'Xi-rô', 169.72, 560, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(49, 'ullam', 'Hessel, Jenkins and Aufderhar', 'magnam', 'Viên nén', 123.46, 149, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(50, 'omnis', 'Simonis, Heaney and Schmidt', 'laborum', 'Viên con nhộng', 40.16, 295, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(51, 'quo', 'Kuhic-Zboncak', 'distinctio', 'Thuốc bột', 494.07, 549, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(52, 'nesciunt', 'Fisher Group', 'aut', 'Xi-rô', 478.87, 289, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(53, 'nam', 'Kuhlman, Nicolas and Crist', 'fugit', 'Viên con nhộng', 486.80, 847, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(54, 'consequatur', 'Bins-Simonis', 'facere', 'Viên con nhộng', 97.53, 162, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(55, 'est', 'McGlynn, Conn and Armstrong', 'facere', 'Viên nén', 136.02, 660, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(56, 'ut', 'Satterfield, Jerde and Kautzer', 'debitis', 'Xi-rô', 417.58, 736, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(57, 'quos', 'Hermiston and Sons', 'totam', 'Viên con nhộng', 274.41, 566, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(58, 'saepe', 'Labadie Group', 'non', 'Viên con nhộng', 34.74, 193, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(59, 'et', 'Ward, Kunde and Muller', 'ratione', 'Xi-rô', 436.77, 611, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(60, 'possimus', 'Ferry and Sons', 'incidunt', 'Viên con nhộng', 90.80, 958, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(61, 'repudiandae', 'Christiansen, Beahan and Romaguera', 'voluptas', 'Viên con nhộng', 338.70, 294, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(62, 'corrupti', 'Gottlieb Ltd', 'neque', 'Viên nén', 299.08, 598, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(63, 'rerum', 'Schmidt, Funk and Sipes', 'exercitationem', 'Viên con nhộng', 237.22, 308, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(64, 'aut', 'Kuhlman LLC', 'ab', 'Viên con nhộng', 279.45, 194, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(65, 'consequuntur', 'Bergstrom Group', 'est', 'Thuốc bột', 311.62, 492, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(66, 'aspernatur', 'Frami, Rolfson and Corwin', 'rerum', 'Viên nén', 68.33, 311, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(67, 'molestiae', 'Klein, Mosciski and Gulgowski', 'perferendis', 'Xi-rô', 269.41, 769, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(68, 'unde', 'Walter-Wisoky', 'aut', 'Xi-rô', 251.48, 498, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(69, 'tempora', 'Gulgowski and Sons', 'asperiores', 'Viên con nhộng', 437.35, 537, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(70, 'dolores', 'Hermann, Marks and Reilly', 'minus', 'Thuốc bột', 191.80, 564, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(71, 'error', 'Kreiger-Connelly', 'quaerat', 'Viên con nhộng', 296.33, 468, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(72, 'exercitationem', 'Stiedemann-Wolff', 'autem', 'Thuốc bột', 55.49, 620, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(73, 'distinctio', 'McDermott, Larson and Monahan', 'necessitatibus', 'Xi-rô', 439.11, 561, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(74, 'architecto', 'Schneider, Lowe and Hermann', 'blanditiis', 'Viên con nhộng', 264.05, 71, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(75, 'hic', 'Lind, Price and Conroy', 'incidunt', 'Viên con nhộng', 89.22, 545, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(76, 'praesentium', 'Bogisich, Hessel and Lubowitz', 'velit', 'Thuốc bột', 22.42, 947, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(77, 'voluptatibus', 'Padberg-Hoeger', 'distinctio', 'Viên con nhộng', 413.00, 142, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(78, 'ducimus', 'Boyer PLC', 'asperiores', 'Thuốc bột', 157.98, 53, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(79, 'neque', 'Von Group', 'similique', 'Viên con nhộng', 184.44, 326, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(80, 'dolorem', 'Rosenbaum-Durgan', 'ut', 'Viên con nhộng', 158.47, 311, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(81, 'aut', 'Koelpin Inc', 'dolore', 'Viên con nhộng', 410.30, 653, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(82, 'consequatur', 'Waelchi LLC', 'sit', 'Viên con nhộng', 299.80, 857, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(83, 'id', 'Gaylord-Schamberger', 'nisi', 'Viên nén', 65.63, 280, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(84, 'soluta', 'Keebler Group', 'reiciendis', 'Viên nén', 231.56, 639, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(85, 'ea', 'Deckow-Orn', 'sit', 'Viên con nhộng', 59.28, 48, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(86, 'tempora', 'Gusikowski-Ward', 'consequatur', 'Viên nén', 246.97, 734, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(87, 'eius', 'Effertz, Becker and Medhurst', 'inventore', 'Viên nén', 382.05, 380, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(88, 'accusantium', 'Wilderman PLC', 'earum', 'Thuốc bột', 74.00, 907, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(89, 'necessitatibus', 'Ondricka, Hyatt and Turcotte', 'asperiores', 'Thuốc bột', 28.09, 898, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(90, 'beatae', 'Rempel, Kuvalis and Willms', 'non', 'Xi-rô', 433.81, 723, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(91, 'ut', 'Trantow Group', 'omnis', 'Viên con nhộng', 80.42, 386, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(92, 'hic', 'Kessler-Lockman', 'cumque', 'Viên con nhộng', 471.21, 770, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(93, 'ea', 'Macejkovic-Sanford', 'vero', 'Viên con nhộng', 481.21, 688, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(94, 'voluptas', 'Christiansen LLC', 'minima', 'Viên con nhộng', 460.15, 275, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(95, 'ipsa', 'Ryan-Boyle', 'perspiciatis', 'Viên con nhộng', 149.01, 770, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(96, 'corporis', 'Feest-Gottlieb', 'consequatur', 'Xi-rô', 108.38, 72, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(97, 'ea', 'Stiedemann-Hegmann', 'non', 'Thuốc bột', 266.15, 520, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(98, 'eius', 'Cummings, Dickinson and Mertz', 'deleniti', 'Xi-rô', 11.86, 319, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(99, 'non', 'Wintheiser-Hintz', 'eum', 'Viên nén', 187.77, 45, '2024-12-08 18:50:50', '2024-12-08 18:50:50'),
(100, 'dolorem', 'Erdman-Kuhic', 'corporis', 'Xi-rô', 363.54, 210, '2024-12-08 18:50:50', '2024-12-08 18:50:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(33, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(34, '2024_12_08_114734_create_posts_table', 1),
(35, '2024_12_08_170335_create_medicines_table', 1),
(36, '2024_12_08_170455_create_sales_table', 1),
(37, '2024_12_08_175657_create_computers_table', 1),
(38, '2024_12_08_180048_create_issues_table', 1),
(39, '2024_12_09_013847_create_classes_table', 1),
(40, '2024_12_09_013900_create_students_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(90, 'Odit eum voluptatum vero hic rerum.', 'Facilis nesciunt fugit similique sed et voluptatem enim. Magnam recusandae qui placeat. Dolore sapiente sed ea accusamus officiis modi vel voluptate. Aut repellendus id iste fugiat aliquam ullam.', NULL, '2024-12-12 07:05:57'),
(91, 'Corrupti distinctio ea cum quae qui velit saepe cum.', 'Sed nulla necessitatibus laudantium ab quisquam. Ea soluta voluptatem vitae beatae quo veniam ipsum. Nemo ullam facere quam. Et cum eum omnis iure nam aut ut.', NULL, NULL),
(92, 'Possimus temporibus dolores architecto dolorem consequatur voluptate.', 'Cumque occaecati autem reprehenderit ipsam. Est quis assumenda voluptatibus. Tempora iure et tempora. Nihil soluta at ut ducimus tempore.', NULL, NULL),
(93, 'Ipsum aut ipsam distinctio aut adipisci.', 'Minima fugiat qui voluptas dolorem. Consectetur magnam et molestiae molestiae. Qui similique et dolor quae aliquam ut recusandae.', NULL, NULL),
(94, 'Iure earum rem quia qui dolor sit quia.', 'A rerum cumque consectetur. Laborum quaerat est veritatis non quam occaecati quam. Praesentium dolor at illum.', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sales`
--

CREATE TABLE `sales` (
  `sale_id` int(11) NOT NULL,
  `medicine_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `sale_date` datetime NOT NULL,
  `customer_phone` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sales`
--

INSERT INTO `sales` (`sale_id`, `medicine_id`, `quantity`, `sale_date`, `customer_phone`, `created_at`, `updated_at`) VALUES
(1, 99, 1, '2024-03-25 10:08:51', '1-413-658-', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(2, 26, 10, '2024-08-13 01:19:44', '1-724-495-', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(3, 13, 1, '2024-04-30 18:21:38', '832-974-92', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(4, 96, 2, '2024-02-10 19:21:49', '786-712-40', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(5, 30, 7, '2024-08-18 15:42:13', '+1-423-406', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(6, 32, 9, '2024-08-07 23:00:34', '608.386.01', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(7, 8, 2, '2024-11-20 15:00:27', '1-239-622-', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(8, 100, 10, '2024-02-27 12:34:03', '(561) 869-', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(9, 63, 5, '2024-04-25 03:10:48', '+154152574', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(10, 30, 1, '2024-02-11 00:10:08', '802-637-67', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(11, 98, 6, '2024-12-08 14:34:21', '+1-937-964', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(12, 82, 5, '2024-01-02 21:30:45', '+1-650-392', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(13, 13, 9, '2024-11-06 19:27:19', '704.572.86', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(14, 29, 3, '2024-10-24 10:23:00', '+1 (602) 9', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(15, 4, 4, '2024-04-22 02:32:31', '+1-757-898', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(16, 95, 4, '2024-10-12 17:13:29', '+1-312-398', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(17, 93, 7, '2024-03-29 00:48:04', '520.524.10', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(18, 41, 8, '2024-08-10 10:28:35', '+157589738', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(19, 1, 8, '2024-02-08 03:13:58', '805-234-58', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(20, 6, 1, '2024-09-22 11:33:07', '+1.971.595', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(21, 3, 5, '2024-04-06 04:18:22', '(530) 455-', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(22, 16, 2, '2024-08-04 00:54:04', '(458) 558-', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(23, 40, 3, '2024-03-23 16:54:17', '779-517-70', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(24, 94, 1, '2024-10-31 03:18:02', '+1 (445) 7', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(25, 57, 1, '2024-05-30 22:54:54', '906.578.51', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(26, 18, 9, '2024-10-24 03:16:29', '+193656545', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(27, 6, 1, '2024-09-22 17:42:14', '+1 (816) 8', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(28, 55, 2, '2024-04-21 11:06:04', '+197825309', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(29, 26, 6, '2024-01-19 13:30:11', '+190438580', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(30, 61, 1, '2024-10-22 07:29:05', '1-279-390-', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(31, 83, 6, '2024-10-25 01:59:10', '(458) 317-', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(32, 80, 4, '2024-02-14 01:53:42', '+1-667-679', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(33, 6, 4, '2024-03-12 16:45:07', '+1-703-751', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(34, 41, 6, '2024-04-26 17:33:16', '+1.320.967', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(35, 37, 1, '2024-07-08 03:55:09', '217.372.16', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(36, 30, 2, '2024-04-17 20:55:00', '707-201-79', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(37, 32, 6, '2024-07-31 11:19:27', '339-580-21', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(38, 46, 7, '2024-05-06 16:30:30', '651-840-81', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(39, 25, 4, '2024-11-28 04:30:06', '808.559.00', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(40, 59, 8, '2024-04-01 09:59:49', '254-288-39', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(41, 21, 5, '2024-12-03 07:35:25', '+1-510-865', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(42, 78, 6, '2024-02-18 01:38:24', '(540) 529-', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(43, 52, 8, '2024-02-16 11:21:30', '+1-539-213', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(44, 35, 8, '2024-04-26 15:19:34', '281.426.46', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(45, 63, 10, '2024-09-21 17:05:11', '+192520272', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(46, 48, 5, '2024-08-26 00:01:40', '1-480-736-', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(47, 83, 9, '2024-08-03 11:23:00', '479.364.77', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(48, 1, 4, '2024-04-15 11:03:20', '+1-781-869', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(49, 55, 1, '2024-11-16 11:33:12', '508.451.66', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(50, 75, 5, '2024-05-13 18:01:46', '+1.321.443', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(51, 35, 9, '2024-06-30 18:11:21', '+1.561.244', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(52, 30, 8, '2024-08-15 11:27:36', '+1-458-636', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(53, 28, 1, '2024-02-07 05:39:10', '+1-352-905', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(54, 28, 7, '2024-11-20 23:16:40', '856-257-63', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(55, 100, 3, '2024-06-20 07:24:12', '332-874-31', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(56, 32, 7, '2024-08-17 16:06:25', '253-234-08', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(57, 98, 1, '2024-06-13 19:52:23', '(726) 886-', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(58, 66, 8, '2024-03-02 21:11:54', '+152074870', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(59, 96, 4, '2024-02-23 23:55:01', '+1 (831) 2', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(60, 86, 6, '2024-02-22 12:59:02', '540.290.13', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(61, 34, 5, '2024-05-06 13:10:05', '1-618-782-', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(62, 85, 9, '2024-06-26 18:06:49', '1-480-766-', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(63, 47, 7, '2024-01-25 09:06:37', '1-216-527-', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(64, 73, 10, '2024-02-26 11:54:47', '1-267-521-', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(65, 18, 4, '2024-09-27 06:07:22', '(541) 974-', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(66, 79, 8, '2024-06-09 00:45:03', '+1 (907) 8', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(67, 66, 3, '2024-03-09 08:23:33', '+1 (763) 9', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(68, 19, 2, '2024-10-07 22:24:36', '(843) 685-', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(69, 39, 6, '2024-10-13 18:05:42', '+1-501-458', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(70, 1, 4, '2024-01-12 05:32:18', '+1-786-902', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(71, 28, 3, '2024-09-26 09:31:54', '352-972-00', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(72, 8, 9, '2024-04-09 00:52:51', '+1-323-523', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(73, 29, 9, '2024-06-27 10:02:40', '1-870-762-', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(74, 100, 2, '2024-05-23 22:40:06', '+1.240.283', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(75, 78, 4, '2024-08-30 17:36:36', '430.985.68', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(76, 73, 7, '2024-04-01 23:14:10', '1-845-252-', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(77, 26, 3, '2024-09-09 17:59:55', '(769) 960-', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(78, 74, 8, '2024-05-10 02:32:57', '(708) 754-', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(79, 55, 2, '2024-03-08 17:16:49', '1-430-821-', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(80, 60, 2, '2024-05-27 20:23:38', '1-726-754-', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(81, 87, 8, '2024-01-31 14:53:52', '1-443-261-', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(82, 92, 2, '2024-05-25 01:27:17', '574-575-24', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(83, 39, 3, '2024-11-20 06:46:36', '+1 (682) 7', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(84, 62, 8, '2024-11-22 21:28:02', '813-787-37', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(85, 5, 5, '2024-07-08 23:57:11', '+1 (283) 9', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(86, 78, 7, '2024-07-12 20:53:58', '737.812.90', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(87, 2, 2, '2024-10-01 06:40:17', '681.500.63', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(88, 95, 7, '2024-11-13 16:59:42', '+1.540.797', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(89, 5, 5, '2024-06-29 02:29:09', '+187061621', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(90, 22, 1, '2024-08-24 23:42:44', '+1-332-788', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(91, 58, 9, '2024-08-24 23:23:49', '+1-856-696', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(92, 61, 4, '2024-10-03 14:57:36', '1-678-344-', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(93, 74, 3, '2024-09-14 03:49:37', '319.994.21', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(94, 22, 8, '2024-07-03 00:28:14', '1-620-716-', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(95, 18, 3, '2024-04-18 08:46:28', '216-902-47', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(96, 49, 8, '2024-06-16 05:51:55', '+148481339', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(97, 47, 10, '2024-04-02 15:08:32', '878-744-54', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(98, 96, 7, '2024-05-04 18:33:34', '(502) 781-', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(99, 81, 6, '2024-02-17 02:51:21', '1-480-660-', '2024-12-08 18:50:57', '2024-12-08 18:50:57'),
(100, 42, 8, '2024-01-30 04:44:09', '+1 (269) 9', '2024-12-08 18:50:57', '2024-12-08 18:50:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `parent_phone` varchar(29) NOT NULL,
  `class_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `date_of_birth`, `parent_phone`, `class_id`, `created_at`, `updated_at`) VALUES
(1, 'Elta', 'Beer', '1972-03-18', '+1-947-382-9389', 3, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(2, 'Anissa', 'Welch', '1984-04-19', '+1-864-368-2970', 5, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(3, 'Elwyn', 'Friesen', '2009-08-29', '704-758-0995', 4, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(4, 'Frederik', 'Roberts', '1973-05-03', '1-863-701-4910', 1, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(5, 'Charlene', 'Little', '1982-04-11', '(860) 493-7353', 7, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(6, 'Garland', 'Steuber', '1994-02-24', '(678) 536-7967', 4, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(7, 'Arnulfo', 'Doyle', '2005-09-08', '870-348-7036', 3, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(8, 'Ryan', 'Boehm', '2013-01-22', '1-727-648-3669', 1, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(9, 'Peggie', 'Schinner', '2020-01-18', '+1 (843) 407-7077', 4, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(10, 'Taurean', 'Jacobi', '2014-08-22', '+15419630513', 7, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(11, 'Deonte', 'Wilkinson', '1999-12-01', '+1.949.201.5454', 2, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(12, 'Adriel', 'Powlowski', '1971-12-19', '(820) 666-3231', 3, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(13, 'Savanah', 'Nader', '2019-10-11', '+1-267-251-1073', 5, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(14, 'Marjolaine', 'Turcotte', '1984-03-27', '1-337-520-5519', 8, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(15, 'Frida', 'Trantow', '1978-06-25', '(470) 942-1222', 10, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(16, 'Mercedes', 'Doyle', '2006-03-22', '+1.620.893.0453', 4, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(17, 'Ellen', 'Windler', '1990-06-01', '+17758153420', 6, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(18, 'Enrique', 'Stehr', '2003-04-11', '+1.401.957.8732', 2, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(19, 'Marlene', 'Lynch', '1998-06-17', '+1-618-289-6896', 3, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(20, 'Rosalyn', 'Heathcote', '2015-04-10', '(502) 989-0125', 3, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(21, 'Manley', 'Thompson', '2021-04-29', '1-469-956-0182', 7, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(22, 'Trudie', 'Von', '1982-12-11', '848.262.2800', 10, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(23, 'Roberto', 'Rodriguez', '1973-04-02', '915-401-9571', 2, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(24, 'Dee', 'Russel', '2008-01-17', '269-205-9932', 2, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(25, 'Elinor', 'Ebert', '2005-09-27', '+1-650-433-9422', 7, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(26, 'Ron', 'Kshlerin', '2009-10-05', '(602) 296-7135', 8, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(27, 'Sister', 'Runolfsdottir', '1986-05-09', '(820) 483-8331', 5, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(28, 'Leora', 'Nolan', '1976-05-12', '1-323-434-7763', 7, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(29, 'Juanita', 'Wolf', '2012-01-30', '+18645179728', 3, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(30, 'Jarrett', 'Jast', '2019-02-27', '(989) 733-4345', 8, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(31, 'Kiarra', 'Schaefer', '2012-05-25', '541.544.3211', 5, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(32, 'Nella', 'Rau', '2011-02-14', '(360) 856-0612', 1, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(33, 'Adeline', 'Koelpin', '1994-01-23', '956.424.9523', 8, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(34, 'Gabriel', 'Strosin', '2015-07-05', '+1 (940) 233-4218', 10, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(35, 'Marc', 'Champlin', '2002-10-31', '580.280.7144', 5, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(36, 'Florida', 'Price', '2009-01-24', '+15702591896', 4, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(37, 'Kayden', 'Waelchi', '2022-01-16', '541-656-1516', 6, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(38, 'Elza', 'Senger', '2017-07-24', '816-382-0845', 3, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(39, 'Roselyn', 'Goldner', '1974-03-07', '631.863.9455', 5, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(40, 'Mandy', 'Sporer', '1978-02-04', '(956) 390-1893', 5, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(41, 'Brant', 'Smith', '2019-03-12', '+1.530.425.4634', 5, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(42, 'Lauryn', 'Dicki', '1997-07-06', '(321) 897-9823', 6, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(43, 'Sallie', 'Bins', '2022-09-12', '(323) 796-2920', 6, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(44, 'Federico', 'Lockman', '2019-09-16', '334-506-8122', 1, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(45, 'Jeremy', 'Padberg', '1999-01-24', '419.622.7793', 10, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(46, 'Linwood', 'Tremblay', '1971-09-29', '+1-626-225-0074', 1, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(47, 'Heaven', 'Cormier', '1979-09-08', '+1-510-771-4960', 2, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(48, 'Sigmund', 'Grant', '2022-02-24', '(928) 870-6248', 1, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(49, 'Camryn', 'Eichmann', '2015-06-09', '(917) 270-3400', 9, '2024-12-08 18:50:37', '2024-12-08 18:50:37'),
(50, 'Stewart', 'Kuphal', '2005-09-28', '+1-828-917-3128', 6, '2024-12-08 18:50:37', '2024-12-08 18:50:37');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `computers`
--
ALTER TABLE `computers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `issues_computer_id_foreign` (`computer_id`);

--
-- Chỉ mục cho bảng `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`medicine_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sale_id`),
  ADD KEY `sales_medicine_id_foreign` (`medicine_id`);

--
-- Chỉ mục cho bảng `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_class_id_foreign` (`class_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `computers`
--
ALTER TABLE `computers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `issues`
--
ALTER TABLE `issues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `issues`
--
ALTER TABLE `issues`
  ADD CONSTRAINT `issues_computer_id_foreign` FOREIGN KEY (`computer_id`) REFERENCES `computers` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_medicine_id_foreign` FOREIGN KEY (`medicine_id`) REFERENCES `medicines` (`medicine_id`);

--
-- Các ràng buộc cho bảng `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
