USE [master]
GO
/****** Object:  Database [NewsDB]    Script Date: 3/14/2023 1:18:51 AM ******/
CREATE DATABASE [NewsDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NewsDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\NewsDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NewsDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\NewsDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [NewsDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NewsDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NewsDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NewsDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NewsDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NewsDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NewsDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [NewsDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [NewsDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NewsDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NewsDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NewsDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NewsDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NewsDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NewsDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NewsDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NewsDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [NewsDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NewsDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NewsDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NewsDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NewsDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NewsDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NewsDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NewsDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [NewsDB] SET  MULTI_USER 
GO
ALTER DATABASE [NewsDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NewsDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NewsDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NewsDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NewsDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NewsDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [NewsDB] SET QUERY_STORE = OFF
GO
USE [NewsDB]
GO
/****** Object:  Table [dbo].[genre]    Script Date: 3/14/2023 1:18:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[genre](
	[id_genre] [nchar](10) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_genre] PRIMARY KEY CLUSTERED 
(
	[id_genre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[news]    Script Date: 3/14/2023 1:18:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[news](
	[id] [nchar](10) NOT NULL,
	[title] [nvarchar](max) NULL,
	[date] [nvarchar](50) NULL,
	[summary] [nvarchar](max) NULL,
	[contents] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[author] [nvarchar](max) NULL,
	[id_genre] [nchar](10) NOT NULL,
 CONSTRAINT [PK_news] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[genre] ([id_genre], [name]) VALUES (N'9001      ', N'event')
INSERT [dbo].[genre] ([id_genre], [name]) VALUES (N'9002      ', N'education')
INSERT [dbo].[genre] ([id_genre], [name]) VALUES (N'9003      ', N'sports')
INSERT [dbo].[genre] ([id_genre], [name]) VALUES (N'9004      ', N'experience')
GO
INSERT [dbo].[news] ([id], [title], [date], [summary], [contents], [image], [author], [id_genre]) VALUES (N'1         ', N'SV FPT Edu Global "khoe giọng" trong đêm nhạc "It''s my life"', N'09/03/2023', N'Trong đêm nhạc It''s my life do FPT Edu Global tổ chức vào ngày 3/3 vừa qua, hơn 50 SV quốc tế đến từ Pháp, Nhật Bản, Brunei và Nigeria đã mang đến nhiều tiết mục hát và nhảy đặc sắc.', N'Sau ba năm gián đoạn do dịch, sự kiện giao lưu văn hóa năm nay trở lại vào ngày 3/3 dưới hình thức một bữa tiệc âm nhạc. Hơn 50 sinh viên quốc tế đến từ Nhật Bản, Pháp, Nigeria, Brunei đang tham gia các chương trình ngắn hạn của Trung tâm FPT Education Global mang tới những tiết mục đậm chất văn hóa như bài nhảy Doreamon, múa hát của các bạn Brunei, acoustic Nhật Bản. 
Ngày hội giao lưu văn hóa “It’s My Life” đã khép lại trọn vẹn, ý nghĩa và nhiều niềm vui, nhiều kỉ niệm đẹp đối với sinh viên quốc tế và sinh viên Việt Nam tại Đại học FPT cơ sở Đà Nẵng.
Với mục tiêu trở thành điểm đến tin cậy của sinh viên quốc tế, trong ba tháng đầu tiên của năm 2023, FPT Education Global đón gần 200 bạn sinh viên quốc tế tham gia các chương trình ngắn hạn (chương trình thực tập, chương trình tiếng anh, study tour…) tại Đà Nẵng. ', N'https://fpt.edu.vn/resources/article/uploads/thumb/20230309021008238_ScreenShot2023-03-09at2.09.55PM.png', N'Huỳnh Lệ Thục Anh', N'9001      ')
INSERT [dbo].[news] ([id], [title], [date], [summary], [contents], [image], [author], [id_genre]) VALUES (N'2         ', N'Trải nghiệm hạnh phúc của người FPT Edu sau khoá thiền Làng Mai', N'07/03/2023', N'Mỗi CBGV FPT Edu đều có cho mình những trải nghiệm hạnh phúc, hiểu thêm ý nghĩa của tu tập đồng thời mong muốn lan toả những giá trị đó vào công việc, đời sống sau khoá thiền “Thầy cô giáo hạnh phúc – Thế giới hạnh phúc” tại Làng Mai (Thái Lan) vừa qua.', N'50 lãnh đạo và cán bộ quản lý FPT Edu đã tham gia khoá thiền “Thầy cô giáo hạnh phúc – Thế giới hạnh phúc” tại Làng Mai (Thái Lan) trong các ngày từ 27/2 – 3/3 vừa qua. 

Đón đoàn lãnh đạo và cán bộ quản lý FPT Edu, Làng Mai thanh bình với cảnh sắc xinh đẹp và không khí se lạnh dễ chịu, rất thích hợp với hoạt động thiền tập. Trong khoá thiền, người FPT Edu đã thực hành thiền trong các hoạt động như thiền ngồi, thiền hành, pháp thoại, thiền buông thư, pháp đàm. Một số hoạt động thường ngày như ăn cơm, uống trà… cũng được diễn ra trong chánh niệm và sự tĩnh lặng. 

“Ấn tượng đầu tiên của mình khi đến Làng Mai là phong cảnh quá đẹp và yên bình với những con đường đầy hoa, cây ăn quả, tiếng chuông gió leng keng. Mọi hoạt động đều diễn ra trong trật tự và tĩnh lặng, chỉ có tiếng chuông là “hiệu lệnh” vậy mà không hiểu sao mình lại cảm thấy làm việc gì cũng thuận tiện, nhẹ nhàng”, chị Hoàng Ngọc Minh (FSchool Bắc Ninh) chia sẻ trải nghiệm ngày đầu đến với khoá thiền.

“Ngắt kết nối” gần như hoàn toàn với thế giới bên ngoài, tạm gác lại những bộn bề công việc, các lãnh đạo và cán bộ quản lý FPT Edu đã có khoảng thời gian đặc biệt quý báu để cùng chiêm nghiệm những triết lý về thiền, ý nghĩa của tu tập đối với đời sống, sự phát triển thân tâm trí con người, ứng dụng thiền vào công việc và đặc biệt là cùng thiền tìm kiếm ý nghĩa hạnh phúc của mỗi người. 

Với anh Võ Đình Nam (Trưởng ban Đào tạo ĐH FPT campus Đà Nẵng), ăn chánh niệm và thiền buông thư là hai hoạt động mới mẻ, để lại trong anh ấn tượng: “Khi ăn trong chánh niệm, bản thân hoàn toàn tập trung vào việc này, không suy nghĩ gì khác, không nói chuyện. Bởi vậy, dù có cả trăm người ngồi ăn cùng một lúc, không gian vẫn rất yên tĩnh. Còn khi thiền buông thư, mình tập trung vào hơi thở, cảm nhận nó một cách sâu sắc”.

“Thật may mắn khi mình được hát thiền ca, thiền buông thư, nghe pháp đàm, cùng chia sẻ với anh chị em trong FPT Edu về thiền định và cuộc sống, công việc. Khoảng thời gian này vô cùng ý nghĩa và quý báu”, chị Ngọc Minh nói. Từng là một giáo viên trực tiếp đứng lớp, nay là người phụ trách quản lý công tác đào tạo phổ thông liên cấp từ Tiểu học - THPT, chị Minh cho rằng, những thực hành rất nhỏ trong khoá thiền cũng giúp chị có thêm ý tưởng và cách vận dụng để tăng hiệu quả công việc. 

“Sự hiểu sâu về ‘Niệm – Định – Tuệ’ tức là nhận diện vấn đề một cách đúng đắn, kiên định và tập trung để hiểu đủ sâu và rộng bản chất vấn đề là một trong những điều mình tâm đắc, cảm thấy có thể áp dụng vào việc nâng cao hiệu quả làm việc của CBGV và học tập của HS”, chị Ngọc Minh chia sẻ thêm. 

Còn anh Đình Nam thì tin rằng: “Những ý niệm về hạnh phúc được sư thầy, sư cô ở Làng Mai truyền đạt một cách dung dị nhưng sống động. Tuỳ vào công việc cụ thể mà mỗi CBGV FPT Edu có thể vận dụng nhưng mình tin rằng, đi thiền về, anh chị em trong đoàn hẳn ai cũng cảm nhận được sự hạnh phúc và có mong muốn lan toả tinh thần ấy đến đồng nghiệp, học trò của mình”.

Tin tưởng triết lý “Happy educators will change the world” và thiền là một lối sống hướng con người đến cuộc sống cân bằng và hạnh phúc, FPT Edu đã và đang tạo nhiều cơ hội trải nghiệm thiền cho CBGV toàn quốc. Có thể kể đến những khoá thiền tại An Lạc trang, Bản hoa anh đào, thiền Ozen hay khoá “Thầy cô giáo hạnh phúc – Thế giới hạnh phúc” tại Làng Mai (Thái Lan) vừa qua. Bên cạnh việc thiền tập theo nhóm có tổ chức, FPT Edu cũng khuyến khích mỗi CBGV có thể thực hành thiền theo khả năng và điều kiện của cá nhân.
Trải nghiệm thiền hiện được FPT Edu triển khai cho nhóm CBGV level 4, level 5+ với niềm tin rằng khi hiểu rõ ràng và sâu sắc về ý nghĩa của thiền đối với cuộc sống, công việc, nhóm CBGV này sẽ trở thành hạt nhân lan toả tinh thần và lối sống hạnh phúc trong thân tâm trí tới đồng nghiệp, học sinh, sinh viên.

Năm 2023, nhân dịp kỷ niệm 35 năm thành lập, Tập đoàn FPT chọn sứ mệnh “Cùng mưu cầu hạnh phúc”. Sứ mệnh này tương đồng với triết lý “Happy educators will change the world” mà FPT Edu đang theo đuổi, với mục tiêu đào tạo nên những lứa học sinh, sinh viên có năng lực tri thức và đời sống tinh thần hạnh phúc.', N'https://lh6.googleusercontent.com/m67kJJICTHb4tzqnA3J9UafZFSWCjUckcAegUCPcx_MxYti-hRiZVdA0RLirSpirhVZzPSnjD3LKY4gWidaTsXCatpcjatsaH3n-28nbp-zIvYrBKFdN_8f__Ps6vb_0W7i0NKF6oawOBb89PgSzPQ', N'Ngọc Trâm', N'9004      ')
INSERT [dbo].[news] ([id], [title], [date], [summary], [contents], [image], [author], [id_genre]) VALUES (N'3         ', N'Lộ diện quán quân Sing Out Loud 2023', N'06/03/2023', N'Tại Chung kết cuộc thi âm nhạc Sing Out Loud 2023 do Swinburne Việt Nam tổ chức diễn ra vào ngày 5/3 vừa qua, Trịnh Nguyễn Hồng Minh - thí sinh được biết đến là Quán quân cuộc thi Giọng hát Việt Nhí 2015 - đã chinh phục ngôi vị cao nhất và để lại nhiều ấn tượng trong lòng các khán giả.', N'Quy tụ các Quán Quân, Á Quân và dàn ban giám khảo giàu kinh nghiệm
Tối 5/3 tại Nhà hát Quân đội (Hà Nội), Top 9 thí sinh xuất sắc nhất đã cùng nhau tranh tài tại đêm chung kết Sing Out Loud mùa hai. Vượt qua gần 600 thí sinh toàn quốc ở các Vòng Sơ Loại và Vòng Lộ Diện, 9 thí sinh đã cho thấy mình hoàn toàn xứng đáng để có mặt trong đêm thi quyết định.', N'https://swinburne-vn.edu.vn/wp-content/uploads/quan-quan-cuoc-thi-am-nhac-lon-nhat-cho-gen-z-copy.jpg', N'Trang Trần', N'9004      ')
INSERT [dbo].[news] ([id], [title], [date], [summary], [contents], [image], [author], [id_genre]) VALUES (N'4         ', N'Sinh viên Greenwich Việt Nam trải nghiệm phương pháp học tập mới', N'07/03/2023', N'Trong môn học Understanding and Leading Change, sinh viên Greenwich Việt Nam sẽ không làm bài tiểu luận hết môn, mà thay vào đó là thuyết trình các phương án liên quan đến nội dung môn học và bảo vệ cho các phương án đó trước "hội đồng" giảng viên.', N'Chiều ngày 04/03, các bạn sinh viên của Greenwich Việt Nam có buổi thuyết trình tổng kết môn Understanding and Leading Change dưới sự dẫn dắt của cô Nguyễn Thị Hà Minh và thầy Vũ Anh Tài. Để thực hiện bài thuyết trình, các bạn sinh viên đã áp dụng kiến thức được học vào 8 doanh nghiệp trong thực tế, và đưa ra những đề xuất đem lại hướng phát triển hiệu quả nhất cho từng vấn đề của doanh nghiệp. Ngay trong buổi thuyết trình, các nhóm sinh viên thực hiện sẽ lần lượt tham gia bảo vệ đề xuất của mình đồng thời phản biện lẫn nhau để đưa ra các giải pháp tốt nhất cho từng doanh nghiệp. Đây là phương pháp học tập thú vị, giúp các bạn sinh viên rèn luyện được nhiều kĩ năng khác nhau như thuyết trình, phản biện, nghiên cứu,... thay vì chỉ tập trung vào nội dung của môn học. Từ đó, người học sẽ có cái nhìn bao quát, thực tế trước khi bước vào môi trường làm việc thực tế. ', N'https://lh4.googleusercontent.com/x1DR9ZQB7SPbmh-JyvS6tapI87jI14GCwuHTGJtkdamasWYT5zytuAvae8gBIcslVDAkebvQaV-HeN59iKwrlFF0B2rJ0u-_8oeHH9T2nntcaTkvtp4vz_Jo8_t6mtga1PPRi-Dz7KseGp3TSonVpW4', N'Ngọc Anh', N'9002      ')
INSERT [dbo].[news] ([id], [title], [date], [summary], [contents], [image], [author], [id_genre]) VALUES (N'5         ', N'FSchool Đà Nẵng giành 3 tấm vé dự giải đấu Robotics lớn nhất thế giới', N' 27/02/2023', N'Tham dự Giải vô địch VEX IQ Robotics toàn quốc 2023, Trường TH&THCS FPT Đà Nẵng đã có 4 đội thi giành giải thưởng danh giá, trong đó 3 đội sẽ tham dự Giải vô địch VEX IQ Robotics thế giới tại Hoa Kì vào tháng 5/2023.', N'Ngày 26/2, tại Hà Nội, Tổ chức STEAM for Vietnam phối hợp với Trung tâm Hoa Kì (trực thuộc Đại sứ quán và Lãnh sự quán Hoa Kì tại Việt Nam) và Đại học Bách khoa Hà Nội tổ chức Lễ trao thưởng Giải vô địch VEX IQ Robotics toàn quốc 2023.
 
Giải vô địch VEX IQ Robotics toàn quốc năm 2023 là giải đấu Robotics quy mô lớn, giúp học sinh cả nước học và thực hành các kiến thức liên quan tới khoa học, công nghệ, kĩ thuật và toán học. Bên cạnh đó, thí sinh tham gia còn phát triển các kĩ năng mềm cần thiết cho tương lai như kĩ năng tư duy máy tính, giải quyết vấn đề và kĩ năng làm việc nhóm.', N'https://lh5.googleusercontent.com/mzvnpUpE71AuHCMhvMozSPLYBntOQETUKukJ_x7Fg56Ulcs5rNt70By_2INtZtlL2Oma4uWuzWE-ZiM7pnrHmZQ81PHy2qyChlydtiP823dNyEBVBh7hr0dmjf7NXHPnUqadTB2n117n1MsiI63hw6g', N'Nguyễn Thị Linh', N'9003      ')
INSERT [dbo].[news] ([id], [title], [date], [summary], [contents], [image], [author], [id_genre]) VALUES (N'6         ', N'Đại học FPT bắt đầu nhận đăng ký chương trình "Một ngàn học bổng FPTU 2023"', N'15/02/2023', N'Ngày 15/2, Đại học FPT mở đăng ký chương trình "Một ngàn học bổng FPTU 2023", trao 1.000 học bổng cho học sinh trung học phổ thông đạt thành tích cao trong học tập, văn hóa thể thao, hoạt động cộng đồng hoặc lĩnh vực khác.', N'Chương trình "Một ngàn học bổng FPTU 2023 - FPTU Scholarship 1.000" sẽ trao 1.000 học bổng toàn phần hệ đại học chính quy năm 2023 của Đại học FPT, quy đổi tương đương bằng 1.500 suất học bổng gồm học bổng toàn phần và bán phần 50-70% cho các học sinh trung học phổ thông (THPT) toàn quốc.

Học bổng này sẽ được Đại học FPT trao cho các học sinh THPT đủ điều kiện vào Đại học FPT năm 2023 và có thành tích cao trong các lĩnh vực gồm học tập, văn hóa thể thao, hoạt động cộng đồng hoặc các lĩnh vực khác.', N'https://icdn.dantri.com.vn/thumb_w/680/2023/02/14/dantri-edited-v11docx-1676390698756.png', N'Ngô Ngọc Trâm', N'9002      ')
GO
ALTER TABLE [dbo].[news]  WITH CHECK ADD  CONSTRAINT [FK_news_genre] FOREIGN KEY([id_genre])
REFERENCES [dbo].[genre] ([id_genre])
GO
ALTER TABLE [dbo].[news] CHECK CONSTRAINT [FK_news_genre]
GO
USE [master]
GO
ALTER DATABASE [NewsDB] SET  READ_WRITE 
GO
