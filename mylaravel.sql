-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 25, 2020 lúc 05:44 AM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mylaravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Thể Thao', '2020-08-06 18:13:06', '2020-08-13 18:13:06'),
(2, 'xã hội', '2020-08-08 03:43:45', '2020-08-08 03:43:45'),
(3, 'chính trị', '2020-08-11 04:48:51', '2020-08-11 04:48:51'),
(20, 'hihi', NULL, NULL),
(21, 'Giáo Dục', '2020-08-24 13:14:08', '2020-08-24 13:14:08'),
(24, '2LSc8222', '2020-11-03 09:46:49', '2020-11-03 09:46:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `comment_id` bigint(20) NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `comment_author` bigint(20) UNSIGNED NOT NULL,
  `comment_content` longtext NOT NULL,
  `comment_image` varchar(255) DEFAULT NULL,
  `comment_parent` int(11) DEFAULT NULL,
  `comment_status` varchar(10) DEFAULT 'public',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`comment_id`, `post_id`, `comment_author`, `comment_content`, `comment_image`, `comment_parent`, `comment_status`, `created_at`, `updated_at`) VALUES
(16, 2, 3, 'sdfsdfsdfasdasdasd', NULL, 0, 'public', '2020-10-07 04:15:57', '2020-10-07 04:15:57'),
(17, 2, 3, 'sd;lsdpfjoi sdakfhiudsfsdf', NULL, 0, 'public', '2020-10-07 04:21:44', '2020-10-07 04:21:44'),
(18, 2, 3, '@234234324, slsdhf sodihfouisdhf', NULL, 17, 'public', '2020-10-07 04:21:53', '2020-10-07 04:21:53'),
(19, 2, 3, 'gfhgfh', '[\"1602547275.png\"]', 0, 'public', '2020-10-13 00:01:14', '2020-10-13 00:01:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_08_08_010448_category', 1),
(4, '2020_08_08_014359_news', 2),
(5, '2020_08_08_014428_comment', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summery` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `highlight` tinyint(1) NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `idcategory` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `summery`, `content`, `image`, `highlight`, `view`, `idcategory`, `created_at`, `updated_at`) VALUES
(2, 'Đoàn Văn Hậu: Sự bổ sung cực kỳ cần thiết của CLB Hà Nội trong giai đoạn 2', 'Sự trở lại của Đoàn Văn Hậu hứa hẹn sẽ giúp CLB Hà Nội tạo nên màn lột xác trong giai đoạn 2 của mùa giải.fsafsaf', '<p>Với việc c&aacute;c giải đấu trong nước đang tạm ho&atilde;n v&igrave; dịch Covid-19, nhiều đội b&oacute;ng c&oacute; thời gian để nạp đầy năng lượng trước khi bung tỏa ở giai đoạn c&ograve;n lại của m&ugrave;a giải. Ở nửa đầu m&ugrave;a giải năm nay, đội b&oacute;ng Thủ đ&ocirc; đ&atilde; thi đấu kh&ocirc;ng thực sự tốt, với những thất bại ngay tr&ecirc;n s&acirc;n nh&agrave; trước SLNA rồi S&agrave;i G&ograve;n FC. Điều n&agrave;y một phần đến từ việc họ kh&ocirc;ng c&oacute; được đội h&igrave;nh ra s&acirc;n tốt nhất khi một v&agrave;i vị tr&iacute; quan trọng gặp chấn thương, số kh&aacute;c lại mất phong độ. V&agrave; nếu kh&ocirc;ng phải một đội b&oacute;ng c&oacute; chiều s&acirc;u đội h&igrave;nh, chưa chắc H&agrave; Nội đ&atilde; c&oacute; thể trụ lại trong tốp 4 tr&ecirc;n BXH V-League ở thời điểm hiện tại. V-League tạm dừng sau v&ograve;ng 11 cũng l&agrave; l&uacute;c CLB H&agrave; Nội đang tr&ecirc;n đ&agrave; hồi sinh sau trận thắng tưng bừng 3-0 ngay tr&ecirc;n s&acirc;n của đối thủ TP.HCM. Ch&iacute;nh v&igrave; vậy, kh&ocirc;ng &iacute;t người đang kỳ vọng rằng qu&atilde;ng nghỉ dịch lần n&agrave;y sẽ gi&uacute;p nh&agrave; ĐKVĐ V-League kịp phục hồi, sau khi vừa bị cơn b&atilde;o chấn thương c&agrave;n qu&eacute;t qua.</p>', '0k21h_Doan-Van-Hau-Su-bo-sung-cuc-ky-can-thiet-cua-CLB-Ha-Noi-trong-giai-doan-2-hinh-anh-2.jpg', 1, 0, 1, '2020-08-08 02:40:48', '2020-08-22 10:39:59'),
(4, 'HLV Chung Hae Seong trở lại, Minh Phương rời TP HCM', 'Sự trở lại bất ngờ của chiến lược gia người Hàn Quốc đã kéo theo những sự thay đổi lớn trong thành phần ban huấn luyện CLB TP HCM.', '<p>S&aacute;ng nay (11/8), CLB TP HCM đ&atilde; c&oacute; buổi họp v&agrave; quyết định cuối c&ugrave;ng được đưa ra, đ&oacute; l&agrave; HLV Chung Hae Seong sẽ quay trở lại dẫn dắt đội. Đ&acirc;y l&agrave; một th&ocirc;ng tin rất bất ngờ, khi chiến lược gia tới từ xứ kim chi trước đ&oacute; từ chối trở th&agrave;nh GĐKT của CLB v&agrave; ra đi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>V&agrave; với sự &ldquo;t&aacute;i hợp&rdquo; n&agrave;y (thực tế th&igrave; HLV Chung chưa từng chấm dứt hợp đồng với đội b&oacute;ng), h&agrave;ng loạt c&aacute;i t&ecirc;n trong th&agrave;nh phần ban huấn luyện đ&atilde; c&oacute; sự x&aacute;o trộn. HLV tạm quyền Hữu Thắng sẽ trở lại cương vị Chủ tịch CLB, v&agrave; c&aacute;c trợ l&yacute; của cựu HLV tuyển Việt Nam cũng kh&ocirc;ng c&ograve;n được nắm vai tr&ograve;.</p>', 'wpQFy_minh-phuong-roi-tp-hcm.jpg', 0, 0, 1, '2020-08-11 16:21:05', '2020-08-22 12:36:20'),
(5, 'Ông Nguyễn Đức Chung bị điều tra liên quan đến 3 vụ án hình sự', 'Thiếu tướng Tô Ân Xô, người phát ngôn Bộ Công an cho biết, ông Nguyễn Đức Chung bị điều tra liên quan tới 3 vụ án hình sự.', '<p>Li&ecirc;n quan đến việc&nbsp;<a href=\"https://thanhnien.vn/thoi-su/tam-dinh-chi-cong-tac-chu-tich-ha-noi-nguyen-duc-chung-1264179.html\" target=\"_blank\">&ocirc;ng Nguyễn Đức Chung bị tạm đ&igrave;nh chỉ c&ocirc;ng t&aacute;c</a>, chiều 11.8, trao đổi với Thanh Ni&ecirc;n, thiếu tướng T&ocirc; &Acirc;n X&ocirc;, Ch&aacute;nh Văn ph&ograve;ng, người ph&aacute;t ng&ocirc;n Bộ C&ocirc;ng an cho biết, theo điều tra ban đầu, &ocirc;ng Nguyễn Đức Chung c&oacute; li&ecirc;n quan đến 3 vụ &aacute;n h&igrave;nh sự.</p>\r\n\r\n<p>Thứ nhất l&agrave; vụ &aacute;n bu&ocirc;n lậu, vi phạm quy định về kế to&aacute;n g&acirc;y hậu quả nghi&ecirc;m trọng, rửa tiền, vi phạm quy định về đấu thầu g&acirc;y hậu quả nghi&ecirc;m trọng xảy ra tại C&ocirc;ng ty TNHH Thương mại v&agrave; Dịch vụ Kỹ thuật Nhật Cường (<a href=\"https://thanhnien.vn/thoi-su/tong-giam-doc-cong-ty-nhat-cuong-bi-interpol-truy-na-do-toan-the-gioi-1127733.html\" target=\"_blank\">C&ocirc;ng ty Nhật Cường</a>), Sở Kế hoạch v&agrave; Đầu tư H&agrave; Nội v&agrave; một số đơn vị li&ecirc;n quan.</p>\r\n\r\n<p>Thứ hai l&agrave; vụ &aacute;n vi phạm quy định về quản l&yacute;, sử dụng t&agrave;i sản nh&agrave; nước g&acirc;y thất tho&aacute;t, l&atilde;ng ph&iacute; xảy ra tại TP. H&agrave; Nội.</p>\r\n\r\n<p>Thứ ba l&agrave; vụ &aacute;n&nbsp;<a href=\"https://thanhnien.vn/thoi-su/vi-sao-tai-xe-cua-chu-tich-ha-noi-chiem-doat-tai-lieu-dieu-tra-toi-tham-nhung-1254937.html\" target=\"_blank\">chiếm đoạt t&agrave;i liệu b&iacute; mật nh&agrave; nước</a>&nbsp;m&agrave; Cơ quan An ninh điều tra, Bộ C&ocirc;ng an đ&atilde; khởi tố vụ &aacute;n mới đ&acirc;y.</p>\r\n\r\n<p>Như&nbsp;<em>Thanh Ni&ecirc;n</em>&nbsp;đưa tin, ng&agrave;y 11.8, Bộ Ch&iacute;nh trị đ&atilde; c&oacute; quyết định đ&igrave;nh chỉ sinh hoạt Ban Chấp h&agrave;nh Đảng bộ, Ban Thường vụ Th&agrave;nh ủy H&agrave; Nội v&agrave;&nbsp;<a href=\"https://thanhnien.vn/thoi-su/bo-chinh-tri-dinh-chi-chuc-pho-bi-thu-thanh-uy-cua-ong-nguyen-duc-chung-1264313.html\" target=\"_blank\">đ&igrave;nh chỉ chức vụ Ph&oacute; b&iacute; thư Th&agrave;nh ủy H&agrave; Nội đối với &ocirc;ng Nguyễn Đức Chung</a>, Ủy vi&ecirc;n Trung ương Đảng, Ph&oacute; b&iacute; thư Th&agrave;nh ủy, Chủ tịch UBND TP.H&agrave; Nội để x&aacute;c minh, điều tra l&agrave;m r&otilde; tr&aacute;ch nhiệm c&oacute; li&ecirc;n quan của &ocirc;ng Nguyễn Đức Chung trong một số vụ &aacute;n theo quy định của ph&aacute;p luật.</p>\r\n\r\n<p>C&ugrave;ng ng&agrave;y,&nbsp;<a href=\"https://thanhnien.vn/tin-tuc/thu-tuong-chinh-phu.html\">Thủ tướng Ch&iacute;nh phủ</a>&nbsp;Nguyễn Xu&acirc;n Ph&uacute;c vừa k&yacute; quyết định 1223/QĐ-TTg ng&agrave;y 11.8.2020 tạm đ&igrave;nh chỉ c&ocirc;ng t&aacute;c đối với &ocirc;ng Nguyễn Đức Chung, Chủ tịch UBND TP.H&agrave; Nội.</p>', 'RPmpS_ctubndhnnguyenducchung2_nsnj.jpg', 1, 0, 2, '2020-08-11 16:34:59', '2020-08-11 18:30:59'),
(6, 'Một cách nhìn người tài của cố Tổng bí thư Lê Khả Phiêu', 'Nhiều người sẽ nghĩ, là một nhà chính trị quân sự, cố Tổng bí thư Lê Khả Phiêu hẳn là người khô cứng và cực kỳ... bảo thủ.', '<p>Thế nhưng, những trải nghiệm của bản th&acirc;n người viết với &ocirc;ng, cho thấy ở &ocirc;ng một con người c&oacute; t&iacute;nh quyết đo&aacute;n cao, d&aacute;m chịu tr&aacute;ch nhiệm trước những quyết định của m&igrave;nh cho d&ugrave; c&oacute; thể sẽ bị đụng chạm, thậm ch&iacute; &iacute;t nhiều ảnh hưởng đến sự nghiệp ch&iacute;nh trị của bản th&acirc;n, v&agrave; đặc biệt l&agrave; tư tưởng rất&hellip; mới.</p>\r\n\r\n<p>Trong số những tư tưởng đổi mới khi &ocirc;ng&nbsp;<a href=\"https://thanhnien.vn/thoi-su/co-tong-bi-thu-le-kha-phieu-nguoi-khoi-dong-viec-chinh-don-dang-1262506.html\" target=\"_blank\">L&ecirc; Khả Phi&ecirc;u ở vị tr&iacute; đứng đầu Đảng ta</a>, người ta hay đề cập tới chuyện &ldquo;động trời&rdquo; khi &ocirc;ng mới nhậm chức Tổng b&iacute; thư kh&ocirc;ng l&acirc;u m&agrave; đ&atilde; quyết định bỏ chế độ Cố vấn Ban Chấp h&agrave;nh T.Ư Đảng. Tiếp đ&oacute; l&agrave; chuyện cũng &ldquo;đại sự&rdquo; kh&ocirc;ng k&eacute;m, đ&oacute; l&agrave; c&oacute; chỉ đạo để Ch&iacute;nh phủ ra quyết định b&atilde;i bỏ chế độ hưởng lương 100% với c&aacute;n bộ nếu từ cấp ph&oacute; thủ tướng, ph&oacute; chủ tịch Quốc hội trở l&ecirc;n khi th&ocirc;i c&ocirc;ng t&aacute;c.</p>\r\n\r\n<p><a href=\"https://thanhnien.vn/thoi-su/nguyen-tong-bi-thu-le-kha-phieu-tu-tran-o-tuoi-90-1262059.html\" target=\"_blank\">&Ocirc;ng L&ecirc; Khả Phi&ecirc;u&nbsp;</a>chỉ ủng hộ giữ nguy&ecirc;n chế độ n&agrave;y với c&aacute;c vị l&atilde;o th&agrave;nh c&aacute;ch mạng tiền khởi nghĩa (th&aacute;ng 2.1945). Điều n&agrave;y đồng nghĩa với việc ch&iacute;nh &ocirc;ng L&ecirc; Khả Phi&ecirc;u, &ocirc;ng Phan Văn Khải (l&uacute;c đ&oacute; l&agrave; thủ tướng) khi nghỉ cũng sẽ hưởng chế độ lương hưu như bao c&aacute;n bộ kh&aacute;c. Vậy l&agrave; tư tưởng x&oacute;a bỏ đặc quyền đặc lợi đ&atilde; được &ocirc;ng hiện thực, sau nhiều năm kh&ocirc;ng ai d&aacute;m động đến bởi sự tế nhị n&agrave;o đ&oacute;...</p>\r\n\r\n<h2>Bộ trưởng kh&ocirc;ng nhất thiết đảng vi&ecirc;n</h2>\r\n\r\n<p>&Ocirc;ng cũng l&agrave; người b&agrave;y tỏ quan điểm chọn hiền t&agrave;i kh&aacute; đặc biệt.</p>\r\n\r\n<p>B&aacute;o&nbsp;<em>Thanh Ni&ecirc;n&nbsp;</em>ng&agrave;y đ&oacute; đ&atilde; gần như ngay lập tức &ldquo;chộp&rdquo; được tinh thần mới mẻ của &ocirc;ng Phi&ecirc;u tại h&agrave;nh lang một phi&ecirc;n họp Quốc hội, khi &ocirc;ng n&ecirc;u quan điểm kh&ocirc;ng nhất thiết l&agrave;m bộ trưởng phải l&agrave; đảng vi&ecirc;n.</p>\r\n\r\n<p>Khi B&aacute;o&nbsp;<em>Thanh Ni&ecirc;n</em>&nbsp;đăng b&agrave;i phỏng vấn Tổng b&iacute; thư L&ecirc; Khả Phi&ecirc;u của nh&agrave; b&aacute;o Ho&agrave;ng Hải V&acirc;n tr&ecirc;n trang nhất với c&aacute;i t&iacute;t<em>&nbsp;Bộ trưởng kh&ocirc;ng nhất thiết phải đảng vi&ecirc;n</em>, đ&atilde; c&oacute; rất nhiều tranh luận xảy ra.</p>\r\n\r\n<p>Một số l&atilde;nh đạo cấp cao thậm ch&iacute; cũng kh&ocirc;ng h&agrave;i l&ograve;ng, c&oacute; người đ&atilde; hỏi lại Tổng b&iacute; thư xem&nbsp;<em>Thanh Ni&ecirc;n&nbsp;</em>c&oacute; bịa lời &ocirc;ng kh&ocirc;ng. &Ocirc;ng khẳng định: &ldquo;T&ocirc;i đ&atilde; trả lời như vậy đấy!&rdquo;, khiến l&atilde;nh đạo B&aacute;o<em>&nbsp;Thanh Ni&ecirc;n</em>&nbsp;ng&agrave;y đ&oacute; &ldquo;tho&aacute;t&rsquo;&rsquo; khỏi bị ph&ecirc; b&igrave;nh, quy chụp nặng nề.</p>\r\n\r\n<p>Thậm ch&iacute;, trong b&agrave;i b&aacute;o Tổng b&iacute; thư c&ograve;n n&oacute;i th&ecirc;m ph&oacute; thủ tướng cũng kh&ocirc;ng cần l&agrave; đảng vi&ecirc;n. Theo &ocirc;ng, đ&acirc;y cũng kh&ocirc;ng phải l&agrave; cải c&aacute;ch g&igrave;, chỉ l&agrave; muốn thu h&uacute;t v&agrave; đối xử với hiền t&agrave;i như Chủ tịch&nbsp;<a href=\"https://thanhnien.vn/tin-tuc/ho-chi-minh.html\">Hồ Ch&iacute; Minh</a>&nbsp;đ&atilde; từng d&ugrave;ng người hồi trước&nbsp;<a href=\"https://thanhnien.vn/tin-tuc/cach-mang-thang-8.html\">C&aacute;ch mạng Th&aacute;ng 8</a>&nbsp;v&agrave; sau n&agrave;y, khi h&ograve;a b&igrave;nh lập lại năm 1954.</p>\r\n\r\n<p>Chuyện n&agrave;y, t&ocirc;i c&ograve;n th&ecirc;m một lần nữa được nghe ch&iacute;nh nguy&ecirc;n Tổng b&iacute; thư L&ecirc; Khả Phi&ecirc;u nhắc lại khi Ph&oacute; gi&aacute;o sư (PGS) T&ocirc;n Thất B&aacute;ch đột ngột qua đời trong chuyến c&ocirc;ng t&aacute;c tại L&agrave;o Cai (năm 2004). Cố PGS T&ocirc;n Thất B&aacute;ch, nguy&ecirc;n Hiệu trưởng Đại học Y H&agrave; Nội, kh&ocirc;ng phải l&agrave; đảng vi&ecirc;n, nhưng &ocirc;ng lu&ocirc;n được c&aacute;c l&atilde;nh đạo Đảng nh&igrave;n nhận tr&acirc;n trọng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>T&ocirc;i vẫn nhớ, t&igrave;nh cờ ngay sau h&ocirc;m PGS T&ocirc;n Thất B&aacute;ch mất đột ngột, ng&agrave;y 27.3.2004, t&ocirc;i v&agrave; Tổng bi&ecirc;n tập B&aacute;o<em>&nbsp;Thanh Ni&ecirc;n</em>&nbsp;khi đ&oacute; l&agrave; anh Nguyễn C&ocirc;ng Khế c&oacute; mặt tại văn ph&ograve;ng của nguy&ecirc;n Tổng b&iacute; thư L&ecirc; Khả Phi&ecirc;u ở phố Phan Đ&igrave;nh Ph&ugrave;ng, H&agrave; Nội.</p>\r\n\r\n<p>&Ocirc;ng L&ecirc; Khả Phi&ecirc;u lấy tr&ecirc;n b&agrave;n một xấp giấy đ&aacute;nh m&aacute;y đưa ch&uacute;ng t&ocirc;i xem. Đ&oacute; l&agrave; b&agrave;i viết của ch&iacute;nh &ocirc;ng sẽ gửi B&aacute;o&nbsp;<em>Nh&acirc;n D&acirc;n</em>&nbsp;đăng. &Ocirc;ng viết về sự ra đi bất ngờ của PGS T&ocirc;n Thất B&aacute;ch.</p>\r\n\r\n<p>Chuyện một vị cựu Tổng b&iacute; thư của Đảng m&agrave; trực tiếp viết b&agrave;i về một c&aacute; nh&acirc;n (kh&ocirc;ng phải ch&iacute;nh kh&aacute;ch đặc biệt) như vậy, chỉ c&oacute; thể l&yacute; giải rất r&otilde; &ocirc;ng đ&atilde; tr&acirc;n trọng một tr&iacute; thức ngo&agrave;i Đảng như thế n&agrave;o.</p>\r\n\r\n<p>Khi ch&uacute;ng t&ocirc;i đọc xong b&agrave;i viết rất x&uacute;c động, &ocirc;ng Phi&ecirc;u t&acirc;m sự: &ldquo;T&ocirc;i rất qu&yacute; v&agrave; tr&acirc;n trọng t&agrave;i năng, nh&acirc;n c&aacute;ch của T&ocirc;n Thất B&aacute;ch d&ugrave; anh B&aacute;ch kh&ocirc;ng l&agrave; đảng vi&ecirc;n. Đ&atilde; c&oacute; l&uacute;c t&ocirc;i b&agrave;y tỏ quan điểm của m&igrave;nh trước Bộ Ch&iacute;nh trị, T.Ư Đảng, kh&ocirc;ng nhất thiết bộ trưởng, thậm ch&iacute; cấp cao hơn cả bộ trưởng của bộ m&aacute;y nh&agrave; nước ch&uacute;ng ta cứ phải l&agrave; T.Ư ủy vi&ecirc;n, l&agrave; đảng vi&ecirc;n&rdquo;.</p>\r\n\r\n<p>&ldquo;T&ocirc;i n&oacute;i c&aacute;i &yacute; n&agrave;y cũng c&oacute; &yacute; nhắm đến việc định đưa T&ocirc;n Thất B&aacute;ch l&agrave;m Bộ trưởng Y tế&rsquo;&rsquo;, &ocirc;ng Phi&ecirc;u giải th&iacute;ch th&ecirc;m v&agrave; n&oacute;i: Tiếc rằng nhiệm kỳ kh&oacute;a VIII của Đảng m&agrave; t&ocirc;i l&agrave; người kế nhiệm từ đồng ch&iacute; Tổng b&iacute; thư Đỗ Mười, tư tưởng n&agrave;y vẫn chưa thể l&agrave;m được v&igrave; cũng c&oacute; những &yacute; kiến kh&ocirc;ng đồng thuận.</p>\r\n\r\n<p>T&acirc;m sự của một người từng đứng đầu Đảng ta, khiến t&ocirc;i cứ trăn trở m&atilde;i, ch&uacute;ng ta vẫn nhắc nhở nhau phải học tập v&agrave; l&agrave;m theo tư tưởng, đạo đức v&agrave; phong c&aacute;ch Chủ tịch Hồ Ch&iacute; Minh. Thế nhưng tại sao B&aacute;c Hồ của ch&uacute;ng ta th&igrave; từng l&agrave;m vậy v&agrave; cho rằng như thế sẽ c&oacute; lợi cho Đảng hơn nhiều. C&ograve;n ch&uacute;ng ta th&igrave; n&oacute;i l&agrave; &ldquo;học B&aacute;c&rdquo; nhưng lại chưa thực hiện theo tinh thần đ&oacute; của Người?</p>\r\n\r\n<p>C&oacute; lẽ v&igrave; c&ograve;n c&acirc;u nệ v&agrave;o c&aacute;c nguy&ecirc;n tắc, n&ecirc;n ở một số lĩnh vực, nhất l&agrave; khoa học kỹ thuật s&aacute;ng tạo, ch&uacute;ng ta thiếu vắng&nbsp;<a href=\"https://thanhnien.vn/thoi-su/san-nguoi-tai-qua-thi-tuyen-1163274.html\" target=\"_blank\">người t&agrave;i</a>&nbsp;m&agrave; nhiều khi chỉ v&igrave; đ&ocirc;i ch&uacute;t c&aacute; t&iacute;nh của &ldquo;kẻ sĩ&rsquo;&rsquo; m&agrave; kh&ocirc;ng được trọng dụng. Đ&ocirc;i khi cũng v&igrave; phải tu&acirc;n thủ nguy&ecirc;n tắc n&oacute;i tr&ecirc;n m&agrave; tạo ra một lớp c&aacute;n bộ trẻ sống cơ hội t&igrave;m mọi c&aacute;ch chui s&acirc;u để c&oacute; chức, c&oacute; quyền.</p>\r\n\r\n<p>Từ c&acirc;u chuyện nhỏ m&agrave; kh&ocirc;ng nhỏ đ&oacute;, c&aacute; nh&acirc;n t&ocirc;i c&agrave;ng tr&acirc;n trọng hơn một nh&agrave; l&atilde;nh đạo - một c&aacute;n bộ ch&iacute;nh trị qu&acirc;n sự thuần t&uacute;y, một người vốn trưởng th&agrave;nh từ qu&acirc;n đội c&aacute;ch mạng - cố Tổng b&iacute; thư L&ecirc; Khả Phi&ecirc;u.</p>', '0XXCG_nguyen-tong-bi-thu-le-kha-phieu-_anh-ngoc-thang-5_qata.jpg', 1, 0, 3, '2020-08-11 17:19:26', '2020-08-11 17:19:26'),
(9, 'Alphonso Davies: Từ trại tị nạn ở Ghana đến \"người hùng tia chớp\" của Bayern Munnich', 'Alphonso Davies đang có một mùa giải thăng hoa trong màu áo của Bayern Munich và có cơ hội giành chức vô địch châu Âu ở tuổi 19.', '<p><a href=\"https://bongda24h.vn/\"><strong>Home:</strong></a><a href=\"https://bongda24h.vn/bong-da-chau-au-c184-p1.html\">B&oacute;ng đ&aacute; Ch&acirc;u &Acirc;u</a></p>\r\n\r\n<p><a href=\"https://bongda24h.vn/bong-da-chau-au/lich-thi-dau-7.html\">LTĐ C1</a>&nbsp;|&nbsp;<a href=\"https://bongda24h.vn/bong-da-chau-au/ket-qua-7.html\">KQ C1</a>&nbsp;|&nbsp;<a href=\"https://bongda24h.vn/bong-da-chau-au/bang-xep-hang-7.html\">BXH C1</a>&nbsp;|&nbsp;<a href=\"https://bongda24h.vn/bang-xep-hang/top-ghi-ban-chiec-giay-vang-chau-au-186-248091.html\">Vua ph&aacute; lưới</a></p>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table cellpadding=\"0\" cellspacing=\"0\">\r\n				<tbody>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h1>Alphonso Davies: Từ trại tị nạn ở Ghana đến &quot;người h&ugrave;ng tia chớp&quot; của Bayern Munnich</h1>\r\n\r\n<h2>Alphonso Davies đang c&oacute; một m&ugrave;a giải thăng hoa trong m&agrave;u &aacute;o của Bayern Munich v&agrave; c&oacute; cơ hội gi&agrave;nh chức v&ocirc; địch ch&acirc;u &Acirc;u ở tuổi 19.</h2>\r\n\r\n<p>&nbsp;Alphonso Davies, cầu thủ 19 tuổi người Canada đang l&agrave; hậu vệ tr&aacute;i số 1 của Bayern Munich, v&agrave; l&agrave; một trong những c&aacute;i t&ecirc;n xuất sắc nhất thế giới cho vị tr&iacute; n&agrave;y v&agrave;o thời điểm hiện tại.</p>\r\n\r\n<p>Cuộc nội chiến thứ 2 ở Liberia đ&atilde; khiến cặp vợ chồng Debeah Davies v&agrave; Victoria Davies buộc phải rời bỏ qu&ecirc; hương để tới trại tị nạn Buduburam ở Ghana. Ch&iacute;nh tại đ&acirc;y, v&agrave;o ng&agrave;y 2/11/2000, Alphonso Davies đ&atilde; ra đời. 5 năm sau, cả gia đ&igrave;nh Davies tiếp tục di cư tới Edmonton, Canada. Đến năm 17 tuổi, Alphonso Davies ch&iacute;nh thức trở th&agrave;nh một c&ocirc;ng d&acirc;n của đất nước c&oacute; diện t&iacute;ch lớn thứ 2 thế giới.<br />\r\n&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Alphonso Davies Từ trại tị nạn Ghana đến tia chớp của Bayern hình ảnh\" src=\"https://static.bongda24h.vn/medias/original/2020/8/22/Alphonso-Davies-Tu-trai-ti-nan-Ghana-den-tia-chop-cua-Bayern-hinh-anh.jpg\" style=\"width:100%\" />\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Alphonso Davies đ&atilde; vượt qua một tuổi thơ gian khổ để đến với niềm đam m&ecirc; b&oacute;ng đ&aacute;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&ldquo;Ở Ghana an to&agrave;n hơn so với Liberia, nhưng cuộc sống cũng chẳng dễ d&agrave;ng hơn. Mọi người chết đ&oacute;i ngay trong trại tị nạn. Vợ chồng t&ocirc;i c&oacute; thể uống nước qua ng&agrave;y, nhưng Alphonso th&igrave; kh&ocirc;ng thể.<br />\r\n<br />\r\nSau những năm th&aacute;ng khổ sở v&igrave; kh&ocirc;ng c&oacute; đồ ăn v&agrave; kh&ocirc;ng đủ quần &aacute;o để mặc, t&ocirc;i tự h&agrave;o về những g&igrave; con trai m&igrave;nh đ&atilde; l&agrave;m được ng&agrave;y h&ocirc;m nay&rdquo;, &ocirc;ng Debeah Davies nhớ lại.</p>\r\n\r\n<p>Sau 3 năm nổi đ&igrave;nh nổi đ&aacute;m trong m&agrave;u &aacute;o của cả đội trẻ v&agrave; đội một của Vancouver Whitecaps, m&ugrave;a h&egrave; năm 2018, Alphonso Davies ch&iacute;nh thức gia nhập Bayern Munich với mức gi&aacute; 13.5 triệu USD (c&oacute; thể tăng l&ecirc;n 22 triệu t&ugrave;y th&agrave;nh t&iacute;ch).<br />\r\n<br />\r\nKể từ đ&oacute;, ch&agrave;ng thanh ni&ecirc;n người Canada, Alphonso Davies, bắt đầu bước v&agrave;o h&agrave;nh tr&igrave;nh trở th&agrave;nh hậu vệ tr&aacute;i số 1 của b&oacute;ng đ&aacute; thế giới.</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Alphonso Davies Từ trại tị nạn Ghana đến tia chớp của Bayern hình ảnh\" src=\"https://static.bongda24h.vn/medias/original/2020/8/22/alphonso-davies3.png\" style=\"width:100%\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Alphonso Davies khi c&ograve;n kho&aacute;c &aacute;o Vancouver Whitecaps ở giải b&oacute;ng đ&aacute; nh&agrave; nghề Mỹ MLS</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Alphonso Davies c&oacute; xuất ph&aacute;t điểm l&agrave; một tiền vệ c&aacute;nh nhưng Serge Gnabry v&agrave; Kingsley Coman l&agrave; những sự lựa chọn h&agrave;ng đầu cho hai c&aacute;nh ở Bayern Munich. V&igrave; vậy, nếu muốn được sử dụng, anh buộc phải chơi thấp xuống ở vị tr&iacute; của một hậu vệ bi&ecirc;n. Với vai tr&ograve; n&agrave;y, Davies c&oacute; thể ph&aacute;t huy hết điểm mạnh của m&igrave;nh.<br />\r\n<br />\r\nĐ&oacute; l&agrave; thể chất, tốc độ, kỹ thuật v&agrave; sự mưu mẹo. Hơn nữa, sự xuất hiện của Alphonso Davies c&ograve;n gi&uacute;p HLV Hansi Flick (hay trước đ&oacute; l&agrave; Niko Kovac) c&oacute; thể k&eacute;o David Alaba v&agrave;o chơi như một trung vệ lệch tr&aacute;i.</p>\r\n\r\n<p>&ldquo;Alphonso l&agrave; một ch&agrave;ng trai trẻ nhưng cậu ấy đ&atilde; trưởng th&agrave;nh rất nhiều kể từ khi đến đ&acirc;y&rdquo;, HLV Hansi Flick n&oacute;i sau chiến thắng 4-0 của Bayern Munich trước Borussi Dortmund hồi th&aacute;ng 10/2019, &ldquo;Tốc độ của cậu ấy quả thực rất khủng khiếp. D&ugrave; phải đối mặt với cả Achraf Hakimi lẫn Jadon Sancho, Alphonso Davies vẫn kiểm so&aacute;t được mọi thứ&rdquo;.</p>', 'iYyUT_alphonso-davies3.png', 1, 0, 1, '2020-08-22 10:43:20', '2020-08-22 10:43:20'),
(10, '\"Pep phải cảm thấy may mắn khi không bị Man City sa thải\"', 'Chứng kiến Man City bị loại ở Champions League, huyền thoại Arsenal, Paul Merson cho rằng HLV Pep Guardiola phải cảm thấy may mắn khi không bị Man xanh sa thải.', '<p>Man City đ&atilde; thi đấu kh&ocirc;ng th&agrave;nh c&ocirc;ng ở m&ugrave;a giải năm nay. Họ để Liverpool bỏ lại trong cuộc đua v&ocirc; địch ở Ngoại hạng Anh, Man xanh về đ&iacute;ch thứ 2 nhưng k&eacute;m đội b&oacute;ng th&agrave;nh phố Cảng đến 18 điểm. Ở Champions League, đội chủ s&acirc;n Etihad đ&aacute;nh bại Real Madrid 4-2 sau hai lượt trận một c&aacute;ch thuyết phục ở v&ograve;ng 1/8.</p>', 'gIZuT_pep-phai-cam-thay-may-man-khi-khong-bi-man-city-sa-thai.jpg', 1, 0, 1, '2020-08-22 10:45:09', '2020-08-22 10:45:09'),
(11, 'Messi cáu tiết vì cuộc trò chuyện với HLV Ronald Koeman bị phát tán', 'Theo truyền thông Tây Ban Nha, Messi đang tỏ ra không hài lòng khi cuộc nói chuyện giữa anh và HLV Ronald Koeman bị phát tán trên mạng xã hội.', '<p>Messi hiện đang rất bức x&uacute;c trước những th&ocirc;ng tin tr&ecirc;n. Anh cho rằng k&ecirc;nh truyền h&igrave;nh RAC1 đang cố t&igrave;nh b&ocirc;i nhọ m&igrave;nh khi đưa tin kh&ocirc;ng đ&uacute;ng sự thật. Với những th&ocirc;ng tin RAC1 đ&atilde; đăng tải, Messi chẳng kh&aacute;c n&agrave;o kẻ tồi tệ khi quyết dứt &aacute;o ra đi khi Barca đang gặp kh&oacute; khăn.</p>\r\n\r\n<p>Như vậy, tương lai của Messi tại Barca vẫn đang bị đặt dấu hỏi. Trước đ&oacute;, ch&acirc;n s&uacute;t người Argentina cũng đ&atilde; &uacute;p mở khả năng rời Camp Nou sau thảm bại 2-8 trước Bayern Munich tại Tứ kết Champions League 2019/20 vừa qua.</p>\r\n\r\n<p>Hợp đồng giữa Messi v&agrave; Barca chỉ c&ograve;n thời hạn tới năm 2021. Ở thời điểm hiện tại, anh được ph&eacute;p đ&agrave;m ph&aacute;n với c&aacute;c đội b&oacute;ng kh&aacute;c. C&oacute; kh&ocirc;ng dưới 3 đội b&oacute;ng lớn ở ch&acirc;u &Acirc;u muốn c&oacute; được sự phục vụ của cầu thủ từng 6 lần đoạt danh hiệu Quả b&oacute;ng v&agrave;ng.</p>', 'm6Rxo_Messi-cau-tiet-vi-cuoc-tro-chuyen-voi-HLV-Koeman-bi-phat-tan-hinh-anh.jpeg', 1, 0, 1, '2020-08-22 11:08:16', '2020-08-22 11:08:16'),
(12, 'Bruno Fernandes đang chiếm hết hào quang của Quỷ đỏ', 'Thêm một trận đấu, siêu tân binh Bruno Fernandes ghi bàn cho Quỷ đỏ. Tuy nhiên, đó cũng là trận đấu cuối cùng của Man United trong mùa giải này, dù họ được kỳ vọng sẽ tiến xa hơn.', '<p>Trong m&ugrave;a giải thứ 2 của Ole Gunnar Solskjaer, c&aacute;i t&ecirc;n nổi bật nhất chắc chắn l&agrave; Bruno Fernandes &ndash; d&ugrave; anh chỉ thi đấu nửa m&ugrave;a giải. Vai tr&ograve;, tầm ảnh hưởng, khả năng th&iacute;ch nghi, những dấu ấn trong b&agrave;n thắng,&hellip; tất cả đều chỉ ra tiền vệ n&agrave;y l&agrave; một bản hợp đồng cực kỳ th&agrave;nh c&ocirc;ng, sự bổ sung tr&ecirc;n cả tuyệt vời, t&acirc;n binh hay nhất lịch sử.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Điều n&agrave;y c&oacute; cơ sở, v&igrave; c&oacute; ai mới chuyển đến Premier League m&agrave; 3 lần li&ecirc;n tiếp gi&agrave;nh giải cầu thủ xuất sắc nhất th&aacute;ng? Rồi th&agrave;nh t&iacute;ch c&aacute; nh&acirc;n trở th&agrave;nh người ghi nhiều b&agrave;n nhất tại Europa League m&ugrave;a n&agrave;y. Nhưng chỉ thế th&ocirc;i.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Trong 2 trận đấu gần nhất ở giải đấu được xem l&agrave; hạng 2 ch&acirc;u &Acirc;u, Bruno Fernandes ghi 2 b&agrave;n đều từ chấm phạt đền. Phần c&ograve;n lại l&agrave; 44/46 c&uacute; dứt điểm của to&agrave;n đội, 19 lần tr&uacute;ng đ&iacute;ch v&agrave; kh&ocirc;ng ghi nổi b&agrave;n thắng n&agrave;o. Người h&acirc;m mộ MU c&oacute; thể than trời v&igrave; thủ m&ocirc;n đối phương chơi qu&aacute; hay (lần lượt cứu thua 13 v&agrave; 7 lần trong 2 trận). Nhưng quan trọng nhất, h&agrave;ng tiền đạo Quỷ đỏ qu&aacute; thiếu sắc b&eacute;n.</p>', 'ii5qR_Goc-nhin-Bruno-Fernandes-la-van-de-cua-MU-hinh-anh.jpeg', 1, 0, 1, '2020-08-22 11:09:01', '2020-08-22 11:09:01'),
(13, 'TP.HCM đề nghị Bộ Quốc phòng bàn giao 6.000 m2 ở khu Ba Son', 'TP.HCM đề nghị Bộ Quốc phòng bàn giao khu đất rộng hơn 6.000 m2 trong khu vực Ba Son để đầu tư dự án tôn tạo, bảo tồn phát huy giá trị di tích Địa điểm lưu niệm Chủ tịch Tôn Đức Thắng.', '<p>UBND TP.HCM cho biết&nbsp;<a href=\"https://thanhnien.vn/thoi-su/tphcm-lap-to-cong-tac-khai-thac-quy-dat-quanh-tuyen-metro-so-1-1235206.html\" target=\"_blank\">tuyến đường sắt đ&ocirc; thị số 1 (Bến Th&agrave;nh - Suối Ti&ecirc;n)</a>, c&oacute; hướng tuyến đi ngang khu vực n&agrave;y đang được đẩy nhanh tiến độ ho&agrave;n thiện với một số y&ecirc;u cầu bố tr&iacute; hệ thống kỹ thuật v&agrave; thi c&ocirc;ng đặc th&ugrave; n&ecirc;n cần sớm c&oacute; phương &aacute;n xử l&yacute; về mặt kh&ocirc;ng gian kiến tr&uacute;c nhằm hạn chế ph&aacute;t sinh c&aacute;c t&aacute;c động ti&ecirc;u cực đến khu vực di t&iacute;ch.</p>\r\n\r\n<p>Do đ&oacute;, UBND TP.HCM kiến nghị Bộ Quốc ph&ograve;ng b&agrave;n giao khu đất di t&iacute;ch v&agrave; c&aacute;c t&agrave;i sản tr&ecirc;n gắn liền với di t&iacute;ch để bảo tồn v&agrave; ph&aacute;t huy gi&aacute; trị, đồng thời lập phương &aacute;n thiết kế quy hoạch tổng thể khu di t&iacute;ch h&agrave;i h&ograve;a về kh&ocirc;ng gian kiến tr&uacute;c cảnh quan. Sau khi được Bộ Quốc ph&ograve;ng đồng &yacute;, UBND TP HCM sẽ phối hợp với Tổng c&ocirc;ng ty Ba Son thực hiện c&aacute;c thủ tục tiếp nhận, quản l&yacute; đối với khu đất n&agrave;y.</p>', 'cHrSv_bason_wuag.jpg', 1, 0, 2, '2020-08-22 12:31:58', '2020-08-22 12:31:58'),
(14, 'Bị kỷ luật khiển trách, Chủ tịch H.Bình Chánh Trần Phú Lữ nhận nhiệm vụ mới', 'Ông Trần Phú Lữ, Chủ tịch UBND H.Bình Chánh, TP.HCM nhận nhiệm vụ mới sau khi bị kỷ luật khiển trách vì những khuyết điểm, vi phạm trong công tác quản lý nhà nước về đất đai, trật tự xây dựng.', 'Chiều 21.8, Phó chủ tịch thường trực UBND TP.HCM Lê Thanh Liêm đã trao quyết định điều động và bổ nhiệm ông Trần Phú Lữ, Chủ tịch UBND H.Bình Chánh giữ chức vụ Phó giám đốc Trung tâm Xúc tiến thương mại và đầu tư (ITPC), thời gian giữ chức vụ là 5 năm.\r\nÔng Trần Phú Lữ năm nay 43 tuổi, trình độ chuyên môn cử nhân kinh tế, cao cấp lý luận chính trị. Trước khi giữ chức Chủ tịch UBND H.Bình Chánh vào năm 2017, ông Lữ từng có nhiều năm công tác tại Lực lượng Thanh niên xung phong TP.HCM giữ chức vụ Phó chỉ huy trưởng và Chỉ huy trưởng đơn vị này.', 'IWp9F_tranphulu_zykp.jpg', 1, 0, 3, '2020-08-22 12:34:54', '2020-08-22 12:34:54'),
(15, 'Lionel Messi có giá bao nhiêu nếu chia tay Barcelona?', 'Siêu sao Lionel Messi đang đối mặt tình thế khó xử nhất sự nghiệp lừng lẫy của mình, đó là có nên chia tay CLB Barcelona hay vẫn ở lại để kết thúc sự nghiệp tại đây.', '<p>Tuy nhi&ecirc;n, trong &iacute;t nhất 2 m&ugrave;a b&oacute;ng qua đ&atilde; li&ecirc;n tục xuất hiện tin đồn Messi sẽ chia tay Barcelona. Trong đ&oacute;, khả năng cao nhất Messi ra đi sẽ đến&nbsp;<a href=\"https://thanhnien.vn/tin-tuc/man-city.html\">Man City</a>, đội b&oacute;ng c&oacute; đủ yếu tố để chi&ecirc;u mộ si&ecirc;u sao n&agrave;y gồm năng lực&nbsp;<a href=\"https://thanhnien.vn/tai-chinh-kinh-doanh/\">t&agrave;i ch&iacute;nh</a>&nbsp;v&agrave; c&oacute; HLV Pep Guardiola vốn rất th&acirc;n thuộc với anh.</p>\r\n\r\n<p>Mặc d&ugrave; vậy, HLV Pep Guardiola của&nbsp;<a href=\"http://thethao.thanhnien.vn/bong-da-quoc-te/kha-nang-thay-doi-soc-ghe-hlv-pep-guardiola-ve-barcelona-mauricio-pochettino-den-man-city-120598.html\">Man City</a>&nbsp;cũng nhiều lần khẳng định: &ldquo;T&ocirc;i kh&ocirc;ng thể h&igrave;nh dung được khả năng Messi sẽ chia tay Barcelona. Ước muốn của t&ocirc;i, một c&aacute;ch th&agrave;nh thật nhất, lu&ocirc;n mong muốn Messi kết th&uacute;c sự nghiệp tại Barcelona. Đ&oacute; l&agrave; nơi thuộc về cậu ấy, kh&ocirc;ng thể ở bất cứ nơi n&agrave;o kh&aacute;c&rdquo;.</p>', 'MHiM4_messi_cuvn.jpg', 0, 0, 1, '2020-08-22 12:38:33', '2020-08-22 12:38:33'),
(16, 'Bộ GD-ĐT \'chốt\' thi tốt nghiệp THPT đợt 2 vào các ngày 3 và 4.9', 'Bộ GD-ĐT đã có văn bản báo cáo Chính phủ \"chốt\" lịch thi tốt nghiệp THPT đợt 2 cho tất cả các thí sinh chưa thể dự thi đợt 1 do dịch Covid-19.', '<p>Chiều nay, 24.8, trao đổi với&nbsp;<em>Thanh Ni&ecirc;n</em>, &ocirc;ng Nguyễn Hữu Độ, Thứ trưởng Bộ GD-ĐT, cho biết sau khi họp với l&atilde;nh đạo 27 Sở GD-ĐT c&oacute; th&iacute; sinh thi đợt 2 v&agrave; nhận được c&ocirc;ng văn đề xuất của UBND TP.&nbsp;<a href=\"https://thanhnien.vn/tin-tuc/da-nang.html\">Đ&agrave; Nẵng</a>,&nbsp;<a href=\"https://thanhnien.vn/giao-duc/cac-dia-phuong-du-kien-thi-tot-nghiep-thpt-dot-2-ra-sao-1269625.html\" target=\"_blank\">Bộ GD-ĐT đ&atilde; &quot;chốt&quot; lịch thi tốt nghiệp THPT đợt 2</a>, đồng thời&nbsp;c&oacute; văn bản b&aacute;o c&aacute;o Ch&iacute;nh phủ.</p>\r\n\r\n<p>Theo đ&oacute;, lịch thi tốt nghiệp THPT đợt 2 năm 2020 sẽ diễn ra trong 2 ng&agrave;y 3 v&agrave; 4.9 với tất cả 27 tỉnh, th&agrave;nh phố c&oacute; th&iacute; sinh bị ảnh hưởng bởi dịch Covid-19 chưa thể dự thi đợt 1.&nbsp;</p>', 'Xgpcx_img_6104_daph.jpg', 1, 0, 21, '2020-08-24 13:14:53', '2020-08-24 13:14:53'),
(17, 'Nữ giám đốc doanh nghiệp giàu có đâm chết người tình là cán bộ tòa án', 'Do mâu thuẫn tình ái, Đỗ Thu Hà, nữ giám đốc doanh nghiệp giàu có ở Thanh Hóa, đã dùng dao đâm liên tiếp nhiều nhát vào ngực người tình là một cán bộ tòa án cấp huyện, khiến nạn nhân tử vong.', '<p>Vụ &aacute;n n&agrave;y đ&atilde; được đưa ra x&eacute;t xử trước đ&oacute; v&agrave;o ng&agrave;y 28-5, tuy nhi&ecirc;n phi&ecirc;n x&eacute;t xử ng&agrave;y h&ocirc;m đ&oacute; đ&atilde; bị ho&atilde;n tới h&ocirc;m nay mới mở lại.</p>\r\n\r\n<p>Theo th&ocirc;ng tin từ Cơ quan CSĐT C&ocirc;ng an tỉnh Thanh H&oacute;a, khoảng 20h ng&agrave;y 4-8, Đỗ Thu H&agrave; ngồi tr&ecirc;n &ocirc; t&ocirc; do anh L&ecirc; Thế Vinh (SN 1990; ngụ phường Ba Đ&igrave;nh, TP Thanh H&oacute;a) điều khiển.</p>\r\n\r\n<p>Đang đi tr&ecirc;n đường th&igrave; hai b&ecirc;n xảy ra m&acirc;u thuẫn, c&atilde;i v&atilde;. Đến phố L&ecirc; V&atilde;n (phường Lam Sơn, TP Thanh H&oacute;a), H&agrave; cầm dao nhọn đ&acirc;m 2 nh&aacute;t v&agrave;o người anh Vinh khi anh n&agrave;y đang l&aacute;i xe.</p>\r\n\r\n<p>Nạn nh&acirc;n đ&atilde; được đưa đi cấp cứu nhưng đ&atilde; tử vong. Nghi phạm đ&acirc;m chết người t&igrave;nh sau đ&oacute; đến c&ocirc;ng an đầu th&uacute;.</p>', 'WTLfD_1598343299-315-thumbnail-width640height480.jpg', 1, 0, 2, '2020-08-25 09:41:27', '2020-08-25 09:41:27'),
(18, 'Hành động “đặc biệt” giữa dịch Covid-19, TP.Đà Nẵng cảm ơn Bình Định', 'Sau lời kêu gọi của Chủ tịch UBND TP.Đà Nẵng Huỳnh Đức Thơ, chính quyền tỉnh Bình Định đã cử 26 bác sĩ, điều dưỡng, kỹ thuật viên chi viện hỗ trợ Đà Nẵng phòng, chống dịch Covid-19.', '<p>Ng&agrave;y 25/8, UBND tỉnh B&igrave;nh Định x&aacute;c nhận, vừa nhận được c&ocirc;ng văn ph&uacute;c đ&aacute;p, cảm ơn của Th&agrave;nh ủy, HĐND, UBND, UBMTTQ Việt Nam TP.Đ&agrave; Nẵng li&ecirc;n quan đến c&ocirc;ng t&aacute;c ph&ograve;ng, chống dịch Covid-19.</p>\r\n\r\n<p>C&ocirc;ng văn do B&iacute; thư Th&agrave;nh ủy Đ&agrave; Nẵng Trương Quang Nghĩa k&yacute; cho hay, thời gian qua, t&igrave;nh h&igrave;nh dịch Covid-19 tr&ecirc;n địa b&agrave;n TP.Đ&agrave; Nẵng n&oacute;i ri&ecirc;ng, cả nước n&oacute;i chung diễn biến phức tạp, kh&oacute; lường, số ca nhiễm v&agrave; tử vong do dịch bệnh ng&agrave;y c&agrave;ng tăng.&nbsp;</p>\r\n\r\n<p>Thực hiện lời k&ecirc;u gọi của Tổng B&iacute; thư, Chủ tịch nước Nguyễn Ph&uacute; Trọng, sự chỉ đạo của Ban B&iacute; thư, Thủ tướng Ch&iacute;nh phủ, c&ugrave;ng sự chung tay, hỗ trợ của c&aacute;c ban, bộ, ng&agrave;nh Trung ương v&agrave; địa phương trong cả nước, TP.Đ&agrave; Nẵng đ&atilde; ph&aacute;t huy tinh thần đo&agrave;n kết, tr&aacute;ch nhiệm, huy động sự v&agrave;o cuộc của cả hệ thống ch&iacute;nh trị v&agrave; to&agrave;n x&atilde; hội với nhiều biện ph&aacute;p ph&ograve;ng chống dịch kịp thời, đồng bộ, mạnh mẽ, quyết liệt. Đến nay bước đầu Đ&agrave; Nẵng cơ bản kiểm so&aacute;t t&igrave;nh h&igrave;nh dịch bệnh tr&ecirc;n địa b&agrave;n.</p>\r\n\r\n<p>Đảng bộ, ch&iacute;nh quyền v&agrave; nh&acirc;n d&acirc;n TP.Đ&agrave; Nẵng tr&acirc;n trọng cảm ơn t&igrave;nh cảm, tr&aacute;ch nhiệm của tỉnh B&igrave;nh Định đ&atilde; động vi&ecirc;n, chia sẻ v&agrave; cử lực lượng 26 b&aacute;c sĩ, điều dưỡng, kỹ thuật vi&ecirc;n giỏi chuy&ecirc;n m&ocirc;n, nghiệp vụ để gi&uacute;p đỡ, chung tay c&ugrave;ng TP.Đ&agrave; Nẵng trong c&ocirc;ng t&aacute;c ph&ograve;ng, chống dịch.</p>\r\n\r\n<p>Ch&iacute;nh t&igrave;nh cảm qu&yacute; b&aacute;u v&agrave; hỗ trợ kịp thời n&agrave;y l&agrave; nguồn động vi&ecirc;n to lớn, tiếp th&ecirc;m sức mạnh để TP.Đ&agrave; Nẵng vượt qua kh&oacute; khăn, tập trung triển khai quyết liệt c&aacute;c biện ph&aacute;p ph&ograve;ng chống dịch, g&oacute;p phần c&ugrave;ng cả nước đẩy l&ugrave;i đại dịch Covid-19, sớm đem lại cuộc sống b&igrave;nh y&ecirc;n cho nh&acirc;n d&acirc;n v&agrave; ph&aacute;t triển kinh tế x&atilde; hội.</p>\r\n\r\n<p>&quot;Ch&acirc;n th&agrave;nh cảm ơn Đảng bộ, ch&iacute;nh quyền v&agrave; nh&acirc;n d&acirc;n tỉnh B&igrave;nh Định. Rất mong truyền thống, quan hệ hợp t&aacute;c giữa hai địa phương B&igrave;nh Định - Đ&agrave; Nẵng tiếp tục được vun đắp v&agrave; ph&aacute;t triển trong thời gian đến&quot;, c&ocirc;ng văn cho hay.</p>', 'SyvT4_1598344882-dc05172f6eced6a8f7eb9e0aaf93294b.jpg', 1, 0, 2, '2020-08-25 09:43:07', '2020-08-25 09:43:07'),
(19, 'Trốn thoát khỏi bàn tay chăn dắt ăn xin của mẹ và cậu ruột: Cuộc chạy trốn của bé gái 10 tuổi và em trai', 'N.T.M.D (10 tuổi, ngụ xã Xuân Bảo, H.Cẩm Mỹ, Đồng Nai) cùng em trai đã có hành trình chạy trốn ngoạn mục sau nhiều tháng bị mẹ ruột và người cậu nhẫn tâm bạo hành, chích điện và bắt đi... ăn xin.', '<p>Đ&agrave;o Thị G&aacute;i (38 tuổi, ngụ B&agrave; Rịa-Vũng T&agrave;u) c&oacute; chồng khi đang tuổi mới lớn v&agrave; sinh được 2 người con g&aacute;i. Chia tay người chồng đầu, G&aacute;i quen biết v&agrave; lấy anh N.Đ.T (ngụ x&atilde; Xu&acirc;n Bảo, H.Cẩm Mỹ, Đồng Nai) v&agrave; sinh th&ecirc;m 5 người con. Năm 2018, anh N.Đ.T mất, từ đ&oacute;, người vợ nhẫn t&acirc;m đ&atilde; c&ugrave;ng em trai l&agrave; Đ&agrave;o Văn B&eacute; (24 tuổi) bạo h&agrave;nh v&agrave; &ldquo;chăn dắt&rdquo; ch&iacute;nh những đứa con của m&igrave;nh, h&agrave;nh nghề ăn xin.</p>\r\n\r\n<h2>Kh&ocirc;ng xin đủ 900.000 đồng sẽ bị ch&iacute;ch điện</h2>\r\n\r\n<p>Ở với anh N.Đ.T, G&aacute;i sinh ra 5 đứa con từ 2 - 10 tuổi, trong đ&oacute; D. l&agrave; chị g&aacute;i 10 tuổi, c&aacute;c em trai lần lượt l&agrave; Tr., T., H. v&agrave; Ng. Sau khi anh N.Đ.T mất, G&aacute;i bất ngờ bỏ c&aacute;c con lại cho mẹ chồng l&agrave; b&agrave; P.T.R (55 tuổi, ngụ x&atilde; Xu&acirc;n Bảo, H.Cẩm Mỹ) nu&ocirc;i; một tuần hoặc cả th&aacute;ng mới về một lần. Trong một lần về nh&agrave;, G&aacute;i dẫn theo T., H. v&agrave; Ng. bỏ đi ăn xin. Tiếp đ&oacute; v&agrave;i th&aacute;ng, G&aacute;i về, tiếp tục dẫn theo D. v&agrave; Tr.</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><img alt=\"Răng của Tr. bị gãy do cậu đánh\" src=\"https://image.thanhnien.vn/660/uploaded/ngocthanh/2020_09_02/rang-gay_ufrs.jpg\" /></p>\r\n\r\n			<p>Răng của Tr. bị g&atilde;y do cậu đ&aacute;nh</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Ngồi cạnh b&agrave; nội v&agrave; nhớ lại những th&aacute;ng ng&agrave;y bị mẹ bắt đi&nbsp;<a href=\"https://thanhnien.vn/tin-tuc/an-xin.html\" target=\"_blank\">ăn xin</a>, ch&aacute;u D. h&atilde;i h&ugrave;ng kể: Đầu năm 2020, D. đang học lớp 4 tại Trường tiểu học M.H (x&atilde; Xu&acirc;n Bảo) th&igrave; mẹ bất ngờ xuất hiện bắt D. v&agrave; Tr. về TT.Phước Bửu (H.Xuy&ecirc;n Mộc, B&agrave; Rịa-Vũng T&agrave;u) ở nh&agrave; trọ, mặc cho c&ocirc; gi&aacute;o khuy&ecirc;n can v&igrave; sắp tới kỳ thi học kỳ 1. Ở trọ c&ugrave;ng mẹ con G&aacute;i c&ograve;n c&oacute; Đ&agrave;o Văn B&eacute; v&agrave; con g&aacute;i ri&ecirc;ng của G&aacute;i l&agrave; Đ.T.H (16 tuổi). Ở với mẹ được v&agrave;i h&ocirc;m, thấy khổ cực n&ecirc;n D. v&agrave; c&aacute;c em đ&ograve;i về nh&agrave; b&agrave; nội th&igrave; bị G&aacute;i k&ecirc;u B&eacute; lấy d&acirc;y điện đ&aacute;nh, h&agrave;nh hạ c&aacute;c con.</p>\r\n\r\n<p>Hằng ng&agrave;y, G&aacute;i v&agrave; B&eacute; bắt ch&aacute;u D. v&agrave; Tr. đi ăn xin khắp nơi ở TP.B&agrave; Rịa, H.Long Điền, H.Xuy&ecirc;n Mộc, H.Ch&acirc;u Đức&hellip; &ldquo;C&oacute; l&uacute;c mẹ dắt đi, cũng c&oacute; l&uacute;c cậu B&eacute; chở 2 chị em con đi c&aacute;c nơi để ăn xin. Mỗi ng&agrave;y, con phải xin được 900.000 đồng, nếu kh&ocirc;ng đủ th&igrave; bị mẹ k&ecirc;u cậu B&eacute; đ&aacute;nh v&agrave; ch&iacute;ch điện. Nếu ai kh&oacute;c th&igrave; mẹ t&aacute;t mạnh v&agrave;o miệng&rdquo;, D. chỉ v&agrave;o sau g&aacute;y v&agrave; lưng của Tr., nơi bị B&eacute; d&ugrave;ng d&acirc;y điện đ&aacute;nh v&agrave; d&ugrave;ng vợt muỗi chế th&agrave;nh&nbsp;<a href=\"https://thanhnien.vn/tin-tuc/roi-dien.html\" target=\"_blank\">roi điện</a>&nbsp;ch&iacute;ch.</p>\r\n\r\n<p>Thời gian G&aacute;i c&ugrave;ng c&aacute;c con của m&igrave;nh xin ăn ở khu vực chợ B&agrave; T&ocirc; (TT.Phước Bửu) th&igrave; bị C&ocirc;ng an thị trấn n&agrave;y xử l&yacute;. Cả nh&agrave; G&aacute;i liền dắt d&iacute;u nhau bỏ trốn, đến TP.B&agrave; Rịa thu&ecirc; nh&agrave; trọ ở P.Phước Trung. Hằng ng&agrave;y G&aacute;i v&agrave; B&eacute; thay nhau &ldquo;chăn dắt&rdquo; D. v&agrave; Tr. ăn xin. Buổi tối, G&aacute;i để Tr. ở ph&ograve;ng trọ, c&ograve;n m&igrave;nh dẫn D. ra khu chợ đ&ecirc;m TP.B&agrave; Rịa ăn xin đến 22 giờ mới cho về nghỉ ngơi. Khi D. quen đường th&igrave; hằng đ&ecirc;m, D. phải một m&igrave;nh đi xin ăn.</p>\r\n\r\n<p>&ldquo;4 giờ s&aacute;ng con v&agrave; em Tr. bị mẹ v&agrave; cậu B&eacute; l&ocirc;i dậy, cho ăn cơm trắng với nước tương rồi chở đi ăn xin. Buổi trưa, nếu ai cho được g&igrave; th&igrave; ăn nấy. Tối về cũng chỉ được mẹ cho ăn cơm với nước tương&rdquo;, D. nghẹn ng&agrave;o kể.</p>', 'J9fqr_tron-thoat3_patl.jpg', 1, 0, 2, '2020-09-03 03:27:18', '2020-09-03 03:28:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'cấn chiến', 'canchien123@gmail.com', NULL, NULL, '$2y$10$AYM8zBtjbyMVeSMfLJ5S/.xM9uvFTlflINzfA7dgDlLw3K1Sw.dvy', NULL, '2020-08-12 04:16:33', '2020-08-12 15:12:31'),
(2, 'chiến', 'canchien01121999@gmail.com', NULL, NULL, 'fa166fd2a73fd6a84bbe0aef46febbfa', NULL, '2020-08-12 04:37:37', NULL),
(3, 'admin', 'admin@gmail.com', NULL, NULL, '$2y$10$sUH.TivEDAX50csUKqJsDu3A4sAvoIMOLRwCeYzdnkoLgBRH2wXpW', NULL, NULL, NULL),
(4, 'fRdnj', 'CBfck@gmail.com', NULL, NULL, '$2y$10$PkNrzTTlnSHkclsawmaes.Lr2uwTZ1oXThdxdPrWzIqMz/pqle1fm', NULL, NULL, NULL),
(5, 'lh93t', 'EH6BG@gmail.com', NULL, NULL, '$2y$10$YnCDEtVg7S1AvkMFrkxEwOyjbh6scXi8fakriZ.CsGZaz22caePy.', NULL, NULL, NULL),
(12, 'chien', 'chienhihe@gmail.com', NULL, NULL, '$2y$10$PrQ7thtRIpzwYNRS2Pwwd..l72Ev0/6ZcY1Jc952jf.GfnDxKK4n6', NULL, '2020-08-12 06:27:46', '2020-08-12 06:27:46');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
