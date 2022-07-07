-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2021 at 06:12 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `du_an`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cate_id` int(11) NOT NULL,
  `cate_name` varchar(255) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cate_id`, `cate_name`, `create_at`, `update_at`) VALUES
(33, 'Rolex', '2021-11-18 08:57:30', '2021-11-26 16:10:53'),
(35, 'Zenith', '2021-11-18 08:57:30', '2021-11-18 08:57:30'),
(36, 'Chanel', '2021-11-18 08:57:30', '2021-11-26 16:11:42'),
(37, 'Piaget', '2021-11-18 08:57:30', '2021-11-18 08:57:30'),
(38, 'Hublot', '2021-11-18 08:57:30', '2021-11-18 08:57:30'),
(39, 'Longines', '2021-11-18 08:57:30', '2021-11-18 08:57:30'),
(40, 'Graff', '2021-11-18 08:57:30', '2021-11-18 08:57:30');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `create_at` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `content`, `create_at`, `user_id`, `product_id`) VALUES
(12, 'hay', '2021-11-14 09:09:25', 3, 3),
(13, 'hay', '2021-11-14 09:09:25', 3, 3),
(14, 'hay', '2021-11-14 09:09:25', 3, 3),
(15, 'hay', '2021-11-14 09:09:25', 3, 3),
(20, 'good', '2021-11-14 09:33:12', 3, 6),
(21, 'Bad', '2021-11-14 13:42:39', 3, 14),
(23, 'rrr', '2021-11-14 14:22:18', 15, 7),
(24, 'rrr', '2021-11-14 14:22:18', 15, 11),
(25, 'rrr', '2021-11-14 14:22:18', 15, 12),
(26, 'rrr', '2021-11-14 14:22:18', 15, 13),
(27, 'eee', '2021-11-24 21:09:53', 3, 47),
(28, 'dfdsfds', '2021-11-24 21:13:05', 3, 47),
(29, 'dsfdsf', '2021-11-24 21:13:10', 3, 47),
(30, 'dsadsa', '2021-11-24 21:13:54', 3, 47),
(31, 'đâsdas', '2021-11-24 21:16:55', 3, 47),
(33, 'sdfdsf', '2021-11-24 21:18:57', 3, 47),
(34, '', '2021-11-24 21:19:05', 3, 47),
(35, '', '2021-11-24 21:19:05', 3, 47),
(36, '', '2021-11-24 21:19:05', 3, 47),
(37, '', '2021-11-24 21:19:06', 3, 47),
(38, '', '2021-11-24 21:19:06', 3, 47),
(39, '', '2021-11-24 21:19:06', 3, 47),
(40, '', '2021-11-24 21:19:28', 3, 47),
(42, '', '2021-11-24 21:19:28', 3, 47),
(43, '', '2021-11-24 21:19:28', 3, 47),
(44, '', '2021-11-24 21:19:29', 3, 47),
(45, '', '2021-11-24 21:19:29', 3, 47),
(53, 'sadasdas', '2021-11-24 21:21:24', 3, 47),
(54, 'hello\n', '2021-11-24 21:23:37', 3, 47);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `create_at` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `create_at`, `user_id`, `address`, `phone_number`, `status`) VALUES
(22, '2021-11-13 16:35:18', 3, '', 0, 1),
(23, '2021-11-13 16:51:51', 3, '', 0, 0),
(24, '2021-11-14 08:52:30', 3, 'fdsfsd', 21321, 0),
(25, '2021-11-14 08:52:30', 3, 'fdsfsd', 21321, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `discount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`order_id`, `product_id`, `price`, `quantity`, `discount`) VALUES
(22, 11, 150, 2, 7.5),
(22, 15, 250, 7, 0),
(23, 4, 150, 1, 7.5),
(23, 9, 1500, 2, 15),
(26, 5, 0, 2, 0),
(28, 4, 10, 2, 10),
(29, 13, 4000, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(2500) DEFAULT NULL,
  `description` varchar(2500) DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `model` tinyint(4) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `view` int(11) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime DEFAULT NULL,
  `cate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `price`, `image`, `description`, `discount`, `model`, `quantity`, `status`, `view`, `create_at`, `update_at`, `cate_id`) VALUES
(3, 'Hublot Tourbillon Sapphie', 2300000, 'img/product_1.png', 'Đồng hồ Hublot Spirit Of Big Bang Tourbillon Sapphire Rainbow 42mm là sự hợp nhất giữa giá trị truyền thống và hiện đại, mang đến một trải nghiệm tuyệt vời đối với người đeo. Sự xuất hiện của đồng hồ trên cổ tay chủ sở hữu không chỉ cho những giá trị nhận biết thời gian, mà còn biểu tượng của một phong cách luôn hợp thời và là lời khẳng định cho đẳng cấp riêng.', 0, 0, 1000, 0, 1, '2021-11-18 09:07:18', '2021-11-18 09:07:18', 38),
(4, 'Hublot Big Bang King gold', 2000000, 'img/product_2.png', 'Hublot Bigbang Unico King Gold 42mm sở hữu lớp vỏ bằng King Gold 18K (chất liệu độc quyền của Hublot) nổi bật, kết hợp phần bezel làm cùng chất liệu với vỏ làm cho chiếc đồng hồ Hublot Big Bang này càng trở lên sang trọng và cuốn hút.', 10, 0, 1000, 0, 1, '2021-11-18 09:07:18', '2021-11-19 20:13:17', 38),
(5, 'Big Bang DJ Snake', 3000000, 'img/product_3.png', 'Hublot Big Bang DJ Snake 45mm là thành quả của sự hợp tác giữa nghệ sĩ người Pháp DJ Snake và thương hiệu đồng hồ Hublot. Thiết kế sở hữu vô số khía cạnh đặc biệt giống như người nghệ sĩ tài năng đã truyền cảm hứng cho nó. Sự xuất hiện của chiếc đồng hồ Hublot Big Bang DJ Snake 45mm như một điểm nhấn, nhấn mạnh vào sự năng động, thể thao và khác biệt của chủ sở hữu.', 0, 0, 1000, 0, 1, '2021-11-18 09:07:18', '2021-11-19 20:11:51', 38),
(6, 'Hublot Spirit of Big Bang', 1800000, 'img/product_4.png', 'Hublot Spirit Of Big Bang Titanium Ceramic 45mm, 601.NM.0173.LR chiếc đồng hồ này sở hữu một kích thước thuộc hàng khủng: 45mm cùng với chất liệu titanium siêu bền nhẹ và cứng cỗ máy này lại không quá nặng nhưng vẫn đầm tay. ', 5, 0, 1000, 0, 1, '2021-11-18 09:07:18', '2021-11-18 09:07:18', 38),
(7, 'Hublot Big Bang Steel Diamonds', 5000000, 'img/product_5.png', 'Hublot Big Bang One Click Steel Diamonds 39mm mang mã hiệu 465.SX.1170.RX.1204 thanh lịch và đầy tinh tế với tông màu đen chủ đạo. Đây sẽ là một món quà không thể tuyệt vời hơn dành tặng phái đẹp.', 30, 1, 10000, 0, 1, '2021-11-18 09:07:18', '2021-11-18 09:07:18', 38),
(8, 'Big Bang Steel Full Pave', 320000, 'img/product_6.png', 'Hublot đã giới thiệu thêm một bộ sưu tập với thiết kế tương tự nhưng dành cho nữ. Chiếc đồng hồ Hublot Big Bang One Click 465.SX.9010.RX.1604 chính là một trong những thiết kế như vậy, mới được thương hiệu giới thiệu vào đầu năm 2021.', 40, 1, 1000, 0, 1, '2021-11-18 09:07:18', '2021-11-18 09:07:18', 38),
(9, 'Rolex Oyster Perpetual', 5000000, 'img/product_7.png', 'Rolex Datejust vẫn là dòng sản phẩm thu hút đông đảo sự chú ý của khách hàng trên toàn thế giới. Trong công nghệ chế tác đồng hồ, vàng mang tính chất sang trọng, quý phái, thường được sử dụng cho những chiếc đồng hồ thiết kế cổ điển còn thép mang đặc tính bền bỉ với độ chống chịu áp lực cao, dành cho những mẫu có tính chất trẻ trung, hiện đại. Nhận ra những đặc điểm này, ngay từ những năm 1930, Rolex đã kết hợp hai chất liệu vàng và thép tạo thành những mẫu đồng hồ sang trọng. Rolex Datejust 41mm 126334 là một chiếc đồng hồ như vậy.', 20, 0, 1000, 0, 1, '2021-11-18 09:07:18', '2021-11-18 09:07:18', 33),
(10, 'Rolex Yacht Master', 2000000, 'img/product_8.png', 'Yacht- Master là dòng đồng hồ lịch lãm nhưng mang đậm chất thời trang và thể thao, dòng sản phẩm nổi bật này của thương hiệu Rolex lừng danh sẽ mang đến cho người sở hữu sự nổi bật và tự tin tuyệt đối trước đám đông. Rolex Yacht-Master 268655 Pave chính là một cái tên không thể bỏ qua.', 30, 1, 1000, 0, 1, '2021-11-18 09:07:18', '2021-11-18 09:07:18', 33),
(11, 'Hublot Orlinski White', 3000000, 'img/product_9.png', 'Chiếc đồng hồ sẽ khiến người khác phải ngưỡng mộ và ghen tỵ với bạn bởi sức hấp dẫn không thể cưỡng lại đến từ gam màu đen mạnh mẽ từ phần mặt số, nam tính. Thay vì lớp vỏ được làm từ vàng 18k King Gold ở phiên bản này Hublot mang tới chất liệu là Titanium với đường kính 45 mm.', 45, 1, 1000, 0, 1, '2021-11-18 09:07:18', '2021-11-18 09:07:18', 38),
(12, 'Hublot Classic Fusion Titanium', 2000000, 'img/product_10.png', 'Hublot Classic Fusion Titanium King Gold 45mm vẫn mang trong mình thiết kế sang trọng và mang nét đẹp cổ điển đặc trưng của dòng Classic Fusion. Lần này, thay vì bộ vỏ vàng hồng thì Hublot muốn mang tới một chất liệu khác đó chính là Titanium, vành bezel với chất liệu King Gold 18 quen thuộc. Được trang bị bộ máy Calibre HUB1112, hoạt động ổn định và có độ chính xác rất cao. Khả năng chống nước sâu 50mét/165feet. ', 45, 0, 1000, 0, 1, '2021-11-18 09:07:18', '2021-11-18 09:07:18', 38),
(16, 'Hublot Spirit of Big Bang', 1800000, 'img/product_11.png', 'Hublot Spirit Of Big Bang Titanium Ceramic 45mm, 601.NM.0173.LR chiếc đồng hồ này sở hữu một kích thước thuộc hàng khủng: 45mm cùng với chất liệu titanium siêu bền nhẹ và cứng cỗ máy này lại không quá nặng nhưng vẫn đầm tay. ', 0, 0, 1000, 0, 1, '2021-11-18 09:07:18', '2021-11-18 09:07:18', 38),
(23, 'Hublot Classic Titanium Blue', 3200000, 'img/product_12.png', 'Thương hiệu đồng hồ cao cấp Hublot dần trở thành một trong nhưng nhà sản xuất đồng hồ hàng đầu trong thế giới công nghiệp chế tác đồng hồ cơ học. Điều đáng nói, người chơi chỉ cần chi trả một mức giá rất vừa phải là có thể sở hữu một chiếc đồng hồ đẹp, sang trọng, sành điệu và năng động. Điều này đã khiến Hublot ngày càng là cái tên nổi tiếng và đáng gờm thuộc phân khúc cao cấp. Hôm nay, hãy cùng Boss Luxury khám phá về một trong những thiết kế \"kinh điển\" của thương hiệu: Hublot Classic Fusion Titanium Blue 42mm ', 0, 1, 1000, 0, 1, '2021-11-18 10:49:32', '2021-11-18 10:49:32', 38),
(24, 'Rolex Oyster Perpetual', 2000000, 'img/product_13.png', 'Rolex Datejust vẫn là dòng sản phẩm thu hút đông đảo sự chú ý của khách hàng trên toàn thế giới. Trong công nghệ chế tác đồng hồ, vàng mang tính chất sang trọng, quý phái, thường được sử dụng cho những chiếc đồng hồ thiết kế cổ điển còn thép mang đặc tính bền bỉ với độ chống chịu áp lực cao, dành cho những mẫu có tính chất trẻ trung, hiện đại. Nhận ra những đặc điểm này, ngay từ những năm 1930, Rolex đã kết hợp hai chất liệu vàng và thép tạo thành những mẫu đồng hồ sang trọng. Rolex Datejust 41mm 126334 là một chiếc đồng hồ như vậy.', 30, 0, 1000, 0, 1, '2021-11-18 10:49:32', '2021-11-18 10:49:32', 33),
(25, 'Big Bang Unico Black Magic', 3000000, 'img/product_14.png', 'Mặt số skeleton không đơn giản chỉ là lộ máy mà đó còn là cả một bức tranh nghệ thuật. Chiếc Hublot Big Bang Unico Black Magic nổi bật vô cùng ngầu với bộ vỏ ceramic đen toàn bộ từ vành bezel, thân vỏ cho tới bộ khóa. Chất liệu ceramic nổi bật là một chất liệu hiện đại, trọng lượng nhẹ và có độ cứng rất cao.', 10, 0, 1000, 0, 1, '2021-11-18 10:49:32', '2021-11-18 10:49:32', 38),
(27, 'Zenith DEFY Zero ', 3200000, 'img/product_17.png', 'Chiếc đồng hồ Zenith DEFY Zero G 95.9000.8812-78.R584 được thiết kế theo phong cách hiện đại với tông màu xám làm chủ đạo. Bộ vỏ titanium độ cứng cao có đường kính lên tới 44mm kết hợp dây đeo cao su màu xanh vô cùng sang trọng. Chiếc đồng hồ nổi bật với thiết kế skeleton bên trong toát lên vẻ đẹp của sự phức tạp cho cỗ máy', 40, 1, 1000, 0, 1, '2021-11-18 15:57:33', '2021-11-18 15:57:33', 35),
(28, 'Zenith Pilot Montre', 2000000, 'img/product_18.png', 'Chiếc đồng hồ ZENITH Pilot Montre D\'Aeronef Type 20 Tourbillon Chronograph Rose Gold 48mm được thiết kế theo phong cách đồng hồ phi công điển hình của hãng rất được yêu thích. Đồng hồ với tông màu đen, bộ vỏ vàng hồng , nổi bật với thiết kế skeleton bên trong toát lên vẻ đẹp của sự phức tạp cho cỗ máy.', 20, 1, 1000, 0, 1, '2021-11-18 15:57:33', '2021-11-18 15:57:33', 35),
(29, 'Zenith defty el Primero', 2500000, 'img/product_19.png', 'DEFY El Primero 21 có lẽ là mẫu đồng hồ thú vị nhất được ra mắt cùng thời điểm với những anh em của mình vào năm 2017. Phải là những bậc thầy trong chế tác đồng hồ, Zenith mới có thể chế tạo ra chiếc đồng hồ tuyệt phẩm như vậy.', 10, 0, 1000, 0, 1, '2021-11-18 15:57:33', '2021-11-18 15:57:33', 35),
(30, 'Zenith ELITE Lady ', 1500000, 'img/product_20.png', 'Vỏ vàng hồng 18kt với dây đeo bằng da cá sấu màu nâu. Cố định khung viền kim cương tông vàng. Mặt số trắng của mặt số ngọc trai với bàn tay mạ vàng hồng và vạch chỉ giờ. Kiểu quay số: Analog. Hai - tiểu phần thứ hai và mặt trăng giai đoạn. Zenith Calibre Elite 692 chuyển động tự động với khả năng dự trữ năng lượng trong 50 giờ. Tinh thể sapphire chống trầy xước. Kéo / đẩy vương miện. Trường hợp trong suốt trở lại. ', 0, 1, 1000, 0, 1, '2021-11-18 15:57:33', '2021-11-18 15:57:33', 35),
(31, '\r\nZenith ELITE Classic', 2000000, 'img/product_21.png', 'Zenith Elite Classic Ultra-Thin (18229067901c498), có vỏ bằng vàng hồng 39mm 18k bao quanh mặt số bằng bạc sunray trên dây đeo cá sấu màu nâu với khóa bằng vàng hồng 18k. Các chức năng bao gồm giờ, phút và giây', 0, 1, 1000, 0, 1, '2021-11-18 15:57:33', '2021-11-18 15:57:33', 35),
(37, 'Chanel J12', 3200000, 'img/product_22.png', 'Chanel J12 XS H5237 với thiết kế \"siêu nhỏ\" và chất liệu sứ công nghệ cao với đường kính mặt số chỉ 19mm, đính 32 viên kim cương cắt sáng chói góp phần tôn lên nét quyến rũ nơi cổ tay người đẹp. Sự khác lạ của chất liệu đối với nữ giới càng làm tăng thêm hiệu ứng của gốm công nghệ cao màu trắng.', 0, 1, 1000, 0, 1, '2021-11-18 16:10:43', '2021-11-18 16:10:43', 36),
(38, 'Chanel Premiere', 2200000, 'img/product_23.png', 'Mẫu đồng hồ Chanel Première mã hiệu H6126 với thiết kế đơn giản nhưng lại mang vẻ đẹp vô cùng sang trọng, đẳng cấp. Với vỏ từ 2 chất liệu vàng vàng 18k cùng dây cao su màu đen vừa mang lại cảm giác thoải mái, yên tâm vừa là một lời tuyên bố về phong cách đẳng cấp và quý phái của phái đẹp.', 0, 1, 1000, 0, 1, '2021-11-18 16:10:43', '2021-11-18 16:10:43', 36),
(39, 'Chanel Boy Friend Tweed', 2000000, 'img/product_24.png', 'Chanel Boy Friend Tweed H6127, một chiếc đồng hồ nữ với sức quyến rũ nam tính, được thiết kế với cùng một tinh thần táo bạo. Với size nhỏ 21,5 x 27,9 mm, đồng hồ được chế tác bằng thép với lớp tráng men mô phỏng mẫu vải Tweed trong các sắc thái khác nhau của màu xám. ', 10, 0, 1000, 0, 1, '2021-11-18 16:10:43', '2021-11-18 16:10:43', 36),
(40, 'Piaget Limelight Gala', 1500000, 'img/product_25.png', 'Chiếc đồng hồ Piaget Limelight Gala Watch Satin G0A38167 38mm với gam màu tươi sáng, đem lại sự năng động trong thiết kế cực kỳ đẹp và sang trọng, đi kèm chức năng hiển thị giờ cũng tương đối là dễ nhìn đối với nữ giới.', 0, 1, 1000, 0, 1, '2021-11-18 16:15:49', '2021-11-18 16:15:49', 37),
(41, 'Piaget Limelight Gala', 2000000, 'img/product_26.png', 'Chiếc đồng hồ Piaget Limelight Gala watch G0A44167 32mm được làm từ vàng hồng nguyên khối vô cùng sang trọng. Với màu xanh từ mặt số cùng dây đeo bằng chất liệu vàng hồng thanh lịch, cỗ máy thật hoàn hảo trên cổ tay phái đẹp. ', 0, 1, 1000, 0, 1, '2021-11-18 16:15:49', '2021-11-18 16:15:49', 37),
(42, 'Piaget Limelight Gala', 3000000, 'img/product_27.png', 'Chiếc đồng hồ Piaget Limelight Gala watch G0A41212 32mm được làm từ vàng trắng nguyên khối vô cùng sang trọng. Với màu trắng của dây và mặt số màu bạc thanh lịch, cỗ máy thật hoàn hảo trên cổ tay phái đẹp.', 0, 0, 1000, 0, 1, '2021-11-18 16:15:49', '2021-11-18 16:15:49', 37),
(43, 'Longines Presence', 2500000, 'img/product_28.png', 'Bộ sưu tập Presence đã tái hiện quá trình phát triển của di sản Longines và là một phần tạo nên truyền thống lâu đời. Mẫu đồng hồ Longines L47902112 dành cho nam giới sử dụng màu trắng sang trọng làm mặt số, được điêu khắc rất tinh xảo với chữ số La Mã và cửa sổ ngày trang nhã tại vị trí 3 giờ.', 0, 1, 1000, 0, 1, '2021-11-18 16:21:30', '2021-11-18 16:21:30', 39),
(44, 'Longines La Grande', 1600000, 'img/product_29.png', 'Bộ sưu tập đồng hồ Longines La grande classic que de Longines được vinh danh là bộ sưu tập của vẻ đẹp cổ điển vĩnh hằng. Mẫu đồng hồ Longines La Grande Classique L49084942 sử dụng màu xanh da trời sang trọng làm mặt số, được điêu khắc rất tinh xảo cùng số chỉ giờ La Mã.', 0, 0, 1000, 0, 1, '2021-11-18 16:21:30', '2021-11-18 16:21:30', 39),
(45, 'Longines Equestrian', 1100000, 'img/product_30.png', 'Tình yêu với môn thể thao đua ngựa luôn thấm đẫm trong Bộ sưu tập Longines EQUESTRIAN. Mẫu đồng hồ Longines Equestrian L61424876 sử dụng màu trắng xà cừ sang trọng làm mặt số, được điêu khắc rất tinh xảo với 12 viên kim cương lấp lánh chỉ giờ trên mô hình đồng hồ bầu dục.', 0, 1, 1000, 0, 1, '2021-11-18 16:21:30', '2021-11-18 16:21:30', 39),
(46, 'GraffStar Icon Automatic', 2000000, 'img/product_21.png', 'GraffStar Icon Automatic GSA38PGSLD không chỉ khoác trên mình lớp áo choàng là bộ vỏ vô cùng lông lẫy bằng vàng hồng 18k và kim cương lấp lánh với kích thước 38 mm mà còn sở hữu một cơ chế hoạt động bền bỉ bên trong với bộ máy tự động lên dây cót có khả năng dự trữ lên đến 42 giờ được cài đặt bên trong vỏ. ', 40, 1, 1000, 0, 1, '2021-11-18 16:29:35', '2021-11-18 16:29:35', 40),
(47, 'Graff Ultra Flat', 200000, 'img/product_32.png', 'Graff Ultra Flat Tourbillon 43mm fully set diamond sẽ là một phiên bản chứng minh sự sáng tạo đáng tự hào của Gaff, bất cứ ai khi ngắm nhìn cũng phải ấn tượng về nó.', 0, 0, 1000, 0, 1, '2021-11-18 16:29:35', '2021-11-18 16:29:35', 40),
(48, 'Graff Structural Tourbillon ', 2500000, 'img/product_33.png', 'Graff Structural Tourbillon Skeleton Automatic mang mã hiệu MGSTO46TB được nhà sản xuất chế tác rất công phu với bộ vỏ được chế tác bằng chất liệu Platinum, mặt số có thiết kế Skeleton đầy hấp dẫn.', 0, 0, 1000, 0, 1, '2021-11-18 16:29:35', '2021-11-18 16:29:35', 40);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `slider_id` int(11) NOT NULL,
  `slider_name` varchar(255) NOT NULL,
  `image` varchar(2500) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`slider_id`, `slider_name`, `image`, `create_at`, `update_at`) VALUES
(1, 'Bigbang Meca-10 King Gold', 'img/slider_1.png', '2021-11-19 19:00:54', '2021-11-19 19:05:52'),
(2, 'Bigbang Meca-10 King Gold', 'img/slider_2.png', '2021-11-19 19:00:54', '2021-11-19 19:06:54'),
(3, 'Bigbang Meca-10 King Gold', 'img/slider_3.png', '2021-11-19 19:00:54', '2021-11-19 19:07:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `avatar` varchar(2500) DEFAULT NULL,
  `age` tinyint(4) DEFAULT NULL,
  `phone_number` tinyint(4) DEFAULT NULL,
  `gender` tinyint(4) NOT NULL,
  `role` tinyint(4) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `email`, `password`, `fullname`, `avatar`, `age`, `phone_number`, `gender`, `role`, `address`, `create_at`, `update_at`) VALUES
(72, 'khaidang', 'khaiddph15544@fpt.edu.vn', '12345678', 'Đặng Đình Khải', 'avatar/myprofile.jpg', 19, 127, 0, 1, 'Phú Thọ', '2021-11-26 19:59:12', '2021-11-26 21:16:30'),
(75, 'truongnn', 'truongnnph15584@fpt.edu.vn', 'truong123', 'Nguyễn Nhật Trường', 'avatar/couple.jpg', 19, 127, 0, 1, 'Hà Nội', '2021-11-26 21:08:45', NULL),
(76, 'trapt', 'traptph15606@fpt.edu.vn', 'tra123', 'Phùng Thành Trà', 'avatar/244419465_396431702046596_2955440484817806120_n.jpg', 19, 127, 0, 1, 'Hà Nội', '2021-11-26 21:10:22', '2021-11-26 21:59:10'),
(77, 'sadas', 'đasa', '1231231', 'đasa', 'avatar/couple.jpg', 123, 127, 1, 0, 'sadasdas', '2021-11-26 22:18:17', '2021-11-26 22:41:54');

-- --------------------------------------------------------

--
-- Table structure for table `warranties`
--

CREATE TABLE `warranties` (
  `warranty_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `create_at` datetime NOT NULL,
  `reason` text NOT NULL,
  `phone_number` int(11) NOT NULL,
  `address` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `warranties`
--

INSERT INTO `warranties` (`warranty_id`, `user_id`, `product_id`, `create_at`, `reason`, `phone_number`, `address`, `status`) VALUES
(1, 3, 3, '2021-11-14 15:52:56', 'rr', 21312, 'pp', 0),
(2, 3, 3, '2021-11-14 15:52:56', 'rr', 21312, 'pp', 0),
(3, 3, 3, '2021-11-14 15:52:56', 'rr', 21312, 'pp', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `warranties`
--
ALTER TABLE `warranties`
  ADD PRIMARY KEY (`warranty_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `warranties`
--
ALTER TABLE `warranties`
  MODIFY `warranty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
