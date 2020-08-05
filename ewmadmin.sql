-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2020-08-06 03:16:08
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
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'add_balance', '1', 'approved', '1541179525', '1000000', '0', '1', 'nanfang.12.ac.cn', '154392788823878', '48644409', 1, 'nanfang.12.ac.cn/api/ldpay/tiaozhuan.php', 'nanfang.12.ac.cn/api/ldpay/jieshou.php');

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
(518, '3', '1198.00', '1198.00', '709', '153906557620544', '1596655124', 0, NULL);

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
(37, '3', '298.00', '298.00', '153906557620544', 'qacgz1246216946.png', 'wxp://f2f1OSloSEKlcOQdQKHKEIJqmVwfMgwzN9KK', '5', '1541938986'),
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
(62, '3', '1.01', '1.00', '154392788823878', 'uqgzt1217500986.png', 'uqgzt1217500986.png', '7', '1596648589'),
(63, '3', '1198.01', '1198.00', '154392788823878', 'pdjti1200302335.png', 'https://u.wechat.com/IGqmAaJ-BWGYspaUQBY4TNk', '9', '1596654555'),
(64, '3', '1198.00', '1198.00', '153906557620544', 'tywx.jpg?rand=1386013109', 'tywx.jpg?rand=1386013109', '99999', '1596655124');

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
(8, '298', 298, '154392788823878'),
(9, '1198', 1198, '154392788823878');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=519;

--
-- 使用表AUTO_INCREMENT `ewmszb`
--
ALTER TABLE `ewmszb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- 使用表AUTO_INCREMENT `ewmzu`
--
ALTER TABLE `ewmzu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
