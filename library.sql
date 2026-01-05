-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 
-- 伺服器版本： 8.0.17
-- PHP 版本： 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `library`
--

-- --------------------------------------------------------

--
-- 資料表結構 `admin`
--

CREATE TABLE `admin` (
  `id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `admin`
--

INSERT INTO `admin` (`id`, `password`) VALUES
('ivan', '0305');

-- --------------------------------------------------------

--
-- 資料表結構 `books`
--

CREATE TABLE `books` (
  `BookID` int(11) NOT NULL,
  `Title` char(50) NOT NULL,
  `Author` char(20) NOT NULL,
  `PubID` int(11) NOT NULL,
  `Status` enum('Available','Borrowed') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `books`
--

INSERT INTO `books` (`BookID`, `Title`, `Author`, `PubID`, `Status`) VALUES
(1, '如何閱讀一本書( How to read a book)', '莫提默．艾德勒', 1, 'Borrowed'),
(2, '從閱讀到寫作：現代名家散文十五講', '吳宏一', 2, 'Borrowed'),
(3, '文學盛筵：談閱讀，教寫作', '廖玉蕙', 3, 'Available'),
(4, '小說的藝術(L’Art du Roman)', '米蘭．昆德拉', 4, 'Available'),
(5, '卜洛克的小說學堂(Telling Lies for Fun & Profit)', '勞倫斯．卜洛克', 5, 'Borrowed'),
(6, '關於跑步，我說的其實是……', '村上春樹', 6, 'Available'),
(7, '作家之路-從英雄的旅程學習說一個好故事', '克里斯多夫．佛格勒(Christophe', 7, 'Available'),
(8, '現代詩創作演練', '蕭蕭', 8, 'Borrowed'),
(9, '一首詩的誕生', '白靈', 9, 'Borrowed'),
(10, '實用中文寫作學(一~三編)', '張高評主編', 10, 'Available'),
(11, '詩經今註今譯(修訂二版)', '馬持盈/註譯；王雲五/主編', 11, 'Borrowed'),
(12, '楚辭', '(戰國末)屈原等', 12, 'Borrowed'),
(13, '莊子(內篇.外篇.雜篇)', '(戰國)莊周;張耿光/注譯', 5, 'Available'),
(14, '孫子兵法', '(春秋戰國)孫子', 5, 'Available'),
(15, '山海經校注', '袁珂校注', 6, 'Available'),
(16, '史記今註', '(西漢)司馬遷;馬持盈註', 6, 'Borrowed'),
(17, '新譯世說新語', '(南朝宋)劉義慶', 7, 'Available'),
(18, '新譯六祖壇經', '李中華/注譯', 10, 'Available'),
(19, '唐宋詩舉要', '(清)高步瀛', 13, 'Available'),
(20, '宋詞三百首', '朱祖謀/注譯', 14, 'Available'),
(21, '太平廣記', '李昉編', 15, 'Available'),
(22, '話說說話 : 三言二拍名篇賞析', '張清榮/注譯', 16, 'Available'),
(23, '三國演義校注', '(元末明初)羅貫中', 16, 'Borrowed'),
(24, '西遊記', '(明)吳承恩', 16, 'Available'),
(25, '水滸傳', '(元末明初)施耐庵', 17, 'Available'),
(26, '牡丹亭', '(明)湯顯祖;邵海青', 23, 'Available'),
(27, '金瓶梅', '(明)蘭陵笑笑生', 21, 'Available'),
(28, '紅樓夢', '(清)曹雪芹;饒彬/注譯', 25, 'Available'),
(29, '聊齋誌異', '(清)蒲松齡', 23, 'Available'),
(30, '裨海紀遊新注', '(清)郁永河著，陸傳傑/注譯', 51, 'Available'),
(31, '魯迅精品集1：吶喊', '魯迅', 14, 'Available'),
(32, '賴和全集小說卷(電子書)', '賴和', 8, 'Available'),
(33, '沈從文小說選', '沈從文', 23, 'Available'),
(34, '楊逵全集小說卷', '楊逵', 24, 'Available'),
(35, '張文環集', '張文環', 25, 'Available'),
(36, '呂赫若小說全集', '呂赫若', 26, 'Available'),
(37, '鍾理和集', '鍾理和', 27, 'Available'),
(38, '林海音作品集：城南舊事', '林海音', 28, 'Available'),
(39, '鹿橋全集：人子', '鹿橋', 29, 'Available'),
(40, '張愛玲典藏全集：紅玫瑰與白玫瑰', '張愛玲', 29, 'Available'),
(41, '白先勇作品集：台北人', '白先勇', 29, 'Available'),
(42, '黃春明作品集：莎喲娜啦．再見', '黃春明', 30, 'Available'),
(43, '陳映真作品集：鈴鐺花', '陳映真', 30, 'Available'),
(44, '七等生集', '七等生', 31, 'Available'),
(45, '家變', '王文興', 31, 'Available'),
(46, '嫁妝一牛車', '王禎和', 32, 'Available'),
(47, '殺夫', '李昂', 33, 'Available'),
(48, '四喜憂國', '張大春', 34, 'Available'),
(49, '古都', '朱天心', 35, 'Available'),
(50, '最後的獵人', '拓拔斯．塔瑪匹瑪', 36, 'Available'),
(51, '棋王、樹王、孩子王', '阿城', 37, 'Available'),
(52, '紅高粱家族', '莫言', 38, 'Available'),
(53, '活著', '余華', 34, 'Available'),
(54, '妻妾成群', '蘇童', 35, 'Available'),
(55, '巨流河', '齊邦媛', 38, 'Available'),
(56, '碎琉璃', '王鼎鈞', 39, 'Available'),
(57, '哀悼乳房', '(香港)西西(張彥)', 40, 'Available'),
(58, '山居筆記', '余秋雨', 41, 'Available'),
(59, '躊躇之歌', '陳列', 44, 'Available'),
(60, '阿盛精選集', '阿盛', 48, 'Available'),
(61, '大江大海一九四九', '龍應台', 42, 'Available'),
(62, '理想的下午', '舒國治', 43, 'Available'),
(63, '劉克襄精選集', '劉克襄', 43, 'Available'),
(64, '討海人', '廖鴻基', 48, 'Available'),
(65, '冷海情深', '夏曼．藍波安', 49, 'Available'),
(66, '女兒紅', '簡媜', 50, 'Available'),
(67, '膚淺', '張小虹', 50, 'Available'),
(68, '為了詩', '楊照', 6, 'Available'),
(69, '紅嘴巴的VuVu', '利格拉樂．阿(女烏)(Liglave A', 3, 'Available'),
(70, '鍾怡雯精選集', '(馬)鍾怡雯', 7, 'Available'),
(71, '浮光', '吳明益', 5, 'Available'),
(72, '轉山：邊境流浪者', '謝旺霖', 1, 'Available'),
(73, '商禽詩全集', '商禽', 9, 'Available'),
(74, '?弦詩集', '?弦', 32, 'Available'),
(75, '鄭愁予詩集', '鄭愁予', 45, 'Available'),
(76, '蘇紹連集', '蘇紹連', 8, 'Available'),
(77, '向陽集', '向陽', 9, 'Available'),
(78, '福爾摩沙紀事：馬偕台灣回憶錄(From far Formosa)', '(加)馬偕', 7, 'Available'),
(79, '江湖在哪裡？ ──台灣農業觀察', '吳音寧', 7, 'Available'),
(80, '我們：移動與勞動的生命記事', '顧玉玲', 7, 'Available'),
(81, '莎士比亞全集：哈姆雷特(Hamlet）', '(英)威廉．莎士比亞', 7, 'Available'),
(82, '一九八四(Nineteen Eighty-Four)', '(英)喬治．歐威爾', 6, 'Available'),
(83, '蒼蠅王 (Lord of the Flies)', '(英)威廉．高汀', 6, 'Available'),
(84, '麥田捕手（The catcher in the rye）', '(美)沙林傑', 23, 'Available'),
(85, '最藍的眼睛（The Bluest Eye）', '(美)童妮．摩里森', 21, 'Available'),
(86, '百年孤寂（One Hundred Years of Solitude）　', '(哥)加夫列爾·賈西亞·馬奎斯', 1, 'Available'),
(87, '革命前夕的摩托車之旅（ The Motorcycle Diaries）', '(阿根廷)切．格瓦拉', 21, 'Available'),
(88, '宇宙、諸神、人：為你說的希臘神話( L’Univers, les dieux, les hommes', '(法)凡爾農', 32, 'Available'),
(89, '神曲系列１～３（Divina Commdia）', '(意)但丁．阿利格耶里', 25, 'Available'),
(90, '浮士德（Faust）', '(德)歌德', 1, 'Available'),
(91, '莫泊桑短篇全集', '(法)基．德．莫泊桑', 20, 'Available'),
(92, '異鄉人（The Stranger）', '(法)阿爾貝·卡繆', 25, 'Available'),
(93, '罪與罰（Crime and Punishment）', '(俄)杜斯妥也夫斯基', 35, 'Available'),
(94, '契訶夫小說選', '(俄)契訶夫', 31, 'Available'),
(95, '卡夫卡變形記', '(捷克)法蘭茲．卡夫卡', 32, 'Available'),
(96, '泰戈爾全集', '(印)泰戈爾', 36, 'Available'),
(97, '我的名字叫紅(My Name Is Red)', '(土)奧罕．帕慕克', 46, 'Available'),
(98, '羅生門', '(日)芥川龍之介', 46, 'Available'),
(99, '雪國', '(日)川端康成', 41, 'Available'),
(100, '深河', '(日)遠藤周作', 42, 'Available'),
(101, '愛的飢渴', '(日)三島由紀夫', 45, 'Available'),
(102, '人間失格', '(日)太宰治', 46, 'Available'),
(103, '路', '(日)吉田修一', 48, 'Available'),
(104, '藍色大門', '易智言', 7, 'Available'),
(105, '車諾比的悲鳴', '(俄)斯維拉娜．亞歷塞維奇', 18, 'Available'),
(106, '月亮與六便士', '(英)威廉．薩默塞特．毛姆', 23, 'Available'),
(107, '敲昏鯨魚', '包冠涵', 49, 'Available'),
(108, '發條橘子', '(英)安東尼·伯吉斯', 50, 'Available'),
(109, '愛上經濟', '(美)羅素．羅伯茲', 21, 'Available');

-- --------------------------------------------------------

--
-- 資料表結構 `publishers`
--

CREATE TABLE `publishers` (
  `PubID` int(11) NOT NULL,
  `PubName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tel` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `publishers`
--

INSERT INTO `publishers` (`PubID`, `PubName`, `tel`) VALUES
(1, '快樂', '07-8556325'),
(2, '遠流', '02-25710297'),
(3, '天下雜誌', '02-26620332'),
(4, '皇冠', '02-53686921'),
(5, '臉譜', '02-85636956'),
(6, '時報', '02-8795486'),
(7, '開啟文化', '02-56312589'),
(8, '爾雅', '02-87856587'),
(9, '九歌', '02-25633366'),
(10, '里仁', '02-77812245'),
(11, '台灣商務', '02-12225333'),
(12, '臺灣古籍', '02-12556355'),
(13, '台灣書房', '02-88556699'),
(14, '尼羅河', '02-75368965'),
(15, '三民', '02-25875963'),
(16, '民主', '02-88775566'),
(17, '古新', '02-63112256'),
(18, '幼獅', '02-55662211'),
(19, '桂冠', '02-74586214'),
(20, '微風草堂文化', '02-78541258'),
(21, '大地地理', '02-23645879'),
(22, '風雲時代', '02-41258963'),
(23, '前衛', '02-88659666'),
(24, '洪範', '02-45698523'),
(25, '文化保存籌備處', '02-12445688'),
(26, '聯經', '02-33225566'),
(27, '遠景', '02-65652211'),
(28, '長宥', '02-88556565'),
(29, '聯合文學', '02-85856569'),
(30, '麥田', '02-15233355'),
(31, '晨星', '02-88695568'),
(32, '海風', '02-77589633'),
(33, '天下遠見', '02-77548869'),
(34, '印刻', '02-12578463'),
(35, '聯合文學', '02-98652147'),
(36, '新經典圖文傳播', '02-12553633'),
(37, '國立臺灣文學館', '02-77325231'),
(38, '世界書局', '02-98665588'),
(39, '志文', '02-32556325'),
(40, '大塊', '02-12552211'),
(41, '貓頭鷹', '02-32556533'),
(42, '人本自然文化', '02-66332566'),
(43, '商周', '02-3322255'),
(44, '星光', '02-85612579'),
(45, '江南', '02-31574698'),
(46, '立緒', '02-31589647'),
(47, '木馬文化', '02-31796589'),
(48, '新雨', '02-36985478'),
(49, '馥林文化', '02-66993155'),
(50, '好讀', '02-77885698'),
(51, '經濟新潮社', '02-98743256');

-- --------------------------------------------------------

--
-- 資料表結構 `records`
--

CREATE TABLE `records` (
  `UserID` int(20) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `BookID` int(11) NOT NULL,
  `Title` char(50) NOT NULL,
  `BorrowedDate` date NOT NULL,
  `ReturnDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `records`
--

INSERT INTO `records` (`UserID`, `UserName`, `BookID`, `Title`, `BorrowedDate`, `ReturnDate`) VALUES
(1001, '小明', 1, '如何閱讀一本書( How to read a book)', '2017-11-14', '2017-11-21'),
(1002, '張彥宏', 11, '詩經今註今譯(修訂二版)', '2017-10-26', '2017-11-03'),
(1007, '李真樺', 2, '從閱讀到寫作：現代名家散文十五講', '2024-01-03', '2024-01-10'),
(1008, '陳大志', 9, '一首詩的誕生', '2024-01-07', '2024-01-14'),
(1009, '劉飛翔', 23, '三國演義校注', '2024-01-01', '2024-01-08'),
(1010, '郭珊姍', 12, '楚辭', '2024-01-02', '2024-01-09'),
(1011, '許真人', 5, '卜洛克的小說學堂(Telling Lies for Fun & Profit)', '2023-11-22', '2023-11-29'),
(1012, '孫美麗', 16, '史記今註', '2017-10-28', '2017-11-05');

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `UserID` int(20) NOT NULL,
  `UserName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Gender` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `PhoneNumber` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`UserID`, `UserName`, `Gender`, `Email`, `PhoneNumber`) VALUES
(1001, '小明', '男', 'sio@yahoo.com', '0912639526'),
(1002, '張彥宏', '男', 'zyhong@gmail.com', '07-7310635'),
(1003, '林郁評', '男', 'lingyping@gmail.com', '07-7310636'),
(1004, '劉姵君', '女', 'liu@gmail.com', '07-7310637'),
(1005, '陸美女', '女', 'lumn@yahoo.com', '07-7310638'),
(1006, '郭大瑋', '男', 'guodawei@gmail.com', '07-7310639'),
(1007, '李真樺', '男', 'lizhenhua@gmail.com', '07-7310640'),
(1008, '陳大志', '男', 'pandora@gmail.com', '07-7310641'),
(1009, '劉飛翔', '男', 'flying@gmail.com', '07-7310642'),
(1010, '郭珊姍', '女', 'threethree@gmail.com', '07-7310643'),
(1011, '許真人', '男', 'trueman@gmail.com', '07-7310644'),
(1012, '孫美麗', '女', 'beautiful@yahoo.com', '07-7310645'),
(1013, '鄭明明', '女', 'guomm@yahoo.com', '07-7310646'),
(1014, '林惠容', '女', 'huirong@gmail.com', '07-7310647'),
(1015, '林秀氣', '女', 'lsq@gmail.com', '07-7310648'),
(1016, '陳立人', '男', 'chenliren@yahoo.com', '07-7310649'),
(1017, '張婉瑜', '女', 'zhangwanyu@gmail.com', '07-7310650'),
(1018, '郭鴻偉', '女', 'guohongwei@yahoo.com', '07-7310651'),
(1019, '林克強', '男', 'keqiang@gmail.com', '07-7310652'),
(1021, '小米', '女', 'iiii@gmail.com', '25698965');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`BookID`),
  ADD UNIQUE KEY `Title` (`Title`),
  ADD KEY `PubID` (`PubID`);

--
-- 資料表索引 `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`PubID`);

--
-- 資料表索引 `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`UserID`,`BookID`),
  ADD UNIQUE KEY `UserName` (`UserName`),
  ADD UNIQUE KEY `Title` (`Title`),
  ADD UNIQUE KEY `UserName_2` (`UserName`),
  ADD KEY `BookID` (`BookID`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `UserName` (`UserName`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `books`
--
ALTER TABLE `books`
  MODIFY `BookID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `publishers`
--
ALTER TABLE `publishers`
  MODIFY `PubID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1022;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `records`
--
ALTER TABLE `records`
  ADD CONSTRAINT `records_ibfk_1` FOREIGN KEY (`BookID`) REFERENCES `books` (`BookID`),
  ADD CONSTRAINT `records_ibfk_2` FOREIGN KEY (`Title`) REFERENCES `books` (`Title`),
  ADD CONSTRAINT `records_ibfk_3` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  ADD CONSTRAINT `records_ibfk_4` FOREIGN KEY (`UserName`) REFERENCES `users` (`UserName`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
