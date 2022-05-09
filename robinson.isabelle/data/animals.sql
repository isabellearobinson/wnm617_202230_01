-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 04, 2022 at 04:00 PM
-- Server version: 5.6.51-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `irproducts`
--

-- --------------------------------------------------------

--
-- Table structure for table `animals`
--

CREATE TABLE `animals` (
  `id` int(13) NOT NULL,
  `user_id` int(13) NOT NULL,
  `name` varchar(64) NOT NULL,
  `breed` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `animals`
--

INSERT INTO `animals` (`id`, `user_id`, `name`, `breed`, `description`, `img`, `date_create`) VALUES
(1, 29, 'Zerology', 'poodle', 'Proident consequat quis officia commodo tempor. Id esse non id laboris sint. Fugiat consequat veniam officia mollit aliquip proident ea fugiat ut. Mollit proident veniam voluptate excepteur eu duis proident eu proident ut.', 'https://via.placeholder.com/400/742/fff/?text=Zerology', '2022-02-12 04:09:07'),
(2, 19, 'Mediot', 'pitbull', 'Sit esse labore laborum sunt mollit non consequat eu irure nulla consectetur amet. Laboris ea nisi duis commodo commodo ipsum enim deserunt. Incididunt id cupidatat amet id sunt est cupidatat nostrud dolore. Ex reprehenderit nostrud commodo elit pariatur.', 'https://via.placeholder.com/400/799/fff/?text=Mediot', '2022-04-27 11:31:11'),
(3, 6, 'Aquasure', 'schnauzer', 'Nisi incididunt cillum sint duis duis sit laboris consequat pariatur est duis veniam sit. In nulla cupidatat eu minim veniam amet duis sit pariatur cillum. Minim exercitation voluptate dolore sint sint exercitation ut quis laborum cillum non. Aliquip sit tempor in exercitation ea cillum qui aliquip cillum consectetur deserunt culpa pariatur consequat.', 'https://via.placeholder.com/400/721/fff/?text=Aquasure', '2022-04-04 05:04:50'),
(4, 25, 'Jimbies', 'poodle', 'Irure aliquip ea sunt officia eiusmod labore do deserunt. Est minim fugiat non laboris dolor do do aliquip officia do irure proident aliquip. Consectetur cupidatat exercitation sit id dolore exercitation non duis. Elit velit reprehenderit enim aliquip cillum reprehenderit deserunt excepteur mollit pariatur.', 'https://via.placeholder.com/400/933/fff/?text=Jimbies', '2022-04-09 06:50:10'),
(5, 14, 'Applideck', 'golden retriever', 'Elit sint minim ex duis cupidatat sint eu ex deserunt. Do ut culpa id Lorem labore nostrud ea aliqua enim ad do veniam laboris. Minim dolor cillum exercitation adipisicing laborum ut amet. Voluptate anim aliqua veniam nulla excepteur anim.', 'https://via.placeholder.com/400/938/fff/?text=Applideck', '2022-04-09 10:52:00'),
(6, 49, 'Zilla', 'poodle', 'Eu magna laboris in velit. Et non qui labore velit nostrud laboris labore anim enim. In adipisicing deserunt esse nisi voluptate aliquip ipsum consequat Lorem occaecat eu sunt commodo. Aliqua adipisicing exercitation non commodo consequat labore dolor do ex ea eu magna fugiat cillum.', 'https://via.placeholder.com/400/760/fff/?text=Zilla', '2022-03-02 07:57:42'),
(7, 7, 'Quiltigen', 'poodle', 'Nisi irure mollit aliqua consectetur et qui officia. Deserunt proident Lorem culpa cillum ipsum ea mollit veniam do pariatur ex. Consequat dolor ea anim veniam fugiat occaecat elit labore. Labore aliqua occaecat excepteur incididunt magna qui minim nostrud deserunt id.', 'https://via.placeholder.com/400/839/fff/?text=Quiltigen', '2022-03-02 02:01:30'),
(8, 20, 'Krog', 'pitbull', 'Lorem reprehenderit id deserunt ipsum enim id voluptate. Consectetur veniam ad eiusmod consectetur velit ex qui voluptate excepteur. Minim esse consectetur eiusmod sit cupidatat eiusmod irure sunt cillum occaecat pariatur ex magna quis. Cillum consequat aliquip sunt eu eu.', 'https://via.placeholder.com/400/744/fff/?text=Krog', '2022-03-23 09:08:08'),
(9, 46, 'Corporana', 'schnauzer', 'Excepteur nisi exercitation veniam elit minim labore. Et ad dolor consectetur minim in do commodo elit in commodo aliqua nostrud ipsum. Officia est excepteur velit amet labore dolore. Duis ipsum fugiat laborum tempor qui Lorem elit nulla do magna anim enim anim.', 'https://via.placeholder.com/400/832/fff/?text=Corporana', '2022-03-20 07:49:42'),
(10, 6, 'Columella', 'pitbull', 'Qui consequat amet duis velit laboris ullamco laborum ea. Excepteur sunt reprehenderit Lorem anim. Magna laborum proident laboris do sit incididunt Lorem consectetur. Consectetur dolor anim tempor anim non.', 'https://via.placeholder.com/400/887/fff/?text=Columella', '2022-03-27 04:04:59'),
(11, 27, 'Squish', 'poodle', 'Dolor tempor ea cupidatat ipsum non. Ad eiusmod incididunt do fugiat sint culpa enim esse reprehenderit laborum officia. Consequat veniam consequat aute nostrud. Eu in deserunt ad ea ex fugiat sit esse culpa.', 'https://via.placeholder.com/400/830/fff/?text=Squish', '2022-04-08 01:20:03'),
(12, 25, 'Ziggles', 'pitbull', 'Dolore proident laborum consectetur occaecat adipisicing enim. Ad labore et eiusmod officia magna aute sunt duis fugiat exercitation adipisicing. Enim minim proident aliquip nisi do ea anim nisi officia dolor consectetur. Incididunt duis sint minim cillum ex Lorem laboris ipsum deserunt ad minim nostrud laborum pariatur.', 'https://via.placeholder.com/400/987/fff/?text=Ziggles', '2022-04-18 01:53:20'),
(13, 6, 'Geekology', 'golden retriever', 'Ut ullamco mollit magna quis quis cupidatat consequat reprehenderit cupidatat qui officia culpa reprehenderit. Velit excepteur elit exercitation pariatur amet sint ullamco voluptate commodo velit. Quis adipisicing occaecat irure irure id exercitation est anim dolore ullamco elit laborum id deserunt. Labore exercitation elit proident duis esse sint laboris cupidatat.', 'https://via.placeholder.com/400/903/fff/?text=Geekology', '2022-02-16 12:45:27'),
(14, 6, 'Pulze', 'golden retriever', 'Eiusmod culpa veniam deserunt tempor qui occaecat deserunt. Cillum exercitation esse excepteur eiusmod nostrud occaecat dolore. Enim culpa sint est sunt esse aliquip Lorem nostrud consequat minim nisi. Pariatur eu Lorem irure ad voluptate cillum proident voluptate et incididunt.', 'https://via.placeholder.com/400/919/fff/?text=Pulze', '2022-04-12 11:03:41'),
(15, 13, 'Mantro', 'schnauzer', 'Voluptate pariatur id pariatur est. Ullamco amet laboris eiusmod laborum. Eu ex dolore laborum aute deserunt consequat excepteur laboris ullamco. Ad mollit duis voluptate tempor sit est ut in.', 'https://via.placeholder.com/400/834/fff/?text=Mantro', '2022-04-17 08:56:40'),
(16, 27, 'Comtrak', 'poodle', 'Exercitation dolor deserunt commodo velit magna nulla. Pariatur sit incididunt cillum aute deserunt enim mollit aute ipsum aliqua ad. Qui veniam ex sint magna sint culpa dolor amet aliquip adipisicing labore ipsum officia. Est dolore laborum proident sunt sit nisi veniam commodo ex ut esse id consectetur laborum.', 'https://via.placeholder.com/400/851/fff/?text=Comtrak', '2022-04-30 01:51:47'),
(17, 5, 'Digial', 'poodle', 'Voluptate excepteur consequat labore velit enim reprehenderit ut reprehenderit mollit sunt nisi laborum id. Commodo ex est consectetur eiusmod sit qui cupidatat minim veniam commodo ex eu magna. Non amet commodo esse id nostrud nisi ad. Irure ad commodo magna nisi Lorem nisi quis.', 'https://via.placeholder.com/400/862/fff/?text=Digial', '2022-04-12 04:46:01'),
(18, 22, 'Renovize', 'golden retriever', 'Et in eu fugiat adipisicing qui fugiat et esse ut. Dolore pariatur ad laboris excepteur aliquip. Nisi elit voluptate velit fugiat. Ut exercitation ullamco eu aliqua dolor esse ullamco deserunt nulla minim nisi amet.', 'https://via.placeholder.com/400/756/fff/?text=Renovize', '2022-04-14 09:29:17'),
(19, 35, 'Plasto', 'poodle', 'Eu deserunt eiusmod officia minim. Veniam Lorem cupidatat Lorem elit. Incididunt aliqua eu laboris veniam. Culpa duis eiusmod reprehenderit proident ea duis qui nulla labore.', 'https://via.placeholder.com/400/996/fff/?text=Plasto', '2022-03-27 05:03:46'),
(20, 32, 'Protodyne', 'golden retriever', 'Veniam non reprehenderit deserunt ipsum consectetur quis ullamco eiusmod eiusmod ullamco id. Voluptate ullamco exercitation reprehenderit cupidatat minim non elit ad. Irure ullamco est elit veniam ad aute velit ex ad excepteur excepteur. Eiusmod ex id ut ex sunt fugiat nulla ex proident esse aliqua tempor.', 'https://via.placeholder.com/400/939/fff/?text=Protodyne', '2022-03-21 05:28:45'),
(21, 50, 'Entroflex', 'poodle', 'Laborum culpa voluptate sunt anim aute id quis eiusmod incididunt commodo sunt officia sunt cillum. Aliqua adipisicing in consectetur cillum ut veniam sunt. Ullamco minim anim culpa ex quis reprehenderit enim quis eu aliqua adipisicing non. Lorem est reprehenderit aliquip ut deserunt do cillum.', 'https://via.placeholder.com/400/710/fff/?text=Entroflex', '2022-03-06 06:55:38'),
(22, 47, 'Quonata', 'golden retriever', 'Quis et qui sunt voluptate sunt nulla laborum elit sit voluptate sint laborum. Fugiat quis culpa ullamco aute voluptate commodo consectetur excepteur cillum dolore. Pariatur in proident incididunt non aliqua veniam eiusmod incididunt sint reprehenderit adipisicing. Anim ad duis exercitation nisi labore pariatur duis sint nisi nostrud nostrud laborum do.', 'https://via.placeholder.com/400/935/fff/?text=Quonata', '2022-03-14 01:59:15'),
(23, 13, 'Magmina', 'golden retriever', 'Minim ut laborum laboris et eiusmod id ad sit incididunt pariatur et irure pariatur. Minim fugiat adipisicing mollit sunt laboris elit consequat. Adipisicing excepteur enim pariatur sunt est laborum ullamco ad est dolor. Exercitation do ullamco veniam ipsum tempor consequat est ipsum eu elit velit aliqua.', 'https://via.placeholder.com/400/936/fff/?text=Magmina', '2022-04-10 02:45:10'),
(24, 29, 'Katakana', 'pitbull', 'Commodo cillum labore qui proident non. In in proident laboris enim pariatur duis duis Lorem. Amet et consectetur cupidatat nulla proident. Duis fugiat nisi deserunt excepteur et minim laboris ullamco fugiat officia.', 'https://via.placeholder.com/400/705/fff/?text=Katakana', '2022-01-23 03:34:10'),
(25, 27, 'Eclipsent', 'pitbull', 'In voluptate amet laboris commodo ad velit ad anim. Mollit pariatur ut dolore labore sunt ipsum velit adipisicing incididunt dolor consectetur magna elit quis. Ullamco aliquip laborum qui ipsum ut esse nisi ut aute incididunt aliqua amet exercitation dolor. Quis ipsum exercitation officia aliqua excepteur nostrud minim consequat labore in.', 'https://via.placeholder.com/400/922/fff/?text=Eclipsent', '2022-02-10 11:45:25'),
(26, 33, 'Undertap', 'golden retriever', 'Cupidatat esse velit laborum id occaecat voluptate dolore. Irure sunt laborum do tempor irure magna reprehenderit eiusmod quis mollit ullamco. Sint incididunt ex consectetur cupidatat. Cupidatat aliquip sit ad magna ea Lorem quis exercitation sit.', 'https://via.placeholder.com/400/882/fff/?text=Undertap', '2022-03-24 04:34:46'),
(27, 34, 'Exospeed', 'pitbull', 'Id cillum ex reprehenderit duis consectetur labore non veniam occaecat nisi. Id duis enim sunt do. Lorem voluptate ullamco pariatur nulla irure fugiat ipsum duis nisi velit pariatur ad eiusmod. Est mollit veniam est nostrud excepteur pariatur incididunt exercitation sint cillum dolore cillum.', 'https://via.placeholder.com/400/713/fff/?text=Exospeed', '2022-04-18 12:25:10'),
(28, 2, 'Utara', 'schnauzer', 'Commodo eu ad magna duis nostrud adipisicing. Cupidatat tempor id amet id velit. Aliquip sit Lorem excepteur et enim in laborum aute pariatur minim consequat id. Laboris ut magna elit et commodo non dolore exercitation ut officia adipisicing.', 'https://via.placeholder.com/400/884/fff/?text=Utara', '2022-01-28 06:05:03'),
(29, 13, 'Daycore', 'poodle', 'Voluptate nisi nostrud laborum aliqua quis aute enim ea qui anim adipisicing magna ipsum veniam. Cupidatat quis labore amet ad consequat laboris et officia dolore laborum incididunt. Deserunt ea culpa quis minim exercitation ipsum voluptate excepteur consectetur elit sunt minim dolor. Voluptate aute ex eiusmod esse proident ut et ullamco anim veniam esse.', 'https://via.placeholder.com/400/931/fff/?text=Daycore', '2022-02-21 02:47:32'),
(30, 11, 'Gynk', 'pitbull', 'Et adipisicing Lorem do do aliquip reprehenderit deserunt fugiat. Ullamco reprehenderit officia dolore deserunt aliquip nostrud voluptate pariatur pariatur consequat. Adipisicing proident ex dolor est magna ipsum consectetur commodo aute commodo nostrud. Duis deserunt nulla voluptate sint nulla minim occaecat proident non ullamco eiusmod.', 'https://via.placeholder.com/400/734/fff/?text=Gynk', '2022-02-10 09:28:17'),
(31, 16, 'Earbang', 'schnauzer', 'Duis sunt ad est adipisicing sunt duis reprehenderit aliqua est. Consequat irure commodo aliquip elit nostrud proident officia eiusmod duis est cupidatat. Cupidatat nisi magna cillum elit. Voluptate ullamco velit qui amet ad consequat labore cupidatat aute Lorem labore enim veniam tempor.', 'https://via.placeholder.com/400/836/fff/?text=Earbang', '2022-05-02 11:23:43'),
(32, 5, 'Austech', 'golden retriever', 'Commodo nulla commodo ullamco elit amet non officia nostrud eu cupidatat duis adipisicing laboris ut. Quis irure eiusmod pariatur Lorem fugiat cillum in sint culpa enim aute. Enim ullamco exercitation magna quis incididunt magna velit officia deserunt ullamco esse commodo fugiat. Cillum in nulla fugiat adipisicing laboris consectetur officia eiusmod consectetur aute.', 'https://via.placeholder.com/400/777/fff/?text=Austech', '2022-01-30 01:51:37'),
(33, 21, 'Gracker', 'golden retriever', 'Consequat officia incididunt esse elit eiusmod velit commodo. Nisi cillum excepteur elit pariatur Lorem deserunt eu aliquip exercitation dolor adipisicing mollit. Sit aute sit consequat do sit excepteur aute. Do ipsum nulla tempor dolore exercitation culpa dolor quis consequat excepteur.', 'https://via.placeholder.com/400/864/fff/?text=Gracker', '2022-04-19 02:21:44'),
(34, 41, 'Amril', 'schnauzer', 'Duis do commodo irure Lorem consectetur nostrud officia sit laborum amet non commodo. Labore sint veniam sunt Lorem. Consequat qui deserunt ad Lorem. Nisi qui et ea ullamco elit nisi sit magna id dolor laboris cupidatat minim ut.', 'https://via.placeholder.com/400/889/fff/?text=Amril', '2022-03-01 04:10:49'),
(35, 49, 'Zanilla', 'poodle', 'Qui in ut sunt nulla non amet aute aliquip nulla. Ullamco pariatur deserunt sunt mollit ut deserunt veniam tempor ullamco proident in. Anim voluptate incididunt ipsum anim enim mollit. Ex ipsum mollit incididunt duis laborum dolor amet culpa duis ad sunt laboris quis amet.', 'https://via.placeholder.com/400/905/fff/?text=Zanilla', '2022-03-26 04:01:42'),
(36, 15, 'Podunk', 'golden retriever', 'Dolor et occaecat nulla labore ea fugiat aliqua velit tempor commodo fugiat. Eu nisi tempor aliquip Lorem occaecat cillum do qui est eu nostrud labore. Dolor deserunt irure quis do non enim labore sint et officia aliqua. Ad labore pariatur laborum velit sit anim fugiat amet veniam qui anim.', 'https://via.placeholder.com/400/979/fff/?text=Podunk', '2022-03-25 11:13:49'),
(37, 37, 'Hivedom', 'schnauzer', 'Elit dolor officia commodo cillum ad veniam id laborum proident fugiat pariatur. Amet cillum ut culpa voluptate aute aliquip culpa ullamco. Excepteur anim nostrud quis veniam consequat fugiat Lorem laborum ea quis. Ut duis aliquip sunt esse commodo exercitation et.', 'https://via.placeholder.com/400/971/fff/?text=Hivedom', '2022-03-15 12:38:28'),
(38, 9, 'Frenex', 'pitbull', 'Exercitation officia quis dolore tempor et excepteur commodo tempor aliqua velit est. Fugiat ut sint qui incididunt eu. Id do cupidatat amet ea occaecat tempor amet sint proident officia voluptate. Ex consectetur esse deserunt aute sit.', 'https://via.placeholder.com/400/725/fff/?text=Frenex', '2022-03-07 11:42:00'),
(39, 13, 'Velity', 'golden retriever', 'Nostrud excepteur cillum proident labore enim labore enim. Proident aliqua officia culpa nulla duis adipisicing sint eiusmod exercitation aliquip commodo aliqua sint anim. Laboris nostrud eu ipsum magna tempor. Laborum exercitation exercitation pariatur ea consectetur duis exercitation amet.', 'https://via.placeholder.com/400/721/fff/?text=Velity', '2022-01-22 04:49:55'),
(40, 45, 'Exozent', 'golden retriever', 'Velit reprehenderit esse culpa quis occaecat magna aliquip aliqua consequat cupidatat. Veniam culpa nisi Lorem commodo officia quis veniam incididunt. Velit officia ex veniam qui. Ex excepteur esse exercitation ipsum voluptate.', 'https://via.placeholder.com/400/774/fff/?text=Exozent', '2022-02-08 07:50:53'),
(41, 29, 'Letpro', 'pitbull', 'Sunt in adipisicing veniam elit ullamco do et sint ea pariatur duis dolore velit. Do sunt et qui ullamco ad amet ut. Occaecat duis ipsum irure incididunt consectetur exercitation laboris duis ullamco sunt sunt exercitation. Do id id laboris mollit.', 'https://via.placeholder.com/400/832/fff/?text=Letpro', '2022-02-20 12:39:31'),
(42, 38, 'Anarco', 'pitbull', 'Quis officia dolor pariatur aliqua deserunt deserunt. Enim qui consequat incididunt nulla minim ullamco velit quis cupidatat. Ullamco aute exercitation officia ad duis fugiat et. Adipisicing laboris eiusmod proident nostrud aliquip dolor ea duis nulla sint eu commodo.', 'https://via.placeholder.com/400/998/fff/?text=Anarco', '2022-04-08 06:50:04'),
(43, 20, 'Zillatide', 'poodle', 'Exercitation culpa sunt ut nulla reprehenderit cillum nisi duis non qui est nulla aliqua ex. Pariatur consequat excepteur in et fugiat consectetur sit consequat aliqua. Nisi ea commodo velit aute fugiat pariatur veniam dolore id commodo. Quis est est exercitation elit aliqua reprehenderit excepteur ut adipisicing incididunt laborum ullamco voluptate ex.', 'https://via.placeholder.com/400/913/fff/?text=Zillatide', '2022-01-31 09:30:28'),
(44, 33, 'Bullzone', 'golden retriever', 'Cupidatat nisi sunt ipsum elit consectetur qui cillum veniam quis et ex fugiat adipisicing. Aute laboris est amet velit consectetur nostrud pariatur aliquip dolor esse laborum voluptate est ea. Velit ipsum anim dolore nulla cillum incididunt irure irure cillum ullamco proident. Deserunt fugiat occaecat occaecat ullamco exercitation duis dolore aliqua et.', 'https://via.placeholder.com/400/966/fff/?text=Bullzone', '2022-01-02 07:20:11'),
(45, 48, 'Uplinx', 'schnauzer', 'Sit proident minim est est sint quis incididunt enim mollit. Enim laborum consequat non deserunt. Excepteur aute sunt ipsum duis magna consequat dolore tempor aliqua dolore. Velit laboris duis non exercitation excepteur commodo deserunt do incididunt ut sit.', 'https://via.placeholder.com/400/879/fff/?text=Uplinx', '2022-03-10 12:53:24'),
(46, 39, 'Obliq', 'pitbull', 'Occaecat elit minim anim esse veniam sunt incididunt do aliqua laborum laboris ad velit. Do aliqua culpa veniam anim mollit minim aliquip sunt incididunt sunt nostrud. Tempor incididunt consequat aliquip ad cupidatat duis Lorem. Velit ullamco nisi ipsum aliquip voluptate qui proident nulla velit ipsum adipisicing.', 'https://via.placeholder.com/400/776/fff/?text=Obliq', '2022-02-11 05:09:13'),
(47, 21, 'Virxo', 'golden retriever', 'Elit deserunt dolore dolore irure officia ex quis duis anim. Ex eu occaecat dolor irure sit labore occaecat ipsum consectetur elit. Id proident est dolore mollit. Est ullamco sunt aliqua incididunt nulla velit id non amet sit elit ea cillum.', 'https://via.placeholder.com/400/707/fff/?text=Virxo', '2022-03-08 05:38:45'),
(48, 20, 'Everest', 'pitbull', 'Quis ad officia sunt Lorem elit ad elit laboris. Dolore sint deserunt sit et est id ullamco eiusmod. Pariatur laboris officia excepteur incididunt laborum eu dolor fugiat ipsum occaecat labore in. Qui nulla labore quis consequat.', 'https://via.placeholder.com/400/702/fff/?text=Everest', '2022-02-19 05:59:31'),
(49, 12, 'Medalert', 'poodle', 'Do fugiat commodo dolore in consectetur cillum. Nulla enim anim anim incididunt enim non cillum. Duis incididunt deserunt duis occaecat tempor. Irure ea fugiat aliqua minim veniam enim.', 'https://via.placeholder.com/400/993/fff/?text=Medalert', '2022-04-16 06:53:16'),
(50, 23, 'Medmex', 'poodle', 'Nulla proident enim enim laboris reprehenderit consectetur et fugiat. Consectetur culpa ullamco voluptate voluptate exercitation eiusmod tempor qui dolore aliquip aliquip sunt id. Commodo deserunt occaecat magna sint enim ullamco elit culpa dolor reprehenderit aute nisi minim qui. Tempor reprehenderit nisi officia dolore in incididunt reprehenderit excepteur sunt anim ea elit.', 'https://via.placeholder.com/400/854/fff/?text=Medmex', '2022-03-29 11:36:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animals`
--
ALTER TABLE `animals`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
