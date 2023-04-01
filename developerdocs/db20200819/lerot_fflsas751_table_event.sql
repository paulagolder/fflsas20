
--
-- Truncate table before insert `event`
--

TRUNCATE TABLE `event`;
--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eventid`, `label`, `parent`, `locid`, `showmap`, `date`, `startdate`, `enddate`, `sequence`, `contributor`, `update_dt`) VALUES
(1, '3SAS', 367, 89, 0, NULL, '', '', 0, 'David P', '2019-10-02 11:51:10'),
(2, '3SAS/HQSQUADRON', 1, 0, 0, NULL, '', '', 2, 'Paul Golder', '2003-01-01 00:00:00'),
(4, '3SAS/REGIMENTHQ', 1, 0, 0, NULL, '', '', 1, 'Paul Golder', '2003-01-01 00:00:00'),
(5, '3SAS/SQUADRON1', 1, 0, 0, NULL, '', '', 3, 'Paul Golder', '2003-01-01 00:00:00'),
(6, '3SAS/SQUADRON2', 1, 0, 0, NULL, '', '', 4, 'Paul Golder', '2003-01-01 00:00:00'),
(7, '3SAS/SQUADRON3', 1, 0, 0, NULL, '', '', 5, 'Paul Golder', '2003-01-01 00:00:00'),
(8, '4SAS', 367, 89, 0, NULL, '', '', 0, 'David P', '2019-10-02 11:51:49'),
(9, 'AM/3', 272, 408, 1, NULL, '', '', 0, 'paul golder', '2012-11-05 16:38:00'),
(10, 'AM/3/COMM', 9, 0, 0, NULL, '', '', 1, 'Paul Golder', '2003-01-01 00:00:00'),
(11, 'AM/3/COMM/STICK19', 10, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(12, 'AM/3/COMM/STICK20', 10, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(13, 'AM/3/COMM/STICK21', 10, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(14, 'AM/3/COMM/STICK22', 10, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(15, 'AM/3/COMM/STICK23', 10, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(16, 'AM/3/COMM/STICK24', 10, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(17, 'AM/3/COMPANY1', 9, 0, 0, NULL, '', '', 3, 'Paul Golder', '2003-01-01 00:00:00'),
(18, 'AM/3/COMPANY1/STICK01', 17, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(19, 'AM/3/COMPANY1/STICK02', 17, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(20, 'AM/3/COMPANY1/STICK03', 17, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(21, 'AM/3/COMPANY1/STICK04', 17, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(22, 'AM/3/COMPANY1/STICK05', 17, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(23, 'AM/3/COMPANY1/STICK06', 17, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(24, 'AM/3/COMPANY1/STICK07', 17, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(25, 'AM/3/COMPANY2', 9, 0, 0, NULL, '', '', 4, 'Paul Golder', '2003-01-01 00:00:00'),
(26, 'AM/3/COMPANY2/STICK08', 25, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(27, 'AM/3/COMPANY2/STICK09', 25, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(28, 'AM/3/COMPANY2/STICK10', 25, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(29, 'AM/3/COMPANY2/STICK11', 25, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(30, 'AM/3/COMPANY2/STICK12', 25, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(31, 'AM/3/COMPANY2/STICK13', 25, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(32, 'AM/3/COMPANY3', 9, 0, 0, NULL, '', '', 5, 'Paul Golder', '2003-01-01 00:00:00'),
(33, 'AM/3/COMPANY3/STICK14', 32, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(34, 'AM/3/COMPANY3/STICK15', 32, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(35, 'AM/3/COMPANY3/STICK16', 32, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(36, 'AM/3/COMPANY3/STICK17', 32, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(37, 'AM/3/COMPANY3/STICK18', 32, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(38, 'AM/4', 272, 0, 0, NULL, '', '', 0, 'paul golder', '2012-09-28 08:29:31'),
(39, 'AM/4/COMM', 38, 0, 0, NULL, '', '', 0, 'Administrator', '2017-04-03 12:48:16'),
(40, 'AM/4/COMM/STICK16', 39, 0, 0, NULL, '', '', 2, 'David Portier', '2012-08-08 16:38:29'),
(41, 'AM/4/COMM/STICK17', 39, 0, 0, NULL, '', '', 3, 'David Portier', '2012-08-08 16:38:44'),
(42, 'AM/4/COMM/STICK18', 39, 0, 0, NULL, '', '', 0, 'Paul Golder', '2003-01-01 00:00:00'),
(43, 'AM/4/COMM/STICK19', 39, 0, 0, NULL, '', '', 1, 'David Portier', '2012-08-08 16:38:14'),
(45, 'AM/4/COMPANY1', 38, 0, 1, NULL, '', '', 0, 'paul golder', '2014-02-19 15:54:08'),
(433, '433', 364, 58, 0, NULL, '19430701', '', 3, 'David Portier', '2018-01-14 14:46:50'),
(434, '434', 140, 534, 0, NULL, '', '', 6, 'David Portier', '2018-04-02 12:02:48'),
(46, 'AM/4/COMPANY1/STICK02', 45, 166, 0, NULL, '', '', 5, 'paul golder', '2014-02-19 15:03:02'),
(47, 'AM/4/COMPANY1/STICK03', 45, 0, 0, NULL, '', '', 3, 'David Portier', '2012-09-08 08:01:58'),
(48, 'AM/4/COMPANY1/STICK04', 45, 0, 0, NULL, '', '', 4, 'David Portier', '2012-09-08 08:02:10'),
(49, 'AM/4/COMPANY1/STICK05', 45, 0, 0, NULL, '', '', 0, 'David Portier', '2012-09-08 08:01:17'),
(50, 'AM/4/COMPANY1/STICK06', 45, 0, 0, NULL, '', '', 1, 'David Portier', '2012-09-08 08:01:30'),
(51, 'AM/4/COMPANY2', 38, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(52, 'AM/4/COMPANY2/STICK07', 51, 577, 0, NULL, NULL, NULL, NULL, 'David P', '2019-10-03 15:16:31'),
(53, 'AM/4/COMPANY2/STICK08', 51, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(54, 'AM/4/COMPANY2/STICK09', 51, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(55, 'AM/4/COMPANY2/STICK10', 51, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(56, 'AM/4/COMPANY2/STICK11', 51, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(57, 'AM/4/COMPANY3', 38, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(58, 'AM/4/COMPANY3/STICK12', 57, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(59, 'AM/4/COMPANY3/STICK13', 57, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(60, 'AM/4/COMPANY3/STICK14', 57, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(61, 'AM/4/COMPANY3/STICK15', 57, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(426, '426', 57, 0, 0, NULL, '', '', 0, 'David Portier', '2012-08-06 17:44:34'),
(64, 'AM/4/JEEPS', 38, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(65, 'AM/4/JEEPS/STICK21', 64, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(66, 'AM/4/JEEPS/STICK22', 64, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(68, 'BEG', 321, 0, 0, NULL, '19400617', '19411231', 1, 'paul golder', '2013-07-01 11:17:55'),
(69, 'BEG/CAM', 68, 52, 1, NULL, '19410721', '19410925', 2, 'paul golder', '2013-07-01 11:08:58'),
(70, 'BEG/DG', 68, 414, 1, NULL, '19400618', '', 0, 'paul golder', '2012-11-01 12:38:49'),
(71, 'BEG/EX', 68, 400, 1, NULL, '19410515', '19410716', 1, 'paul golder', '2012-10-12 21:16:05'),
(72, 'BEG/JOSEPHINE', 68, 413, 1, NULL, '19410511', '19410700', 1, 'paul golder', '2012-10-15 07:22:47'),
(73, 'BEG/LEV', 68, 14, 1, NULL, '19410923', '19411231', 3, 'paul golder', '2013-07-01 11:15:45'),
(76, 'BEG/LONDON', 68, 412, 1, NULL, '19400915', '19410515', 0, 'paul golder', '2012-10-14 09:08:34'),
(77, 'BEG/REM', 68, 58, 1, NULL, '19410721', '19430100', 1, 'Paul Golder', '2003-01-01 00:00:00'),
(78, 'BEG/SAVANAH', 68, 153, 1, NULL, '19410314', '19410405', 0, 'Administrator', '2017-04-03 16:32:41'),
(79, 'EN/14JULY', 364, 51, 1, NULL, '19430714', '', 4, 'David Portier', '2012-03-05 19:49:02'),
(80, 'EN/4SAS/ORG', 8, 0, 0, NULL, '', '', 1, 'Paul Golder', '2003-01-01 00:00:00'),
(81, 'EN/4SAS/ORG/HQSQUADRON', 8, 0, 0, NULL, '', '', 2, 'Paul Golder', '2003-01-01 00:00:00'),
(432, '432', 293, 61, 0, NULL, '19430220', '', 9, 'David Portier', '2017-07-27 18:02:57'),
(83, 'EN/4SAS/ORG/S1', 8, 0, 0, NULL, '', '', 3, 'Paul Golder', '2003-01-01 00:00:00'),
(84, 'EN/4SAS/ORG/S2', 8, 0, 0, NULL, '', '', 4, 'Paul Golder', '2003-01-01 00:00:00'),
(85, 'EN/4SAS/ORG/S3', 8, 0, 0, NULL, '', '', 5, 'Paul Golder', '2003-01-01 00:00:00'),
(86, 'EN/FAIRFORD', 87, 380, 1, NULL, '19440527', '19440606', 5, 'Administrator', '2017-04-05 12:45:54'),
(87, 'ENGLAND', 321, 0, 1, NULL, '19420300', '19440605', 3, 'David P', '2020-01-26 19:58:38'),
(88, 'FFL', 364, 0, 0, NULL, '19400618', '19430731', 5, 'David Portier', '2012-03-05 19:49:15'),
(89, 'FR', 321, 66, 0, NULL, '19440605', '19441224', 4, 'David P', '2019-10-02 14:52:45'),
(90, 'FR/11NOV', 89, 402, 0, NULL, '19441111', '', 6, 'george', '2018-10-02 03:12:27'),
(91, 'FR/3SAS', 89, 586, 0, NULL, '19440715', NULL, 2, 'David P', '2020-03-07 10:13:17'),
(92, 'FR/4SAS', 89, 358, 0, NULL, '19440605', '19440914', 1, 'David P', '2019-10-04 08:49:00'),
(93, 'FR/ABEL', 91, 0, 0, NULL, '19440827', '19440922', 8, 'David Portier', '2017-04-22 08:35:42'),
(94, 'FR/ABEL/STICK1', 93, 0, 0, NULL, '19440828', '', 2, 'David Portier', '2011-07-27 18:49:05'),
(95, 'FR/ABEL/STICK2', 93, 0, 0, NULL, '19440828', '', 1, 'David Portier', '2011-07-27 18:50:13'),
(96, 'FR/ABEL/STICK3', 93, 0, 0, NULL, '19440827', '', 0, 'Paul Golder', '2003-01-01 00:00:00'),
(97, 'FR/ABEL/STICK4', 93, 0, 0, NULL, '19440828', '', 3, 'David Portier', '2018-02-22 12:26:49'),
(98, 'FR/ABEL/STICK5', 93, 0, 0, NULL, '19440907', '', 7, 'David Portier', '2018-02-23 12:34:50'),
(99, 'FR/ABEL/STICK6', 93, 0, 0, NULL, '19440901', '', 5, 'David Portier', '2018-02-22 12:34:55'),
(100, 'FR/ABEL/STICK7', 93, 0, 0, NULL, '19440906', '', 6, 'David Portier', '2018-02-23 12:35:46'),
(101, 'FR/ABEL/STICK8', 93, 0, 0, NULL, '19440827', '', 4, 'David Portier', '2018-02-22 12:27:30'),
(102, 'FR/BARKER_HARROD', 103, NULL, 1, NULL, '19440813', '', 2, 'David P', '2020-02-06 08:36:24'),
(103, 'FR/BARKERHARROD', 91, 539, 0, NULL, '19440810', '19440924', 5, 'David P', '2020-03-07 09:58:04'),
(104, 'BARKER', 103, 585, 0, NULL, '19440810', NULL, 1, 'David P', '2020-03-06 20:16:35'),
(105, 'HARROD', 103, 587, 0, NULL, '19440813', NULL, 2, 'David P', '2020-03-06 20:14:42'),
(106, 'FR/BENSON', 211, 135, 0, NULL, '19440828', '19440901', 5, 'David P', '2020-04-06 12:56:25'),
(107, 'FR/BH/C1/STICK1', 104, 0, 0, NULL, '19440815', NULL, 2, 'David P', '2019-10-19 13:19:32'),
(110, 'FR/BH/C1/STICK7', 104, 0, 0, NULL, '19440813', NULL, 5, 'David P', '2019-10-19 13:28:51'),
(111, 'FR/BH/C1/STICKCOM', 104, 0, 0, NULL, '19440813', NULL, 2, 'David P', '2019-10-19 13:21:44'),
(112, 'FR/BH/CC/STICK1', 105, 0, 0, NULL, '19440814', NULL, 1, 'David P', '2019-10-19 15:25:01'),
(113, 'FR/BH/CC/STICK2', 105, 0, 0, NULL, '19440813', NULL, 2, 'David P', '2019-10-19 15:41:37'),
(114, 'FR/BH/CC/STICK3', 105, 0, 0, NULL, '19440814', NULL, 3, 'David P', '2019-10-19 15:41:09'),
(115, 'FR/BH/CC/STICK4', 105, 0, 0, NULL, '19440813', NULL, 3, 'David P', '2019-10-19 15:42:52'),
(116, 'FR/BH/CC/STICK5', 104, 0, 0, NULL, '19440810', NULL, 1, 'David P', '2019-10-19 13:20:01'),
(117, 'FR/BH/CC/STICK6', 105, 634, 0, NULL, '19440825', NULL, 4, 'David P', '2020-05-26 09:34:00'),
(118, 'FR/BH/CC/STICK7', 105, 0, 0, NULL, '19440828', NULL, 6, 'David P', '2019-10-26 10:20:40'),
(119, 'FR/BRX', 92, 0, 0, NULL, '19440806', NULL, 3, 'David P', '2019-10-04 07:32:18'),
(120, 'FR/COONEY', 92, 526, 1, NULL, '19440608', '19440618', 2, 'paul golder', '2012-12-12 19:35:49'),
(121, 'FR/COONEY/P401', 120, 501, 1, NULL, '', '', 0, 'paul golder', '2012-12-11 16:52:26'),
(122, 'FR/COONEY/P402', 120, 502, 1, NULL, '', '', 2, 'paul golder', '2012-12-11 22:44:13'),
(123, 'FR/COONEY/P403', 120, 503, 1, NULL, '', '', 2, 'paul golder', '2012-12-11 17:11:35'),
(124, 'FR/COONEY/P404', 120, 282, 1, NULL, '', '', 2, 'Administrator', '2017-04-06 16:26:11'),
(125, 'FR/COONEY/P405', 120, 505, 1, NULL, '', '', 3, 'paul golder', '2012-12-11 19:09:33'),
(126, 'FR/COONEY/P406', 120, 506, 1, NULL, '', '', 4, 'paul golder', '2012-12-11 19:10:17'),
(127, 'FR/COONEY/P407', 120, 507, 1, NULL, '', '', 6, 'paul golder', '2012-12-11 19:10:54'),
(128, 'FR/COONEY/P408', 120, 508, 1, NULL, '', '', 6, 'paul golder', '2012-12-11 19:11:18'),
(129, 'FR/COONEY/P409', 120, 509, 1, NULL, '', '', 6, 'paul golder', '2012-12-11 19:11:36'),
(130, 'FR/COONEY/P410', 120, 510, 1, NULL, '', '', 6, 'paul golder', '2012-12-11 19:11:53'),
(131, 'FR/COONEY/P411', 120, 511, 1, NULL, '', '', 7, 'paul golder', '2012-12-11 19:12:10'),
(132, 'FR/COONEY/P412', 120, 512, 1, NULL, '', '', 7, 'paul golder', '2012-12-11 19:12:30'),
(133, 'FR/COONEY/P413', 120, 513, 1, NULL, '', '', 9, 'paul golder', '2012-12-11 19:12:54'),
(134, 'FR/COONEY/P414', 120, 514, 1, NULL, '', '', 9, 'paul golder', '2012-12-11 19:13:12'),
(135, 'FR/COONEY/P415', 120, 515, 1, NULL, '', '', 9, 'paul golder', '2012-12-11 19:13:30'),
(136, 'FR/COONEY/P416', 120, 516, 1, NULL, '', '', 10, 'paul golder', '2012-12-11 19:13:56'),
(137, 'FR/COONEY/P417', 120, 517, 1, NULL, '', '', 11, 'paul golder', '2012-12-11 19:14:20'),
(138, 'FR/COONEY/P418', 120, 518, 1, NULL, '', '', 12, 'paul golder', '2012-12-11 19:14:36'),
(139, 'FR/DERRY', 91, 534, 0, NULL, '19440805', '19440818', 2, 'David Portier', '2017-04-22 08:30:46'),
(140, 'FR/DERRY1', 139, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(141, 'FR/DERRY1/STICK1', 140, 0, 0, NULL, '', '', 1, 'Paul Golder', '2003-01-01 00:00:00'),
(142, 'FR/DERRY1/STICK2', 140, 0, 0, NULL, '', '', 2, 'Paul Golder', '2003-01-01 00:00:00'),
(143, 'FR/DERRY1/STICK3', 140, 0, 0, NULL, '', '', 3, 'Paul Golder', '2003-01-01 00:00:00'),
(144, 'FR/DERRY1/STICK4', 140, 0, 0, NULL, '', '', 4, 'Paul Golder', '2003-01-01 00:00:00'),
(145, 'FR/DERRY1/STICK5', 140, 0, 0, NULL, '', '', 5, 'Paul Golder', '2003-01-01 00:00:00'),
(146, 'FR/DERRY2', 139, 0, 0, NULL, '', '', 1, 'Paul Golder', '2003-01-01 00:00:00'),
(436, '436', 1, 89, 0, NULL, '19440601', '', 0, 'David Portier', '2018-04-09 19:53:50'),
(148, 'FR/DERRY3', 139, 0, 0, NULL, '', '', 2, 'Paul Golder', '2003-01-01 00:00:00'),
(151, 'FR/DICKENS', 91, 0, 0, NULL, '19440715', '19441007', 0, 'David Portier', '2017-04-22 08:25:48'),
(152, 'FR/DICKENS/STICK5', 151, 0, 0, NULL, '', '', 5, 'Paul Golder', '2003-01-01 00:00:00'),
(153, 'FR/DICKENS/STICK6', 151, 0, 0, NULL, '', '', 7, 'Paul Golder', '2003-01-01 00:00:00'),
(154, 'FR/DICKENS/STICK7', 151, 0, 0, NULL, '', '', 8, 'Paul Golder', '2003-01-01 00:00:00'),
(155, 'FR/DICKENS/STICK8', 151, 0, 0, NULL, '', '', 9, 'Paul Golder', '2003-01-01 00:00:00'),
(156, 'FR/DICKENS/STICKCDT', 151, 0, 0, NULL, '', '', 4, 'Paul Golder', '2003-01-01 00:00:00'),
(157, 'FR/DICKENS/STICKJED', 151, 0, 0, NULL, '', '', 1, 'Paul Golder', '2003-01-01 00:00:00'),
(158, 'FR/DICKENS/STICKRADIO', 151, 0, 0, NULL, '', '', 2, 'Paul Golder', '2003-01-01 00:00:00'),
(159, 'FR/DINGSON', 92, 277, 0, NULL, '19440606', '19440618', 1, 'David P', '2019-10-04 08:47:08'),
(160, 'FR/DINGSON1', 159, 0, 0, NULL, '19440606', '19440609', 0, 'David Portier', '2012-07-11 17:33:07'),
(161, 'FR/DINGSON2', 159, 277, 0, NULL, '19440610', '19440618', 0, 'David P', '2019-10-04 09:03:29'),
(162, 'FR/DUNHILL', 211, 550, 0, NULL, '19440802', '19440824', 4, 'george', '2018-10-10 08:24:38'),
(163, 'FR/GAFF', 211, 570, 0, NULL, '19440725', '19440813', 2, 'David P', '2019-10-02 19:00:48'),
(164, 'FR/GROG', 92, 266, 0, NULL, '19440613', '19440819', 2, 'David P', '2019-10-08 14:52:19'),
(165, 'FR/JEEPS', 159, 583, 0, NULL, '19440804', '19440805', 2, 'David P', '2019-10-04 12:35:59'),
(166, 'FR/JOCKWORTH', 91, 602, 0, NULL, '19440815', '19440930', 6, 'David P', '2020-04-03 08:34:24'),
(167, 'FR/JOCKWORTH/STICK3', 166, 599, 0, NULL, '19440819', '', 2, 'David P', '2020-04-03 08:47:49'),
(168, 'FR/JOCKWORTH/STICK5', 166, 601, 0, NULL, '19440815', '', 0, 'David P', '2020-04-03 08:34:52'),
(169, 'FR/JOCKWORTH/STICK6', 166, 601, 0, NULL, '19440815', '', 0, 'David P', '2020-04-03 08:35:35'),
(170, 'FR/JOCKWORTH/STICK8', 166, 600, 0, NULL, '19440816', '', 1, 'David P', '2020-04-03 08:47:00'),
(171, 'FR/JOCKWORTH/STICKCOM', 166, 599, 0, NULL, '19440819', '', 2, 'David P', '2020-04-03 08:56:10'),
(172, 'FR/JOCKWORTH/STICKHourst', 166, 601, 0, NULL, '19440815', '', 0, 'David P', '2020-04-03 08:36:12'),
(173, 'FR/LOST', 159, 582, 0, NULL, '19440623', '', 2, 'David P', '2019-10-04 12:25:13'),
(174, 'FR/MARSHALL', 177, 537, 0, NULL, '', '', 0, 'Administrator', '2017-04-04 08:48:02'),
(410, '410', 211, 0, 0, NULL, '19440810', '', 4, 'David Portier', '2011-11-26 18:10:45'),
(411, '411', 211, 571, 0, NULL, '19440726', '', 2, 'David P', '2019-10-02 19:52:35'),
(177, 'FR/MARSHALL_SNELGROVE', 91, 0, 0, NULL, '19440811', '19440912', 4, 'David Portier', '2017-04-22 08:34:43'),
(178, 'FR/MOSES', 91, 530, 0, NULL, '19440802', '19441006', 1, 'David Portier', '2017-04-22 08:28:59'),
(179, 'FR/MOSES/STICK1', 178, 593, 0, NULL, '19440803', NULL, 1, 'David P', '2019-10-25 19:11:59'),
(180, 'FR/MOSES/STICK2', 178, 0, 0, NULL, '19440807', NULL, 2, 'David P', '2019-10-25 18:55:19'),
(181, 'FR/MOSES/STICK3', 178, 592, 0, NULL, '19440808', NULL, 3, 'David P', '2019-10-25 19:07:18'),
(182, 'FR/MOSES/STICK4', 178, 594, 0, NULL, '19440810', NULL, 4, 'David P', '2019-10-25 19:15:51'),
(183, 'FR/MOSES/STICK5', 178, 0, 0, NULL, '19440815', NULL, 5, 'David P', '2019-10-25 19:16:36'),
(184, 'FR/MOSES/STICK6', 178, 594, 0, NULL, '19440828', NULL, 6, 'David P', '2019-10-25 19:17:21'),
(185, 'FR/NEWTON', 91, 0, 0, NULL, '19440819', '19440920', 7, 'David Portier', '2017-04-22 08:35:27'),
(186, 'FR/NEWTON/DETCOM', 185, 0, 0, NULL, '', '', 1, 'Paul Golder', '2003-01-01 00:00:00'),
(187, 'FR/NEWTON/DETCOM/JEEP1', 186, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(188, 'FR/NEWTON/DETCOM/JEEP2', 186, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(189, 'FR/NEWTON/DETCOM/JEEP3', 186, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(190, 'FR/NEWTON/DETCOM/JEEP4', 186, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(191, 'FR/NEWTON/DETPIC', 185, 0, 0, NULL, '', '', 2, 'Paul Golder', '2003-01-01 00:00:00'),
(192, 'FR/NEWTON/DETPIC/JEEP1', 191, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(193, 'FR/NEWTON/DETPIC/JEEP2', 191, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(194, 'FR/NEWTON/DETPIC/JEEP3', 191, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(195, 'FR/NEWTON/DETPIC/JEEP4', 191, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(196, 'FR/NEWTON/DETPLO', 185, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(197, 'FR/NEWTON/DETPLO/JEEP1', 196, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(198, 'FR/NEWTON/DETPLO/JEEP2', 196, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(199, 'FR/NEWTON/DETPLO/JEEP3', 196, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(200, 'FR/NEWTON/DETPLO/JEEP4', 196, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(201, 'FR/NEWTON/DETSAB', 185, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(202, 'FR/NEWTON/DETSAB/JEEP1', 201, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(203, 'FR/NEWTON/DETSAB/JEEP2', 201, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(204, 'FR/NEWTON/DETSAB/JEEP3', 201, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(205, 'FR/NEWTON/DETSAB/JEEP4', 201, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(206, 'FR/NEWTON/DETVAL', 185, 0, 0, NULL, '', '', 0, 'Paul Golder', '2003-01-01 00:00:00'),
(207, 'FR/NEWTON/DETVAL/JEEP1', 206, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(208, 'FR/NEWTON/DETVAL/JEEP2', 206, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(209, 'FR/NEWTON/DETVAL/JEEP3', 206, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(210, 'FR/NTLOYTON', 211, 576, 0, NULL, '19440812', '19440918', 4, 'David P', '2019-10-03 14:15:19'),
(211, 'FR/OTHERACTIONS', 89, 0, 0, NULL, '19440601', NULL, 0, 'David P', '2020-05-01 11:47:25'),
(408, '408', 211, 135, 1, NULL, '19440827', '19440907', 5, 'David Portier', '2011-09-25 12:42:11'),
(213, 'FR/PARIS', 92, 0, 0, NULL, '19440821', '19440829', 5, 'David Portier', '2017-05-05 13:51:55'),
(214, 'FR/PISTOL', 211, 579, 0, NULL, '19440916', '19441003', 6, 'David P', '2019-10-04 07:31:13'),
(215, 'FR/RR', 164, 588, 0, NULL, '19440710', '', 0, 'David P', '2019-10-20 09:57:34'),
(216, 'FR/SAMSON', 91, 536, 0, NULL, '19440810', '19440927', 3, 'David Portier', '2017-04-22 08:31:02'),
(217, 'FR/SAMSON/STICK1', 216, 305, 0, NULL, '', '', 1, 'David P', '2020-03-31 10:08:21'),
(218, 'FR/SAMSON/STICK2', 216, 305, 0, NULL, '', '', 2, 'David P', '2020-03-31 10:11:21'),
(219, 'FR/SAMWEST', 92, 151, 1, NULL, '19440606', '19440612', 2, 'David P', '2019-10-07 14:02:51'),
(220, 'FR/SAMWEST1', 219, 525, 1, NULL, '19440606', '19440609', 1, 'paul golder', '2013-07-07 14:43:37'),
(221, 'FR/SAMWEST2', 219, 151, 1, NULL, '19440610', '19440612', 2, 'David P', '2019-10-07 14:04:49'),
(222, 'FR/SNELGROVE', 177, 114, 0, NULL, '', '', 0, 'Administrator', '2017-04-04 08:48:35'),
(407, '407', 211, 567, 0, NULL, '19440606', '19440810', 1, 'David P', '2019-10-02 14:50:02'),
(225, 'FR/SPENCER/S1', 229, 0, 0, NULL, '', '', 1, 'Paul Golder', '2003-01-01 00:00:00'),
(226, 'FR/SPENCER/S2', 229, 0, 0, NULL, '', '', 2, 'Paul Golder', '2003-01-01 00:00:00'),
(227, 'FR/SPENCER/S3', 229, 0, 0, NULL, '', '', 3, 'Paul Golder', '2003-01-01 00:00:00'),
(228, 'FR/SPENCER/S4', 229, 0, 0, NULL, '', '', 4, 'Paul Golder', '2003-01-01 00:00:00'),
(229, 'FR/SPENSER', 92, 119, 0, NULL, '19440826', '19440914', 6, 'David Portier', '2017-05-05 13:52:07'),
(230, 'FR/TRUEFORM', 211, 578, 0, NULL, '19440818', '19440826', 4, 'David P', '2019-10-04 07:23:39'),
(231, 'FRANK/A', 374, 0, 0, NULL, '', '', 2, 'paul', '2009-11-23 14:35:24'),
(232, 'FRANK/A/1', 231, 0, 0, NULL, '', '', 1, 'David Portier', '2011-11-19 19:56:48'),
(236, 'FRANK/A/2', 231, 0, 0, NULL, '', '', 2, 'David Portier', '2011-11-19 19:56:57'),
(240, 'FRANK/A/3', 231, 0, 0, NULL, '', '', 3, 'David Portier', '2011-11-19 19:57:06'),
(244, 'FRANK/A/4', 231, 0, 0, NULL, '', '', 4, 'David Portier', '2011-11-19 19:57:16'),
(248, 'FRANK/A/EM', 231, 0, 0, NULL, '', '', 0, 'David Portier', '2011-11-19 19:56:37'),
(249, 'FRANK/B', 374, 0, 0, NULL, '', '', 3, 'paul', '2009-11-23 14:34:04'),
(250, 'FRANK/B/1', 249, 0, 0, NULL, '', '', 1, 'David Portier', '2011-11-19 19:57:32'),
(420, '420', 211, 220, 0, NULL, '19440814', '19440926', 4, 'David P', '2019-10-04 07:11:01'),
(421, '421', 364, 58, 1, NULL, '19430201', NULL, 0, 'David P', '2019-09-27 12:05:27'),
(254, 'FRANK/B/2', 249, 0, 0, NULL, '', '', 2, 'David Portier', '2011-11-19 19:57:41'),
(422, '422', 364, 58, 1, NULL, '19420600', NULL, 0, 'David P', '2019-09-27 12:04:33'),
(258, 'FRANK/B/3', 249, 0, 0, NULL, '', '', 3, 'David Portier', '2011-11-19 19:57:51'),
(262, 'FRANK/B/4', 249, 0, 0, NULL, '', '', 4, 'David Portier', '2011-11-19 19:58:00'),
(266, 'FRANK/B/EM', 249, 0, 0, NULL, '', '', 0, 'Paul Golder', '2003-01-01 00:00:00'),
(403, '403', 89, 393, 0, NULL, '19441109', '19441109', 5, 'Administrator', '2017-04-04 08:56:59'),
(404, '404', 293, 15, 1, NULL, '19420300', '', 1, 'paul golder', '2012-12-17 17:30:50'),
(270, 'FRANK/OTHER', 271, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(271, 'FRANKLIN', 321, 88, 1, NULL, '19441224', '19450130', 5, 'paul golder', '2012-07-16 09:15:10'),
(272, 'HOLLAND', 321, 0, 0, NULL, '19450407', '19450420', 7, 'David P', '2020-01-28 08:44:26'),
(273, 'LARGO', 364, 532, 1, NULL, '19420200', '19430800', 2, 'Administrator', '2017-04-04 08:57:40'),
(274, 'LARGO/STAGE030', 273, 0, 0, NULL, '', '', 1, 'Paul Golder', '2003-01-01 00:00:00'),
(275, 'LARGO/STAGE032', 273, 0, 0, NULL, '', '', 2, 'Paul Golder', '2003-01-01 00:00:00'),
(276, 'LARGO/STAGE038', 273, 0, 0, NULL, '', '', 3, 'Paul Golder', '2003-01-01 00:00:00'),
(277, 'LARGO/STAGE040', 273, 0, 0, NULL, '', '', 4, 'Paul Golder', '2003-01-01 00:00:00'),
(278, 'LARGO/STAGE043', 273, 0, 0, NULL, '', '', 5, 'Paul Golder', '2003-01-01 00:00:00'),
(279, 'LARGO/STAGE045', 273, 0, 0, NULL, '', '', 6, 'Paul Golder', '2003-01-01 00:00:00'),
(280, 'LARGO/STAGE046', 273, 0, 0, NULL, '', '', 7, 'Paul Golder', '2003-01-01 00:00:00'),
(281, 'LARGO/STAGE049', 273, 0, 0, NULL, '', '', 8, 'Paul Golder', '2003-01-01 00:00:00'),
(282, 'LARGO/STAGE050', 273, 0, 0, NULL, '', '', 9, 'Paul Golder', '2003-01-01 00:00:00'),
(283, 'LARGO/STAGE051', 273, 0, 0, NULL, '', '', 9, 'Paul Golder', '2003-01-01 00:00:00'),
(284, 'LARGO/STAGE054', 273, 0, 0, NULL, '', '', 10, 'Paul Golder', '2003-01-01 00:00:00'),
(285, 'LARGO/STAGE055', 273, 0, 0, NULL, '', '', 11, 'Paul Golder', '2003-01-01 00:00:00'),
(286, 'LARGO/STAGE057', 273, 0, 0, NULL, '', '', 12, 'Paul Golder', '2003-01-01 00:00:00'),
(287, 'LARGO/STAGE058', 273, 0, 0, NULL, '', '', 13, 'Paul Golder', '2003-01-01 00:00:00'),
(288, 'LARGO/STAGE060', 273, 0, 0, NULL, '', '', 14, 'Paul Golder', '2003-01-01 00:00:00'),
(289, 'LARGO/STAGE061', 273, 0, 0, NULL, '', '', 14, 'Paul Golder', '2003-01-01 00:00:00'),
(290, 'LARGO/STAGE064', 273, 0, 0, NULL, '', '', 15, 'Paul Golder', '2003-01-01 00:00:00'),
(291, 'LARGO/STAGE067', 273, 0, 0, NULL, '', '', 16, 'Paul Golder', '2003-01-01 00:00:00'),
(292, 'LARGO/STAGE068', 273, 0, 0, NULL, '', '', 17, 'Paul Golder', '2003-01-01 00:00:00'),
(293, 'NA', 321, 61, 1, NULL, '19420101', '19430207', 2, 'Administrator', '2017-04-05 12:27:23'),
(294, 'NA/ALAMEIN', 293, 17, 1, NULL, '19420703', '19420811', 2, 'paul golder', '2012-07-20 13:32:19'),
(295, 'NA/BARCE', 310, 541, 1, NULL, '19420612', '19420613', 4, 'Administrator', '2017-04-04 13:07:23'),
(296, 'NA/BEH', 294, 0, 0, NULL, '19420728', '19420804', 0, 'Paul Golder', '2003-01-01 00:00:00'),
(297, 'NA/BERKA', 310, 0, 0, NULL, '19420612', '19420613', 2, 'paul', '2008-03-06 20:29:20'),
(298, 'NA/COAST', 294, 0, 0, NULL, '19420707', '', 0, 'Paul Golder', '2003-01-01 00:00:00'),
(299, 'NA/CRETE', 310, 47, 1, NULL, '19420607', '19420619', 1, 'paul golder', '2012-07-20 14:03:35'),
(300, 'NA/CYRENIA', 293, 36, 1, NULL, '19420820', '19421013', 3, 'David P', '2019-09-27 09:47:40'),
(301, 'NA/DABA', 294, 0, 0, NULL, '19420712', '', 0, 'Paul Golder', '2003-01-01 00:00:00'),
(302, 'NA/DERNA', 310, 36, 1, NULL, '19420612', '19420613', 3, 'Administrator', '2017-04-04 13:41:39'),
(303, 'NA/DERNA/EST', 302, 347, 0, NULL, '', '', 0, 'Administrator', '2017-04-04 13:17:00'),
(304, 'NA/DERNA/OUEST', 302, 347, 0, NULL, '', '', 0, 'Administrator', '2017-04-04 13:17:16'),
(305, 'NA/FUKA16', 294, 0, 0, NULL, '19420712', '', 0, 'Paul Golder', '2003-01-01 00:00:00'),
(306, 'NA/FUKA19', 294, 0, 0, NULL, '19420706', '', 0, 'Paul Golder', '2003-01-01 00:00:00'),
(307, 'NA/INVASION', 293, 527, 1, NULL, '19421108', '', 5, 'paul golder', '2012-11-12 14:10:54'),
(308, 'NA/KABRIT', 293, 32, 1, NULL, '19420102', '19421227', 0, 'paul golder', '2012-10-14 10:42:10'),
(309, 'NA/LIBYA', 293, 528, 1, NULL, '19421120', '19430105', 4, 'paul golder', '2012-11-12 15:53:42'),
(310, 'NA/MALTA', 293, 0, 1, NULL, '19420607', '19420620', 1, 'Administrator', '2017-04-04 14:51:16'),
(311, 'NA/MARTUBA', 302, 542, 0, NULL, '', '', 0, 'Administrator', '2017-04-04 13:17:31'),
(312, 'NA/RETURN', 293, 0, 0, NULL, '19421210', '19430425', 6, 'paul', '2008-03-06 20:37:44'),
(313, 'NA/SH', 294, 548, 0, NULL, '19420726', '', 0, 'george', '2018-09-22 16:18:09'),
(439, 'Sherburn-in-Elmet', 364, 562, 0, NULL, '19430900', '19431023', NULL, 'David P', '2019-09-27 14:49:40'),
(315, 'NA/TUNISIA', 293, 8, 1, NULL, '19421227', '19430207', 7, 'paul golder', '2012-11-12 14:12:12'),
(316, 'NA/TUNISIA/HARENT', 315, 0, 0, NULL, '', '', 0, 'Paul Golder', '2003-01-01 00:00:00'),
(317, 'NA/TUNISIA/JORDAN', 315, 0, 0, NULL, NULL, NULL, NULL, 'David P', '2019-09-27 10:41:33'),
(318, 'NA/TUNISIA/LEGRAND', 315, 0, 0, NULL, '', '', 0, 'Paul Golder', '2003-01-01 00:00:00'),
(319, 'NA/TUNISIA/MARTIN', 315, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(455, 'Stick II (1er Squadron)', 105, 634, 0, NULL, '19440813', NULL, NULL, 'David P', '2020-05-26 09:34:39'),
(321, 'WWII', 0, 0, 0, NULL, '19390901', '19450605', 0, 'Administrator', '2017-04-05 12:48:23'),
(322, '2FTP', 164, 181, 1, NULL, '19440625', '', 0, 'paul golder', '2013-02-24 11:12:10'),
(323, '1FTP', 164, 589, 0, NULL, '19440620', '', NULL, 'David P', '2019-10-20 10:03:11'),
(324, '5FFI', 164, NULL, 0, NULL, '19440620', '', NULL, 'David P', '2020-05-27 12:32:09'),
(325, '4FFI', 164, 591, 0, NULL, '19440625', '', NULL, 'David P', '2019-10-20 10:50:00'),
(326, '2BR4', 164, 200, 0, NULL, '', '', NULL, 'David P', '2019-10-08 14:56:09'),
(328, '4FTP', 164, 0, 0, NULL, '19440725', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(441, 'Wrotham', 68, 584, 0, NULL, '19401116', NULL, NULL, 'PaulAGolder', '2019-10-19 08:53:16'),
(330, 'PIERRE1', 160, 580, 0, NULL, '', '', 1, 'David P', '2019-10-04 08:56:04'),
(331, 'PIERRE2', 160, 581, 0, NULL, '', '', 2, 'David P', '2019-10-04 09:00:58'),
(332, 'PIERRE3', 220, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(333, 'PIERRE4', 220, 0, 0, NULL, '', '', NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(334, 'FR/JED/HILARY', 339, 0, 0, NULL, '19440718', NULL, 16, 'David P', '2020-04-01 08:40:57'),
(409, '409', 211, 220, 1, NULL, '19440607', '19440906', 1, 'David Portier', '2013-07-03 20:11:30'),
(336, 'FR/JED/GERALD', 339, 0, 0, NULL, '19440718', '19440823', 11, 'Paul Golder', '2003-01-01 00:00:00'),
(337, 'FR/JED/GEORGES', 339, 0, 0, NULL, '19440610', '19440823', 10, 'David P', '2020-02-06 08:04:56'),
(339, 'JEDBURGH', 89, 0, 0, NULL, '', '', 3, 'Paul Golder', '2003-01-01 00:00:00'),
(340, 'FREDERICK', 339, 0, 0, NULL, '19440610', NULL, 8, 'David P', '2020-02-06 08:10:43'),
(406, '406', 211, 123, 0, NULL, '19440614', '19440819', 1, 'David P', '2019-10-02 14:57:33'),
(405, '405', 339, 0, 0, NULL, '19440815', NULL, 20, 'David P', '2020-04-02 21:19:47'),
(343, 'ALOES', 92, 0, 0, NULL, '19440804', '', 4, 'David Portier', '2017-05-05 13:51:42'),
(344, 'SOUVENIRS', 321, 0, 0, NULL, '19450500', NULL, 8, 'PaulAGolder', '2019-08-21 08:15:11'),
(345, 'SENNECEY', 344, 296, 1, NULL, '', '', 1, 'paul golder', '2012-10-14 10:49:01'),
(346, 'SLGFRENCH', 345, 0, 0, NULL, '', '', 3, 'Paul Golder', '2003-01-01 00:00:00'),
(347, 'SENENGLISH', 345, 0, 0, NULL, '', '', 2, 'Paul Golder', '2003-01-01 00:00:00'),
(348, 'SLGBELGE', 345, 0, 0, NULL, '', '', 1, 'Paul Golder', '2003-01-01 00:00:00'),
(349, 'ENGLAND/AUG43', 364, 58, 1, NULL, '19430808', '', 6, 'paul golder', '2014-01-04 16:38:00'),
(350, 'ENGLAND/AUG43/2EMECL', 349, 58, 1, NULL, '', '', 13, 'David Portier', '2013-04-28 09:00:31'),
(351, 'ENGLAND/AUG43/ASPT', 349, 58, 1, NULL, '', '', 5, 'David Portier', '2013-04-28 08:58:46'),
(352, 'ENGLAND/AUG43/1RECl', 349, 58, 1, NULL, NULL, NULL, 12, 'David P', '2019-09-27 15:21:05'),
(353, 'ENGLAND/AUG43/CAPCHEF', 349, 58, 1, NULL, '', '', 10, 'David Portier', '2013-04-28 08:59:53'),
(354, 'ENGLAND/AUG43/SLT', 349, 58, 1, NULL, '', '', 4, 'David Portier', '2013-04-28 08:58:34'),
(355, 'ENGLAND/AUG43/ADJ', 349, 58, 1, NULL, '', '', 7, 'David Portier', '2013-04-28 08:59:11'),
(356, 'ENGLAND/AUG43/SRG', 349, 58, 1, NULL, '', '', 9, 'David Portier', '2013-04-28 08:59:40'),
(357, 'ENGLAND/AUG43/ADJCHEF', 349, 58, 1, NULL, '', '', 6, 'David Portier', '2013-04-28 08:58:59'),
(358, 'ENGLAND/AUG43/CAP', 349, 58, 1, NULL, '', '', 11, 'David Portier', '2013-04-28 09:00:06'),
(359, 'ENGLAND/AUG43/LT', 349, 58, 1, NULL, '', '', 2, 'David Portier', '2013-04-28 08:58:11'),
(360, 'ENGLAND/AUG43/CAPT', 349, 58, 1, NULL, '', '', 1, 'David Portier', '2013-04-28 08:57:59'),
(361, 'ENGLAND/AUG43/SRGCHEF', 349, 58, 1, NULL, '', '', 8, 'David Portier', '2013-04-28 08:59:27'),
(362, 'ENGLAND/AUG43/LTCOL', 349, 58, 1, NULL, '', '', 0, 'David Portier', '2013-04-28 08:57:46'),
(363, 'ENGLAND/AUG43/MED', 349, 58, 1, NULL, '', '', 3, 'David Portier', '2013-04-28 08:58:23'),
(364, 'CAMBERLEY', 87, 58, 1, NULL, '19420200', '19431205', 1, 'David P', '2020-01-26 20:08:15'),
(365, 'RINGWAY', 364, 395, 1, NULL, '19420300', '19440000', 3, 'george', '2019-06-17 15:22:59'),
(366, 'CUPAR', 87, 564, 0, NULL, '19431206', '19440120', 3, 'David P', '2020-01-26 20:07:05'),
(367, 'AUCHINLECK', 87, 89, 1, NULL, '19440121', '19440527', 4, 'David P', '2020-01-26 20:11:41'),
(368, 'FR/JED/FRANCIS', 339, 0, 0, NULL, '19440710', NULL, 8, 'David P', '2020-03-31 07:48:33'),
(369, 'FR/JED/IAN', 339, 0, 0, NULL, '', '', 19, 'David Portier', '2013-07-04 17:16:59'),
(370, 'FR/JED/LEE', 339, 0, 0, NULL, '19440810', NULL, 21, 'David P', '2020-03-31 09:53:31'),
(371, 'FR/JED/ALAN', 339, 0, 0, NULL, '19440813', NULL, 1, 'David P', '2020-02-06 08:15:46'),
(372, 'AUK/ETATMAJOR', 367, 546, 0, NULL, NULL, NULL, NULL, 'David P', '2019-10-02 11:48:37'),
(373, 'FR/SPENSER/HQSQUADRON', 229, 0, 0, NULL, NULL, NULL, NULL, 'Paul Golder', '2003-01-01 00:00:00'),
(374, 'FRANK/COMBAT', 271, 0, 0, NULL, '', '', 0, 'paul', '2009-11-23 14:17:23'),
(375, 'FR/JED/DANIEL', 339, 0, 0, NULL, '19440805', '19440811', 5, 'Paul Golder', '2003-01-01 00:00:00'),
(376, 'FR/JED/GAVIN', 339, 0, 0, NULL, '19440711', '19440819', 9, 'Paul Golder', '2003-01-01 00:00:00'),
(377, 'FR/JED/GUY', 339, 0, 0, NULL, '19440711', '19440823', 14, 'Paul Golder', '2003-01-01 00:00:00'),
(378, 'FR/JED/JAMES', 339, 537, 0, NULL, '19440811', NULL, 19, 'David P', '2020-04-01 08:59:44'),
(379, 'FR/JED/ALEC', 339, 0, 0, NULL, '19440810', '19440925', 2, 'Paul Golder', '2003-01-01 00:00:00'),
(380, 'FR/JED/ANTHONY', 339, 0, 0, NULL, '19440815', '19440912', 4, 'Paul Golder', '2003-01-01 00:00:00'),
(381, 'FR/JED/ALEXANDER', 339, 0, 0, NULL, '19440812', '19441126', 3, 'Paul Golder', '2003-01-01 00:00:00'),
(382, 'FR/JED/DOUGLAS', 339, 0, 0, NULL, '19440806', '19440824', 6, 'Paul Golder', '2003-01-01 00:00:00'),
(383, 'FR/JED/HORACE', 339, 0, 0, NULL, '19440718', NULL, 17, 'David P', '2020-04-01 08:48:18'),
(384, 'FR/JED/RONALD', 339, 0, 0, NULL, '19440805', '19440915', 21, 'david', '2009-01-18 08:44:20'),
(385, 'FR/JED/GILES', 339, 597, 0, NULL, '19440709', NULL, 13, 'David P', '2020-04-01 08:02:23'),
(386, 'FR/JED/GILBERT', 339, 0, 0, NULL, '19440710', NULL, 12, 'David P', '2020-03-31 07:48:59'),
(387, 'FR/JED/FELIX', 339, 0, 0, NULL, '19440709', '19440823', 7, 'Paul Golder', '2003-01-01 00:00:00'),
(388, 'GB/CAMBERLEY/OCTOBRE1943', 364, 58, 1, NULL, '19431000', NULL, 7, 'David P', '2019-09-27 14:30:41'),
(390, '3SAS/HQS/1SQUADRON', 2, 0, 0, NULL, NULL, NULL, NULL, 'Paul Golder', '2006-03-19 04:36:18'),
(391, 'CHAMPAGNE', 89, 0, 0, NULL, '19441001', '19441224', 4, 'David P', '2019-09-25 18:54:52'),
(392, 'IPSWICH', 321, 629, 1, NULL, '19450218', NULL, 6, 'David P', '2020-05-22 15:05:58'),
(393, 'FR/APRES', 159, 217, 0, NULL, '19440619', '', 1, 'David P', '2019-10-04 12:21:39'),
(401, '401', 374, 0, 0, NULL, '', '', 1, 'david', '2008-03-13 20:51:18'),
(402, '402', 374, 0, 0, NULL, '', '', 1, 'david', '2008-03-13 20:52:12'),
(412, 'WASH', 92, 386, 0, NULL, '19440609', '19440724', 3, 'PaulAGolder', '2019-10-19 08:54:19'),
(413, '413', 211, 569, 0, NULL, '19440708', '19440811', 2, 'David P', '2019-10-02 18:53:12'),
(414, '414', 211, 0, 0, NULL, '19440719', NULL, 3, 'david', '2010-01-10 18:35:21'),
(415, '415', 211, 566, 1, NULL, '19440606', '19440710', 0, 'David P', '2019-10-02 14:42:15'),
(416, '416', 211, 575, 0, NULL, '19440810', '19440923', 4, 'David P', '2019-10-03 14:10:06'),
(417, '417', 364, 563, 1, NULL, '19430201', '19430800', 1, 'David P', '2019-10-02 11:31:35'),
(418, '418', 211, 574, 0, NULL, '19440803', '19440818', 2, 'David P', '2019-10-03 13:28:33'),
(419, '419', 211, 572, 0, NULL, '19440728', '19440817', 2, 'David P', '2019-10-03 13:03:49'),
(429, '429', 339, 0, 0, NULL, '19440606', NULL, 16, 'David P', '2020-04-01 08:47:39'),
(424, '424', 45, 0, 0, NULL, '', '', 2, 'David Portier', '2012-09-08 08:01:44'),
(425, '425', 57, 0, 0, NULL, '', '', 0, 'David Portier', '2012-08-05 16:29:28'),
(427, '427', 211, 573, 0, NULL, '19440731', '19440814', 2, 'David P', '2019-10-03 13:09:21'),
(430, '430', 339, 598, 0, NULL, '19440607', NULL, 15, 'David P', '2020-04-01 08:37:44'),
(428, '428', 211, 0, 0, NULL, '19440719', '19440823', 2, 'David Portier', '2014-07-16 18:44:39'),
(438, 'new event', 365, 395, 0, NULL, '19430920', '19431001', NULL, 'David P', '2020-05-08 17:35:25'),
(440, 'Lot', 407, 568, 0, NULL, '19440611', NULL, NULL, 'David P', '2019-10-02 18:47:43'),
(456, 'Parachute course 23', 365, NULL, 0, NULL, '19420817', '19420823', NULL, 'David P', '2020-05-07 19:55:36'),
(454, 'Stick Renfort', 105, NULL, 0, NULL, '19440824', NULL, NULL, 'David P', '2020-03-06 20:56:39'),
(442, 'Parachute Course 97', 365, NULL, 0, NULL, '19440103', '19440115', NULL, 'David P', '2019-11-24 12:07:54'),
(443, 'Parachute Course 76', 365, NULL, 0, NULL, '19430802', '19430813', NULL, 'David P', '2020-01-31 08:36:16'),
(444, 'Renforts d\'Afrique du Nord', 87, NULL, 0, NULL, '19440601', NULL, NULL, 'David P', '2020-01-24 12:48:49'),
(445, 'Arrivée du 3e BIA', 364, NULL, 0, NULL, '19431107', NULL, NULL, 'David P', '2020-01-25 17:01:32'),
(446, 'Parachute course 99', 365, NULL, 0, NULL, '19440119', '19440203', NULL, 'David P', '2020-01-29 19:54:22'),
(447, 'Parachute course 77', 365, NULL, 0, NULL, '19430809', '19430818', NULL, 'David P', '2020-01-29 20:06:10'),
(448, 'Parachute course 96', 365, NULL, 0, NULL, '19431215', '19431229', NULL, 'David P', '2020-05-08 19:32:13'),
(449, 'Parachute course 66', 365, NULL, 0, NULL, '19430525', '19430604', NULL, 'David P', '2020-02-03 19:25:25'),
(453, 'Stick IV (1er Squadron)', 105, NULL, 0, NULL, '19440813', NULL, NULL, 'David P', '2020-03-06 20:23:41'),
(457, 'course108', 365, NULL, 0, NULL, '19440319', '19440331', NULL, 'David P', '2020-03-23 11:06:27'),
(458, 'course105', 365, NULL, 0, NULL, '19440301', '19440314', NULL, 'David P', '2020-03-23 11:26:04'),
(459, 'Parachute course 63', 365, NULL, 0, NULL, '19430504', '19430517', NULL, 'David P', '2020-05-03 20:31:46'),
(460, 'Parachute course 68', 365, NULL, 0, NULL, '19430615', '19430625', NULL, 'David P', '2020-05-03 20:49:28'),
(461, 'Parachute course 79', 365, NULL, 0, NULL, '19430823', '19430902', NULL, 'David P', '2020-05-04 19:10:38'),
(462, 'Parachute course 41', 365, NULL, 0, NULL, '19421203', '19421217', NULL, 'David P', '2020-05-07 19:54:39'),
(463, 'Parachute course 101', 365, NULL, 0, NULL, '19440131', '19440213', NULL, 'David P', '2020-05-09 12:20:53'),
(464, 'Ringway', 68, NULL, 0, NULL, '19401130', '19410430', NULL, 'David P', '2020-05-15 10:11:32'),
(465, '1re section', 464, NULL, 0, NULL, '19401130', '19401220', NULL, 'David P', '2020-05-15 10:12:40'),
(466, '2e section', 464, NULL, 0, NULL, '19410217', '19410307', NULL, 'David P', '2020-05-15 10:13:13'),
(467, '3e section', 464, NULL, 0, NULL, '19410407', '19410430', NULL, 'David P', '2020-05-15 10:16:11'),
(468, 'Parachute course 145A', 365, 395, 0, NULL, '19441202', '19441221', NULL, 'David P', '2020-06-04 12:56:32');
