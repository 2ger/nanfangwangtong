-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2020-08-12 10:20:35
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
-- 数据库： `ad`
--

-- --------------------------------------------------------

--
-- 表的结构 `tbl_acount_log`
--

CREATE TABLE `tbl_acount_log` (
  `id` int(10) NOT NULL,
  `user_id` int(8) NOT NULL,
  `username` varchar(50) NOT NULL,
  `shouru` float(10,2) NOT NULL DEFAULT '0.00',
  `zhichu` float(10,2) NOT NULL DEFAULT '0.00',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `leixing` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tbl_acount_log`
--

INSERT INTO `tbl_acount_log` (`id`, `user_id`, `username`, `shouru`, `zhichu`, `remark`, `addtime`, `leixing`) VALUES
(9, 1749, '13219201728', 30.00, 0.00, '', 1597147215, '用户发圈奖励'),
(7, 1749, '13219201728', 30.00, 0.00, '', 1597147154, '用户发圈奖励'),
(13, 1749, '13219201728', 30.00, 0.00, '', 1597159828, '用户发圈奖励'),
(15, 1749, '13219201728', 30.00, 0.00, '', 1597159836, '用户发圈奖励'),
(17, 1752, '13219201728', 10.00, 0.00, '', 1597171540, '用户发圈奖励'),
(72548, 1752, '13219201728', 10.00, 0.00, '', 1597171587, '用户发圈奖励'),
(80276, 1752, '13219201728', 10.00, 0.00, '', 1597171592, '用户发圈奖励'),
(86603, 1754, '18048794911', 0.01, 0.00, '', 1597171598, '会员金额多余补贴'),
(86604, 1752, '13219201728', 20.00, 0.00, '', 1597171598, '1级推荐VIP会员'),
(196539, 1752, '13219201728', 10.00, 0.00, '', 1597171751, '用户发圈奖励'),
(233255, 1753, '18280089665', 10.00, 0.00, '', 1597171775, '用户发圈奖励'),
(233257, 1752, '13219201728', 6.00, 0.00, '', 1597171775, '1级发圈奖励'),
(281789, 1752, '13219201728', 30.00, 0.00, '', 1597171795, '用户发圈奖励'),
(338954, 1753, '18280089665', 10.00, 0.00, '', 1597171825, '用户发圈奖励'),
(338955, 1752, '13219201728', 6.00, 0.00, '', 1597171825, '1级发圈奖励'),
(348307, 1752, '13219201728', 30.00, 0.00, '', 1597171839, '用户发圈奖励'),
(421212, 1753, '18280089665', 10.00, 0.00, '', 1597172024, '用户发圈奖励'),
(421213, 1752, '13219201728', 6.00, 0.00, '', 1597172024, '1级发圈奖励'),
(499183, 1753, '18280089665', 10.00, 0.00, '', 1597172074, '用户发圈奖励'),
(499184, 1752, '13219201728', 6.00, 0.00, '', 1597172074, '1级发圈奖励'),
(504666, 1753, '18280089665', 10.00, 0.00, '', 1597172078, '用户发圈奖励'),
(504667, 1752, '13219201728', 6.00, 0.00, '', 1597172078, '1级发圈奖励'),
(513848, 1754, '18048794911', 0.01, 0.00, '', 1597172095, '会员金额多余补贴'),
(513849, 1752, '13219201728', 60.00, 0.00, '', 1597172095, '1级推荐VIP会员'),
(621589, 1753, '18280089665', 30.00, 0.00, '', 1597172165, '用户发圈奖励'),
(621590, 1752, '13219201728', 18.00, 0.00, '', 1597172165, '1级发圈奖励'),
(697068, 1753, '18280089665', 30.00, 0.00, '', 1597172214, '用户发圈奖励'),
(697069, 1752, '13219201728', 18.00, 0.00, '', 1597172214, '1级发圈奖励'),
(703698, 1752, '13219201728', 10.00, 0.00, '', 1597183916, '用户发圈奖励'),
(703702, 1752, '13219201728', 10.00, 0.00, '', 1597183965, '用户发圈奖励'),
(703706, 1752, '13219201728', 10.00, 0.00, '', 1597184028, '用户发圈奖励'),
(703710, 1752, '13219201728', 30.00, 0.00, '', 1597184154, '用户发圈奖励'),
(703714, 1752, '13219201728', 30.00, 0.00, '', 1597184202, '用户发圈奖励'),
(703718, 1752, '13219201728', 30.00, 0.00, '', 1597184260, '用户发圈奖励'),
(703722, 1752, '13219201728', 30.00, 0.00, '', 1597184307, '用户发圈奖励'),
(703726, 1753, '18280089665', 10.00, 0.00, '', 1597184523, '用户发圈奖励'),
(703727, 1752, '13219201728', 6.00, 0.00, '', 1597184523, '1级发圈奖励'),
(703730, 1753, '18280089665', 10.00, 0.00, '', 1597184565, '用户发圈奖励'),
(703731, 1752, '13219201728', 6.00, 0.00, '', 1597184565, '1级发圈奖励'),
(703734, 1753, '18280089665', 10.00, 0.00, '', 1597184603, '用户发圈奖励'),
(703735, 1752, '13219201728', 6.00, 0.00, '', 1597184603, '1级发圈奖励'),
(703738, 1753, '18280089665', 10.00, 0.00, '', 1597184647, '用户发圈奖励'),
(703739, 1752, '13219201728', 6.00, 0.00, '', 1597184647, '1级发圈奖励'),
(703742, 1753, '18280089665', 30.00, 0.00, '', 1597184708, '用户发圈奖励'),
(703743, 1752, '13219201728', 18.00, 0.00, '', 1597184708, '1级发圈奖励'),
(703751, 1744, 'admin', 10.00, 0.00, '', 1597197917, '用户发圈奖励'),
(703746, 1753, '18280089665', 30.00, 0.00, '', 1597184752, '用户发圈奖励'),
(703747, 1752, '13219201728', 18.00, 0.00, '', 1597184752, '1级发圈奖励'),
(703750, 1744, 'admin', 30.00, 0.00, '', 1597197909, '用户发圈奖励');

-- --------------------------------------------------------

--
-- 表的结构 `tbl_ad`
--

CREATE TABLE `tbl_ad` (
  `id` int(11) NOT NULL,
  `ad_title` varchar(255) DEFAULT NULL,
  `ad_link` varchar(255) DEFAULT '#',
  `ad_img` varchar(255) DEFAULT NULL,
  `ad_img_one` varchar(255) DEFAULT NULL,
  `ad_img_two` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `adtelnumber` varchar(20) DEFAULT NULL,
  `adqqnumber` varchar(20) DEFAULT NULL,
  `adlbs` text,
  `erweima` varchar(255) DEFAULT NULL,
  `quanping` varchar(255) NOT NULL,
  `ad_link2` varchar(500) NOT NULL DEFAULT '#',
  `quanping2` varchar(255) NOT NULL,
  `ad_link3` varchar(500) NOT NULL DEFAULT '#',
  `shipinpic` varchar(255) DEFAULT NULL,
  `pmd` varchar(255) DEFAULT NULL,
  `systemdefault` int(11) DEFAULT '0',
  `wechat_name` varchar(255) DEFAULT NULL,
  `wechat_url` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tbl_ad`
--

INSERT INTO `tbl_ad` (`id`, `ad_title`, `ad_link`, `ad_img`, `ad_img_one`, `ad_img_two`, `userid`, `username`, `addtime`, `adtelnumber`, `adqqnumber`, `adlbs`, `erweima`, `quanping`, `ad_link2`, `quanping2`, `ad_link3`, `shipinpic`, `pmd`, `systemdefault`, `wechat_name`, `wechat_url`) VALUES
(1100, '官方广告', 'http://tui.lvjiachuantiegao.com/', 'upload/20180518/1526627448212.jpg', '', '', '1348', 'yunniupin', '2018-05-18 15:11:35', '', '', '', 'upload/20180518/1526627457680.jpg', '', '', '', '', '', '', 1, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(3) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` char(32) NOT NULL,
  `logintimes` int(5) NOT NULL DEFAULT '0',
  `logintime` datetime DEFAULT NULL,
  `lasttime` datetime DEFAULT NULL,
  `add_time` int(10) NOT NULL,
  `loginip` varchar(50) NOT NULL DEFAULT '',
  `jb` int(1) NOT NULL COMMENT '????Ա???',
  `xtgl` int(1) NOT NULL DEFAULT '0' COMMENT 'ϵͳ???',
  `dyxx` int(1) NOT NULL DEFAULT '0' COMMENT '??ҳ??Ϣ',
  `lbxx` int(1) NOT NULL DEFAULT '0' COMMENT '??????Ϣ',
  `xwgl` int(1) NOT NULL DEFAULT '0' COMMENT '??????Ϣ',
  `sjgl` int(1) NOT NULL DEFAULT '0' COMMENT '?̼ҹ??',
  `hyqx` varchar(255) DEFAULT '0' COMMENT '??ҵȨ?',
  `hygl` int(10) NOT NULL DEFAULT '0' COMMENT '??Ա???',
  `cjgl` int(1) NOT NULL DEFAULT '0' COMMENT '???????',
  `chao` int(1) NOT NULL DEFAULT '0' COMMENT '????????Ա',
  `kehushu` varchar(255) DEFAULT NULL,
  `anums` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `password`, `logintimes`, `logintime`, `lasttime`, `add_time`, `loginip`, `jb`, `xtgl`, `dyxx`, `lbxx`, `xwgl`, `sjgl`, `hyqx`, `hygl`, `cjgl`, `chao`, `kehushu`, `anums`) VALUES
(16, 'admin', '896674740228d329d77cdea65cb2883d', 3231, '2020-08-12 09:46:50', '2020-08-11 22:18:02', 1338364688, '117.182.112.205', 1, 0, 0, 0, 0, 0, '0', 0, 0, 0, '1000022', '9999999999999999999999999999999999999999999');

-- --------------------------------------------------------

--
-- 表的结构 `tbl_ads`
--

CREATE TABLE `tbl_ads` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text,
  `images` text,
  `addtime` int(10) NOT NULL DEFAULT '0',
  `ischeck` tinyint(1) NOT NULL DEFAULT '0',
  `isshow` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(8) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL,
  `issys` tinyint(1) NOT NULL DEFAULT '0',
  `updatetime` int(10) NOT NULL DEFAULT '0',
  `tasknums` int(10) NOT NULL DEFAULT '1',
  `completenums` int(10) NOT NULL DEFAULT '0',
  `price` float(10,2) NOT NULL DEFAULT '0.00',
  `index_id` int(8) NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `port` int(8) NOT NULL DEFAULT '0',
  `supervip` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tbl_ads`
--

INSERT INTO `tbl_ads` (`id`, `title`, `content`, `images`, `addtime`, `ischeck`, `isshow`, `user_id`, `username`, `issys`, `updatetime`, `tasknums`, `completenums`, `price`, `index_id`, `ip`, `port`, `supervip`) VALUES
(2, '嘟嘟共享充电宝', '嘟嘟共享充电宝商用餐厅酒店扫码付费一拖三小家机柜加盟租借设备招商加盟', '[\"http://nanfang.185.12.ac.cn/adimages/ad3.jpg\",\"http://nanfang.185.12.ac.cn/adimages/ad4.jpg\"]', 1537125060, 1, 1, 0, 'admin', 1, 1597091069, 1, 0, 0.00, 0, '127.0.0.1', 65028, 0),
(5, '微商爆款', '代发微商爆款一手零食厂家货源批发零售免费代理加盟网红零食小吃,抖音网红微商爆款罐装零食小吃加盟代理免费厂家一手货源一件代发', '[\"http://nanfang.185.12.ac.cn/adimages/ad1.jpg\",\"http://nanfang.185.12.ac.cn/adimages/ad2.jpg\"]', 1540476394, 1, 1, 0, 'admin', 1, 1597091002, 1, 0, 0.00, 0, '112.132.53.10', 3753, 0),
(7, '智能快递柜', '定制 智能快递柜自提柜菜鸟小区收发件储物寄存柜丰巢自助微信扫码加盟,加V dayjay', '[\"http://nanfang.185.12.ac.cn/adimages/ad5.jpg\",\"http://nanfang.185.12.ac.cn/adimages/ad6.jpg\"]', 1597149450, 1, 1, 0, 'admin', 1, 1597149495, 1, 0, 0.00, 4, '117.182.112.205', 13246, 1),
(8, '地摊VR体验馆', '地摊VR夜市vr平台体验馆加盟厂家直销大型娱乐设备VR网红节奏光剑,客户V dayjay', '[\"http://nanfang.185.12.ac.cn/adimages/ad7.jpg\",\"http://nanfang.185.12.ac.cn/adimages/ad8.jpg\"]', 1597149509, 1, 1, 0, 'admin', 1, 1597149702, 1, 0, 0.00, 6, '117.182.112.205', 11498, 1);

-- --------------------------------------------------------

--
-- 表的结构 `tbl_ads_task`
--

CREATE TABLE `tbl_ads_task` (
  `id` int(10) NOT NULL,
  `aid` int(10) NOT NULL,
  `user_id` int(8) NOT NULL,
  `username` varchar(50) NOT NULL,
  `imagepath` mediumtext NOT NULL,
  `addtime` int(10) NOT NULL DEFAULT '0',
  `ischeck` tinyint(1) NOT NULL DEFAULT '0',
  `price` float(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tbl_ads_task`
--

INSERT INTO `tbl_ads_task` (`id`, `aid`, `user_id`, `username`, `imagepath`, `addtime`, `ischeck`, `price`) VALUES
(115, 5, 1750, '15982572626', '', 1597146647, 0, 0.00),
(134, 8, 1752, '13219201728', '', 1597173161, 1, 0.00),
(135, 7, 1752, '13219201728', '', 1597173165, 1, 0.00),
(136, 5, 1752, '13219201728', '', 1597173169, 1, 0.00),
(137, 2, 1752, '13219201728', '', 1597173172, 1, 0.00),
(138, 8, 1753, '18280089665', '', 1597173292, 0, 0.00),
(139, 7, 1753, '18280089665', '', 1597173296, 1, 0.00),
(140, 5, 1753, '18280089665', '', 1597173299, 1, 0.00),
(141, 2, 1753, '18280089665', '', 1597173303, 1, 0.00),
(142, 8, 1750, '15982572626', '', 1597180405, 0, 0.00),
(143, 7, 1750, '15982572626', '', 1597180419, 0, 0.00),
(144, 5, 1750, '15982572626', '', 1597182483, 0, 0.00),
(145, 2, 1750, '15982572626', '', 1597182490, 0, 0.00),
(146, 5, 1744, 'admin', '', 1597197741, 1, 0.00),
(147, 8, 1744, 'admin', '', 1597197746, 1, 0.00);

-- --------------------------------------------------------

--
-- 表的结构 `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `id` int(8) NOT NULL,
  `user_id` int(8) NOT NULL,
  `username` varchar(50) NOT NULL,
  `bankcard` varchar(60) NOT NULL,
  `bankname` varchar(60) NOT NULL,
  `bank_username` varchar(30) NOT NULL,
  `zhihang` varchar(50) NOT NULL DEFAULT '',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tbl_bank`
--

INSERT INTO `tbl_bank` (`id`, `user_id`, `username`, `bankcard`, `bankname`, `bank_username`, `zhihang`, `isdefault`) VALUES
(247, 1744, 'admin', 'ijjkkkm', 'hjjj', 'kjj', 'njjj', 1),
(248, 1746, '17376167345', '666', '444', '2333', '555', 1),
(249, 1754, '18048794911', '6228482479612424972', '农业银行', '宋兵', '射洪支行', 1);

-- --------------------------------------------------------

--
-- 表的结构 `tbl_chongzhi`
--

CREATE TABLE `tbl_chongzhi` (
  `id` int(10) NOT NULL,
  `user_id` int(8) NOT NULL,
  `username` varchar(50) NOT NULL,
  `money` float(10,2) NOT NULL,
  `addtime` int(10) NOT NULL DEFAULT '0',
  `ischeck` tinyint(1) NOT NULL DEFAULT '0',
  `paytype` varchar(20) NOT NULL DEFAULT '',
  `paytime` int(10) NOT NULL DEFAULT '0',
  `updatetime` int(10) NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `opuser` varchar(50) NOT NULL DEFAULT '',
  `opremark` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `tbl_complain`
--

CREATE TABLE `tbl_complain` (
  `Id` int(11) NOT NULL,
  `fid` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `reson` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `tbl_config`
--

CREATE TABLE `tbl_config` (
  `id` int(11) NOT NULL,
  `regtime` varchar(255) DEFAULT NULL,
  `regnum` varchar(255) DEFAULT NULL,
  `regadnum` varchar(255) DEFAULT NULL,
  `reglognum` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tbl_config`
--

INSERT INTO `tbl_config` (`id`, `regtime`, `regnum`, `regadnum`, `reglognum`) VALUES
(3, '90', '2', '1', '1');

-- --------------------------------------------------------

--
-- 表的结构 `tbl_cz_log`
--

CREATE TABLE `tbl_cz_log` (
  `id` int(10) NOT NULL,
  `qudao` varchar(255) NOT NULL,
  `wnum` int(10) NOT NULL,
  `tnum` int(10) NOT NULL,
  `jiage` float NOT NULL,
  `dingdan` varchar(50) NOT NULL,
  `userid` int(10) NOT NULL,
  `shijian` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `tbl_info`
--

CREATE TABLE `tbl_info` (
  `id` int(11) NOT NULL,
  `title` text,
  `content` longtext COMMENT '??????????????',
  `adpic` varchar(255) DEFAULT NULL COMMENT '?o?????IP',
  `adpic_one` varchar(255) DEFAULT NULL,
  `adpic_two` varchar(255) DEFAULT NULL,
  `adlink` varchar(255) DEFAULT NULL COMMENT '????o???????????',
  `userid` varchar(255) DEFAULT NULL COMMENT '?????????????????',
  `wcount` int(11) DEFAULT NULL COMMENT '????????????????????????/??????',
  `acount` int(11) DEFAULT NULL,
  `addtime` varchar(100) DEFAULT NULL,
  `telnum` varchar(100) DEFAULT NULL,
  `qqnum` varchar(20) DEFAULT NULL,
  `ifweizhi` int(10) DEFAULT NULL,
  `gongzhonghao` text,
  `ifPublicNumber` int(10) DEFAULT NULL,
  `qrcode` varchar(255) DEFAULT NULL,
  `ywyuedu` text,
  `infoid` varchar(200) DEFAULT '0',
  `daili` varchar(255) DEFAULT NULL,
  `share_pic` varchar(500) NOT NULL DEFAULT '',
  `share_desc` varchar(500) NOT NULL DEFAULT '',
  `is_quanping` int(1) DEFAULT NULL,
  `adid` int(10) DEFAULT NULL,
  `musicid` int(10) DEFAULT NULL,
  `autoplay` int(2) NOT NULL,
  `gzurl` varchar(500) DEFAULT NULL,
  `zhedie` int(11) DEFAULT NULL,
  `qptime` varchar(255) DEFAULT '3',
  `url2` varchar(255) NOT NULL DEFAULT '#',
  `ispl` int(1) NOT NULL DEFAULT '0',
  `is_quanping2` int(1) NOT NULL DEFAULT '0' COMMENT '广告后顶部是否显示',
  `zan` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tbl_info`
--

INSERT INTO `tbl_info` (`id`, `title`, `content`, `adpic`, `adpic_one`, `adpic_two`, `adlink`, `userid`, `wcount`, `acount`, `addtime`, `telnum`, `qqnum`, `ifweizhi`, `gongzhonghao`, `ifPublicNumber`, `qrcode`, `ywyuedu`, `infoid`, `daili`, `share_pic`, `share_desc`, `is_quanping`, `adid`, `musicid`, `autoplay`, `gzurl`, `zhedie`, `qptime`, `url2`, `ispl`, `is_quanping2`, `zan`) VALUES
(5210, '女子凌晨叫滴滴回家，坐上副驾驶，遭司机勒脖强吻', '\n\n				\n\n					<p style=\"margin-left: 8px; margin-right: 8px; cursor: pointer;\"><img class=\"\" data-copyright=\"0\" data-ratio=\"0.18472222222222223\" src=\"image_proxy.php?1=1&amp;siteid=1&amp;url=https://mmbiz.qpic.cn/mmbiz_gif/3OEpTPib0kVicCdNHPict7tja3rZIeJImtvu1UJzIOtl4U6yqtDfuSqVYaO2wnb0tLQm3T7U4muWLxdpuEB4FccpQ/640?wx_fmt=gif\" data-type=\"gif\" data-w=\"720\" style=\"cursor: pointer;\"></p>\n<p style=\"cursor: pointer;\"><br></p>\n<p style=\"margin-left: 8px; margin-right: 8px; cursor: pointer;\">空姐夜乘滴滴被司机杀害的新闻近日引起关注。5月17日，澎湃新闻记者从上海市闵行区人民检察院获悉，2017年9月，女子<strong>萧姗</strong>也遭遇了类似侵犯，所幸她逃脱了嫌犯的魔爪。日前，男子张强以强制猥亵罪被判处拘役4个月。</p>\n<p style=\"cursor: pointer;\"><br data-filtered=\"filtered\" style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"></p>\n<p style=\"margin-left: 8px; margin-right: 8px; cursor: pointer;\">据检察院透露，萧姗因为工作的关系，经常要到凌晨才能下班回家。2017年9月底，萧姗跟以往一样，也是凌晨2点才下班。因为太晚，地铁、公交都停运了，回家路也很远，她就打开滴滴，准备叫车回家。发布行程后，很快就有司机接单了，大约过了10分钟，车子就来了。萧姗打开车门，直接坐进了副驾驶座位。</p>\n<p style=\"cursor: pointer;\"><br data-filtered=\"filtered\" style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"></p>\n<p style=\"margin-left: 8px; margin-right: 8px; cursor: pointer;\">一路上，张强看萧姗与自己年纪相仿，就开始有一句没一句的跟萧姗聊天，问了一些关于年纪、家乡之类的问题。</p>\n<p style=\"cursor: pointer;\"><br data-filtered=\"filtered\" style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"></p>\n<p style=\"margin-left: 8px; margin-right: 8px; cursor: pointer;\">在离目的地还有两三公里的时候，张强觉得与萧姗聊得挺投缘，就提议让萧姗提前确认订单，把车费付掉。萧姗想着这样可以省一些，就按照张强说的提前结算了。</p>\n<p style=\"cursor: pointer;\"><br data-filtered=\"filtered\" style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"></p>\n<p style=\"margin-left: 8px; margin-right: 8px; cursor: pointer;\">凌晨2点30分左右，张强将萧姗送到目的地，车子停稳，萧姗正要转身开门下车，张强的手从后面伸过来，勾住了萧姗的脖子。一阵惊慌后，萧姗想回头问张强为什么要这样，还没来得及说话，张强就亲了上来。除此之外，张强还隔着衣服对萧姗上下乱摸。此时，萧姗用双手护住身体，并用力挣扎反抗，但被张强用右手紧紧扣住了手腕。</p>\n<p style=\"cursor: pointer;\"><br data-filtered=\"filtered\" style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"></p>\n<p style=\"margin-left: 8px; margin-right: 8px; cursor: pointer;\">几番挣扎后，萧姗找到空档立马打开车窗，并朝窗外大喊救命，张强将窗户关上，用手臂勒住萧姗的脖子防止她继续喊叫，并不停亲吻她。</p>\n<p style=\"cursor: pointer;\"><br data-filtered=\"filtered\" style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"></p>\n<p style=\"margin-left: 8px; margin-right: 8px; cursor: pointer;\">由于脖子被勒住，又在不停地反抗，萧姗感觉喘不上气儿来，就跟张强说自己快喘不出气儿了。至此，张强才将手臂从萧姗的脖颈处挪开，但还是紧紧地抓着萧姗不让其下车。</p>\n<p style=\"cursor: pointer;\"><br data-filtered=\"filtered\" style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"></p>\n<p style=\"margin-left: 8px; margin-right: 8px; cursor: pointer;\">在反抗并僵持的几分钟里，萧姗一挣脱就立即打开车窗对外呼救。几次呼喊引起了小区保安的注意。这名保安站在小区口，看到萧姗所在的车子内有人影在晃动，就向车子这边走了过来。</p>\n<p style=\"cursor: pointer;\"><br data-filtered=\"filtered\" style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"></p>\n<p style=\"margin-left: 8px; margin-right: 8px; cursor: pointer;\">此时，萧姗发现张强也注意到有人走过来了，他已经停止了对自己的亲吻和抚摸。趁这个机会，萧姗马上打开车门并下车。站定后，萧姗隔着车窗对张强说自己一定会报警，随后径直走向了保安亭。在向保安说明自己刚才的经历后，萧姗决定报警。</p>\n<p style=\"cursor: pointer;\"><br data-filtered=\"filtered\" style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"></p>\n<p style=\"margin-left: 8px; margin-right: 8px; cursor: pointer;\">当天凌晨3点多，萧姗就被民警带到派出所做笔录。其间，张强发短信对萧姗说，他没有对她实施强奸，警察是不会立案的，对刚才的行为，他还是要跟她说声对不起。凌晨5点多时，张强又给萧姗打电话请求她的原谅，并说萧姗只要肯原谅他，可以向其提任何条件。萧姗则表示公安已立案，就没有再理睬他，决心要维护自己的权益。</p>\n<p style=\"cursor: pointer;\"><br data-filtered=\"filtered\" style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"></p>\n<p style=\"margin-left: 8px; margin-right: 8px; cursor: pointer;\">张强到案后表示，当时一时冲动才对萧姗做出那样的事情。事后也表示非常害怕，请求原谅不得后，就自己到派出所自首了。</p>\n<p style=\"cursor: pointer;\"><br data-filtered=\"filtered\" style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"></p>\n<p style=\"margin-left: 8px; margin-right: 8px; cursor: pointer;\">之后，上海市闵行区人民检察院以涉嫌强制猥亵罪对犯罪嫌疑人张强提起公诉。日前，上海市闵行区人民法院以强制猥亵罪判处张强拘役四个月。</p>\n<p style=\"cursor: pointer;\"><br data-filtered=\"filtered\" style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"></p>\n\n<p style=\"cursor: pointer;\"><br></p>\n\n\n\n<p style=\"white-space: normal; margin-left: 8px; margin-right: 8px; cursor: pointer;\"><span style=\"color: rgb(127, 127, 127); font-size: 14px; cursor: pointer;\"><span style=\"background-color: rgb(255, 255, 255); cursor: pointer;\"><span style=\"line-height: 25.6px; cursor: pointer;\"><br></span></span></span></p>\n<section class=\"yead_editor\" label=\"Copyright © 2015 Yead All Rights Reserved.\" style=\"white-space: normal;\"></section><section label=\"Copyright © 2015 Yead All Rights Reserved.\" style=\"white-space: normal;\"><p style=\"cursor: pointer;\"><strong><strong><span style=\"color: rgb(217, 33, 66); cursor: pointer;\"><br></span></strong></strong></p>\n</section>\n			', 'upload/20180518/1526627448212.jpg', '', '', 'http://tui.lvjiachuantiegao.com/', 'yunniupin', 44628, 0, '2018-05-18', '', '', 7, '', 1, 'upload/20180518/1526627457680.jpg', '<a class=\"media_tool_meta meta_primary\" id=\"js_view_source\" href=\"##\">阅读原文</a>\r\n                                <span style=\"display:none;\" class=\"media_tool_meta meta_primary tips_global meta_praise\" id=\"like3\">\r\n                    <i class=\"icon_praise_gray\"></i><span class=\"praise_num\" id=\"likeNum3\"></span>\r\n                </span>\r\n                <div id=\"js_read_area3\" class=\"media_tool_meta tips_global meta_primary\" style=\"display:none;\">阅读 <span id=\"readNum3\"></span>\n</div>\r\n\r\n                <a id=\"js_report_article3\" style=\"display:none;\" class=\"media_tool_meta tips_global meta_extra\" href=\"##\">投诉</a>', '1526627573912', 'admin', 'image_proxy.php?1=1&siteid=1&url=http://mmbiz.qpic.cn/mmbiz_jpg/3OEpTPib0kVicJRNQs5pTib9YCmbcvS95fBFCbeyqxzdL69H1Lzgfz8eO6eARM1UHmjicXcczpfibxf2xP6c7Y5o2Ew/0?wx_fmt=jpeg', '一样是凌晨，一样是独行女子，一样被滴滴司机伤害……空姐夜乘滴滴被司机杀害的新闻近日引起关注。5月17日，澎湃', 0, 1100, 56, 0, '', 0, '5', 'https://mp.weixin.qq.com/s?src=11&timestamp=1526626801&ver=883&signature=PqNiiO9H2nVDeAT*vOfGMhUzOWM*5ZZ8Ep6oZYWVfMZU**LxXfaKCqphB2M5qrX*HMDTIZbIw1tTMZZgcPt4470W2n6UdJH6Wf8Qm2GSvIDobF*asdaNcyVWAiB68fBj&new=1', 0, 0, 9123);
INSERT INTO `tbl_info` (`id`, `title`, `content`, `adpic`, `adpic_one`, `adpic_two`, `adlink`, `userid`, `wcount`, `acount`, `addtime`, `telnum`, `qqnum`, `ifweizhi`, `gongzhonghao`, `ifPublicNumber`, `qrcode`, `ywyuedu`, `infoid`, `daili`, `share_pic`, `share_desc`, `is_quanping`, `adid`, `musicid`, `autoplay`, `gzurl`, `zhedie`, `qptime`, `url2`, `ispl`, `is_quanping2`, `zan`) VALUES
(5211, '平均气温未达标准，西安还未真正入秋！陕西这些景区票价降了', '<p style=\"margin-top: -1px;margin-right: 8px;margin-left: 8px;white-space: normal;max-width: 100%;min-height: 30px;letter-spacing: 0.544px;font-size: 15px;border-radius: 3px;height: 30px;text-align: center;color: rgb(255, 255, 255);font-family: 宋体;visibility: visible;box-shadow: rgba(0, 0, 0, 0.14902) 1px 1px 3px;background-color: rgb(0, 112, 192);line-height: 2em;box-sizing: border-box !important;word-wrap: break-word !important;overflow-wrap: break-word !important;\"><span style=\"max-width: 100%;letter-spacing: 2px;box-sizing: border-box !important;word-wrap: break-word !important;overflow-wrap: break-word !important;\"><span style=\"max-width: 100%;font-weight: bold;\">点击上方</span><span style=\"max-width: 100%;font-weight: bold;color: rgb(115, 252, 214);\">“华商报”</span><span style=\"max-width: 100%;font-weight: bold;\">可快速关注哦！</span></span></p>\n<p style=\"line-height: 2em;\"><span style=\"font-size: 15px;letter-spacing: 2px;\">       </span><span style=\"letter-spacing: 2px;font-size: 15px;\">白露过后，早晚凉意更加明显了，一年中难得的不冷不热的这段时间，大家好好享受吧。</span></p>\n<p style=\"text-align: center;\"><img class=\"\" data-copyright=\"0\" data-ratio=\"0.6712962962962963\" data-s=\"300,640\" src=\"image_proxy.php?1=1&amp;siteid=1&amp;url=https://mmbiz.qpic.cn/mmbiz_png/Jyco923vDiagQ0AKf25OfLD3nkaB0e0jQsVEaCpXoTZa2PIicfNJLibsjCpAXxTOcQ6GQ6EL6u0OxJx6ldgYAlNMQ/640?wx_fmt=png\" data-type=\"png\" data-w=\"648\" style=\"\"></p>\n<p style=\"line-height: 2em;\"><span style=\"letter-spacing: 2px;font-size: 15px;\">　　 昨天全省秋高气爽，早晨凉爽，中午稍有热意。虽说最近凉快了不少，但是以连续5天平均气温低于22℃的标准来衡量，西安还未进入气象意义上的秋天。受西风槽影响，预计13日全省有一次分散性小到中雨天气过程。今天到12日，全省以多云间阴天为主，陕北部分地区有小雨或阵雨。西安未来3天以多云天气为主。</span></p>\n<p><br></p>\n<p style=\"line-height: 2em;\"><span style=\"letter-spacing: 2px;font-size: 15px;\">　　 白露之后，昼夜温差加大，提醒大家根据季节变化及时调节，做好自我防护和保健，预防旧病复发和新病发生。</span></p>\n<section><section class=\"\" powered-by=\"xiumi.us\"><section><section><section><section class=\"\" powered-by=\"xiumi.us\"><section><section><p style=\'margin-right: 8px;margin-left: 8px;max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;white-space: normal;widows: 1;line-height: 1.75em;text-align: center;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><br></p>\n<p style=\'margin-right: 8px;margin-left: 8px;max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;line-height: 27.2px;white-space: normal;widows: 1;text-align: center;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><span style=\"color: rgb(104, 131, 139);\"><strong><span style=\"font-size: 15px;\">再过十几天，</span></strong></span></p>\n<p style=\'margin-right: 8px;margin-left: 8px;max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;line-height: 27.2px;white-space: normal;widows: 1;text-align: center;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><span style=\"color: rgb(104, 131, 139);\"><strong><span style=\"color: rgb(104, 131, 139);font-size: 15px;\">就到了中秋节，</span></strong></span></p>\n<p style=\'margin-right: 8px;margin-left: 8px;max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;line-height: 27.2px;white-space: normal;widows: 1;text-align: center;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><span style=\"color: rgb(104, 131, 139);\"><strong><span style=\"color: rgb(104, 131, 139);font-size: 15px;\">你是不是有出门旅游的打算了？</span></strong></span></p>\n<p style=\'margin-right: 8px;margin-left: 8px;max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;line-height: 27.2px;white-space: normal;widows: 1;text-align: center;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><span style=\"color: rgb(104, 131, 139);\"><strong><span style=\"color: rgb(104, 131, 139);font-size: 15px;\">9月份，</span></strong></span></p>\n<p style=\'margin-right: 8px;margin-left: 8px;max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;line-height: 27.2px;white-space: normal;widows: 1;text-align: center;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><span style=\"color: rgb(104, 131, 139);\"><strong><span style=\"color: rgb(104, 131, 139);font-size: 15px;\">陕西也有一批景区要降价！</span></strong></span></p>\n<p style=\'margin-right: 8px;margin-left: 8px;max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;line-height: 27.2px;white-space: normal;widows: 1;text-align: center;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"></p>\n<section style=\'max-width: 100%;box-sizing: border-box;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;line-height: 27.2px;text-align: justify;white-space: normal;widows: 1;background-color: rgb(255, 255, 255);word-wrap: break-word !important;\'><section class=\"\" powered-by=\"xiumi.us\" style=\"max-width: 100%;box-sizing: border-box;word-wrap: break-word !important;\"><section style=\"margin-top: 10px;margin-bottom: 10px;max-width: 100%;box-sizing: border-box;text-align: center;transform: translate3d(2px, 0px, 0px);word-wrap: break-word !important;\"><section style=\"max-width: 100%;box-sizing: border-box;display: inline-block;min-width: 10%;vertical-align: top;background-color: rgb(75, 87, 225);word-wrap: break-word !important;\"><section class=\"\" powered-by=\"xiumi.us\" style=\"max-width: 100%;box-sizing: border-box;word-wrap: break-word !important;\"><section style=\"margin-top: 5px;margin-bottom: -5px;max-width: 100%;box-sizing: border-box;transform: translate3d(-5px, 0px, 0px);word-wrap: break-word !important;\"><section style=\"padding-right: 8px;padding-left: 8px;max-width: 100%;box-sizing: border-box;display: inline-block;min-width: 10%;vertical-align: top;border-style: solid;border-width: 8px 1px 1px;border-radius: 0px;border-color: rgb(62, 62, 62);background-color: rgb(255, 255, 255);word-wrap: break-word !important;\"><section class=\"\" powered-by=\"xiumi.us\" style=\"max-width: 100%;box-sizing: border-box;word-wrap: break-word !important;\"><section style=\"max-width: 100%;box-sizing: border-box;word-wrap: break-word !important;\"><section style=\"padding-right: 8px;padding-left: 8px;max-width: 100%;box-sizing: border-box;text-align: left;word-wrap: break-word !important;\"><p style=\"max-width: 100%;box-sizing: border-box;min-height: 1em;word-wrap: break-word !important;\"><em style=\"max-width: 100%;box-sizing: border-box;word-wrap: break-word !important;\"><strong style=\"max-width: 100%;box-sizing: border-box;word-wrap: break-word !important;\">放假安排</strong></em></p></section></section></section></section></section></section></section></section></section></section><section style=\'max-width: 100%;box-sizing: border-box;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;line-height: 27.2px;text-align: justify;white-space: normal;widows: 1;background-color: rgb(255, 255, 255);word-wrap: break-word !important;\'><section class=\"\" powered-by=\"xiumi.us\" style=\"max-width: 100%;box-sizing: border-box;word-wrap: break-word !important;\"><section style=\"margin-top: 10px;margin-bottom: 10px;max-width: 100%;box-sizing: border-box;text-align: center;word-wrap: break-word !important;\"><section style=\"max-width: 100%;box-sizing: border-box;display: inline-block;vertical-align: top;word-wrap: break-word !important;\"><section style=\"max-width: 100%;box-sizing: border-box;width: 43px;word-wrap: break-word !important;\"><section style=\"margin-bottom: -6px;margin-left: 3px;max-width: 100%;box-sizing: border-box;width: 40px;height: 1px;background-color: rgb(114, 114, 114);word-wrap: break-word !important;\"></section></section></section></section></section></section><section data-role=\"outer\" label=\"Powered by 135editor.com\" style=\'max-width: 100%;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;line-height: 27.2px;text-align: justify;white-space: normal;widows: 1;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><section data-role=\"outer\" label=\"Powered by 135editor.com\" style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"><section class=\"\" data-tools=\"135编辑器\" data-id=\"92365\" style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"><section class=\"\" style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"><section style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"><section style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"><section style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"><section style=\"max-width: 100%;box-sizing: border-box;word-wrap: break-word !important;\"><section class=\"\" powered-by=\"xiumi.us\" style=\"max-width: 100%;box-sizing: border-box;word-wrap: break-word !important;\"><section style=\"max-width: 100%;box-sizing: border-box;text-align: center;word-wrap: break-word !important;\"><section style=\"margin-left: auto;max-width: 100%;box-sizing: border-box;width: 2.25em;height: 2.25em;border-top: 5px solid rgb(94, 189, 255);border-right: 5px solid rgb(94, 189, 255);transform: rotate(0deg);word-wrap: break-word !important;\"></section><section style=\"margin-top: -2.25em;max-width: 100%;box-sizing: border-box;word-wrap: break-word !important;\"><section style=\"padding: 10px;max-width: 100%;box-sizing: border-box;background-color: rgba(250, 250, 250, 0.89);word-wrap: break-word !important;\"><section class=\"\" powered-by=\"xiumi.us\" style=\"max-width: 100%;box-sizing: border-box;word-wrap: break-word !important;\"><section style=\"max-width: 100%;box-sizing: border-box;word-wrap: break-word !important;\"><section style=\"padding: 10px;max-width: 100%;box-sizing: border-box;text-align: left;font-size: 15px;word-wrap: break-word !important;\"><p style=\"margin-right: 8px;margin-left: 8px;max-width: 100%;min-height: 1em;box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"__bg_gif \" data-copyright=\"0\" data-ratio=\"1.40625\" data-type=\"gif\" data-w=\"640\" src=\"image_proxy.php?1=1&amp;siteid=1&amp;url=https://mmbiz.qpic.cn/mmbiz_gif/JV6iarzXab8sjzEBKXn1kGS4WBabjcPwu8dHicgEscBGOCibRUdLAXJUFDWuiaUO9IA5vV1QDF64fdgjkPvN0ACQPA/640?wx_fmt=gif\" style=\"border-width: 1px;border-style: solid;border-color: rgb(238, 237, 235);background-color: rgb(238, 237, 235);background-size: 22px;background-position: 50% 50%;background-repeat: no-repeat;box-sizing: border-box !important;word-wrap: break-word !important;width: 545px !important;visibility: visible !important;\"></p>\n<p style=\"max-width: 100%;box-sizing: border-box;min-height: 1em;word-wrap: break-word !important;\"><strong style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;color: rgb(62, 62, 62);font-size: 14px;letter-spacing: 1px;box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"></span></strong></p>\n<p style=\"max-width: 100%;box-sizing: border-box;min-height: 1em;word-wrap: break-word !important;\"><strong style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;color: rgb(62, 62, 62);font-size: 14px;letter-spacing: 1px;box-sizing: border-box !important;word-wrap: break-word !important;\">放假安排</span></strong><span style=\"max-width: 100%;color: rgb(62, 62, 62);font-size: 14px;letter-spacing: 1px;box-sizing: border-box !important;word-wrap: break-word !important;\">：9月22日—24日放假，其中，9月22、23日为周末，9月24日（星期一）补休。<br style=\"max-width: 100%;box-sizing: border-box;word-wrap: break-word !important;\"></span></p>\n<p style=\"max-width: 100%;box-sizing: border-box;min-height: 1em;word-wrap: break-word !important;\"><strong style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;color: rgb(62, 62, 62);font-size: 14px;letter-spacing: 1px;box-sizing: border-box !important;word-wrap: break-word !important;\">高速</span></strong><span style=\"max-width: 100%;color: rgb(62, 62, 62);font-size: 14px;letter-spacing: 1px;box-sizing: border-box !important;word-wrap: break-word !important;\">：今年中秋假期，高速公路</span><strong style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;font-size: 14px;letter-spacing: 1px;color: rgb(255, 41, 65);box-sizing: border-box !important;word-wrap: break-word !important;\">不免费</span></strong><span style=\"max-width: 100%;color: rgb(62, 62, 62);font-size: 14px;letter-spacing: 1px;box-sizing: border-box !important;word-wrap: break-word !important;\">。</span></p></section></section></section></section></section></section></section></section></section></section></section></section></section></section></section><section style=\'max-width: 100%;box-sizing: border-box;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;line-height: 27.2px;text-align: justify;white-space: normal;widows: 1;background-color: rgb(255, 255, 255);word-wrap: break-word !important;\'><section class=\"\" powered-by=\"xiumi.us\" style=\"max-width: 100%;box-sizing: border-box;word-wrap: break-word !important;\"><section style=\"max-width: 100%;box-sizing: border-box;text-align: center;word-wrap: break-word !important;\"><section style=\"margin-left: auto;max-width: 100%;box-sizing: border-box;width: 2.25em;height: 2.25em;border-top: 5px solid rgb(94, 189, 255);border-right: 5px solid rgb(94, 189, 255);transform: rotate(0deg);word-wrap: break-word !important;\"></section><section style=\"margin-top: -2.25em;max-width: 100%;box-sizing: border-box;word-wrap: break-word !important;\"><section style=\"padding: 10px;max-width: 100%;box-sizing: border-box;background-color: rgba(250, 250, 250, 0.89);word-wrap: break-word !important;\"><section class=\"\" powered-by=\"xiumi.us\" style=\"max-width: 100%;box-sizing: border-box;word-wrap: break-word !important;\"><section style=\"max-width: 100%;box-sizing: border-box;word-wrap: break-word !important;\"><section style=\"padding: 10px;max-width: 100%;box-sizing: border-box;text-align: left;font-size: 15px;word-wrap: break-word !important;\"><p style=\"margin-right: 8px;margin-left: 8px;max-width: 100%;min-height: 1em;box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"\" data-copyright=\"0\" data-ratio=\"1.6014492753623188\" data-s=\"300,640\" data-type=\"png\" data-w=\"552\" src=\"image_proxy.php?1=1&amp;siteid=1&amp;url=https://mmbiz.qpic.cn/mmbiz_png/JV6iarzXab8sjzEBKXn1kGS4WBabjcPwuOuRFeqoZhrmV7HmCgSfttRbnYukzg1vq0QZUXjKiaH9emfbP9Taleaw/640?wx_fmt=png\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;width: 552px !important;visibility: visible !important;\"></p>\n<p style=\"max-width: 100%;box-sizing: border-box;min-height: 1em;word-wrap: break-word !important;\"><strong style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;color: rgb(62, 62, 62);font-size: 14px;letter-spacing: 1px;box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"></span></strong></p>\n<p style=\"max-width: 100%;box-sizing: border-box;min-height: 1em;word-wrap: break-word !important;\"><strong style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;color: rgb(62, 62, 62);font-size: 14px;letter-spacing: 1px;box-sizing: border-box !important;word-wrap: break-word !important;\">放假安排</span></strong><span style=\"max-width: 100%;color: rgb(62, 62, 62);font-size: 14px;letter-spacing: 1px;box-sizing: border-box !important;word-wrap: break-word !important;\">：10月1日—7日放假，9月29、30日（星期六、日）上班。</span></p>\n<p style=\"max-width: 100%;box-sizing: border-box;min-height: 1em;word-wrap: break-word !important;\"><strong style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;color: rgb(62, 62, 62);font-size: 14px;letter-spacing: 1px;box-sizing: border-box !important;word-wrap: break-word !important;\">高速</span></strong><span style=\"max-width: 100%;color: rgb(62, 62, 62);font-size: 14px;letter-spacing: 1px;box-sizing: border-box !important;word-wrap: break-word !important;\">：2018国庆节期高速免费通行，通行时间：2018年10月1日0时—2018年10月7日24时。</span></p></section></section></section></section></section></section></section></section><section style=\'max-width: 100%;box-sizing: border-box;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;line-height: 27.2px;text-align: justify;white-space: normal;widows: 1;background-color: rgb(255, 255, 255);word-wrap: break-word !important;\'><section class=\"\" powered-by=\"xiumi.us\" style=\"max-width: 100%;box-sizing: border-box;word-wrap: break-word !important;\"><section style=\"margin-top: 10px;margin-bottom: 10px;max-width: 100%;box-sizing: border-box;text-align: center;transform: translate3d(2px, 0px, 0px);word-wrap: break-word !important;\"><section style=\"max-width: 100%;box-sizing: border-box;display: inline-block;min-width: 10%;vertical-align: top;background-color: rgb(75, 87, 225);word-wrap: break-word !important;\"><section class=\"\" powered-by=\"xiumi.us\" style=\"max-width: 100%;box-sizing: border-box;word-wrap: break-word !important;\"><section style=\"margin-top: 5px;margin-bottom: -5px;max-width: 100%;box-sizing: border-box;transform: translate3d(-5px, 0px, 0px);word-wrap: break-word !important;\"><section style=\"padding-right: 8px;padding-left: 8px;max-width: 100%;box-sizing: border-box;display: inline-block;min-width: 10%;vertical-align: top;border-style: solid;border-width: 8px 1px 1px;border-radius: 0px;border-color: rgb(62, 62, 62);background-color: rgb(255, 255, 255);word-wrap: break-word !important;\"><section class=\"\" powered-by=\"xiumi.us\" style=\"max-width: 100%;box-sizing: border-box;word-wrap: break-word !important;\"><section style=\"max-width: 100%;box-sizing: border-box;word-wrap: break-word !important;\"><section style=\"padding-right: 8px;padding-left: 8px;max-width: 100%;box-sizing: border-box;text-align: left;word-wrap: break-word !important;\"><p style=\"max-width: 100%;box-sizing: border-box;min-height: 1em;word-wrap: break-word !important;\"><em style=\"max-width: 100%;box-sizing: border-box;word-wrap: break-word !important;\"><strong style=\"max-width: 100%;box-sizing: border-box;word-wrap: break-word !important;\">景区降价</strong></em></p></section></section></section></section></section></section></section></section></section></section><p style=\'margin-right: 8px;margin-left: 8px;max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;text-align: justify;white-space: normal;widows: 1;line-height: 1.75em;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><span style=\"max-width: 100%;color: rgb(62, 62, 62);font-size: 14px;letter-spacing: 1px;box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"></span></p>\n<p style=\'margin-right: 8px;margin-left: 8px;max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;line-height: 27.2px;white-space: normal;widows: 1;text-align: center;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><img class=\"__bg_gif \" data-copyright=\"0\" data-ratio=\"0.55625\" data-type=\"gif\" data-w=\"320\" src=\"image_proxy.php?1=1&amp;siteid=1&amp;url=https://mmbiz.qpic.cn/mmbiz_gif/cYM5QXqM8P7wfCvf5f5YnZge2rdVMibICGojVI1P7n6Yicg47amvxR2sEJlDQiaYtHcFvN1dKkBhs64rFOkCiagTJg/640?wx_fmt=gif\" style=\"border-width: 1px;border-style: solid;border-color: rgb(238, 237, 235);background-color: rgb(238, 237, 235);background-size: 22px;background-position: 50% 50%;background-repeat: no-repeat;box-sizing: border-box !important;word-wrap: break-word !important;width: 320px !important;visibility: visible !important;\"></p>\n<p style=\'margin-right: 8px;margin-left: 8px;max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;text-align: justify;white-space: normal;widows: 1;line-height: 1.75em;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><span style=\"max-width: 100%;color: rgb(62, 62, 62);font-size: 14px;letter-spacing: 1px;box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"></span></p>\n<p style=\'margin-right: 8px;margin-left: 8px;max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;text-align: justify;white-space: normal;widows: 1;line-height: 1.75em;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><span style=\"max-width: 100%;color: rgb(62, 62, 62);font-size: 14px;letter-spacing: 1px;box-sizing: border-box !important;word-wrap: break-word !important;\">陕西省9月也将有一批重点国有景区将降价，拟降价的5A级景区有8个：</span><strong style=\"max-width: 100%;color: rgb(62, 62, 62);font-size: 14px;letter-spacing: 1px;box-sizing: border-box !important;word-wrap: break-word !important;\">延安黄帝陵景区、西安华清池景区、秦兵马俑博物馆、大雁塔·大唐芙蓉园景区、陕西渭南华山景区、宝鸡市法门寺景区、商洛市金丝峡景区、宝鸡市太白山景区。</strong><span style=\"max-width: 100%;color: rgb(62, 62, 62);font-size: 14px;letter-spacing: 1px;box-sizing: border-box !important;word-wrap: break-word !important;\">还有一部分景区已经发布官方降价通知！</span></p>\n<section data-role=\"outer\" label=\"Powered by 135editor.com\" style=\"max-width: 100%;color: rgb(51, 51, 51);font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;text-align: justify;white-space: normal;widows: 1;font-size: 16px;font-family: 微软雅黑;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><section data-role=\"outer\" label=\"Powered by 135editor.com\" style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"><section class=\"\" data-tools=\"135编辑器\" data-id=\"87417\" style=\"max-width: 100%;box-sizing: border-box;border-width: 0px;border-style: none;border-color: initial;word-wrap: break-word !important;\"><section style=\"max-width: 100%;text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><section style=\"max-width: 100%;display: inline-block;box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\" __bg_gif\" data-ratio=\"0.45454545454545453\" data-type=\"gif\" data-w=\"22\" title=\"动态黑色音符\" src=\"image_proxy.php?1=1&amp;siteid=1&amp;url=https://mmbiz.qpic.cn/mmbiz_gif/cYM5QXqM8P4OqiaRNCnrWLlJPXHWOvOnloAZJp3YvUaPrCof59wyugP3CNpxydh31MAgsWGZUKU7DDwjyHeo5Zw/640?wx_fmt=gif\" style=\"border-width: 0px;border-style: none;border-color: initial;height: 10px !important;box-sizing: border-box !important;word-wrap: break-word !important;width: 22px !important;\"></section></section><section style=\"max-width: 100%;text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><section style=\"max-width: 100%;display: inline-block;box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"></section></section><p style=\"max-width: 100%;min-height: 1em;box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"></p></section></section></section><section data-role=\"outer\" label=\"Powered by 135editor.com\" style=\"max-width: 100%;color: rgb(51, 51, 51);font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;text-align: justify;white-space: normal;widows: 1;font-size: 16px;font-family: 微软雅黑;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><section data-role=\"outer\" label=\"Powered by 135editor.com\" style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"><section class=\"\" data-tools=\"135编辑器\" data-id=\"93538\" data-color=\"#374aae\" data-custom=\"#374aae\" style=\"max-width: 100%;box-sizing: border-box;border-width: 0px;border-style: none;border-color: initial;word-wrap: break-word !important;\"><section style=\"margin-bottom: 5px;max-width: 100%;text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><section style=\"padding: 0.1em 1em 0.4em;max-width: 100%;box-sizing: border-box;border-width: 2px;border-style: solid;border-color: rgb(81, 81, 81);border-radius: 7px;color: rgb(63, 63, 63);text-align: justify;display: inline-block;letter-spacing: 1.5px;box-shadow: rgb(55, 74, 174) 3px 3px 1px 0px;word-wrap: break-word !important;\"><section style=\"margin-top: -4px;margin-left: 31.5px;max-width: 100%;width: 7px;height: 7px;border-right: 2px solid rgb(81, 81, 81);border-top-style: none;border-bottom: 2px solid rgb(81, 81, 81);border-left: 2px solid rgb(81, 81, 81);transform: rotate(0deg);background-image: initial;background-position: initial;background-size: initial;background-repeat: initial;background-attachment: initial;background-origin: initial;background-clip: initial;box-sizing: border-box !important;word-wrap: break-word !important;\"></section><section style=\"margin-top: -6.5px;margin-left: 3.5px;max-width: 100%;width: 7px;height: 7px;border-right: 2px solid rgb(81, 81, 81);border-top-style: none;border-bottom: 2px solid rgb(81, 81, 81);border-left: 2px solid rgb(81, 81, 81);transform: rotate(0deg);background-image: initial;background-position: initial;background-size: initial;background-repeat: initial;background-attachment: initial;background-origin: initial;background-clip: initial;box-sizing: border-box !important;word-wrap: break-word !important;\"></section><section class=\"\" data-brushtype=\"text\" style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"><p style=\"max-width: 100%;min-height: 1em;box-sizing: border-box !important;word-wrap: break-word !important;\"><strong style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\">西安</strong></p></section></section></section></section></section></section><p style=\'max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;white-space: normal;widows: 1;text-align: center;line-height: 1.75em;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><span style=\"max-width: 100%;color: rgb(255, 255, 255);background-color: rgb(0, 82, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><strong style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"><strong style=\"max-width: 100%;color: rgb(0, 82, 255);font-size: 14px;letter-spacing: 1px;text-indent: 34px;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;color: rgb(255, 255, 255);background-color: rgb(0, 82, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"></span></strong></strong></span></p>\n<p style=\'margin-right: 8px;margin-left: 8px;max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;line-height: 27.2px;white-space: normal;widows: 1;text-align: center;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><img class=\"\" data-croporisrc=\"https://mmbiz.qpic.cn/mmbiz_jpg/JV6iarzXab8sjzEBKXn1kGS4WBabjcPwuFiadSgWgdqoph3icX9NxWXoBVJ9UDyPWYTR2asjJD8IiawD8mJtdG6WHg/0?wx_fmt=jpeg\" data-cropx1=\"0\" data-cropx2=\"1280\" data-cropy1=\"0\" data-cropy2=\"775.3405017921148\" data-ratio=\"0.60546875\" data-s=\"300,640\" data-type=\"jpeg\" data-w=\"1280\" src=\"image_proxy.php?1=1&amp;siteid=1&amp;url=https://mmbiz.qpic.cn/mmbiz_jpg/JV6iarzXab8sjzEBKXn1kGS4WBabjcPwuAfNGFepn6yJibujdrfnYXvMFGEcOOzGXygDCmt95zkC8abmwic4RKqkw/640?wx_fmt=jpeg\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;width: 558px !important;visibility: visible !important;\"></p>\n<p style=\'margin-right: 8px;margin-bottom: 16px;margin-left: 8px;max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;text-align: justify;white-space: normal;widows: 1;line-height: 1.75em;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><span style=\"max-width: 100%;font-size: 14px;letter-spacing: 1px;color: rgb(0, 82, 255);box-sizing: border-box !important;word-wrap: break-word !important;\">▼太平森林公园</span><span style=\"max-width: 100%;font-size: 14px;letter-spacing: 1px;color: rgb(89, 89, 89);box-sizing: border-box !important;word-wrap: break-word !important;\">门票由旺季65元/人次降为60元/人次、淡季45元/人次降为40元/人次。新的门票价格自2018年9月1日起执行。</span></p>\n<p style=\'margin-right: 8px;margin-left: 8px;max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;line-height: 27.2px;white-space: normal;widows: 1;text-align: center;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><img class=\"\" data-copyright=\"0\" data-ratio=\"0.6666666666666666\" data-s=\"300,640\" data-type=\"jpeg\" data-w=\"600\" src=\"image_proxy.php?1=1&amp;siteid=1&amp;url=https://mmbiz.qpic.cn/mmbiz_jpg/JV6iarzXab8sjzEBKXn1kGS4WBabjcPwuqMvy2EzJaacseg7rRahxGoUcEkWRAtfQVsVOp06MF7xGicj1hJ9fGlw/640?wx_fmt=jpeg\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;width: 600px !important;visibility: visible !important;\"></p>\n<p style=\'margin-right: 8px;margin-bottom: 16px;margin-left: 8px;max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;text-align: justify;white-space: normal;widows: 1;line-height: 1.75em;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><span style=\"max-width: 100%;font-size: 14px;letter-spacing: 1px;color: rgb(0, 82, 255);box-sizing: border-box !important;word-wrap: break-word !important;\">▼朱雀森林公园</span><span style=\"max-width: 100%;font-size: 14px;letter-spacing: 1px;color: rgb(89, 89, 89);box-sizing: border-box !important;word-wrap: break-word !important;\">门票由旺季50元/人次降为45元/人次、淡季30元/人次降为25元/人次。新的门票价格自2018年9月1日起执行。</span></p>\n<p style=\'margin-right: 8px;margin-bottom: 16px;margin-left: 8px;max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;text-align: justify;white-space: normal;widows: 1;line-height: 1.75em;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><span style=\"max-width: 100%;font-size: 14px;letter-spacing: 1px;color: rgb(89, 89, 89);box-sizing: border-box !important;word-wrap: break-word !important;\"><img class=\"\" data-ratio=\"0.579175704989154\" data-s=\"300,640\" data-type=\"png\" data-w=\"461\" src=\"image_proxy.php?1=1&amp;siteid=1&amp;url=https://mmbiz.qpic.cn/mmbiz_png/Jyco923vDiaguic57RSbjZdXD03iamUUtdmef9KKBicmC8CIMh9iaMdOicITP1fmbWNfWz0xyuLJytz24KVz6NI9pNQg/640?wx_fmt=png\" style=\'color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;letter-spacing: 0.544px;text-align: center;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;width: 461px !important;visibility: visible !important;\'></span></p>\n<p style=\'margin-right: 8px;margin-bottom: 16px;margin-left: 8px;max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;text-align: justify;white-space: normal;widows: 1;line-height: 1.75em;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><span style=\"max-width: 100%;font-size: 14px;letter-spacing: 1px;color: rgb(0, 82, 255);box-sizing: border-box !important;word-wrap: break-word !important;\">▼西安钟楼、鼓楼</span><span style=\"max-width: 100%;font-size: 14px;letter-spacing: 1px;color: rgb(89, 89, 89);box-sizing: border-box !important;word-wrap: break-word !important;\">门票都由35元/人次降为30元/人次。<span style=\"max-width: 100%;\">新的门票价格自2018年9月1日起执行。</span></span></p>\n<p style=\'margin-right: 8px;margin-left: 8px;max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;line-height: 27.2px;white-space: normal;widows: 1;text-align: center;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><img class=\"\" data-copyright=\"0\" data-ratio=\"0.6173020527859238\" data-s=\"300,640\" data-type=\"jpeg\" data-w=\"682\" src=\"image_proxy.php?1=1&amp;siteid=1&amp;url=https://mmbiz.qpic.cn/mmbiz_jpg/JV6iarzXab8sjzEBKXn1kGS4WBabjcPwuTuCdzvklPTY6RHqTNmxhY61TnGaAOry6gEGEh0s0iaGVKB1sqmUSfSg/640?wx_fmt=jpeg\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;width: 601px !important;visibility: visible !important;\"></p>\n<p style=\'margin-right: 8px;margin-bottom: 16px;margin-left: 8px;max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;text-align: justify;white-space: normal;widows: 1;line-height: 1.75em;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><span style=\"max-width: 100%;font-size: 14px;letter-spacing: 1px;color: rgb(0, 82, 255);box-sizing: border-box !important;word-wrap: break-word !important;\">▼西安半坡博物馆</span><span style=\"max-width: 100%;font-size: 14px;letter-spacing: 1px;color: rgb(89, 89, 89);box-sizing: border-box !important;word-wrap: break-word !important;\">门票价格旺季由现行的65元/人次调整为55元/人次；淡季由现行的45元/人次调整为40元/人次。新的门票价格自9月15日起执行。</span></p>\n<p style=\'margin-right: 8px;margin-left: 8px;max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;line-height: 27.2px;white-space: normal;widows: 1;text-align: center;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><img class=\"\" data-copyright=\"0\" data-ratio=\"0.5764895330112721\" data-s=\"300,640\" data-type=\"jpeg\" data-w=\"621\" src=\"image_proxy.php?1=1&amp;siteid=1&amp;url=https://mmbiz.qpic.cn/mmbiz_jpg/JV6iarzXab8sjzEBKXn1kGS4WBabjcPwux1O8HFIQZWETyRIVtf0O93HSLw4PWle0OQFJEZQkdULUmSIUErJEIg/640?wx_fmt=jpeg\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;width: 601px !important;visibility: visible !important;\"></p>\n<p style=\'margin-right: 8px;margin-bottom: 16px;margin-left: 8px;max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;text-align: justify;white-space: normal;widows: 1;line-height: 1.75em;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><span style=\"max-width: 100%;font-size: 14px;letter-spacing: 1px;color: rgb(0, 82, 255);box-sizing: border-box !important;word-wrap: break-word !important;\">▼曲江寒窑遗址公园</span><span style=\"max-width: 100%;color: rgb(62, 62, 62);font-size: 14px;letter-spacing: 1px;box-sizing: border-box !important;word-wrap: break-word !important;\">门票价格由现行50元/人次调整为45元/人次。新的门票价格自9月15日起执行。</span></p>\n<section data-role=\"outer\" label=\"Powered by 135editor.com\" style=\"max-width: 100%;color: rgb(51, 51, 51);font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;text-align: justify;white-space: normal;widows: 1;font-size: 16px;font-family: 微软雅黑;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><section data-role=\"outer\" label=\"Powered by 135editor.com\" style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"><section class=\"\" data-tools=\"135编辑器\" data-id=\"93538\" data-color=\"#374aae\" data-custom=\"#374aae\" style=\"max-width: 100%;box-sizing: border-box;border-width: 0px;border-style: none;border-color: initial;word-wrap: break-word !important;\"><section style=\"margin-bottom: 5px;max-width: 100%;text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><section style=\"padding: 0.1em 1em 0.4em;max-width: 100%;box-sizing: border-box;border-width: 2px;border-style: solid;border-color: rgb(81, 81, 81);border-radius: 7px;color: rgb(63, 63, 63);text-align: justify;display: inline-block;letter-spacing: 1.5px;box-shadow: rgb(55, 74, 174) 3px 3px 1px 0px;word-wrap: break-word !important;\"><section style=\"margin-top: -4px;margin-left: 31.4931px;max-width: 100%;width: 7px;height: 7px;border-right: 2px solid rgb(81, 81, 81);border-top-style: none;border-bottom: 2px solid rgb(81, 81, 81);border-left: 2px solid rgb(81, 81, 81);transform: rotate(0deg);background-image: initial;background-position: initial;background-size: initial;background-repeat: initial;background-attachment: initial;background-origin: initial;background-clip: initial;box-sizing: border-box !important;word-wrap: break-word !important;\"></section><section style=\"margin-top: -6.5px;margin-left: 3.48958px;max-width: 100%;width: 7px;height: 7px;border-right: 2px solid rgb(81, 81, 81);border-top-style: none;border-bottom: 2px solid rgb(81, 81, 81);border-left: 2px solid rgb(81, 81, 81);transform: rotate(0deg);background-image: initial;background-position: initial;background-size: initial;background-repeat: initial;background-attachment: initial;background-origin: initial;background-clip: initial;box-sizing: border-box !important;word-wrap: break-word !important;\"></section><section class=\"\" data-brushtype=\"text\" style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"><p style=\"max-width: 100%;min-height: 1em;box-sizing: border-box !important;word-wrap: break-word !important;\"><strong style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\">延安</strong></p></section></section></section></section></section></section><p style=\'max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;white-space: normal;widows: 1;text-align: center;line-height: 1.75em;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><span style=\"max-width: 100%;color: rgb(255, 255, 255);background-color: rgb(0, 82, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><strong style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"><strong style=\"max-width: 100%;color: rgb(0, 82, 255);font-size: 14px;letter-spacing: 1px;text-indent: 34px;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;color: rgb(255, 255, 255);background-color: rgb(0, 82, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"></span></strong></strong></span></p>\n<p style=\'max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;line-height: 27.2px;white-space: normal;widows: 1;text-align: center;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><img class=\"\" data-ratio=\"0.5752380952380952\" data-s=\"300,640\" data-type=\"png\" data-w=\"525\" src=\"image_proxy.php?1=1&amp;siteid=1&amp;url=https://mmbiz.qpic.cn/mmbiz_png/Jyco923vDiaguic57RSbjZdXD03iamUUtdmEibV0FwuiclBCh9CklMkicicRCibd4bBWphBkKDCF6BepHQQA4qIZ04zUHA/640?wx_fmt=png\" style=\'color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;letter-spacing: 0.544px;text-align: center;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;width: 525px !important;visibility: visible !important;\'></p>\n<p style=\'margin-right: 8px;margin-bottom: 16px;margin-left: 8px;max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;text-align: justify;white-space: normal;widows: 1;line-height: 1.75em;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><span style=\"max-width: 100%;font-size: 14px;letter-spacing: 1px;color: rgb(0, 82, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;\">▼</span>宝塔山景区</span><span style=\"max-width: 100%;letter-spacing: 1px;font-size: 14px;color: rgb(89, 89, 89);box-sizing: border-box !important;word-wrap: break-word !important;\">门票价格由现行65元/人次降为60元/人次；<span style=\"max-width: 100%;\">新的门票价格自2018年9月1日起执行。</span></span><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"></p>\n<p style=\'max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;line-height: 27.2px;white-space: normal;widows: 1;text-align: center;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><img class=\"\" data-copyright=\"0\" data-ratio=\"0.6666666666666666\" data-s=\"300,640\" data-type=\"jpeg\" data-w=\"600\" src=\"image_proxy.php?1=1&amp;siteid=1&amp;url=https://mmbiz.qpic.cn/mmbiz_jpg/cYM5QXqM8P4OqiaRNCnrWLlJPXHWOvOnlqXUybgM8lv3TUuliaR9qBRpU3icDnTnOor31VTbsf0tjXwiaKHkJP9LCQ/640?wx_fmt=jpeg\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;width: 600px !important;visibility: visible !important;\"></p>\n<p style=\'max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;line-height: 27.2px;white-space: normal;widows: 1;text-align: right;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><span style=\"max-width: 100%;color: rgb(178, 178, 178);letter-spacing: 0.5px;font-size: 12px;box-sizing: border-box !important;word-wrap: break-word !important;\">摄影@一览众山小</span><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"></p>\n<p style=\'margin-right: 8px;margin-bottom: 16px;margin-left: 8px;max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;text-align: justify;white-space: normal;widows: 1;line-height: 1.75em;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><span style=\"max-width: 100%;font-size: 14px;letter-spacing: 1px;color: rgb(0, 82, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;\">▼延安</span>清凉山景区</span><span style=\"max-width: 100%;letter-spacing: 1px;font-size: 14px;color: rgb(89, 89, 89);box-sizing: border-box !important;word-wrap: break-word !important;\">门票价格由现行45元/人次降为40元/人次；<span style=\"max-width: 100%;\">新的门票价格自2018年9月1日起执行。</span></span><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"></p>\n<p style=\'max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;line-height: 27.2px;white-space: normal;widows: 1;text-align: center;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><img class=\"\" data-ratio=\"0.7927461139896373\" data-s=\"300,640\" data-type=\"png\" data-w=\"386\" src=\"image_proxy.php?1=1&amp;siteid=1&amp;url=https://mmbiz.qpic.cn/mmbiz_png/Jyco923vDiaguic57RSbjZdXD03iamUUtdme6UcQlHh60Xia9IKDs8RGTulBkWf1zv8CQ2YqV08xQCA6xVW9xWeygg/640?wx_fmt=png\" style=\'color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;letter-spacing: 0.544px;text-align: center;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;width: 386px !important;visibility: visible !important;\'></p>\n<p style=\'margin-right: 8px;margin-bottom: 16px;margin-left: 8px;max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;text-align: justify;white-space: normal;widows: 1;line-height: 1.75em;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><span style=\"max-width: 100%;font-size: 14px;letter-spacing: 1px;color: rgb(0, 82, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;\">▼</span>万花山景区</span><span style=\"max-width: 100%;letter-spacing: 1px;font-size: 14px;color: rgb(89, 89, 89);box-sizing: border-box !important;word-wrap: break-word !important;\">门票价格由现行35元/人次降为30元/人次，<span style=\"max-width: 100%;\">新的门票价格自2018年9月1日起执行。</span></span></p>\n<p style=\'max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;line-height: 27.2px;white-space: normal;widows: 1;text-align: center;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><img class=\"\" data-ratio=\"0.6393088552915767\" data-s=\"300,640\" data-type=\"png\" data-w=\"463\" src=\"image_proxy.php?1=1&amp;siteid=1&amp;url=https://mmbiz.qpic.cn/mmbiz_png/Jyco923vDiaguic57RSbjZdXD03iamUUtdmPMMeQhibaaCYoZZnNeIqOGNTgdOzdQyblRLUQDYsIWiaYngaISkP5h9A/640?wx_fmt=png\" style=\'color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;letter-spacing: 0.544px;text-align: center;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;width: 463px !important;visibility: visible !important;\'></p>\n<p style=\'margin-right: 8px;margin-bottom: 16px;margin-left: 8px;max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;text-align: justify;white-space: normal;widows: 1;line-height: 1.75em;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><span style=\"max-width: 100%;font-size: 14px;letter-spacing: 1px;color: rgb(0, 82, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;\">▼延安</span>杜公祠景区</span><span style=\"max-width: 100%;letter-spacing: 1px;font-size: 14px;color: rgb(89, 89, 89);box-sizing: border-box !important;word-wrap: break-word !important;\">门票价格由现行30元/人次降为10元/人次；</span><span style=\"max-width: 100%;color: rgb(89, 89, 89);font-size: 14px;letter-spacing: 1px;box-sizing: border-box !important;word-wrap: break-word !important;\">新的门票价格自2018年9月1日起执行。</span><span style=\"max-width: 100%;color: rgb(62, 62, 62);font-size: 14px;letter-spacing: 1px;box-sizing: border-box !important;word-wrap: break-word !important;\"></span><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"></p>\n<p style=\'max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;line-height: 27.2px;white-space: normal;widows: 1;text-align: center;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><img class=\"\" data-ratio=\"0.6661490683229814\" data-s=\"300,640\" data-type=\"png\" data-w=\"644\" src=\"image_proxy.php?1=1&amp;siteid=1&amp;url=https://mmbiz.qpic.cn/mmbiz_png/Jyco923vDiaguic57RSbjZdXD03iamUUtdmicLjMsBgcB4KOUbjLZkT70japSxZgLpCGvH5KlianIqe5EA8sCpyFJ8g/640?wx_fmt=png\" style=\'color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;letter-spacing: 0.544px;text-align: center;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;width: 644px !important;visibility: visible !important;\'></p>\n<p style=\'margin-right: 8px;margin-bottom: 16px;margin-left: 8px;max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;text-align: justify;white-space: normal;widows: 1;line-height: 1.75em;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><span style=\"max-width: 100%;font-size: 14px;letter-spacing: 1px;color: rgb(0, 82, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;\">▼</span>黄河壶口风景名胜区</span><span style=\"max-width: 100%;letter-spacing: 1px;font-size: 14px;color: rgb(89, 89, 89);box-sizing: border-box !important;word-wrap: break-word !important;\">景区门票价格由现行旺季120元/人次降为100元/人次，取消淡旺季价格，<span style=\"max-width: 100%;\">新的门票价格自2018年9月1日起执行。</span></span><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"></p>\n<p style=\'max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;line-height: 27.2px;white-space: normal;widows: 1;text-align: center;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><img class=\"\" data-ratio=\"0.6486486486486487\" data-s=\"300,640\" data-type=\"png\" data-w=\"444\" src=\"image_proxy.php?1=1&amp;siteid=1&amp;url=https://mmbiz.qpic.cn/mmbiz_png/Jyco923vDiaguic57RSbjZdXD03iamUUtdmtdxNTnwLmPatD9Gm0YWrKgDZPDAZWjXr3JfWIA7XheHkHStZLtibT5g/640?wx_fmt=png\" style=\'color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;letter-spacing: 0.544px;text-align: center;white-space: normal;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;width: 444px !important;visibility: visible !important;\'></p>\n<p style=\'margin-right: 8px;margin-bottom: 16px;margin-left: 8px;max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;text-align: justify;white-space: normal;widows: 1;line-height: 1.75em;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><span style=\"max-width: 100%;font-size: 14px;letter-spacing: 1px;color: rgb(0, 82, 255);box-sizing: border-box !important;word-wrap: break-word !important;\"><span style=\"max-width: 100%;\">▼</span>志丹县九吾山景区</span><span style=\"max-width: 100%;letter-spacing: 1px;font-size: 14px;color: rgb(89, 89, 89);box-sizing: border-box !important;word-wrap: break-word !important;\">旺季门票价格由75元/人次降为60元/人次，淡季门票价格由50元/人次降为40元/人次。<span style=\"max-width: 100%;\">新的门票价格自2018年9月1日起执行。</span></span></p>\n<p style=\'margin-right: 8px;margin-left: 8px;max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;line-height: 27.2px;white-space: normal;widows: 1;text-align: center;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><img class=\"__bg_gif \" data-copyright=\"0\" data-ratio=\"0.6609375\" data-type=\"gif\" data-w=\"640\" src=\"image_proxy.php?1=1&amp;siteid=1&amp;url=https://mmbiz.qpic.cn/mmbiz_gif/cYM5QXqM8P7wfCvf5f5YnZge2rdVMibICG1fhHw7mUCiaM87sFor2YreGN44NaIIKc8c5TXgVSmHjS2okDPB5hOQ/640?wx_fmt=gif\" style=\"border-width: 1px;border-style: solid;border-color: rgb(238, 237, 235);background-color: rgb(238, 237, 235);background-size: 22px;background-position: 50% 50%;background-repeat: no-repeat;box-sizing: border-box !important;word-wrap: break-word !important;width: 585px !important;visibility: visible !important;\"></p>\n<p style=\'margin-right: 8px;margin-left: 8px;max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;line-height: 27.2px;white-space: normal;widows: 1;text-align: center;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"></p>\n<section class=\"\" data-tools=\"135编辑器\" data-id=\"93538\" data-color=\"#374aae\" data-custom=\"#374aae\" style=\"max-width: 100%;box-sizing: border-box;color: rgb(51, 51, 51);font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;text-align: justify;white-space: normal;widows: 1;font-family: 微软雅黑;font-size: 16px;border-width: 0px;border-style: none;border-color: initial;background-color: rgb(255, 255, 255);word-wrap: break-word !important;\"><section style=\"margin-bottom: 5px;max-width: 100%;text-align: center;box-sizing: border-box !important;word-wrap: break-word !important;\"><section style=\"padding: 0.1em 1em 0.4em;max-width: 100%;box-sizing: border-box;border-width: 2px;border-style: solid;border-color: rgb(81, 81, 81);border-radius: 7px;color: rgb(63, 63, 63);text-align: justify;display: inline-block;letter-spacing: 1.5px;box-shadow: rgb(55, 74, 174) 3px 3px 1px 0px;word-wrap: break-word !important;\"><section style=\"margin-top: -6.5px;margin-left: 3.48958px;max-width: 100%;width: 7px;height: 7px;border-right: 2px solid rgb(81, 81, 81);border-top-style: none;border-bottom: 2px solid rgb(81, 81, 81);border-left: 2px solid rgb(81, 81, 81);transform: rotate(0deg);background-image: initial;background-position: initial;background-size: initial;background-repeat: initial;background-attachment: initial;background-origin: initial;background-clip: initial;box-sizing: border-box !important;word-wrap: break-word !important;\"></section><section class=\"\" data-brushtype=\"text\" style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"><p style=\"max-width: 100%;min-height: 1em;box-sizing: border-box !important;word-wrap: break-word !important;\"><strong style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\">宝鸡</strong></p></section></section></section></section><p style=\'margin-right: 8px;margin-left: 8px;max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;white-space: normal;widows: 1;text-align: center;line-height: 1.75em;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><span style=\"max-width: 100%;color: rgb(62, 62, 62);font-size: 14px;letter-spacing: 1px;box-sizing: border-box !important;word-wrap: break-word !important;\"><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"></span></p>\n<p style=\'max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;line-height: 27.2px;white-space: normal;widows: 1;text-align: center;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><img class=\"\" data-croporisrc=\"https://mmbiz.qpic.cn/mmbiz_jpg/cYM5QXqM8P4OqiaRNCnrWLlJPXHWOvOnl3fd5klSyc3jez9PPiaCYtpUnYgssuxXL5SyEayefY5swrEwMvVXuxoA/0?wx_fmt=jpeg\" data-cropx1=\"0\" data-cropx2=\"1200\" data-cropy1=\"0\" data-cropy2=\"686.0215053763441\" data-ratio=\"0.5716666666666667\" data-s=\"300,640\" data-type=\"jpeg\" data-w=\"1200\" src=\"image_proxy.php?1=1&amp;siteid=1&amp;url=https://mmbiz.qpic.cn/mmbiz_jpg/cYM5QXqM8P4OqiaRNCnrWLlJPXHWOvOnljZrdnDUn1mGbYibxM9MH5hyeOZyEKIbrfwicNnXhOf0ws0icmdlK81HkQ/640?wx_fmt=jpeg\" style=\"box-sizing: border-box !important;word-wrap: break-word !important;width: 558px !important;visibility: visible !important;\"></p>\n<p style=\'max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;line-height: 27.2px;white-space: normal;widows: 1;text-align: right;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><span style=\"max-width: 100%;color: rgb(178, 178, 178);letter-spacing: 0.5px;font-size: 12px;box-sizing: border-box !important;word-wrap: break-word !important;\">摄影@摄图网</span></p>\n<p style=\'margin-right: 8px;margin-left: 8px;max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;white-space: normal;widows: 1;line-height: 1.75em;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><span style=\"max-width: 100%;color: rgb(0, 82, 255);font-size: 14px;letter-spacing: 1px;text-align: justify;box-sizing: border-box !important;word-wrap: break-word !important;\">▼太白山国家森林公园</span><span style=\"max-width: 100%;color: rgb(62, 62, 62);font-size: 14px;letter-spacing: 1px;box-sizing: border-box !important;word-wrap: break-word !important;\">自2018年9月下旬起，价格调整为：旺季90元，淡季54元。继续免费开放4A级景区金台观景区。</span><br style=\"max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;\"></p>\n<p><span style=\"max-width: 100%;color: rgb(62, 62, 62);font-size: 14px;letter-spacing: 1px;box-sizing: border-box !important;word-wrap: break-word !important;\"><br></span></p>\n<p style=\'margin-right: 8px;margin-left: 8px;max-width: 100%;min-height: 1em;color: rgb(51, 51, 51);font-family: -apple-system-font, BlinkMacSystemFont, \"Helvetica Neue\", \"PingFang SC\", \"Hiragino Sans GB\", \"Microsoft YaHei UI\", \"Microsoft YaHei\", Arial, sans-serif;font-size: 17px;font-variant-numeric: normal;font-variant-east-asian: normal;letter-spacing: 0.544px;white-space: normal;widows: 1;line-height: 1.75em;text-align: left;background-color: rgb(255, 255, 255);box-sizing: border-box !important;word-wrap: break-word !important;\'><span style=\"font-size: 14px;\">来源：<span style=\"letter-spacing: 2px;\"> 华商报记者 毛蜜娜 通讯员 陈桂玲 综合陕西省旅游发展委员会（sxtours）</span></span></p></section></section></section></section></section></section></section></section>', 'upload/20180518/1526627448212.jpg', '', '', 'http://tui.lvjiachuantiegao.com/', 'yunniupin', 41968, 0, '2018-09-12', '', '', 0, '', 1, 'upload/20180518/1526627457680.jpg', '<div id=\"js_read_area3\" class=\"media_tool_meta tips_global_primary meta_primary\" style=\"display:none;\">阅读 <span id=\"readNum3\"></span>\n</div>\n\n                <span style=\"display:none;\" class=\"media_tool_meta meta_extra meta_praise\" id=\"like3\">\n                    <i class=\"icon_praise_gray\"></i><span class=\"praise_num\" id=\"likeNum3\"></span>\n                </span>', '1536689240568', 'admin', 'image_proxy.php?1=1&siteid=1&url=http://mmbiz.qpic.cn/mmbiz_jpg/Jyco923vDiagQ0AKf25OfLD3nkaB0e0jQTUbM3yfm6uUWfHnDwpNRg1c3NHZN2WEa23bfQgicGtILLpRvB6qVGsA/0?wx_fmt=jpeg', '平均气温未达标准，西安还未真正入秋！陕西这些景区票价降了', 0, 1100, 0, 0, '', 0, '5', 'https://mp.weixin.qq.com/s?src=11&timestamp=1536688801&ver=1116&signature=uDMPwAnM199tlyy3cUWtcXfkogAYgKzKjLoBVp8L72jR*TOlb2QifKBkhp6MJB-HV4aM0WWrsXbcNJES6mC8*yLa0ODzxpLNdAYwbPpmMdxLBWm7EA-HHaMuj*UuXK1o&new=1', 0, 0, 5943);

-- --------------------------------------------------------

--
-- 表的结构 `tbl_jigou`
--

CREATE TABLE `tbl_jigou` (
  `id` int(11) NOT NULL COMMENT '??????ĿID',
  `name` varchar(255) DEFAULT NULL COMMENT '??????Ŀ',
  `paid` int(11) DEFAULT NULL COMMENT '???????'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tbl_jigou`
--

INSERT INTO `tbl_jigou` (`id`, `name`, `paid`) VALUES
(1, '?', 0),
(2, '??', 0),
(3, '??', 0),
(4, '̫', 0),
(5, '?', 0),
(6, '??1', 1),
(7, '??2', 1),
(8, '??3', 1),
(9, '??4', 1),
(10, '??1', 2),
(11, '??2', 2),
(12, '??3', 2),
(13, '??1', 3),
(14, '??2', 3),
(15, '??3', 3),
(16, '??4', 3),
(17, '??5', 3),
(18, '̫1', 4),
(19, '̫2', 4),
(20, '̫3', 4),
(21, '̫4', 4),
(22, '̫5', 4),
(23, '̫6', 4),
(24, '?', 5),
(25, '?', 5),
(26, '?', 5);

-- --------------------------------------------------------

--
-- 表的结构 `tbl_jihuoma`
--

CREATE TABLE `tbl_jihuoma` (
  `id` int(10) UNSIGNED NOT NULL,
  `ma` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `add_time` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `tnum` int(10) NOT NULL,
  `wnum` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tbl_jihuoma`
--

INSERT INTO `tbl_jihuoma` (`id`, `ma`, `status`, `add_time`, `uid`, `name`, `tnum`, `wnum`) VALUES
(297, '831D-EF75-59C6-A157-1843', 1, 1536689500, 1348, '自助注册', 30, 100);

-- --------------------------------------------------------

--
-- 表的结构 `tbl_log`
--

CREATE TABLE `tbl_log` (
  `id` int(11) NOT NULL,
  `img0` longtext,
  `img` longtext,
  `time` int(11) DEFAULT NULL,
  `img1` longtext,
  `img2` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `tbl_music`
--

CREATE TABLE `tbl_music` (
  `id` int(10) NOT NULL,
  `title` varchar(250) NOT NULL,
  `path` varchar(255) NOT NULL,
  `add_time` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tbl_music`
--

INSERT INTO `tbl_music` (`id`, `title`, `path`, `add_time`, `cat_id`) VALUES
(55, '秋怨曼陀罗', '/upload/music/qiuyuan.mp3', 1488118181, 12);

-- --------------------------------------------------------

--
-- 表的结构 `tbl_music_cat`
--

CREATE TABLE `tbl_music_cat` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `add_time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tbl_music_cat`
--

INSERT INTO `tbl_music_cat` (`id`, `name`, `add_time`) VALUES
(12, '经典背景', 1488117429);

-- --------------------------------------------------------

--
-- 表的结构 `tbl_param_config`
--

CREATE TABLE `tbl_param_config` (
  `id` int(11) NOT NULL,
  `appid` varchar(50) NOT NULL,
  `appsecret` varchar(50) NOT NULL,
  `access_token` varchar(200) NOT NULL,
  `expire_time` int(11) NOT NULL DEFAULT '0',
  `jsapi_ticket` varchar(200) NOT NULL,
  `ticket_expires_time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tbl_param_config`
--

INSERT INTO `tbl_param_config` (`id`, `appid`, `appsecret`, `access_token`, `expire_time`, `jsapi_ticket`, `ticket_expires_time`) VALUES
(9, 'wx5cc7dde4b7368b91', '327b02f4e191c59762e2222', '5uNhdqF3Qr2aDS6uW-ctwlcvvxLsUmBivMm-4aoGiWf3gdvaZxRe26l-Hoobj27Ci3P0H7Zb8rtMKkBYFwObteysfVpSGYyhafH9atk8yNcRYBdAEAJQT', 7200, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `tbl_pay_log`
--

CREATE TABLE `tbl_pay_log` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `money` float(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `paytype` varchar(20) NOT NULL DEFAULT '',
  `paytime` int(10) NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tbl_pay_log`
--

INSERT INTO `tbl_pay_log` (`id`, `user_id`, `username`, `money`, `status`, `addtime`, `paytype`, `paytime`, `remark`) VALUES
(1, 1746, '17376167345', 288.00, 1, 1597088185, '微信', 1597088198, ''),
(2, 1746, '17376167345', 288.00, 1, 1597088511, '微信', 1597088525, ''),
(3, 1746, '17376167345', 288.00, 0, 1597089735, '', 0, ''),
(4, 1744, 'admin', 288.00, 0, 1597092178, '', 0, ''),
(5, 1744, 'admin', 288.00, 0, 1597131368, '', 0, ''),
(6, 1746, '17376167345', 288.00, 0, 1597136301, '', 0, ''),
(7, 1746, '17376167345', 288.00, 0, 1597136320, '', 0, ''),
(8, 1744, 'admin', 288.00, 0, 1597138070, '', 0, ''),
(9, 1744, 'admin', 288.00, 0, 1597138116, '', 0, ''),
(10, 1744, 'admin', 288.00, 0, 1597138129, '', 0, ''),
(11, 1749, '13219201728', 288.00, 0, 1597144672, '', 0, ''),
(12, 1749, '13219201728', 288.00, 0, 1597144695, '', 0, ''),
(13, 1750, '15982572626', 288.00, 0, 1597144735, '', 0, ''),
(14, 1749, '13219201728', 288.00, 0, 1597144760, '', 0, ''),
(15, 1744, 'admin', 288.00, 0, 1597145132, '', 0, ''),
(16, 1744, 'admin', 288.00, 0, 1597145173, '', 0, ''),
(17, 1751, '18280089665', 288.00, 0, 1597145181, '', 0, ''),
(18, 1744, 'admin', 288.00, 0, 1597145203, '', 0, ''),
(19, 1754, '18048794911', 288.00, 0, 1597171203, '', 0, ''),
(20, 1754, '18048794911', 288.00, 0, 1597171331, '', 0, ''),
(21, 1754, '18048794911', 288.00, 1, 1597171574, '微信', 1597171598, ''),
(22, 1754, '18048794911', 288.00, 0, 1597171614, '', 0, ''),
(23, 1754, '18048794911', 288.00, 0, 1597171670, '', 0, ''),
(24, 1754, '18048794911', 288.00, 1, 1597172068, '微信', 1597172095, '');

-- --------------------------------------------------------

--
-- 表的结构 `tbl_price`
--

CREATE TABLE `tbl_price` (
  `id` int(11) NOT NULL,
  `eprice` varchar(50) DEFAULT NULL,
  `enums` varchar(50) DEFAULT NULL,
  `agentprice` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `tbl_price`
--

INSERT INTO `tbl_price` (`id`, `eprice`, `enums`, `agentprice`) VALUES
(2, '10', '31', ''),
(3, '5', '12', ''),
(4, '1', '3', ''),
(5, '100', '300', '');

-- --------------------------------------------------------

--
-- 表的结构 `tbl_price_log`
--

CREATE TABLE `tbl_price_log` (
  `id` int(11) NOT NULL,
  `eprice` varchar(50) DEFAULT NULL,
  `userid` varchar(50) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `addtime` varchar(50) DEFAULT NULL,
  `ispay` int(1) DEFAULT '0',
  `enums` varchar(50) DEFAULT NULL,
  `orders` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `tbl_site`
--

CREATE TABLE `tbl_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(500) DEFAULT NULL,
  `fxdomain` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tbl_site`
--

INSERT INTO `tbl_site` (`id`, `domain`, `fxdomain`) VALUES
(1, 'aa.bbcc.com', '');

-- --------------------------------------------------------

--
-- 表的结构 `tbl_siteconfig`
--

CREATE TABLE `tbl_siteconfig` (
  `id` int(11) NOT NULL,
  `sitename` varchar(255) DEFAULT NULL,
  `logo` varchar(500) DEFAULT NULL,
  `kefuerweima` varchar(500) DEFAULT NULL,
  `zfberweima` varchar(500) DEFAULT NULL,
  `wxerweima` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tbl_siteconfig`
--

INSERT INTO `tbl_siteconfig` (`id`, `sitename`, `logo`, `kefuerweima`, `zfberweima`, `wxerweima`) VALUES
(1, '网站名称', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `tbl_tixian`
--

CREATE TABLE `tbl_tixian` (
  `id` int(10) NOT NULL,
  `user_id` int(8) NOT NULL,
  `username` varchar(50) NOT NULL,
  `money` float(10,2) NOT NULL,
  `addtime` int(10) NOT NULL DEFAULT '0',
  `ischeck` tinyint(1) NOT NULL DEFAULT '0',
  `updatetime` int(10) NOT NULL DEFAULT '0',
  `bankid` int(8) NOT NULL DEFAULT '0',
  `opuser` varchar(20) NOT NULL DEFAULT '',
  `opremark` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `tbl_type`
--

CREATE TABLE `tbl_type` (
  `id` int(11) NOT NULL COMMENT '????ID',
  `name` varchar(255) DEFAULT NULL COMMENT '???????',
  `sort` int(11) DEFAULT NULL COMMENT '?',
  `img` varchar(255) DEFAULT NULL COMMENT '????ͼƬ'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tbl_type`
--

INSERT INTO `tbl_type` (`id`, `name`, `sort`, `img`) VALUES
(1, '?ͻ????', 1, 'images/bar1.png'),
(2, '??ǰ׼??', 2, 'images/bar2.png'),
(3, '??Ʒ֪ʶ', 3, 'images/bar3.png'),
(4, '???ۼ??', 4, 'images/bar4.png'),
(5, '?ú???¼', 5, 'images/bar5.png'),
(6, '?????ܽ', 6, 'images/bar5.png');

-- --------------------------------------------------------

--
-- 表的结构 `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userpwd` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `anums` int(11) DEFAULT NULL,
  `ctime` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `beizhu1` text,
  `beizhu2` text,
  `shuyu` varchar(255) DEFAULT '',
  `openid` varchar(255) DEFAULT NULL,
  `duankouzong` varchar(255) DEFAULT NULL,
  `duankouyong` varchar(255) DEFAULT NULL,
  `adnums` varchar(255) DEFAULT NULL,
  `token` varchar(255) NOT NULL DEFAULT ' ' COMMENT 'app登录授权码',
  `updatetime` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT ' ',
  `groupid` smallint(4) NOT NULL DEFAULT '0',
  `jifen` int(10) NOT NULL DEFAULT '0',
  `money` float(32,2) NOT NULL DEFAULT '0.00',
  `mobile` varchar(50) NOT NULL DEFAULT ' ',
  `prov` varchar(50) NOT NULL DEFAULT ' ',
  `city` varchar(50) NOT NULL DEFAULT ' ',
  `area` varchar(50) NOT NULL DEFAULT ' ',
  `address` varchar(255) NOT NULL DEFAULT ' ',
  `supervip` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `userpwd`, `qq`, `anums`, `ctime`, `userid`, `beizhu1`, `beizhu2`, `shuyu`, `openid`, `duankouzong`, `duankouyong`, `adnums`, `token`, `updatetime`, `ip`, `groupid`, `jifen`, `money`, `mobile`, `prov`, `city`, `area`, `address`, `supervip`) VALUES
(1744, '后台添加', 'e10adc3949ba59abbe56e057f20f883e', '', NULL, '2020-08-05 23:13:07', 'admin', '', '', '', NULL, NULL, NULL, '', '61397140ef65608032c4dbc0c06094c4', 1597198023, '117.182.112.205', 2, 0, 58.00, ' ', ' ', ' ', ' ', ' ', 1),
(1754, '自助注册', 'd14aa6e6cc2dbb4a63a41533ed82bac3', NULL, NULL, '2020-08-12 00:57:50', '18048794911', NULL, '自助注册', '13219201728', NULL, NULL, NULL, NULL, 'c8c95240c28d608678b9907178e3bd81', 1597171054, '171.210.53.61', 1, 0, 0.02, '18048794911', '四川省', '遂宁市', '射洪县', ' 沱牌镇柳联街', 1),
(1750, '自助注册', '5d4ad14100e85f4cdb1f52a6d7f9d6fe', '', NULL, '2020-08-11 19:12:30', '15982572626', '', '自助注册', 'admin', NULL, NULL, NULL, '', '679caf3c462e57694759295e30ad52da', 1597144456, '182.129.218.127', 2, 0, 0.00, '15982572626', ' ', ' ', ' ', ' ', 1),
(1752, '自助注册', '37f6f80de277c70bbe258c768d9c8643', '', NULL, '2020-08-11 23:41:15', '13219201728', '', '自助注册', 'admin', NULL, NULL, NULL, '', '85eb6d104fec5484f56fd32d1983ca1c', 1597183984, '182.139.100.109', 2, 0, 456.00, '13219201728', ' ', ' ', ' ', ' ', 1),
(1753, '自助注册', 'aa042857875478b61b8e2ef0a3f933b5', '', NULL, '2020-08-12 00:42:56', '18280089665', '', '自助注册', '13219201728', NULL, NULL, NULL, '', 'aae827aaa608a0eba2875288857d6ca2', 1597198144, '182.139.103.74', 1, 0, 210.00, '18280089665', ' ', ' ', ' ', ' ', 1),
(1755, '自助注册', 'aa042857875478b61b8e2ef0a3f933b5', NULL, NULL, '2020-08-12 02:45:20', '19981280729', NULL, '自助注册', '18280089665', NULL, NULL, NULL, NULL, 'e61520f16f6226e57def6ae8893c630d', 1597171676, '118.115.114.140', 0, 0, 0.00, '19981280729', ' ', ' ', ' ', ' ', 0),
(1756, '自助注册', '0062d21c1a97acad0fff653df56849b2', NULL, NULL, '2020-08-12 03:01:21', '15828861174', NULL, '自助注册', '18048794911', NULL, NULL, NULL, NULL, 'fd9685262a0290d09b08035cb32bb744', 1597172624, '171.208.150.17', 0, 0, 0.00, '15828861174', ' ', ' ', ' ', ' ', 0);

-- --------------------------------------------------------

--
-- 表的结构 `tbl_user_group`
--

CREATE TABLE `tbl_user_group` (
  `id` smallint(4) NOT NULL,
  `levelid` tinyint(2) NOT NULL DEFAULT '0',
  `groupname` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tbl_user_group`
--

INSERT INTO `tbl_user_group` (`id`, `levelid`, `groupname`) VALUES
(1, 0, '普通会员'),
(2, 1, 'VIP会员'),
(4, 2, '营销经理');

--
-- 转储表的索引
--

--
-- 表的索引 `tbl_acount_log`
--
ALTER TABLE `tbl_acount_log`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tbl_ad`
--
ALTER TABLE `tbl_ad`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tbl_ads`
--
ALTER TABLE `tbl_ads`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tbl_ads_task`
--
ALTER TABLE `tbl_ads_task`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tbl_chongzhi`
--
ALTER TABLE `tbl_chongzhi`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tbl_complain`
--
ALTER TABLE `tbl_complain`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `tbl_config`
--
ALTER TABLE `tbl_config`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tbl_cz_log`
--
ALTER TABLE `tbl_cz_log`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tbl_info`
--
ALTER TABLE `tbl_info`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tbl_jigou`
--
ALTER TABLE `tbl_jigou`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tbl_jihuoma`
--
ALTER TABLE `tbl_jihuoma`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tbl_log`
--
ALTER TABLE `tbl_log`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tbl_music`
--
ALTER TABLE `tbl_music`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tbl_music_cat`
--
ALTER TABLE `tbl_music_cat`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tbl_param_config`
--
ALTER TABLE `tbl_param_config`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tbl_pay_log`
--
ALTER TABLE `tbl_pay_log`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tbl_price`
--
ALTER TABLE `tbl_price`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tbl_price_log`
--
ALTER TABLE `tbl_price_log`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tbl_site`
--
ALTER TABLE `tbl_site`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tbl_siteconfig`
--
ALTER TABLE `tbl_siteconfig`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tbl_tixian`
--
ALTER TABLE `tbl_tixian`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tbl_type`
--
ALTER TABLE `tbl_type`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tbl_user_group`
--
ALTER TABLE `tbl_user_group`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `tbl_acount_log`
--
ALTER TABLE `tbl_acount_log`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=703752;

--
-- 使用表AUTO_INCREMENT `tbl_ad`
--
ALTER TABLE `tbl_ad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1101;

--
-- 使用表AUTO_INCREMENT `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- 使用表AUTO_INCREMENT `tbl_ads`
--
ALTER TABLE `tbl_ads`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `tbl_ads_task`
--
ALTER TABLE `tbl_ads_task`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- 使用表AUTO_INCREMENT `tbl_bank`
--
ALTER TABLE `tbl_bank`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- 使用表AUTO_INCREMENT `tbl_chongzhi`
--
ALTER TABLE `tbl_chongzhi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `tbl_complain`
--
ALTER TABLE `tbl_complain`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- 使用表AUTO_INCREMENT `tbl_config`
--
ALTER TABLE `tbl_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `tbl_cz_log`
--
ALTER TABLE `tbl_cz_log`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- 使用表AUTO_INCREMENT `tbl_info`
--
ALTER TABLE `tbl_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5212;

--
-- 使用表AUTO_INCREMENT `tbl_jigou`
--
ALTER TABLE `tbl_jigou`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '??????ĿID', AUTO_INCREMENT=32;

--
-- 使用表AUTO_INCREMENT `tbl_jihuoma`
--
ALTER TABLE `tbl_jihuoma`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- 使用表AUTO_INCREMENT `tbl_log`
--
ALTER TABLE `tbl_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用表AUTO_INCREMENT `tbl_music`
--
ALTER TABLE `tbl_music`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- 使用表AUTO_INCREMENT `tbl_music_cat`
--
ALTER TABLE `tbl_music_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `tbl_param_config`
--
ALTER TABLE `tbl_param_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `tbl_pay_log`
--
ALTER TABLE `tbl_pay_log`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- 使用表AUTO_INCREMENT `tbl_price`
--
ALTER TABLE `tbl_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `tbl_price_log`
--
ALTER TABLE `tbl_price_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- 使用表AUTO_INCREMENT `tbl_site`
--
ALTER TABLE `tbl_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- 使用表AUTO_INCREMENT `tbl_siteconfig`
--
ALTER TABLE `tbl_siteconfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `tbl_tixian`
--
ALTER TABLE `tbl_tixian`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- 使用表AUTO_INCREMENT `tbl_type`
--
ALTER TABLE `tbl_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '????ID', AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1757;

--
-- 使用表AUTO_INCREMENT `tbl_user_group`
--
ALTER TABLE `tbl_user_group`
  MODIFY `id` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
