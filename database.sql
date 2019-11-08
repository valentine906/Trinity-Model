CREATE DATABASE IF NOT EXISTS `school_admin` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `school_admin`;

-- --------------------------------------------------------

--
-- Table structure for table `admission_info`
--

CREATE TABLE `admission_info` (
  `id` int(100) NOT NULL,
  `school_id` varchar(100) NOT NULL,
  `admission_requirements` longtext NOT NULL,
  `examination_requirements` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admission_info`
--

INSERT INTO `admission_info` (`id`, `school_id`, `admission_requirements`, `examination_requirements`) VALUES
(1, 'CHRIST_ONITSHA', '<h5>1. Junior Secondary school one (JSS1) prospective candidates must pass C.K.C entrance examination. </h5><p>\r\n</p><h5>2. Prospective senior \r\nsecondary school one (SSS1) student must possess a minimum of Junior \r\nSecondary School certificate (JSSC) or its equivalent as well as pass \r\nC.K.C entrance examination. </h5>\r\n\r\n\r\n<h5>3. Other requirements: \r\nphotocopy of birth certificate, four passport sized photograph, \r\napplication letter, school file, testimonial of last school attended, \r\nresults of last school attended (original and photocopies). </h5>\r\n\r\n<br><p></p><p><br></p>', '<h5>1. Come to the school with your details<br></h5>'),
(2, 'CHRIST_ONITSHA', '<h5>1. Junior Secondary school one (JSS1) prospective candidates must pass C.K.C entrance examination. </h5><p>\r\n</p><h5>2. Prospective senior \r\nsecondary school one (SSS1) student must possess a minimum of Junior \r\nSecondary School certificate (JSSC) or its equivalent as well as pass \r\nC.K.C entrance examination. </h5>\r\n\r\n\r\n<h5>3. Other requirements: \r\nphotocopy of birth certificate, four passport sized photograph, \r\napplication letter, school file, testimonial of last school attended, \r\nresults of last school attended (original and photocopies). </h5>\r\n\r\n<br><p></p><p><br></p>', '<h5>1. Come to the school with your details<br></h5>'),
(3, 'DMGS', '<h5>1. Junior Secondary school one (JSS1) prospective candidates must pass C.K.C entrance examination. </h5><p>\r\n</p><h5>2. Prospective senior \r\nsecondary school one (SSS1) student must possess a minimum of Junior \r\nSecondary School certificate (JSSC) or its equivalent as well as pass \r\nC.K.C entrance examination. </h5>\r\n\r\n\r\n<h5>3. Other requirements: \r\nphotocopy of birth certificate, four passport sized photograph, \r\napplication letter, school file, testimonial of last school attended, \r\nresults of last school attended (original and photocopies). </h5>\r\n\r\n<br><p></p><p><br></p>', '<h5>1. Come to the school with your details<br></h5>');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(100) NOT NULL,
  `applicant_image` varchar(255) NOT NULL,
  `card_pin` varchar(255) NOT NULL,
  `card_serial` varchar(255) NOT NULL,
  `admission_status` varchar(255) NOT NULL,
  `form_year` int(100) NOT NULL,
  `application_id` varchar(255) NOT NULL,
  `school_id` varchar(255) NOT NULL,
  `exam_score` int(255) NOT NULL,
  `exam_number` varchar(255) NOT NULL,
  `applicant_surname` varchar(255) NOT NULL,
  `applicant_firstname` varchar(255) NOT NULL,
  `applicant_othernames` varchar(255) NOT NULL,
  `applicant_dob` varchar(255) NOT NULL,
  `applicant_pob` varchar(255) NOT NULL,
  `applicant_phone` varchar(100) NOT NULL,
  `applicant_email` varchar(255) NOT NULL,
  `applicant_nationality` varchar(100) NOT NULL,
  `applicant_state` varchar(100) NOT NULL,
  `applicant_lga` varchar(100) NOT NULL,
  `applicant_address` varchar(255) NOT NULL,
  `applicant_primaryschool` varchar(255) NOT NULL,
  `applicant_class` varchar(100) NOT NULL,
  `applicant_lastschool` varchar(255) NOT NULL,
  `applicant_profession` varchar(255) NOT NULL,
  `applicant_parentname` varchar(255) NOT NULL,
  `applicant_parentaddress` varchar(255) NOT NULL,
  `applicant_parentphone` varchar(100) NOT NULL,
  `applicant_parentemail` varchar(255) NOT NULL,
  `applicant_medical` varchar(100) NOT NULL,
  `applicant_medicalaid` varchar(255) NOT NULL,
  `applicant_allergy` varchar(100) NOT NULL,
  `applicant_allergies` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `applicant_image`, `card_pin`, `card_serial`, `admission_status`, `form_year`, `application_id`, `school_id`, `exam_score`, `exam_number`, `applicant_surname`, `applicant_firstname`, `applicant_othernames`, `applicant_dob`, `applicant_pob`, `applicant_phone`, `applicant_email`, `applicant_nationality`, `applicant_state`, `applicant_lga`, `applicant_address`, `applicant_primaryschool`, `applicant_class`, `applicant_lastschool`, `applicant_profession`, `applicant_parentname`, `applicant_parentaddress`, `applicant_parentphone`, `applicant_parentemail`, `applicant_medical`, `applicant_medicalaid`, `applicant_allergy`, `applicant_allergies`) VALUES
(7, '', '9187550918240643', 'mfM2YDAB66uQKk', 'Admitted', 2019, '0666975194B979D', 'CHRIST_ONITSHA', 40, 'CHRIST_ONITSHA/2019/61049', 'Donatus', 'Wisdom', 'Osinachi', '2017-02-01', 'onitsha', '08166342301', 'skyworker607@gmail.com', 'Nigerian', 'Abia State', 'Aba South', '60b old market road', 'Maranatha', 'Primary 2', 'modebe secondary school', 'Programmer', 'Osinachi', '60b old market', '08166342301', 'osinachisblog@gmail.com', 'No', '', 'No', ''),
(15, '', '9187550918240643', 'GLUTLN47SANU4FM', 'Not Admitted', 2019, '028BC2ADA185EF8', 'DMGS', 0, 'DMGS/2019/72211', 'Donatus', 'Wisdom', 'Osinachi', '2017-02-06', 'onitsha', '08166342301', 'skyworker607@gmail.com', 'Nigerian', 'Adamawa State', 'Ganye', '60b old market road', 'Maranatha', 'SSS 3', 'modebe secondary school', 'Programmer', 'Osinachi', '60b old market', '08166342301', 'osinachisblog@gmail.com', 'No', '', 'No', ''),
(17, 'students/DMGS-689581-1-studyshowspr.jpg', '66246596704', '', 'Not Admitted', 2019, '966B795BC7F3CCB', 'DMGS', 0, 'DMGS/2019/17658', 'Donatus', 'Wisdom', 'Osinachi', '2016-02-07', 'onitsha', '08166342307', 'skyworker607@gmail.com', 'Nigerian', 'Adamawa State', 'Ganye', '60b old market road', 'Maranatha', 'JSS 3', 'modebe secondary school', 'Programmer', 'Osinachi', '60b old market', '08166342301', 'osinachisblog@gmail.com', 'No', '', 'No', ''),
(18, 'students/DMGS-458306-250x3001.jpg', '47111033367', '', 'Not Admitted', 2019, 'E8257CAE02495B3', 'DMGS', 0, 'DMGS/2019/95740', 'Donatus', 'Wisdom', 'Osinachi', '2018-04-18', 'onitsha', '08166342301', 'skyworker607@gmail.com', 'Nigerian', 'Adamawa State', 'Ganye', '60b old market road', 'Maranatha', 'JSS 2', 'modebe secondary school', 'Programmer', 'Osinachi', '60b old market', '08166342307', 'osinachisblog@gmail.com', 'No', '', 'No', '');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `school_id` varchar(255) NOT NULL,
  `school_name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `school_id`, `school_name`, `author`, `time`, `date`) VALUES
(1, 'Some Good title of our new post', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at velit \r\nin neque efficitur vehicula. Pellentesque id mauris vestibulum, ultrices\r\n eros ac, hendrerit ligula. Ut magna felis, tincidunt eget finibus a, \r\nfinibus at purus. Nulla viverra interdum est, quis interdum nisi ornare \r\neu. Cras fringilla, libero in pulvinar gravida, velit dolor tincidunt \r\njusto, at sodales dui ligula vitae arcu.\r\n\r\n<br></p>', 'KINGSOLOMON', 'King Solomon International School', 'King Solomon', '03:05:45:pm', '2018/09/26'),
(2, 'Build a school in Africa', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore impedit\r\n quae repellendus provident dolor iure poss imusven am aliquam. Officiis\r\n totam ea laborum deser unt vonsess.  iure poss imusven am aliquam&nbsp;</p><p>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore impedit\r\n quae repellendus provident dolor iure poss imusven am aliquam. Officiis\r\n totam ea laborum deser unt vonsess.  iure poss imusven am aliquam&nbsp;</p><p>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore impedit\r\n quae repellendus provident dolor iure poss imusven am aliquam. Officiis\r\n totam ea laborum deser unt vonsess.  iure poss imusven am aliquam\r\n\r\n<br></p>', 'CHRIST_ONITSHA', 'Christ The King College Onitsha', 'King Solomon', '08:33:08:am', '2019/03/11'),
(3, 'MONTLY VISITING DAY', '<p>\r\n</p><p>The translated website appears (see Figure 2). You can browse the \r\nentire website in that language by clicking links on the site â€” as long \r\nas you stay within the Google Translate user interface. The Translate \r\ntoolbar at the top enables you to do a couple of other things:</p>\r\n<ul>\r\n<li>\r\n<p>From the To drop-down menu, you can change the translation language on the fly.</p>\r\n</li>\r\n<li>\r\n<p>Next to View, you can toggle back and forth between the translated website and the site in its original language.</p>\r\n</li>\r\n</ul>\r\n<p>You may wonder why some words and phrases are \r\nnot translated. Google Translate translates only the actual text on a \r\npage. Any text that appears in an image is not translated. Thatâ€™s why, \r\nin Figure 2, things like the For Dummies logo and various button text \r\narenâ€™t translated; those are images.</p>\r\n\r\n<br><p></p>', 'SUSU_COLLEGE', 'SUSU COLLEGE', 'susu', '09:40:12:am', '2019/09/23');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(100) NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `banner_description` varchar(255) NOT NULL,
  `school_id` varchar(255) NOT NULL,
  `school_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `banner_image`, `banner_description`, `school_id`, `school_name`) VALUES
(1, 'banner/ROYAL_AMBASSADORS-708330-royal-banner2.jpg', 'Royal Ambassadors  Foundation Schools', 'ROYAL_AMBASSADORS', 'Royal Ambassador Foundation Schools');

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `id` int(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `school_id` varchar(255) NOT NULL,
  `school_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`id`, `title`, `date`, `time`, `description`, `school_id`, `school_name`) VALUES
(1, 'Build a school in Africa', '2018-09-05', '7:30pm', 'Kids vocabulary compilation - Words Theme collectionï½œEnglish educational video for kids', 'KINGSOLOMON', 'King Solomon International School'),
(2, 'Become A Distributor Today', '2019-03-05', '7:30pm', 'Instructions On How To Use', 'CHRIST_ONITSHA', 'Christ The King College Onitsha'),
(3, 'BASIC EXAMPLES', '2019-09-11', '3:00pm', 'SUSU COLLEGE', 'SUSU_COLLEGE', 'SUSU COLLEGE');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `school_id` varchar(255) NOT NULL,
  `school_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`, `description`, `school_id`, `school_name`) VALUES
(1, 'gallery/KINGSOLOMON-133893-AP_895544725620PRIMARY.jpg', 'Kids vocabulary compilation - Words Theme collectionï½œEnglish educational video for kids', 'KINGSOLOMON', 'King Solomon International School'),
(2, 'gallery/CHRIST_ONITSHA-388094-4360248_4056881fbimg1470226005428jpeg11fcc509cfd911faabe8ec04f2ac2c10_jpegbb2821a53e3e2ec61cec53baf14cc982.jpg', 'Instructions On How To Use', 'CHRIST_ONITSHA', 'Christ The King College Onitsha'),
(3, 'gallery/CHRIST_ONITSHA-87004-IMG-20171216-WA0002.jpg', 'Instructions On How To Use', 'CHRIST_ONITSHA', 'Christ The King College Onitsha'),
(4, 'gallery/CHRIST_ONITSHA-520591-Oseloka-H.-Obaze-attends-CKC-2017-Graduation-and-Send-Off-Event-6-1024x765.jpg', 'Instructions On How To Use', 'CHRIST_ONITSHA', 'Christ The King College Onitsha'),
(5, 'gallery/SUSU_COLLEGE-951861-3D_Africa_hero.png', 'SUSU COLLEGE', 'SUSU_COLLEGE', 'SUSU COLLEGE');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_quantity` int(11) NOT NULL,
  `item_price` int(11) NOT NULL,
  `item_id` varchar(255) NOT NULL,
  `school_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `locals`
--

CREATE TABLE `locals` (
  `id` int(11) NOT NULL,
  `state_id` varchar(100) NOT NULL,
  `local_name` varchar(100) NOT NULL,
  `local_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locals`
--

INSERT INTO `locals` (`id`, `state_id`, `local_name`, `local_id`) VALUES
(1, 'ABIA', 'Aba South', 'ABA_SOUTH'),
(2, 'ABIA', 'Arochukwu', 'AROCHUWKU'),
(3, 'ABIA', 'Bende', 'BENDE'),
(4, 'ABIA', 'Ikwuano', 'IKWUANO'),
(5, 'ABIA', 'Isiala Ngwa North', 'ISIALA_NGWA_NORTH'),
(6, 'ABIA', 'Isiala Ngwa South', 'ISIALA_NGWA_SOUTH'),
(7, 'ABIA', 'Isuikwuato', 'ISIUKWUATO'),
(8, 'ABIA', 'Obi Ngwa', 'OBI_NGWA'),
(9, 'ABIA', 'Ohafia', 'OHAFIA'),
(10, 'ABIA', 'Osisioma', 'OSISIOMA'),
(11, 'ABIA', 'Ugwunagbo', 'UGWUNAGBO'),
(12, 'ABIA', 'Ukwa East', 'UKWA_EAST'),
(13, 'ABIA', 'Ukwa West', 'UKWA_WEST'),
(14, 'ABIA', 'Umuahia North', 'UMUAHIA_NORTH'),
(15, 'ABIA', 'Umuahia South', 'UMUAHIA_SOUTH'),
(16, 'ABIA', 'Umunneochi', 'UMUNNEOCHI'),
(17, 'ADAMAWA', 'Demsa', 'DEMSA'),
(18, 'ADAMAWA', 'Fufore', 'FUFORE'),
(19, 'ADAMAWA', 'Ganye', 'GANYE'),
(20, 'ADAMAWA', 'Guyuk', 'GUYUK'),
(21, 'ADAMAWA', 'Gombi', 'GOMBI'),
(22, 'ADAMAWA', 'Girei', 'GIREI'),
(23, 'ADAMAWA', 'Hong', 'HONG'),
(24, 'ADAMAWA', 'Jada', 'JADA'),
(25, 'ADAMAWA', 'Lamurde', 'LAMURDE'),
(26, 'ADAMAWA', 'Madagali', 'MADAGALI'),
(27, 'ADAMAWA', 'Maiha', 'MAIHA'),
(28, 'ADAMAWA', 'Mayo-Belwa', 'MAYO_BELWA'),
(29, 'ADAMAWA', 'Michika', 'MICHIKA'),
(30, 'ADAMAWA', 'Mubi North', 'MUBI_NORTH'),
(31, 'ADAMAWA', 'Mubi South', 'MUBI_SOUTH'),
(32, 'ADAMAWA', 'Numan', 'NUMAN'),
(33, 'ADAMAWA', 'Shelleng', 'SHELLENG'),
(34, 'ADAMAWA', 'Song', 'SONG'),
(35, 'ADAMAWA', 'Toungo', 'TOUNGO'),
(36, 'ADAMAWA', 'Yola North', 'YOLA_NORTH'),
(37, 'ADAMAWA', 'Yola South', 'YOLA_SOUTH'),
(38, 'AKWA_IBOM', 'Abak', 'ABAK'),
(39, 'AKWA_IBOM', 'Eastern Obolo', 'EASTERN_OBOLO'),
(40, 'AKWA_IBOM', 'Eket', 'EKET'),
(41, 'AKWA_IBOM', 'Esit-Eket', 'ESIT_EKET'),
(42, 'AKWA_IBOM', 'Essien Udim', 'ESSIEN_UDIM'),
(43, 'AKWA_IBOM', 'Etim-Ekpo', 'ETIM_EKPO'),
(44, 'AKWA_IBOM', 'Etinan', 'ETINAN'),
(45, 'AKWA_IBOM', 'Ibeno', 'IBENO'),
(46, 'AKWA_IBOM', 'Ibesikpo-Asutan', 'IBESIKPO_ASUTAN'),
(47, 'AKWA_IBOM', 'Ibiono-Ibom', 'IBIONO_IBOM'),
(48, 'AKWA_IBOM', 'Ika', 'IKA'),
(49, 'AKWA_IBOM', 'Ikono', 'IKONO'),
(50, 'AKWA_IBOM', 'Ikot Abasi', 'IKOT_ABASI'),
(51, 'AKWA_IBOM', 'Ikot Ekpene', 'IKOT_EKPENE'),
(52, 'AKWA_IBOM', 'Ini', 'INI'),
(53, 'AKWA_IBOM', 'Itu', 'ITU'),
(54, 'AKWA_IBOM', 'Mbo', 'MBO'),
(55, 'AKWA_IBOM', 'Mkpat-Enin', 'MKPAT_ENIN'),
(56, 'AKWA_IBOM', 'Nsit-Atai', 'NSIT_ATAI'),
(57, 'AKWA_IBOM', 'Nsit-Ibom', 'NSIT_IBOM'),
(58, 'AKWA_IBOM', 'Nsit-Ubium', 'NSIT_UBIUM'),
(59, 'AKWA_IBOM', 'Obot-Akara', 'OBOT_AKARA'),
(60, 'AKWA_IBOM', 'Okobo', 'OKOBO'),
(61, 'AKWA_IBOM', 'Onna', 'ONNA'),
(62, 'AKWA_IBOM', 'Oron', 'ORON'),
(63, 'AKWA_IBOM', 'Oruk Anam', 'ORUK_ANAM'),
(64, 'AKWA_IBOM', 'Udung-Uko', 'UDUNG_UKO'),
(65, 'AKWA_IBOM', 'Ukanafun', 'UKANAFUN'),
(66, 'AKWA_IBOM', 'Uruan', 'URUAN'),
(67, 'AKWA_IBOM', 'Urue-Offong/Oruko', 'URUE_OFFONG'),
(68, 'AKWA_IBOM', 'Uyo', 'UYO'),
(69, 'ANAMBRA', 'Aguata', 'AGUATA'),
(70, 'ANAMBRA', 'Anambra East', 'ANAMBRA_EAST'),
(71, 'ANAMBRA', 'Anambra West', 'ANAMBRA_WEST'),
(72, 'ANAMBRA', 'Anaocha', 'ANAOCHA'),
(73, 'ANAMBRA', 'Awka North', 'AWKA_NORTH'),
(74, 'ANAMBRA', 'Awka South', 'AWKA_SOUTH'),
(75, 'ANAMBRA', 'Ayamelum', 'AYAMELUM'),
(76, 'ANAMBRA', 'Dunukofia', 'DUNUKOFIA'),
(77, 'ANAMBRA', 'Ekwusigo', 'EKWUSIGO'),
(78, 'ANAMBRA', 'Idemili North', 'IDEMILI_NORTH'),
(79, 'ANAMBRA', 'Idemili South', 'IDEMILI_SOUTH'),
(80, 'ANAMBRA', 'Ihiala', 'IHIALA'),
(81, 'ANAMBRA', 'Njikoka', 'NJIKOKA'),
(82, 'ANAMBRA', 'Nnewi North', 'NNEWI_NORTH'),
(83, 'ANAMBRA', 'Nnewi South', 'NNEWI_SOUTH'),
(84, 'ANAMBRA', 'Ogbaru', 'OGBARU'),
(85, 'ANAMBRA', 'Onitsha North', 'ONITSHA_NORTH'),
(86, 'ANAMBRA', 'Onitsha South', 'ONITSHA_SOUTH'),
(87, 'ANAMBRA', 'Orumba North', 'ORUMBA_NORTH'),
(88, 'ANAMBRA', 'Orumba South', 'ORUMBA_SOUTH'),
(89, 'ANAMBRA', 'Oyi', 'OYI'),
(90, 'BAUCHI', 'Alkaleri', 'ALKALERI'),
(91, 'BAUCHI', 'Bauchi', 'BAUCHI'),
(92, 'BAUCHI', 'Gololo', 'GOLOLO'),
(93, 'BAUCHI', 'Damban', 'DAMBAN'),
(94, 'BAUCHI', 'Darazo', 'DARAZO'),
(95, 'BAUCHI', 'Dass', 'DASS'),
(96, 'BAUCHI', 'Gamawa', 'GAMAWA'),
(97, 'BAUCHI', 'Ganjuwa', 'GANJUWA'),
(98, 'BAUCHI', 'Giade', 'GIADE'),
(99, 'BAUCHI', 'Itas/Gadau', 'ITAS_GADAU'),
(100, 'BAUCHI', 'Jama are', 'JAMA_ARE'),
(101, 'BAUCHI', 'Katagum', 'KATAGUM'),
(102, 'BAUCHI', 'Kirfi', 'KIRFI'),
(103, 'BAUCHI', 'Misau', 'MISAU'),
(104, 'BAUCHI', 'Ningi', 'NINGI'),
(105, 'BAUCHI', 'Shira', 'SHIRA'),
(106, 'BAUCHI', 'Tafawa Balewa', 'TAFAWA_BALEWA'),
(107, 'BAUCHI', 'Toro', 'TORO'),
(108, 'BAUCHI', 'Warji', 'WARJI'),
(109, 'BAUCHI', 'Zaki', 'ZAKI'),
(110, 'BAYELSA', 'Brass', 'BRASS'),
(111, 'BAYELSA', 'Ekeremor', 'EKEREMOR'),
(112, 'BAYELSA', 'Kolokuma/Opokuma', 'KOLOKUMA_OPOKUMA'),
(113, 'BAYELSA', 'Nembe', 'NEMBE'),
(114, 'BAYELSA', 'Ogbia', 'OGBIA'),
(115, 'BAYELSA', 'Sagbama', 'SAGBAMA'),
(116, 'BAYELSA', 'Southern Ijaw', 'SOUTHERN_IJAW'),
(117, 'BAYELSA', 'Yenagoa', 'YENAGOA'),
(118, 'BENUE', 'Agatu', 'AGATU'),
(119, 'BENUE', 'Apa', 'APA'),
(120, 'BENUE', 'Ado', 'ADO'),
(121, 'BENUE', 'Buruku', 'BURUKU'),
(122, 'BENUE', 'Gboko', 'GBOKO'),
(123, 'BENUE', 'Guma', 'GUMA'),
(124, 'BENUE', 'Gwer East', 'GWER_EAST'),
(125, 'BENUE', 'Gwer West', 'GWER_WEST'),
(126, 'BENUE', 'Katsina-Ala', 'KATSINA_ALA'),
(127, 'BENUE', 'Konshisha', 'KONSHISHA'),
(128, 'BENUE', 'Kwande', 'KWANDE'),
(129, 'BENUE', 'Logo', 'LOGO'),
(130, 'BENUE', 'Makurdi', 'MAKURDI'),
(131, 'BENUE', 'Obi', 'OBI'),
(132, 'BENUE', 'Ogbadibo', 'OGBADIBO'),
(133, 'BENUE', 'Ohimini', 'OHIMINI'),
(134, 'BENUE', 'Oju', 'OJU'),
(135, 'BENUE', 'Okpokwu', 'OKPOKWU'),
(136, 'BENUE', 'Otukpo', 'OTUKPO'),
(137, 'BENUE', 'Tarka', 'TARKA'),
(138, 'BENUE', 'Ukum', 'UKUM'),
(139, 'BENUE', 'Ushongo', 'USHONGO'),
(140, 'BENUE', 'Vandeikya', 'VANDEIKYA'),
(141, 'BORNO', 'Abadam', 'ABADAM'),
(142, 'BORNO', 'Askira/Uba', 'ASKIRA_UBA'),
(143, 'BORNO', 'Bama', 'BAMA'),
(144, 'BORNO', 'Bayo', 'BAYO'),
(145, 'BORNO', 'Biu', 'BIU'),
(146, 'BORNO', 'Chibok', 'CHIBOK'),
(147, 'BORNO', 'Damboa', 'DAMBOA'),
(148, 'BORNO', 'Dikwa', 'DIKWA'),
(149, 'BORNO', 'Gubio', 'GUBIO'),
(150, 'BORNO', 'Guzamala', 'GUZAMALA'),
(151, 'BORNO', 'Gwoza', 'GWOZA'),
(152, 'BORNO', 'Hawul', 'HAWUL'),
(153, 'BORNO', 'Jere', 'JERE'),
(154, 'BORNO', 'Kaga', 'KAGA'),
(155, 'BORNO', 'Kala/Balge', 'KALA_BALGE'),
(156, 'BORNO', 'Konduga', 'KONDUGA'),
(157, 'BORNO', 'Kukawa', 'KUKAWA'),
(158, 'BORNO', 'Kwaya Kusar', 'KWAYA_KUSAR'),
(159, 'BORNO', 'Mafa', 'MAFA'),
(160, 'BORNO', 'Magumeri', 'MAGUMERI'),
(161, 'BORNO', 'Maiduguri', 'MAIDUGURI'),
(162, 'BORNO', 'Marte', 'MARTE'),
(163, 'BORNO', 'Mobbar', 'MOBBAR'),
(164, 'BORNO', 'Monguno', 'MONGUNO'),
(165, 'BORNO', 'Ngala', 'NGALA'),
(166, 'BORNO', 'Nganzai', 'NGANZAI'),
(167, 'BORNO', 'Shani', 'SHANI'),
(168, 'CROSS_RIVER', 'Abi', 'ABI'),
(169, 'CROSS_RIVER', 'Akamkpa', 'AKAMKPA'),
(170, 'CROSS_RIVER', 'Akpabuyo', 'AKPABUYO'),
(171, 'CROSS_RIVER', 'Bakassi', 'BAKASSI'),
(172, 'CROSS_RIVER', 'Bekwarra', 'BEKWARRA'),
(173, 'CROSS_RIVER', 'Biase', 'BIASE'),
(174, 'CROSS_RIVER', 'Boki', 'BOKI'),
(175, 'CROSS_RIVER', 'Calabar Municipal', 'CALABAR_MUNICIPAL'),
(176, 'CROSS_RIVER', 'Calabar South', 'CALABAR_SOUTH'),
(177, 'CROSS_RIVER', 'Etung', 'ETUNG'),
(178, 'CROSS_RIVER', 'Ikom', 'IKOM'),
(179, 'CROSS_RIVER', 'Obanliku', 'OBANLIKU'),
(180, 'CROSS_RIVER', 'Obubra', 'OBUBRA'),
(181, 'CROSS_RIVER', 'Obudu', 'OBUDU'),
(182, 'CROSS_RIVER', 'Odukpani', 'ODUKPANI'),
(183, 'CROSS_RIVER', 'Ogoja', 'OGOJA'),
(184, 'CROSS_RIVER', 'Yakuur', 'YAKUUR'),
(185, 'CROSS_RIVER', 'Yala', 'YALA'),
(186, 'DELTA', 'Aniocha North', 'ANIOCHA_NORTH'),
(187, 'DELTA', 'Aniocha South', 'ANIOCHA_SOUTH'),
(188, 'DELTA', 'Bomadi', 'BOMADI'),
(189, 'DELTA', 'Burutu', 'BURUTU'),
(190, 'DELTA', 'Ethiope East', 'ETHIOPE_EAST'),
(191, 'DELTA', 'Ethiope West', 'ETHIOPE_WEST'),
(192, 'DELTA', 'Ika North East', 'IKA_NORTH_EAST'),
(193, 'DELTA', 'Ika South', 'IKA_SOUTH'),
(194, 'DELTA', 'Isoko North', 'ISOKO_NORTH'),
(195, 'DELTA', 'Isoko South', 'ISOKO_SOUTH'),
(196, 'DELTA', 'Ndokwa East', 'NDOKWA_EAST'),
(197, 'DELTA', 'Ndokwa West', 'NDOKWA_WEST'),
(198, 'DELTA', 'Okpe', 'OKPE'),
(199, 'DELTA', 'Oshimili North', 'OSHIMILI_NORTH'),
(200, 'DELTA', 'Oshimili South', 'OSHIMILI_SOUTH'),
(201, 'DELTA', 'Patani', 'PATANI'),
(202, 'DELTA', 'Sapele', 'SAPELE'),
(203, 'DELTA', 'Udu', 'UDU'),
(204, 'DELTA', 'Ughelli North', 'UGHELLI_NORTH'),
(205, 'DELTA', 'Ughelli South', 'UGHELLI_SOUTH'),
(206, 'DELTA', 'Ukwuani', 'UKWUANI'),
(207, 'DELTA', 'Uvwie', 'UVWIE'),
(208, 'DELTA', 'Warri North', 'WARRI_NORTH'),
(209, 'DELTA', 'Warri South', 'WARRI_SOUTH'),
(210, 'DELTA', 'Warri South West', 'WARRI_SOUTH_WEST'),
(211, 'EBONYI', 'Abakaliki', 'ABAKALIKI'),
(212, 'EBONYI', 'Afikpo North', 'AFIKPO_NORTH'),
(213, 'EBONYI', 'Afikpo South', 'AFIKPO_SOUTH'),
(214, 'EBONYI', 'Ebonyi', 'EBONYI'),
(215, 'EBONYI', 'Ezza North', 'EZZA_NORTH'),
(216, 'EBONYI', 'Ezza South', 'EZZA_SOUTH'),
(217, 'EBONYI', 'Ikwo', 'IKWO'),
(218, 'EBONYI', 'Ishielu', 'ISHIELU'),
(219, 'EBONYI', 'Ivo', 'IVO'),
(220, 'EBONYI', 'Izzi', 'IZZI'),
(221, 'EBONYI', 'Ohaozara', 'OHAOZARA'),
(222, 'EBONYI', 'Ohaukwu', 'OHAUKWU'),
(223, 'EBONYI', 'Onicha', 'ONICHA'),
(224, 'EDO', 'Akoko-Edo', 'AKOKO_EDO'),
(225, 'EDO', 'Egor', 'EGOR'),
(226, 'EDO', 'Esan Central', 'ESAN_CENTRAL'),
(227, 'EDO', 'Esan North-East', 'ESAN_NORTH_EAST'),
(228, 'EDO', 'Esan South-East', 'ESAN_SOUTH_EAST'),
(229, 'EDO', 'Esan West', 'ESAN_WEST'),
(230, 'EDO', 'Etsako Central', 'ETSAKO_CENTRAL'),
(231, 'EDO', 'Etsako East', 'ETSAKO_EAST'),
(232, 'EDO', 'Etsako West', 'ETSAKO_WEST'),
(233, 'EDO', 'Igueben', 'IGUEBEN'),
(234, 'EDO', 'Ikpoba-Okha', 'IKPOBA_OKHA'),
(235, 'EDO', 'Orhionmwon', 'ORHIONMWON'),
(236, 'EDO', 'Oredo', 'OREDO'),
(237, 'EDO', 'Ovia North-East', 'OVIA_NORTH_EAST'),
(238, 'EDO', 'Ovia North-West', 'OVIA_NORTH_WEST'),
(239, 'EDO', 'Ovia South-West', 'OVIA_SOUTH_WEST'),
(240, 'EDO', 'Owan East', 'OWAN_EAST'),
(241, 'EDO', 'Owan West', 'OWAN_WEST'),
(242, 'EDO', 'Uhunmwonde', 'UHUNMWONDE'),
(243, 'EKITI', 'Ado-Ekiti', 'ADO_EKITI'),
(244, 'EKITI', 'Efon', 'EFON'),
(245, 'EKITI', 'Ekiti East', 'EKITI_EAST'),
(246, 'EKITI', 'Ekiti South-West', 'EKITI_SOUTH_WEST'),
(247, 'EKITI', 'Ekiti West', 'EKITI_WEST'),
(248, 'EKITI', 'Emure', 'EMURE'),
(249, 'EKITI', 'Aiyekire/Gbonyin', 'AIYEKIRE_GBONYIN'),
(250, 'EKITI', 'Ido Osi', 'IDO_OSI'),
(251, 'EKITI', 'Ijero', 'IJERO'),
(252, 'EKITI', 'Ikere', 'IKERE'),
(253, 'EKITI', 'Ikole', 'IKOLE'),
(254, 'EKITI', 'Ilejemeje', 'ILEJEMEJE'),
(255, 'EKITI', 'Irepodun/Ifelodun', 'IREPODUN_IFELODUN'),
(256, 'EKITI', 'Ise/Orun', 'ISE_ORUN'),
(257, 'EKITI', 'Moba', 'MOBA'),
(258, 'EKITI', 'Oye', 'OYE'),
(259, 'ENUGU', 'Aninri', 'ANINRI'),
(260, 'ENUGU', 'Awgu', 'AWGU'),
(261, 'ENUGU', 'Enugu East', 'ENUGU_EAST'),
(262, 'ENUGU', 'Enugu North', 'ENUGU_NORTH'),
(263, 'ENUGU', 'Enugu South', 'ENUGU_SOUTH'),
(264, 'ENUGU', 'Ezeagu', 'EZEAGU'),
(265, 'ENUGU', 'Igbo Etiti', 'IGBO_ETITI'),
(266, 'ENUGU', 'Igbo Eze North', 'IGBO_EZE_NORTH'),
(267, 'ENUGU', 'Igbo Eze South', 'IGBO_EZE_SOUTH'),
(268, 'ENUGU', 'Isi Uzo', 'ISI_UZO'),
(269, 'ENUGU', 'Nkanu East', 'NKANU_EAST'),
(270, 'ENUGU', 'Nkanu West', 'NKANU_WEST'),
(271, 'ENUGU', 'Nsukka', 'NSUKKA'),
(272, 'ENUGU', 'Oji River', 'OJI_RIVER'),
(273, 'ENUGU', 'Udenu', 'UDENU'),
(274, 'ENUGU', 'Udi', 'UDI'),
(275, 'ENUGU', 'Uzo Uwani', 'UZO_UWANI'),
(276, 'FCT', 'Bwari', 'BWARI'),
(277, 'FCT', 'Gwagwalada', 'GWAGWALADA'),
(278, 'FCT', 'Kuje', 'KUJE'),
(279, 'FCT', 'Kwali', 'KWALI'),
(280, 'FCT', 'Municipal Area Council', 'MUNICIPAL_AREA_COUNCIL'),
(281, 'GOMBE', 'Akko', 'AKKO'),
(282, 'GOMBE', 'Balanga', 'BALANGA'),
(283, 'GOMBE', 'Billiri', 'BILLIRI'),
(284, 'GOMBE', 'Dukku', 'DUKKU'),
(285, 'GOMBE', 'Funakaye', 'FUNAKAYE'),
(286, 'GOMBE', 'Gombe', 'GOMBE'),
(287, 'GOMBE', 'Kaltungo', 'KALTUNGO'),
(288, 'GOMBE', 'Kwami', 'KWAMI'),
(289, 'GOMBE', 'Nafada', 'NAFADA'),
(290, 'GOMBE', 'Shongom', 'SHONGOM'),
(291, 'GOMBE', 'Yamaltu/Deba', 'YAMALTU_DEBA'),
(292, 'IMO', 'Aboh Mbaise', 'ABOH_MBAISE'),
(293, 'IMO', 'Ahiazu Mbaise', 'AHIAZU_MBAISE'),
(294, 'IMO', 'Ehime Mbano', 'EHIME_MBANO'),
(295, 'IMO', 'Ezinihitte Mbaise', 'EZINIHITTE_MBAISE'),
(296, 'IMO', 'Ideato North', 'IDEATO_NORTH'),
(297, 'IMO', 'Ideato South', 'IDEATO_SOUTH'),
(298, 'IMO', 'Ihitte/Uboma', 'IHITTE_UBOMA'),
(299, 'IMO', 'Ikeduru', 'IKEDURU'),
(300, 'IMO', 'Isiala Mbano', 'ISIALA_MBANO'),
(301, 'IMO', 'Isu', 'ISU'),
(302, 'IMO', 'Mbaitoli', 'MBAITOLI'),
(303, 'IMO', 'Ngor Okpala', 'NGOR_OKPALA'),
(304, 'IMO', 'Njaba', 'NJABA'),
(305, 'IMO', 'Nkwerre', 'NKWERRE'),
(306, 'IMO', 'Nwangele', 'NWANGELE'),
(307, 'IMO', 'Obowo', 'OBOWO'),
(308, 'IMO', 'Oguta', 'OGUTA'),
(309, 'IMO', 'Ohaji/Egbema', 'OHAJI_EGBEMA'),
(310, 'IMO', 'Okigwe', 'OKIGWE'),
(311, 'IMO', 'Orlu', 'ORLU'),
(312, 'IMO', 'Orsu', 'ORSU'),
(313, 'IMO', 'Oru East', 'ORU_EAST'),
(314, 'IMO', 'Oru West', 'ORU_WEST'),
(315, 'IMO', 'Owerri Municipal', 'OWERRI_MUNICIPAL'),
(316, 'IMO', 'Owerri North', 'OWERRI_NORTH'),
(317, 'IMO', 'Owerri West', 'OWERRI_WEST'),
(318, 'IMO', 'Unuimo', 'UNUIMO'),
(319, 'JIGAWA', 'Auyo', 'AUYO'),
(320, 'JIGAWA', 'Babura', 'BABURA'),
(321, 'JIGAWA', 'Biriniwa', 'BIRINIWA'),
(322, 'JIGAWA', 'Birnin Kudu', 'BIRNIN_KUDU'),
(323, 'JIGAWA', 'Buji', 'BUJI'),
(324, 'JIGAWA', 'Dutse', 'DUTSE'),
(325, 'JIGAWA', 'Gagarawa', 'GAGARAWA'),
(326, 'JIGAWA', 'Garki', 'GARKI'),
(327, 'JIGAWA', 'Gumel', 'GUMEL'),
(328, 'JIGAWA', 'Guri', 'GURI'),
(329, 'JIGAWA', 'Gwaram', 'GWARAM'),
(330, 'JIGAWA', 'Gwiwa', 'GWIWA'),
(331, 'JIGAWA', 'Hadejia', 'HADEJIA'),
(332, 'JIGAWA', 'Jahun', 'JAHUN'),
(333, 'JIGAWA', 'Kafin Hausa', 'KAFIN_HAUSA'),
(334, 'JIGAWA', 'Kazaure', 'KAZAURE'),
(335, 'JIGAWA', 'Kiri Kasama', 'KIRI_KASAMA'),
(336, 'JIGAWA', 'Kiyawa', 'KIYAWA'),
(337, 'JIGAWA', 'Kaugama', 'KAUGAMA'),
(338, 'JIGAWA', 'Maigatari', 'MAIGATARI'),
(339, 'JIGAWA', 'Malam Madori', 'MALAM_MADORI'),
(340, 'JIGAWA', 'Miga', 'MIGA'),
(341, 'JIGAWA', 'Ringim', 'RINGIM'),
(342, 'JIGAWA', 'Roni', 'RONI'),
(343, 'JIGAWA', 'Sule Tankarkar', 'SULE_TANKARKAR'),
(344, 'JIGAWA', 'Taura', 'TAURA'),
(345, 'JIGAWA', 'Yankwashi', 'YANKWASHI'),
(346, 'KADUNA', 'Birnin Gwari', 'BIRNIN_GWARI'),
(347, 'KADUNA', 'Chikun', 'CHIKUN'),
(348, 'KADUNA', 'Giwa', 'GIWA'),
(349, 'KADUNA', 'Igabi', 'IGABI'),
(350, 'KADUNA', 'Ikara', 'IKARA'),
(351, 'KADUNA', 'Jaba', 'JARA'),
(352, 'KADUNA', 'Jema a', 'JEMA_A'),
(353, 'KADUNA', 'Kachia', 'KACHIA'),
(354, 'KADUNA', 'Kaduna North', 'KADUNA_NORTH'),
(355, 'KADUNA', 'Kaduna South', 'KADUNA_SOUTH'),
(356, 'KADUNA', 'Kagarko', 'KAGARKO'),
(357, 'KADUNA', 'Kajuru', 'KAJURU'),
(358, 'KADUNA', 'Kaura', 'KAURA'),
(359, 'KADUNA', 'Kauru', 'KAURU'),
(360, 'KADUNA', 'Kubau', 'KUBAU'),
(361, 'KADUNA', 'Kudan', 'KUDAN'),
(362, 'KADUNA', 'Lere', 'LERE'),
(363, 'KADUNA', 'Makarfi', 'MAKARFI'),
(364, 'KADUNA', 'Sabon Gari', 'SABON_GARI'),
(365, 'KADUNA', 'Sanga', 'SANGA'),
(366, 'KADUNA', 'Soba', 'SOBA'),
(367, 'KADUNA', 'Zangon Kataf', 'ZANGON_KATAF'),
(368, 'KADUNA', 'Zaria', 'ZARIA'),
(369, 'KANO', 'Ajingi', 'AJINJI'),
(370, 'KANO', 'Albasu', 'ALBASU'),
(371, 'KANO', 'Bagwai', 'BAGWAI'),
(372, 'KANO', 'Bebeji', 'BEBEJI'),
(373, 'KANO', 'Bichi', 'BICHI'),
(374, 'KANO', 'Bunkure', 'BUNKURE'),
(375, 'KANO', 'Dala', 'DALA'),
(376, 'KANO', 'Dambatta', 'DAMBATTA'),
(377, 'KANO', 'Dawakin Kudu', 'DAWAKIN_KUDU'),
(378, 'KANO', 'Dawakin Tofa', 'DAWAKIN_TOFA'),
(379, 'KANO', 'Doguwa', 'DOGUWA'),
(380, 'KANO', 'Fagge', 'FAGGE'),
(381, 'KANO', 'Gabasawa', 'GABASAWA'),
(382, 'KANO', 'Garko', 'GARKO'),
(383, 'KANO', 'Garun Mallam', 'GARUN_MALLAM'),
(384, 'KANO', 'Gaya', 'GAYA'),
(385, 'KANO', 'Gezawa', 'GEZAWA'),
(386, 'KANO', 'Gwale', 'GWALE'),
(387, 'KANO', 'Gwarzo', 'GWARZO'),
(388, 'KANO', 'Kabo', 'KABO'),
(389, 'KANO', 'Kano Municipal', 'KANO_MUNICIPAL'),
(390, 'KANO', 'Karaye', 'KARAYE'),
(391, 'KANO', 'Kibiya', 'KIBIYA'),
(392, 'KANO', 'Kiru', 'KIRU'),
(393, 'KANO', 'Kumbotso', 'KUMBOTSO'),
(394, 'KANO', 'Kunchi', 'KUNCHI'),
(395, 'KANO', 'Kura', 'KURA'),
(396, 'KANO', 'Madobi', 'MADOBI'),
(397, 'KANO', 'Makoda', 'MAKODA'),
(398, 'KANO', 'Minjibir', 'MINJIBIR'),
(399, 'KANO', 'Nasarawa', 'NASARAWA_'),
(400, 'KANO', 'Rano', 'RANO'),
(401, 'KANO', 'Rimin Gado', 'RIMIN_GADO'),
(402, 'KANO', 'Rogo', 'ROGO'),
(403, 'KANO', 'Shanono', 'SHANONO'),
(404, 'KANO', 'Sumaila', 'SUMAILA'),
(405, 'KANO', 'Takai', 'TAKAI'),
(406, 'KANO', 'Tarauni', 'TARAUNI'),
(407, 'KANO', 'Tofa', 'TOFA'),
(408, 'KANO', 'Tsanyawa', 'TSANYAWA'),
(409, 'KANO', 'Tudun Wada', 'TUDUN_WADA'),
(410, 'KANO', 'Ungogo', 'UNGOGO'),
(411, 'KANO', 'Warawa', 'WARAWA'),
(412, 'KANO', 'Wudil', 'WUDIL'),
(413, 'KATSINA', 'Bakori', 'BAKORI'),
(414, 'KATSINA', 'Batagarawa', 'BATAGARAWA'),
(415, 'KATSINA', 'Batsari', 'BATSARI'),
(416, 'KATSINA', 'Baure', 'BAURE'),
(417, 'KATSINA', 'Bindawa', 'BINDAWA'),
(418, 'KATSINA', 'Charanchi', 'CHARANCHI'),
(419, 'KATSINA', 'Dandume', 'DANDUME'),
(420, 'KATSINA', 'Danja', 'DANJA'),
(421, 'KATSINA', 'Dan Musa', 'DAN_MUSA'),
(422, 'KATSINA', 'Daura', 'DAURA'),
(423, 'KATSINA', 'Dutsi', 'DUTSI'),
(424, 'KATSINA', 'Dutsin-Ma', 'DUTSIN_MA'),
(425, 'KATSINA', 'Faskari', 'FASKARI'),
(426, 'KATSINA', 'Funtua', 'FUNTUA'),
(427, 'KATSINA', 'Ingawa', 'INGAWA'),
(428, 'KATSINA', 'Jibia', 'JIBIA'),
(429, 'KATSINA', 'Kafur', 'KAFUR'),
(430, 'KATSINA', 'Kaita', 'KAITA'),
(431, 'KATSINA', 'Kankara', 'KANKARA'),
(432, 'KATSINA', 'Kankia', 'KANKIA'),
(433, 'KATSINA', 'Katsina', 'KATSINA'),
(434, 'KATSINA', 'Kurfi', 'KURFI'),
(435, 'KATSINA', 'Kusada', 'KUSADA'),
(436, 'KATSINA', 'Mai\'Adua', 'MAI_ADUA'),
(437, 'KATSINA', 'Malumfashi', 'MALUMFASHI'),
(438, 'KATSINA', 'Mani', 'MANI'),
(439, 'KATSINA', 'Mashi', 'MASHI'),
(440, 'KATSINA', 'Matazu', 'MATAZU'),
(441, 'KATSINA', 'Musawa', 'MUSAWA'),
(442, 'KATSINA', 'Rimi', 'RIMI'),
(443, 'KATSINA', 'Sabuwa', 'SABUWA'),
(444, 'KATSINA', 'Safana', 'SAFANA'),
(445, 'KATSINA', 'Sandamu', 'SANDAMU'),
(446, 'KATSINA', 'Zango', 'ZANGO'),
(447, 'KEBBI', 'Aleiro', 'ALEIRO'),
(448, 'KEBBI', 'Arewa Dandi', 'AREWA_DANDI'),
(449, 'KEBBI', 'Argungu', 'ARGUNGU'),
(450, 'KEBBI', 'Augie', 'AUGIE'),
(451, 'KEBBI', 'Bagudo', 'BAGUDO'),
(452, 'KEBBI', 'Birnin Kebbi', 'BIRNIN_KEBBI'),
(453, 'KEBBI', 'Bunza', 'BUNZA'),
(454, 'KEBBI', 'Dandi', 'DANDI'),
(455, 'KEBBI', 'Fakai', 'FAKAI'),
(456, 'KEBBI', 'Gwandu', 'GWANDU'),
(457, 'KEBBI', 'Jega', 'JEGA'),
(458, 'KEBBI', 'Kalgo', 'KALGO'),
(459, 'KEBBI', 'Koko/Besse', 'KOKO_BESSE'),
(460, 'KEBBI', 'Maiyama', 'MAIYAMA'),
(461, 'KEBBI', 'Ngaski', 'NGASKI'),
(462, 'KEBBI', 'Sakaba', 'SAKABA'),
(463, 'KEBBI', 'Shanga', 'SHANGA'),
(464, 'KEBBI', 'Suru', 'SURU'),
(465, 'KEBBI', 'Wasagu/Danko', 'WASAGU_DANKO'),
(466, 'KEBBI', 'Yauri', 'YAURI'),
(467, 'KEBBI', 'Zuru', 'ZURU'),
(468, 'KOGI', 'Adavi', 'ADAVI'),
(469, 'KOGI', 'Ajaokuta', 'AJAOKUTA'),
(470, 'KOGI', 'Ankpa', 'ANKPA'),
(471, 'KOGI', 'Bassa', 'BASSA'),
(472, 'KOGI', 'Dekina', 'DEKINA'),
(473, 'KOGI', 'Ibaji', 'IBAJI'),
(474, 'KOGI', 'Idah', 'IDAH'),
(475, 'KOGI', 'Igalamela-Odolu', 'IGALAMELA_ODOLU'),
(476, 'KOGI', 'Ijumu', 'IJUMU'),
(477, 'KOGI', 'Kabba/Bunu', 'KABBA_BUNU'),
(478, 'KOGI', 'Koton Karfe', 'KOTON_KARFE'),
(479, 'KOGI', 'Lokoja', 'LOKOJA'),
(480, 'KOGI', 'Mopa-Muro', 'MOPA-MURO'),
(481, 'KOGI', 'Ofu', 'OFU'),
(482, 'KOGI', 'Ogori/Magongo', 'OGORI_MAGONGO'),
(483, 'KOGI', 'Okehi', 'OKEHI'),
(484, 'KOGI', 'Okene', 'OKENE'),
(485, 'KOGI', 'Olamaboro', 'OLAMABORO'),
(486, 'KOGI', 'Omala', 'OMALA'),
(487, 'KOGI', 'Yagba East', 'YAGBA_EAST'),
(488, 'KOGI', 'Yagba West', 'YAGBA_WEST'),
(489, 'KWARA', 'Asa', 'ASA'),
(490, 'KWARA', 'Baruten', 'BARUTEN'),
(491, 'KWARA', 'Edu', 'EDU'),
(492, 'KWARA', 'Ekiti', 'EKITI'),
(493, 'KWARA', 'Ifelodun', 'IFELODUN'),
(494, 'KWARA', 'Ilorin East', 'ILORIN_EAST'),
(495, 'KWARA', 'Ilorin South', 'ILORIN_SOUTH'),
(496, 'KWARA', 'Ilorin West', 'ILORIN_WEST'),
(497, 'KWARA', 'Irepodun', 'IREPODUN'),
(498, 'KWARA', 'Isin', 'ISIN'),
(499, 'KWARA', 'Kaiama', 'KAIAMA'),
(500, 'KWARA', 'Moro', 'MORO'),
(501, 'KWARA', 'Offa', 'OFFA'),
(502, 'KWARA', 'Oke Ero', 'OKE_ERO'),
(503, 'KWARA', 'Oyun', 'OYUN'),
(504, 'KWARA', 'Pategi', 'PATEGI'),
(505, 'LAGOS', 'Agege', 'AGEGE'),
(506, 'LAGOS', 'Ajeromi-Ifelodun', 'AJEROMI_IFELODUN'),
(507, 'LAGOS', 'Alimosho', 'ALIMOSHO'),
(508, 'LAGOS', 'Amuwo-Odofin', 'AMUWO_ODOFIN'),
(509, 'LAGOS', 'Apapa', 'APAPA'),
(510, 'LAGOS', 'Badagry', 'BADAGRY'),
(511, 'LAGOS', 'Epe', 'EPE'),
(512, 'LAGOS', 'Eti-Osa', 'ETI_OSA'),
(513, 'LAGOS', 'Ibeju-Lekki', 'IBEJU_LEKKI'),
(514, 'LAGOS', 'Ifako-Ijaye', 'IFAKO_IJAYE'),
(515, 'LAGOS', 'Ikeja', 'IKEJA'),
(516, 'LAGOS', 'Ikorodu', 'IKORODU'),
(517, 'LAGOS', 'Kosofe', 'KOSOFE'),
(518, 'LAGOS', 'Lagos Island', 'LAGOS_ISLAND'),
(519, 'LAGOS', 'Lagos Mainland', 'LAGOS_MAINLAND'),
(520, 'LAGOS', 'Mushin', 'MUSHIN'),
(521, 'LAGOS', 'Ojo', 'OJO'),
(522, 'LAGOS', 'Oshodi-Isolo', 'OSHODI_ISOLO'),
(523, 'LAGOS', 'Shomolu', 'SHOMOLU'),
(524, 'LAGOS', 'Surulere', 'SURULERE'),
(525, 'NASARAWA', 'Akwanga', 'AKWANGA'),
(526, 'NASARAWA', 'Awe', 'AWE'),
(527, 'NASARAWA', 'Doma', 'DOMA'),
(528, 'NASARAWA', 'Karu', 'KARU'),
(529, 'NASARAWA', 'Keana', 'KEANA'),
(530, 'NASARAWA', 'Keffi', 'KEFFI'),
(531, 'NASARAWA', 'Kokona', 'KOKONA'),
(532, 'NASARAWA', 'Lafia', 'LAFIA'),
(533, 'NASARAWA', 'Nasarawa', 'NASARAWA'),
(534, 'NASARAWA', 'Nasarawa Egon', 'NASARAWA_EGON'),
(535, 'NASARAWA', 'Obi', 'OBI_'),
(536, 'NASARAWA', 'Toto', 'TOTO'),
(537, 'NASARAWA', 'Wamba', 'WAMBA'),
(538, 'NIGER', 'Agaie', 'AGAIE'),
(539, 'NIGER', 'Agwara', 'AGWARA'),
(540, 'NIGER', 'Bida', 'BIDA'),
(541, 'NIGER', 'Borgu', 'BORGU'),
(542, 'NIGER', 'Bosso', 'BOSSO'),
(543, 'NIGER', 'Chanchaga', 'CHANCHAGA'),
(544, 'NIGER', 'Edati', 'EDATI'),
(545, 'NIGER', 'Gbako', 'GBAKO'),
(546, 'NIGER', 'Gurara', 'GURARA'),
(547, 'NIGER', 'Katcha', 'KATCHA'),
(548, 'NIGER', 'Kontagora', 'KONTAGORA'),
(549, 'NIGER', 'Lapai', 'LAPAI'),
(550, 'NIGER', 'Lavun', 'LAVUN'),
(551, 'NIGER', 'Magama', 'MAGAMA'),
(552, 'NIGER', 'Mariga', 'MARIGA'),
(553, 'NIGER', 'Mashegu', 'MASHEGU'),
(554, 'NIGER', 'Mokwa', 'MOKWA'),
(555, 'NIGER', 'Munya', 'MUNYA'),
(556, 'NIGER', 'Paikoro', 'PAIKORO'),
(557, 'NIGER', 'Rafi', 'RAFI'),
(558, 'NIGER', 'Rijau', 'RIJAU'),
(559, 'NIGER', 'Shiroro', 'SHIRORO'),
(560, 'NIGER', 'Suleja', 'SULEJA'),
(561, 'NIGER', 'Tafa', 'TAFA'),
(562, 'NIGER', 'Wushishi', 'WUSHISHI'),
(563, 'OGUN', 'Abeokuta North', 'ABEOKUTA_NORTH'),
(564, 'OGUN', 'Abeokuta South', 'ABEOKUTA_SOUTH'),
(565, 'OGUN', 'Ado-Odo/Ota', 'ADO_ODO_OTA'),
(566, 'OGUN', 'Yewa North', 'YEWA_NORTH'),
(567, 'OGUN', 'Yewa South', 'YEWA_SOUTH'),
(568, 'OGUN', 'Ewekoro', 'EWOKORO'),
(569, 'OGUN', 'Ifo', 'IFO'),
(570, 'OGUN', 'Ijebu East', 'IJEBU_EAST'),
(571, 'OGUN', 'Ijebu North', 'IJEBU_NORTH'),
(572, 'OGUN', 'Ijebu North East', 'IJEBU_NORTH_EAST'),
(573, 'OGUN', 'Ijebu Ode', 'IJEBU_ODE'),
(574, 'OGUN', 'Ikenne', 'IKENNE'),
(575, 'OGUN', 'Imeko Afon', 'IMEKO_AFON'),
(576, 'OGUN', 'Ipokia', 'IPOKIA'),
(577, 'OGUN', 'Obafemi Owode', 'OBAFEMI_OWODE'),
(578, 'OGUN', 'Odeda', 'ODEDA'),
(579, 'OGUN', 'Odogbolu', 'ODOGBOLU'),
(580, 'OGUN', 'Ogun Waterside', 'OGUN_WATERSIDE'),
(581, 'OGUN', 'Remo North', 'REMO_NORTH'),
(582, 'OGUN', 'Sagamu', 'SAGAMU'),
(583, 'ONDO', 'Akoko North-East', 'AKOKO_NORTH_EAST'),
(584, 'ONDO', 'Akoko North-West', 'AKOKO_NORTH_WEST'),
(585, 'ONDO', 'Akoko South-West', 'AKOKO_SOUTH_WEST'),
(586, 'ONDO', 'Akoko South-East', 'AKOKO_SOUTH_EAST'),
(587, 'ONDO', 'Akure North', 'AKURE_NORTH'),
(588, 'ONDO', 'Akure South', 'AKURE_SOUTH'),
(589, 'ONDO', 'Ese Odo', 'ESE_ODO'),
(590, 'ONDO', 'Idanre', 'IDANRE'),
(591, 'ONDO', 'Ifedore', 'IFEDORE'),
(592, 'ONDO', 'Ilaje', 'ILAJE'),
(593, 'ONDO', 'Ile Oluji/Okeigbo', 'ILE_OLUJI_OKEIGBO'),
(594, 'ONDO', 'Irele', 'IRELE'),
(595, 'ONDO', 'Odigbo', 'ODIGBO'),
(596, 'ONDO', 'Okitipupa', 'OKITIPUPA'),
(597, 'ONDO', 'Ondo East', 'ONDO_EAST'),
(598, 'ONDO', 'Ondo West', 'ONDO_WEST'),
(599, 'ONDO', 'Ose', 'OSE'),
(600, 'ONDO', 'Owo', 'OWO'),
(601, 'OSUN', 'Atakunmosa East', 'ATAKUNMOSA_EAST'),
(602, 'OSUN', 'Atakunmosa West', 'ATAKUNMOSA_WEST'),
(603, 'OSUN', 'Aiyedaade', 'AIYEDAADE'),
(604, 'OSUN', 'Aiyedire', 'AIYEDIRE'),
(605, 'OSUN', 'Boluwaduro', 'BOLUWADURO'),
(606, 'OSUN', 'Boripe', 'BORIPE'),
(607, 'OSUN', 'Ede North', 'EDE_NORTH'),
(608, 'OSUN', 'Ede South', 'EDE_SOUTH'),
(609, 'OSUN', 'Ife Central', 'IFE_CENTRAL'),
(610, 'OSUN', 'Ife East', 'IFE_EAST'),
(611, 'OSUN', 'Ife North', 'IFE_NORTH'),
(612, 'OSUN', 'Ife South', 'IFE_SOUTH'),
(613, 'OSUN', 'Egbedore', 'EGBEDORE'),
(614, 'OSUN', 'Ejigbo', 'EJIGBO'),
(615, 'OSUN', 'Ifedayo', 'IFEDAYO'),
(616, 'OSUN', 'Ifelodun', 'IFELODUN_'),
(617, 'OSUN', 'Ila', 'ILA'),
(618, 'OSUN', 'Ilesa East', 'ILESA_EAST'),
(619, 'OSUN', 'Ilesa West', 'ILESA_WEST'),
(620, 'OSUN', 'Irepodun', 'IREPODUN_'),
(621, 'OSUN', 'Irewole', 'IREWOLE'),
(622, 'OSUN', 'Isokan', 'ISOKAN'),
(623, 'OSUN', 'Iwo', 'IWO'),
(624, 'OSUN', 'Obokun', 'OBOKUN'),
(625, 'OSUN', 'Odo Otin', 'ODO_OTIN'),
(626, 'OSUN', 'Ola Oluwa', 'OLA_OLUWA'),
(627, 'OSUN', 'Olorunda', 'OLORUNDA'),
(628, 'OSUN', 'Oriade', 'ORIADE'),
(629, 'OSUN', 'Orolu', 'OROLU'),
(630, 'OSUN', 'Osogbo', 'OSOGBO'),
(631, 'OYO', 'Afijio', 'AFIJIO'),
(632, 'OYO', 'Akinyele', 'AKINYELE'),
(633, 'OYO', 'Atiba', 'ATIBA'),
(634, 'OYO', 'Atisbo', 'ATISBO'),
(635, 'OYO', 'Egbeda', 'EGBEDA'),
(636, 'OYO', 'Ibadan North', 'IBADAN_NORTH'),
(637, 'OYO', 'Ibadan North-East', 'IBADAN_NORTH_EAST'),
(638, 'OYO', 'Ibadan North-West', 'IBADAN_NORTH_WEST'),
(639, 'OYO', 'Ibadan South-East', 'IBADAN_SOUTH_EAST'),
(640, 'OYO', 'Ibadan South-West', 'IBADAN_SOUTH_WEST'),
(641, 'OYO', 'Ibarapa Central', 'IBARAPA_CENTRAL'),
(642, 'OYO', 'Ibarapa East', 'IBARAPA_EAST'),
(643, 'OYO', 'Ibarapa North', 'IBARAPA_NORTH'),
(644, 'OYO', 'Ido', 'IDO'),
(645, 'OYO', 'Irepo', 'IREPO'),
(646, 'OYO', 'Iseyin', 'ISEYIN'),
(647, 'OYO', 'Itesiwaju', 'ITESIWAJU'),
(648, 'OYO', 'Iwajowa', 'IWAJOWA'),
(649, 'OYO', 'Kajola', 'KAJOLA'),
(650, 'OYO', 'Lagelu', 'LAGELU'),
(651, 'OYO', 'Ogbomosho North', 'OGBOMOSHO_NORTH'),
(652, 'OYO', 'Ogbomosho South', 'OGBOMOSHO_SOUTH'),
(653, 'OYO', 'Ogo Oluwa', 'OGO_OLUWA'),
(654, 'OYO', 'Olorunsogo', 'OLORUNSOGO'),
(655, 'OYO', 'Oluyole', 'OLUYOLE'),
(656, 'OYO', 'Ona Ara', 'ONA_ARA'),
(657, 'OYO', 'Orelope', 'ORELOPE'),
(658, 'OYO', 'Ori Ire', 'ORI_IRE'),
(659, 'OYO', 'Oyo West', 'OYO_WEST'),
(660, 'OYO', 'Oyo East', 'OYO_EAST'),
(661, 'OYO', 'Saki East', 'SAKI_EAST'),
(662, 'OYO', 'Saki West', 'SAKI_WEST'),
(663, 'OYO', 'Surulere', 'SURULERE_'),
(664, 'PLATEAU', 'Bokkos', 'BOKKOS'),
(665, 'PLATEAU', 'Barkin Ladi', 'BARKIN_LADI'),
(666, 'PLATEAU', 'Bassa', 'BASSA_'),
(667, 'PLATEAU', 'Jos East', 'JOS_EAST'),
(668, 'PLATEAU', 'Jos North', 'JOS_NORTH'),
(669, 'PLATEAU', 'Jos South', 'JOS_SOUTH'),
(670, 'PLATEAU', 'Kanam', 'KANAM'),
(671, 'PLATEAU', 'Kanke', 'KANKE'),
(672, 'PLATEAU', 'Langtang South', 'LANGTANG_SOUTH'),
(673, 'PLATEAU', 'Langtang North', 'LANGTANG_NORTH'),
(674, 'PLATEAU', 'Mangu', 'MANGU'),
(675, 'PLATEAU', 'Mikang', 'MIKANG'),
(676, 'PLATEAU', 'Pankshin', 'PANKSHIN'),
(677, 'PLATEAU', 'Qua an Pan', 'QUA_AN_PAN'),
(678, 'PLATEAU', 'Riyom', 'RIYOM'),
(679, 'PLATEAU', 'Shendam', 'SHENDAM'),
(680, 'PLATEAU', 'Wase', 'WASE'),
(681, 'RIVERS', 'Abua–Odual', 'ABUA_ODUAL'),
(682, 'RIVERS', 'Ahoada East', 'AHOADA_EAST'),
(683, 'RIVERS', 'Ahoada West', 'AHOADA_WEST'),
(684, 'RIVERS', 'Akuku-Toru', 'AKUKU_TORU'),
(685, 'RIVERS', 'Andoni', 'ANDONI'),
(686, 'RIVERS', 'Asari-Toru', 'ASARI_TORU'),
(687, 'RIVERS', 'Bonny', 'BONNY'),
(688, 'RIVERS', 'Degema', 'DEGEMA'),
(689, 'RIVERS', 'Eleme', 'ELEME'),
(690, 'RIVERS', 'Emuoha', 'EMUOHA'),
(691, 'RIVERS', 'Etche', 'ETCHE'),
(692, 'RIVERS', 'Gokana', 'GOKANA'),
(693, 'RIVERS', 'Ikwerre', 'IKWERRE'),
(694, 'RIVERS', 'Khana', 'KHANA'),
(695, 'RIVERS', 'Obio-Akpor', 'OBIO_AKPOR'),
(696, 'RIVERS', 'Ogba-Egbema-Ndoni', 'OGBA_EGBEMA_NDONI'),
(697, 'RIVERS', 'Ogu-Bolo', 'OGU_BOLO'),
(698, 'RIVERS', 'Okrika', 'OKIRIKA'),
(699, 'RIVERS', 'Omuma', 'OMUMA'),
(700, 'RIVERS', 'Opobo-Nkoro', 'OPOBO_NKORO'),
(701, 'RIVERS', 'Oyigbo', 'OYIGBO'),
(702, 'RIVERS', 'Port Harcourt', 'PORT_HARCOURT'),
(703, 'RIVERS', 'Tai', 'TAI'),
(704, 'SOKOTO', 'Binji', 'BINJI'),
(705, 'SOKOTO', 'Bodinga', 'BODINGA'),
(706, 'SOKOTO', 'Dange Shuni', 'DANGE_SHUNI'),
(707, 'SOKOTO', 'Gada', 'GADA'),
(708, 'SOKOTO', 'Goronyo', 'GORONYO'),
(709, 'SOKOTO', 'Gudu', 'GUDU'),
(710, 'SOKOTO', 'Gwadabawa', 'GWADABAWA'),
(711, 'SOKOTO', 'Illela', 'ILLELA'),
(712, 'SOKOTO', 'Isa', 'ISA'),
(713, 'SOKOTO', 'Kebbe', 'KEBBE'),
(714, 'SOKOTO', 'Kware', 'KWARE'),
(715, 'SOKOTO', 'Rabah', 'RABAH'),
(716, 'SOKOTO', 'Sabon Birni', 'SABON_BIRNI'),
(717, 'SOKOTO', 'Shagari', 'SHAGARI'),
(718, 'SOKOTO', 'Silame', 'SILAME'),
(719, 'SOKOTO', 'Sokoto North', 'SOKOTO_NORTH'),
(720, 'SOKOTO', 'Sokoto South', 'SOKOTO_SOUTH'),
(721, 'SOKOTO', 'Tambuwal', 'TAMBUWAL'),
(722, 'SOKOTO', 'Tangaza', 'TANGAZA'),
(723, 'SOKOTO', 'Tureta', 'TURETA'),
(724, 'SOKOTO', 'Wamako', 'WAMAKO'),
(725, 'SOKOTO', 'Wurno', 'WURNO'),
(726, 'SOKOTO', 'Yabo', 'YABO'),
(727, 'TARABA', 'Ardo Kola', 'ARDO_KOLA'),
(728, 'TARABA', 'Bali', 'BALI'),
(729, 'TARABA', 'Donga', 'DONGA'),
(730, 'TARABA', 'Gashaka', 'GASHAKA'),
(731, 'TARABA', 'Gassol', 'GASSOL'),
(732, 'TARABA', 'Ibi', 'IBI'),
(733, 'TARABA', 'Jalingo', 'JALINGO'),
(734, 'TARABA', 'Karim Lamido', 'KARIM_LAMIDO'),
(735, 'TARABA', 'Kurmi', 'KURMI'),
(736, 'TARABA', 'Lau', 'LAU'),
(737, 'TARABA', 'Sardauna', 'SARDAUNA'),
(738, 'TARABA', 'Takum', 'TAKUM'),
(739, 'TARABA', 'Ussa', 'USSA'),
(740, 'TARABA', 'Wukari', 'WUKARI'),
(741, 'TARABA', 'Yorro', 'YORRO'),
(742, 'TARABA', 'Zing', 'ZING'),
(743, 'YOBE', 'Bade', 'BADE'),
(744, 'YOBE', 'Bursari', 'BURSARI'),
(745, 'YOBE', 'Damaturu', 'DAMATURU'),
(746, 'YOBE', 'Fika', 'FIKA'),
(747, 'YOBE', 'Fune', 'FUNE'),
(748, 'YOBE', 'Geidam', 'GEIDAM'),
(749, 'YOBE', 'Gujba', 'GUJBA'),
(750, 'YOBE', 'Gulani', 'GULANI'),
(751, 'YOBE', 'Jakusko', 'JAKUSKO'),
(752, 'YOBE', 'Karasuwa', 'KARASUWA'),
(753, 'YOBE', 'Machina', 'MACHINA'),
(754, 'YOBE', 'Nangere', 'NANGERE'),
(755, 'YOBE', 'Nguru', 'NGURU'),
(756, 'YOBE', 'Potiskum', 'POTISKUM'),
(757, 'YOBE', 'Tarmuwa', 'TARMUWA'),
(758, 'YOBE', 'Yunusari', 'YUNUSARI'),
(759, 'YOBE', 'Yusufari', 'YUSUFARI'),
(760, 'ZAMFARA', 'Anka', 'ANKA'),
(761, 'ZAMFARA', 'Bakura', 'BAKURA'),
(762, 'ZAMFARA', 'Birnin Magaji/Kiyaw', 'BIRNIN_MAGAJI_KIYAW'),
(763, 'ZAMFARA', 'Bukkuyum', 'BUKKUYUM'),
(764, 'ZAMFARA', 'Bungudu', 'BUNGUDU'),
(765, 'ZAMFARA', 'Gummi', 'GUMMI'),
(766, 'ZAMFARA', 'Gusau', 'GUSAU'),
(767, 'ZAMFARA', 'Kaura Namoda', 'KAURA_NAMODA'),
(768, 'ZAMFARA', 'Maradun', 'MARADUN'),
(769, 'ZAMFARA', 'Maru', 'MARU'),
(770, 'ZAMFARA', 'Shinkafi', 'SHINKAFI'),
(771, 'ZAMFARA', 'Talata Mafara', 'TALATA_MAFARA'),
(772, 'ZAMFARA', 'Chafe', 'CHAFE'),
(773, 'ZAMFARA', 'Zurmi', 'ZURMI');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `school_id` varchar(255) NOT NULL,
  `school_name` varchar(255) NOT NULL,
  `about` varchar(500) NOT NULL,
  `image` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `number`, `school_id`, `school_name`, `about`, `image`, `facebook`, `twitter`) VALUES
(1, 'Faith Peter', '08938828982', 'KINGSOLOMON', 'King Solomon International School', '<p>sdvdsdbfvmfnbcb cvb n nvfnvfmnmnfbfbfvbjfbvjgsbjjdbfjdjfjskbdfkjsbdjfbsfksnsnksurhhrjhuherehrinjrnmnvnv<br></p>', 'members-photo/KINGSOLOMON-2018-09-24-24231-admin-user-login.png', 'plutado', 'plutado'),
(2, 'Faith Peter', '3180270406', 'CHRIST_ONITSHA', 'Christ The King College Onitsha', '<p>\r\nThank you for shopping on Jumia, Nigeriaâ€™s No.1 shopping destination!<br> Please enter your order number and email to know the status of your order. <br>If you do not know your order number, please check your <br>order confirmation email or click on "MY ORDERS" on the left.\r\n\r\n<br></p>', 'members-photo/CHRIST_ONITSHA-2019-03-11-154654-avatar-372-456324.png', 'plutado', 'plutado'),
(3, 'Wisdom Osinachi', '2102112122', 'CHRIST_ONITSHA', 'Christ The King College Onitsha', '<p>\r\n</p><pre>NextEvent is a library of corporate and business templates with predefined web elements which helps you to build your</pre>\r\n\r\n<br><p></p>', 'members-photo/CHRIST_ONITSHA-2019-03-11-580041-avatar-373-456325.png', 'plutado', 'plutado'),
(4, 'kenechukwu okeke', '0819000000', 'SUSU_COLLEGE', 'SUSU COLLEGE', '<p>\r\nWant to read a foreign language website in your native language? Google \r\nTranslate can help you with that. And itâ€™s not just single web pages, \r\neither. You can browse an entire website in the chosen language, and \r\neven change languages as you browse\r\n\r\n<br></p>', 'members-photo/SUSU_COLLEGE-2019-09-23-696684-Default-avatar.jpg', 'john', 'john');

-- --------------------------------------------------------

--
-- Table structure for table `napps_schools`
--

CREATE TABLE `napps_schools` (
  `id` int(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `school_address` varchar(255) NOT NULL,
  `school_url` varchar(255) NOT NULL,
  `school_motto` varchar(255) NOT NULL,
  `school_note` varchar(255) NOT NULL,
  `school_id` varchar(255) NOT NULL,
  `school_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `napps_schools`
--

INSERT INTO `napps_schools` (`id`, `image`, `school_address`, `school_url`, `school_motto`, `school_note`, `school_id`, `school_name`) VALUES
(16, 'SOLEC_ADMIN-2017-02-01-963003-ms-immersion.jpg', 'UGWASA NSUGBE, NSUGBE, Anambra,', '-', 'FOR GOD AND TRUTH', ' -', 'SOLEC_ADMIN', 'INTERNATIONAL MODEL COMPREHENSIVE COLLEGE'),
(17, 'SOLEC_ADMIN-2017-02-01-901522-ms-immersion.jpg', 'ABATA NSUGBE, NSUGBE, Anambra,', '-', 'KNOWLEDGE IS POWER', ' -', 'SOLEC_ADMIN', 'CHUKWUNONYE GROUP OF SCHOOLS'),
(18, 'SOLEC_ADMIN-2017-02-01-796692-ms-immersion.jpg', 'No 9 Nkisi Aroli Inland Town, Onitsha, Anambra, ', '-', 'Global knowledge for excellence', '- ', 'SOLEC_ADMIN', 'Liberty Nursery and Primary School'),
(19, 'SOLEC_ADMIN-2017-02-01-32989-ms-immersion.jpg', 'Ifitedunu-Dunukofia L.G.A, Awka, Anambra, ', '-', 'Excellence through Diligence', ' Peter marist schools started in 2009 with nursery and primary school and later the secondary section started and was approved in 2012 .Peter marist schools has also been approved for senior WAEC/NECO examinations from 2016/2017 academic session. ', 'SOLEC_ADMIN', 'Peter Marist School'),
(20, 'SOLEC_ADMIN-2017-02-01-44507-ms-immersion.jpg', '2 EZEONWA RD. UMUONYIAGWU EGBEMA OZUBULU, EGBEMA OZUBULU, Anambra, ', '-', 'WITH GOD ALL THINGS ARE POSSIBLE', ' A CITADEL OF TRAINING FUTURE LEADER ', 'SOLEC_ADMIN', 'PECULIAR GROUP OF SCHOOLS EGBEMA OZUBULU'),
(21, 'SOLEC_ADMIN-2017-02-01-150683-ms-immersion.jpg', 'K/M 5 ONITSHA-ATANI ROAD, OKOTI-ODEKPE, ODEKPE, Anambra, ', '-', 'KNOWLEDGE IS POWER,SERVICE TO HUMANITY', ' -', 'SOLEC_ADMIN', 'GOD\'SWILL INTERNATIONAL SCHOOLS'),
(22, 'SOLEC_ADMIN-2017-02-01-683221-ms-immersion.jpg', 'Iruowelle Village, Awka Etiti.Idemili South L.G.A Anambra State, Awka Etiti, Anambra, ', '-', 'Arise and Shine.', ' The school comprises of nursery,primary and secondary sections with good labs and some recreational facilities. it has good teachers and had been winning lawrels in local and state quiz competitions as well as in sports. it is the school for champions. ', 'SOLEC_ADMIN', 'Glory Group of Schools'),
(23, 'SOLEC_ADMIN-2017-02-01-448560-ms-immersion.jpg', 'Ogboro Umunwaji Onitsha Owerre Road, Ihiala, Anambra, ', '-', 'knowledge is Power', 'We give children best learning and we give them spiritually,physically,socially and otherwise ', 'SOLEC_ADMIN', 'Saviour N/P School'),
(24, 'SOLEC_ADMIN-2017-02-01-901789-ms-immersion.jpg', 'UPSS CLOSE ODUDA NNEWICHI, NNEEWI, Anambra, ', '-', 'ACADEMIC EXCELLENCE AND MORAL', ' A.K.A YOUTH DEVELOPMENT CENTER ', 'SOLEC_ADMIN', 'UNIVERSITY PREPARATORY SECONDARY SCHOOL'),
(25, 'SOLEC_ADMIN-2017-02-01-806588-ms-immersion.jpg', 'No8 Oduwanu Street Fegge, Onitsha, Anambra, ', '-', 'qualitative education for great achievements', ' 2007, September ', 'SOLEC_ADMIN', 'Greater Heights School'),
(26, 'SOLEC_ADMIN-2017-02-01-704442-ms-immersion.jpg', 'Onono Umuikwu-Anam, Anam, Anambra, ', '-', 'Voyage Into Light', 'The school is the first private secondary school in the L.G.A. It is set up in 2004 to help farmers in the area train their children.  ', 'SOLEC_ADMIN', 'Great Sailor International Secondary School,Onono'),
(27, 'SOLEC_ADMIN-2017-02-01-946550-ms-immersion.jpg', 'ISSEKE STREET AKPAKA G.R.A PHASE 2, ONITSHA, Anambra, ', '-', 'NURTURE TO ACCOMPLISH', 'ACTUS DEI MEANING THE ACT OF GOD. PARENTS AND TEACHERS DO NURTURE CHILDREN BUT ONLY GOD CAN NURTURE CHILDREN TO ACHIEVE EXCELLENCE FOR UNLESS THE LORD BUILDS A HOUSE, THE WORKMEN LABOURETH IN VAIN  ', 'SOLEC_ADMIN', 'ACTUS DEI INTERNATIONAL SCHOOL'),
(28, 'SOLEC_ADMIN-2017-02-01-376850-ms-immersion.jpg', 'EZEBAZU ICHIDA ANAOCHA L.G.A, ICHIDA, Anambra, ', '-', 'EDUCATION IS THE BEST LEGACY', 'God\'s Kings International was established by God and God has been the strength of the school, with high level standard education.  ', 'SOLEC_ADMIN', 'GOD\'S KINGS INTERNATIONAL SCHOOL'),
(29, 'SOLEC_ADMIN-2017-02-01-970958-ms-immersion.jpg', 'G.R.A Awka, Awka, Anambra, ', '-', 'Learining with smiles', ' Education is power : key into this child education and be powerful. ', 'SOLEC_ADMIN', 'Christ\'s Kinder World School'),
(30, 'SOLEC_ADMIN-2017-02-01-548269-ms-immersion.jpg', 'federal housing estate(idokoroad)33, Onitsha, Anambra,', 'www.onwardsecondaryschool.com', 'Building the Nation', ' The vision of the school is to build up our feature generation with education and fear of God built with sound moral value.', 'SOLEC_ADMIN', 'Onward Schools'),
(31, 'SOLEC_ADMIN-2017-02-01-269048-ms-immersion.jpg', 'BECWISE STREET ABATA-NSUGBE, NSUGBE, Anambra, ', '-', 'Knowledge is Power', ' God is Great school is well built wit round fence and gate. It is a registered school. ', 'SOLEC_ADMIN', 'GOD IS GREAT SCHOOL'),
(32, 'SOLEC_ADMIN-2017-02-01-448217-ms-immersion.jpg', 'Nnewi Ichi nnewi, nnewi, Anambra, ', '-', 'awareness,curiosity and compassion', ' Fountain of knowledge model school nnewi is established in the year 1991. We have standard laboratory equipment, library and computer department with capable qualified teachers in all the school i.e cresche, nursery, primary and secondary section. ', 'SOLEC_ADMIN', 'fountain of knowledge model school'),
(33, 'SOLEC_ADMIN-2017-02-01-398842-ms-immersion.jpg', 'Obinabo Village, Nkpologwu Aguata, Aguata, Anambra, ', '-', 'Knowledge is power', '- ', 'SOLEC_ADMIN', 'Premier Comprehensive Secondary School Nkpologwu'),
(34, 'SOLEC_ADMIN-2017-02-02-379949-ms-immersion.jpg', 'No. 9 Emmanuel Church Road, Inland Town Onitsha, Onitsha, Anambra, ', '-', 'Learning is the key, Knowledge is power', 'Evergreen School was founded in 2012, with a mission of giving the children a qualitative education for academic excellence and to be authentic in the society  ', 'SOLEC_ADMIN', 'EVERGREEN NURSERY AND PRIMARY SCHOOL'),
(35, 'SOLEC_ADMIN-2017-02-02-604773-ms-immersion.jpg', 'No7 Onwudiwe Street., Onitsha, Anambra, ', '-', 'Knowledge is Power', ' Truth is life was established in the year 2005 through divine revelation.God told me to open a school and that he would be their to back me up. since this school began, God has been proving himself faithful.', 'SOLEC_ADMIN', 'Truth is Life Nursery and Primary School'),
(36, 'SOLEC_ADMIN-2017-02-02-851013-ms-immersion.jpg', 'No4 Nwangwo Street Ogbo, Agbo Village Akpo Aguata L.G.A Anambra, Anambra, ', '-', 'Hardwork and Fear of God', 'the school was established in 1986 and was approved in 1990 came out 1st position in 2015 Cowbell Mathematics Competition  ', 'SOLEC_ADMIN', 'Acada Industrial Training Institute Akpo'),
(37, 'SOLEC_ADMIN-2017-02-02-255105-ms-immersion.jpg', 'Umuchu, Umuchu, Anambra, ', '-', 'Knowledge is Light', ' God\'s Own Secondary School Umuchu Ebeano is a place for Quality Education. We Teach but God Educate ', 'SOLEC_ADMIN', 'God\'s Own Secondary School'),
(38, 'SOLEC_ADMIN-2017-02-02-137983-ms-immersion.jpg', 'Amakwa Ozubulu, Ozubulu, Anambra, ', '-', 'Knowledge is Power', 'The Foundation Nursery and Primary School was open 30th august, 1993. The school is located in ugwu orie market. The school is known for excellence moral and academic  ', 'SOLEC_ADMIN', 'Foundation Nursery and Primary School Amakwa Ozubulu'),
(39, 'SOLEC_ADMIN-2017-02-02-987495-ms-immersion.jpg', 'No, 21 Nnobi Road, Nnewi, Anambra, ', 'www.dralutuschools.com', 'Discipline in Excellence', ' Dr Alutu\'s college of excellence and computer studies began as a remedia school in 1984, the computer section came into existence in 1999, while the nur/pri began 2011. ever since then, our outstanding results have affested to our proficiency. ', 'SOLEC_ADMIN', 'Dr Alutu\'s College of Excellence and Computer Studies'),
(40, 'SOLEC_ADMIN-2017-02-02-749453-ms-immersion.jpg', 'OFF ANIEBONAM STREET AFTER UKWU MANGO NKA NSUGBE, NSUGBE, Anambra, ', '-', 'BUILDING AND NURTURING TALENTS FOR THE FUTURE', '- ', 'SOLEC_ADMIN', 'BLOOM GOLD ACADEMY'),
(41, 'SOLEC_ADMIN-2017-02-02-821313-ms-immersion.jpg', 'Nnewi Ichi, Nnewi Ichi, Anambra, ', '-', 'Academic Strength is Success', '- ', 'SOLEC_ADMIN', 'Goldengate International School,N/P School'),
(42, 'SOLEC_ADMIN-2017-02-02-359425-ms-immersion.jpg', 'federal college of education(tech)permisite road, nsogwu-umunze, Umunre,Orumba South, Anambra, ', '-', 'Let your effort throughly reflect your ability', '- ', 'SOLEC_ADMIN', 'Beati Mundo Corde College Umunze'),
(43, 'SOLEC_ADMIN-2017-02-02-109958-ms-immersion.jpg', 'Wolo Agbalaka Otuocha, Otuocha, Anambra, ', '-', 'determination key to success', ' It was founded in 2005 by Divine Revelation as a missionary school to provide sound spiritual and academy life of the children ', 'SOLEC_ADMIN', 'Divine Grace Christian Schools'),
(44, 'SOLEC_ADMIN-2017-02-02-938297-ms-immersion.jpg', 'UMUDIOKA AWKA, AWKA, Anambra, ', '-', 'THE GREAT ACADEMY', ' My school is a great school and we are known for academic excellence. We train children with the fear of God and we inculcate good manners ', 'SOLEC_ADMIN', 'TRUELIGHT ACADEMY NURSERY AND PRIMARY SCHOOL'),
(45, 'SOLEC_ADMIN-2017-02-02-477643-ms-immersion.jpg', '13 UDODI CRESCENT, OMAGBA PHASE 2, ONITSHA, Anambra, Nigeria. ', 'www.learningfieldschool.com', 'BLAZING THE TRAIL IN ACADEMIC EXCELLENCE!!!', ' f Premium educational services are what you seek, look no further than learning Field International Schools.\r\n\r\nWe are a mixed school with boarding facilities and Excellent school bus services. Our three current campuses, are located in the heart of the ', 'SOLEC_ADMIN', 'LEARNING FIELD INTERNATIONAL SCHOOLS'),
(46, 'SOLEC_ADMIN-2017-02-02-626897-learning-field.jpg', '13 UDODI CRESCENT, OMAGBA PHASE 2, ONITSHA, Anambra, Nigeria. ', 'www.learningfieldschool.com', 'BLAZING THE TRAIL IN ACADEMIC EXCELLENCE!!!', ' f Premium educational services are what you seek, look no further than learning Field International Schools.\r\n\r\nWe are a mixed school with boarding facilities and Excellent school bus services. Our three current campuses, are located in the heart of the ', 'SOLEC_ADMIN', 'LEARNING FIELD INTERNATIONAL SCHOOLS'),
(47, 'SOLEC_ADMIN-2017-02-02-785900-ms-immersion.jpg', 'Ezinifite Okpuno Awka, Ezinifite Okpuno Awka, Anambra, ', '-', 'In God We Trust', ' my vision and passion is to train and teach young stars to achieve their goal in life. ', 'SOLEC_ADMIN', 'Dynamite International School Okpuno'),
(48, 'SOLEC_ADMIN-2017-02-02-528607-ms-immersion.jpg', 'UDABOH UMUERI, UMUERI, Anambra,', '', 'FOUNDATION FOR GRTEATER MIND', ' ', 'SOLEC_ADMIN', 'BEST FOUNDATION SCHOOLS'),
(49, 'SOLEC_ADMIN-2017-02-02-95919-ms-immersion.jpg', 'Km 1 Onitsha Owerri Road, Onitsha , Onitsha, Anambra, ', '', 'Foundation For Future Leaders', ' The School Was established in 1996, its situated in a conducive environment. It has nursery, primary and secondary with qualified and dedicated teachers ', 'SOLEC_ADMIN', 'Holy Child International Schools , Onitsha'),
(50, 'SOLEC_ADMIN-2017-02-02-308721-ms-immersion.jpg', 'Beside Ostoma Filling Station Abagana, Abagana, Anambra', '', 'Knowledge and Virtue', ' The school was established on 2002 by the grace of God and since then till now God has been with us. ', 'SOLEC_ADMIN', 'Thy Kingdom Come N/P School'),
(51, 'SOLEC_ADMIN-2017-02-02-180355-ms-immersion.jpg', 'Akabu Umudiala, Ezinifite,Nnewi South L.G.A, Anambra State, Anambra', '', 'Education for Self Reliance', ' Talent comprehensive secondary school was founded on January 15, 1987. It is a WAEC AND NECO centre. ', 'SOLEC_ADMIN', 'Talent Comprehensive Secondary School'),
(52, 'SOLEC_ADMIN-2017-02-02-700796-ms-immersion.jpg', 'OGUARI NSUGBE, NSUGBE, Anambra', '', 'SOLID FOUNDATION', ' The school was established in 1991. The founder is Late Arch Bishop Stephen Ufoh of Christ True Mission and also the founder of Christ True Mission incoporated Nigeria. The school is academically balance and registered. It is the oldest school in Anambra', 'SOLEC_ADMIN', 'PROGRESSIVE NURSERY AND PRIMARY SCHOOL'),
(56, 'SOLEC_ADMIN-2017-02-02-537167-ms-immersion.jpg', 'AKAMILI-UMUDIM NNEWI, NNEWI NORTH, Anambra', '', 'BUILD UP THE CHILD ON JESUS FOUNDATION', ' The school was established on the 13th of September, 1993. A school where the love of Jesus is real to the children. It is a mother school. Learning is child\'s play with the key of David ', 'SOLEC_ADMIN', 'FRIEND OF FRIENDS SCHOOLS(KINGS KIDS)'),
(57, 'SOLEC_ADMIN-2017-02-02-459512-ms-immersion.jpg', '3b RIDGE ROAD G.R.A ONITSHA, Onitsha, Anambra, ', '', 'THE HIGH FLYERS', ' ', 'SOLEC_ADMIN', 'ASAF SCHOOLS'),
(58, 'SOLEC_ADMIN-2017-02-02-151471-ms-immersion.jpg', 'C/8 & C/9 NIGER BRIDGE LAYOUT HOUSING ESTATE, FEGGE, ONITSHA, Anambra', '', '-', ' ', 'SOLEC_ADMIN', 'KEZZ SCHOOL LIMITED'),
(59, 'SOLEC_ADMIN-2017-02-02-801631-cover1.jpg', 'Opposite Fighter Busstop, Graceland Estatte 3-3 Onitsha No 10 Emeka Nwankpa Street 3-3 Nkwelle, Onitsha, Anambra', 'www.dims.onpsweb.com', 'My Child is My Pride', ' Divine Intervention Model Schools is a well Equipped School with Qualified and certified teachers. It has 2 Campuses and it is Approved for Creche, Nursery, Primary and Secondary Education. ', 'SOLEC_ADMIN', 'Divine Intervention Model Schools'),
(60, 'SOLEC_ADMIN-2017-02-02-663091-cover3.jpg', 'ARABA JUNCTION ,AWKA, AWKA, Anambra', 'www.littleangelawka.onpsweb.com', 'KNOWLEDGE TO THE GLORY OF GOD', ' The school is established on the 6th of September 2010 and well equipped to meet international standard. Classroom environments are vibrant and educationally stimulating with the vision of maximizing potential of each child and bringing out the very best', 'SOLEC_ADMIN', 'LITTLE ANGEL SCHOOLS'),
(61, 'SOLEC_ADMIN-2017-02-02-496255-ms-immersion.jpg', '63 UMUORAOMMA AVENUE AMAENYI, AWKA, Anambra', '', 'EXCELLENCE IN KNOWLEDGE', ' ', 'SOLEC_ADMIN', 'BETHEL PIOTHEL NURSERY AND PRIMARY'),
(62, 'SOLEC_ADMIN-2017-02-02-416525-cover3.jpg', '85 Nwangene Avenue Housing Estate, Fegge Onitsha, Anambra', 'www.estatemodel.onpsweb.com', 'Education For Self-Reliance', ' The journey that started 20 years ago has yielded a formidable fruit, precisely, Estate Secondary School started at No. G85 Nwangene, Fegge, Onitsha on the 9th day of January, 1989 with 52 students and teachers. It was founded by Sir Ignatius C. Egbugobi', 'SOLEC_ADMIN', 'Estate Secondary School'),
(63, 'SOLEC_ADMIN-2017-02-02-722031-ms-immersion.jpg', 'No1 Charism Mission Road, Iyi-Owa, Odekpe, Anambra State, Anambra', '', 'Wisdom,Knowledge and Power', ' Charisma International School is a missionary orented school. it was a root from Charisma Missionary Seminary Onitsha. it was approved on january 2013 by Ministry of Education Awkwa.Total being is equiped. ', 'SOLEC_ADMIN', 'Charisma International School Odekpe'),
(64, 'SOLEC_ADMIN-2017-02-02-379831-ms-immersion.jpg', 'PLOT 376 ABATA NSUGBE, NSUGBE, Anambra', '', 'SELF REALIZATION', ' Great Creation International School was established on the 12th of February 2012. It is located in an serene environment .Classes obtainable are Creche, nursery, primary and secondary school. ', 'SOLEC_ADMIN', 'GREAT CREATION INTERNATIONAL SCHOOL'),
(65, 'SOLEC_ADMIN-2017-02-02-917597-ms-immersion.jpg', '21/23 ACHA STREET,IYIOWA-ODEKPE, ONITSHA, Anambra', '', 'AUXILIUM AB ALTO', ' The school started in 1999 as nursery and primary school while the secondary came on stream in September 2000. Since inception ,the school have witnessed success, hence the accreditation for external exams including WASSCE, NECO and GCE ', 'SOLEC_ADMIN', 'OUR LADY OF GRACE INTERNATIONAL SCHOOL'),
(66, 'SOLEC_ADMIN-2017-02-02-637673-ms-immersion.jpg', 'No, 3a Ugwunobankpa by mba road onitsha, Onitsha, Anambra', '', 'Knowledge for self development and service', ' Nezville Academy Onitsha was founded in September2012 as a result of deep passion for quality education for pupils in pre-school and primary, with the objective of building pupils for sound academic excellence. ', 'SOLEC_ADMIN', 'NEZVILLE ACADEMY ONITSHA'),
(67, 'SOLEC_ADMIN-2017-02-02-233741-ms-immersion.jpg', '15 BISHOP STREET ABATA NSUGBE, NSUGBE, Anambra', '', 'TO BECOME THE BEST BY GOD\'S GRACE', ' THE BEST FUTURE SCHOOLS WAS ESTABLISHED BY GOD FOR MAXIMUM IMPACT ON THIS GENERATION. THE INCEPTION DATE WAS ON 7TH SEPTEMBER 2015. WE ARE HERE TO TAKE CHARGE BECAUSE GOD IS OUR DIRECTOR. ', 'SOLEC_ADMIN', 'THE BEST FUTURE SCHOOLS'),
(68, 'SOLEC_ADMIN-2017-02-02-717365-ms-immersion.jpg', 'Okpuno Uruagu Nnewi, Nnewi, Anambra', '', 'Arise and Shine', ' A school with great difference,bringing up moral and academic giants,in an encouraging and noiseless environment with our qualified,experienced staff.we care,nurture and build the child independently to be reliable and unshakable pillars of their family ', 'SOLEC_ADMIN', 'Holy Innocent N/P Secondary School'),
(69, 'SOLEC_ADMIN-2017-02-06-123289-ms-immersion.jpg', '11 ALOR STREET, NKPOR, Anambra', '', 'EXCELLENCE THROUGH HARDWORK', ' Ideal mind foundation school was established on the 19th of August 1991 with only a handful of nursery and primary. Today we have nursery , primary and secondary . ', 'SOLEC_ADMIN', 'IDEAL MINDS FOUNDATION SCHOOOL');

-- --------------------------------------------------------

--
-- Table structure for table `napps_users`
--

CREATE TABLE `napps_users` (
  `user_id` int(20) NOT NULL,
  `prop_name` varchar(255) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_pass` varchar(100) NOT NULL,
  `school_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `napps_users`
--

INSERT INTO `napps_users` (`user_id`, `prop_name`, `user_name`, `user_email`, `user_pass`, `school_id`) VALUES
(3, 'Solec Netlinks', 'Solec', 'info@solecnetlinks.com', '@solec', 'SOLEC_ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `school_id` varchar(255) NOT NULL,
  `school_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `date`, `school_id`, `school_name`) VALUES
(4, 'MONTLY VISITING DAY', '<p>\r\nFrom the inception of the school to date, its mission has been to \r\npostively affect the academic and moral life style of children such that\r\n kids who are written off by other schools are made to become geniuses \r\nand equally make them shine as ligh', '', 'ROYAL_AMBASSADORS', 'Royal Ambassador Foundation Schools'),
(5, 'MONTLY VISITING DAY', '<p>\r\nThank you for your interest in Royal Ambassadors Foundation Schools \r\nwebsite. Know about our vision , mission and beliefs.\r\n                        We believe you will not regret sending your \r\nwards to attend our school. We are founded on strong mo', '', 'ROYAL_AMBASSADORS', 'Royal Ambassador Foundation Schools'),
(6, 'Build a school in Africa', '<p>\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It \r\nhas roots in a piece of classical Latin literature from 45 BC, making it\r\n over 2000 years old. Richard McClintock, a Latin professor at \r\nHampden-Sydney College in Virginia, loo', '', 'CHRIST_ONITSHA', 'Christ The King College Onitsha'),
(7, 'FULL BODY EXAMPLES', '<p>\r\n</p><h4>You have not published any news yet</h4><p></p>', '', 'SUSU_COLLEGE', 'SUSU COLLEGE');

-- --------------------------------------------------------

--
-- Table structure for table `principals`
--

CREATE TABLE `principals` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `image` varchar(200) NOT NULL,
  `school_id` varchar(255) NOT NULL,
  `school_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `principals`
--

INSERT INTO `principals` (`id`, `name`, `number`, `duration`, `image`, `school_id`, `school_name`) VALUES
(1, 'Faith Peter', '0816736772726', '1990 t0 2017', 'principals-photo/ear-itching-e14925986655531.jpg', 'KINGSOLOMON', 'King Solomon International School'),
(3, 'Mrs okeh Ngozi', '0929929292929', '1990 t0 2017', 'principals-photo/hallowed-logo.jpg', 'CHRIST_ONITSHA', 'Christ The King College Onitsha'),
(4, 'kenechukwu okeke', '081700000000', 'From 2004 to 2018', 'principals-photo/25-512.png', 'SUSU_COLLEGE', 'SUSU COLLEGE');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `beforeImage` varchar(255) NOT NULL,
  `afterImage` varchar(255) NOT NULL,
  `sessionBegan` varchar(255) NOT NULL,
  `sessionEnded` varchar(255) NOT NULL,
  `school_id` varchar(255) NOT NULL,
  `school_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `beforeImage`, `afterImage`, `sessionBegan`, `sessionEnded`, `school_id`, `school_name`) VALUES
(1, '2018 Solec School Template', 'projects/KINGSOLOMON-249103-medium01.jpg', 'projects/KINGSOLOMON-541322-on-time.jpg', '2010/2011', '2018/2019', 'KINGSOLOMON', 'King Solomon International School'),
(2, 'Rosa Mystica High School, Agulu', 'projects/KINGSOLOMON-670801-1 MIV51QZ53pa4EivnjMxPdg.jpeg', 'projects/KINGSOLOMON-427422-0-Main-vgajic-iStock-627091576-1024x576.jpg', '2011/2012', '2013/2014', 'KINGSOLOMON', 'King Solomon International School'),
(3, 'testings International Schools', 'projects/CHRIST_ONITSHA-807627-event-icon.png', 'projects/CHRIST_ONITSHA-231573-IMG-20171216-WA0002.jpg', '2011/2012', '2011/2012', 'CHRIST_ONITSHA', 'Christ The King College Onitsha'),
(4, 'modern-pos-management-system', 'projects/SUSU_COLLEGE-197946-susu-facebook-banner.jpg', 'projects/SUSU_COLLEGE-428459-61AXHOMdfaL._SL1300_.jpg', '2011/2012', '2012/2013', 'SUSU_COLLEGE', 'SUSU COLLEGE');

-- --------------------------------------------------------

--
-- Table structure for table `school_fees`
--

CREATE TABLE `school_fees` (
  `id` int(100) NOT NULL,
  `student_id` varchar(100) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `session_paid` varchar(100) NOT NULL,
  `student_class` varchar(100) NOT NULL,
  `fees_term` varchar(100) NOT NULL,
  `fees_type` varchar(100) NOT NULL,
  `date_paid` varchar(100) NOT NULL,
  `amount_paid` int(100) NOT NULL,
  `admin_action` varchar(100) NOT NULL,
  `school_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `scratch_card`
--

CREATE TABLE `scratch_card` (
  `id` int(100) NOT NULL,
  `school_id` varchar(255) NOT NULL,
  `card_pin` varchar(255) NOT NULL,
  `card_serial` varchar(255) NOT NULL,
  `card_type` varchar(255) NOT NULL,
  `used` varchar(255) NOT NULL,
  `card_user` varchar(255) NOT NULL,
  `date_used` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `generated_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scratch_card`
--

INSERT INTO `scratch_card` (`id`, `school_id`, `card_pin`, `card_serial`, `card_type`, `used`, `card_user`, `date_used`, `status`, `generated_date`) VALUES
(25, 'CHRIST_ONITSHA', '9187550918240643', 'mfM2YDAB66uQKk', 'Admission', '1', 'CHRIST_ONITSHA/2019/61049', 'Thursday 4th of April 2019 ', 'Active', 'Thursday 28th of March 2019 '),
(26, 'CHRIST_ONITSHA', '4376086403344257', 'kUlJCKaZ0K90eKf', 'Admission', '0', '', '', 'Active', 'Tuesday 2nd of April 2019 '),
(27, 'CHRIST_ONITSHA', '9277545496530943', 'WNJTGBaOZRLOoVR', 'Admission', '0', '', '', 'Active', 'Tuesday 2nd of April 2019 '),
(28, 'CHRIST_ONITSHA', '6258778080512463', '7fV7TNMzUlvjN2F', 'Admission', '0', '', '', 'Active', 'Tuesday 2nd of April 2019 '),
(29, 'CHRIST_ONITSHA', '4529474996490517', 'mCvVaY4zCRIrroO', 'Admission', '0', '', '', 'Active', 'Tuesday 2nd of April 2019 '),
(30, 'CHRIST_ONITSHA', '3089754415164407', 'm9G5btLKFeETbHh', 'Admission', '0', '', '', 'Active', 'Tuesday 2nd of April 2019 '),
(31, 'CHRIST_ONITSHA', '6741370995193638', 'L5W1FQTPSVFA65', 'Admission', '0', '', '', 'Active', 'Tuesday 2nd of April 2019 '),
(32, 'CHRIST_ONITSHA', '1281984455249004', 'RW6AN3N4JLFMU3B', 'Admission', '0', '', '', 'Active', 'Tuesday 2nd of April 2019 '),
(35, 'DMGS', '21985041998', 'GUV5MZC1UDCGIP5', 'Admission', '1', 'DMGS/2019/72211', 'Monday 8th of April 2019 ', 'Active', 'Monday 8th of April 2019 '),
(36, 'DMGS', '66246596704', 'GHMEJM1QEAC5LYI', 'Admission', '0', '', '', 'Active', 'Monday 8th of April 2019 '),
(37, 'DMGS', '47111033367', '33RKXWSKPC4O1C', 'Admission', '0', '', '', 'Active', 'Wednesday 19th of June 2019 '),
(38, 'DMGS', '64579549604', 'MHSK267B72VAOTZ', 'Admission', '0', '', '', 'Active', 'Wednesday 19th of June 2019 ');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `state_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `state_id`) VALUES
(1, 'Abia State', 'ABIA'),
(2, 'Adamawa State', 'ADAMAWA'),
(3, 'Akwa Ibom State', 'AKWA_IBOM'),
(4, 'Anambra State', 'ANAMBRA'),
(5, 'Bauchi State', 'BAUCHI'),
(6, 'Bayelsa State', 'BAYELSA'),
(7, 'Benue State', 'BENUE'),
(8, 'Borno State', 'BORNO'),
(9, 'Cross River State', 'CROSS_RIVER'),
(10, 'Delta State', 'DELTA'),
(11, 'Ebonyi State', 'EBONYI'),
(12, 'Edo State', 'EDO'),
(13, 'Ekiti State', 'EKITI'),
(14, 'Enugu State', 'ENUGU'),
(15, 'FCT', 'FCT'),
(16, 'Gombe State', 'GOMBE'),
(17, 'Imo State', 'IMO'),
(18, 'Jigawa State', 'JIGAWA'),
(19, 'Kaduna State', 'KADUNA'),
(20, 'Kano State', 'KANO'),
(21, 'Katsina State', 'KATSINA'),
(22, 'Kebbi State', 'KEBBI'),
(23, 'Kogi State', 'KOGI'),
(24, 'Kwara State', 'KWARA'),
(25, 'Lagos State', 'LAGOS'),
(26, 'Nasarawa State', 'NASARAWA'),
(27, 'Niger State', 'NIGER'),
(28, 'Ogun State', 'OGUN'),
(29, 'Ondo State', 'ONDO'),
(30, 'Osun State', 'OSUN'),
(31, 'Oyo State', 'OYO'),
(32, 'Plateau State', 'PLATEAU'),
(33, 'Rivers State', 'RIVERS'),
(34, 'Sokoto State', 'SOKOTO'),
(35, 'Taraba State', 'TARABA'),
(36, 'Yobe State', 'YOBE'),
(37, 'Zamfara State', 'ZAMFARA');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) NOT NULL,
  `student_surname` varchar(255) NOT NULL,
  `student_firstname` varchar(255) NOT NULL,
  `student_othernames` varchar(255) NOT NULL,
  `admission_number` varchar(255) NOT NULL,
  `date_of_birth` varchar(255) NOT NULL,
  `religion` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `lga` varchar(255) NOT NULL,
  `home_town` varchar(255) NOT NULL,
  `date_joined` varchar(255) NOT NULL,
  `class_on_admission` varchar(255) NOT NULL,
  `date_left` varchar(255) NOT NULL,
  `last_class` varchar(255) NOT NULL,
  `reason_for_leaving` varchar(255) NOT NULL,
  `subject1` varchar(255) NOT NULL,
  `subject2` varchar(255) NOT NULL,
  `subject3` varchar(255) NOT NULL,
  `subject4` varchar(255) NOT NULL,
  `subject5` varchar(255) NOT NULL,
  `subject6` varchar(255) NOT NULL,
  `subject7` varchar(255) NOT NULL,
  `subject8` varchar(255) NOT NULL,
  `subject9` varchar(255) NOT NULL,
  `external_exam` varchar(255) NOT NULL,
  `academic_ability` varchar(255) NOT NULL,
  `conduct` varchar(255) NOT NULL,
  `extracurr_activities` varchar(255) NOT NULL,
  `responsible_position` varchar(255) NOT NULL,
  `general_remarks` varchar(255) NOT NULL,
  `student_photo` varchar(255) NOT NULL,
  `school_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(20) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_pass` varchar(100) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `user_url` varchar(255) NOT NULL,
  `school_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_pass`, `admin_name`, `user_url`, `school_id`) VALUES
(1, 'littleangel', '@littleangel', 'Little Angels School Awka', '', 'littleangel'),
(2, 'phrankstars', '@phrankstars', 'Phrankstar classic school', '', 'Phrankstars'),
(3, 'blossommillennium', '@blossommillennium', 'Blossom Millennium School', '', 'blossommillennium'),
(4, 'kingsolo', 'kingsolo@2015', 'King Solomon School, Onitsha', '', 'kingsolo'),
(5, 'excellent', '@excellent', 'Excellent Foundation School', '', 'excellent_ogidi'),
(12, 'eaglepower', '@eaglepower', 'Eagle Power School', '', 'Eaglepower'),
(33, 'spssnkporagu', '@spssnkporagu', 'St. Paul Secondary School School Nkpor-Agu', '', 'STPAULS_NKPORAGU'),
(34, 'littleangel', '@littleangel', 'Little Angels School Awka', '', 'littleangel'),
(35, 'pinnacleregent', '@pinnacleregent', 'Pinnacle Regent Schools', '', 'pinnacleregent'),
(36, 'prudence', '@prudence', 'Prudence Comprehensive School', '', 'PRUDENCE'),
(37, 'dimscampus1', '@dimscampus1', 'Divine Intervention Model School Campus1', '', 'DIMS_CAMPUS1'),
(38, 'dimscampus2', '@dimscampus2', 'Divine Intervention Model School Campus2', '', 'DIMS_CAMPUS2'),
(39, 'brightkaduna', '@brightkaduna', 'Bright International School Kaduna', '', 'brightkaduna'),
(40, 'brightonitsha', '@brightonitsha', 'Bright International School Onitsha', '', 'brightonitsha'),
(41, 'brightabuja', '@brightabuja', 'Bright International School Abuja', '', 'brightabuja'),
(42, 'brightenugu', '@brightenugu', 'Bright International School Enugu', '', 'brightenugu'),
(43, 'iisumuahia', 'iis@umuahia', 'Immaculate International Schools', '', 'IMMACULATE_UMUAHIA'),
(44, 'icmaiduguri', 'ic@maiduguri', 'Immaculate College, Maiduguri', '', 'IMMACULATE_MAIDUGURI'),
(45, 'victorymodel', 'victorymodel@2015', 'Victory Int\'l Model School Awada Onitsha North', '', 'VICTORY_MODEL'),
(46, 'bpschoolsawka', 'bpschools@awka', 'Bethel Piothel Schools Awka', '', 'BPSCHOOLS_AWKA'),
(47, 'disokpuno', 'dis@okpuno', 'Dynamite International School Okpuno', '', 'DYNAMITE_OKPUNO'),
(48, 'greatschool', 'great@nsugbe', 'Great Creation International secondary School Abata Nsugbe', '', 'GREAT_CREATION'),
(51, 'creativemodel', '$2y$10$H6YWTcRKrb7r2iIi1IJnGOFjluNlBtXCEIOW2I4AeyyOSH0eq/WuG', 'Creative Model International Schools', 'creativemodelschools.onpsweb.com', 'CREATIVE_ODEKPE'),
(52, 'dpaomagba', '$2y$10$m1ogzAM41fMvUQBNFTMNg.WnDNG8QXk7//92iw/5hrBQB8KANH9Va', 'Divine Precept Academy', 'divineprecept.onpsweb.com', 'DPA_OMAGBA'),
(53, 'bestfuture', '$2y$10$DMGXy9mJZxM99/lD7wvqfOrtQFdcQY3.t6Mg9F8B62RUl6BKmPH6S', 'Best Future Academy', 'bestfutureacademy.onpsweb.com', 'BESTFUTURE_NSUGBE'),
(54, 'pacesetter', '$2y$10$7Ci4wC4qwKBOL6CgFEXY9e/qFRcY7iQUtnPeZqxTuCwRBFzOGX9xe', 'Pace Setters N/P School, Nsugbe', 'pacesetters.onpsweb.com', 'PACESETTER_NSUGBE'),
(55, 'godswill', '$2y$10$7ww/anuhFNgd0x7mSD5BR./o1q/o2ZsjfdNMG2iO6AVluN50yNq0G', 'Gods Will Int\'l Schools', 'godswillinternational.onpsweb.com', 'GODSWILL_ODEKPE'),
(56, 'ccssumunze', '$2y$10$iQVUm2UmPTWhdkQe6ym25OXeKDsIAqI1WR6sW7qoW7VYpPuF9TNaC', 'Calvary Comprehensive Secondary School', 'ccssumunze.onpsweb.com', 'CALVARY_UMUNZE'),
(57, 'rcssonitsha', '$2y$10$4eyILMDLCWx4SYj0weH83.wp9FD6LUZkWJcMRBff80Ezwvuj.2hKK', 'Redeemed Christian Schools', 'redeemed.onpsweb.com', 'RCSS_ONITSHA'),
(59, 'salvation', '$2y$10$1ZF6gwijegIkJhJUNfyneebtjxyc3NnfkLb/fWNB9w3oZXl6OjHb6', 'Salvation Army School', 'http://salvationarmy.onpsweb.com/', 'SALVATION'),
(60, 'fidelityschools', '$2y$10$OU7NVr.QZP3.eJN/fqrEauaba5a88CbGI2UwQQuKaQKlhyh5l2KsS', 'Fidelity Nursery, Primary And Secondary Schools', 'fidelityschools.onpsweb.com', 'FIDELITY_NNEWI'),
(61, 'brightawka', '$2y$10$oQXv9w5PQhFz4AVx91u9c.ZyMd2IDIOqDR8c2.kVJvWUEzxbNM5Xe', 'Bright-Star Academy Ifite', 'brightstaracademy.onpsweb.com', 'BRIGHT_AWKA'),
(62, 'evergreen', '$2y$10$upRRGOv80ccyX2Y05g4zgOyUMmV6nlfTsTx0.McAAsPjDbwEOr4Qq', 'EverGreen Daycare Nursery And Primary School', 'evergreenonitsha.onpsweb.com', 'EVER_GREEN'),
(63, 'ourladyodekpe', '$2y$10$rR/hCglLEkH7S0z5GFVXhuCvhqnPIqu7xfDp3OFVoFgbs6N2N8IVe', 'Our Lady Of Grace International Schools', 'www.ourladyodekpe.onpsweb.com', 'OURLADY_ODEKPE'),
(64, 'stasschool', '$2y$10$/llusc/fG9Kmai1OuSk7kuy7auV/ysU.2PSin9y2sdHRwSLOW4kcK', 'St Thomas Aquinas Seminary Ihitte', 'www.stthomasmbano.onpsweb.com', 'STTHOMAS_MBANO'),
(66, 'nezville', '$2y$10$wm1TsKVOUvsbYuKGA5h3BuqY8zXnSj1zjEYazzh..RxspdknE5DnK', 'Nezville Academy Onitsha', 'www.nezvilleacademy.onpsweb.com', 'NEZVILLE_ACADEMY'),
(67, 'lisonitsha', '$2y$10$hmZOsTq08vKZuhHH8S0Pc.VdUTE3Q29.MjxBrVVshSCMSHRvo2FBK', 'Liberty International School Onitsha', 'libertyschool.onpsweb.com', 'LIBERTY_ONITSHA'),
(68, 'maryknoll', '$2y$10$B5GPjhVwE/ytb3asazYrQOas.Dn2saw6xzRZPZUYnOrGqF84vbMV6', 'Mary Knoll International Schools', 'www.maryknollschools.onpsweb.com', 'MARYKNOLL_NSUGBE'),
(70, 'bgansugbe', '$2y$10$a1AWVGwV82u3yvmRpKojLeVV4OW25ZF2YW7qzfxov2zKVls5yWoeK', 'Bloom Gold Academy Nsugbe', 'www.bloomgoldacademy.onpsweb.com', 'BLOOM_NSUGBE'),
(71, 'divinedestiny', '$2y$10$wGmNUXO/onBvVCjoB4lc2u.QPUQh1XeZz2V/GD5aB/6xLxiwF1f6e', 'Divine Destiny International Acadmy', 'www.divinedestiny.onpsweb.com', 'DIVINE_DESTINY'),
(72, 'zionmission', '$2y$10$Bxwgx9rmhS9Yp1g4bqVOkOPK2zXTSZCT2PkojhNrjb5sRoYIDAob2', 'ZION MISSION SCHOOL ABATA NSUGBE', 'http://zionmission.onpsweb.com/', 'ZION_MISSION'),
(73, 'smschools', '$2y$10$ovwH8bwe9U/oj9KvAr2tHeST5eoG90J.sf74ZzQELnJ.LFtVxR8Ke', 'St Monicas Schools Woliwo Onitsha', 'stmonicasonitsha.onpsweb.com', 'STMONICAS_ONITSHA'),
(74, 'spsamawbia', '$2y$10$Uj3gjIdF6L6mecDA7d5mM.9KxEa74Tgm0HHy.k7E8MxpB95874.bu', 'Samchev Peace Schools Amawbia', 'http://www.samchevschool.onpsweb.com', 'SAMCHEV_AMAWBIA'),
(75, 'spsjikwoyi', '$2y$10$vrjmEpBoY061etoAdTFtkea9Q8mD9mHUeS/mVSjl0rDCkxTLSibs.', 'ST PAUL\\\'S SCHOOL JIKWOYI', 'www.spsjikwoyi.onpsweb.com', 'STPAUL_JIKWOYI'),
(76, 'chischools', '$2y$10$iYIvYGzS184glNhJJEP1Ru7DEoRD0cQ6NF5KJKiN1T6k2FE.XGGma', 'Charles Heerey International  Schools', 'http://charlesheereyschools.onpsweb.com/', 'CHIS_ONITSHA'),
(77, 'meg', '$2y$10$oHpCVWcXncB7kWLDQtsrp.DH2Rc4cvItJDWMC0ETTYElqnafHTUzK', 'Meg International School', 'http://www.meginternationalschools.onpsweb.com', 'MIS'),
(78, 'kingsolomon', '$2y$10$BV1OLcwOAdkP29AN3VNDe.w0UlEginZ94h6.wACj1Y8nh3b7GOlj2', 'King Solomon International School', 'http://kingsolomon.onpsweb.com', 'KINGSOLOMON'),
(80, 'royalschool', '@royalschool', 'Royal Ambassador Foundation Schools', 'http://royalambassadors.onpsweb.com', 'ROYAL_AMBASSADORS'),
(81, 'ckconitsha', '$2y$10$MaCJy34/6z7ycW.waSPGa.JtKLyMB4qpKGZInwharVFhhEZ2Thh2W', 'Christ The King College Onitsha', 'http://ckconitsha.onpsweb.com/', 'CHRIST_ONITSHA'),
(82, 'dmgs', '$2y$10$JRuTD78Tabzk9fwbMjBZi.liNWRNFHPLKRlLjUWM.WObyKAAyOiAe', 'Dennis Memorial Grammar School', 'http://dmgs.donschools.com', 'DMGS'),
(83, 'susucollege', '$2y$10$QnIN6mqS1TzYdQ3JWCqie.nPO.Duke.zgVtEFTzMiMb4GxQnWu31W', 'SUSU COLLEGE', 'http://susucollege.com', 'SUSU_COLLEGE');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(100) NOT NULL,
  `link` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `school_id` varchar(255) NOT NULL,
  `school_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `link`, `description`, `school_id`, `school_name`) VALUES
(2, 'https://youtube.com/embedube.com/watch?v=97wFth-uHVY', 'Kids vocabulary compilation - Words Theme collectionï½œEnglish educational video for kids', 'KINGSOLOMON', 'King Solomon International School'),
(3, 'https://youtube.com/embed/UfmFIEh2QjU', 'Instructions On How To Use', 'CHRIST_ONITSHA', 'Christ The King College Onitsha'),
(4, 'https://youtube.com/embed/i6n_fwLTKIc', 'SUSU COLLEGE', 'SUSU_COLLEGE', 'SUSU COLLEGE');

-- --------------------------------------------------------

--
-- Table structure for table `watch_word`
--

CREATE TABLE `watch_word` (
  `id` int(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `school_id` varchar(255) NOT NULL,
  `school_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watch_word`
--

INSERT INTO `watch_word` (`id`, `content`, `date`, `school_id`, `school_name`) VALUES
(4, '<p><b></b>\r\n</p><h3>We are eager to give you best Education.</h3>\r\n\r\n<b></b><br><p></p><br>', 'Wednesday 17th of October 2018 ', 'ROYAL_AMBASSADORS', 'Royal Ambassador Foundation Schools');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admission_info`
--
ALTER TABLE `admission_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locals`
--
ALTER TABLE `locals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `napps_schools`
--
ALTER TABLE `napps_schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `napps_users`
--
ALTER TABLE `napps_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `principals`
--
ALTER TABLE `principals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_fees`
--
ALTER TABLE `school_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scratch_card`
--
ALTER TABLE `scratch_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `admission_number` (`admission_number`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `watch_word`
--
ALTER TABLE `watch_word`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admission_info`
--
ALTER TABLE `admission_info`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `napps_schools`
--
ALTER TABLE `napps_schools`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `napps_users`
--
ALTER TABLE `napps_users`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `principals`
--
ALTER TABLE `principals`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `school_fees`
--
ALTER TABLE `school_fees`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `scratch_card`
--
ALTER TABLE `scratch_card`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `watch_word`
--
ALTER TABLE `watch_word`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;--
-- Database: `sendmail`
--