-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2021 at 11:15 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flaskblogdbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `sno` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `phone_no` varchar(12) NOT NULL,
  `msg` varchar(120) NOT NULL,
  `date` varchar(50) DEFAULT current_timestamp(),
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`sno`, `name`, `phone_no`, `msg`, `date`, `email`) VALUES
(1, 'Admin', '9898988585', 'Admin Testing', '', 'Admin@gmail.com'),
(2, 'Sandesh Pol', '6598659852', 'hello', NULL, 'admin@gmail.com'),
(3, 'Sandesh Pol', '6598659852', 'hello', NULL, 'admin@gmail.com'),
(4, 'Sandesh Pol', '6598659852', 'gdf', NULL, 'Thankyu@god.com'),
(5, 'Sandesh Pol', '6598659852', 'Flask Website Testing', NULL, 'admin123@gmail.com'),
(6, 'Hello God', '7777777777', 'testing done...', NULL, 'admin@gmail.com'),
(7, 'Developer Mode', '6565230000', 'Tested Successfullyyy....', NULL, 'Thankyu@god.com'),
(8, '', '', '', NULL, ''),
(9, '', '', '', NULL, ''),
(10, '', '', '', NULL, ''),
(11, 'Peter Parker', '0000008754', 'I am Spider-Man', NULL, 'PeterParker@godzilla.com'),
(12, 'Peter Parker', '0000008754', 'I am Spide Man', NULL, 'PeterParker@godzilla.com'),
(13, 'admin123', '0000008754', 'Hello Blogger', NULL, 'admin123@gmail.com'),
(14, 'admin123', '0000008754', 'Hello Blogger', NULL, 'admin123@gmail.com'),
(15, 'Hello God', '6598659852', 'de', NULL, 'Thankyu@god.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` text NOT NULL,
  `content` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `img_file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `date`, `img_file`) VALUES
(1, 'Machine learning', 'Large-scale computation and the associated frameworks', 'Machine-learning', 'Machine learning is the latest in a long line of attempts to distill human\r\nknowledge and reasoning into a form that is suitable for constructing machines and engineering automated systems. As machine learning becomes\r\nmore ubiquitous and its software packages become easier to use, it is natural and desirable that the low-level technical details are abstracted away\r\nand hidden from the practitioner. However, this brings with it the danger\r\nthat a practitioner becomes unaware of the design decisions and, hence,\r\nthe limits of machine learning algorithms.\r\nThe enthusiastic practitioner who is interested to learn more about the\r\nmagic behind successful machine learning algorithms currently faces a\r\ndaunting set of pre-requisite knowledge:\r\nCurrent machine learning textbooks primarily focus on machine learning algorithms and methodologies and assume that the reader is competent in mathematics and statistics. Therefore, these books only spend\r\none or two chapters on background mathematics, either at the beginning\r\nof the book or as appendices. We have found many people who want to\r\ndelve into the foundations of basic machine learning methods who struggle with the mathematical knowledge required to read a machine learning\r\ntextbook. Having taught undergraduate and graduate courses at universities, we find that the gap between high school mathematics and the mathematics level required to read a standard machine learning textbook is too\r\nbig for many people.\r\nThis book brings the mathematical foundations of basic machine learning concepts to the fore and collects the information in a single place so\r\nthat this skills gap is narrowed or even closed.\r\nMachine learning builds upon the language of mathematics to express\r\nconcepts that seem intuitively obvious but that are surprisingly difficult\r\nto formalize. Once formalized properly, we can gain insights into the task\r\nwe want to solve. One common complaint of students of mathematics\r\naround the globe is that the topics covered seem to have little relevance\r\nto practical problems. We believe that machine learning is an obvious and\r\ndirect motivation for people to learn mathematics.', '2021-05-17 08:11:03', 'home-bg.jpg'),
(2, 'String', 'String Slicing And Other Functions In Python', 'string-post', 'String is a data type in Python. Strings in Python programming language are arrays of\r\nbytes representing a sequence of characters. In simple terms, Strings are the combination or\r\ncollection of characters enclosed in quotes.\r\nPrimarily, you will fin', '2021-05-01 10:37:36', 'home-bg.jpg'),
(3, 'Lists', 'Python Lists And List Functions\r\n', 'list-post', 'Python lists are containers used to store a list of values of any data type. In simple\r\nwords, we can say that a list is a collection of elements from any data type E.g.The above list contains strings, an integer, and even an element of type float. A', '2021-05-25 10:37:41', 'home-bg.jpg'),
(4, 'Tuples in Python', 'A tuple is an immutable data type in Python', 'tuple-post', '. A tuple in python is a collection ofDespite thesedocumentation at times as well to check for some updates they might push down the line.\r\nSome of the methods you can use with sets include union(), discard(), add(), isdisjoint(), etc.\r\nand their functionality is the same as in the sets in mathematics. Also, the purpose of these\r\nfunctions can easily be understood by their names restrictions, documentation at times as well to check for some updates they might push down the line.\r\nSome of the methods you can use with sets include union(), discard(), add(), isdisjoint(), etc.\r\nand their functionality is the same as in the sets in mathematics. Also, the purpose of these\r\nfunctions can easily be understood by their namessets play a very important role in the life of a python\r\nprogrammer. In most cases, these restrictions are never a problem for the programmer given\r\nhe knows which data type to use whe', '2021-05-16 07:07:46', 'about-bg.jpg'),
(5, 'Today Offer', 'Do not follow', 'offer-slug', 'inputinputinput', '2021-05-15 17:23:17', 'img.jpg'),
(6, 'Sets', 'Sets In Python', 'sets-post', 'A set is a collection of well-defined objects and non-repetitive elements that is - a set\r\nwith 1,2,3,4,3,4,5,2, 2, and 3 as its elements can be written as {1,2,3,4,5}\r\nNo repetition of elements is allowed in sets.\r\nIn Python programming, sets are mo', '2021-05-07 10:37:30', 'home-bg.jpg'),
(16, 'Safari®', 'Safari® Books Online\r\n', 'Safari-Online\r\n', 'Safari Books Online (www.safaribooksonline.com) is an on-demand digital\r\nlibrary that delivers expert content in both book and video form from the\r\nworld’s leading authors in technology and business.\r\nTechnology professionals, software developers, web designers, and business and creative professionals use Safari Books Online as their primary resource for research,\r\nproblem solving, learning, and certification training.\r\nSafari Books Online offers a range of product mixes and pricing programs for organizations, government agencies, and individuals. Subscribers have access to thousands\r\nof books, training videos, and prepublication manuscripts in one fully searchable database from publishers like O’Reilly Media, Prentice Hall Professional, Addison-Wesley\r\nProfessional, Microsoft Press, Sams, Que, Peachpit Press, Focal Press, Cisco Press, John\r\nWiley & Sons, Syngress, Morgan Kaufmann, IBM Redbooks, Packt, Adobe Press, FT\r\nPress, Apress, Manning, New Riders, McGraw-Hill, Jones & Bartlett, Course Technology, and dozens more. For more information about Safari Books Online, please visit\r\nus online.\r\n', '2021-05-16 10:04:08', ''),
(17, 'NumPy', 'short for Numerical Python', 'Numerical-Python', 'NumPy, short for Numerical Python, is the foundational package for scientific computing in Python. The majority of this book will be based on NumPy and libraries built\r\non top of NumPy. It provides, among other things:\r\n• A fast and efficient multidimensional array object ndarray\r\n• Functions for performing element-wise computations with arrays or mathematical\r\noperations between arrays\r\n• Tools for reading and writing array-based data sets to disk\r\n• Linear algebra operations, Fourier transform, and random number generation\r\n• Tools for integrating connecting C, C++, and Fortran code to Python\r\nBeyond the fast array-processing capabilities that NumPy adds to Python, one of its\r\nprimary purposes with regards to data analysis is as the primary container for data to\r\nbe passed between algorithms. For numerical data, NumPy arrays are a much more\r\nefficient way of storing and manipulating data than the other built-in Python data\r\nstructures. Also, libraries written in a lower-level language, such as C or Fortran, can\r\noperate on the data stored in a NumPy array without copying any data.', '2021-05-16 10:05:25', ''),
(18, 'Colors, Markers & Line Styles', 'Matplotlib’s main plot function accepts arrays of X and Y', 'colors-markers', '. For example, to plot x versus y with\r\ngreen dashes, you would execute:\r\nax.plot(x, y, \'g--\')\r\nThis way of specifying both color and linestyle in a string is provided as a convenience;\r\nin practice if you were creating plots programmatically you might prefer not to have to\r\nmunge strings together to create plots with the desired style. The same plot could also\r\nhave been expressed more explicitly as:\r\nax.plot(x, y, linestyle=\'--\', color=\'g\')\r\nThere are a number of color abbreviations provided for commonly-used colors, but any\r\ncolor on the spectrum can be used by specifying its RGB value (for example, \'#CECE\r\nCE\'). You can see the full set of linestyles by looking at the docstring for plot.\r\nLine plots can additionally have markers to highlight the actual data points. Since matplotlib creates a continuous line plot, interpolating between points, it can occasionally\r\nbe unclear where the points lie. The marker can be part of the style string, which must\r\nhave color followed by marker type and line style (see Figure 8-6):', '2021-05-17 08:18:55', 'img.jpg'),
(21, 'rrrrrrr', 'Also done this post', 'offer-slug', '', '2021-05-17 08:22:04', 'img.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
