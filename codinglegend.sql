-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2019 at 08:24 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codinglegend`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone_num` varchar(100) NOT NULL,
  `msg` varchar(100) NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'test', '123456', 'test', '2019-10-10 16:13:21', 'test@test.com'),
(2, 'parul', '9696747412', 'how r u', NULL, 'parul@gmail.com'),
(3, 'parul', '5556845453', 'how do you do', '2019-10-10 17:05:11', 'parul@gmail.com'),
(4, 'parul', '5556845453', 'how do you do', '2019-10-10 18:48:11', 'parul@gmail.com'),
(5, 'riya', '9211420567', 'kaha h moti', '2019-10-10 18:49:09', 'riya@gmail.com'),
(6, 'Dhreej', '9251153278', 'tune aisa kyu kiya', '2019-10-11 17:12:52', 'Dhreej@gmail.com'),
(14, 'Dhreej', '9251153278', 'tune aisa kyu kiya', '2019-10-11 18:33:30', 'Dhreej@gmail.com'),
(15, 'sonu chaurasia', '9641900005', 'i want job ', '2019-10-11 18:34:23', 'sonu.chaurasia76@gmail.com'),
(16, 'Bimla', '9845465454', 'my mother is good mother amoung all mother.', '2019-10-14 20:24:38', 'bimla@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(50) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(50) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `img_file` varchar(25) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(2, 'Chandrayaan-2 Space mission', 'moon mission of india', 'second-post', 'Mission Chandrayaan-2 is the second lunar exploration mission developed by the Indian Space Research organisation. The primary objectives of the Chandrayaan-2 lander were to demonstrate the ability to soft-land on the lunar surface and operate a robotic rover on the surface. Scientific goals include orbital studies of lunar topography, mineralogy, elemental abundance, the lunar exosphere, and signatures of hydroxyl and water ice.', 'chand-bg.jpg', '2019-10-16 19:28:42'),
(3, 'India vs South Africa, 2nd Test: Ruthless India thump South', 'india vs south africa', 'third-post', ' India maintained their formidable home record by crushing South Africa by an innings and 137 runs in the second test at Pune to clinch the three-test series with a match to spare on Sunday. Made to follow on, South Africa were bundled out for 189 in their second innings in a little over two sessions as the hosts took an unassailable 2-0 lead in the series.\r\n\r\nIt was the fourth straight win in as many tests in the World Test Championship for Virat Kohli’s men, who also won 2-0 in West Indies, and India have now won 11 consecutive test series at home.', 'indiavssouth-bg.jpg', '2019-10-14 16:24:14'),
(4, 'Haryana Legislative Assembly election, 2019', 'election', 'fourth-post', 'The state of Haryana is heading for polls to elect a fresh Legislative Assembly. Elections will be held for all of the 90 seats in the Vidhan Sabha.\r\n\r\nThe tenure of the sitting Assembly is scheduled to end on November 2.\r\n\r\nVoters in Haryana will head for polling in a single phase on October 21. On the same day, voters in Maharashtra will also cast their ballots. Counting of votes will happen on October 24.\r\n\r\nOver 1.8 crore people in Haryana are eligible to vote. The Election Commission (EC) is setting up 19,425 polling stations across the state.', 'election-bg.jpg', '2019-10-14 16:24:14'),
(5, 'India-Mars Orbiter Mission', 'mars mission Success', 'fifth-next', 'Marking India\'s first venture into the interplanetary space, MOM will explore and observe Mars surface features, morphology, mineralogy and the Martian atmosphere. Further, a specific search for methane in the Martian atmosphere will provide information about the possibility or the past existence of life on the planet.\r\n\r\nThe enormous distances involved in interplanetary missions present a demanding challenge; developing and mastering the technologies essential for these missions will open endless possibilities for space exploration. After leaving Earth, the Orbiter will have to endure the Interplanetary space for 300 days before Mars capture. Apart from deep A space communications and navigation-guidance-control capabilities, the mission will require autonomy at the spacecraft end to handle contingencies.', 'mars-bg.jpg', '2019-10-17 16:06:44'),
(6, 'Howdy, Modi! from the audience: How Narendra Modi, Donald Trump held the world\'s attention', 'Howdy, Modi! event in USA', 'slug-next3', 'Howdy Modi was a community summit hosted by Texas India Forum (TIF) for Indian Prime Minister Narendra Modi and the President of the United States Donald Trump on Sunday, September 22nd at the NRG Stadium in Houston, Texas. Over 50,000 attended the sold-out event, making it the largest gathering for an invited foreign leader visiting the United States other than the Pope. The “Howdy Modi” summit was organized with the support of more than 1,000 volunteers and 650 Texas-based Welcome Partner organizations.', 'modii-bg.jpg', '2019-10-14 16:40:34');

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
  MODIFY `sno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
