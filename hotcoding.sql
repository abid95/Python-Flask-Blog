-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2022 at 02:21 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotcoding`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `mes` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_num`, `mes`, `date`) VALUES
(1, 'Alien', 'alien@gmail.com', '123121121', 'Hello this is test', '2022-03-11 01:39:52'),
(2, 'Laura Barr', 'zyheto@mailinator.com', '+1 (378) 166-5279', 'Officia nostrum labo', '2022-03-11 15:43:43'),
(3, 'Lester Lott', 'bykeq@mailinator.com', '+1 (387) 117-6544', 'In consequat Aut ne', '2022-03-11 18:41:55'),
(4, 'Hedda Rich', 'kebuqe@mailinator.com', '+1 (509) 965-7543', 'Dolor unde iure in s', '2022-03-11 18:43:26'),
(5, 'Shelley Boyd', 'larib@mailinator.com', '+1 (869) 315-4602', 'Accusantium aliquam ', '2022-03-11 19:14:26'),
(6, 'Wylie Miranda', 'myqa@mailinator.com', '+1 (831) 592-9838', 'Modi ut voluptatem i', '2022-03-12 00:27:02'),
(7, 'Abid Iqbal', 'abid9581@gmail.com', '03460606041', 'Hello sir,\r\nI liked your blog very much thank you for such an informative effort.', '2022-03-13 12:06:06'),
(8, 'Jordan Wilder', 'monynumup@mailinator.com', '+1 (407) 442-8347', 'Unde asperiores earu', '2022-03-13 12:55:23'),
(9, 'Scarlett Perez', 'boruwa@mailinator.com', '+1 (862) 337-6333', 'Vero laudantium iur', '2022-03-13 13:07:41'),
(10, 'Chester Delaney', 'bohecuz@mailinator.com', '+1 (829) 608-5234', 'Eligendi sint in vol', '2022-03-13 13:10:56'),
(11, 'Abid Iqbal', 'abid9581@gmail.com', '03460606041', 'Hello this is test message', '2022-03-13 13:11:47'),
(12, 'Kristen Moreno', 'ruqy@mailinator.com', '+1 (173) 971-7087', 'Ducimus repellendus', '2022-03-13 18:56:19'),
(13, 'Kristen Moreno', 'ruqy@mailinator.com', '+1 (173) 971-7087', 'Ducimus repellendus', '2022-03-13 18:57:27'),
(14, 'Abid Iqbal', 'abid9581@gmail.com', 'dasda', 'aSASA', '2022-03-17 16:45:01');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `slug` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Let\'s learn about computer programming!!', 'first-post', 'Computer programming is the process of performing a particular computation (or more generally, accomplishing a specific computing result), usually by designing/building an executable computer program. Programming involves tasks such as analysis, generating algorithms, profiling algorithms\' accuracy and resource consumption, and the implementation of algorithms (usually in a chosen programming language, commonly referred to as coding).[1][2] The source code of a program is written in one or more languages that are intelligible to programmers, rather than machine code, which is directly executed by the central processing unit. The purpose of programming is to find a sequence of instructions that will automate the performance of a task (which can be as complex as an operating system) on a computer, often for solving a given problem. Proficient programming thus usually requires expertise in several different subjects, including knowledge of the application domain, specialized algorithms, and formal logic.\r\n\r\nTasks accompanying and related to programming include testing, debugging, source code maintenance, implementation of build systems, and management of derived artifacts, such as the machine code of computer programs. These might be considered part of the programming process, but often the term software development is used for this larger process with the term programming, implementation, or coding reserved for the actual writing of code. Software engineering combines engineering techniques with software development practices. Reverse engineering is a related process used by designers, analysts, and programmers to understand and re-create/re-implement.[3]', 'prog_img.png', '2022-03-15 16:17:26'),
(2, 'Cloud computing', 'second-post', 'Cloud computing[1] is the on-demand availability of computer system resources, especially data storage (cloud storage) and computing power, without direct active management by the user.[2] Large clouds often have functions distributed over multiple locations, each location being a data center. Cloud computing relies on sharing of resources to achieve coherence and typically using a \"pay-as-you-go\" model which can help in reducing capital expenses but may also lead to unexpected operating expenses for unaware users.[3]', 'cld_img.jpg', '2022-03-13 17:47:32'),
(3, 'Database Concepts', 'database-concepts', 'In computing, a database is an organized collection of data stored and accessed electronically. Small databases can be stored on a file system, while large databases are hosted on computer clusters or cloud storage. The design of databases spans formal techniques and practical considerations including data modeling, efficient data representation and storage, query languages, security and privacy of sensitive data, and distributed computing issues including supporting concurrent access and fault tolerance.\r\n\r\nA database management system (DBMS) is the software that interacts with end users, applications, and the database itself to capture and analyze the data. The DBMS software additionally encompasses the core facilities provided to administer the database. The sum total of the database, the DBMS and the associated applications can be referred to as a database system. Often the term \"database\" is also used loosely to refer to any of the DBMS, the database system or an application associated with the database.\r\n\r\nComputer scientists may classify database management systems according to the database models that they support. Relational databases became dominant in the 1980s. These model data as rows and columns in a series of tables, and the vast majority use SQL for writing and querying data. In the 2000s, non-relational databases became popular, collectively referred to as NoSQL because they use different query languages.', 'db.jpg', '2022-03-15 16:27:45'),
(4, 'Computer Network', 'computer-networks', 'A computer network is a set of computers sharing resources located on or provided by network nodes. The computers use common communication protocols over digital interconnections to communicate with each other. These interconnections are made up of telecommunication network technologies, based on physically wired, optical, and wireless radio-frequency methods that may be arranged in a variety of network topologies.\r\n\r\nThe nodes of a computer network may include personal computers, servers, networking hardware, or other specialised or general-purpose hosts. They are identified by network addresses, and may have hostnames. Hostnames serve as memorable labels for the nodes, rarely changed after initial assignment. Network addresses serve for locating and identifying the nodes by communication protocols such as the Internet Protocol.\r\n\r\nComputer networks may be classified by many criteria, including the transmission medium used to carry signals, bandwidth, communications protocols to organize network traffic, the network size, the topology, traffic control mechanism, and organizational intent.\r\n\r\nComputer networks support many applications and services, such as access to the World Wide Web, digital video, digital audio, shared use of application and storage servers, printers, and fax machines, and use of email and instant messaging applications.', 'network.jpg', '2022-03-16 15:26:41'),
(6, 'Android software development', 'Android-software-development', 'Android software development is the process by which applications are created for devices running the Android operating system. Google states that[3] \"Android apps can be written using Kotlin, Java, and C++ languages\" using the Android software development kit (SDK), while using other languages is also possible. All non-Java virtual machine (JVM) languages, such as Go, JavaScript, C, C++ or assembly, need the help of JVM language code, that may be supplied by tools, likely with restricted API support. Some programming languages and tools allow cross-platform app support (i.e. for both Android and iOS). Third party tools, development environments, and language support have also continued to evolve and expand since the initial SDK was released in 2008. The official Android app distribution mechanism to end users is Google Play; it also allows staged gradual app release, as well as distribution of pre-release app versions to testers.', 'and.jpg', '2022-03-17 01:30:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
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
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
