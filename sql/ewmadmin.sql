-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2020-08-12 10:20:49
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `ewmadmin`
--

-- --------------------------------------------------------

--
-- 表的结构 `ewmadmin`
--

CREATE TABLE `ewmadmin` (
  `id` int(11) NOT NULL,
  `adminname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `custom1` varchar(255) DEFAULT NULL,
  `custom2` varchar(255) DEFAULT NULL,
  `custom3` varchar(255) DEFAULT NULL,
  `custom4` varchar(255) DEFAULT NULL,
  `custom5` varchar(255) DEFAULT NULL,
  `custom6` varchar(255) DEFAULT NULL,
  `urls` varchar(255) DEFAULT NULL,
  `appid` varchar(255) DEFAULT NULL,
  `userkey` varchar(255) DEFAULT NULL,
  `fkok` int(2) DEFAULT NULL,
  `jiekou` varchar(255) DEFAULT NULL,
  `fanhui` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ewmadmin`
--

INSERT INTO `ewmadmin` (`id`, `adminname`, `password`, `type`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `urls`, `appid`, `userkey`, `fkok`, `jiekou`, `fanhui`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'add_balance', '1', 'approved', '1541179525', '1000000', '0', '1', 'nanfang.12.ac.cn', '154392788823878', '48644409', 1, 'nanfang.185.12.ac.cn/api/ldpay/tiaozhuan.php', 'nanfang.185.12.ac.cn/api/ldpay/jieshou-1116.php');

-- --------------------------------------------------------

--
-- 表的结构 `ewmddh`
--

CREATE TABLE `ewmddh` (
  `id` int(11) NOT NULL,
  `pay` varchar(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `cny` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `appid` varchar(255) DEFAULT NULL,
  `timm` varchar(255) DEFAULT NULL,
  `dingdanok` int(8) DEFAULT '0',
  `ddh` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ewmddh`
--

INSERT INTO `ewmddh` (`id`, `pay`, `name`, `cny`, `uid`, `appid`, `timm`, `dingdanok`, `ddh`) VALUES
(518, '3', '1198.00', '1198.00', '709', '153906557620544', '1596655124', 0, NULL),
(519, '3', '298.00', '298.00', '710', '153906557620544', '1596783602', 0, NULL),
(520, '3', '1198.00', '1198.00', '711', '153906557620544', '1597081562', 0, NULL),
(521, '3', '1.00', '1.00', '712', '153906557620544', '1597082288', 0, NULL),
(522, '3', '1.00', '1.00', '11233', '153906557620544', '1597082874', 0, NULL),
(523, '3', '1.00', '1.00', '11233', '153906557620544', '1597083297', 0, NULL),
(524, '3', '1.01', '1.00', '713', '153906557620544', '1597083425', 0, NULL),
(525, '3', '1.00', '1.00', '714', '154392788823878', '1597084169', 1, '10159708393248540782887313956652'),
(526, '3', '288.00', '288.00', '715', '154392788823878', '1597084551', 0, NULL),
(527, '3', '1.00', '1.00', '716', '154392788823878', '1597084607', 1, '10159708436225560871845869755043'),
(528, '3', '1.00', '1.00', '717', '154392788823878', '1597084756', 1, '10159708450930493502609509376344'),
(529, '3', '1.00', '1.00', '719', '154392788823878', '1597085320', 0, NULL),
(530, '3', '1.01', '1.00', '720', '154392788823878', '1597085368', 0, NULL),
(531, '3', '1.00', '1.00', '11232', '154392788823878', '1597085642', 0, NULL),
(532, '3', '1.01', '1.00', '723', '154392788823878', '1597085964', 0, NULL),
(533, '3', '1.00', '1.00', '724', '154392788823878', '1597086157', 0, NULL),
(534, '3', '1.00', '1.00', '725', '154392788823878', '1597087071', 1, '10159708682174141118914686979245'),
(535, '3', '1.00', '1.00', '726', '154392788823878', '1597087327', 1, '10159708707617466344595584428526'),
(536, '3', '1.00', '1.00', '727', '154392788823878', '1597087464', 1, '10159708721352875627611914984407'),
(537, '3', '1.00', '1.00', '728', '154392788823878', '1597087608', 1, '10159708735891584737264967970528'),
(538, '3', '1.00', '1.00', '729', '154392788823878', '1597088164', 1, '10159708791348863229712055432879'),
(539, '3', '1.00', '1.00', '1', '154392788823878', '1597088486', 1, '101597088236685103045631261203310'),
(540, '3', '1.00', '1.00', '2', '154392788823878', '1597088812', 1, '101597088563317752059765891977711'),
(541, '3', '1188.01', '1188.00', '3', '154392788823878', '1597090036', 0, NULL),
(542, '3', '288.00', '288.00', '4', '154392788823878', '1597092480', 0, NULL),
(543, '3', '288.00', '288.00', '5', '154392788823878', '1597131670', 0, NULL),
(544, '3', '1188.01', '1188.00', '7', '154392788823878', '1597136621', 0, NULL),
(545, '3', '288.00', '288.00', '8', '154392788823878', '1597138371', 0, NULL),
(546, '3', '1188.01', '1188.00', '9', '154392788823878', '1597138417', 0, NULL),
(547, '3', '288.01', '288.00', '10', '154392788823878', '1597138431', 0, NULL),
(548, '3', '288.00', '288.00', '12', '154392788823878', '1597144996', 0, NULL),
(549, '3', '288.01', '288.00', '13', '154392788823878', '1597145037', 0, NULL),
(550, '3', '288.02', '288.00', '14', '154392788823878', '1597145062', 0, NULL),
(551, '3', '288.00', '288.00', '15', '154392788823878', '1597145434', 0, NULL),
(552, '3', '1188.01', '1188.00', '16', '154392788823878', '1597145474', 0, NULL),
(553, '3', '288.01', '288.00', '17', '154392788823878', '1597145484', 0, NULL),
(554, '3', '288.02', '288.00', '18', '154392788823878', '1597145506', 0, NULL),
(555, '3', '288.00', '288.00', '20', '154392788823878', '1597171632', 0, NULL),
(556, '3', '288.01', '288.00', '21', '154392788823878', '1597171876', 1, '10159717163887329273927527022481'),
(557, '3', '1188.01', '1188.00', '23', '154392788823878', '1597171972', 0, NULL),
(558, '3', '1188.01', '1188.00', '24', '154392788823878', '1597172371', 1, '101597172135382805364569000112');

-- --------------------------------------------------------

--
-- 表的结构 `ewmszb`
--

CREATE TABLE `ewmszb` (
  `id` int(11) NOT NULL,
  `pay` varchar(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `cny` varchar(255) DEFAULT NULL,
  `appid` varchar(255) DEFAULT NULL,
  `picurl` varchar(255) DEFAULT NULL,
  `ewmurl` varchar(255) DEFAULT NULL,
  `fenzuid` varchar(255) DEFAULT NULL,
  `timm` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ewmszb`
--

INSERT INTO `ewmszb` (`id`, `pay`, `name`, `cny`, `appid`, `picurl`, `ewmurl`, `fenzuid`, `timm`) VALUES
(59, '1', '298.00', '298.00', '153906557620544', 'hejjf1378041562.png', 'https://qr.alipay.com/fkx067477sv4nn3qzggcx5d', '5', '1541860466'),
(58, '1', '298.04', '298.00', '153906557620544', 'uaqjm1106833752.png', 'https://qr.alipay.com/fkx069390wgurezfb2colb3', '5', '1541814212'),
(57, '1', '298.03', '298.00', '153906557620544', 'xhmhy1082731396.png', 'https://qr.alipay.com/fkx08719davhcuncev8sza5', '5', '1541828852'),
(55, '1', '298.01', '298.00', '153906557620544', 'nsssv1221889335.png', 'https://qr.alipay.com/fkx03686cjhbeneibanaof3', '5', '1541854398'),
(56, '1', '298.02', '298.00', '153906557620544', 'fobyn1187074822.png', 'https://qr.alipay.com/fkx09569o9vrjza606it02a', '5', '1541828850'),
(37, '3', '298.00', '298.00', '153906557620544', 'qacgz1246216946.png', 'wxp://f2f1OSloSEKlcOQdQKHKEIJqmVwfMgwzN9KK', '5', '1596783602'),
(38, '3', '298.01', '298.00', '153906557620544', 'bizkn1173747196.png', 'wxp://f2f1szj5XrEyiBQZutgPimp79FlNzJveAH97', '5', '1541937293'),
(39, '3', '298.02', '298.00', '153906557620544', 'iiyxz1310514922.png', 'wxp://f2f1I871e2WwjxOkIxPNTN2kU9c7Z64PBMe5', '5', '1541906583'),
(40, '3', '298.03', '298.00', '153906557620544', 'bgrdp1007483493.png', 'wxp://f2f1Gq2yJfRn9FdGlYgi26XUBEfLB6YpAVUu', '5', '1541906867'),
(41, '3', '298.04', '298.00', '153906557620544', 'dtnxz1234566223.png', 'wxp://f2f1uuWJbYBBO2hD2RxolI-mjNjhVlRE83hi', '5', '1541906612'),
(42, '3', '298.06', '298.00', '153906557620544', 'wnwpc1122901988.png', 'wxp://f2f1aYRP8aSsIjiyY-HPTMstN-Md1MTXbanB', '5', '1541906617'),
(43, '3', '298.07', '298.00', '153906557620544', 'upths1106132956.png', 'wxp://f2f1xFYlGotUKsK2uRSsL57OPEMjPeg0lVPK', '5', '1541857711'),
(44, '3', '298.08', '298.00', '153906557620544', 'ylscr1405710465.png', 'wxp://f2f18qjuhP0mLtumectGXKN4bvGTHzAN102F', '5', '1541857815'),
(45, '2', '298.00', '298.00', '153906557620544', 'tupkj1065636995.png', 'https://i.qianbao.qq.com/wallet/sqrcode.htm?m=tenpay&amp;f=wallet&amp;a=1&amp;ac=430CE2526EAC0304E5E93F69F6CC86BD0634E4AB28337CD4B641BC5BDFC3F3B16F09DCD0A5FAECF2&amp;u=644777789&amp;n=%E8%81%9A%E5%8F%8B%E4%BC%A0%E5%AA%92', '5', '1541906520'),
(46, '2', '298.01', '298.00', '153906557620544', 'uqyop1050369667.png', 'https://i.qianbao.qq.com/wallet/sqrcode.htm?m=tenpay&amp;f=wallet&amp;a=1&amp;ac=430CE2526EAC03045D314032F8E9A917B6B9D8DEA1490A7DB641BC5BDFC3F3B16F09DCD0A5FAECF2&amp;u=644777789&amp;n=%E8%81%9A%E5%8F%8B%E4%BC%A0%E5%AA%92', '5', '1541906615'),
(47, '2', '298.02', '298.00', '153906557620544', 'orhrl1078564167.png', 'https://i.qianbao.qq.com/wallet/sqrcode.htm?m=tenpay&amp;f=wallet&amp;a=1&amp;ac=430CE2526EAC030460F3A61E46FC8D544C683ED2679301C2B641BC5BDFC3F3B16F09DCD0A5FAECF2&amp;u=644777789&amp;n=%E8%81%9A%E5%8F%8B%E4%BC%A0%E5%AA%92', '5', '1541906618'),
(48, '2', '298.03', '298.00', '153906557620544', 'tidvq1010561987.png', 'https://i.qianbao.qq.com/wallet/sqrcode.htm?m=tenpay&amp;f=wallet&amp;a=1&amp;ac=430CE2526EAC03049A10F580AD471118FD6303593CA7DE14B641BC5BDFC3F3B16F09DCD0A5FAECF2&amp;u=644777789&amp;n=%E8%81%9A%E5%8F%8B%E4%BC%A0%E5%AA%92', '5', '1541431625'),
(49, '2', '298.04', '298.00', '153906557620544', 'jzome1190879140.png', 'https://i.qianbao.qq.com/wallet/sqrcode.htm?m=tenpay&amp;f=wallet&amp;a=1&amp;ac=430CE2526EAC03043D5642A8D9F8FFC0E5947AB43913ED87B641BC5BDFC3F3B16F09DCD0A5FAECF2&amp;u=644777789&amp;n=%E8%81%9A%E5%8F%8B%E4%BC%A0%E5%AA%92', '5', '1541431677'),
(60, '3', '298.00', '298.00', '9906722', 'ylrbo3081309228.png', 'ylrbo3081309228.png', '6', '1596645465'),
(65, '3', '1.01', '1.00', '154392788823878', 'epudm1269493364.jpg', 'wxp://f2f1fA13GOnCoouGp1U6uxcZDJjEAlV9N2wZ', '7', '1597085964'),
(84, '3', '1188.01', '1188.00', '154392788823878', 'rjuqu1143675566.jpg', 'wxp://f2f19XQls4t_B92cWP2RPp8KFqJ58VWdx4Pc', '9', '1597172095'),
(64, '3', '1198.00', '1198.00', '153906557620544', 'tywx.jpg?rand=1386013109', 'tywx.jpg?rand=1386013109', '99999', '1597081562'),
(66, '3', '1.00', '1.00', '154392788823878', 'cpxtr1240873381.jpg', 'wxp://f2f1XEsbJ2LqUsqP0H3hbT1LyyeDoy6CZKbk', '7', '1597088525'),
(67, '3', '1.03', '1.00', '154392788823878', 'pjyzt1402369173.jpg', 'wxp://f2f1K03_ctpDx-vAJvT6sLtXD8gGvgltILoT', '7', '1597081833'),
(68, '3', '1.02', '1.00', '154392788823878', 'utvca1139796163.jpg', 'wxp://f2f1HLpOhSrIf9B88l20-t31sQEhkK3B0Oaw', '7', '1597081862'),
(69, '3', '1.04', '1.00', '154392788823878', 'dfwfi1117170483.jpg', 'wxp://f2f1PRV-y7nf1Q5WY02AxE71DNzhgb9Mskc5', '7', '1597081937'),
(70, '3', '1.00', '1.00', '153906557620544', 'tywx.jpg?rand=1290166827', 'tywx.jpg?rand=1290166827', '99999', '1597083297'),
(71, '3', '1.01', '1.00', '153906557620544', 'tywx.jpg?rand=1094582347', 'tywx.jpg?rand=1094582347', '99999', '1597083425'),
(72, '3', '288.00', '288.00', '154392788823878', 'tywx.jpg?rand=1049005619', 'tywx.jpg?rand=1049005619', '99999', '1597171632'),
(73, '3', '288.01', '288.00', '154392788823878', 'juqho1179779042.jpg', 'wxp://f2f1oho8pf_ymnwLRlc3TkrDYyD6h5D_fndA', '8', '1597171598'),
(74, '3', '288.02', '288.00', '154392788823878', 'tzbtn1248081562.jpg', 'wxp://f2f1hYfpkxEr2WoILJFCRtsj22S6CYV6lgkg', '8', '1597145506'),
(75, '3', '288.03', '288.00', '154392788823878', 'refkw1006244587.jpg', 'wxp://f2f1T2BwEa_IRy7zZumFiHtFQX-zKv3MKGV7', '8', '1597089198'),
(76, '3', '288.04', '288.00', '154392788823878', 'qxtvp1304595704.jpg', 'wxp://f2f10CxO6rjcNV68HTvE1Fn91hG1Qh27XjWO', '8', '1597089229'),
(77, '3', '288.05', '288.00', '154392788823878', 'zfzrj1186674368.jpg', 'wxp://f2f1yFM-OX0naMojMGHOO78EyrWSBBe1rhAr', '8', '1597089242'),
(81, '3', '288.07', '288.00', '154392788823878', 'nzfmc1373486392.jpg', 'wxp://f2f1W6LdG1-ErndJEv12pUKH6vaNJnmvAbvr', '8', '1597089529'),
(80, '3', '288.06', '288.00', '154392788823878', 'fbkqg1329311255.jpg', 'wxp://f2f15e44LOAqEMIjmpXvO-iybrn1Az_IvdvG', '8', '1597089516'),
(82, '3', '288.08', '288.00', '154392788823878', 'pygsr1347957417.jpg', 'wxp://f2f1F8rx1eRVUjYK4FcSSHt0kuDaDNQfId09', '8', '1597089543'),
(83, '3', '288.09', '288.00', '154392788823878', 'nslwy1075660872.jpg', 'wxp://f2f1FMI2q2tdnV-8FWqB0Jxf1TMWuFTtf0VI', '8', '1597089555'),
(85, '3', '1188.02', '1188.00', '154392788823878', 'zlzkw1034213831.jpg', 'wxp://f2f1uMlDvTZEckqsOkoP7r_kmbHR8N9adKsq', '9', '1597089599'),
(86, '3', '1188.03', '1188.00', '154392788823878', 'hlymw1119748409.jpg', 'wxp://f2f1eDsOEQa0VwNstRmhfQdQGWs2TDVxsyQg', '9', '1597089623'),
(87, '3', '1188.04', '1188.00', '154392788823878', 'ytzrz1175824553.jpg', 'wxp://f2f1oTHzUJOv7OFBcOKwcsv9cPFYrwW37I8c', '9', '1597089636'),
(88, '3', '1188.05', '1188.00', '154392788823878', 'sxmbv1020811119.jpg', 'wxp://f2f1VRBhawL6j_5NqObRjrPJ63Ed-1rwzDUV', '9', '1597089648'),
(89, '3', '1188.06', '1188.00', '154392788823878', 'xoaaf1399628562.jpg', 'wxp://f2f1aXlQeqFfUTywxBAyMdrGYTTocFOWE4wc', '9', '1597089664'),
(90, '3', '1188.07', '1188.00', '154392788823878', 'zqbbl1094344577.jpg', 'wxp://f2f1RR20gEW4bq2T4gGUx2_Vw4fSBPTu11uz', '9', '1597089678'),
(91, '3', '1188.08', '1188.00', '154392788823878', 'kdpqk1015254813.jpg', 'wxp://f2f1OqIFr4FJsYVlfKD8tAWlVU4PiZ78PMBA', '9', '1597089690'),
(92, '3', '1188.09', '1188.00', '154392788823878', 'emqcg1230912076.jpg', 'wxp://f2f17IEqAIATDbcdnK4aw6PFZg8meZpA13oy', '9', '1597089703');

-- --------------------------------------------------------

--
-- 表的结构 `ewmzu`
--

CREATE TABLE `ewmzu` (
  `id` int(11) NOT NULL,
  `zuname` varchar(20) DEFAULT NULL,
  `money` float DEFAULT NULL,
  `appid` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ewmzu`
--

INSERT INTO `ewmzu` (`id`, `zuname`, `money`, `appid`) VALUES
(5, '充值298元', 298, '153906557620544'),
(6, '298', 298, '9906722'),
(7, '充值1元', 1, '154392788823878'),
(8, '288', 288, '154392788823878'),
(9, '1188', 1188, '154392788823878');

--
-- 转储表的索引
--

--
-- 表的索引 `ewmadmin`
--
ALTER TABLE `ewmadmin`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `ewmddh`
--
ALTER TABLE `ewmddh`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `ewmszb`
--
ALTER TABLE `ewmszb`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `ewmzu`
--
ALTER TABLE `ewmzu`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `ewmadmin`
--
ALTER TABLE `ewmadmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `ewmddh`
--
ALTER TABLE `ewmddh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=559;

--
-- 使用表AUTO_INCREMENT `ewmszb`
--
ALTER TABLE `ewmszb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- 使用表AUTO_INCREMENT `ewmzu`
--
ALTER TABLE `ewmzu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
