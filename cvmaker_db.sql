-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2025 at 01:08 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cvmaker_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `auth_user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`auth_user_id`, `username`, `email`, `password`, `created_at`) VALUES
(1, 'newUsername', 'john@example.com', '$2b$10$MCWJlBjNTpDuh12e1Suug.mjoV5rAOiQnRu.K/WCRenwa5xomeCEq', '2024-11-04 08:48:25'),
(2, 'usmankhalid', 'usmankhalid@gmail.com', '$2b$10$O12GsTZYldRo0jzcuaVhFOhxG3cLhjX/HFNj3b.8EMjgahTB8uDhq', '2024-11-04 12:35:11'),
(3, 'usman', 'usman@gmail.com', '$2b$10$srgnWaUmdqATw3didGsPv.IEeevbYsrYLgGGyl7214/wkc3xjVaba', '2024-11-05 09:17:23'),
(4, 'updatetestuser', 'testuser@example.com', '$2b$10$/OsgSQ7tFD1fd87UxqZdv.xOKNcRttFdffIFEPbvRndSgdKDyWT1S', '2024-12-27 06:11:48'),
(5, 'John Doe', 'john.doe@example.com', '$2a$10$tdcaPfP19KyiqWnhVoDB9O/K91ezMs6SuLAZTQPvXG7d0N7z.GB52', '2025-01-13 09:10:32'),
(6, 'basogapaj', 'wony@mailinator.com', '$2a$10$srbz9M29h52PY1HF9P320uHVfx18Iw.Q2kAwtJU.22S7OTUlWKohi', '2025-01-14 09:49:23'),
(7, 'detafoqu', 'gutysiwune@mailinator.com', '$2a$10$LK4D4c6WLuPePXGeMYrKv.1LFsmZBIsvz5qv0lwAbCTt1IHHhGt3m', '2025-01-14 12:04:33');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `cv_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `institution` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `cv_id`, `title`, `institution`, `start_date`, `end_date`) VALUES
(1, 2, 'Machine Learning Basics', 'Online University', '2021-03-01', '2021-05-01'),
(2, 2, 'Advanced Python Programming', 'Coding Academy', '2022-07-01', '2022-09-01'),
(3, 3, 'Machine Learning Basics', 'Online University', '2021-03-01', '2021-05-01'),
(4, 3, 'Advanced Python Programming', 'Coding Academy', '2022-07-01', '2022-09-01'),
(7, 6, 'Advanced Algorithms', 'Coursera', '2020-01-01', '2020-03-01'),
(8, 6, 'Machine Learning', 'edX', '2021-04-01', '2021-07-01'),
(9, 7, 'Advanced Algorithms', 'Coursera', '2020-01-01', '2020-03-01'),
(10, 7, 'Machine Learning', 'edX', '2021-04-01', '2021-07-01'),
(13, 9, 'Advanced Algorithms', 'Coursera', '2020-01-01', '2020-03-01'),
(14, 9, 'Machine Learning', 'edX', '2021-04-01', '2021-07-01'),
(16, 11, 'Advanced Algorithms', 'Coursera', '2020-01-01', '2020-03-01'),
(17, 11, 'Machine Learning', 'edX', '2021-04-01', '2021-07-01'),
(20, 4, 'Updated Advanced Algorithms', 'Updated Coursera', '2020-01-01', '2020-03-01'),
(21, 13, 'Advanced JavaScript', 'Coursera', '2020-01-01', '2020-03-01'),
(22, 14, 'React Development', 'Udemy', '2021-02-01', '2021-05-01'),
(23, 14, 'Machine Learning Basics', 'Coursera', '2019-01-01', '2019-03-01'),
(24, 15, 'React Development', 'Udemy', '2021-02-01', '2021-05-01'),
(25, 15, 'Machine Learning Basics', 'Coursera', '2019-01-01', '2019-03-01'),
(26, 16, 'React Development', 'Udemy', '2021-02-01', '2021-05-01'),
(27, 16, 'Machine Learning Basics', 'Coursera', '2019-01-01', '2019-03-01'),
(28, 17, 'React Development', 'Udemy', '2021-02-01', '2021-05-01'),
(29, 17, 'Machine Learning Basics', 'Coursera', '2019-01-01', '2019-03-01'),
(30, 18, 'React Development', 'Udemy', '2021-02-01', '2021-05-01'),
(31, 18, 'Machine Learning Basics', 'Coursera', '2019-01-01', '2019-03-01'),
(32, 20, 'React Development', 'Udemy', '2021-02-01', '2021-05-01'),
(33, 20, 'Machine Learning Basics', 'Coursera', '2019-01-01', '2019-03-01'),
(34, 22, 'React Development', 'Udemy', '2021-02-01', '2021-05-01'),
(35, 22, 'Machine Learning Basics', 'Coursera', '2019-01-01', '2019-03-01'),
(36, 23, 'React Development', 'Udemy', '2021-02-01', '2021-05-01'),
(37, 23, 'Machine Learning Basics', 'Coursera', '2019-01-01', '2019-03-01'),
(38, 24, 'Advanced JavaScript', 'Coursera', '2021-06-01', '2021-09-01'),
(39, 24, 'Cloud Computing Fundamentals', 'edX', '2022-03-01', '2022-06-01'),
(40, 25, 'Molestiae atque ad r', 'Rerum molestiae corp', '1972-01-21', '2013-09-20'),
(41, 26, 'Officiis soluta cons', 'Fuga Ut tenetur lab', '2008-08-05', '1978-05-22'),
(42, 27, 'Repudiandae dolor ve', 'Deleniti aut consect', '1980-06-07', '2012-05-20'),
(43, 28, 'Aliqua Tempor animi', 'Dolor voluptatem fug', '2024-01-06', '1987-03-26');

-- --------------------------------------------------------

--
-- Table structure for table `cvs_data`
--

CREATE TABLE `cvs_data` (
  `cv_id` int(11) NOT NULL,
  `auth_user_id` int(11) DEFAULT NULL,
  `cv_unique_id` varchar(255) DEFAULT NULL,
  `hobbies` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_data_id` int(11) DEFAULT NULL,
  `template_visibility` enum('Private','Public') DEFAULT 'Private'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cvs_data`
--

INSERT INTO `cvs_data` (`cv_id`, `auth_user_id`, `cv_unique_id`, `hobbies`, `created_at`, `user_data_id`, `template_visibility`) VALUES
(1, 1, 'CV12345', 'Reading, Coding, Hiking', '2024-11-04 08:54:03', 4, 'Private'),
(2, 1, 'CV1345', 'Reading, Coding, Hiking', '2024-11-04 09:03:05', 5, 'Private'),
(3, 1, 'CV345', 'Reading, Coding, Hiking', '2024-11-04 09:06:32', 6, 'Private'),
(4, 1, 'cv_1234567890', 'Updated hobbies description', '2024-11-04 09:38:49', NULL, 'Private'),
(6, 1, 'cv_12343443', 'Reading, Hiking, and Traveling', '2024-11-04 09:44:11', NULL, 'Private'),
(7, 1, 'cv_16568443', 'Reading, Hiking, and Traveling', '2024-11-04 09:48:18', NULL, 'Private'),
(9, 1, 'cv_155684543', 'Reading, Hiking, and Traveling', '2024-11-04 10:31:31', NULL, 'Private'),
(11, 1, 'cv_4543', 'Reading, Hiking, and Traveling', '2024-11-05 07:58:46', NULL, 'Private'),
(13, 4, 'unique_cv_id_123', 'Reading, Coding, Hiking', '2024-12-27 06:15:24', NULL, 'Private'),
(14, 4, 'unique_cv_id_5678', 'Traveling, Photography, Coding, Painting', '2024-12-27 06:45:02', NULL, 'Public'),
(15, 4, 'unique_cv_id_2341', 'Traveling, Photography, Coding, Painting', '2024-12-27 07:05:24', NULL, 'Public'),
(16, 4, 'unique_cv_id_2351', 'Traveling, Photography, Coding, Painting', '2024-12-27 07:05:30', NULL, 'Public'),
(17, 4, 'unique_cv_id_2151', 'Traveling, Photography, Coding, Painting', '2024-12-27 07:05:33', NULL, 'Public'),
(18, 4, 'unique_cv_id_8641', 'Traveling, Photography, Coding, Painting', '2024-12-27 09:58:03', NULL, 'Public'),
(20, 4, 'unique_cv_id_9641', 'Traveling, Photography, Coding, Painting', '2024-12-27 10:24:33', NULL, 'Public'),
(22, 4, 'unique_cv_id_9121', 'Traveling, Photography, Coding, Painting', '2024-12-30 08:41:27', NULL, 'Public'),
(23, 4, 'unique_cv_id_1581', 'Traveling, Photography, Coding, Painting', '2024-12-30 08:42:16', NULL, 'Public'),
(24, 5, 'unique-cv-id-12345', 'Reading, Traveling, and Coding', '2025-01-13 09:20:03', NULL, 'Public'),
(25, 6, 'cv-1736849494667', '<p>Ut ratione atque qua.</p>', '2025-01-14 10:11:34', NULL, 'Private'),
(26, 7, 'cv-1736856308133', '<p>Ad minima et volupta.</p>', '2025-01-14 12:05:08', NULL, 'Private'),
(27, 7, 'cv-1736856318669', '<p>Incididunt iure quia.</p>', '2025-01-14 12:05:18', NULL, 'Private'),
(28, 5, 'cv-1736931040613', '<p>Et voluptatem impedi.</p>', '2025-01-15 08:50:40', NULL, 'Private');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `education_id` int(11) NOT NULL,
  `cv_id` int(11) DEFAULT NULL,
  `degree` varchar(100) DEFAULT NULL,
  `school_name` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`education_id`, `cv_id`, `degree`, `school_name`, `city`, `start_date`, `end_date`, `description`) VALUES
(1, 2, 'Bachelor\'s in Computer Science', 'University A', 'New York', '2015-09-01', '2019-06-30', 'Studied core computer science subjects including data structures, algorithms, and software engineering.'),
(2, 2, 'Master\'s in Data Science', 'University B', 'Boston', '2020-09-01', '2022-06-30', 'Specialized in data analytics, machine learning, and artificial intelligence.'),
(3, 3, 'Bachelor\'s in Computer Science', 'University A', 'New York', '2015-09-01', '2019-06-30', 'Studied core computer science subjects including data structures, algorithms, and software engineering.'),
(4, 3, 'Master\'s in Data Science', 'University B', 'Boston', '2020-09-01', '2022-06-30', 'Specialized in data analytics, machine learning, and artificial intelligence.'),
(6, 6, 'Bachelor of Science in Computer Science', 'University of California', 'Los Angeles', '2012-09-01', '2016-06-01', 'Studied computer science with a focus on software engineering.'),
(7, 7, 'Bachelor of Science in Computer Science', 'University of California', 'Los Angeles', '2012-09-01', '2016-06-01', 'Studied computer science with a focus on software engineering.'),
(9, 9, 'Bachelor of Science in Computer Science', 'University of California', 'Los Angeles', '2012-09-01', '2016-06-01', 'Studied computer science with a focus on software engineering.'),
(11, 11, 'Bachelor of Science in Computer Science', 'University of California', 'Los Angeles', '2012-09-01', '2016-06-01', 'Studied computer science with a focus on software engineering.'),
(13, 4, 'Updated Bachelor of Science in Computer Science', 'Updated University', 'Updated Los Angeles', '2012-09-01', '2016-06-01', 'Updated focus on software engineering'),
(14, 13, 'Bachelor\'s in Computer Science', 'MIT', 'Cambridge', '2010-09-01', '2014-06-01', 'Studied software engineering'),
(15, 14, 'Master\'s in Computer Science', 'Stanford University', 'Stanford', '2014-09-01', '2016-06-01', 'Specialized in software development and AI.'),
(16, 14, 'Bachelor\'s in Information Technology', 'UC Berkeley', 'Berkeley', '2010-09-01', '2014-06-01', 'Focused on software engineering and networking.'),
(17, 15, 'Master\'s in Computer Science', 'Stanford University', 'Stanford', '2014-09-01', '2016-06-01', 'Specialized in software development and AI.'),
(18, 15, 'Bachelor\'s in Information Technology', 'UC Berkeley', 'Berkeley', '2010-09-01', '2014-06-01', 'Focused on software engineering and networking.'),
(19, 16, 'Master\'s in Computer Science', 'Stanford University', 'Stanford', '2014-09-01', '2016-06-01', 'Specialized in software development and AI.'),
(20, 16, 'Bachelor\'s in Information Technology', 'UC Berkeley', 'Berkeley', '2010-09-01', '2014-06-01', 'Focused on software engineering and networking.'),
(21, 17, 'Master\'s in Computer Science', 'Stanford University', 'Stanford', '2014-09-01', '2016-06-01', 'Specialized in software development and AI.'),
(22, 17, 'Bachelor\'s in Information Technology', 'UC Berkeley', 'Berkeley', '2010-09-01', '2014-06-01', 'Focused on software engineering and networking.'),
(23, 18, 'Master\'s in Computer Science', 'Stanford University', 'Stanford', '2014-09-01', '2016-06-01', 'Specialized in software development and AI.'),
(24, 18, 'Bachelor\'s in Information Technology', 'UC Berkeley', 'Berkeley', '2010-09-01', '2014-06-01', 'Focused on software engineering and networking.'),
(25, 20, 'Master\'s in Computer Science', 'Stanford University', 'Stanford', '2014-09-01', '2016-06-01', 'Specialized in software development and AI.'),
(26, 20, 'Bachelor\'s in Information Technology', 'UC Berkeley', 'Berkeley', '2010-09-01', '2014-06-01', 'Focused on software engineering and networking.'),
(27, 22, 'Master\'s in Computer Science', 'Stanford University', 'Stanford', '2014-09-01', '2016-06-01', 'Specialized in software development and AI.'),
(28, 22, 'Bachelor\'s in Information Technology', 'UC Berkeley', 'Berkeley', '2010-09-01', '2014-06-01', 'Focused on software engineering and networking.'),
(29, 23, 'Master\'s in Computer Science', 'Stanford University', 'Stanford', '2014-09-01', '2016-06-01', 'Specialized in software development and AI.'),
(30, 23, 'Bachelor\'s in Information Technology', 'UC Berkeley', 'Berkeley', '2010-09-01', '2014-06-01', 'Focused on software engineering and networking.'),
(31, 24, 'Bachelor of Science in Computer Science', 'Example University', 'Boston', '2010-08-01', '2014-05-01', 'Studied software engineering, data structures, and algorithms.'),
(32, 25, 'Sint in voluptatem', 'Ipsa eum maxime lab', 'Dolor distinctio Re', '1979-06-16', '1989-04-12', '<p>Ad qui nihil est, do.</p>'),
(33, 26, 'Nulla asperiores des', 'Qui perferendis quo ', 'Voluptates mollit ut', '1987-11-21', '2020-06-16', '<p>Et molestias sint, e.</p>'),
(34, 27, 'Aut culpa animi vol', 'Eius ullamco digniss', 'Explicabo Ducimus ', '1980-11-21', '1987-03-06', '<p>Est, alias quo in qu.</p>'),
(35, 28, 'Doloremque blanditii', 'Dolorem eos officii', 'Dolor quia velit mo', '1983-06-02', '1977-11-11', '<p>Est, voluptatem, mol.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `employment_history`
--

CREATE TABLE `employment_history` (
  `employment_id` int(11) NOT NULL,
  `cv_id` int(11) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `employer` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_current` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employment_history`
--

INSERT INTO `employment_history` (`employment_id`, `cv_id`, `jobTitle`, `employer`, `city`, `description`, `start_date`, `end_date`, `is_current`) VALUES
(1, 2, 'Software Engineer', 'Tech Corp', 'New York', 'Worked on various software projects, including developing and deploying new features.', '2020-01-01', '2021-12-31', 0),
(2, 2, 'Senior Developer', 'Innovate Ltd', 'San Francisco', 'Led a team of developers to build scalable web applications.', '2022-01-01', '2023-12-31', 1),
(3, 3, 'Software Engineer', 'Tech Corp', 'New York', 'Worked on various software projects, including developing and deploying new features.', '2020-01-01', '2021-12-31', 0),
(4, 3, 'Senior Developer', 'Innovate Ltd', 'San Francisco', 'Led a team of developers to build scalable web applications.', '2022-01-01', '2023-12-31', 1),
(7, 6, 'Senior Developer', 'Tech Corp', 'New York', 'Led a team of developers to build scalable applications.', '2019-06-01', '2021-08-01', 0),
(8, 6, 'Junior Developer', 'Web Solutions', 'San Francisco', 'Developed and maintained web applications.', '2017-01-01', '2019-05-31', 0),
(9, 7, 'Senior Developer', 'Tech Corp', 'New York', 'Led a team of developers to build scalable applications.', '2019-06-01', '2021-08-01', 0),
(10, 7, 'Junior Developer', 'Web Solutions', 'San Francisco', 'Developed and maintained web applications.', '2017-01-01', '2019-05-31', 0),
(13, 9, 'Senior Developer', 'Tech Corp', 'New York', 'Led a team of developers to build scalable applications.', '2019-06-01', '2021-08-01', 0),
(14, 9, 'Junior Developer', 'Web Solutions', 'San Francisco', 'Developed and maintained web applications.', '2017-01-01', '2019-05-31', 0),
(16, 11, 'Senior Developer', 'Tech Corp', 'New York', 'Led a team of developers to build scalable applications.', '2019-06-01', '2021-08-01', 0),
(17, 11, 'Junior Developer', 'Web Solutions', 'San Francisco', 'Developed and maintained web applications.', '2017-01-01', '2019-05-31', 0),
(20, 4, 'Updated Senior Developer', 'Updated Tech Corp', 'Updated New York', 'Led an updated team of developers', '2019-06-01', '2021-08-01', 0),
(21, 13, 'Senior Developer', 'TechCorp', 'San Francisco', 'Developed web applications', '2018-01-01', '2021-12-31', 0),
(22, 14, 'Lead Developer', 'InnovateTech', 'Seattle', 'Led a team to develop innovative SaaS solutions.', '2019-04-01', '2022-06-30', 0),
(23, 14, 'Software Engineer', 'CodeWorks', 'San Diego', 'Developed microservices and APIs.', '2015-08-01', '2019-03-31', 0),
(24, 15, 'Lead Developer', 'InnovateTech', 'Seattle', 'Led a team to develop innovative SaaS solutions.', '2019-04-01', '2022-06-30', 0),
(25, 15, 'Software Engineer', 'CodeWorks', 'San Diego', 'Developed microservices and APIs.', '2015-08-01', '2019-03-31', 0),
(26, 16, 'Lead Developer', 'InnovateTech', 'Seattle', 'Led a team to develop innovative SaaS solutions.', '2019-04-01', '2022-06-30', 0),
(27, 16, 'Software Engineer', 'CodeWorks', 'San Diego', 'Developed microservices and APIs.', '2015-08-01', '2019-03-31', 0),
(28, 17, 'Lead Developer', 'InnovateTech', 'Seattle', 'Led a team to develop innovative SaaS solutions.', '2019-04-01', '2022-06-30', 0),
(29, 17, 'Software Engineer', 'CodeWorks', 'San Diego', 'Developed microservices and APIs.', '2015-08-01', '2019-03-31', 0),
(30, 18, 'Lead Developer', 'InnovateTech', 'Seattle', 'Led a team to develop innovative SaaS solutions.', '2019-04-01', '2022-06-30', 0),
(31, 18, 'Software Engineer', 'CodeWorks', 'San Diego', 'Developed microservices and APIs.', '2015-08-01', '2019-03-31', 0),
(32, 20, 'Lead Developer', 'InnovateTech', 'Seattle', 'Led a team to develop innovative SaaS solutions.', '2019-04-01', '2022-06-30', 0),
(33, 20, 'Software Engineer', 'CodeWorks', 'San Diego', 'Developed microservices and APIs.', '2015-08-01', '2019-03-31', 0),
(34, 22, 'Lead Developer', 'InnovateTech', 'Seattle', 'Led a team to develop innovative SaaS solutions.', '2019-04-01', '2022-06-30', 0),
(35, 22, 'Software Engineer', 'CodeWorks', 'San Diego', 'Developed microservices and APIs.', '2015-08-01', '2019-03-31', 0),
(36, 23, 'Lead Developer', 'InnovateTech', 'Seattle', 'Led a team to develop innovative SaaS solutions.', '2019-04-01', '2022-06-30', 0),
(37, 23, 'Software Engineer', 'CodeWorks', 'San Diego', 'Developed microservices and APIs.', '2015-08-01', '2019-03-31', 0),
(38, 24, 'Software Developer', 'TechCorp', 'San Francisco', 'Developed full-stack web applications.', '2020-01-01', '2022-01-01', 0),
(39, 24, 'Senior Software Engineer', 'Innovatech', 'New York', 'Led a team of developers in building scalable applications.', '2022-02-01', NULL, 1),
(40, 25, 'Impedit nostrum qua', 'Qui odit earum deser', 'Perspiciatis dolore', '<p>Nesciunt, in autem q.</p>', '1983-10-25', '1987-09-26', 1),
(41, 26, 'Accusantium corporis', 'Vel consequatur Des', 'Nesciunt autem ipsa', '<p>Duis et iure quo ex .</p>', '1993-09-24', '2017-03-15', 0),
(42, 27, 'Dignissimos eu est o', 'Velit fuga Et labor', 'Repudiandae alias se', '<p>Aut exercitationem e.</p>', '1982-12-19', '1998-08-09', 0),
(43, 28, 'Consequuntur ex quis', 'Aliqua Aliquip offi', 'Quo eiusmod consequa', '<p>Voluptatem sed labor.</p>', '2011-03-21', '1982-11-11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `internships`
--

CREATE TABLE `internships` (
  `internship_id` int(11) NOT NULL,
  `cv_id` int(11) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `internships`
--

INSERT INTO `internships` (`internship_id`, `cv_id`, `jobTitle`, `company`, `city`, `description`, `start_date`, `end_date`) VALUES
(2, 6, 'Software Intern', 'Startup Hub', 'San Francisco', 'Assisted in building the backend of a web application.', '2015-06-01', '2015-09-01'),
(3, 7, 'Software Intern', 'Startup Hub', 'San Francisco', 'Assisted in building the backend of a web application.', '2015-06-01', '2015-09-01'),
(5, 9, 'Software Intern', 'Startup Hub', 'San Francisco', 'Assisted in building the backend of a web application.', '2015-06-01', '2015-09-01'),
(7, 11, 'Software Intern', 'Startup Hub', 'San Francisco', 'Assisted in building the backend of a web application.', '2015-06-01', '2015-09-01'),
(9, 4, 'Updated Software Intern', 'Updated Startup Hub', 'Updated San Francisco', 'Assisted in building the updated backend', '2015-06-01', '2015-09-01'),
(10, 13, 'Intern Developer', 'StartUp Inc.', 'Los Angeles', 'Assisted in developing APIs', '2014-06-01', '2014-09-01'),
(11, 14, 'Software Intern', 'NextGen Tech', 'Boston', 'Collaborated on the development of client-side applications.', '2016-06-01', '2016-09-01'),
(12, 14, 'Backend Developer Intern', 'TechNova', 'Chicago', 'Worked on optimizing database queries.', '2015-06-01', '2015-09-01'),
(13, 15, 'Software Intern', 'NextGen Tech', 'Boston', 'Collaborated on the development of client-side applications.', '2016-06-01', '2016-09-01'),
(14, 15, 'Backend Developer Intern', 'TechNova', 'Chicago', 'Worked on optimizing database queries.', '2015-06-01', '2015-09-01'),
(15, 16, 'Software Intern', 'NextGen Tech', 'Boston', 'Collaborated on the development of client-side applications.', '2016-06-01', '2016-09-01'),
(16, 16, 'Backend Developer Intern', 'TechNova', 'Chicago', 'Worked on optimizing database queries.', '2015-06-01', '2015-09-01'),
(17, 17, 'Software Intern', 'NextGen Tech', 'Boston', 'Collaborated on the development of client-side applications.', '2016-06-01', '2016-09-01'),
(18, 17, 'Backend Developer Intern', 'TechNova', 'Chicago', 'Worked on optimizing database queries.', '2015-06-01', '2015-09-01'),
(19, 18, 'Software Intern', 'NextGen Tech', 'Boston', 'Collaborated on the development of client-side applications.', '2016-06-01', '2016-09-01'),
(20, 18, 'Backend Developer Intern', 'TechNova', 'Chicago', 'Worked on optimizing database queries.', '2015-06-01', '2015-09-01'),
(21, 20, 'Software Intern', 'NextGen Tech', 'Boston', 'Collaborated on the development of client-side applications.', '2016-06-01', '2016-09-01'),
(22, 20, 'Backend Developer Intern', 'TechNova', 'Chicago', 'Worked on optimizing database queries.', '2015-06-01', '2015-09-01'),
(23, 22, 'Software Intern', 'NextGen Tech', 'Boston', 'Collaborated on the development of client-side applications.', '2016-06-01', '2016-09-01'),
(24, 22, 'Backend Developer Intern', 'TechNova', 'Chicago', 'Worked on optimizing database queries.', '2015-06-01', '2015-09-01'),
(25, 23, 'Software Intern', 'NextGen Tech', 'Boston', 'Collaborated on the development of client-side applications.', '2016-06-01', '2016-09-01'),
(26, 23, 'Backend Developer Intern', 'TechNova', 'Chicago', 'Worked on optimizing database queries.', '2015-06-01', '2015-09-01'),
(27, 24, 'Software Intern', 'StartupX', 'Chicago', 'Worked on API development and integration.', '2013-06-01', '2013-08-01'),
(28, 25, 'Ab sint porro et ali', 'Voluptas sit enim m', 'Elit illo sapiente ', '<p>Aspernatur laboriosa.</p>', '2011-04-21', '2016-10-24'),
(29, 26, 'Nulla aut ipsum at ', 'Dolor ex ea nostrum ', 'Voluptates magni rei', '<p>Excepteur aut sed el.</p>', '1999-03-18', '1980-01-12'),
(30, 27, 'Quis tenetur et et e', 'Id quas dicta sed qu', 'Placeat est ut non ', '<p>Quia adipisci est, i.</p>', '2009-10-28', '1972-06-15'),
(31, 28, 'Quia vel dignissimos', 'Natus aut ad eaque i', 'Id non ea consectetu', '<p>Quo inventore fuga. .</p>', '1983-12-20', '2018-02-12');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `language_id` int(11) NOT NULL,
  `cv_id` int(11) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `proficiency` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`language_id`, `cv_id`, `language`, `proficiency`) VALUES
(1, 2, 'English', 5),
(2, 2, 'Spanish', 4),
(3, 2, 'French', 3),
(4, 3, 'English', 5),
(5, 3, 'Spanish', 4),
(6, 3, 'French', 3),
(9, 6, 'English', 100),
(10, 6, 'Spanish', 70),
(11, 7, 'English', 100),
(12, 7, 'Spanish', 70),
(15, 9, 'English', 100),
(16, 9, 'Spanish', 70),
(18, 11, 'English', 100),
(19, 11, 'Spanish', 70),
(22, 4, 'Updated English', 100),
(23, 13, 'English', 0),
(24, 14, 'English', 0),
(25, 14, 'Spanish', 0),
(26, 15, 'English', 0),
(27, 15, 'Spanish', 0),
(28, 16, 'English', 0),
(29, 16, 'Spanish', 0),
(30, 17, 'English', 0),
(31, 17, 'Spanish', 0),
(32, 18, 'English', 0),
(33, 18, 'Spanish', 0),
(34, 20, 'English', 0),
(35, 20, 'Spanish', 0),
(36, 22, 'English', 0),
(37, 22, 'Spanish', 0),
(38, 23, 'English', 0),
(39, 23, 'Spanish', 0),
(40, 24, 'English', 0),
(41, 24, 'Spanish', 0),
(42, 25, 'Qui minus quia adipi', 0),
(43, 26, 'Consequatur possimu', 0),
(44, 27, 'Voluptate ut deserun', 0),
(45, 28, 'Fugiat est est enim ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `link_id` int(11) NOT NULL,
  `cv_id` int(11) DEFAULT NULL,
  `label` varchar(100) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`link_id`, `cv_id`, `label`, `url`) VALUES
(3, 9, 'LinkedIn', 'https://www.linkedin.com/in/johndoe'),
(4, 9, 'GitHub', 'https://github.com/johndoe'),
(7, 11, 'LinkedIn', 'https://www.linkedin.com/in/johndoe'),
(8, 11, 'GitHub', 'https://github.com/johndoe'),
(11, 4, 'Updated LinkedIn', 'https://www.linkedin.com/in/updatedprofile'),
(12, 4, 'Updated GitHub', 'https://github.com/updatedprofile'),
(13, 13, 'Portfolio', 'https://portfolio.example.com'),
(14, 14, 'Portfolio', 'https://portfolio.janesmith.dev'),
(15, 14, 'LinkedIn', 'https://linkedin.com/in/janesmith'),
(16, 14, 'GitHub', 'https://github.com/janesmith'),
(17, 15, 'Portfolio', 'https://portfolio.janesmith.dev'),
(18, 15, 'LinkedIn', 'https://linkedin.com/in/janesmith'),
(19, 15, 'GitHub', 'https://github.com/janesmith'),
(20, 16, 'Portfolio', 'https://portfolio.janesmith.dev'),
(21, 16, 'LinkedIn', 'https://linkedin.com/in/janesmith'),
(22, 16, 'GitHub', 'https://github.com/janesmith'),
(23, 17, 'Portfolio', 'https://portfolio.janesmith.dev'),
(24, 17, 'LinkedIn', 'https://linkedin.com/in/janesmith'),
(25, 17, 'GitHub', 'https://github.com/janesmith'),
(26, 18, 'Portfolio', 'https://portfolio.janesmith.dev'),
(27, 18, 'LinkedIn', 'https://linkedin.com/in/janesmith'),
(28, 18, 'GitHub', 'https://github.com/janesmith'),
(29, 20, 'Portfolio', 'https://portfolio.janesmith.dev'),
(30, 20, 'LinkedIn', 'https://linkedin.com/in/janesmith'),
(31, 20, 'GitHub', 'https://github.com/janesmith'),
(32, 22, 'Portfolio', 'https://portfolio.janesmith.dev'),
(33, 22, 'LinkedIn', 'https://linkedin.com/in/janesmith'),
(34, 22, 'GitHub', 'https://github.com/janesmith'),
(35, 23, 'Portfolio', 'https://portfolio.janesmith.dev'),
(36, 23, 'LinkedIn', 'https://linkedin.com/in/janesmith'),
(37, 23, 'GitHub', 'https://github.com/janesmith'),
(38, 24, 'LinkedIn', 'https://www.linkedin.com/in/johndoe'),
(39, 24, 'GitHub', 'https://github.com/johndoe'),
(40, 25, 'Eveniet omnis optio', 'https://www.bijyceloqedej.co'),
(41, 26, 'Ratione molestias cu', 'https://www.doz.co'),
(42, 27, 'Ea cillum et velit i', 'https://www.xypyvedufisusal.cc'),
(43, 28, 'Est expedita duis ni', 'https://www.qigehubogoloja.co.uk');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `skill_id` int(11) NOT NULL,
  `cv_id` int(11) DEFAULT NULL,
  `skill` varchar(100) DEFAULT NULL,
  `proficiency` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`skill_id`, `cv_id`, `skill`, `proficiency`) VALUES
(1, 2, 'Python', 5),
(2, 2, 'Machine Learning', 4),
(3, 2, 'Data Analysis', 4),
(4, 2, 'JavaScript', 4),
(5, 3, 'Python', 5),
(6, 3, 'Machine Learning', 4),
(7, 3, 'Data Analysis', 4),
(8, 3, 'JavaScript', 4),
(12, 6, 'JavaScript', 85),
(13, 6, 'Python', 90),
(14, 6, 'SQL', 80),
(15, 7, 'JavaScript', 85),
(16, 7, 'Python', 90),
(17, 7, 'SQL', 80),
(21, 9, 'JavaScript', 85),
(22, 9, 'Python', 90),
(23, 9, 'SQL', 80),
(25, 11, 'JavaScript', 85),
(26, 11, 'Python', 90),
(27, 11, 'SQL', 80),
(31, 4, 'Updated JavaScript', 95),
(32, 13, 'JavaScript', 0),
(33, 14, 'React.js', 0),
(34, 14, 'Node.js', 0),
(35, 14, 'Python', 0),
(36, 15, 'React.js', 0),
(37, 15, 'Node.js', 0),
(38, 15, 'Python', 0),
(39, 16, 'React.js', 0),
(40, 16, 'Node.js', 0),
(41, 16, 'Python', 0),
(42, 17, 'React.js', 0),
(43, 17, 'Node.js', 0),
(44, 17, 'Python', 0),
(45, 18, 'React.js', 0),
(46, 18, 'Node.js', 0),
(47, 18, 'Python', 0),
(48, 20, 'React.js', 0),
(49, 20, 'Node.js', 0),
(50, 20, 'Python', 0),
(51, 22, 'React.js', 0),
(52, 22, 'Node.js', 0),
(53, 22, 'Python', 0),
(54, 23, 'React.js', 0),
(55, 23, 'Node.js', 0),
(56, 23, 'Python', 0),
(57, 24, 'JavaScript', 0),
(58, 24, 'React', 0),
(59, 25, 'Est ex sit soluta cu', 3),
(60, 26, 'Eius ea dolor iusto ', 3),
(61, 27, 'Provident molestias', 3),
(62, 28, 'Ad id sint quos nihi', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `user_data_id` int(11) NOT NULL,
  `cv_id` int(11) DEFAULT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `place_of_birth` varchar(100) DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `summary` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`user_data_id`, `cv_id`, `firstName`, `lastName`, `jobTitle`, `address`, `city`, `postal_code`, `country`, `phone`, `date_of_birth`, `place_of_birth`, `nationality`, `email`, `template_id`, `summary`) VALUES
(1, NULL, 'John', 'Doe', 'Software Engineer', '123 Main St', 'New York', '10001', 'USA', '+1234567890', '1990-01-01', 'New York', 'American', 'john.doe@example.com', NULL, NULL),
(2, NULL, 'John', 'Doe', 'Software Engineer', '123 Main St', 'New York', '10001', 'USA', '+1234567890', '1990-01-01', 'New York', 'American', 'john.doe@example.com', NULL, NULL),
(3, NULL, 'John', 'Doe', 'Software Engineer', '123 Main St', 'New York', '10001', 'USA', '+1234567890', '1990-01-01', 'New York', 'American', 'john.doe@example.com', NULL, NULL),
(4, NULL, 'John', 'Doe', 'Software Engineer', '123 Main St', 'New York', '10001', 'USA', '+1234567890', '1990-01-01', 'New York', 'American', 'john.doe@example.com', NULL, NULL),
(5, NULL, 'John', 'Doe', 'Software Engineer', '123 Main St', 'New York', '10001', 'USA', '+1234567890', '1990-01-01', 'New York', 'American', 'john.doe@example.com', NULL, NULL),
(6, NULL, 'John', 'Doe', 'Software Engineer', '123 Main St', 'New York', '10001', 'USA', '+1234567890', '1990-01-01', 'New York', 'American', 'john.doe@example.com', NULL, NULL),
(7, 4, 'UpdatedFirstName', 'UpdatedLastName', 'UpdatedJobTitle', 'Updated Address', 'Updated City', '12345', 'Updated Country', '+1234567890', '1990-01-01', 'Updated Place', 'Updated Nationality', 'updatedemail@example.com', 2, 'Updated summary of the CV'),
(8, 6, 'John', 'Doe', 'Software Engineer', '123 Main St', 'San Francisco', '94105', 'USA', '+1234567890', '1990-01-01', 'San Francisco', 'American', NULL, 1, 'Experienced software engineer specializing in backend development.'),
(9, 7, 'John', 'Doe', 'Software Engineer', '123 Main St', 'San Francisco', '94105', 'USA', '+1234567890', '1990-01-01', 'San Francisco', 'American', 'mirzausman@example.com', 1, 'Experienced software engineer specializing in backend development.'),
(11, 9, 'John', 'Doe', 'Software Engineer', '123 Main St', 'San Francisco', '94105', 'USA', '+1234567890', '1990-01-01', 'San Francisco', 'American', 'mirzausman@example.com', 1, 'Experienced software engineer specializing in backend development.'),
(12, 11, 'John', 'Doe', 'Software Engineer', '123 Main St', 'San Francisco', '94105', 'USA', '+1234567890', '1990-01-01', 'San Francisco', 'American', 'mirzausman@example.com', 1, 'Experienced software engineer specializing in backend development.'),
(14, 13, 'John', 'Doe', 'Software Developer', '123 Main St', 'New York', '10001', 'USA', '+1234567890', '1990-01-01', 'New York', 'American', 'john.doe@example.com', 1, 'Experienced developer with 5+ years in web development'),
(15, 14, 'Jane', 'Smith', 'Full Stack Developer', '456 Elm St', 'Los Angeles', '90001', 'USA', '+9876543210', '1988-05-15', 'Chicago', 'American', 'jane.smith@example.com', 2, 'Innovative developer with 7+ years in building scalable web applications.'),
(16, 15, 'Jane', 'Smith', 'Full Stack Developer', '456 Elm St', 'Los Angeles', '90001', 'USA', '+9876543210', '1988-05-15', 'Chicago', 'American', 'jane.smith@example.com', 2, 'Innovative developer with 7+ years in building scalable web applications.'),
(17, 16, 'Jane', 'Smith', 'Full Stack Developer', '456 Elm St', 'Los Angeles', '90001', 'USA', '+9876543210', '1988-05-15', 'Chicago', 'American', 'jane.smith@example.com', 2, 'Innovative developer with 7+ years in building scalable web applications.'),
(18, 17, 'Jane', 'Smith', 'Full Stack Developer', '456 Elm St', 'Los Angeles', '90001', 'USA', '+9876543210', '1988-05-15', 'Chicago', 'American', 'jane.smith@example.com', 2, 'Innovative developer with 7+ years in building scalable web applications.'),
(19, 18, 'Jane', 'Smith', 'Frontend Developer', '456 Elm St', 'Los Angeles', '90001', 'USA', '+9876543210', '1988-05-15', 'Chicago', 'American', 'jane.smith@example.com', 2, 'Innovative developer with 7+ years in building scalable web applications.'),
(20, 20, 'Jane', 'Smith', 'Frontend Developer', '456 Elm St', 'Los Angeles', '90001', 'USA', '+9876543210', '1988-05-15', 'Chicago', 'American', 'jane.smith@example.com', 2, 'Innovative developer with 7+ years in building scalable web applications.'),
(21, 22, 'Jane', 'Smith', 'Frontend Developer', '456 Elm St', 'Los Angeles', '90001', 'USA', '+9876543210', '1988-05-15', 'Chicago', 'American', 'jane.smith@example.com', 2, 'Innovative developer with 7+ years in building scalable web applications.'),
(22, 23, 'Jane', 'Smith', 'FullStack Developer', '456 Elm St', 'Los Angeles', '90001', 'USA', '+9876543210', '1988-05-15', 'Chicago', 'American', 'usman@gmail.com', 2, 'Innovative developer with 7+ years in building scalable web applications.'),
(23, 24, 'John', 'Doe', 'Software Engineer', '123 Main Street', 'New York', '10001', 'USA', '+1234567890', '1990-01-01', 'New York', 'American', 'john.doe@example.com', 1, 'Experienced software engineer with expertise in web development.'),
(24, 25, 'Marvin', 'Guzman', 'Est qui dignissimos voluptate tempor suscipit voluptatem ullamco lorem laborum harum incidunt obcaec', '123 Main Street', 'Fuga Est num', '12345', 'In culpa autem', '+1 (211) 641-4014', '1990-01-01', 'City Name', 'Nationality', 'rafyzy@mailinator.com', 1, '<p>Laborum. Veritatis v.</p>'),
(25, 26, 'Cynthia', 'Parks', 'Neque odio nemo nisi qui eiusmod ea', '123 Main Street', 'Delectus enim', '12345', 'Mollitia in od', '+1 (585) 325-8096', '1990-01-01', 'City Name', 'Nationality', 'bunapocih@mailinator.com', 1, '<p>Ullamco sit aut exce.</p>'),
(26, 27, 'Castor', 'Solomon', 'Quibusdam cupidatat eum veritatis iure sed dolores aut', '123 Main Street', 'Facilis quam a', '12345', 'In incididunt ', '+1 (771) 105-9022', '1990-01-01', 'City Name', 'Nationality', 'duzapurug@mailinator.com', 1, '<p>Rerum aute dolore su.</p>'),
(27, 28, 'Katelyn', 'Harrington', 'Unde quia qui voluptatem alias mollitia et ut voluptatem nemo ut in', NULL, 'Minus libero a', NULL, 'Minima exercit', '+1 (606) 443-1946', NULL, NULL, NULL, 'fupidojudy@mailinator.com', 8, '<p>Deserunt nostrum hic.</p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`auth_user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `cv_id` (`cv_id`);

--
-- Indexes for table `cvs_data`
--
ALTER TABLE `cvs_data`
  ADD PRIMARY KEY (`cv_id`),
  ADD UNIQUE KEY `cv_unique_id` (`cv_unique_id`),
  ADD KEY `auth_user_id` (`auth_user_id`),
  ADD KEY `fk_user_data` (`user_data_id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`education_id`),
  ADD KEY `cv_id` (`cv_id`);

--
-- Indexes for table `employment_history`
--
ALTER TABLE `employment_history`
  ADD PRIMARY KEY (`employment_id`),
  ADD KEY `cv_id` (`cv_id`);

--
-- Indexes for table `internships`
--
ALTER TABLE `internships`
  ADD PRIMARY KEY (`internship_id`),
  ADD KEY `cv_id` (`cv_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `cv_id` (`cv_id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `cv_id` (`cv_id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`skill_id`),
  ADD KEY `cv_id` (`cv_id`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`user_data_id`),
  ADD KEY `cv_id` (`cv_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `auth_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `cvs_data`
--
ALTER TABLE `cvs_data`
  MODIFY `cv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `education_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `employment_history`
--
ALTER TABLE `employment_history`
  MODIFY `employment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `internships`
--
ALTER TABLE `internships`
  MODIFY `internship_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `link_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `skill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `user_data`
--
ALTER TABLE `user_data`
  MODIFY `user_data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`cv_id`) REFERENCES `cvs_data` (`cv_id`) ON DELETE CASCADE;

--
-- Constraints for table `cvs_data`
--
ALTER TABLE `cvs_data`
  ADD CONSTRAINT `cvs_data_ibfk_1` FOREIGN KEY (`auth_user_id`) REFERENCES `auth_user` (`auth_user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_user_data` FOREIGN KEY (`user_data_id`) REFERENCES `user_data` (`user_data_id`) ON DELETE CASCADE;

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_ibfk_1` FOREIGN KEY (`cv_id`) REFERENCES `cvs_data` (`cv_id`) ON DELETE CASCADE;

--
-- Constraints for table `employment_history`
--
ALTER TABLE `employment_history`
  ADD CONSTRAINT `employment_history_ibfk_1` FOREIGN KEY (`cv_id`) REFERENCES `cvs_data` (`cv_id`) ON DELETE CASCADE;

--
-- Constraints for table `internships`
--
ALTER TABLE `internships`
  ADD CONSTRAINT `internships_ibfk_1` FOREIGN KEY (`cv_id`) REFERENCES `cvs_data` (`cv_id`) ON DELETE CASCADE;

--
-- Constraints for table `languages`
--
ALTER TABLE `languages`
  ADD CONSTRAINT `languages_ibfk_1` FOREIGN KEY (`cv_id`) REFERENCES `cvs_data` (`cv_id`) ON DELETE CASCADE;

--
-- Constraints for table `links`
--
ALTER TABLE `links`
  ADD CONSTRAINT `links_ibfk_1` FOREIGN KEY (`cv_id`) REFERENCES `cvs_data` (`cv_id`) ON DELETE CASCADE;

--
-- Constraints for table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_ibfk_1` FOREIGN KEY (`cv_id`) REFERENCES `cvs_data` (`cv_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_data`
--
ALTER TABLE `user_data`
  ADD CONSTRAINT `user_data_ibfk_1` FOREIGN KEY (`cv_id`) REFERENCES `cvs_data` (`cv_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
