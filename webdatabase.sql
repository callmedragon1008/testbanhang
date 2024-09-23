-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2023 at 08:29 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `madonhang` int(11) NOT NULL,
  `masach` int(11) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`madonhang`, `masach`, `soluong`) VALUES
(1, 1, 2),
(2, 1, 2),
(3, 1, 1),
(4, 1, 3),
(1, 2, 2),
(1, 3, 1),
(1, 4, 3),
(1, 5, 1),
(1, 6, 1),
(2, 7, 1),
(2, 8, 1),
(2, 9, 1),
(2, 10, 1),
(2, 11, 1),
(2, 12, 1),
(3, 13, 1),
(3, 14, 1),
(3, 15, 1),
(3, 16, 1),
(3, 17, 1),
(4, 18, 1),
(4, 19, 1),
(4, 20, 1),
(4, 21, 1),
(4, 22, 1),
(4, 23, 1),
(4, 24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `madonhang` int(11) NOT NULL,
  `ngay` date NOT NULL,
  `tendangnhap` varchar(50) NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `daduyet` tinyint(1) NOT NULL,
  `sodienthoai` varchar(50) NOT NULL,
  `thanhtoan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`madonhang`, `ngay`, `tendangnhap`, `diachi`, `daduyet`, `sodienthoai`, `thanhtoan`) VALUES
(1, '2023-05-02', 'HoangD', '112 Lý Thường Kiệt,P11,Quận 3, TP Hồ Chí Minh, Việt Nam', 1, '0928493274', 'OCD'),
(2, '2023-03-15', 'NguyenA', '112 Lý Thường Kiệt,P12,Quận Gò Vấp, TP Hồ Chí Minh, Việt Nam', 1, '0928493274', 'Online'),
(3, '2023-04-15', 'TranB', '37 Lý Thái Tổ,P3,Quận 1, TP Hồ Chí Minh, Việt Nam', 0, '09284563', 'Online'),
(4, '2023-02-11', 'VoE', 'Nhà của E, Quận 2, TP Hồ Chí Minh, Việt Nam', 0, '074893274', 'Online');

-- --------------------------------------------------------

--
-- Table structure for table `loaisach`
--

CREATE TABLE `loaisach` (
  `maloai` int(11) NOT NULL,
  `tenloai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loaisach`
--

INSERT INTO `loaisach` (`maloai`, `tenloai`) VALUES
(1, 'Tiểu Thuyết'),
(2, 'Tâm lý'),
(3, 'Kinh dị - Giả tưởng'),
(4, 'Tạp văn');

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `tendangnhap` varchar(50) NOT NULL,
  `matkhau` mediumtext NOT NULL,
  `email` varchar(50) NOT NULL,
  `bikhoa` tinyint(1) NOT NULL,
  `vaitro` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`tendangnhap`, `matkhau`, `email`, `bikhoa`, `vaitro`) VALUES
('adminDepGai1', '202cb962ac59075b964b07152d234b70', 'tai02@gmail.com', 0, 'quantrivien'),
('adminXinhTrai', '202cb962ac59075b964b07152d234b70', 'admin@gmail.com', 0, 'quantrivien'),
('HoangD', '9cbf8a4dcb8e30682b927f352d6559a0', 'Dhoang4@gmail.com', 0, 'nguoidung'),
('LeC', '1e0fe8c5d5f63c7409ef02c7073edaf2', 'leC02@gmail.com', 0, 'nguoidung'),
('NguyenA', '0b3364569955a095cd07ba6bad26091d', 'Anguyen1@gmail.com', 0, 'nguoidung'),
('TranB', '7545271e2af0f6172c78579bcb8b3127', 'Btran21@gmail.com', 0, 'nguoidung'),
('VoE', '5e8fd2e51fd2d8550f98aaf43e511f71', 'Evo5@gmail.com', 0, 'nguoidung');

-- --------------------------------------------------------

--
-- Table structure for table `sach`
--

CREATE TABLE `sach` (
  `masach` int(11) NOT NULL,
  `tensach` varchar(50) NOT NULL,
  `maloai` int(11) NOT NULL,
  `gia` double NOT NULL,
  `nxb` varchar(50) NOT NULL,
  `tacgia` varchar(50) NOT NULL,
  `mota` mediumtext NOT NULL,
  `bian` tinyint(1) NOT NULL,
  `anh` varchar(50) NOT NULL,
  `daduocban` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sach`
--

INSERT INTO `sach` (`masach`, `tensach`, `maloai`, `gia`, `nxb`, `tacgia`, `mota`, `bian`, `anh`, `daduocban`) VALUES
(1, 'Cây Cam Ngọt Của Tớ', 1, 108000, 'Nhà Xuất Bản Hội Nhà Văn', 'José Mauro de Vasconcelos', 'Cây Cam Ngọt Của Tôi là một câu chuyện về nổi đau và tình yêu thương, đưa chúng ta vào một hành trình khám phá để tự trả lời câu hỏi: Cuộc đời có đáng sống không? Zezé có đủ sự hoạt bát và tinh nghịch mà một đứa trẻ năm tuổi có thể có, cậu bé cũng có đủ sự thông minh và những suy nghĩ rối ren phức tạp mà ít đứa trẻ năm tuổi nào có thể có.\r\n', 0, '1.png', 1),
(2, 'Tàn Ngày Để Lại', 1, 160000, 'Nhà Xuất Bản Văn Học', 'Kazuo Ishiguro', 'Stevens là một quản gia người Anh với tất cả mọi hàm nghĩa của từ này: tận tụy, chỉn chu, trung thành, và trên hết, luôn luôn có một ý thức mãnh liệt về phẩm giá nghề nghiệp. Mong muốn cải thiện chất lượng phục vụ tại dinh thự và chấm dứt những sa sút hiện tại, Stevens dấn thân vào một cuộc hành trình đi qua Miền Tây nước Anh. Mỗi chặng trên cuộc hành trình mở ra một cánh cửa nối về quá khứ, và dần dà hành trình ấy làm hé lộ những mất mát và nuối tiếc theo sau những ảo tưởng của một đời người', 0, '2.png', 1),
(3, 'Và Rồi Núi Vọng', 1, 133000, 'Nhà Xuất Bản Hội Nhà Văn', 'Khaled Hosseini', '\'Abdullah và Pari sống cùng cha, mẹ kế và em khác mẹ trong ngôi làng nhỏ xác xơ Shadbagh, nơi đói nghèo và mùa đông khắc nghiệt luôn chực chờ cướp đi sinh mệnh lũ trẻ. Abdullah yêu thương em vô ngần, còn với Pari, anh trai chẳng khác gì người cha, chăm lo cho nó từng bữa ăn, giấc ngủ. Mùa thu năm ấy hai anh em theo cha băng qua sa mạc tới thành Kabul náo nhiệt, không mảy may hay biết số phận nào đang chờ đón phía trước: một cuộc chia ly sẽ mãi đè nặng lên Abdullah và để lại nỗi trống trải mơ hồ không thể lấp đầy trong tâm hồn Pari…\',\r\n', 0, '3.png', 1),
(4, 'Trái Tim Của Quỷ', 1, 117000, 'Nhà Xuất Bản Dân Trí', 'Mahokaru Numata', 'Ryosuke là một chàng trai với gia cảnh bình thường, vốn dĩ anh tưởng rằng cuộc đời mình sẽ trôi qua êm đềm như vậy mãi. Cho đến một ngày mọi sự đen đủi trên đời theo nhau ập đến cuộc đời anh. Vị hôn thê sắp cưới đột nhiên biến mất, người mẹ anh yêu quý gặp tai nạn giao thông qua đời, bố anh mắc phải căn bệnh ung thư khó lòng cứu chữa, bà ngoại thì bệnh tật nằm trong viện dưỡng lão. Những tưởng những sự việc kỳ quái chỉ dừng lại ở đó, thì trong một lần về thăm bố Ryosuke tình cờ phát hiện 4 cuốn sổ cũ nằm trong tủ âm tường. Những cuốn sổ với tiêu đề Yurigokoro cùng với lời lẽ vô cùng dị thường.', 0, '4.png', 1),
(5, 'Chết Giữa Mùa Hè', 1, 184000, 'Nhà Xuất Bản Hội Nhà Văn', 'Yukio Mishima', 'Chết Giữa Mùa Hè là tập truyện kết tinh những lý tưởng sống cốt lõi cùng những góc khuất ẩn ức thậm sâu trong con người Yukio Mishima. Đó là sự ngợi ca và nỗi ám ảnh thường trực dành cho cái chết, là tiếng khóc hoan lạc và bi ai của những tâm hồn đang yêu muốn được giải phóng khỏi sự hạn hẹp của giới tính và xác thịt, là nỗi cô đơn vĩnh cửu của nhân loại lúc bình', 0, '5.png', 1),
(6, 'Những Chuyện Tình Thế Kỷ Mới', 1, 201000, 'Nhà Xuất Bản Phụ Nữ', 'Tàn Tuyết', 'Những Chuyện Tình Thế Kỷ Mới là câu chuyện dốc lòng theo đuổi cuộc sống xứng đáng của những con người bình thường nhất, có thể gặp ở bất cứ đâu trên cõi đời này. Họ khao khát một cuộc sống tự do và bất chấp tất cả để theo đuổi thứ tự do ấy. Mà tình yêu chính là tột đỉnh của tự do. Nhưng giữa thế kỷ mới đầy biến động và phức tạp, chủ nghĩa vật chất lên ngôi, trên trái đất còn được bao nhiêu người tin vào tình yêu?', 0, '6.png', 1),
(7, 'Sắc Màu Nội Tâm', 2, 122000, 'Nhà Xuất Bản Thanh Niên', 'Thượng Quan Chiêu Nghi', 'Trong sâu thẳm nội tâm chúng ta, mỗi một cảm xúc trỗi dậy, mỗi một suy nghĩ xao động, tất cả những thay đổi về ý niệm và ý thức đều có thể tạo ra những kỳ tích mới. Sự sáng tạo đó được thể hiện thông qua năng lượng màu sắc và phương pháp chữa lành bằng màu sắc. Bậc thầy về màu sắc Thượng Quan Chiêu Nghi sẽ tiết lộ bí mật của màu sắc và tinh thần cho bạn thông qua cuốn sách này. 13 màu sắc giúp bạn giải mã những nút thắt trong lòng và làm vơi bớt những cảm xúc tiêu cực nặng nề! 13 màu sắc tương ứng với 13 phương pháp chữa lành giúp bạn được thả mình trong trò chơi sắc màu, phục hồi cuộc sống mới!', 0, '7.png', 1),
(8, 'Bản Chất Của Dối Trá', 2, 149000, 'Nhà Xuất Bản Lao Động Xã Hội', 'Dan Ariely', 'Trong cuốn sách \"Bản chất của dối trá\" cuốn sách từng đoạt giải thưởng lớn - tác giả sách bán chạy nhất, Dan Ariely cho thấy tại sao một số điều dễ nói dối hơn những điều khác, làm thế nào để gặp ít vấn đề hơn chúng ta tưởng hơn khi bị lừa dối, và cách hoạt động kinh doanh đã mở đường cho các hành vi phi đạo đức, cả cố ý lẫn vô ý như thế nào. Ariely đã khám phá ra cách thức hoạt động của các hành vi phi đạo đức trong cuộc sống riêng, công việc và chính trị, và nó đã ảnh hưởng đến tất cả chúng ta như thế nào, ngay cả khi chúng ta nghĩ mình có những tiêu chuẩn đạo đức cao. Ariely cũng xác định những gì giúp chúng ta trung thực, chỉ đường cho việc trở thành người có đạo đức hơn trong cuộc sống hàng ngày của chúng ta.', 0, '8.png', 1),
(9, 'Tôi Ước Mình Chưa Từng Được Sinh Ra', 2, 90000, 'Nhà xuất bản Dân Trí', 'Yim Minkyung', 'Tác giả của cuốn sách này, với vai trò là một chuyên gia về tâm lý học, sẽ giải đáp những câu hỏi xoay quanh tâm lý của những người có ý định tự sát thông qua những \"trải nghiệm\" văn học. Một phương thức để \"hiểu đầy đủ về tự tử\" thông qua những nhân vật trong các cuốn tiểu thuyết kinh điển mà chúng ta có thể đã từng đọc qua. Những nhân vật được phân tích trong cuốn sách này là những người muốn hoặc đang cố gắng tự tử, thường xuyên nghĩ đến việc tự tử hoặc gây tổn hại tới chính mình. Họ cũng là những người mắc chứng trầm cảm, ảo tưởng thính giác hoặc nghiện chất kích, liên tục tiến gần hơn tới việc tự sát.', 0, '9.png', 1),
(10, 'Những Kẻ Cuồng Nhạc', 2, 230000, 'Nhà Xuất Bản Thế Giới', 'Oliver Sacks', 'Musicophilia là một chứng bệnh “lạ”, những người mắc nó trở nên say mê âm nhạc tột độ. Họ sống, thở trong bầu không khí âm nhạc, như thể bị âm nhạc chiếm hữu linh hồn, như thể trong tâm hồn họ đầy nhạc tính, chỉ chực chờ để “bật lên”. Từ các ca có triệu chứng trên, đột khởi hay vốn có, nhưng điểm chung ở họ là đều mắc những căn bệnh bẩm sinh liên quan đến thần kinh hoặc từng trải qua những tai nạn ảnh hưởng đến não bộ - Oliver Sacks đưa chúng ta bước vào thế giới của mối liên hệ giữa âm nhạc và não bộ: vùng não nào đóng vai trò trong việc chi phối sự cuồng mê nhạc; những căn bệnh, tai nạn ảnh hưởng đến vùng não này lại khiến vùng não kia đột ngột trở nên thích thú âm nhạc ra sao.', 0, '10.png', 1),
(11, 'Thấu Hiểu Chính Mình', 2, 96000, 'Nhà Xuất Bản Dân Trí', 'Megan Logan', 'Bạn cảm thấy như bị rút cạn năng lượng bởi công việc, gia đình và các mối quan hệ xung quanh mình? Bạn mệt mỏi khi luôn phải để ý tới nhu cầu của người khác, cố gắng làm vừa lòng tất cả mọi người? Để duy trì sự cân bằng lành mạnh trong cuộc sống, điều quan trọng là chúng ta phải biết cách chăm sóc bản thân, quan tâm nhiều hơn tới những cảm xúc và nhu cầu của chính mình. Thông qua những lời khuyên cũng như bài tập thực hành hữu ích, tác giả Megan Logan sẽ giúp chúng ta nhận biết và nuôi dưỡng sức mạnh trong mình, từ đó học cách yêu thương bản thân và tạo dựng một cuộc sống tràn đầy ý nghĩa.', 0, '11.png', 1),
(12, 'Bạn Đắt Giá Bao Nhiêu?', 2, 119000, 'Nhà Xuất Bản Thế Giới', 'Vãn Tình', 'Hơn bốn mươi câu chuyện trong sách xoay quanh các chủ đề tình yêu, hôn nhân, gia đình, sự nghiệp… đến từ chính cuộc sống của tác giả và những người xung quanh, vừa thực tế lại vừa gợi mở, dễ dàng giúp chúng ta liên hệ với tình huống của chính mình. Với những câu chuyện đó, Vãn Tình hi vọng có thể giúp các cô gái thoát khỏi tình cảnh khó khăn, tìm lại bản ngã, sống cuộc đời theo cách mà mình mong muốn. Đọc cuốn sách này, đôi khi bạn nên dừng lại và thành thực với bản thân, liệu bạn có đang là phiên bản mà bạn yêu thích nhất, phiên bản bạn mong muốn trở thành. Hãy thử trả lời các câu hỏi: Sự thỏa hiệp có làm bạn hạnh phúc hay không? Bạn có đang cố gắng lấy lòng tất cả mọi người? Bạn có dám thay đổi?... Và quan trọng nhất: \"Bạn đắt giá bao nhiêu?\"', 0, '12.png', 1),
(13, 'Quán Canh Bò Hầm Của Kẻ Cắp Quá Khứ', 3, 212000, 'Nhà Xuất Bản Hà Nội', 'Youngtak Kim', 'Hàn Quốc năm 2063, con người đã sở hữu những công nghệ tân tiến ngoài sức tưởng tượng và thậm chí còn có thể du hành thời gian trở về quá khứ, tất nhiên với một cái giá không nhỏ: phải đánh cược mạng sống của mình. Lee Woo Hwan là phụ bếp một quán canh thịt bò hầm ở Busan đã hai mươi năm, sống cuộc đời tầm thường, không nơi nương tựa không người bấu víu, không quá khứ đẹp đẽ để hồi tưởng cũng không cả tương lai để trông mong. Nhận lời đề nghị của chủ quán, Woo Hwan lên tàu trở về quá khứ hòng tìm lại hương vị nguyên bản của món canh bò. Nhưng mục đích đơn thuần ban đầu dần nhường chỗ cho một khao khát ngày càng cháy bỏng trong anh. Khao khát một tương lai được sống bình thường và hạnh phúc như bao người, Woo Hwan liều lĩnh tìm cách biến quá khứ trở thành hiện tại, cam tâm đánh đổi không chỉ một mạng người…', 0, '13.png', 1),
(14, 'Trăng Tròn Lần Tới Xin Hãy Đến Gặp Tôi', 3, 99000, 'Nhà Xuất Bản Thế Giới', 'Kim Seong Joong', 'Mở cuốn sách này ra, hẳn là bạn đã được đưa vào một trải nghiệm đầy mẫu thuẫn, như bước qua khu vườn đầy cây độc rực rỡ và thơm ngát hay mơ một cơn ác mộng toàn những cảnh tượng ngọt ngào. Những tác phẩm mà nhà kể chuyện thiên phú Kim Seong Joong mang tới đều tràn đầy khát vọng vẹn nguyên để không rơi vào bất cứ quán tính nào của thế giới này. Truyện của cô gợi lên đủ mọi cung bậc cảm xúc nhưng đồng thời cũng mang một chút không khí lạnh lẽo khiến cho người đọc không thể bớt căng thẳng dù chỉ trong chốc lát.', 0, '14.png', 1),
(15, 'Sát Nhân Mạng', 3, 145000, 'Nhà Xuất Bản Lao Động', 'Jeffery Deaver', 'Với Sát nhân mạng, cây viết tiểu thuyết trinh thám nổi tiếng Jeffery Deaver đã khai thác một chủ đề mới về hacker và thế giới máy tính, những thứ vô cùng gắn bó với cuộc sống hiện đại. Câu chuyện xuất phát từ ý niệm rất giản đơn: Sẽ đáng sợ thế nào nếu ai đó có thể biết mọi điều về cuộc sống của chúng ta - những điều chúng ta nghĩ là bí mật của riêng mình, và sử dụng chính những thông tin ấy để sát hại chúng ta. Nỗi cô đơn và sự ruồng bỏ suốt thuở thiếu thời đã biến Phate thành một hacker máu lạnh. Hắn chui vào vỏ bọc của mình trong thế giới máy tính, và tin rằng thế giới thực chỉ là một trò chơi nhập vai, nơi hắn giết người như một nhân vật trong trò chơi để giành điểm số. Mỗi trang sách là một cuộc rượt đuổi đầy cam go trên thế giới máy tính và cả ngoài đời thực. Cứ mỗi lần tưởng chừng đã tóm được tay sát nhân hàng loạt, thì hắn lại vụt khỏi tầm tay.', 0, '15.png', 1),
(16, 'Người Vô Hình', 3, 80000, 'Nhà Xuất Bản Văn Học', 'H.G.Wells', 'Người Vô Hình là một trong những tiểu thuyết nổi tiếng nhất trong đời viết văn của H.G. Wells, tác gia lớn người Anh. Truyện kể về Griffin, nhà khoa học nghèo có tài năng thiên bẩm về vật lí, người đã tìm ra bí thuật tàng hình. Ảo mộng quyền lực cộng thêm hoàn cảnh đẩy đưa đã biến Griffin thành kẻ vĩ cuồng, mưu toan dùng khả năng vô hình để thống trị thiên hạ. Ngòi bút H. G. Wells khắc họa Griffin như một kẻ vừa đáng thương vừa đáng ghét, là sát thủ song đồng thời là nạn nhân, tài hoa nhưng thiếu từ tâm. Từng được đăng dài kì trên tạp chí Pearson’s Weekly, sau đó in thành sách năm 1897, Người Vô Hình đã nhiều lần được chuyển thể thành phim điện ảnh, phim truyền hình, và cả phim hoạt họa. Phim ảnh, sách truyện ăn theo hoặc dựa trên ý tưởng của Wells thì nhiều không kể xiết. Cho đến nay, đây vẫn là một trong các tác phẩm khoa học viễn tưởng mê hoặc và truyền cảm hứng tới đông đảo độc giả trên khắp toàn cầu.', 0, '16.png', 1),
(17, 'Người Minh Họa', 3, 118000, 'Nhà Xuất Bản Văn Học', 'Ray Bradbury', 'Mỗi bức tranh trên thân thể ông ta là một câu chuyện. Một câu chuyện có thật, sống sít, đầy máu, cái chết, nỗi tuyệt vọng, sự day dứt. Những câu chuyện giả tưởng (hay chẳng giả tưởng cho lắm) về tương lai của loài người, một tương lai đầy ắp những phương tiện công nghệ mà với thời đại ngày nay là khó hình dung, một tương lai thiếu vắng tính người. Bằng giọng văn đơn sơ, chuẩn xác, lạnh lùng, với chút trào lộng quyện với ít nhiều u ẩn, một lần nữa, Ray Bradbury, tác giả của 451 độ F lừng danh, cho ta thấy rằng, về thực chất, khoa học viễn tưởng là một thể loại văn chương nghiêm túc và sâu thẳm như thế nào trong việc bắt con người phản tỉnh.', 0, '17.png', 1),
(18, 'Nắm Bàn Tay Lạnh Giá', 3, 179000, 'Nhà Xuất Bản Hà Nội', 'Robert Aickman', 'Nắm Bàn Tay Lạnh Giá là một trong những tuyển tập hay nhất của Aickman. Nó bao gồm tám câu chuyện đã thể hiện được trọn vẹn phong cách viết \"kỳ lạ\" và mơ hồ hơn chuyện ma thông thường của ông. Xuyên suốt các câu chuyện, người đọc được làm quen với nhiều loại nhân vật khác nhau, từ một người đàn ông qua đêm trong Nhà tế bần cho đến một quý tộc Đức và một người phụ nữ có thể nhìn thấy được hình ảnh của chính linh hồn cô ta. Cũng có ở đ câu chuyện về ma cà rồng thông thường nhưng qua cách kể chuyên khác thường, điều này lại khiến nó trở nên càng thêm phần hoảng hốt và gây cấn.', 0, '18.png', 1),
(19, 'Trưởng Thành Là Khi Nỗi Buồn', 4, 88000, 'Nhà Xuất Bản Văn Học', 'Writinman', 'Ngày trước cứ nghĩ rằng lớn lên sẽ thích lắm, muốn làm gì cũng được, không ai quản. Đúng là như vậy, nhưng cái giá phải trả chính là sự cô đơn. Sự trưởng thành ập đến mà không báo trước, tựa cơn mưa ồ ạt đổ ngang, xối xả ồn ào, mãnh liệt gột trôi mọi nét ngây thơ non nớt của mỗi người. Buộc chúng ta phải mang một chiếc ô nhỏ chống đỡ cơn mưa, mang một cái mũ rộng vành che đi giọt nắng gay gắt. Nhưng dù có che chắn tốt đến đâu, vẫn ướt bởi những giọt mưa, vẫn để lại những vết sạm do nắng đi qua.', 0, '19.png', 1),
(20, 'Hẹn Nhau Phía Sau Tan Vỡ', 4, 86000, 'Nhà Xuất Bản Phụ Nữ', 'An', 'Cuốn sách này… Dành tặng những tâm hồn tan vỡ, đã yêu, đã chia ly, đã từ biệt… Và lời chúc cho một cuộc hạnh ngộ đủ đầy yêu thương.', 0, '20.png', 1),
(21, 'Những Người Đàn Ông Không Có Đàn Bà', 4, 100000, 'Nhà Xuất Bản Hội Nhà Văn', 'Haruki Murakami', 'Những người đàn ông không có đàn bà là tập truyện ngắn mới nhất ra đời sau chín năm kể từ tập truyện ngắn Những câu chuyện kỳ lạ ở Tokyo, xuất bản năm 2005. Những người đàn ông không có đàn bà không phải là những câu chuyện được viết lẻ tẻ rồi nhét đại thành một tập sách. Thay vào đó, các truyện ngắn được thiết lập theo một mô-típ, một chủ đề riêng, sắp xếp các truyện theo khái niệm. Mô-típ của tập truyện Tất cả con của Chúa đều nhảy là trận động đất Kobe năm 1995, còn của Những câu chuyện kỳ lạ ở Tokyo là những câu chuyện bí ẩn xung quanh những người sống ở đô thị. Mô-típ của tập truyện này là những người đàn ông không có đàn bà.', 0, '21.png', 1),
(22, 'Thiên Tài Bên Trái, Kẻ Điên Bên Phải', 4, 179000, 'Nhà Xuất Bản Thế Giới', 'Cao Minh', '\"Thiên tài bên trái, kẻ điên bên phải\" là cuốn sách dành cho những người điên rồ, những kẻ gây rối, những người chống đối, những mảnh ghép hình tròn trong những ô vuông không vừa vặn… những người nhìn mọi thứ khác biệt, không quan tâm đến quy tắc. Bạn có thể đồng ý, có thể phản đối, có thể vinh danh hay lăng mạ họ, nhưng điều duy nhất bạn không thể làm là phủ nhận sự tồn tại của họ. Đó là những người luôn tạo ra sự thay đổi trong khi hầu hết con người chỉ sống rập khuôn như một cái máy. Đa số đều nghĩ họ thật điên rồ nhưng nếu nhìn ở góc khác, ta lại thấy họ thiên tài. Bởi chỉ những người đủ điên nghĩ rằng họ có thể thay đổi thế giới mới là những người làm được điều đó. Chào mừng đến với thế giới của những kẻ điên.', 0, '22.png', 1),
(23, 'Chắc Gì Ta Đã Yêu Nhau', 4, 88000, 'Nhà Xuất Bản Phụ Nữ', 'Minh Nhật', 'Ngày ấy… người có yêu ta? Cuộc đời này, có những khoảng trống sinh ra không phải để lấp đầy, giống như em trong những ngày hanh hao đột nhiên thấy lòng mình hoài nghi nhiều. Như Lê Cát Trọng Lý từng gọi nó là những “hoang mang cần thiết” em cần có để biết trái tim còn biết rung động, biết đau và biết yêu. Nếu có những ngày trong đời, lòng em băn khoăn điều ấy, thì cuốn tản văn của Minh Nhật – CHẮC GÌ TA ĐÃ YÊU NHAU sẽ giúp em tìm được đáp án cho những khúc mắc mà bấy lâu em vẫn giữ riêng mình.', 0, '23.png', 1),
(24, 'Lắng Nghe Gió Hát', 4, 75000, 'Nhà Xuất Bản Hội Nhà Văn', 'Haruki Murakami', 'Mười tám ngày của mùa hè năm hai mươi tuổi, đối với \"tôi\" là một kỳ nghỉ hè không sự kiện. Bất chấp những tối uống tràn ở quán Jays Bar cùng cậu bạn mang tên Chuột hay mối quen tình cờ với cô gái ở cửa hàng đĩa hát, thành phố quê hương ven biển mùa hè chỉ còn là gió trong \"tôi\". Nhưng chuyển kể về gió, tiếng gió hát bên bờ biển, và cảm giác tuổi thanh xuân trôi qua như gió. Mười tám ngày ấy đã gói ghém cả quá khứ, hiện tại, tương lai cùng với hoang mang, mất mát và cô đơn...', 0, '24.png', 1),
(25, 'Những Nỗi Sợ Sâu Thẳm', 4, 109000, 'Nhà Xuất Bản Hà Nội', 'Fran Krause', 'Ai trong chúng ta cũng có những nỗi ám ảnh. Họa sĩ truyện tranh Fran Krause đã dùng ý tưởng của bản thân và thu thập chia sẻ của độc giả khắp thế giới để tạo nên Deep dark fears - một tuyển tập minh họa những nỗi sợ sâu kín của con người - từng làm mưa làm gió trên mạng. Bạn sẽ tìm thấy trong tuyển tập này những nỗi sợ quen thuộc như nhìn thấy ma trong gương phòng ngủ, bị hút vào thang cuốn ở trung tâm thương mại,… cho đến những nỗi sợ kỳ quặc như sợ kiến làm tổ trong đầu khi ngậm kẹo mút đi ngủ, sợ tự tháo tung chính mình khi nhổ một sợi tóc, sợ thức giấc và nhận ra mình chỉ là một chú chó,… Và cả những nỗi sợ hài hước kiểu như: “Đôi khi trong lúc đi ị, tôi sợ rằng đấy chỉ là MỘT GIẤC MƠ. Và thực tế là tôi đang ị đùn ở đâu đó.” Nét minh họa sống động của Fran Krause cùng những tình huống rùng rợn trong mỗi trang sách sẽ dẫn bạn đi từ phen hú hồn này đến pha thót tim khác, và không ngừng kích thích óc tưởng tượng của bạn. Chúc bạn có những trải-nghiệm-để-đời với NHỮNG NỖI SỢ SÂU THẲM!', 0, '25.png', 0),
(26, 'Đời Nhẹ Khôn Kham', 4, 129000, 'Nhà Xuất Bản Hội Nhà Văn', 'Milan Kundera', 'Trong Đời nhẹ khôn kham, sự biến mất cái tôi cá nhân không phải do máy móc kỹ thuật mà do nhà nước chuyên chế. Nhân vật Jan Prochazka và giáo sư Vaclav Cerny chơi thân với nhau, nhưng họ không thể ngờ rằng tất cả cuộc trò chuyện trong bàn tiệc đều được bí mật ghi âm lại. Vào năm 1970 hay 1971, muốn làm mất uy tín của Prochazka, cảnh sát cho phát những cuộc nói chuyện ấy trên đài phát thanh.', 0, '26.png', 0),
(27, 'Bụi Sao', 1, 119000, 'Nhà Xuất Bản Hà Nội', 'Neil Gaiman', 'Đến tuổi cập kê, Tristran Thorn đem lòng si mê một thiếu nữ xinh đẹp trong ngôi làng Bức Tường nơi anh lớn lên. Vì lời hứa sẽ cùng cô sánh vai trong thánh đường, chàng trai trẻ khăn gói lên đường tiến vào Xứ Tiên để tìm một ngôi sao băng từ trên trời rơi xuống. Chuyến phiêu lưu ở xứ sở kỳ lạ, rùng rợn mà đầy nhiệm màu đã xoay chuyển con người và thế giới quan của Tristran theo những cách anh chưa từng ngờ đến, biến anh thành một người hùng chân chính trong câu chuyện của mình. Cổ quái và nhân văn, đen tối và giàu cảm xúc, Bụi sao đem đến vô khối những câu chuyện chưa kể đằng sau cuộc hành trình tầm mộng của một vị anh hùng trẻ tuổi, cốt để chứng tỏ rằng chuyện thần tiên thực chất cũng dành cho người lớn.', 0, '27.png', 0),
(28, 'Hy Vọng Mong Manh', 1, 158000, 'Nhà Xuất Bản Hà Nội', 'Shizukui Shusuke', 'Kiến trúc sư Kazuto và người vợ Kiyomi đang sống bình yên với cậu con trai Tadashi học lớp 10, và con gái Miyabi chuẩn bị lên cấp ba. Một chấn thương khi chơi bóng đá khiến Tadashi không thể tiếp tục theo đuổi đam mê, từ đó cậu chán chường, đôi lúc chơi bời qua đêm bên ngoài. Không ngờ, vào một tối cuối tuần trước khi kỳ nghỉ hè kết thúc, Tadashi ra khỏi nhà đi chơi như mọi khi và không quay về. Hai ngày sau, một xác chết là thiếu niên cấp ba được phát hiện – cậu bé bị đánh hội đồng và là bạn của Tadashi. Người ta được biết còn một nạn nhân nữa chưa tìm thấy. Vợ chồng Kazuto đã trải qua đủ loại cung bậc cảm xúc. Họ hy vọng vào sự thực nào đây: đứa con trai duy nhất là nạn nhân hay hung thủ? Dù là trường hợp nào cũng đều quá cay đắng và nghiệt ngã.', 0, '28.png', 0),
(29, 'Tâm Lý Học Nói Gì Về Nỗi Đau?', 2, 86000, 'Nhà Xuất Bản Thế Giới', 'Richard Gross', 'Tâm lý học nói gì về nỗi đau?” là một cuốn sách nhân văn phân tích những phản ứng đa dạng của chúng ta khi mất đi một người thân yêu, cũng như đi sâu tìm hiểu cách các nhà tâm lý học giải thích về trải nghiệm này. Cuốn sách cũng khảo nghiệm các tập quán văn hóa - xã hội vốn đang định khung hoặc hạn chế hiểu biết về quá trình đau buồn, từ bộ môn phân tâm học tiên phong của Sigmund Freud cho tới quan niệm đã bị phủ nhận về các \"giai đoạn\" của nỗi đau. Ai trong đời cũng phải trải qua nỗi đau mất người thân, và “Tâm lý học nói gì về nỗi đau?” sẽ giúp bạn hiểu thêm về cảm xúc đau buồn đi cùng trải nghiệm ấy, của cả bản thân lẫn những người khác.', 0, '29.png', 0),
(30, 'Thế Giới Không Có Người Xấu', 2, 89000, 'Nhà Xuất Bản Dân Trí', 'Whon Jaehun', 'Gửi đến bạn, người vẫn thường cảm thấy tổn thương, cô đơn và mỏi mệt, hãy mở cuốn sách này ra để đón nhận sự an ủi, vỗ về và tìm thấy những phút giây khiến trái tim bạn hạnh phúc. “Thế giới không có người xấu” là cuốn sách gói gọn những tâm tình chưa thể giãi bày từ tác giả muốn gửi đến bạn đọc, đồng thời thể hiện cái nhìn sâu sắc của ông về cuộc đời. Bằng những trải nghiệm thực tế của bản thân, ông cho rằng giống như mọi căn bệnh đều có nguyên do, thực ra trên thế giới này vốn không có người xấu, chỉ là vẫn luôn có những điều bạn chưa biết mà thôi. Bạn hãy thử thay đổi góc nhìn của chính mình, sống bình thản hơn, tập biết ơn những điều nhỏ bé và tích cực lấp đầy cuộc sống bằng những khoảnh khắc tươi sáng nhất. Hy vọng cuốn sách này có thể giúp bạn vững tin bước đi trên hành trình cuộc đời nhiều chông gai.', 0, '30.png', 0),
(31, 'Hiểu Tâm Lý Rành Tâm Ý', 2, 123000, 'Nhà Xuất Bản Phụ Nữ', 'Huy Đức', 'Hiểu tâm lý rành tâm ý đánh dấu cột mốc quay trở lại của cây bút gây tiếng vang “Tại sao em ít nói thế?” - Huy Đức sau 3 năm vắng bóng. Tại đây, Huy Đức lí giải mọi thứ dưới góc nhìn tâm lý học, lột trần mọi điều bạn đang thực sự sợ hãi trong tình yêu, từ đó giúp bạn đối mặt và đón nhận một con người mới hơn của chính mình. Bạn có cơ hội mở rộng thế giới nội tâm dưới nhiều chiều khác nhau để tìm được bản chất của tình yêu mà mình đang thực sự tìm kiếm. Để hiểu rằng muốn có được hạnh phúc thì phải tranh đấu. Hơn cả, yêu là sự kết nối của cảm xúc, nhưng bạn cũng cần tỉnh táo và lý trí để giúp tình yêu luôn lành mạnh và rực rỡ sắc màu.', 1, '31.png ', 0),
(32, 'Tâm Lý Học Tính Cách', 2, 109000, 'Nhà Xuất Bản Phụ Nữ', 'Trâu Hoàng Minh', '“Tâm lý học tính cách” lấy “chín kiểu hình tính cách” làm trọng tâm, với nền tảng là những lý luận của tâm lý học tính cách và tâm lý học chiều sâu , giới thiệu đến bạn đọc một cách chi tiết về đặc trưng và phương pháp cải thiện khuyết điểm dành cho chín kiểu hình tính cách của con người. Với ngôn từ dễ hiểu, ví dụ sinh động cùng nội dung chi tiết mang tính xác thực cao, tôi tin rằng cuốn sách này không chỉ giúp bạn đọc nhận thức được kiểu hình tính cách của bản thân, mà quan trọng hơn là giúp các bạn phát huy sở trường, đồng thời khắc phục khiếm khuyết của chính mình.', 0, '32.png', 0),
(33, 'Bí Ẩn Sun Down', 3, 155000, 'Nhà Xuất Bản Thanh Niên', 'Simone ST. James', 'Năm 1982, Viv Delaney - một cô gái 20 tuổi - bị mất tích tại nhà nghỉ Sundown đúng vào lúc trên sóng truyền hình đang đưa tin về những vụ án mạng mà nạn nhân là những cô gái trẻ, những người được tìm thấy trong trạng thái không mảnh vải che thân. Vụ mất tích của Viv chìm vào quên lãng do không có một manh mối gì, cũng như những người trong gia đình cô bày tỏ một sự thờ ơ đến kì lạ và có chút gì đó chấp nhận. Năm 2017, cháu của Viv là Carly, khi ấy cũng là một cô gái 20 tuổi, không chấp nhận sự mất tích của bác mình lại chìm vào quên lãng như vậy, quyết định lên đường đến nhà nghỉ Sundown để giải mã bí mật. Tại đây, cô đã gặp những hiện tượng hết sức kì lạ và từng bước lần theo đó để giải mã bí ẩn này.', 0, '33.png ', 0),
(34, 'Tiệm Cắt Tóc Lúc Nửa Đêm ', 3, 119000, 'Nhà Xuất Bản Thanh Niên', 'Kousuke Sawamura', 'Lạc lối trên một con đường núi xa lạ, hai anh chàng sinh viên đại học Sakura và Takase buộc phải qua đêm tại một nhà ga không có nhân viên điều hành. Vào nửa đêm, khi đi ngang qua những căn nhà bỏ hoang, Takase vô tình nhìn thấy có một tiệm cắt tóc vẫn đang sáng đèn. Bị thôi thúc bởi sự tò mò, Takase lại gần cửa tiệm và kéo cánh cửa ra trước sự ngăn cản của Sakura. Điều gì đang chờ đón họ ở bên trong tiệm cắt tóc kỳ lạ ấy? Tất cả những bí ẩn và sự thật đằng sau nó sẽ được hé lộ trong TIỆM CẮT TÓC LÚC NỬA ĐÊM – Một cuốn sách được độc giả Nhật Bản nhận xét là KHÔNG THỂ ĐOÁN TRƯỚC ĐƯỢC CÁI KẾT!', 0, '34.png ', 0),
(35, 'Bóng Đêm Ám Ảnh', 3, 152000, 'Nhà Xuất Bản Thanh Niên', 'Egan Hughes', 'Một “ngôi nhà thông minh” là mơ ước của Joe. Căn nhà ấy tọa lạc tại vùng quê hẻo lánh, nơi mọi thứ được điều khiển thông qua ứng dụng, từ hệ thống đèn cho đến khóa cửa. Sự hòa trộn hoàn hảo giữa nét quyến rũ cổ kính với công nghệ hiện đại. Còn nơi nào tốt hơn nơi này để giúp Lauren vượt qua những sang chấn trong quá khứ? Lauren muốn Joe được hạnh phúc nên cô không nói với anh rằng mình ghét việc phụ thuộc vào công nghệ.Và rồi những biến cố bắt đầu ập đến…', 0, '35.png ', 0),
(36, 'Về Nhà Trước Trời Tối', 3, 155000, 'Nhà Xuất Bản Lao Động', 'Riley Sager', 'Hai mươi lăm năm trước, Maggie Holt cùng với cha mẹ mình chuyển đến Baneberry Hall – một căn nhà mang phong cách Victoria xưa cũ, tọa lạc trong khu rừng Vermont. Họ đã ở căn nhà đó khoảng 3 tuần trước khi cuốn gói chạy trốn trong đêm khuya. Những trải nghiệm này đã cha của cô là Evan tái hiện lại trong cuốn sách mang tên “Ngôi nhà rùng rợn”. Câu chuyện ấy kể lại những sự kiện ma quái và những cuộc gặp gỡ bất thường với các linh hồn độc ác cư ngụ trong căn nhà. Chính những điều đó, đã khiến cuốn sách trở nên nổi tiếng, trở thành hiện tượng xuất bản toàn cầu.', 0, '36.png ', 0),
(37, 'Và Sao Không Thể Hết Yêu Em?', 4, 88000, 'Nhà Xuất Bản Phụ Nữ', 'Nhiều Tác Giả', 'Nếu “Thương” của Thìa Đầy Thơ đã khơi dậy những xúc cảm trong lòng bạn theo một cách rất riêng: nhẹ nhàng, lắng đọng và đầy tinh tế thì trong “Và sao không thể hết yêu em” (Thương 2), Thìa Đầy Thơ sẽ cùng bạn đi qua những ngông cuồng, xốc nổi của tuổi trẻ đến ngày có được sự trầm ổn và sâu lắng khi đã trưởng thành.', 0, '37.png ', 0),
(38, 'Có Một Nỗi Buồn Vừa Ngang Qua Đây', 4, 88000, 'Nhà Xuất Bản Văn Học', 'Gã', '“Có một nỗi buồn vừa ngang qua đây” là những nỗi niềm như thế, đầy chông chênh được cất gọn trong một góc nhỏ không ồn ào và từ từ chia sẻ chúng cho những kẻ có cùng bức tranh cảm xúc. Một chốn nghỉ ngơi đôi ba phút, trút hết những muộn phiền, tâm tư, rồi khi đã nhẹ lòng thì cất bước rời xa tìm kiếm một chốn yên ấm. Này những kẻ cô độc đang mải miết chạy theo vòng xoáy bất định của dòng đời, hãy nhớ rằng dù có bị vùi dập trong giông bão thì phía trước vẫn là bình yên đang chờ đợi chúng ta. Hy vọng cuốn sách này sẽ là vòng tay ấm ôm lấy bạn trên đoạn đường đơn độc, tiếp thêm niềm tin vào một ngày mai tươi đẹp hơn.', 0, '38.png ', 0),
(39, 'Từ Điển Của Những Nỗi Buồn Không Tên', 4, 129000, 'Nhà Xuất Bản Thế Giới', 'John Koenig', 'Cảm giác thật dễ chịu làm sao khi biết được từ mô tả những xúc cảm đã theo bạn cả đời – những xúc cảm mà bạn không hề hay biết người khác cũng cảm thấy. Việc này thậm chí, lạ thay, còn tiếp thêm cho bạn sức mạnh − để được gợi nhắc rằng bạn không hề đơn độc, bạn cũng chẳng điên khùng, bạn chỉ đơn giản là một con người bình thường, nỗ lực vượt qua hàng núi những tình cảnh kỳ lạ mà thôi. Cảm giác mất mát khi đọc xong một cuốn sách hay, cảm nhận được sức nặng của bìa sau cuốn sách đang khóa lại cuộc đời của những nhân vật mà bạn đã thấu hiểu tường tận.', 0, '39.png ', 0),
(40, 'Những Đứa Trẻ Chưa Lớn', 4, 97000, 'Nhà Xuất Bản Thế Giới', 'Elvis Nguyễn', 'Hãy đến với “những đứa trẻ chưa lớn”, độc giả sẽ như được chạm vào mỗi trang viết là mỗi mảnh ghép trong bức tranh cuộc đời, song bức tranh ấy vẫn cần được cảm nhận và vẽ tiếp... “những đứa trẻ chưa lớn” là tập tản văn với những góc nhìn rất riêng, rất khác mà cũng rất thật của tác giả trẻ Elvis Nguyễn được thể hiện bằng câu chữ, văn phong mới lạ, khác biệt. Nhưng kỳ lạ thay, khi người trẻ viết cho người trẻ, với những cảm nghiệm dễ mang đến sự đồng điệu, thấu hiểu từ tuổi thơ và gia đình, sự sống còn và sự ra đi, tình yêu và lòng người, đam mê và tham vọng, nắm và buông, cô độc và cả trầm cảm… để rồi từ đó, độc giả trẻ tự chiêm nghiệm cách sống, tự ráp nên bức tranh cuộc đời mình.', 0, '40.png ', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD KEY `madonhang` (`madonhang`),
  ADD KEY `masach` (`masach`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`madonhang`),
  ADD KEY `tendangnhap` (`tendangnhap`);

--
-- Indexes for table `loaisach`
--
ALTER TABLE `loaisach`
  ADD PRIMARY KEY (`maloai`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`tendangnhap`);

--
-- Indexes for table `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`masach`),
  ADD KEY `maloai` (`maloai`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`madonhang`) REFERENCES `donhang` (`madonhang`),
  ADD CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`masach`) REFERENCES `sach` (`masach`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`tendangnhap`) REFERENCES `nguoidung` (`tendangnhap`) ON UPDATE CASCADE;

--
-- Constraints for table `sach`
--
ALTER TABLE `sach`
  ADD CONSTRAINT `sach_ibfk_1` FOREIGN KEY (`maloai`) REFERENCES `loaisach` (`maloai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
