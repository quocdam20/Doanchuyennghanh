-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2021 at 03:57 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nhakhoa8`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2021_09_25_074102_create_tbl_admin_table', 1),
(5, '2021_09_30_125535_create_tbl_category_product_table', 2),
(6, '2021_09_30_133131_create_tbl_category_product_table', 3),
(7, '2021_10_02_033216_create_tbl_customer_product_table', 4),
(8, '2021_10_02_034128_create_tbl_customer_product_table', 5),
(9, '2021_10_06_145228_create_tbl_doctor_table', 6),
(10, '2021_10_06_145453_create_tbl_feedback_table', 6),
(11, '2021_10_06_145616_create_tbl_employee_table', 6),
(12, '2021_10_06_145723_create_tbl_revenue_table', 6),
(13, '2021_10_06_145751_create_tbl_material_table', 6),
(14, '2021_10_06_145820_create_tbl_appointment_table', 6),
(15, '2021_11_17_175022_create_tbl_appointmentc_table', 7),
(16, '2021_11_23_054615_create_tbl_material_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_shop` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_name`, `admin_password`, `admin_phone`, `admin_shop`, `created_at`, `updated_at`) VALUES
(1, 'nk.tamduc', '123456', '0346479740', 'Nha Khoa Tâm Đức', NULL, NULL),
(3, 'nk.minhy', '123', '0346479740', 'Nha Khoa Minh Y', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointmentc`
--

CREATE TABLE `tbl_appointmentc` (
  `id_appoint` int(10) UNSIGNED NOT NULL,
  `fullname_appoint` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_appoint` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_appoint` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_appoint` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_appoint` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stt_appointment` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `id_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_appointmentc`
--

INSERT INTO `tbl_appointmentc` (`id_appoint`, `fullname_appoint`, `email_appoint`, `date_appoint`, `time_appoint`, `phone_appoint`, `admin_id`, `created_at`, `updated_at`, `stt_appointment`, `id_user`) VALUES
(3, 'quocbro', 'quocdam20@gmail.com', '11/30/2021', '12:30am', '0346479740', '5', NULL, NULL, '0', 2),
(5, 'Quốc Biến Thái No.1', 'quocdam20@gmail.com', '11/26/2021', '1:00am', '234324', '2', NULL, NULL, '0', 10),
(6, 'Quốc Biến Thái No.1', 'quocdam22', '11/26/2021', '1:00am', '0346479740', '1', NULL, NULL, '0', 10),
(7, 'Quốc Biến Thái No.1', 'quoc30ne@gmail.com', '11/25/2021', '1:30am', '0346479740', '5', NULL, NULL, '0', 10),
(8, 'Quốc Biến Thái No.1', 'quocdam20', '11/26/2021', '1:30am', '234324', '4', NULL, NULL, '0', 10),
(9, 'Quooc minh', 'quocdam20@gmail.com', '11/22/2021', '12:30am', '0346479740', '1', NULL, NULL, '0', 18),
(10, 'Quooc minh', 'quocdam20@gmail.com', '11/22/2021', '12:30am', '0346479740', '1', NULL, NULL, '0', 18),
(11, 'Quooc minh', 'quocdam20@gmail.com', '11/26/2021', '12:30am', '0346479740â', '5', NULL, NULL, '0', 18),
(12, 'Quooc minh', 'quocdam20@gmail.com', '11/1/2021', '1:30am', '0346479740', '1', NULL, NULL, '0', 18),
(13, 'Trương Minh Quoc', 'quocne@gmail.com', '11/25/2021', '12:30am', '0346479740', '1', NULL, NULL, '0', 16),
(16, 'Nguyễn Thị Cẩm Hà', 'camha4345@gmail.com', '11/30/2021', '10:00am', '0392132300', '3', NULL, NULL, '0', 16),
(17, 'Bùi Thanh Khiết', 'BT.Khiet@gmail.com', '11/29/2021', '12:30am', '090999999', '3', NULL, NULL, '0', 16),
(18, 'Võ Quốc Lương', 'vqluong@gmail.com', '11/28/2021', '1:00am', '0346411111', '3', NULL, NULL, '0', 16);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_monney` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `category_name`, `category_monney`, `category_body`, `created_at`, `updated_at`) VALUES
(3, 'Lấy tủy', '600.000', 'Điều trị tủy răng là phương pháp lấy bỏ phần tủy bị viêm hay đã chết nằm sâu trong thân răng.', NULL, NULL),
(4, 'Niềng răng', '20.000.000', 'Niềng răng mắc cài kim loại kết hợp với dây thun định hình chuyên dùng trong nha khoa để tạo lực tác động giúp di chuyển các răng lệch, nhô hay thụt vào bên trong đến vị trí thích hợp để cân đối hàm răng.', NULL, NULL),
(6, 'Rám Răng', '200.000', 'Trám răng thẩm mỹ là phương pháp nha khoa đơn giản nhằm phục hồi chức năng của những chiếc răng bị hư hỏng do sâu răng, răng mẻ, răng vỡ, răng thưa, răng hở lợi,…', NULL, NULL),
(14, 'Nhổ Răng', '20 ~100.000', 'Nhổ răng là thủ thuật nha khoa phổ biến được chỉ định bởi bác sĩ nhằm loại bỏ những chiếc răng sâu, răng hư, răng lung lay,… không thể bảo tồn được, để tránh ảnh hưởng đến những răng kế cận, gây hôi miệng và một số bệnh về răng miệng khác.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_product`
--

CREATE TABLE `tbl_customer_product` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_birthday` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_customer_product`
--

INSERT INTO `tbl_customer_product` (`customer_id`, `customer_fullname`, `customer_name`, `customer_password`, `customer_address`, `customer_phone`, `customer_gender`, `customer_birthday`, `created_at`, `updated_at`) VALUES
(10, 'Quốc Biến Thái No.1', 'quocbienthai', '123555', 'binhduong', '999999999', 'Nam', '2000-10-11 00:00:00', NULL, NULL),
(11, 'Hà Đẹp Trai', 'hadeptrai', '147', 'Phú Giáo', '0392132300', 'Nữ', '2000-01-31 00:00:00', NULL, NULL),
(13, 'Truong Minh Quoc', 'quoc', '123', 'bb', '0123', NULL, NULL, NULL, NULL),
(15, 'Quốc Bede', 'quocbd', '123', 'Bình Dương', '853146130', NULL, NULL, NULL, NULL),
(16, 'Quốc damdang', 'quocdamdang', '123', 'Miền Nam', '22816830', NULL, NULL, NULL, NULL),
(18, 'Quooc minh', 'quocdam20', '123', 'Bauf Bafng', '0346479740', 'Nam', '2000-10-11 00:00:00', NULL, NULL),
(19, 'Tuan', 'Tuanbro', '123', 'bb', '0346479740', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_doctor`
--

CREATE TABLE `tbl_doctor` (
  `doctor_id` int(10) UNSIGNED NOT NULL,
  `doctor_fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_lever` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `doctor_facebook` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_insta` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_shop` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_doctor`
--

INSERT INTO `tbl_doctor` (`doctor_id`, `doctor_fullname`, `doctor_lever`, `doctor_year`, `created_at`, `updated_at`, `doctor_facebook`, `doctor_insta`, `id_shop`) VALUES
(1, 'Truong Minh Quoc', 'DH TDM', '8', NULL, NULL, 'https://www.facebook.com/profile.php?id=100010992789189', NULL, 1),
(2, 'Trương Thị Minh Ý', 'DH Y Dược', '8', NULL, NULL, 'https://www.facebook.com/yvy.truong.94', NULL, 1),
(8, 'Nguyễn Thị Cẩm Hà', 'DH HT-HT Bình Dương', '2', NULL, NULL, 'https://www.facebook.com/has.nguyens.773', NULL, 1),
(9, 'Nguyễn Thị Thuận', 'DH Life', '20', NULL, NULL, 'https://www.facebook.com/profile.php?id=100034606925326', NULL, 1),
(10, 'Nguyễn Thị Cẩm Hường', 'DH KT-KT Bình Dương', '2', NULL, NULL, 'https://www.facebook.com/profile.php?id=100009260488609', NULL, 3),
(11, 'Trương Thị Minh Nhật', 'CD KT-KT Bình Dương', '10', NULL, NULL, 'https://www.facebook.com/truong.sun.9', NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `fb_id` int(10) UNSIGNED NOT NULL,
  `fb_fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb_sdt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb_head` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb_body` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`fb_id`, `fb_fullname`, `fb_email`, `fb_sdt`, `fb_head`, `fb_body`, `created_at`, `updated_at`) VALUES
(1, 'quocbede', 'quocbede@gmail.com', '0346479740', 'Nhân Viên', 'thằng đầu vàn đánh kháhc', NULL, NULL),
(2, 'quoc biến thái', 'quocdam20@gmail.com', '0346479740', 'CSVC', 'ghế nằm đau lưng quá', NULL, NULL),
(3, 'quocbede', 'quocdam20@gmail.com', '22816830', 'nhân viên', 'acsacsa', NULL, NULL),
(4, 'quocbede', 'quocdam20@gmail.com', '0123', 'nha vien', 'asacasc', NULL, NULL),
(5, 'quocbede', 'âcscsac', '0123', 'nha vien', 'acsacsa', NULL, NULL),
(6, 'quốc đep trai', 'quocdep123@gmail.com', '0346479740', 'no', 'nv có thái độ khôn gtoost', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_material`
--

CREATE TABLE `tbl_material` (
  `id_mate` int(10) UNSIGNED NOT NULL,
  `name_mate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `leng_mate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_mate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_shop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dv_nhap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_material`
--

INSERT INTO `tbl_material` (`id_mate`, `name_mate`, `leng_mate`, `date_mate`, `id_shop`, `dv_nhap`, `created_at`, `updated_at`) VALUES
(1, 'Thuốt trám răng', '2', '2021-11-11', '5', 'Shop vat lieu nha khoa BD', NULL, NULL),
(2, 'Thuốt Tê', '100', '11/10/2020', '3', 'VLXD hồng nam', NULL, NULL),
(3, 'Thuốt Tê', '100', '11/20/2000', '3', 'VLXD hồng nam', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_revenue`
--

CREATE TABLE `tbl_revenue` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Truong Minh Quoc', 'quocdam20@gmail.com', NULL, '123', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_appointmentc`
--
ALTER TABLE `tbl_appointmentc`
  ADD PRIMARY KEY (`id_appoint`);

--
-- Indexes for table `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_customer_product`
--
ALTER TABLE `tbl_customer_product`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_doctor`
--
ALTER TABLE `tbl_doctor`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`fb_id`);

--
-- Indexes for table `tbl_material`
--
ALTER TABLE `tbl_material`
  ADD PRIMARY KEY (`id_mate`);

--
-- Indexes for table `tbl_revenue`
--
ALTER TABLE `tbl_revenue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_appointmentc`
--
ALTER TABLE `tbl_appointmentc`
  MODIFY `id_appoint` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_customer_product`
--
ALTER TABLE `tbl_customer_product`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_doctor`
--
ALTER TABLE `tbl_doctor`
  MODIFY `doctor_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `fb_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_material`
--
ALTER TABLE `tbl_material`
  MODIFY `id_mate` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_revenue`
--
ALTER TABLE `tbl_revenue`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
