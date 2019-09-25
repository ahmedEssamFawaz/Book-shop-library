-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2019 at 03:24 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `books`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `description`, `image`) VALUES
(1, 'Mollie Hemingway', 'Mollie Ziegler Hemingway is an American conservative columnist and political commentator. She is a senior editor at the online magazine The Federalist and a contributor for Fox News.', 'https://thefederalist.com/wp-content/uploads/2013/09/MZHphoto-300x300.jpg'),
(2, 'Tara Westover', 'Tara Westover is an American memoirist, essayist and historian. Her memoir Educated debuted at #1 on the New York Times bestseller list and was a finalist for a number of national awards, including the LA Times Book Prize, PEN America\'s Jean Stein Book Aw', 'https://images-na.ssl-images-amazon.com/images/I/B1PNLDB9k9S._SY600_.jpg'),
(3, 'Mark Levin', 'Mark Reed Levin is an American lawyer, author, and radio personality. He is the host of syndicated radio show The Mark Levin Show, as well as Life, Liberty & Levin on Fox News. Levin worked in the administration of President Ronald Reagan and was a chief ', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/Mark_Levin_by_Gage_Skidmore_2.jpg/220px-Mark_Levin_by_Gage_Skidmore_2.jpg'),
(4, 'gregg jarrett', 'Gregory Walter \"Gregg\" Jarrett is an American news commentator, author, and attorney. He joined the Fox News Channel in November 2002, after working over ten years for local NBC and ABC TV stations, as well as national networks Court TV and MSNBC', 'https://images-na.ssl-images-amazon.com/images/I/51XqOhOpxlL._US230_.jpg'),
(5, 'Jeanine Pirro', 'Jeanine Ferris Pirro is an American television host, author, and a former judge, prosecutor, and politician from New York. Pirro is the host of Fox News Channel\'s Justice with Judge Jeanine. She was a frequent contributor to NBC News', 'https://images-na.ssl-images-amazon.com/images/I/51XqOhOpxlL._US230_.jpg'),
(6, 'Lori Gottlieb', 'Lori Gottlieb is an American writer and psychotherapist, who writes the weekly Dear Therapist advice column for The Atlantic', 'https://images-na.ssl-images-amazon.com/images/I/51XqOhOpxlL._US230_.jpg'),
(7, 'Debbie Macomber', 'Debbie Macomber is an American author of romance novels and contemporary women\'s fiction. Six of her novels have become made-for-TV movies and her Cedar Cove series of novel was adapted into the television series of the same name.', 'https://images-na.ssl-images-amazon.com/images/I/51XqOhOpxlL._US230_.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `rate` int(11) DEFAULT NULL,
  `author_id` int(10) DEFAULT NULL,
  `published_at` date DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `author_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `rate`, `author_id`, `published_at`, `image_path`, `author_name`, `description`, `url`) VALUES
(1, 'Educated: A Memoir', 8, 36, '2019-02-10', 'https://images-na.ssl-images-amazon.com/images/I/81XR45UdqkL.jpg', 'elfarash', 'For readers of The Glass Castle and Wild, a stunning new memoir about family, loss and the struggle for a better future#1 International BestsellerTara', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(2, 'Justice on Trial', 9, 36, '2019-03-11', 'https://images-na.ssl-images-amazon.com/images/I/51tQHDThsTL._SX329_BO1,204,203,200_.jpg', 'elfarash', '#1 NATIONAL BESTSELLER! Justice Anthony Kennedy slipped out of the Supreme Court building on June 27, 2018', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(3, 'Unfreedom of the Press ', 9, 36, '2019-05-21', 'https://images-na.ssl-images-amazon.com/images/I/81Scw9HLl5L.jpg', 'elfarash', 'From six-time #1 New York Times bestselling author, FOX News star, and radio host Mark R. Levin comes a groundbreaking and enlightening book that shows how the great tradition', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(4, 'Witch Hunt', 8, 36, '2019-08-08', 'https://i.harperapps.com/covers/9780062960092/x510.jpg', 'elfarash', 'A witch-hunt or a witch purge is a search for people who have been labelled \"witches\" or a search for evidence of witchcraft, and it often involves a moral panic or mass hysteria', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(5, 'Radicals, Resistance, and Revenge', 9, 36, '2019-09-27', 'https://images-na.ssl-images-amazon.com/images/I/51lXCepytGL._SX329_BO1,204,203,200_.jpg', 'elfarash', 'Picking up where her #1 New York Times bestseller, Liars, Leakers and Liberals, left off, Judge Jeanine Pirro of Fox\'s Justice with Judge Jeanine exposes the latest chapter in the unfolding liberal attack on our most basic values', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(6, 'Liars, Leakers, and Liberals', 3, 36, '2019-07-17', 'https://images-na.ssl-images-amazon.com/images/I/81UDmZOb1wL.jpg', 'elfarash', 'Liars, Leakers, and Liberals: The Case Against the Anti-Trump Conspiracy is a 2018 book authored by Jeanine Pirro, an American TV personality, former judge, prosecutor, district attorney and Republican politician in New York.', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(7, 'Maybe You Should Talk to Someone', 4, 36, '2019-04-02', 'https://images-na.ssl-images-amazon.com/images/I/51OBv43TthL._SX329_BO1,204,203,200_.jpg', 'elfarash', 'sdasd', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(8, 'Trump vs. the Media ', 7, 36, '2017-04-25', 'https://images-na.ssl-images-amazon.com/images/I/51EfDxAyoJL._SX337_BO1,204,203,200_.jpg', 'elfarash', 'How bad is the problem of media bias? The answer can be summed up in a few words: President Donald J. Trump', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(9, 'Marry Him', 8, 36, '2011-02-01', 'https://images-na.ssl-images-amazon.com/images/I/41y2kiw0IUL._SX331_BO1,204,203,200_.jpg', 'elfarash', 'An eye-opening, funny, painful, and always truthful in-depth examination of modern relationships and a wake-up call for single women about getting real about Mr. Right.', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(10, 'Stick Figure', 10, 36, '2017-11-17', 'https://images-na.ssl-images-amazon.com/images/I/519S9wbpPIL._AC_SY400_.jpg', 'elfarash', 'Stick Figure is an American reggae and dub band founded in 2006 and based in Northern California', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(11, 'Maybe You Should Talk to Someone v2', 10, 36, '2019-02-02', 'https://images-na.ssl-images-amazon.com/images/I/41pg5NFijeL._SX325_BO1,204,203,200_.jpg', 'elfarash', '. So, despite my misgivings about listening to all the therapist-speak, I used a ..... It is the type of book that you read and then immediately hand off to someone ', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(12, 'A Little Bit Country', 10, 36, '2019-05-21', 'https://images-na.ssl-images-amazon.com/images/I/51QnrWCM1HL.SX316.SY316.jpg', 'elfarash', 'The boys learn about the politics of war and the consequences of homework.', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(243, 'zzzzzzzzzz', 6, 36, '2019-10-12', 'images/IMG_3557.JPG', 'elfarash', 'asdasdadsads', 'books/My Resume.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `books_of_user`
--

CREATE TABLE `books_of_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books_of_user`
--

INSERT INTO `books_of_user` (`id`, `user_id`, `book_id`) VALUES
(16, 36, 12),
(17, 37, 1),
(19, 36, 2),
(20, 54, 12),
(21, 54, 12),
(22, 38, 12),
(23, 95, 12),
(64, 100, 12);

-- --------------------------------------------------------

--
-- Table structure for table `book_gallery`
--

CREATE TABLE `book_gallery` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_gallery`
--

INSERT INTO `book_gallery` (`id`, `book_id`, `image`) VALUES
(1, 1, 'https://images-na.ssl-images-amazon.com/images/I/81XR45UdqkL.jpg'),
(2, 1, 'https://images-na.ssl-images-amazon.com/images/I/81XR45UdqkL.jpg'),
(3, 1, 'https://images-na.ssl-images-amazon.com/images/I/81XR45UdqkL.jpg'),
(4, 1, 'https://images-na.ssl-images-amazon.com/images/I/81XR45UdqkL.jpg'),
(5, 2, 'https://images-na.ssl-images-amazon.com/images/I/51tQHDThsTL._SX329_BO1,204,203,200_.jpg'),
(6, 2, 'https://images-na.ssl-images-amazon.com/images/I/51tQHDThsTL._SX329_BO1,204,203,200_.jpg'),
(7, 2, 'https://images-na.ssl-images-amazon.com/images/I/51tQHDThsTL._SX329_BO1,204,203,200_.jpg'),
(8, 2, 'https://images-na.ssl-images-amazon.com/images/I/51tQHDThsTL._SX329_BO1,204,203,200_.jpg'),
(9, 3, 'https://images-na.ssl-images-amazon.com/images/I/81Scw9HLl5L.jpg'),
(10, 3, 'https://images-na.ssl-images-amazon.com/images/I/81Scw9HLl5L.jpg'),
(11, 3, 'https://images-na.ssl-images-amazon.com/images/I/81Scw9HLl5L.jpg'),
(12, 3, 'https://images-na.ssl-images-amazon.com/images/I/81Scw9HLl5L.jpg'),
(13, 4, 'https://i.harperapps.com/covers/9780062960092/x510.jpg'),
(14, 4, 'https://i.harperapps.com/covers/9780062960092/x510.jpg'),
(15, 4, 'https://i.harperapps.com/covers/9780062960092/x510.jpg'),
(16, 4, 'https://i.harperapps.com/covers/9780062960092/x510.jpg'),
(17, 5, 'https://images-na.ssl-images-amazon.com/images/I/51lXCepytGL._SX329_BO1,204,203,200_.jpg'),
(18, 5, 'https://images-na.ssl-images-amazon.com/images/I/51lXCepytGL._SX329_BO1,204,203,200_.jpg'),
(19, 5, 'https://images-na.ssl-images-amazon.com/images/I/51lXCepytGL._SX329_BO1,204,203,200_.jpg'),
(20, 5, 'https://images-na.ssl-images-amazon.com/images/I/51lXCepytGL._SX329_BO1,204,203,200_.jpg'),
(21, 6, 'https://images-na.ssl-images-amazon.com/images/I/81UDmZOb1wL.jpg'),
(22, 6, 'https://images-na.ssl-images-amazon.com/images/I/81UDmZOb1wL.jpg'),
(23, 6, 'https://images-na.ssl-images-amazon.com/images/I/81UDmZOb1wL.jpg'),
(24, 6, 'https://images-na.ssl-images-amazon.com/images/I/81UDmZOb1wL.jpg'),
(25, 7, 'https://images-na.ssl-images-amazon.com/images/I/51EfDxAyoJL._SX337_BO1,204,203,200_.jpg'),
(26, 7, 'https://images-na.ssl-images-amazon.com/images/I/51EfDxAyoJL._SX337_BO1,204,203,200_.jpg'),
(27, 7, 'https://images-na.ssl-images-amazon.com/images/I/51EfDxAyoJL._SX337_BO1,204,203,200_.jpg'),
(28, 7, 'https://images-na.ssl-images-amazon.com/images/I/51EfDxAyoJL._SX337_BO1,204,203,200_.jpg'),
(29, 8, 'https://images-na.ssl-images-amazon.com/images/I/51EfDxAyoJL._SX337_BO1,204,203,200_.jpg'),
(30, 8, 'https://images-na.ssl-images-amazon.com/images/I/51EfDxAyoJL._SX337_BO1,204,203,200_.jpg'),
(31, 8, 'https://images-na.ssl-images-amazon.com/images/I/51EfDxAyoJL._SX337_BO1,204,203,200_.jpg'),
(32, 8, 'https://images-na.ssl-images-amazon.com/images/I/51EfDxAyoJL._SX337_BO1,204,203,200_.jpg'),
(33, 9, 'https://images-na.ssl-images-amazon.com/images/I/41y2kiw0IUL._SX331_BO1,204,203,200_.jpg'),
(34, 9, 'https://images-na.ssl-images-amazon.com/images/I/41y2kiw0IUL._SX331_BO1,204,203,200_.jpg'),
(35, 9, 'https://images-na.ssl-images-amazon.com/images/I/41y2kiw0IUL._SX331_BO1,204,203,200_.jpg'),
(36, 9, 'https://images-na.ssl-images-amazon.com/images/I/41y2kiw0IUL._SX331_BO1,204,203,200_.jpg'),
(40, 10, 'https://images-na.ssl-images-amazon.com/images/I/519S9wbpPIL._AC_SY400_.jpg'),
(41, 10, 'https://images-na.ssl-images-amazon.com/images/I/519S9wbpPIL._AC_SY400_.jpg'),
(42, 10, 'https://images-na.ssl-images-amazon.com/images/I/519S9wbpPIL._AC_SY400_.jpg'),
(43, 10, 'https://images-na.ssl-images-amazon.com/images/I/519S9wbpPIL._AC_SY400_.jpg'),
(44, 11, 'https://images-na.ssl-images-amazon.com/images/I/41pg5NFijeL._SX325_BO1,204,203,200_.jpg'),
(45, 11, 'https://images-na.ssl-images-amazon.com/images/I/41pg5NFijeL._SX325_BO1,204,203,200_.jpg'),
(46, 11, 'https://images-na.ssl-images-amazon.com/images/I/41pg5NFijeL._SX325_BO1,204,203,200_.jpg'),
(47, 11, 'https://images-na.ssl-images-amazon.com/images/I/41pg5NFijeL._SX325_BO1,204,203,200_.jpg'),
(48, 12, 'https://images-na.ssl-images-amazon.com/images/I/51QnrWCM1HL.SX316.SY316.jpg'),
(49, 12, 'https://images-na.ssl-images-amazon.com/images/I/51QnrWCM1HL.SX316.SY316.jpg'),
(50, 12, 'https://images-na.ssl-images-amazon.com/images/I/51QnrWCM1HL.SX316.SY316.jpg'),
(51, 12, 'https://images-na.ssl-images-amazon.com/images/I/51QnrWCM1HL.SX316.SY316.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'politics '),
(2, 'science');

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `img_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `token`, `type`, `bio`, `img_id`) VALUES
(36, 'mohammad', 'elfarash', 'mohammad.elfarash@gmail.com', '123456789', '01151234879', '7d43306fd65fdbd9dc3ad259bcb17724', 'author', 'no bio yet', 5),
(37, 'xaxaxaxaa', 'zaz', 'ahmed.naser@gmail.com', '123456789112', '01151234879', '4d07f01a1c90997e3431baf72c839ff4', 'user', 'dasdsadasdasdasdasdadas', 26),
(38, 'alaa', 'mohammad', 'm.3laa.95@gmail.com', '123456', '01151234879', '944bb541b0c4a953446a001cc5b78b85', 'user', 'no bio yet', 13),
(39, 'ahmed', 'naser', 'ahmed.elfarash@gmail.com', '123456789', '01151234879', '6ae9c7ce606058249b69e38813ab5fbd', 'user', 'no bio yet', 14),
(53, 'mohamoud', 'ahmed', 'mhmoudahmed@gmail.com', '123456789', '01224866972', '7ca9129f4b3b812fd681c38ce6b27936', 'user', 'no bio yet', 1),
(54, 'ahmedd', 'fathy', 'ahmed.fathi74@gmail.com', '123456789', '01143177934', 'ec4089d86e63fa1a549393cad5e129db', 'user', 'no bio yet', 6),
(95, 'ahmed', 'naser', 'ahmed_naser@gmail.com', '123456789', '01151234879', 'ef789f3bf5b357fde016732a1a71072f', 'user', 'no bio yet', 14),
(96, 'aa', 'aa', 'dsadssa@hotmail.com', '123456789', '01100600239', 'e51dbac89a92afb599975869278d9c09', 'user', 'no bio yet', 1),
(97, 'dads', 'asdsaas', 'ddsa@hotmail.com', '1234567', '01100600732', '21f5c8e9b3fc1489717633b60cab5478', 'user', 'no bio yet', 1),
(98, 'ahmed', 'fathy', 'af7200097@gmail.com', '123456789', '01143177394', '80998b7c9e11530a963302110102e0b6', 'user', 'no bio yet', 6),
(99, 'ahmed', 'essam', 'ahmedessam@hotmail.com', 'ahmed', '01100600297', 'f256add92510bc11de344f6bab305c36', 'user', 'no bio yet', 5),
(100, 'ahmeed', 'esssam', 'hhhhsdd@hotmail.com', 'ahmed', '01100200123', '1513f8b9b25e6b8d27c69300b3a8c69a', 'user', 'no bio yet', 5),
(101, 'ahmedd', 'essamm', 'ahmedessamm@hotmail.com', '123456789', '01100600297', '4f9b3538b6fff727b28513820c7055d3', 'user', 'no bio yet', 5),
(112, 'ahmed', 'saser', 'mohammad.elfarash223444ss6@gmail.com', '123456789', '01151234879', 'b1f106502e0ab9c00179f1183aed986c', 'author', 'no bio yet', 19),
(113, 'ahmed', 'saser', 'dsdasdasdasd.elfarash223444ss6@gmail.com', '123456789', '01151234879', 'dffacd60b36c057651ff1c4fa9155bf4', 'author', 'no bio yet', 19),
(114, 'ahmed', 'saser', 'dsdasdasdasd.elfarash223444sssds6@gmail.com', '123456789', '01151234879', 'dcac5e260e1cca491a9e77021003b4f5', 'user', 'no bio yet', 19),
(115, 'ahmed', 'saser', 'dsdasdasdasd.elfarash223444sssds666@gmail.com', '123456789', '01151234879', '43a6ebad29acc1620012957c29a63b86', 'author', 'no bio yet', 19);

-- --------------------------------------------------------

--
-- Table structure for table `users_books`
--

CREATE TABLE `users_books` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `name_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_images`
--

CREATE TABLE `users_images` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_images`
--

INSERT INTO `users_images` (`id`, `image`) VALUES
(1, 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/LetterA.svg/1200px-LetterA.svg.png'),
(2, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/LetterB.svg/1200px-LetterB.svg.png'),
(3, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Letter_c.svg/1200px-Letter_c.svg.png'),
(4, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/LetterD.svg/1200px-LetterD.svg.png'),
(5, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/LetterE.svg/1200px-LetterE.svg.png'),
(6, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/LetterF.svg/1200px-LetterF.svg.png'),
(7, 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/LetterG.svg/1200px-LetterG.svg.png'),
(8, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/LetterH.svg/1200px-LetterH.svg.png'),
(9, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/LetterI.svg/1200px-LetterI.svg.png'),
(10, 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/LetterJ.svg/1200px-LetterJ.svg.png'),
(11, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Letter_k.svg/1200px-Letter_k.svg.png'),
(12, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/LetterL.svg/1200px-LetterL.svg.png'),
(13, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/LetterM.svg/1200px-LetterM.svg.png'),
(14, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/LetterN.svg/1200px-LetterN.svg.png'),
(15, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/LetterO.svg/1200px-LetterO.svg.png'),
(16, 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/LetterP.svg/1200px-LetterP.svg.png'),
(17, 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/LetterQ.svg/1200px-LetterQ.svg.png'),
(18, 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/LetterR.svg/1200px-LetterR.svg.png'),
(19, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Letter_s.svg/1200px-Letter_s.svg.png'),
(20, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/LetterT.svg/1200px-LetterT.svg.png'),
(21, 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/LetterU.svg/1200px-LetterU.svg.png'),
(22, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Letter_v.svg/1200px-Letter_v.svg.png'),
(23, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Letter_w.svg/1200px-Letter_w.svg.png'),
(24, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/LetterX.svg/1200px-LetterX.svg.png'),
(25, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/LetterY.svg/1200px-LetterY.svg.png'),
(26, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/LetterZ.svg/1200px-LetterZ.svg.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books_of_user`
--
ALTER TABLE `books_of_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_gallery`
--
ALTER TABLE `book_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_books`
--
ALTER TABLE `users_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_images`
--
ALTER TABLE `users_images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `books_of_user`
--
ALTER TABLE `books_of_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `book_gallery`
--
ALTER TABLE `book_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `users_books`
--
ALTER TABLE `users_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_images`
--
ALTER TABLE `users_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
