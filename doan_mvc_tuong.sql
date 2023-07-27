-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 18, 2023 lúc 12:34 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doan_mvc_tuong`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminEmail` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `adminUser` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminPass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(1, 'tuong', 'tuong@gmail.com', 'tuongAdmin', 'e10adc3949ba59abbe56e057f20f883e', 0),
(2, 'admin', 'admin@gmail.com', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(6, 'Samsung'),
(7, 'Apple'),
(8, 'Huawei'),
(9, 'Oppo'),
(10, 'Xiaomi'),
(12, 'Huawei'),
(13, 'Sony'),
(17, 'Anker'),
(18, 'Remax'),
(19, 'Lexar'),
(20, 'Sandisk');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `sId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `sId`, `productName`, `price`, `quantity`, `image`) VALUES
(49, 43, 'qap8bi9fk3tnr1p1nro1aa0itv', 'Sạc dự phòng Xiaomi', '250000', 2, '6c8935c709.jpg'),
(51, 40, 'qap8bi9fk3tnr1p1nro1aa0itv', 'Củ sạc iphone', '100000', 6, '7c7ad86003.jpg'),
(53, 36, 'qap8bi9fk3tnr1p1nro1aa0itv', 'Huawei band 8', '1900000', 5, '7891b86be8.jpg'),
(54, 35, 'qap8bi9fk3tnr1p1nro1aa0itv', 'Huawei band 7', '1400000', 8, 'b02e7b257a.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(3, 'Giá đỡ điện thoại'),
(4, 'Thẻ nhớ lưu trữ'),
(5, 'Gậy chụp ảnh'),
(7, 'Củ sạc điện thoại'),
(15, 'Sạc dự phòng'),
(16, 'Đồng hồ thông minh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_compare`
--

INSERT INTO `tbl_compare` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(5, 6, 43, 'Sạc dự phòng Xiaomi', '250000', '6c8935c709.jpg'),
(6, 6, 40, 'Củ sạc iphone', '100000', '7c7ad86003.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zipcode`, `phone`, `email`, `password`) VALUES
(3, 'Ng.Anh tu', '113 Láº¡c Long QuÃ¢n HCM', 'TPHCM', 'hcm', '700000', '099999123', 'thanhviendangki@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(4, 'vÃµ thá»‹ tháº£o nguyÃªn', '149 LÅ©y BÃ¡n BÃ­ch, phÆ°á»ng TÃ¢n Thá»›i HÃ²a, quáº­n TÃ¢n PhÃº, TP.HCM', 'TPHCM', 'hcm', '700000', '522525294', 'hoathuytinh071@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(5, 'Sin', '149 LÃ½ ThÃ¡i Tá»•', 'TPHCM', 'hcm', '700000', '0522525294', 'abc@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(6, 'tuong', 'phường Hiệp Thành, Thủ Dầu Một', 'abc', 'hcm', '700000', '(334) 742-546', 'nht160998@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_order` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `customer_id`, `quantity`, `price`, `image`, `status`, `date_order`) VALUES
(56, 22, 'Apple New For Mysql Server', 3, 5, '300000', '643929ce40.jpg', 1, '2019-07-17 00:54:42'),
(57, 22, 'Apple New For Mysql Server', 3, 4, '240000', '643929ce40.jpg', 1, '2019-07-17 00:56:49'),
(58, 22, 'Apple New For Mysql Server', 3, 5, '300000', '643929ce40.jpg', 1, '2019-07-17 00:57:49'),
(59, 20, 'Router Wifi 4G Huawei 300Mbps B593S-12', 3, 10, '12400000', '49b106217c.jpg', 1, '2019-07-17 01:51:22'),
(61, 35, 'Huawei band 7', 6, 1, '1400000', 'b02e7b257a.jpg', 0, '2023-05-17 17:30:15'),
(62, 42, 'Củ sạc Samsung', 6, 1, '130000', 'ab02d7f506.jpg', 0, '2023-05-17 17:30:15'),
(63, 43, 'Sạc dự phòng Xiaomi', 6, 1, '250000', '6c8935c709.jpg', 2, '2023-07-03 09:14:16'),
(64, 40, 'Củ sạc iphone', 6, 1, '100000', '7c7ad86003.jpg', 2, '2023-07-03 09:14:16'),
(65, 43, 'Sạc dự phòng Xiaomi', 6, 1, '250000', '6c8935c709.jpg', 2, '2023-07-03 09:14:16'),
(66, 36, 'Huawei band 8', 6, 1, '1900000', '7891b86be8.jpg', 2, '2023-07-03 09:14:16'),
(67, 40, 'Củ sạc iphone', 6, 1, '100000', '7c7ad86003.jpg', 0, '2023-07-15 17:43:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `productQuantity` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_soldout` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `product_remain` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `product_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `product_code`, `productQuantity`, `product_soldout`, `product_remain`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`) VALUES
(26, 'Apple watch series 5', 'a123', '5', '0', '5', 16, 7, '<p><span style=\"font-family: \'times new roman\', times; font-size: medium;\"><a href=\"https://cellphones.com.vn/do-choi-cong-nghe/apple-watch/series-5.html\">Apple Watch Series 5</a>&nbsp;l&agrave; người kế nhiệm của mẫu Apple Watch Series 4 với những c&ocirc;ng nghệ mới được t&iacute;ch hợp. Điểm đặc biệt ở mẫu smartwatch lần n&agrave;y ch&iacute;nh l&agrave; m&agrave;n h&igrave;nh OLED Retina Always on Display để bạn c&oacute; thể quan s&aacute;t mọi l&uacute;c như một chiếc đồng hồ thực thụ.</span></p>', 1, '6000000', '59cd5e323d.jpg'),
(27, 'Apple watch series 6', 'a124', '10', '0', '10', 16, 7, '<p><span style=\"font-family: \'times new roman\', times; font-size: large;\">Chiếc Apple Watch Series 5 vốn đ&atilde; được đ&aacute;nh gi&aacute; rất tốt về phần cứng, thiết kế lẫn c&aacute;c t&iacute;nh năng m&agrave; chiếc smart watch n&agrave;y mang lại, nhận được sự y&ecirc;u th&iacute;ch của nhiều người d&ugrave;ng.</span></p>\r\n<p><span style=\"font-family: \'times new roman\', times; font-size: large;\">Sau th&agrave;nh c&ocirc;ng đ&oacute;, Apple Watch 6 sẽ l&agrave; người kế nhiệm tiếp theo mang đến khả năng chăm s&oacute;c, theo d&otilde;i sức khỏe tốt hơn cho người d&ugrave;ng với c&aacute;c t&iacute;nh năng mới v&agrave; thiết kế với m&agrave;u sắc mới năng động v&agrave; trẻ trung hơn.</span></p>', 1, '7000000', '34593371ed.jpg'),
(28, 'Apple watch series 7', 'a125', '15', '0', '15', 16, 7, '<p><span style=\"font-family: \'times new roman\', times; font-size: large;\">Ra mắt c&ugrave;ng thời diểm ra mắt iPhone 2021, đồng hồ th&ocirc;ng minh Apple Watch Series 7 c&oacute; nhiều thay đổi về thiết kế so với c&aacute;c d&ograve;ng Apple Watch trước đ&oacute;. Cụ thể so với Series 6, thế hệ Series 7 n&agrave;y c&oacute; sự thay đổi về k&iacute;ch thước với phi&ecirc;n bản m&agrave;n h&igrave;nh lớn nhất gọi t&ecirc;n&nbsp;<a title=\"Apple Series 7 41mm 4g\" href=\"https://cellphones.com.vn/apple-watch-series-7-41mm-4g.html\" target=\"_self\"><span data-sheets-value=\"{\" data-sheets-userformat=\"{\">Apple Series 7 41mm 4g</span></a>. B&ecirc;n cạnh đ&oacute;,&nbsp;<a href=\"https://cellphones.com.vn/do-choi-cong-nghe/apple-watch/series-7.html\" target=\"_blank\">Apple Watch Seri 7</a>&nbsp;41mm l&agrave; phi&ecirc;n bản m&agrave;n h&igrave;nh nhỏ nhất, nhỉnh hơn một ch&uacute;t so với phi&ecirc;n bản 40mm thế hệ trước, rất th&iacute;ch hợp với người d&ugrave;ng cổ tay nhỏ.</span></p>', 0, '8000000', 'c71f7d4669.jpg'),
(29, 'Mi band 4', 'b123', '6', '0', '6', 16, 10, '<p><span id=\"docs-internal-guid-aaa7e4a3-7fff-7014-2a7a-e2dbe9092d22\" style=\"font-family: \'times new roman\', times; font-size: large;\">Mi Band 4 được trang bị&nbsp;<strong>k&iacute;nh cường lực 2.5D</strong>&nbsp;gi&uacute;p bạn dễ d&agrave;ng thao t&aacute;c với m&agrave;n h&igrave;nh cảm ứng từ ph&iacute;a viền hai b&ecirc;n.</span></p>\r\n<p><span style=\"font-family: \'times new roman\', times; font-size: large;\">Th&ecirc;m v&agrave;o đ&oacute;,&nbsp;<strong>m&agrave;n h&igrave;nh m&agrave;u AMOLED</strong>&nbsp;lớn hơn 39.9% so với thế hệ trước gi&uacute;p Xiaomi Mi Band 4 hiển thị được nhiều th&ocirc;ng tin hơn, như phần trăm pin,&nbsp;th&ocirc;ng tin luyện tập, hay th&ocirc;ng b&aacute;o từ ứng dụng, cuộc gọi...</span></p>', 1, '1200000', 'bab7c72290.jpg'),
(30, 'Mi band 5', 'b124', '10', '0', '10', 16, 10, '<p><span style=\"font-family: \'times new roman\', times; font-size: large;\"><a title=\"Xem th&ecirc;m v&ograve;ng đeo tay th&ocirc;ng minh Mi Band 5\" href=\"https://www.thegioididong.com/dong-ho-thong-minh/mi-band-5\" target=\"_blank\">V&ograve;ng đeo tay th&ocirc;ng minh Mi Band 5</a>&nbsp;c&oacute; m&agrave;n h&igrave;nh 1.1 inch c&ugrave;ng độ ph&acirc;n giải l&agrave; 126 x 294 pixels, lớn hơn so với phi&ecirc;n bản&nbsp;0.95 inch của&nbsp;<a title=\"Xem th&ecirc;m v&ograve;ng đeo tay th&ocirc;ng minh Mi Band 4\" href=\"https://www.thegioididong.com/dong-ho-thong-minh/mi-band-4\" target=\"_blank\">Mi Band 4</a>.&nbsp;Mật độ điểm ảnh tr&ecirc;n Mi Band 5 được n&acirc;ng cấp l&ecirc;n đến 300ppi, v&igrave; thế người d&ugrave;ng c&oacute; thể quan s&aacute;t c&aacute;c th&ocirc;ng b&aacute;o r&otilde; r&agrave;ng tr&ecirc;n m&agrave;n h&igrave;nh.&nbsp;<a title=\"Xem th&ecirc;m mẫu d&acirc;y đeo\" href=\"https://www.thegioididong.com/day-dong-ho\" target=\"_blank\">D&acirc;y đeo</a>&nbsp;l&agrave;m từ silicone với thiết kế&nbsp;&ocirc;m trọn cổ tay, mang lại cảm gi&aacute;c v&ocirc; c&ugrave;ng mềm mại v&agrave; kh&ocirc;ng bị phai m&agrave;u khi sử dụng sau một thời gian d&agrave;i.</span></p>', 1, '1800000', 'ea10d54673.jpg'),
(31, 'Mi band 6', 'b125', '20', '0', '20', 16, 12, '<p><span style=\"font-family: \'times new roman\', times; font-size: large;\">Mi Band 6 vẫn giữ nguy&ecirc;n thiết kế h&igrave;nh con nhộng v&ocirc; c&ugrave;ng gọn g&agrave;ng, nhưng đ&atilde; c&oacute; một v&agrave;i điểm thay đổi để n&acirc;ng cao trải nghiệm của người d&ugrave;ng. Với phần viền được l&agrave;m mỏng hơn tạo cảm gi&aacute;c kh&ocirc;ng gian hiển thị rộng hơn. Tuy nhi&ecirc;n, cạnh viền b&ecirc;n dưới được l&agrave;m d&agrave;y hơn 3 cạnh c&ograve;n lại tạo cho m&igrave;nh cảm gi&aacute;c kh&ocirc;ng được c&acirc;n đối.</span></p>', 1, '2100000', '8a051f8048.jpg'),
(32, 'Huawei band 6', 'c123', '15', '0', '15', 16, 12, '<h2><span style=\"font-family: \'times new roman\', times; font-size: large;\">Huawei Band 6 &ndash; V&ograve;ng đeo tay ấn tượng bởi thiết kế, đầy đủ t&iacute;nh năng</span></h2>\r\n<p><span style=\"font-family: \'times new roman\', times; font-size: large;\">Kh&aacute;c với đồng hồ th&ocirc;ng minh, v&ograve;ng đeo tay th&ocirc;ng minh được giới hạn với những t&iacute;nh năng cần thiết. Tuy nhi&ecirc;n với những người d&ugrave;ng cơ bản kh&ocirc;ng qu&aacute; nặng về việc kết nối với smartphone th&igrave;&nbsp;đồng hồ Huawei Band 6&nbsp;ch&iacute;nh l&agrave; ứng cử vi&ecirc;n m&agrave; bạn đang t&igrave;m kiếm.</span></p>', 0, '920000', '27998f43b2.jpg'),
(35, 'Huawei band 7', 'c124', '17', '0', '17', 16, 12, '<h2><span style=\"font-family: \'times new roman\', times; font-size: large;\">V&ograve;ng đeo tay th&ocirc;ng minh Huawei band 7 &ndash; Thiết kế nhỏ gọn, tiện lợi</span></h2>\r\n<p><span style=\"font-family: \'times new roman\', times; font-size: large;\">V&ograve;ng đeo tay Huawei Band 7&nbsp;kh&ocirc;ng chỉ mang t&iacute;nh thẩm mỹ cao m&agrave; c&ograve;n gi&uacute;p n&acirc;ng cao sức khỏe người d&ugrave;ng qua c&aacute;c b&agrave;i tập. H&atilde;y xem một số điểm ch&uacute; &yacute; khiến bạn muốn mua ngay một chiếc về.</span></p>', 0, '1400000', 'b02e7b257a.jpg'),
(36, 'Huawei band 8', 'c125', '20', '1', '19', 16, 12, '<p><span style=\"font-family: \'times new roman\', times; font-size: large;\">Huawei Band 8&nbsp;với&nbsp;m&agrave;n h&igrave;nh AMOLED&nbsp;k&iacute;ch thước&nbsp;1.47 inch&nbsp;được thiết kế cong 2.5D c&ugrave;ng độ ph&acirc;n giải&nbsp;368 x 194 pixel&nbsp;gi&uacute;p mang lại khả năng hiển thị ấn tượng. Đồng hồ sở hữu vi&ecirc;n&nbsp;pin&nbsp;lớn cho thời gian sử dụng tối đa l&ecirc;n tới&nbsp;14 ng&agrave;y&nbsp;v&agrave; thời gian sạc đầy chỉ trong v&ograve;ng&nbsp;45 ph&uacute;t. Thiết bị được trang bị nhiều cảm biến th&ocirc;ng minh hỗ trợ theo d&otilde;i c&aacute;c chỉ số sức khỏe như nhịp tim, giấc ngủ v&agrave; hỗ trợ tới&nbsp;100 chế độ tập luyện&nbsp;thể thao kh&aacute;c nhau.</span></p>', 0, '1900000', '7891b86be8.jpg'),
(40, 'Củ sạc iphone', 'e123', '60', '1', '59', 7, 7, '<p><span style=\"font-family: \'times new roman\', times; font-size: large;\">Cốc sạc của Apple lu&ocirc;n được bi&ecirc;́t đ&ecirc;́n với ch&acirc;́t lượng t&ocirc;́t cùng chất liệu cao cấp.&nbsp;Sạc pin nhanh đầy, kh&ocirc;ng l&agrave;m loạn cảm ứng khi sạc pin, hạn chế n&oacute;ng m&aacute;y v&agrave; giảm tuổi thọ pin của bạn.&nbsp;Sản phẩm hứa hẹn sẽ mang lại trải nghiệm người d&ugrave;ng tuyệt vời</span></p>', 0, '100000', '7c7ad86003.jpg'),
(41, 'Củ sạc Anker', 'e124', '25', '0', '25', 7, 17, '<p><span style=\"font-family: \'times new roman\', times; font-size: large;\">Nhiều người d&ugrave;ng đang muốn t&igrave;m một chiếc cốc sạc c&oacute; thể hỗ trợ t&iacute;nh năng sạc nhanh, c&ocirc;ng suất lớn, thiết kế nhỏ gọn th&igrave; kh&ocirc;ng thể bỏ qua cốc sạc Anker. Sản phẩm n&agrave;y kh&ocirc;ng chỉ gọn nhẹ để mang theo b&ecirc;n m&igrave;nh m&agrave; n&oacute; c&ograve;n c&oacute; khả năng tương th&iacute;ch với nhiều thiết bị. Chắc hẳn cốc sạc Anker PowerPort III Nano 20W - White&nbsp;l&agrave; sự lựa chọn ho&agrave;n hảo khi sở hữu c&ocirc;ng suất sạc nhanh ch&oacute;ng&nbsp;l&ecirc;n đến 20W c&ugrave;ng nhiều t&iacute;nh năng nổi bật kh&aacute;c. Đ&acirc;y hứa hẹn sẽ l&agrave; sản phẩm đem đến cho người d&ugrave;ng sự h&agrave;i l&ograve;ng khi trải nghiệm.</span></p>', 1, '250000', 'db9b55447b.jpg'),
(42, 'Củ sạc Samsung', 'e125', '34', '0', '34', 7, 6, '<p><span style=\"font-family: \'times new roman\', times; font-size: large;\">Bộ Sạc Nhanh Samsung Galaxy S20/S20 Plus 25W - Chuẩn PD - H&agrave;ng Ch&iacute;nh H&atilde;ng, C&ocirc;ng nghệ Sạc nhanh mới nhất của Samsung</span></p>', 1, '130000', 'ab02d7f506.jpg'),
(43, 'Sạc dự phòng Xiaomi', 'd123', '25', '2', '23', 15, 10, '<p><span style=\"font-family: \'times new roman\', times; font-size: large;\">Pin sạc dự ph&ograve;ng Xiaomi 10000mAh 22.5W &ndash; Sự lựa chọn ho&agrave;n hảo cho sạc dự ph&ograve;ng. Pin sạc dự ph&ograve;ng Xiaomi 10000mAh 22.5W &ndash; PB100DZM l&agrave; một trong những sản phẩm đ&aacute;ng ch&uacute; &yacute; của Xiaomi trong lĩnh vực c&ocirc;ng nghệ di động. Với dung lượng pin 10000mAh, thiết bị n&agrave;y c&oacute; thể cung cấp đủ năng lượng để sạc lại một chiếc điện thoại th&ocirc;ng minh trung b&igrave;nh khoảng 2-3 lần.</span></p>', 0, '250000', '6c8935c709.jpg'),
(44, 'Sạc dự phòng Remax ', 'd124', '42', '0', '42', 15, 18, '<p><span style=\"font-family: \'times new roman\', times; font-size: large;\">Thế mạnh của chiếc&nbsp;<a href=\"https://remaxvietnam.vn/pin-sac-du-phong\">sạc dự ph&ograve;ng</a>&nbsp;Remax RPP-289 ch&iacute;nh l&agrave; dung lượng pin &ldquo;si&ecirc;u khủng&rdquo; l&ecirc;n đến 40.000 mAh. Với mức dung lượng n&agrave;y người d&ugrave;ng c&oacute; thể sử dụng tới 7 ng&agrave;y m&agrave; kh&ocirc;ng lo điện thoại hết pin. Thử nghiệm cho thấy, pin c&oacute; khả năng sạc đầy cho iPhone 13 khoảng 7 lần, sạc đầy cho iPhone 11 Pro khoảng 5 lần, cho Huawei P40 khoảng 6 lần v&agrave; cho Oppo Find X3 Pro khoảng 6.5 lần. Đ&acirc;y quả l&agrave; một con số ấn tượng m&agrave; nhiều người d&ugrave;ng ao ước.</span></p>', 1, '320000', 'dafa6b597b.jpg'),
(45, 'Gậy chụp ảnh K07', 'f123', '45', '0', '45', 5, 17, '<p><span style=\"font-family: \'times new roman\', times; font-size: large;\">Gậy tự sướng selfie K07 với thiết kế cực kỳ th&ocirc;ng minh, khi gập lại hết cỡ th&igrave; em n&oacute; chỉ c&oacute; k&iacute;ch thước khoảng hơn 18cm. khi k&eacute;o d&agrave;i tối đ&aacute; th&igrave; em n&oacute; đặt k&iacute;ch thước chiều d&agrave;i l&agrave; 72Cm. Anh em c&oacute; thể biến sản phẩm th&agrave;nh gậy 3 ch&acirc;n để chụp h&igrave;nh, chụp ảnh hoặc kẹp l&agrave;m gi&aacute; đỡ điện thoại ho&agrave;n to&agrave;n rất tốt. Khi anh em mở ra để biến th&agrave;nh gậy tripod, kết hợp th&ecirc;m với remote điều khiển kết nối th&ocirc;ng qua Bluetooth điều n&agrave;y g&uacute;p cho qu&aacute; tr&igrave;nh chụp ảnh hoặc quay phim của anh chị em trở n&ecirc;n đơn giản hơn bao giờ hết. </span></p>', 1, '160000', '51ab939440.jpg'),
(46, 'Gậy chụp ảnh Remax P12', 'f124', '23', '0', '23', 5, 18, '<p><span style=\"font-family: \'times new roman\', times; font-size: large;\">Remax P12 nổi bật với sự kết hợp giữa 2 thiết bị l&agrave; gậy selfie v&agrave; gậy tripod, đ&aacute;p ứng nhiều nhu cầu sử dụng kh&aacute;c nhau của người d&ugrave;ng.</span></p>\r\n<p><span style=\"font-family: \'times new roman\', times; font-size: large;\"><a href=\"https://remaxvietnam.vn/gay-selfie-tu-suong\">Gậy selfie Bluetooth</a>&nbsp;Remax P12 sở hữu chiều d&agrave;i khi mở rộng l&ecirc;n tới 1.3m, hỗ trợ cực tốt trong việc chụp c&aacute;c bức ảnh ở g&oacute;c rộng. B&ecirc;n cạnh đ&oacute;, khi kh&ocirc;ng sử dụng, bạn c&oacute; thể gập gọn gậy lại v&agrave; với trọng lượng chỉ 261g c&ugrave;ng k&iacute;ch thước 238mm nhỏ gọn, người d&ugrave;ng c&oacute; thể dễ d&agrave;ng lưu trữ trong t&uacute;i x&aacute;ch v&agrave; mang theo sử dụng ở mọc l&uacute;c mọi nơi.</span></p>', 1, '270000', '53389e9d68.png'),
(47, 'Gậy chụp ảnh Yunteng YT-1288', 'f125', '30', '0', '30', 5, 13, '<p><span style=\"font-family: \'times new roman\', times; font-size: large;\">Gậy tự sướng đa năng Yunteng YT-1288&nbsp;với thiết kế dễ d&agrave;ng gấp gọn, c&ugrave;ng nhiều t&iacute;nh năng nổi bật hứa hẹn sẽ trở th&agrave;nh một người bạn đồng h&agrave;nh kh&ocirc;ng thể thiếu trong mỗi chuyến h&agrave;nh tr&igrave;nh của c&aacute;c phượt thủ.</span></p>', 1, '199000', 'a20b260f8f.jpg'),
(48, 'Thẻ nhớ Lexar', 'g123', '100', '0', '100', 4, 19, '<h1><span id=\"js-product-title\" style=\"font-family: \'times new roman\', times; font-size: large;\">Thẻ Nhớ MicroSD Lexar Chuy&ecirc;n Dụng Cho Camera, Điện Thoại, 32G</span></h1>', 1, '230000', '5d7d7fb4aa.jpg'),
(49, 'Thẻ nhớ Samsung Evo', 'g124', '70', '0', '70', 4, 6, '<p><span style=\"font-family: \'times new roman\', times; font-size: large;\">Như c&aacute;c bạn cũng đ&atilde; biết dung lượng bộ nhớ điện thoại, m&aacute;y t&iacute;nh bảng, m&aacute;y ảnh,.... thường c&oacute; giới hạn nhất định. Nhằm để giải cứu v&agrave; tăng th&ecirc;m dung lượng thẻ nhớ, tại shop phụ kiện Samsung ch&uacute;ng t&ocirc;i đ&atilde; cập nhật nhiều d&ograve;ng&nbsp;<a href=\"http://www.phukiensamsung.com/the-nho-luu-tru.html\">thẻ nhớ lưu trữ</a>&nbsp;với c&aacute;c thương hiệu v&agrave; dung lượng kh&aacute;c nhau. Trong đ&oacute;,&nbsp;thẻ nhớ Samsung 128GB Plus Evo&nbsp;ch&iacute;nh h&atilde;ng Samsung c&oacute; nhiều t&iacute;nh năng nổi bật.</span></p>', 1, '150000', '824eb500f3.jpg'),
(50, 'Thẻ nhớ Sandisk', 'g125', '32', '0', '32', 4, 20, '<h2><span style=\"font-family: \'times new roman\', times; font-size: large;\">Thẻ nhớ SanDisk Class 10 64GB 100MB/s - Dung lượng lớn, tốc độ cao</span></h2>\r\n<p><span style=\"font-family: \'times new roman\', times; font-size: large;\">Để mở rộng dung lượng bộ nhớ cho c&aacute;c thiết bị của bạn trong qu&aacute; tr&igrave;nh sử dụng hằng ng&agrave;y. Trang bị thẻ nhớ&nbsp;<a href=\"https://cellphones.com.vn/the-nho-sandisk-32gb-class-10-100mbs.html\">SanDisk Class 10</a>&nbsp;64GB 100MB/s l&agrave; một giải ph&aacute;p tối ưu nhất cho bạn. Với dung lượng kh&aacute; cao k&egrave;m tốc độ đọc ghi nhanh sẽ gi&uacute;p bạn mở rộng bộ nhớ tốt nhất cho thiết bị của m&igrave;nh.</span></p>', 1, '149000', '45628b6552.png'),
(51, 'Giá đỡ điện thoại GD001', 'h123', '15', '0', '15', 3, 10, '<p><span style=\"font-family: \'times new roman\', times; font-size: large;\">Việc sử dụng điện thoại, m&aacute;y t&iacute;nh bảng thời gian d&agrave;i sẽ g&acirc;y mỏi tay, kh&oacute; chịu đ&ocirc;i khi dễ rơi vỡ. Chiếc Gi&aacute; Đỡ Điện Thoại V&agrave; M&aacute;y T&iacute;nh Bảng GD001 gi&uacute;p bạn giải quyết hiệu quả vấn đề tr&ecirc;n</span></p>\r\n<p><span style=\"font-family: \'times new roman\', times; font-size: large;\">Gi&aacute; đỡ điện thoại, m&aacute;y t&iacute;nh bảng&nbsp;&nbsp;với thiết kế sang trọng, nhỏ gọn, l&agrave;m bằng hợp kim nh&ocirc;m chắc chắn khả năng xếp gọn tiện dụng , dễ d&agrave;ng mang theo c&oacute; thể d&ugrave;ng iPhone/ iPad v&agrave; hầu hết smartphone v&agrave; tablet ( 12.9inch trở xuống) sẽ gi&uacute;p bạn giải quyết hiệu quả c&aacute;c vấn đề tr&ecirc;n.</span></p>', 1, '59000', 'a4cdeedfd6.jpeg'),
(52, 'Giá đỡ điện thoại Remax', 'h124', '25', '0', '25', 3, 18, '<p><span style=\"font-family: \'times new roman\', times; font-size: large;\">Gi&aacute; đỡ điện thoại, m&aacute;y t&iacute;nh bảng&nbsp;&nbsp;với thiết kế sang trọng, nhỏ gọn, l&agrave;m bằng hợp kim nh&ocirc;m chắc chắn khả năng xếp gọn tiện dụng , dễ d&agrave;ng mang theo c&oacute; thể d&ugrave;ng iPhone/ iPad v&agrave; hầu hết smartphone v&agrave; tablet ( 12.9inch trở xuống) sẽ gi&uacute;p bạn giải quyết hiệu quả c&aacute;c vấn đề tr&ecirc;n.</span></p>', 1, '79000', '18eae8081b.jpeg'),
(53, 'Giá đỡ điện thoại Hyperwork', 'h125', '14', '0', '14', 3, 9, '<ul>\r\n<li><span style=\"font-family: \'times new roman\', times; font-size: large;\">Đệm silicon bảo vệ thiết bị</span></li>\r\n<li><span style=\"font-family: \'times new roman\', times; font-size: large;\">Chất liệu hợp kim nh&ocirc;m</span></li>\r\n<li><span style=\"font-family: \'times new roman\', times; font-size: large;\">Tương th&iacute;ch với điện thoại, tablet</span></li>\r\n<li><span style=\"font-family: \'times new roman\', times; font-size: large;\">T&ugrave;y chỉnh g&oacute;c linh hoạt</span></li>\r\n<li><span style=\"font-family: \'times new roman\', times; font-size: large;\">Gấp gọn, dễ mang theo</span></li>\r\n<li><span style=\"font-family: \'times new roman\', times; font-size: large;\">Cấu tr&uacute;c chắn chắn, ổn định</span></li>\r\n</ul>', 1, '89000', '60b04e5bd5.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `sliderId` int(11) NOT NULL,
  `sliderName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slider_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`sliderId`, `sliderName`, `slider_image`, `type`) VALUES
(5, 'slider1', '720bc173fa.png', 1),
(6, 'slider2', 'ff79579ac7.png', 1),
(7, 'slider3', 'a94222690e.png', 1),
(8, 'slider4', '5b2e64d6ab.jpg', 1),
(9, 'slider5', 'f50b2e4171.png', 1),
(11, 'slider6', '72a159f760.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_warehouse`
--

CREATE TABLE `tbl_warehouse` (
  `id_warehouse` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `sl_nhap` varchar(50) NOT NULL,
  `sl_ngaynhap` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_warehouse`
--

INSERT INTO `tbl_warehouse` (`id_warehouse`, `id_sanpham`, `sl_nhap`, `sl_ngaynhap`) VALUES
(1, 22, '5', '2019-07-16 18:31:22'),
(2, 21, '10', '2019-07-16 18:32:03'),
(3, 21, '3', '2019-07-16 18:42:59'),
(4, 20, '5', '2019-07-16 18:51:40'),
(5, 25, '10', '2023-05-17 06:49:09'),
(6, 24, '5', '2023-05-17 08:25:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(7, 6, 40, 'Củ sạc iphone', '100000', '7c7ad86003.jpg'),
(8, 6, 36, 'Huawei band 8', '1900000', '7891b86be8.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Chỉ mục cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`sliderId`);

--
-- Chỉ mục cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  ADD PRIMARY KEY (`id_warehouse`);

--
-- Chỉ mục cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `sliderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  MODIFY `id_warehouse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
