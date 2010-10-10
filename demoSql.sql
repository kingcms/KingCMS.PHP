-- phpMyAdmin SQL Dump
-- version 3.3.3
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2010 年 10 月 10 日 12:28
-- 服务器版本: 5.0.51
-- PHP 版本: 5.2.14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `9_demo_enterprise`
--

-- --------------------------------------------------------

--
-- 表的结构 `kc_admin`
--

CREATE TABLE IF NOT EXISTS `kc_admin` (
  `adminid` int(11) NOT NULL auto_increment,
  `adminname` char(12) NOT NULL,
  `adminpass` char(32) NOT NULL,
  `adminlevel` text NOT NULL,
  `adminlanguage` char(30) NOT NULL,
  `admineditor` char(100) default NULL,
  `admincount` smallint(6) NOT NULL default '0',
  `adminmode` tinyint(1) NOT NULL default '1',
  `adminskins` char(50) NOT NULL default 'default',
  `adminlogin` char(100) default NULL,
  `siteurl` char(100) default NULL,
  `isdelete` tinyint(1) NOT NULL default '0',
  `admindate` int(10) NOT NULL default '0',
  PRIMARY KEY  (`adminid`),
  UNIQUE KEY `adminname` (`adminname`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `kc_admin`
--

INSERT INTO `kc_admin` (`adminid`, `adminname`, `adminpass`, `adminlevel`, `adminlanguage`, `admineditor`, `admincount`, `adminmode`, `adminskins`, `adminlogin`, `siteurl`, `isdelete`, `admindate`) VALUES
(1, 'admin', '7fef6171469e80d32c0559f88b377245', 'admin', 'zh-cn', 'xheditor', 21, 2, 'default', 'manage.php', '', 0, 1286684270);

-- --------------------------------------------------------

--
-- 表的结构 `king_block`
--

CREATE TABLE IF NOT EXISTS `king_block` (
  `kid` int(11) NOT NULL auto_increment,
  `kid1` int(11) NOT NULL default '0',
  `kname` char(100) NOT NULL,
  `kcontent` text,
  `ntype` tinyint(4) NOT NULL default '0',
  `bid` int(11) NOT NULL default '0',
  `norder` int(11) NOT NULL default '0',
  PRIMARY KEY  (`kid`),
  KEY `kname` (`kname`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `king_block`
--

INSERT INTO `king_block` (`kid`, `kid1`, `kname`, `kcontent`, `ntype`, `bid`, `norder`) VALUES
(1, 0, '控制Tab的JS代码', '<script type="text/javascript">\n$(document).ready(function(){	\n		$("#slider").easySlider({\n			controlsBefore:	''<p id="controls">'',\n			controlsAfter:	''</p>'',\n			auto: true, \n			continuous: true,\n			prevId: ''prevBtn'',\n			nextId: ''nextBtn''	\n		});\n});\n</script>', 0, 0, 1),
(2, 1, '控制Tab的JS代码', '<script type="text/javascript">\n$(document).ready(function(){	\n		$("#slider").easySlider({\n			controlsBefore:	''<p id="controls">'',\n			controlsAfter:	''</p>'',\n			auto: true, \n			continuous: true,\n			prevId: ''prevBtn'',\n			nextId: ''nextBtn''	\n		});\n});\n\n\n\n\n\n</script>\n\n\n<script type="text/javascript">\n$(function(){ \n//在选项卡上的运用\n	$(''#tab_1_c div'').soChange({\n		thumbObj:''#tab_1_m li'',\n		slideTime:0,\n		thumbOverEvent:false,\n		autoChange:false//自动切换为 false，默认为true\n	});\n\n\n});\n</script>', 1, 1, 2),
(3, 1, '控制Tab的JS代码', '<script type="text/javascript">\n$(document).ready(function(){	\n		$("#slider").easySlider({\n			controlsBefore:	''<p id="controls">'',\n			controlsAfter:	''</p>'',\n			auto: true, \n			continuous: true,\n			prevId: ''prevBtn'',\n			nextId: ''nextBtn''	\n		});\n});\n\n\n\n\n\n</script>\n\n<script type="text/javascript">\n$(function(){ \n//在选项卡上的运用\n	$(''#tab_2_c div'').soChange({\n		thumbObj:''#tab_2_m li'',\n		slideTime:0,\n		delayTime:0,\n		thumbOverEvent:true,\n		autoChange:false//自动切换为 false，默认为true\n	});\n\n\n});\n</script>', 2, 7, 3),
(4, 0, '电话', '020-38620495', 0, 0, 4),
(5, 0, '传真', '020-38319743', 0, 0, 5),
(6, 0, '邮箱', 'service@kingcms.com', 0, 0, 6),
(7, 0, 'QQ', '<a href="http://wpa.qq.com/msgrd?v=3&amp;uin=18122895&amp;site=qq&amp;menu=yes" target="_blank"><img title="点击这里给我发消息" border="0" alt="点击这里给我发消息" src="http://wpa.qq.com/pa?p=2:18122895:41" /></a> <a href="http://wpa.qq.com/msgrd?v=3&amp;uin=13158118&amp;site=qq&amp;menu=yes" target="_blank"><img title="点击这里给我发消息" border="0" alt="点击这里给我发消息" src="http://wpa.qq.com/pa?p=2:13158118:41" /></a>', 0, 0, 7),
(8, 0, '公司名称', '广州唯众网络科技有限公司', 0, 0, 8),
(9, 0, '页面banner', '<div class="w_960 mb10"><img src="/{king:Image none=''demotemp/images/s-banner.jpg''/}" /></div>', 0, 0, 9),
(10, 9, '页面banner', '<div class="w_960 mb10">{king:portal.list listid="(king:listid/)"}<img src="/{king:Image none=''demotemp/images/s-banner.jpg''/}" />{/king:portal.list}</div>', 2, 6, 10),
(11, 9, '页面banner', '<div class="w_960 mb10">{king:portal.list listid="(king:listid/)"}<img src="/{king:Image none=''demotemp/images/s-banner.jpg''/}" />{/king:portal.list}</div>', 2, 7, 11),
(12, 9, '页面banner', '<div class="w_960 mb10">{king:portal.list listid="(king:listid/)"}<img src="/{king:Image none=''demotemp/images/s-banner.jpg''/}" />{/king:portal.list}</div>', 2, 5, 12);

-- --------------------------------------------------------

--
-- 表的结构 `king_bot`
--

CREATE TABLE IF NOT EXISTS `king_bot` (
  `kid` int(11) NOT NULL auto_increment,
  `kname` char(30) NOT NULL,
  `kmark` char(255) NOT NULL,
  `ncount` int(11) NOT NULL default '0',
  `nlastdate` int(10) NOT NULL default '0',
  `ndate` int(10) NOT NULL default '0',
  PRIMARY KEY  (`kid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `king_bot`
--

INSERT INTO `king_bot` (`kid`, `kname`, `kmark`, `ncount`, `nlastdate`, `ndate`) VALUES
(1, 'Baidu', 'Baiduspider+', 0, 0, 0),
(2, 'Google', 'Googlebot', 0, 0, 0),
(3, 'Alexa', 'IAArchiver', 0, 0, 0),
(4, 'ASPSeek', 'ASPSeek', 0, 0, 0),
(5, 'Yahoo', 'help.yahoo.com/help/us/ysearch/slurp', 0, 0, 0),
(6, 'Sohu', 'sohu-search', 0, 0, 0),
(7, 'MSN', 'MSN', 0, 0, 0),
(8, 'AOL', 'Sqworm/2.9.81-BETA (beta_release; 20011102-760; i686-pc-linux-gnu', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `king_comment`
--

CREATE TABLE IF NOT EXISTS `king_comment` (
  `cid` int(11) NOT NULL auto_increment,
  `kid` int(11) NOT NULL default '0',
  `modelid` int(11) NOT NULL default '0',
  `username` char(12) default NULL,
  `kcontent` text,
  `nip` int(10) NOT NULL default '0',
  `ndate` int(10) NOT NULL default '0',
  `isshow` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`cid`),
  KEY `kid` (`kid`),
  KEY `modelid` (`modelid`),
  KEY `isshow` (`isshow`),
  KEY `ndate` (`ndate`),
  KEY `nip` (`nip`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- 转存表中的数据 `king_comment`
--

INSERT INTO `king_comment` (`cid`, `kid`, `modelid`, `username`, `kcontent`, `nip`, `ndate`, `isshow`) VALUES
(1, 39, 6, '', 'fff  ff', 1032613365, 1286611026, 1),
(2, 39, 6, '', '马云：活着努力远比死后裸捐重要', 1032613365, 1286611861, 1),
(3, 39, 6, '', '在活着的时候，花一点点时间对你的社区、你的城市做一点点努力，远比死后捐50%更为重要，谢谢大家。 ', 1032613365, 1286612310, 1),
(4, 39, 6, '', '文化是需要保护的，保护最好的办法可能就是发展。所以我自己觉得，城市跟公司来说，都是以人为本，以人为中心。', 1032613365, 1286612596, 1),
(5, 39, 6, '', 'ffffff', 1032613365, 1286613355, 1),
(6, 39, 6, '', '好像是', 1032613365, 1286613498, 1),
(7, 39, 6, '', 'KingCMS演示站', 1032613365, 1286614719, 1),
(8, 27, 6, '', '史上最疯狂的赚金币活动', 1032613365, 1286616219, 1),
(9, 39, 6, '', '测试好阿斯是', 2000036788, 1286622871, 1),
(10, 39, 6, '', '保护最好的办法可能就是发展。所以我自己觉得，城市跟公司来说，都是以人为本，以人为中心。 ', 1032613365, 1286631211, 1),
(11, 39, 6, '', '继续测试', 2030970417, 1286631300, 1),
(12, 39, 6, '', '裸体捐款', 1032613365, 1286631339, 1),
(13, 39, 6, '', '努力或者', 2030970417, 1286631459, 1),
(14, 39, 6, '', '我想看分页', 2000036788, 1286631512, 1),
(15, 39, 6, '', '打算范德萨方式打算', 2074902709, 1286631520, 1),
(16, 39, 6, '', '帮我发个评论，我想看分页', 1032613365, 1286631535, 1),
(17, 39, 6, '', '请谈谈你对"马云：', 1032613365, 1286632139, 1),
(18, 37, 6, '', '超越微软和沃尔玛是阿里巴巴的使命 评论页"的看法\n   ----请在这里输入评论内容----', 1032613365, 1286632738, 1),
(19, 7, 6, '', '测试？', 1032613365, 1286634533, 1),
(20, 27, 6, '', 'KingCMS会员们，官网在2010年9月1日开放以来，得到了广大KC爱好者的热心支持，各项统计指数节节攀升。众所周知', 1032613365, 1286634872, 1),
(21, 39, 6, '', '马云是个菜鸟', 992544515, 1286635301, 1),
(22, 39, 6, '', '能发表吗', 1032613365, 1286635624, 1),
(23, 26, 6, '', '祝福祖国生日快乐！', 2030970417, 1286635793, 1),
(24, 4, 6, '', '测试啊 ', 1032613365, 1286636864, 1),
(25, 27, 6, '', '金币活动 ', 1032613365, 1286637047, 1),
(26, 34, 6, '', '麦当劳', 1032613365, 1286640826, 1),
(27, 22, 6, '', '看看村委会i', 1032613365, 1286641934, 1),
(28, 38, 6, '', '65%是动态消息（Ongoing news），其次是突发消息（19%）和CNN称之为“逸闻趣事”的消息。', 1032612962, 1286672702, 1),
(29, 39, 6, '', '测试的万恶额额', 1032612962, 1286679558, 1),
(30, 39, 6, '', '马云：活着努力远比死后裸捐重要"的', 1032612962, 1286680366, 1),
(31, 39, 6, '', '测发法人', 1032612962, 1286682037, 1);

-- --------------------------------------------------------

--
-- 表的结构 `king_conn`
--

CREATE TABLE IF NOT EXISTS `king_conn` (
  `kid` int(11) NOT NULL auto_increment,
  `kname` char(50) NOT NULL,
  `ksign` char(32) default NULL,
  `urlpath` char(255) NOT NULL,
  `connid` int(11) NOT NULL default '0',
  `norder` int(11) NOT NULL default '0',
  PRIMARY KEY  (`kid`),
  KEY `connid` (`connid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `king_conn`
--


-- --------------------------------------------------------

--
-- 表的结构 `king_event`
--

CREATE TABLE IF NOT EXISTS `king_event` (
  `kid` int(11) NOT NULL auto_increment,
  `ntype` int(6) NOT NULL,
  `kmsg` text,
  `kfile` char(100) NOT NULL,
  `kurl` char(255) default NULL,
  `nline` int(5) NOT NULL default '0',
  `ndate` int(10) NOT NULL default '0',
  PRIMARY KEY  (`kid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `king_event`
--


-- --------------------------------------------------------

--
-- 表的结构 `king_express`
--

CREATE TABLE IF NOT EXISTS `king_express` (
  `eid` int(11) NOT NULL auto_increment,
  `kname` char(50) default NULL,
  `nsprice` int(11) NOT NULL default '0',
  `niprice` int(11) NOT NULL default '0',
  `kremark` text,
  `norder` int(11) NOT NULL default '0',
  `isdefault` tinyint(1) NOT NULL default '0',
  `kaddress` char(255) default NULL,
  PRIMARY KEY  (`eid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `king_express`
--

INSERT INTO `king_express` (`eid`, `kname`, `nsprice`, `niprice`, `kremark`, `norder`, `isdefault`, `kaddress`) VALUES
(1, 'EMS', 20, 20, NULL, 1, 1, 'http://www.ems.com.cn/qcgzOutQueryAction.do?reqCode=gotoSearch'),
(2, '平邮', 10, 5, NULL, 0, 0, 'http://intmail.183.com.cn/');

-- --------------------------------------------------------

--
-- 表的结构 `king_favorite`
--

CREATE TABLE IF NOT EXISTS `king_favorite` (
  `fid` int(11) NOT NULL auto_increment,
  `kid` int(11) NOT NULL default '0',
  `userid` int(11) NOT NULL default '0',
  `listid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`fid`),
  KEY `kid` (`kid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `king_favorite`
--


-- --------------------------------------------------------

--
-- 表的结构 `king_feedback`
--

CREATE TABLE IF NOT EXISTS `king_feedback` (
  `kid` int(11) NOT NULL auto_increment,
  `ktitle` char(100) NOT NULL,
  `kname` char(50) NOT NULL,
  `kemail` char(100) NOT NULL,
  `kphone` char(20) default NULL,
  `kqq` char(50) default NULL,
  `kcontent` text,
  `nread` tinyint(1) NOT NULL default '0',
  `norder` int(11) NOT NULL default '0',
  `ndate` int(10) NOT NULL default '0',
  PRIMARY KEY  (`kid`),
  KEY `ktitle` (`ktitle`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `king_feedback`
--

INSERT INTO `king_feedback` (`kid`, `ktitle`, `kname`, `kemail`, `kphone`, `kqq`, `kcontent`, `nread`, `norder`, `ndate`) VALUES
(1, '策划i', '策划', '9@21.cn', '02038620495', '', '策划策划策划策划策划策划', 1, 1, 1286634158),
(2, '测试alt+s', 'gg', '9@21.cn', '02038620495', '', '测试alt+s测试alt+s测试alt+s测试alt+s测试alt+s测试alt+s测试alt+s', 1, 2, 1286639626),
(3, '再次测试alt+s', 'ff', 'ff@21.cn', '138000000000', '', '再次测试alt+s再次测试alt+s再次测试alt+s再次测试alt+s', 1, 3, 1286679619);

-- --------------------------------------------------------

--
-- 表的结构 `king_field`
--

CREATE TABLE IF NOT EXISTS `king_field` (
  `kid` int(11) NOT NULL auto_increment,
  `modelid` int(11) NOT NULL default '0',
  `kid1` int(11) NOT NULL default '0',
  `istitle` tinyint(1) NOT NULL default '0',
  `norder` int(11) NOT NULL default '0',
  `ktitle` char(100) NOT NULL,
  `kfield` char(30) NOT NULL,
  `ntype` tinyint(2) NOT NULL default '0',
  `issearch` tinyint(1) NOT NULL default '0',
  `nvalidate` tinyint(2) NOT NULL default '0',
  `nsizemin` int(11) NOT NULL default '0',
  `nsizemax` int(11) NOT NULL default '0',
  `kdefault` char(255) default NULL,
  `koption` text,
  `nstylewidth` int(11) NOT NULL default '0',
  `nstyleheight` int(11) NOT NULL default '0',
  `isadmin1` tinyint(1) NOT NULL default '1',
  `isadmin2` tinyint(1) NOT NULL default '1',
  `isuser1` tinyint(1) NOT NULL default '1',
  `isuser2` tinyint(1) NOT NULL default '1',
  `islist` tinyint(1) NOT NULL default '0',
  `isrelate` tinyint(1) NOT NULL default '0',
  `khelp` text,
  `nupfile` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`kid`),
  KEY `modelid` (`modelid`),
  KEY `ntype` (`ntype`),
  KEY `isadmin1` (`isadmin1`),
  KEY `isadmin2` (`isadmin2`),
  KEY `isuser1` (`isuser1`),
  KEY `isuser2` (`isuser2`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=83 ;

--
-- 转存表中的数据 `king_field`
--

INSERT INTO `king_field` (`kid`, `modelid`, `kid1`, `istitle`, `norder`, `ktitle`, `kfield`, `ntype`, `issearch`, `nvalidate`, `nsizemin`, `nsizemax`, `kdefault`, `koption`, `nstylewidth`, `nstyleheight`, `isadmin1`, `isadmin2`, `isuser1`, `isuser2`, `islist`, `isrelate`, `khelp`, `nupfile`) VALUES
(1, 6, 0, 0, 2, '标题', 'ktitle', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 1, 1, 1, 0, 0, '', 0),
(2, 6, 0, 0, 3, '副标题', 'ksubtitle', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 0, 0, 0, 0, 0, '', 0),
(3, 6, 0, 0, 7, '缩略图', 'kimage', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 0, 0, 0, 0, 0, '', 0),
(4, 6, 0, 0, 8, '内容', 'kcontent', 0, 0, 0, 10, 999999, '', '', 780, 360, 1, 1, 1, 1, 0, 0, '', 0),
(5, 6, 0, 0, 10, 'META关键字', 'kkeywords', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 1, 1, 1, 0, 0, '', 0),
(6, 6, 0, 0, 11, 'TAG标签', 'ktag', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 1, 1, 1, 0, 0, '', 0),
(7, 6, 0, 0, 12, 'META简述', 'kdescription', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 1, 1, 1, 0, 0, '', 0),
(8, 6, 0, 0, 6, '路径', 'kpath', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 0, 0, 0, 0, 0, '', 0),
(9, 6, 0, 0, 9, '相关内容', 'krelate', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 0, 0, 0, 0, 0, '', 0),
(10, 6, 0, 0, 13, '价格', 'nprice', 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(11, 6, 0, 0, 20, '数量', 'nnumber', 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(12, 6, 0, 0, 21, '重量', 'nweight', 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(13, 6, 0, 0, 1, '属性', 'nattrib', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 1, 0, 0, 0, 0, '', 0),
(14, 6, 13, 0, 14, '显示', 'nshow', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 1, 0, 0, 1, 0, '', 0),
(15, 6, 13, 0, 15, '头条', 'nhead', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 0, 0, 0, 1, 0, '', 0),
(16, 6, 13, 0, 16, '推荐', 'ncommend', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 0, 0, 0, 1, 0, '', 0),
(17, 6, 13, 0, 17, '置顶', 'nup', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 0, 0, 0, 1, 0, '', 0),
(18, 6, 13, 0, 18, '焦点', 'nfocus', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 0, 0, 0, 1, 0, '', 0),
(19, 6, 13, 0, 19, '热门', 'nhot', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 0, 0, 0, 1, 0, '', 0),
(20, 6, 0, 0, 4, '作者', 'k_author', 1, 1, 0, 0, 30, '', '未知', 100, 0, 1, 0, 0, 0, 1, 1, '', 0),
(21, 6, 0, 0, 5, '来源', 'k_source', 1, 1, 0, 0, 255, '', 'KingCMS|http://www.kingcms.com/|KingCMS\r\nSINA|http://www.sina.com.cn/|SINA\r\nQQ|http://www.qq.com/|QQ', 400, 0, 1, 0, 0, 0, 0, 1, '来源和来源网站之间用垂直线分开，如：\r\nKingCMS|http://www.kingcms.com/', 0),
(22, 7, 0, 0, 1, '产品名称', 'ktitle', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 1, 1, 1, 0, 0, '', 0),
(23, 7, 0, 0, 4, '副标题', 'ksubtitle', 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(24, 7, 0, 0, 5, '产品图片', 'kimage', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 1, 1, 1, 0, 0, '', 0),
(25, 7, 0, 0, 6, '产品介绍', 'kcontent', 0, 0, 0, 10, 999999, '', '', 780, 360, 1, 1, 1, 1, 0, 0, '', 0),
(26, 7, 0, 0, 7, 'META关键字', 'kkeywords', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 1, 1, 1, 0, 0, '', 0),
(27, 7, 0, 0, 8, 'TAG标签', 'ktag', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 1, 1, 1, 0, 0, '', 0),
(28, 7, 0, 0, 9, 'META简述', 'kdescription', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 1, 1, 1, 0, 0, '', 0),
(29, 7, 0, 0, 10, '路径', 'kpath', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 1, 1, 1, 0, 0, '', 0),
(30, 7, 0, 0, 11, '相关产品', 'krelate', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 1, 1, 1, 0, 0, '', 0),
(31, 7, 0, 0, 12, '价格', 'nprice', 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(32, 7, 0, 0, 13, '数量', 'nnumber', 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(33, 7, 0, 0, 20, '重量', 'nweight', 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(34, 7, 0, 0, 2, '属性', 'nattrib', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 1, 1, 1, 0, 0, '', 0),
(35, 7, 34, 0, 14, '显示', 'nshow', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 0, 0, 0, 1, 0, '', 0),
(36, 7, 34, 0, 15, '头条', 'nhead', 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 0, '', 0),
(37, 7, 34, 0, 16, '推荐', 'ncommend', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 0, 0, 0, 1, 0, '', 0),
(38, 7, 34, 0, 17, '置顶', 'nup', 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 0, '', 0),
(39, 7, 34, 0, 18, '焦点', 'nfocus', 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 0, '', 0),
(40, 7, 34, 0, 19, '热门', 'nhot', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 0, 0, 0, 1, 0, '', 0),
(41, 7, 0, 0, 3, '产品型号', 'k_Serial', 1, 1, 0, 1, 100, '', '', 400, 0, 1, 0, 0, 0, 1, 0, '', 0),
(42, 8, 0, 0, 2, '产品名称', 'ktitle', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 1, 1, 1, 0, 0, '', 0),
(43, 8, 0, 0, 21, '副标题', 'ksubtitle', 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(44, 8, 0, 0, 4, '产品图片', 'kimage', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 1, 1, 1, 0, 0, '', 0),
(45, 8, 0, 0, 5, '产品介绍', 'kcontent', 0, 0, 0, 10, 999999, '', '', 780, 360, 1, 1, 1, 1, 0, 0, '', 0),
(46, 8, 0, 0, 6, 'META关键字', 'kkeywords', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 1, 1, 1, 0, 0, '', 0),
(47, 8, 0, 0, 7, 'TAG标签', 'ktag', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 1, 1, 1, 0, 0, '', 0),
(48, 8, 0, 0, 8, 'META简述', 'kdescription', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 1, 1, 1, 0, 0, '', 0),
(49, 8, 0, 0, 9, '路径', 'kpath', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 1, 1, 1, 0, 0, '', 0),
(50, 8, 0, 0, 10, '相关内容', 'krelate', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 1, 1, 1, 0, 0, '', 0),
(51, 8, 0, 0, 12, '优惠价', 'nprice', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 1, 1, 1, 0, 0, '', 0),
(52, 8, 0, 0, 13, '数量', 'nnumber', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 1, 1, 1, 0, 0, '', 0),
(53, 8, 0, 0, 20, '重量', 'nweight', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 1, 1, 1, 0, 0, '', 0),
(54, 8, 0, 0, 1, '属性', 'nattrib', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 1, 1, 1, 0, 0, '', 0),
(55, 8, 54, 0, 14, '显示', 'nshow', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 0, 0, 0, 1, 0, '', 0),
(56, 8, 54, 0, 15, '头条', 'nhead', 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 0, '', 0),
(57, 8, 54, 0, 16, '推荐', 'ncommend', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 0, 0, 0, 1, 0, '', 0),
(58, 8, 54, 0, 17, '置顶', 'nup', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 0, 0, 0, 1, 0, '', 0),
(59, 8, 54, 0, 18, '焦点', 'nfocus', 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 0, '', 0),
(60, 8, 54, 0, 19, '热卖', 'nhot', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 0, 0, 0, 0, 0, '', 0),
(61, 8, 0, 0, 11, '市场价', 'k_Market', 1, 0, 3, 1, 11, '', '', 100, 0, 1, 1, 1, 1, 1, 0, '', 0),
(62, 8, 0, 0, 3, '产品型号', 'k_Serial', 1, 0, 0, 1, 100, '', '', 200, 0, 1, 1, 1, 1, 1, 0, '', 0),
(63, 9, 0, 0, 1, '标题', 'ktitle', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 1, 1, 1, 0, 0, '', 0),
(64, 9, 0, 0, 2, '副标题', 'ksubtitle', 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(65, 9, 0, 0, 3, '缩略图', 'kimage', 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(66, 9, 0, 0, 4, '内容', 'kcontent', 0, 0, 0, 10, 999999, '', '', 780, 360, 1, 1, 1, 1, 0, 0, '', 0),
(67, 9, 0, 0, 5, 'META关键字', 'kkeywords', 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(68, 9, 0, 0, 6, 'TAG标签', 'ktag', 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(69, 9, 0, 0, 7, 'META简述', 'kdescription', 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(70, 9, 0, 0, 8, '路径', 'kpath', 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(71, 9, 0, 0, 9, '相关内容', 'krelate', 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(72, 9, 0, 0, 10, '价格', 'nprice', 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(73, 9, 0, 0, 11, '数量', 'nnumber', 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(74, 9, 0, 0, 12, '重量', 'nweight', 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(75, 9, 0, 0, 13, '属性', 'nattrib', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 0, 0, 0, 0, 0, '', 0),
(76, 9, 75, 0, 14, '显示', 'nshow', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 1, 0, 0, 1, 0, '', 0),
(77, 9, 75, 0, 15, '头条', 'nhead', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 0, 0, 0, 1, 0, '', 0),
(78, 9, 75, 0, 16, '推荐', 'ncommend', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 0, 0, 0, 1, 0, '', 0),
(79, 9, 75, 0, 17, '置顶', 'nup', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 0, 0, 0, 1, 0, '', 0),
(80, 9, 75, 0, 18, '焦点', 'nfocus', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 0, 0, 0, 1, 0, '', 0),
(81, 9, 75, 0, 19, '热门', 'nhot', 0, 0, 0, 0, 0, '', '', 0, 0, 1, 0, 0, 0, 1, 0, '', 0),
(82, 7, 0, 0, 21, '产品图片', 'k_chanpintupian', 9, 0, 0, 0, 999999, '', '', 400, 70, 1, 1, 1, 1, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `king_list`
--

CREATE TABLE IF NOT EXISTS `king_list` (
  `listid` int(11) NOT NULL auto_increment,
  `listid1` int(11) NOT NULL default '0',
  `modelid` int(11) NOT NULL default '0',
  `siteid` int(11) NOT NULL default '1',
  `norder` int(11) NOT NULL default '0',
  `ncount` int(11) NOT NULL default '0',
  `ncountall` int(11) NOT NULL default '0',
  `ktitle` char(100) NOT NULL,
  `klistname` char(100) NOT NULL,
  `kkeywords` char(100) default NULL,
  `kdescription` char(255) default NULL,
  `kimage` char(255) default NULL,
  `isblank` tinyint(1) NOT NULL default '0',
  `iscontent` tinyint(1) NOT NULL default '0',
  `kcontent` text,
  `klistpath` char(255) default NULL,
  `ktemplatelist1` char(255) default NULL,
  `ktemplatelist2` char(255) default NULL,
  `nlistnumber` tinyint(3) NOT NULL default '20',
  `kpathmode` char(255) default NULL,
  `ktemplatepage1` char(255) default NULL,
  `ktemplatepage2` char(255) default NULL,
  `npagenumber` tinyint(3) NOT NULL default '1',
  `ispublish1` tinyint(1) NOT NULL default '0',
  `ispublish2` tinyint(1) NOT NULL default '0',
  `norder1` int(11) NOT NULL default '0',
  `norder3` int(11) NOT NULL default '0',
  `norder4` int(11) NOT NULL default '0',
  `norder5` int(11) NOT NULL default '0',
  `nupdatelist` int(10) NOT NULL default '0',
  `nupdatepage` int(10) NOT NULL default '0',
  `isexist` tinyint(1) NOT NULL default '0',
  `nlist` tinyint(1) NOT NULL default '0',
  `npage` tinyint(1) NOT NULL default '0',
  `gid` int(11) NOT NULL default '0',
  `ismenu1` tinyint(1) NOT NULL default '0',
  `ismenu2` tinyint(1) NOT NULL default '0',
  `ismenu3` tinyint(1) NOT NULL default '0',
  `ismenu4` tinyint(1) NOT NULL default '0',
  `ismenu5` tinyint(1) NOT NULL default '0',
  `ismap` tinyint(1) NOT NULL default '0',
  `klanguage` char(30) default NULL,
  `gidpublish` int(10) NOT NULL default '0',
  PRIMARY KEY  (`listid`),
  KEY `listid1` (`listid1`),
  KEY `modelid` (`modelid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `king_list`
--

INSERT INTO `king_list` (`listid`, `listid1`, `modelid`, `siteid`, `norder`, `ncount`, `ncountall`, `ktitle`, `klistname`, `kkeywords`, `kdescription`, `kimage`, `isblank`, `iscontent`, `kcontent`, `klistpath`, `ktemplatelist1`, `ktemplatelist2`, `nlistnumber`, `kpathmode`, `ktemplatepage1`, `ktemplatepage2`, `npagenumber`, `ispublish1`, `ispublish2`, `norder1`, `norder3`, `norder4`, `norder5`, `nupdatelist`, `nupdatepage`, `isexist`, `nlist`, `npage`, `gid`, `ismenu1`, `ismenu2`, `ismenu3`, `ismenu4`, `ismenu5`, `ismap`, `klanguage`, `gidpublish`) VALUES
(1, 0, 0, 1, 1, 0, 0, '欢迎使用KingCMS内容管理系统！', '网站首页', '', '', '', 0, 0, '<p>\r\n	感谢您选择KingCMS内容管理系统！\r\n</p>\r\n<p>\r\n	我们一如既往的专注于开发小巧、灵活、自由的内容管理系统。\r\n</p>\r\n<p>\r\n	上传所有文件到空间，设置目录和文件的权限(*nic系统设置为0777)。\r\n</p>', '', 'demotemp/home.htm', 'demotemp/inside/onepage/home.htm', 20, NULL, NULL, NULL, 1, 0, 0, 1, 1, 1, 1, 1286616647, 1286616647, 0, 0, 0, -1, 1, 0, 1, 0, 0, 1, 'zh-cn', 0),
(2, 0, 0, 1, 2, 0, 0, '新闻中心', '新闻中心', '新闻中心,关键字', '新闻中心的描述。', 'demoupfiles/image/12866784480.jpg', 0, 0, '', 'news/', 'demotemp/default.htm', 'demotemp/inside/onepage/news.htm', 20, NULL, NULL, NULL, 1, 0, 0, 0, 2, 2, 2, 1286678455, 1286678455, 1, 0, 0, -1, 1, 1, 1, 0, 0, 1, 'zh-cn', 0),
(3, 0, 0, 1, 3, 0, 0, '产品展示', '产品展示', '产品展示,关键字', '产品展示的描述。', 'demoupfiles/image/12866785460.jpg', 0, 0, '', 'products/', 'demotemp/default.htm', 'demotemp/inside/onepage/products.htm', 20, NULL, NULL, NULL, 1, 0, 0, 0, 3, 3, 3, 1286678551, 1286678551, 1, 0, 0, -1, 1, 1, 1, 0, 0, 1, 'zh-cn', 0),
(4, 0, 6, 1, 4, 3, 3, '客户案例', '客户案例', '客户案例,关键字', '客户案例的描述。', 'demoupfiles/image/12866786070.jpg', 0, 0, '', 'cases/', 'demotemp/default.htm', 'demotemp/inside/article[list]/list-cases.htm', 20, 'cases/ID.html', 'demotemp/default.htm', 'demotemp/inside/article[page]/default.htm', 1, 0, 0, 0, 4, 4, 4, 1286678946, 1286678610, 0, 0, 0, -1, 1, 1, 0, 0, 0, 1, 'zh-cn', 0),
(5, 0, 6, 1, 5, 3, 3, '常见问题', '常见问题', '常见问题,关键字', '常见问题的描述。', 'demoupfiles/image/12866786230.jpg', 0, 0, '', 'faq/', 'demotemp/default.htm', 'demotemp/inside/article[list]/list.htm', 20, 'faq/ID.html', 'demotemp/default.htm', 'demotemp/inside/article[page]/default.htm', 1, 0, 0, 0, 5, 5, 5, 1286678625, 1286678625, 0, 0, 0, -1, 1, 1, 0, 0, 0, 1, 'zh-cn', 0),
(6, 0, -1, 1, 6, 0, 0, '留言反馈', '留言反馈', '留言反馈,关键字', '留言反馈的描述。', '', 0, 0, NULL, '/feedback/', NULL, NULL, 20, NULL, NULL, NULL, 1, 0, 0, 0, 6, 6, 6, 1286677482, 1286677482, 0, 0, 0, -1, 1, 1, 0, 0, 0, 1, 'zh-cn', 0),
(7, 0, 0, 1, 7, 0, 0, '关于我们', '关于我们', '关于我们,关键字', '关于我们的描述。', 'demoupfiles/image/12866786460.jpg', 0, 1, '<p>\r\n	互联网的应用普及造就了网络营销时代的开始，KingCMS为<strong>企业</strong>带来实在的效益，不但降低了企业应用电子商务的门槛，也减少了企业IT投资成本；KingCMS为<strong>网络从业/创业者</strong>带来实质的功效，免除建立网站写代码的技术门槛，让网站变得更加便捷和灵活。\r\n</p>\r\n<p>\r\n	<strong>KingCMS的特色及应用优势</strong>，5年，KingCMS升级了5次系统内核，这在网站内容管理系统(CMS)属于极度罕见现象。此时，KingCMS拥有更加优秀强大的内核，让各位网站主在网络营销的时代处于领先的位置。<strong>KingCMS的使命</strong>：为成功模式寻找更多运营者。\r\n</p>\r\n<h3>KingCMS版本及大事记</h3>\r\n<ul>\r\n	<li>\r\n		2005 发布ActiveCMS 内容管理系统\r\n	</li>\r\n	<li>\r\n		2005 发布ActiveCMS 2.0 内容管理系统\r\n	</li>\r\n	<li>\r\n		2007 发布KingCMS第一个版本，即KingCMS3.0，版本沿用ActiveCMS命名\r\n	</li>\r\n	<li>\r\n		2008 KingCMS 5.0发布\r\n	</li>\r\n	<li>\r\n		2009.5.8 KingCMS第一个PHP版CMS发布，开发版本号: 6.0\r\n	</li>\r\n	<li>\r\n		2009.7.8 KingCMS 5.1LTS发布\r\n	</li>\r\n	<li>\r\n		2010.3.12 KingCMS 企业版PHP正式版 6.0.813 发布\r\n	</li>\r\n	<li>\r\n		2010.7.1 启动唯众网络(Focuznet)公司作为开始正式商业化运作的标志\r\n	</li>\r\n	<li>\r\n		2010.9.1 KingCMS官网运用8.0内核进行整体改版，并启用轻骑士作为中文名\r\n	</li>\r\n</ul>', 'about/', 'demotemp/default.htm', 'demotemp/inside/onepage/onepage.htm', 20, NULL, NULL, NULL, 1, 0, 0, 0, 7, 7, 7, 1286678650, 1286678650, 1, 0, 0, -1, 1, 1, 1, 0, 0, 1, 'zh-cn', 0),
(8, 2, 6, 1, 8, 23, 23, '行业新闻', '行业新闻', '行业新闻,关键字', '行业新闻的描述。', 'demoupfiles/image/12866784480.jpg', 0, 0, '', 'news/industry/', 'demotemp/default.htm', 'demotemp/inside/article[list]/list.htm', 20, 'news/ID.html', 'demotemp/default.htm', 'demotemp/inside/article[page]/default.htm', 1, 0, 0, 0, 8, 8, 8, 1286682330, 1286678488, 0, 0, 0, -1, 1, 1, 0, 0, 0, 1, 'zh-cn', 0),
(9, 2, 6, 1, 9, 10, 10, '公司新闻', '公司新闻', '公司新闻,关键字', '公司新闻的描述。', 'demoupfiles/image/12866784480.jpg', 0, 0, '', 'news/company/', 'demotemp/default.htm', 'demotemp/inside/article[list]/list.htm', 20, 'news/ID.html', 'demotemp/default.htm', 'demotemp/inside/article[page]/default.htm', 1, 0, 0, 0, 9, 9, 9, 1286678769, 1286678507, 0, 0, 0, -1, 1, 1, 0, 0, 0, 1, 'zh-cn', 0),
(10, 3, 7, 1, 10, 5, 5, '授权服务', '授权服务', '授权服务,关键字', '授权服务的描述。', 'demoupfiles/image/12866785460.jpg', 0, 0, '', 'products/cert/', 'demotemp/default.htm', 'demotemp/inside/product[list]/list.htm', 10, 'products/ID.html', 'demotemp/default.htm', 'demotemp/inside/product[page]/content.htm', 1, 2, 2, 0, 10, 10, 10, 1286679349, 1286678570, 0, 0, 0, -1, 1, 1, 0, 0, 0, 1, 'zh-cn', 0),
(11, 3, 7, 1, 11, 3, 3, '建站服务', '建站服务', '建站服务,关键字', '建站服务的描述。', 'demoupfiles/image/12866785460.jpg', 0, 0, '', 'products/site/', 'demotemp/default.htm', 'demotemp/inside/product[list]/list.htm', 10, 'products/ID.html', 'demotemp/default.htm', 'demotemp/inside/product[page]/content.htm', 1, 2, 2, 0, 11, 11, 11, 1286679508, 1286678589, 0, 0, 0, -1, 1, 1, 0, 0, 0, 1, 'zh-cn', 0),
(12, 7, 0, 1, 12, 0, 0, '支付方式', '支付方式', '支付方式,关键字', '支付方式的描述。', '', 0, 1, '<h3>支付宝</h3>\r\n<p>\r\n	帐户： Gougliang@Gmail.com\r\n</p>\r\n<h3>工商银行</h3>\r\n<p>\r\n	开户行：工商银行广州分行<br />\r\n	开户名：梁远辉<br />\r\n	卡&nbsp; 号：<span style="color:#000000;">9558<span style="color:#ff0000;">8036</span>0213<span style="color:#ff0000;">8583</span>489</span>\r\n</p>\r\n<p></p>\r\n<h3>招商银行</h3>\r\n<p></p>\r\n<p>\r\n	开户行：招商银行广州分行<br />\r\n	开户名：梁远辉<br />\r\n	卡&nbsp; 号：6225<span style="color:#ff0000;">8820</span>1021<span style="color:#ff0000;">4556</span>\r\n</p>\r\n<p></p>\r\n<h3>农业银行</h3>\r\n<p>\r\n	开户行：农业银行广州分行<br />\r\n	开户名：梁远辉<br />\r\n	卡&nbsp; 号：9559<span style="color:#ff0000;">9800</span>8560<span style="color:#ff0000;">7655</span>512\r\n</p>\r\n<h3>建设银行</h3>\r\n<p>\r\n	开户行：建设银行广州分行<br />\r\n	开户名：梁远辉<br />\r\n	卡&nbsp; 号：4367<span style="color:#ff0000;">4233</span>2465<span style="color:#ff0000;">0739</span>131\r\n</p>\r\n<h3>公司帐号<br />\r\n</h3>\r\n<p>\r\n	开户行：工商银行广州分行北京路支行<br />\r\n	开户名：广州唯众网络科技有限公司<br />\r\n	帐&nbsp; 号：3602<span style="color:#ff0000;">0009</span>0920<span style="color:#ff0000;">0151</span>672\r\n</p>\r\n<h3>建议您</h3>\r\n<p>\r\n	如果有淘宝帐户，尽量用淘宝直接转账，免去手续费；若没有淘宝帐户，建议您工行在线转账，因为可以在线查询，马上可以查到。 \r\n</p>\r\n<p>\r\n	如果您是在工行或中行进行了汇款操作，请把汇款单扫描或用数码相机拍照后发给我们，以便确认；若汇款额为200元，建议您多汇几分钱，如200.02等，以区分其他汇款人。这个不仅方便我们迅速进行确认，同时也保护了您的利益。 \r\n</p>', 'payment/', 'demotemp/default.htm', 'demotemp/inside/onepage/onepage.htm', 20, NULL, NULL, NULL, 1, 0, 0, 0, 12, 12, 12, 1286629665, 1286629665, 0, 0, 0, -1, 1, 1, 1, 0, 0, 1, 'zh-cn', 0),
(13, 7, 0, 1, 13, 0, 0, '联系我们', '联系我们', '联系我们,关键字', '联系我们的描述。', '', 0, 1, '<p>\r\n	广州唯众网络科技有限公司\r\n</p>\r\n<p>\r\n	联系邮箱：<a href="mailto:service@kingcms.com">service@kingcms.com</a>\r\n</p>\r\n<p>\r\n	业务咨询QQ：<a href="http://wpa.qq.com/msgrd?v=3&amp;uin=18122895&amp;site=qq&amp;menu=yes" target="_blank"><img title="点击这里给我发消息" border="0" alt="点击这里给我发消息" src="http://wpa.qq.com/pa?p=2:18122895:41" /></a>\r\n</p>\r\n<p>\r\n	联系电话：020-38620495<br />\r\n	公司传真：020-39319743\r\n</p>\r\n<p>\r\n	<span style="color:#ff3300;">以上联系方式均不提供免费的技术问答服务，有疑问请到<a href="http://www.kingcms.com/forums/" target="_blank">论坛</a>相应的板块去发表。</span>\r\n</p>', 'contact/', 'demotemp/default.htm', 'demotemp/inside/onepage/onepage.htm', 20, NULL, NULL, NULL, 1, 0, 0, 0, 13, 13, 13, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 1, 'zh-cn', 0),
(14, 7, 0, 1, 14, 0, 0, '关于演示模板的声明', '关于演示模板的声明', '关于,演示模板,声明', '关于演示模板的声明的描述。', '', 0, 1, '<p>\r\n	亲爱的用户：\r\n</p>\r\n<p>\r\n	你正在使用的是KingCMS 企业版(PHP)的演示模板，本模板所有权是属于KingCMS，仅供学习标签和模板制作用途。如果你需要使用该模板建站，请向我们购买KingCMS 企业版(PHP)授权，购买授权即享有该模板的使用权。\r\n</p>\r\n<p>\r\n	购买方法：<a href="http://www.kingcms.com/download/php/" target="_blank">点击这里进行在线支付</a> | <a href="http://www.kingcms.com/payment/" target="_blank">更多付款方式</a>\r\n</p>', 'statement/', 'demotemp/default.htm', 'demotemp/inside/onepage/onepage.htm', 20, NULL, NULL, NULL, 1, 0, 0, 0, 14, 14, 14, 1286641587, 1286641587, 0, 0, 0, -1, 1, 1, 1, 0, 0, 1, 'zh-cn', 0);

-- --------------------------------------------------------

--
-- 表的结构 `king_list_editor`
--

CREATE TABLE IF NOT EXISTS `king_list_editor` (
  `kid` int(11) NOT NULL auto_increment,
  `listid` int(11) NOT NULL default '0',
  `userid` int(11) NOT NULL default '0',
  `issub` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`kid`),
  KEY `listid` (`listid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `king_list_editor`
--


-- --------------------------------------------------------

--
-- 表的结构 `king_lnk`
--

CREATE TABLE IF NOT EXISTS `king_lnk` (
  `kid` int(11) NOT NULL auto_increment,
  `kname` char(20) default NULL,
  `ktitle` char(100) default NULL,
  `kpath` char(100) default NULL,
  `konclick` char(255) default NULL,
  `adminid` int(11) NOT NULL default '0',
  `kimage` char(100) default NULL,
  `isblank` tinyint(1) NOT NULL default '0',
  `norder` int(11) NOT NULL default '0',
  `isflo` tinyint(1) NOT NULL default '0',
  `ntop` smallint(4) NOT NULL default '50',
  `nleft` smallint(4) NOT NULL default '300',
  PRIMARY KEY  (`kid`),
  KEY `adminid` (`adminid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `king_lnk`
--

INSERT INTO `king_lnk` (`kid`, `kname`, `ktitle`, `kpath`, `konclick`, `adminid`, `kimage`, `isblank`, `norder`, `isflo`, `ntop`, `nleft`) VALUES
(1, '栏目管理', '栏目管理中心', '../portal/manage.php', '', 1, 'panel.gif', 0, 10, 0, 50, 300),
(2, '爬虫管理', '爬虫访问管理', '../system/manage.php?action=bot', '', 1, 'bot.gif', 0, 9, 0, 50, 300),
(3, '管理日志', '管理员访问操作日志', '../system/manage.php?action=log', '', 1, 'log.gif', 0, 8, 0, 50, 300),
(4, '附件管理', '已上传文件管理', '../system/manage.php?action=upfile', '', 1, 'upfile.gif', 0, 7, 0, 50, 300),
(5, '首选项', 'CMS系统参数设置', '../system/manage.php?action=config', '', 1, 'system.gif', 0, 6, 0, 50, 300),
(6, '管理员', '管理员信息及密码设置', '../system/manage.php?action=admin', '', 1, 'admin.gif', 0, 5, 0, 50, 300),
(7, '模块管理', '模块管理', '../system/manage.php?action=module', '', 1, 'module.gif', 0, 4, 0, 50, 300),
(8, 'KingCMS', 'KingCMS官方网站', 'http://www.kingcms.com/', '', 1, 'lnk.gif', 1, 3, 0, 50, 300),
(9, 'Forums', 'KingCMS论坛', 'http://bbs.kingcms.com/', '', 1, 'lnk.gif', 1, 2, 0, 50, 300);

-- --------------------------------------------------------

--
-- 表的结构 `king_log`
--

CREATE TABLE IF NOT EXISTS `king_log` (
  `kid` int(11) NOT NULL auto_increment,
  `adminname` char(12) NOT NULL,
  `nip` int(10) NOT NULL default '0',
  `nlog` tinyint(2) NOT NULL default '0',
  `ktext` char(100) default NULL,
  `ndate` int(10) NOT NULL default '0',
  PRIMARY KEY  (`kid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=248 ;

--
-- 转存表中的数据 `king_log`
--

INSERT INTO `king_log` (`kid`, `adminname`, `nip`, `nlog`, `ktext`, `ndate`) VALUES
(1, 'admin', 1032613365, 1, 'admin', 1286513364),
(2, 'admin', 1032613365, 5, 'Module : portal', 1286513370),
(3, 'admin', 1032613365, 5, 'Module : block', 1286513377),
(4, 'admin', 1032613365, 5, 'Module : feedback', 1286513404),
(5, 'admin', 1032613365, 7, 'ListName:首页', 1286513718),
(6, 'admin', 1032613365, 7, '网站参数设置', 1286513734),
(7, 'admin', 1032613365, 7, 'ListName:首页', 1286514346),
(8, 'admin', 1032613365, 5, 'ListName:新闻中心', 1286514854),
(9, 'admin', 1032613365, 5, 'ListName:产品展示', 1286514924),
(10, 'admin', 1032613365, 5, 'ListName:客户案例', 1286515013),
(11, 'admin', 1032613365, 5, 'ListName:常见问题', 1286515108),
(12, 'admin', 1032613365, 5, 'ListName:留言反馈', 1286515161),
(13, 'admin', 1032613365, 5, 'ListName:关于我们', 1286515263),
(14, 'admin', 1032613365, 7, 'ListName:网站首页', 1286516575),
(15, 'admin', 1032613365, 7, 'ListName:网站首页', 1286517264),
(16, 'admin', 1032613365, 7, '网站参数设置', 1286517766),
(17, 'admin', 1032613365, 5, 'ListName:行业新闻', 1286518833),
(18, 'admin', 1032613365, 5, 'ListName:公司新闻', 1286518942),
(19, 'admin', 1032613365, 1, 'admin', 1286519111),
(20, 'admin', 1032613365, 5, 'article:什么CMS的SEO最好？', 1286519844),
(21, 'admin', 1032613365, 7, 'ListName:行业新闻', 1286519943),
(22, 'admin', 1032613365, 5, 'article:腾讯推“QQ通行证” 实现手机业务一键通', 1286520045),
(23, 'admin', 1032613365, 5, 'article:如何选择合适的CMS？', 1286520070),
(24, 'admin', 1032613365, 5, 'article:什么是CMS建站', 1286520098),
(25, 'admin', 1032613365, 5, 'article:KingCMS官网网站', 1286520205),
(26, 'admin', 1032613365, 7, 'article:KingCMS官方网站', 1286520324),
(27, 'admin', 1032613365, 7, 'article:什么CMS的SEO最好？', 1286520377),
(28, 'admin', 1032613365, 5, 'article:CMS十万个为什么', 1286520492),
(29, 'admin', 1032613365, 5, 'article:KingCMS官方演示网站', 1286520523),
(30, 'admin', 1032613365, 5, 'article:雅虎将推iPhone视频应用：挑战苹果', 1286520576),
(31, 'admin', 1032613365, 7, 'ListName:公司新闻', 1286520611),
(32, 'admin', 1032613365, 5, 'article:KingCMS新版官网调试中', 1286520642),
(33, 'admin', 1032613365, 5, 'article:论坛在线等级改进', 1286520660),
(34, 'admin', 1032613365, 5, 'article:调整论坛帖子显示次序及奖励金币功能', 1286520690),
(35, 'admin', 1032613365, 5, 'article:谷歌因投诉处理不及时被美国商业促进会评为C级', 1286520756),
(36, 'admin', 1032613365, 7, 'ListName:新闻中心', 1286520823),
(37, 'admin', 1032613365, 5, 'article:微软下周二发布16个补丁 修复49个安全漏洞', 1286520835),
(38, 'admin', 1032613365, 5, 'article:陈天桥：欣赏360 用户安全永远第一', 1286521171),
(39, 'admin', 1032613365, 5, 'article:美FTC前员工对谷歌提起隐私权诉讼', 1286521246),
(40, 'admin', 1032613365, 5, 'article:明年苹果iPad销量将达4500万台 进账300亿美元', 1286521311),
(41, 'admin', 1032613365, 5, 'article:评论：如果微软联手Adobe为针对苹果 就狭隘了', 1286521414),
(42, 'admin', 1032613365, 5, 'article:亚马逊欲开Android应用程序商店与谷歌竞争', 1286521478),
(43, 'admin', 1032613365, 5, 'ListName:授权服务', 1286521537),
(44, 'admin', 1032613365, 7, 'ListName:授权服务', 1286521548),
(45, 'admin', 1032613365, 5, 'ListName:建站服务', 1286521617),
(46, 'admin', 1032613365, 5, 'article:无论是门户还是搜索 中国雅虎都难以东山再起', 1286521670),
(47, 'admin', 1032613365, 5, 'product:KingCMS 企业版(ASP)授权服务', 1286521702),
(48, 'admin', 1032613365, 5, 'product:KingCMS 企业版(PHP)授权服务', 1286521726),
(49, 'admin', 1032613365, 7, 'product:KingCMS 企业版(ASP)授权服务', 1286521736),
(50, 'admin', 1032613365, 5, 'product:KingCMS 地方门户版', 1286521771),
(51, 'admin', 1032613365, 7, 'product:KingCMS 地方门户商铺版', 1286521792),
(52, 'admin', 1032613365, 5, 'product:KingCMS 地方门户房产版', 1286521816),
(53, 'admin', 1032613365, 5, 'product:KingCMS 地方门户人才版', 1286521831),
(54, 'admin', 1032613365, 7, 'product:企业版(ASP)授权服务', 1286521862),
(55, 'admin', 1032613365, 7, 'product:企业版(PHP)授权服务', 1286521869),
(56, 'admin', 1032613365, 7, 'product:地方门户商铺版', 1286521876),
(57, 'admin', 1032613365, 7, 'product:地方门户房产版', 1286521882),
(58, 'admin', 1032613365, 7, 'product:地方门户人才版', 1286521887),
(59, 'admin', 1032613365, 7, 'product:企业版(PHP)', 1286521902),
(60, 'admin', 1032613365, 7, 'product:企业版(ASP)授权', 1286521909),
(61, 'admin', 1032613365, 5, 'product:标准型建站', 1286521927),
(62, 'admin', 1032613365, 5, 'article:“大闸蟹”恶斗百度排名：置顶点击一次200元', 1286521939),
(63, 'admin', 1032613365, 5, 'product:专业型建站', 1286521945),
(64, 'admin', 1032613365, 7, 'product:专业型建站', 1286521953),
(65, 'admin', 1032613365, 7, 'ListName:授权服务', 1286522235),
(66, 'admin', 1032613365, 7, 'ListName:行业新闻', 1286522551),
(67, 'admin', 1032613365, 5, 'article:PHP开发利器——NetBeans', 1286522564),
(68, 'admin', 1032613365, 5, 'article:KingCMS地方门户版2.0部分管理模式截图', 1286522659),
(69, 'admin', 1032613365, 7, 'article:争做人气王，狂赚更多金币！', 1286522796),
(70, 'admin', 1032613365, 5, 'article:自助领取VIP勋章,下载模板Admin买单', 1286522871),
(71, 'admin', 1032613365, 5, 'article:关于论坛积分、人气值、金币和文件上传大小的说明', 1286522936),
(72, 'admin', 1032613365, 5, 'article:为论坛会员Winnerzyy颁发特殊贡献勋章', 1286523012),
(73, 'admin', 1032613365, 7, 'product:基于KingCMS专业型建站', 1286523070),
(74, 'admin', 1032613365, 5, 'article:今天是你的生日，我的祖国', 1286523119),
(75, 'admin', 1032613365, 5, 'article:史上最疯狂的赚金币活动“全民推广KingCMS”开展了！', 1286523210),
(76, 'admin', 1032613365, 5, 'article:网络营销中常用的十种有效方法', 1286523991),
(77, 'admin', 1032613365, 5, 'article:Zynga首席设计师解密开心农场成功原因：结构简单', 1286527541),
(78, 'admin', 1032613365, 5, 'article:盖茨：给孩子留几十亿对社会不利', 1286527689),
(79, 'admin', 1032613365, 5, 'article:PayPal面向iPhone推出拍照存支票功能', 1286527784),
(80, 'admin', 1032613365, 5, 'article:百事副总裁董本洪离职 将任贰点零互动CEO', 1286527883),
(81, 'admin', 1032613365, 5, 'article:分析称谷歌第三季营收和利润将双双大幅增长', 1286528030),
(82, 'admin', 1032613365, 5, 'article:麦当劳试水社交游戏营销：美版开心农场投广告', 1286528123),
(83, 'admin', 1032613365, 5, 'article:IE浏览器市占率降至50%以下 未来还将下降', 1286528206),
(84, 'admin', 1032613365, 5, 'article:微博流行词中的围脖文化', 1286528302),
(85, 'admin', 1032613365, 5, 'article:马云：超越微软和沃尔玛是阿里巴巴的使命', 1286528400),
(86, 'admin', 1032613365, 5, 'article:电影营销成功案例：台北斥巨资整复剥皮寮老街', 1286528515),
(87, 'admin', 1032613365, 5, 'article:马云：活着努力远比死后裸捐重要', 1286528571),
(88, 'admin', 1032613365, 7, 'article:CNN称SNS成美国网络新闻分享主渠道', 1286528672),
(89, 'admin', 1032613365, 1, 'admin', 1286532447),
(90, 'admin', 2000029512, 1, 'admin', 1286532877),
(91, 'admin', 2000029512, 7, 'product:基于KingCMS专业型建站', 1286536137),
(92, 'admin', 2000029512, 7, 'product:标准型建站', 1286536147),
(93, 'admin', 2000029512, 7, 'ListName:关于我们', 1286536205),
(94, 'admin', 2000029512, 1, 'admin', 1286543110),
(95, 'admin', 2000029512, 5, 'Field:产品图片', 1286543236),
(96, 'admin', 2000029512, 7, 'product:地方门户人才版', 1286543298),
(97, 'admin', 2000029512, 7, 'product:地方门户房产版', 1286543378),
(98, 'admin', 2000029512, 7, 'product:地方门户商铺版', 1286543389),
(99, 'admin', 2000029512, 7, 'product:企业版(PHP)', 1286543454),
(100, 'admin', 2000029512, 7, 'product:企业版(ASP)授权', 1286543467),
(101, 'admin', 2000029512, 7, 'product:基于KingCMS专业型建站', 1286543494),
(102, 'admin', 2000029512, 7, 'product:标准型建站', 1286543528),
(103, 'admin', 2000029512, 7, 'product:地方门户房产版', 1286543552),
(104, 'admin', 1032613365, 1, 'admin', 1286543711),
(105, 'admin', 2000029512, 7, 'product:地方门户人才版', 1286543842),
(106, 'admin', 2000029512, 7, 'product:地方门户房产版', 1286543892),
(107, 'admin', 2000029512, 7, 'product:地方门户商铺版', 1286543900),
(108, 'admin', 2000029512, 7, 'product:企业版(PHP)', 1286543909),
(109, 'admin', 2000029512, 7, 'product:企业版(ASP)授权', 1286543918),
(110, 'admin', 2000029512, 7, 'product:地方门户人才版', 1286544454),
(111, 'admin', 1032613365, 5, 'product:经济型建站', 1286544548),
(112, 'admin', 2000029512, 7, 'product:经济型建站', 1286544698),
(113, 'admin', 1032613365, 7, 'ListName:网站首页', 1286544705),
(114, 'admin', 2000029512, 7, 'product:经济型建站', 1286544920),
(115, 'admin', 2000029512, 7, 'product:基于KingCMS专业型建站', 1286544937),
(116, 'admin', 1032613365, 7, 'article:史上最疯狂的赚金币活动“全民推广KingCMS”开展了！', 1286546684),
(117, 'admin', 1032613365, 7, 'product:标准型建站', 1286547300),
(118, 'admin', 1032613365, 7, 'ListName:建站服务', 1286548909),
(119, 'admin', 1032613365, 7, 'article:KingCMS地方门户版2.0部分管理模式截图', 1286550688),
(120, 'admin', 1032613365, 7, 'article:史上最疯狂的赚金币活动“全民推广KingCMS”开展了！', 1286550711),
(121, 'admin', 1032613365, 7, 'product:地方门户人才版', 1286551010),
(122, 'admin', 1032613365, 7, 'product:地方门户房产版', 1286551018),
(123, 'admin', 1032613365, 7, 'product:企业版(PHP)', 1286551023),
(124, 'admin', 1032613365, 7, 'product:企业版(ASP)授权', 1286551029),
(125, 'admin', 1032613365, 7, 'product:经济型建站', 1286551037),
(126, 'admin', 1032613365, 7, 'product:基于KingCMS专业型建站', 1286551043),
(127, 'admin', 1032613365, 7, '网站参数设置', 1286551321),
(128, 'admin', 1032613365, 7, 'ListName:关于我们', 1286552143),
(129, 'admin', 1032613365, 7, 'ListName:客户案例', 1286552234),
(130, 'admin', 1032613365, 7, 'article:KingCMS官方演示网站', 1286552287),
(131, 'admin', 1032613365, 7, 'article:CMS十万个为什么', 1286552321),
(132, 'admin', 1032613365, 7, 'article:KingCMS官方网站', 1286552352),
(133, 'admin', 1032613365, 7, 'ListName:常见问题', 1286552395),
(134, 'admin', 1032613365, 7, 'ListName:行业新闻', 1286554633),
(135, 'admin', 1032613365, 7, 'ListName:公司新闻', 1286554641),
(136, 'admin', 1032613365, 7, 'ListName:常见问题', 1286554659),
(137, 'admin', 1032613365, 7, 'ListName:客户案例', 1286554670),
(138, 'admin', 1032613365, 1, 'admin', 1286556529),
(139, 'admin', 1032613365, 7, 'ListName:网站首页', 1286556537),
(140, 'admin', 2000036788, 1, 'admin', 1286608953),
(141, 'admin', 1032613365, 1, 'admin', 1286610945),
(142, 'admin', 1032613365, 7, 'ListName:网站首页', 1286616647),
(143, 'admin', 1032613365, 7, 'product:企业版(ASP)授权', 1286619439),
(144, 'admin', 1032613365, 7, 'product:企业版(ASP)授权', 1286619489),
(145, 'admin', 1032613365, 7, 'product:企业版(PHP)', 1286619592),
(146, 'admin', 1032613365, 7, '网站参数设置', 1286620159),
(147, 'admin', 1032613365, 7, 'ListName:关于我们', 1286621148),
(148, 'admin', 1032613365, 1, 'admin', 1286625964),
(149, 'admin', 1032613365, 1, 'admin', 1286626205),
(150, 'admin', 1032613365, 7, 'ListName:新闻中心', 1286626212),
(151, 'admin', 1032613365, 7, 'ListName:行业新闻', 1286626219),
(152, 'admin', 1032613365, 7, 'ListName:公司新闻', 1286626225),
(153, 'admin', 1032613365, 7, 'ListName:产品展示', 1286626255),
(154, 'admin', 1032613365, 7, 'ListName:授权服务', 1286626262),
(155, 'admin', 1032613365, 7, 'ListName:建站服务', 1286626267),
(156, 'admin', 1032613365, 7, 'ListName:客户案例', 1286626284),
(157, 'admin', 1032613365, 7, 'ListName:常见问题', 1286626302),
(158, 'admin', 1032613365, 7, 'ListName:留言反馈', 1286626317),
(159, 'admin', 1032613365, 7, 'ListName:关于我们', 1286626337),
(160, 'admin', 1032613365, 7, '网站参数设置', 1286626876),
(161, 'admin', 1032613365, 7, '网站参数设置', 1286627015),
(162, 'admin', 1032613365, 7, 'ListName:关于我们', 1286629337),
(163, 'admin', 1032613365, 5, 'ListName:支付方式', 1286629487),
(164, 'admin', 1032613365, 7, 'ListName:支付方式', 1286629539),
(165, 'admin', 1032613365, 7, 'ListName:支付方式', 1286629665),
(166, 'admin', 1032613365, 5, 'ListName:联系我们', 1286629903),
(167, 'admin', 1032613365, 7, '网站参数设置', 1286635441),
(168, 'admin', 1032613365, 7, 'Model:论坛', 1286635992),
(169, 'admin', 1032613365, 7, 'Model:文章', 1286636005),
(170, 'admin', 1032613365, 7, 'Model:产品', 1286636016),
(171, 'admin', 1032613365, 7, 'Model:商城', 1286636029),
(172, 'admin', 1032613365, 7, '网站参数设置', 1286636119),
(173, 'admin', 1032613365, 7, '网站参数设置', 1286636138),
(174, 'admin', 1032613365, 7, 'Model:文章', 1286636526),
(175, 'admin', 1032613365, 7, 'product:地方门户v2.0', 1286637238),
(176, 'admin', 1032613365, 7, 'product:地方门户v3.0', 1286637248),
(177, 'admin', 1032613365, 7, 'product:地方门户v4.0', 1286637259),
(178, 'admin', 1032613365, 7, 'product:基于KingCMS专业型建站', 1286637296),
(179, 'admin', 1032613365, 5, 'ListName:关于演示模板的声明', 1286641565),
(180, 'admin', 1032613365, 7, 'ListName:关于演示模板的声明', 1286641587),
(181, 'admin', 1032612962, 1, 'admin', 1286675731),
(182, 'admin', 1032612962, 2, 'admin', 1286676171),
(183, 'admin', 1032612962, 1, 'admin', 1286676176),
(184, 'admin', 1032612962, 1, 'admin', 1286677350),
(185, 'admin', 1032612962, 7, 'ListName:新闻中心', 1286677408),
(186, 'admin', 1032612962, 7, 'ListName:行业新闻', 1286677425),
(187, 'admin', 1032612962, 7, 'ListName:公司新闻', 1286677434),
(188, 'admin', 1032612962, 7, 'ListName:产品展示', 1286677442),
(189, 'admin', 1032612962, 7, 'ListName:授权服务', 1286677450),
(190, 'admin', 1032612962, 7, 'ListName:建站服务', 1286677457),
(191, 'admin', 1032612962, 7, 'ListName:客户案例', 1286677466),
(192, 'admin', 1032612962, 7, 'ListName:常见问题', 1286677475),
(193, 'admin', 1032612962, 7, 'ListName:留言反馈', 1286677482),
(194, 'admin', 1032612962, 7, 'ListName:关于我们', 1286677488),
(195, 'admin', 1032612962, 7, 'product:地方门户v4.0', 1286677551),
(196, 'admin', 1032612962, 7, 'product:地方门户v3.0', 1286677623),
(197, 'admin', 1032612962, 7, 'product:地方门户v2.0', 1286677645),
(198, 'admin', 1032612962, 7, 'product:企业版(PHP)', 1286677712),
(199, 'admin', 1032612962, 7, 'product:企业版(ASP)授权', 1286677749),
(200, 'admin', 1032612962, 7, 'product:经济型建站', 1286677812),
(201, 'admin', 1032612962, 7, 'article:KingCMS官方演示网站', 1286677834),
(202, 'admin', 1032612962, 7, 'article:CMS十万个为什么', 1286677841),
(203, 'admin', 1032612962, 7, 'article:KingCMS官方网站', 1286677848),
(204, 'admin', 1032612962, 7, 'article:史上最疯狂的赚金币活动“全民推广KingCMS”开展了！', 1286678007),
(205, 'admin', 1032612962, 7, 'article:KingCMS地方门户版2.0部分管理模式截图', 1286678015),
(206, 'admin', 1032612962, 7, '网站参数设置', 1286678324),
(207, 'admin', 1032612962, 7, 'ListName:新闻中心', 1286678455),
(208, 'admin', 1032612962, 7, 'ListName:行业新闻', 1286678488),
(209, 'admin', 1032612962, 7, 'ListName:公司新闻', 1286678507),
(210, 'admin', 1032612962, 7, 'ListName:产品展示', 1286678551),
(211, 'admin', 1032612962, 7, 'ListName:授权服务', 1286678570),
(212, 'admin', 1032612962, 7, 'ListName:建站服务', 1286678589),
(213, 'admin', 1032612962, 7, 'ListName:客户案例', 1286678610),
(214, 'admin', 1032612962, 7, 'ListName:常见问题', 1286678625),
(215, 'admin', 1032612962, 7, 'ListName:关于我们', 1286678650),
(216, 'admin', 1032612962, 7, 'article:史上最疯狂的赚金币活动“全民推广KingCMS”开展了！', 1286678737),
(217, 'admin', 1032612962, 7, 'article:KingCMS地方门户版2.0部分管理模式截图', 1286678769),
(218, 'admin', 1032612962, 7, 'article:KingCMS官方演示网站', 1286678908),
(219, 'admin', 1032612962, 7, 'article:CMS十万个为什么', 1286678926),
(220, 'admin', 1032612962, 7, 'article:KingCMS官方网站', 1286678946),
(221, 'admin', 1032612962, 7, 'product:地方门户v4.0', 1286679068),
(222, 'admin', 1032612962, 7, 'product:地方门户v3.0', 1286679140),
(223, 'admin', 1032612962, 7, 'product:地方门户v2.0', 1286679197),
(224, 'admin', 1032612962, 7, 'product:企业版(PHP)', 1286679265),
(225, 'admin', 1032612962, 7, 'product:企业版(ASP)授权', 1286679349),
(226, 'admin', 1032612962, 7, 'product:经济型建站', 1286679399),
(227, 'admin', 1032612962, 7, 'product:基于KingCMS专业型建站', 1286679469),
(228, 'admin', 1032612962, 7, 'product:标准型建站', 1286679508),
(229, 'admin', 1032612962, 7, 'article:马云：活着努力远比死后裸捐重要', 1286680035),
(230, 'admin', 1032612962, 3, 'admin', 1286680104),
(231, 'admin', 1032612962, 1, 'admin', 1286680121),
(232, 'admin', 1032612962, 1, 'admin', 1286681521),
(233, 'admin', 1032612962, 1, 'admin', 1286681875),
(234, 'admin', 1032612962, 7, 'AdminName:admin', 1286681906),
(235, 'admin', 1032612962, 4, 'admin', 1286681907),
(236, 'admin', 1032612962, 4, 'admin', 1286681909),
(237, 'admin', 1032612962, 1, 'admin', 1286681917),
(238, 'admin', 1032612962, 7, 'article:麦当劳试水社交游戏营销：美版开心农场投广告', 1286681974),
(239, 'admin', 1032612962, 2, 'admin', 1286682056),
(240, 'admin', 1032612962, 1, 'admin', 1286682060),
(241, 'admin', 1032612962, 7, 'article:盖茨：给孩子留几十亿对社会不利', 1286682132),
(242, 'admin', 1032612962, 7, 'article:马云：超越微软和沃尔玛是阿里巴巴的使命', 1286682330),
(243, 'admin', 1032612962, 1, 'admin', 1286683273),
(244, 'admin', 1032612962, 7, 'AdminName:admin', 1286684260),
(245, 'admin', 1032612962, 4, 'admin', 1286684261),
(246, 'admin', 1032612962, 1, 'admin', 1286684270),
(247, 'admin', 1032612962, 3, 'admin', 1286684297);

-- --------------------------------------------------------

--
-- 表的结构 `king_message`
--

CREATE TABLE IF NOT EXISTS `king_message` (
  `kid` int(11) NOT NULL auto_increment,
  `adminname` char(12) NOT NULL,
  `kmsg` char(100) NOT NULL,
  `ndate` int(10) NOT NULL default '0',
  `adminid` int(11) NOT NULL default '0',
  `issys` tinyint(1) NOT NULL default '0',
  `klink` char(100) default NULL,
  PRIMARY KEY  (`kid`),
  KEY `adminid` (`adminid`),
  KEY `issys` (`issys`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `king_message`
--

INSERT INTO `king_message` (`kid`, `adminname`, `kmsg`, `ndate`, `adminid`, `issys`, `klink`) VALUES
(1, 'Sin.CS', '感谢您选择使用KingCMS!', 1286513358, 0, 1, 'http://www.kingcms.com/');

-- --------------------------------------------------------

--
-- 表的结构 `king_model`
--

CREATE TABLE IF NOT EXISTS `king_model` (
  `modelid` int(11) NOT NULL auto_increment,
  `modelname` char(50) NOT NULL,
  `modeltable` char(50) NOT NULL,
  `norder` int(11) NOT NULL default '0',
  `klanguage` char(30) default NULL,
  `issearch` tinyint(1) NOT NULL default '0',
  `klistorder` char(255) default NULL,
  `kpageorder` char(255) default NULL,
  `nlocktime` int(11) NOT NULL default '0',
  `nshowtime` int(11) NOT NULL default '0',
  `ispublish1` tinyint(1) NOT NULL default '0',
  `ispublish2` tinyint(1) NOT NULL default '0',
  `nlistnumber` int(11) NOT NULL default '20',
  `npagenumber` int(11) NOT NULL default '1',
  `ktemplatepublish` char(255) default NULL,
  `ktemplatesearch` char(255) default NULL,
  `isid` tinyint(1) NOT NULL default '0',
  `ktemplatecomment` char(255) default NULL,
  `ncommentnumber` int(11) NOT NULL default '20',
  PRIMARY KEY  (`modelid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `king_model`
--

INSERT INTO `king_model` (`modelid`, `modelname`, `modeltable`, `norder`, `klanguage`, `issearch`, `klistorder`, `kpageorder`, `nlocktime`, `nshowtime`, `ispublish1`, `ispublish2`, `nlistnumber`, `npagenumber`, `ktemplatepublish`, `ktemplatesearch`, `isid`, `ktemplatecomment`, `ncommentnumber`) VALUES
(6, '文章', 'article', 1, 'zh-cn', 1, 'nup desc,norder desc', 'norder,kid', 24, 0, 0, 0, 20, 1, 'demotemp/default.htm', 'demotemp/search.htm', 1, 'demotemp/default.htm', 20),
(7, '产品', 'product', 2, 'zh-cn', 1, 'nup desc,norder desc', 'norder,kid', 0, 0, 2, 2, 10, 1, 'demotemp/default.htm', 'demotemp/default.htm', 1, 'demotemp/default.htm', 20),
(8, '商城', 'shop', 3, 'zh-cn', 1, 'nup desc,norder desc', 'norder,kid', 1, 0, 2, 2, 10, 1, 'demotemp/default.htm', 'demotemp/default.htm', 1, 'demotemp/default.htm', 20),
(9, '论坛', 'bbs', 4, 'zh-cn', 1, 'nup desc,nlastdate desc', 'kid1,kid', 24, 0, 1, 1, 20, 10, 'demotemp/default.htm', 'demotemp/default.htm', 1, 'demotemp/default.htm', 20);

-- --------------------------------------------------------

--
-- 表的结构 `king_module`
--

CREATE TABLE IF NOT EXISTS `king_module` (
  `kid` int(11) NOT NULL auto_increment,
  `kid1` int(11) NOT NULL default '0',
  `kname` char(50) NOT NULL,
  `kpath` char(50) NOT NULL,
  `islock` tinyint(1) NOT NULL default '0',
  `kdb` text,
  `ndate` int(10) NOT NULL default '0',
  `ndbver` smallint(3) NOT NULL default '100',
  `norder` int(11) NOT NULL default '0',
  `nshow` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`kid`),
  KEY `islock` (`islock`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `king_module`
--

INSERT INTO `king_module` (`kid`, `kid1`, `kname`, `kpath`, `islock`, `kdb`, `ndate`, `ndbver`, `norder`, `nshow`) VALUES
(1, 0, '内容管理', 'portal', 0, '', 1286513370, 103, 1, 1),
(2, 1, '用户系统', 'user', 0, '', 1286513370, 100, 2, 1),
(3, 0, '碎片', 'block', 0, '', 1286513377, 100, 3, 0),
(4, 0, '留言反馈', 'feedback', 0, '', 1286513404, 100, 4, 0);

-- --------------------------------------------------------

--
-- 表的结构 `king_orders`
--

CREATE TABLE IF NOT EXISTS `king_orders` (
  `oid` int(11) NOT NULL auto_increment,
  `ono` char(16) NOT NULL,
  `nstatus` tinyint(2) NOT NULL default '2',
  `kname` varchar(30) NOT NULL,
  `userid` int(11) NOT NULL default '0',
  `kcontent` text,
  `nnumber` int(11) NOT NULL default '0',
  `nip` int(10) NOT NULL default '0',
  `ndate` int(10) NOT NULL default '0',
  `npaydate` int(10) NOT NULL default '0',
  `nsenddate` int(10) NOT NULL default '0',
  `eid` int(11) NOT NULL default '0',
  `expressnumber` char(30) default NULL,
  `realname` char(30) NOT NULL,
  `useraddress` char(250) default NULL,
  `userpost` char(10) default NULL,
  `usertel` char(30) default NULL,
  `usermail` char(32) default NULL,
  `kremark` text,
  `kfeedback` char(255) default NULL,
  `ntotal` double NOT NULL default '0',
  `nexpress` double NOT NULL default '0',
  `nweight` int(11) NOT NULL default '0',
  `paymethod` varchar(32) default NULL,
  `tid` varchar(32) default NULL,
  `buyer_id` varchar(65) default NULL,
  `seller` varchar(65) default NULL,
  PRIMARY KEY  (`oid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `king_orders`
--


-- --------------------------------------------------------

--
-- 表的结构 `king_portal_log`
--

CREATE TABLE IF NOT EXISTS `king_portal_log` (
  `kid` int(11) NOT NULL auto_increment,
  `ktag` char(100) NOT NULL,
  `kimage` char(255) default NULL,
  `kkeywords` char(120) default NULL,
  `kdescription` char(255) default NULL,
  `kcolor` char(7) NOT NULL,
  `nsize` tinyint(2) NOT NULL default '12',
  `isbold` tinyint(1) NOT NULL default '0',
  `nhit` int(11) NOT NULL default '0',
  `nhitlate` int(11) NOT NULL default '0',
  `iscommend` tinyint(1) NOT NULL default '0',
  `norder` int(11) NOT NULL default '0',
  `ktemplate1` char(255) default NULL,
  `ktemplate2` char(255) default NULL,
  PRIMARY KEY  (`kid`),
  UNIQUE KEY `ktag` (`ktag`),
  KEY `iscommend` (`iscommend`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `king_portal_log`
--


-- --------------------------------------------------------

--
-- 表的结构 `king_site`
--

CREATE TABLE IF NOT EXISTS `king_site` (
  `siteid` int(11) NOT NULL auto_increment,
  `sitename` char(100) NOT NULL,
  `siteurl` char(100) default NULL,
  PRIMARY KEY  (`siteid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `king_site`
--

INSERT INTO `king_site` (`siteid`, `sitename`, `siteurl`) VALUES
(1, '默认', '');

-- --------------------------------------------------------

--
-- 表的结构 `king_system`
--

CREATE TABLE IF NOT EXISTS `king_system` (
  `kid` int(11) NOT NULL auto_increment,
  `cid` int(6) NOT NULL default '0',
  `isshow` tinyint(1) NOT NULL default '1',
  `issys` tinyint(1) NOT NULL default '1',
  `kname` char(50) NOT NULL,
  `norder` int(11) NOT NULL default '0',
  `kmodule` char(50) NOT NULL,
  `kvalue` text,
  `ntype` tinyint(1) NOT NULL default '0',
  `nvalidate` tinyint(1) NOT NULL default '0',
  `nsizemin` int(8) NOT NULL default '0',
  `nsizemax` int(8) NOT NULL default '0',
  `koption` text,
  `nstylewidth` smallint(4) NOT NULL default '0',
  `nstyleheight` smallint(4) NOT NULL default '0',
  `khelp` char(100) default NULL,
  PRIMARY KEY  (`kid`),
  UNIQUE KEY `kname` (`kname`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=75 ;

--
-- 转存表中的数据 `king_system`
--

INSERT INTO `king_system` (`kid`, `cid`, `isshow`, `issys`, `kname`, `norder`, `kmodule`, `kvalue`, `ntype`, `nvalidate`, `nsizemin`, `nsizemax`, `koption`, `nstylewidth`, `nstyleheight`, `khelp`) VALUES
(1, 0, 0, 1, 'dbver', 1, 'system', '104', 0, 0, 0, 0, NULL, 0, 0, NULL),
(2, 0, 0, 1, 'instdate', 2, 'system', '1286542158', 0, 0, 0, 0, NULL, 0, 0, NULL),
(3, 0, 0, 1, 'key', 3, 'system', 'wqpognb2gzdvusfow27mvqolj0nmih29', 0, 0, 0, 0, NULL, 0, 0, NULL),
(4, 0, 0, 1, 'version', 4, 'system', '1.0', 0, 0, 0, 0, NULL, 0, 0, NULL),
(5, 0, 0, 1, 'info', 5, 'system', '<span style="font:12px Arial">Powered by <a href="http://www.kingcms.com/" target="_blank" style="font:12px Verdana"><strong>King</strong>CMS</a></span>', 0, 0, 0, 0, NULL, 0, 0, NULL),
(6, 1, 1, 1, 'switch', 6, 'system', '1', 4, 0, 1, 1, '1|True\r\n0|False', 0, 0, ''),
(7, 1, 1, 1, 'sitename', 7, 'system', 'KingCMS企业版(PHP)演示站', 1, 0, 1, 200, '', 400, 0, ''),
(8, 1, 1, 1, 'siteurl', 8, 'system', '', 1, 0, 0, 200, '', 400, 0, 'help/siteurl'),
(9, 1, 1, 1, 'beian', 9, 'system', '粤ICP备08008106号', 1, 0, 0, 30, '', 200, 0, ''),
(10, 1, 1, 1, 'htmlframe1', 10, 'system', '1', 4, 2, 1, 1, '1|Table\r\n0|DIV(Div+Label)', 0, 0, ''),
(11, 1, 1, 1, 'htmlframe0', 11, 'system', '0', 4, 2, 1, 1, '1|Table\r\n0|DIV(Div+Label)', 0, 0, ''),
(12, 2, 1, 1, 'inst', 12, 'system', '/', 1, 0, 1, 30, '', 200, 0, ''),
(13, 2, 1, 1, 'file', 13, 'system', 'index.html', 1, 0, 1, 30, '', 200, 0, ''),
(14, 2, 1, 1, 'timediff', 14, 'system', '8', 1, 22, 1, 11, '', 50, 0, ''),
(15, 2, 1, 1, 'proptime', 15, 'system', '0.7', 1, 3, 1, 4, '', 50, 0, 'help/proptime'),
(16, 2, 1, 1, 'uppath', 16, 'system', 'demoupfiles', 1, 4, 1, 30, '', 100, 0, ''),
(17, 2, 1, 1, 'upimg', 17, 'system', 'jpg|png|gif', 1, 0, 0, 200, '', 400, 0, ''),
(18, 2, 1, 1, 'upfile', 18, 'system', 'pdf|doc|xls|zip|rar', 1, 0, 0, 200, '', 400, 0, ''),
(19, 2, 1, 1, 'templatepath', 19, 'system', 'demotemp', 1, 4, 1, 30, '', 100, 0, ''),
(20, 2, 1, 1, 'templateext', 20, 'system', 'htm|html|shtml', 1, 0, 1, 200, '', 400, 0, ''),
(21, 2, 1, 1, 'templatedefault', 21, 'system', 'default.htm', 1, 0, 1, 30, '', 100, 0, ''),
(22, 2, 1, 1, 'templatefiternote', 22, 'system', '1', 4, 0, 1, 1, '1|Yes\r\n0|No', 0, 0, ''),
(23, 2, 1, 1, 'pidline', 23, 'system', '-', 1, 0, 1, 30, '', 50, 0, 'help/pidline'),
(24, 2, 1, 1, 'gzencode', 24, 'system', '0', 4, 2, 1, 1, '1|Yes\r\n0|No', 0, 0, 'help/gzencode'),
(25, 2, 1, 1, 'lockip', 25, 'system', '', 2, 0, 0, 999999, NULL, 400, 120, 'help/lockip'),
(26, 3, 1, 1, 'cachetime', 26, 'system', '300', 1, 2, 1, 11, '', 50, 0, ''),
(27, 3, 1, 1, 'cachetip', 27, 'system', '1', 4, 2, 1, 1, '1|Yes\r\n0|No', 0, 0, ''),
(28, 4, 1, 1, 'rewriteline', 28, 'system', '-', 4, 0, 1, 1, '_\r\n/\r\n-', 0, 0, ''),
(29, 4, 1, 1, 'rewriteend', 29, 'system', '.html', 1, 0, 0, 10, '/\r\n.html\r\n.htm', 50, 0, ''),
(30, 5, 1, 1, 'verifyopen', 30, 'system', '1', 4, 2, 1, 1, '1|Yes\r\n0|No', 0, 0, ''),
(31, 5, 1, 1, 'verifycontent', 31, 'system', 'A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z', 2, 0, 10, 9999, NULL, 400, 120, 'help/verifycontent'),
(32, 5, 1, 1, 'verifytime', 32, 'system', '30', 1, 2, 1, 3, '', 50, 0, ''),
(33, 5, 1, 1, 'verifywidth', 33, 'system', '110', 1, 2, 1, 3, '', 50, 0, ''),
(34, 5, 1, 1, 'verifyheight', 34, 'system', '40', 1, 2, 1, 3, '', 50, 0, ''),
(35, 5, 1, 1, 'verifysize', 35, 'system', '25', 1, 2, 1, 3, '', 50, 0, ''),
(36, 5, 1, 1, 'verifynum', 36, 'system', '4', 4, 2, 1, 1, '4\r\n6\r\n8', 0, 0, ''),
(37, 4, 1, 1, 'rewritetag', 30, 'system', '0', 4, 2, 1, 1, '1|Yes\r\n0|No', 0, 0, ''),
(38, 6, 1, 1, 'keywords', 1, 'portal', '中国|吉林|延边|珲春|内容管理系统|KingCMS|腾讯|QQ通行证|手机业务|雅虎|iPhone|苹果|谷歌|美国商业促进会|微软|补丁|陈天桥|360|美FTC|iPad|Adobe|亚马逊|Android|中国雅虎|搜索|门户|大闸蟹|排名|百度|PHP|NetBeans|地方门户版2.0|人气王|金币|VIP|勋章|Admin|论坛积分|人气值|文件上传大小|Winnerzyy|全民推广|网络营销|Zynga|开心农场|盖茨|慈善|PayPal|支票|百事|贰点零互动|社交游戏|营销|麦当劳|IE|浏览器|微博|流行词|阿里巴巴|马云|SNS|CNN|网络新闻', 2, 0, 0, 999999, NULL, 600, 300, ''),
(39, 6, 1, 1, 'blackcontent', 2, 'portal', '傻逼|宋祖德|周杰伦|臭装逼|范跑跑|没家教|陈冠希|大色狼', 2, 0, 0, 999999, NULL, 600, 200, ''),
(40, 7, 1, 1, 'xmlpath', 3, 'portal', '_XML', 1, 4, 1, 30, '', 100, 0, ''),
(41, 7, 1, 1, 'rss', 4, 'portal', '50', 1, 2, 1, 3, '', 50, 0, ''),
(42, 7, 1, 1, 'atom', 5, 'portal', '50', 1, 2, 1, 3, '', 50, 0, 'help/atom'),
(43, 8, 1, 1, 'isuserbuy', 6, 'portal', '1', 4, 0, 1, 1, '1|Yes\r\n0|No', 0, 0, ''),
(44, 8, 1, 1, 'templateorders', 7, 'portal', 'demotemp/default.htm', 13, 0, 0, 100, NULL, 200, 0, ''),
(45, 8, 1, 1, 'transfer', 8, 'portal', '<h3>支付宝</h3>\r\n<p>\r\n	帐户： Gougliang@Gmail.com \r\n</p>\r\n<h3>工商银行</h3>\r\n<p>\r\n	开户行：工商银行广州分行<br />\r\n	开户名：梁远辉<br />\r\n	卡&nbsp; 号：<span style="color:#000000;">9558<span style="color:#ff0000;">8036</span>0213<span style="color:#ff0000;">8583</span>489</span>\r\n</p>\r\n<p></p>\r\n<h3>招商银行</h3>\r\n<p></p>\r\n<p>\r\n	开户行：招商银行广州分行<br />\r\n	开户名：梁远辉<br />\r\n	卡&nbsp; 号：6225<span style="color:#ff0000;">8820</span>1021<span style="color:#ff0000;">4556</span>\r\n</p>\r\n<p></p>\r\n<h3>农业银行</h3>\r\n<p>\r\n	开户行：农业银行广州分行<br />\r\n	开户名：梁远辉<br />\r\n	卡&nbsp; 号：9559<span style="color:#ff0000;">9800</span>8560<span style="color:#ff0000;">7655</span>512 \r\n</p>\r\n<h3>建设银行</h3>\r\n<p>\r\n	开户行：建设银行广州分行<br />\r\n	开户名：梁远辉<br />\r\n	卡&nbsp; 号：4367<span style="color:#ff0000;">4233</span>2465<span style="color:#ff0000;">0739</span>131 \r\n</p>\r\n<h3>公司帐号<br />\r\n</h3>\r\n<p>\r\n	开户行：工商银行广州分行北京路支行<br />\r\n	开户名：广州唯众网络科技有限公司<br />\r\n	帐&nbsp; 号：3602<span style="color:#ff0000;">0009</span>0920<span style="color:#ff0000;">0151</span>672 \r\n</p>\r\n<h3>建议您</h3>\r\n<p>\r\n	如果有淘宝帐户，尽量用淘宝直接转账，免去手续费；若没有淘宝帐户，建议您工行在线转账，因为可以在线查询，马上可以查到。 \r\n</p>\r\n<p>\r\n	如果您是在工行或中行进行了汇款操作，请把汇款单扫描或用数码相机拍照后发给我们，以便确认；若汇款额为200元，建议您多汇几分钱，如200.02等，以区分其他汇款人。这个不仅方便我们迅速进行确认，同时也保护了您的利益。\r\n</p>', 3, 0, 0, 999999, NULL, 800, 250, ''),
(46, 9, 1, 1, 'tenpayseller', 9, 'portal', '', 1, 0, 0, 15, '', 150, 0, 'help/tenpayseller'),
(47, 9, 1, 1, 'tenpaykey', 10, 'portal', '', 1, 0, 0, 32, '', 150, 0, 'help/tenpaykey'),
(48, 10, 1, 1, 'alipayregmail', 11, 'portal', '', 1, 0, 0, 250, '', 150, 0, NULL),
(49, 10, 1, 1, 'alipaypartner', 12, 'portal', '', 1, 2, 0, 25, '', 150, 0, NULL),
(50, 10, 1, 1, 'alipaykey', 13, 'portal', '', 1, 0, 0, 32, '', 150, 0, 'help/alipaykey'),
(51, 11, 1, 1, 'isregister', 14, 'user', '1', 4, 0, 1, 1, '1|Yes\r\n0|No', 0, 0, ''),
(52, 11, 1, 1, 'reglicense', 15, 'user', '<p>\r\n	用户单独承担传输内容的责任。\r\n</p>\r\n<p>\r\n	用户必须遵循：\r\n</p>\r\n<p>\r\n	1)使用网站服务不作非法用途。\r\n</p>\r\n<p>\r\n	2)不干扰或混乱网络服务。\r\n</p>\r\n<p>\r\n	3)不发表任何与政治相关的信息。\r\n</p>\r\n<p>\r\n	4)遵守所有使用网站服务的网络协议、规定、程序和惯例。\r\n</p>\r\n<p>\r\n	5)不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和公民的合法权益。\r\n</p>\r\n<p>\r\n	6)不得利用本站制作、复制和传播下列信息：<br />\r\n	1、煽动抗拒、破坏宪法和法律、行政法规实施的；<br />\r\n	2、煽动颠覆国家政权，推翻社会主义制度的；<br />\r\n	3、煽动分裂国家、破坏国家统一的；<br />\r\n	4、煽动民族仇恨、民族歧视，破坏民族团结的；<br />\r\n	5、捏造或者歪曲事实，散布谣言，扰乱社会秩序的；<br />\r\n	6、宣扬封建迷信、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的；<br />\r\n	7、公然侮辱他人或者捏造事实诽谤他人的，或者进行其他恶意攻击的；<br />\r\n	8、损害国家机关信誉的；<br />\r\n	9、其他违反宪法和法律行政法规的；<br />\r\n	10、进行商业广告行为的。\r\n</p>', 3, 0, 0, 999999, NULL, 800, 450, ''),
(53, 11, 1, 1, 'registertip', 16, 'user', '<p>\r\n	对不起,目前本站禁止新用户注册,请返回!\r\n</p>', 3, 0, 0, 999999, NULL, 780, 300, ''),
(54, 11, 1, 1, 'blackuser', 17, 'user', 'admin|李洪志|毛泽东|江泽民|温家宝|胡锦涛|宋祖德|范跑跑', 2, 0, 0, 999999, NULL, 780, 300, ''),
(55, 11, 1, 1, 'templatelogin', 18, 'user', 'demotemp/default.htm', 13, 0, 0, 100, NULL, 200, 0, ''),
(56, 11, 1, 1, 'templateregister', 19, 'user', 'demotemp/default.htm', 13, 0, 0, 100, NULL, 200, 0, ''),
(57, 11, 1, 1, 'templateuser', 20, 'user', 'demotemp/default.htm', 13, 0, 0, 100, NULL, 200, 0, ''),
(58, 11, 1, 1, 'userpre', 21, 'user', 'KingCMS', 1, 1, 1, 20, NULL, 100, 0, ''),
(59, 11, 1, 1, 'regtime', 22, 'user', '3600', 1, 2, 1, 10, '3600|1 hour\r\n86400|One day', 50, 0, ''),
(60, 12, 1, 1, 'usercenter', 23, 'user', '0', 4, 0, 1, 1, '1|Yes\r\n0|No', 0, 0, ''),
(61, 12, 1, 1, 'uc_connect', 24, 'user', 'mysql', 4, 0, 0, 10, 'mysql|MySQL\r\n0|NULL', 0, 0, 'help/uc_connect'),
(62, 12, 1, 1, 'ucpath', 25, 'user', 'user/client', 1, 0, 0, 100, '', 200, 0, ''),
(63, 12, 1, 1, 'uc_dbhost', 26, 'user', 'localhost', 1, 0, 0, 100, 'localhost', 200, 0, ''),
(64, 12, 1, 1, 'uc_dbname', 27, 'user', 'test', 1, 0, 0, 100, '', 200, 0, ''),
(65, 12, 1, 1, 'uc_dbtablepre', 28, 'user', 'test.uc_', 1, 0, 0, 30, '', 100, 0, ''),
(66, 12, 1, 1, 'uc_dbuser', 29, 'user', 'root', 1, 0, 0, 100, '', 200, 0, ''),
(67, 12, 1, 1, 'uc_dbpw', 30, 'user', '', 1, 0, 0, 100, '', 200, 0, ''),
(68, 12, 1, 1, 'uc_dbcharset', 31, 'user', 'utf8', 1, 0, 0, 30, '', 100, 0, ''),
(69, 12, 1, 1, 'uc_dbconnect', 32, 'user', '1', 4, 0, 1, 1, '1|Yes\r\n0|No', 0, 0, ''),
(70, 12, 1, 1, 'uc_key', 33, 'user', '', 1, 0, 0, 100, '', 200, 0, ''),
(71, 12, 1, 1, 'uc_api', 34, 'user', '', 1, 0, 0, 100, '', 200, 0, ''),
(72, 12, 1, 1, 'uc_ip', 35, 'user', '', 1, 0, 0, 100, '', 200, 0, ''),
(73, 12, 1, 1, 'uc_charset', 36, 'user', 'utf8', 1, 0, 0, 10, '', 100, 0, ''),
(74, 12, 1, 1, 'uc_appid', 37, 'user', '1', 1, 2, 0, 10, '', 100, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `king_system_caption`
--

CREATE TABLE IF NOT EXISTS `king_system_caption` (
  `cid` int(11) NOT NULL auto_increment,
  `kpath` char(100) NOT NULL,
  `kmodule` char(50) NOT NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `king_system_caption`
--

INSERT INTO `king_system_caption` (`cid`, `kpath`, `kmodule`) VALUES
(1, 'basic', 'system'),
(2, 'system', 'system'),
(3, 'cache', 'system'),
(4, 'rewrite', 'system'),
(5, 'verify', 'system'),
(6, 'phrase', 'portal'),
(7, 'xml', 'portal'),
(8, 'orders', 'portal'),
(9, 'tenpay', 'portal'),
(10, 'alipay', 'portal'),
(11, 'basic', 'user'),
(12, 'ucenter', 'user');

-- --------------------------------------------------------

--
-- 表的结构 `king_tag`
--

CREATE TABLE IF NOT EXISTS `king_tag` (
  `kid` int(11) NOT NULL auto_increment,
  `ktag` char(100) NOT NULL,
  `kimage` char(255) default NULL,
  `kkeywords` char(120) default NULL,
  `kdescription` char(255) default NULL,
  `kcolor` char(7) NOT NULL,
  `nsize` tinyint(2) NOT NULL default '12',
  `isbold` tinyint(1) NOT NULL default '0',
  `nhit` int(11) NOT NULL default '0',
  `nhitlate` int(11) NOT NULL default '0',
  `iscommend` tinyint(1) NOT NULL default '0',
  `norder` int(11) NOT NULL default '0',
  `ktemplate1` char(255) default NULL,
  `ktemplate2` char(255) default NULL,
  PRIMARY KEY  (`kid`),
  UNIQUE KEY `ktag` (`ktag`),
  KEY `iscommend` (`iscommend`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `king_tag`
--


-- --------------------------------------------------------

--
-- 表的结构 `king_upfile`
--

CREATE TABLE IF NOT EXISTS `king_upfile` (
  `kid` int(11) NOT NULL auto_increment,
  `kpath` char(255) NOT NULL,
  `ndate` int(10) NOT NULL default '0',
  `userid` int(11) NOT NULL default '0',
  `adminid` int(11) NOT NULL default '0',
  `ntype` tinyint(1) NOT NULL default '0',
  `ktitle` varchar(100) default NULL,
  PRIMARY KEY  (`kid`),
  KEY `userid` (`userid`),
  KEY `adminid` (`adminid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

--
-- 转存表中的数据 `king_upfile`
--

INSERT INTO `king_upfile` (`kid`, `kpath`, `ndate`, `userid`, `adminid`, `ntype`, `ktitle`) VALUES
(1, 'upfiles/image/12865360650.jpg', 1286536065, 0, 1, 0, ''),
(2, 'upfiles/image/12865360651.jpg', 1286536065, 0, 1, 0, ''),
(3, 'upfiles/image/12865360652.jpg', 1286536065, 0, 1, 0, ''),
(4, 'upfiles/image/12865433600.jpg', 1286543360, 0, 1, 0, ''),
(5, 'upfiles/image/12865433601.jpg', 1286543360, 0, 1, 0, ''),
(6, 'upfiles/image/12865433602.jpg', 1286543360, 0, 1, 0, ''),
(7, 'upfiles/image/12865433603.jpg', 1286543360, 0, 1, 0, ''),
(8, 'upfiles/image/12865433604.jpg', 1286543360, 0, 1, 0, ''),
(9, 'upfiles/image/12865434470.jpg', 1286543447, 0, 1, 0, ''),
(10, 'upfiles/image/12865434471.jpg', 1286543447, 0, 1, 0, ''),
(11, 'upfiles/image/12865434472.jpg', 1286543447, 0, 1, 0, ''),
(12, 'upfiles/image/12865434473.jpg', 1286543447, 0, 1, 0, ''),
(13, 'upfiles/image/12865434474.jpg', 1286543447, 0, 1, 0, ''),
(14, 'upfiles/image/12865444500.jpg', 1286544450, 0, 1, 0, ''),
(15, 'upfiles/image/12865448170.jpg', 1286544817, 0, 1, 0, ''),
(16, 'upfiles/image/12865448171.jpg', 1286544817, 0, 1, 0, ''),
(17, 'upfiles/image/12865448172.jpg', 1286544817, 0, 1, 0, ''),
(18, 'upfiles/image/12865448173.jpg', 1286544817, 0, 1, 0, ''),
(19, 'upfiles/image/12865448174.jpg', 1286544817, 0, 1, 0, ''),
(20, 'upfiles/image/12865506690.jpg', 1286550669, 0, 1, 0, ''),
(21, 'upfiles/image/12865507060.jpg', 1286550706, 0, 1, 0, ''),
(22, 'upfiles/image/12865522840.jpg', 1286552284, 0, 1, 0, ''),
(23, 'upfiles/image/12865523190.jpg', 1286552319, 0, 1, 0, ''),
(24, 'upfiles/image/12865523500.jpg', 1286552350, 0, 1, 0, ''),
(25, 'upfiles/image/12866261320.jpg', 1286626132, 0, 1, 0, ''),
(26, 'upfiles/image/12866262400.jpg', 1286626240, 0, 1, 0, ''),
(27, 'upfiles/image/12866262810.jpg', 1286626281, 0, 1, 0, ''),
(28, 'upfiles/image/12866262990.jpg', 1286626299, 0, 1, 0, ''),
(29, 'upfiles/image/12866263150.jpg', 1286626315, 0, 1, 0, ''),
(30, 'upfiles/image/12866263340.jpg', 1286626334, 0, 1, 0, ''),
(31, 'demoupfiles/image/12866784480.jpg', 1286678448, 0, 1, 0, ''),
(32, 'demoupfiles/image/12866784730.jpg', 1286678473, 0, 1, 0, ''),
(33, 'demoupfiles/image/12866785460.jpg', 1286678546, 0, 1, 0, ''),
(34, 'demoupfiles/image/12866786070.jpg', 1286678607, 0, 1, 0, ''),
(35, 'demoupfiles/image/12866786230.jpg', 1286678623, 0, 1, 0, ''),
(36, 'demoupfiles/image/12866786460.jpg', 1286678646, 0, 1, 0, ''),
(37, 'demoupfiles/image/12866787340.jpg', 1286678734, 0, 1, 0, ''),
(38, 'demoupfiles/image/12866787660.jpg', 1286678766, 0, 1, 0, ''),
(39, 'demoupfiles/image/12866789040.jpg', 1286678904, 0, 1, 0, ''),
(40, 'demoupfiles/image/12866789240.jpg', 1286678924, 0, 1, 0, ''),
(41, 'demoupfiles/image/12866789440.jpg', 1286678944, 0, 1, 0, ''),
(42, 'demoupfiles/image/12866789980.jpg', 1286678998, 0, 1, 0, ''),
(43, 'demoupfiles/image/12866790430.jpg', 1286679043, 0, 1, 0, ''),
(44, 'demoupfiles/image/12866790431.jpg', 1286679043, 0, 1, 0, ''),
(45, 'demoupfiles/image/12866790960.jpg', 1286679096, 0, 1, 0, ''),
(46, 'demoupfiles/image/12866790961.jpg', 1286679096, 0, 1, 0, ''),
(47, 'demoupfiles/image/12866790962.jpg', 1286679096, 0, 1, 0, ''),
(48, 'demoupfiles/image/12866791660.jpg', 1286679166, 0, 1, 0, ''),
(49, 'demoupfiles/image/12866791661.jpg', 1286679166, 0, 1, 0, ''),
(50, 'demoupfiles/image/12866791662.jpg', 1286679166, 0, 1, 0, ''),
(51, 'demoupfiles/image/12866792360.jpg', 1286679236, 0, 1, 0, ''),
(52, 'demoupfiles/image/12866792361.jpg', 1286679236, 0, 1, 0, ''),
(53, 'demoupfiles/image/12866792362.jpg', 1286679236, 0, 1, 0, ''),
(54, 'demoupfiles/image/12866793240.jpg', 1286679324, 0, 1, 0, ''),
(55, 'demoupfiles/image/12866793241.jpg', 1286679324, 0, 1, 0, ''),
(56, 'demoupfiles/image/12866793242.jpg', 1286679324, 0, 1, 0, ''),
(57, 'demoupfiles/image/12866793770.jpg', 1286679377, 0, 1, 0, ''),
(58, 'demoupfiles/image/12866793771.jpg', 1286679377, 0, 1, 0, ''),
(59, 'demoupfiles/image/2010/10/10/201010101107071093.jpg', 1286680027, 0, 1, 0, NULL),
(60, 'demoupfiles/image/2010/10/10/201010101139268441.jpg', 1286681966, 0, 1, 0, NULL),
(61, 'demoupfiles/image/2010/10/10/201010101141589623.jpg', 1286682118, 0, 1, 0, NULL),
(62, 'demoupfiles/image/2010/10/10/201010101142064805.jpg', 1286682126, 0, 1, 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `king_user`
--

CREATE TABLE IF NOT EXISTS `king_user` (
  `userid` int(11) NOT NULL auto_increment,
  `username` char(15) NOT NULL,
  `gid` int(11) NOT NULL default '0',
  `uid` int(11) NOT NULL default '0',
  `userpass` char(32) NOT NULL,
  `usermail` char(32) NOT NULL,
  `userask` char(30) default NULL,
  `useranswer` char(16) default NULL,
  `userhead` char(255) default NULL,
  `userpoint` int(11) NOT NULL default '0',
  `regip` int(10) NOT NULL default '0',
  `regdate` int(10) NOT NULL default '0',
  `lastloginip` int(10) NOT NULL default '0',
  `isdelete` tinyint(1) NOT NULL default '0',
  `islock` tinyint(1) NOT NULL default '0',
  `lastlogindate` int(10) NOT NULL default '0',
  `ksalt` char(6) default NULL,
  `nickname` varchar(15) default NULL,
  `realname` char(30) default NULL,
  `usertel` char(30) default NULL,
  `useraddress` char(250) default NULL,
  `userpost` char(10) default NULL,
  `kremark` text,
  PRIMARY KEY  (`userid`),
  UNIQUE KEY `username` (`username`),
  KEY `islock` (`islock`),
  KEY `gid` (`gid`),
  KEY `isdelete` (`isdelete`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `king_user`
--


-- --------------------------------------------------------

--
-- 表的结构 `king_usergroup`
--

CREATE TABLE IF NOT EXISTS `king_usergroup` (
  `gid` int(11) NOT NULL auto_increment,
  `kname` char(30) NOT NULL,
  `norder` int(11) NOT NULL default '0',
  `kaccess` text,
  `kremark` varchar(255) default NULL,
  `kmenu` text,
  PRIMARY KEY  (`gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `king_usergroup`
--


-- --------------------------------------------------------

--
-- 表的结构 `king__article`
--

CREATE TABLE IF NOT EXISTS `king__article` (
  `kid` int(11) NOT NULL auto_increment,
  `kid1` int(11) NOT NULL default '0',
  `ncount` int(11) NOT NULL default '1',
  `listid` int(11) NOT NULL default '0',
  `ktitle` varchar(100) default NULL,
  `ksubtitle` varchar(20) default NULL,
  `nsublength` tinyint(2) NOT NULL default '0',
  `norder` int(11) NOT NULL default '0',
  `isstar` tinyint(1) NOT NULL default '0',
  `ndate` int(10) NOT NULL default '0',
  `nlastdate` int(10) NOT NULL default '0',
  `kkeywords` varchar(100) default NULL,
  `ktag` varchar(100) default NULL,
  `kdescription` varchar(255) default NULL,
  `kimage` varchar(255) default NULL,
  `kcontent` text,
  `kpath` varchar(255) NOT NULL,
  `nshow` tinyint(1) NOT NULL default '1',
  `nhead` tinyint(1) NOT NULL default '0',
  `ncommend` tinyint(1) NOT NULL default '0',
  `nup` tinyint(1) NOT NULL default '0',
  `nfocus` tinyint(1) NOT NULL default '0',
  `nhot` tinyint(1) NOT NULL default '0',
  `nprice` double NOT NULL default '0',
  `nweight` int(11) NOT NULL default '0',
  `nnumber` int(10) NOT NULL default '0',
  `nbuy` int(10) NOT NULL default '0',
  `ncomment` int(11) NOT NULL default '0',
  `krelate` varchar(255) default NULL,
  `ndigg1` int(11) NOT NULL default '0',
  `ndigg0` int(11) NOT NULL default '0',
  `ndigg` int(11) NOT NULL default '1',
  `nfavorite` int(11) NOT NULL default '0',
  `nhit` int(11) NOT NULL default '0',
  `nhitlate` int(11) NOT NULL default '0',
  `userid` int(11) NOT NULL default '0',
  `ulock` tinyint(1) NOT NULL default '0',
  `adminid` int(11) NOT NULL default '0',
  `isok` tinyint(1) NOT NULL default '0',
  `nip` int(10) NOT NULL default '0',
  `aid` int(11) NOT NULL default '0',
  `nattrib` text,
  `k_author` varchar(30) default NULL,
  `k_source` varchar(255) default NULL,
  PRIMARY KEY  (`kid`),
  UNIQUE KEY `kpath` (`kpath`),
  KEY `kid1` (`kid1`),
  KEY `aid` (`aid`),
  KEY `nshow` (`nshow`),
  KEY `nhead` (`nhead`),
  KEY `nfocus` (`nfocus`),
  KEY `nhot` (`nhot`),
  KEY `userid` (`userid`),
  KEY `adminid` (`adminid`),
  KEY `ndigg` (`ndigg`),
  KEY `listid` (`listid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- 转存表中的数据 `king__article`
--

INSERT INTO `king__article` (`kid`, `kid1`, `ncount`, `listid`, `ktitle`, `ksubtitle`, `nsublength`, `norder`, `isstar`, `ndate`, `nlastdate`, `kkeywords`, `ktag`, `kdescription`, `kimage`, `kcontent`, `kpath`, `nshow`, `nhead`, `ncommend`, `nup`, `nfocus`, `nhot`, `nprice`, `nweight`, `nnumber`, `nbuy`, `ncomment`, `krelate`, `ndigg1`, `ndigg0`, `ndigg`, `nfavorite`, `nhit`, `nhitlate`, `userid`, `ulock`, `adminid`, `isok`, `nip`, `aid`, `nattrib`, `k_author`, `k_source`) VALUES
(1, 0, 1, 5, '什么CMS的SEO最好？', '', 0, 1, 0, 1286519844, 1286520377, '', '', '答案在于：http://www.baidu.com/s?wd=seo%D7%EE%BA%C3%B5%C4cms', '', '答案在于：<span style="font-family:Arial;"><a href="http://www.baidu.com/s?wd=seo%D7%EE%BA%C3%B5%C4cms" target="_blank">http://www.baidu.com/s?wd=seo%D7%EE%BA%C3%B5%C4cms</a></span>', 'faq/1.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 1, 643276757, -1, 0, 1, 0, 0, 0, NULL, 'Gougliang', ''),
(2, 0, 1, 8, '腾讯推“QQ通行证” 实现手机业务一键通', '', 0, 2, 0, 1286520045, 1286520045, '腾讯,QQ通行证,手机业务', '', '腾讯公司近日表示，截止到9月下旬，其手机QQ浏览器产品各平台的最新版本均已整合了“QQ通行证”功能。这意味着，即日起，手机QQ浏览器的用户只需登录一次，即可以同一身份轻松体验农场、牧场、微博、空间、书城等诸多热门应用。', '', '<p>\r\n	<span style="font-family:Arial;">腾讯公司近日表示，截止到9月下旬，其手机QQ浏览器产品各平台的最新版本均已整合了“QQ通行证”功能。这意味着，即日起，手机QQ浏览器的用户只需登录一次，即可以同一身份轻松体验农场、牧场、微博、空间、书城等诸多热门应用。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">据介绍，这一功能是腾讯公司为了让用户更加方便快捷使用其手机端的各项业务，通过在手机QQ浏览器上独创Cookie功能而实现的。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">现在大多数PC浏览器都具备cookie自动保存功能，登录了博客、农场、社区等产品之后，浏览器都会自动保存用户名和密码，即使关闭电脑，再登录已经访问过的站点都无需再次输入用户名和密码。Cookie的自动保存功能大大方便了PC用户，但是由于种种原因，这一功能并未在手机浏览器上实现，手机浏览器的用户仍需通过书签来保存用户名和密码。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">因此，本次“QQ通行证”的推出，在手机浏览器上首次实现了PC浏览器的cookie自动保存功能，不仅成功改善了用户体验，在移动互联网产业也可以说是一次划时代的创举。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">目前用户从手机QQ浏览器接入网络，即可以实现“一次登录、即可通行”，这一覆盖范围包括手机腾讯网的全部业务在内。其中，除了超级QQ需要再次确认外，其他业务都已经实现了一键登录。当然，对于有个性化需求的用户，“QQ通行证”也提供了很方便的选项，用户也可以在菜单中设置为拒绝Cookies功能，或者在工具栏中清除相应记录。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">例如，用户在手机腾讯网的“空间”登录了一次，那么再登录微博、社区、超Q、农场、书城等这些需要登录后才可以使用相关服务的页面时，均无需再次登录，便可直接成功登录。特别是QQ农场、牧场用户，可以更方便快捷的直接登录，再加上一键摘菜、一键收获，动作自然更加迅速了。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">另据了解，目前手机QQ浏览器已经覆盖了Symbian V3、Symbian V5、iPhone、Android、MTK国产机、Java以及黑莓七大手机平台，这七大平台的最新版手机QQ浏览器均支持“QQ通行证”功能。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">腾讯手机QQ浏览器相关负责人介绍：“‘QQ通行证’的推出，是为了改善手机登陆用户的体验。”在谈及近日市场竞争时他则认为，“主流的几家手机浏览器企业，在技术上基本实力相当，谁能够更好满足用户需求，能够保持持续创新力，最终会获得更多用户的认可，这个过程是潜移默化的。”</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">有关专家认为，“QQ通行证”功能再次体现了腾讯在“微创新”方面的不懈努力。通过一些看似简单的“微创新”，很好的满足了用户的实际需求，帮助用户节约时间，提升效率，改善了手机网民的整体使用体验，也增加了其自身的黏性。这种“微创新”的前提是一切以用户需求为中心，时刻替用户考虑着想，这一理念贯穿了腾讯的若干产品，在近日发布的一系列手机端产品中也成为其设计与升级的核心要素之一。</span>\r\n</p>', 'news/2.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 1, 643276757, -1, 0, 1, 0, 0, 0, NULL, '', ''),
(3, 0, 1, 5, '如何选择合适的CMS？', '', 0, 3, 0, 1286520070, 1286520070, '', '', '从某种角度来说，选择合适的CMS是一门学问来的，需要一定的耐心。了解完CMS是什么之后，在开始选择CMS之前还需要了解CMS的一些其他概念：首先，CMS建站和普通建站的选择，CMS建站拥有更加先进的现成技术和成熟的服务..', '', '<p>\r\n	从某种角度来说，<strong>选择合适的CMS</strong>是一门学问来的，需要一定的耐心。了解完<a href="/1_2_zh.html">CMS是什么</a>之后，在开始选择CMS之前还需要了解CMS的一些其他概念：\r\n</p>\r\n<p>\r\n	首先，<strong>CMS建站和普通建站的选择</strong>，CMS建站拥有更加先进的现成技术和成熟的服务体系。普通建站基于目前国内的现状，也是修改一些常见的建站系统来进行的。所以，无论你是否采用CMS来建站，建站公司都是采用建站系统来帮你的企业建站的，选择更加稳定的CMS是保障网站运行的根本。其次，<strong>CMS采用的语言平台</strong>，CMS是一种网站程序来的，它必须有一种网站语言编写而成，市面常见的语言体系组成有：<a href="/10_4_zh.html">ASP</a>、<a href="/10_11_zh.html">PHP</a>和.NET。选择不同的语言平台对于网站来说没有什么区别，由网站管理人员决定语言平台的选择。再次，<strong>CMS程序的有哪几种？</strong>当理解以上两个概念之后，选择合适的CMS的重点也在于选择哪款CMS。\r\n</p>\r\n<p>\r\n	下面按照基于语言分类来进行CMS的列举：\r\n</p>\r\n<p>\r\n	<strong>1、基于ASP语言</strong>\r\n</p>\r\n<p>\r\n	<strong>A)<a href="/7_6_zh.html">KingCMS</a></strong>，一款很灵活的建站系统。其版本有3.0和5.0两种，3.0有不少的亮点(包含有新闻、论坛、会员、统计器等模块)，5.0更是改进了内核，采用了更加灵活的插件形式组装各个模块(相对3.0来说，缺少了统计器和论坛模块)。特点是极具SEO的特点，非常适合用于企业建站和个人的内容为主优化的网站。\r\n</p>\r\n<p>\r\n	<strong>B) 科汛CMS</strong>，声称万能建站系统。参照了一些网络科技公司经常修改的建站系统，完善了今天的科讯，拥有一定的客户量。对于高级的应用，表现得不是很强。用于一般的企业建站完全没有问题。\r\n</p>\r\n<p>\r\n	<strong>2、基于PHP语言</strong>\r\n</p>\r\n<p>\r\n	<strong>A) KingCMS</strong>，依然推荐KingCMS的PHP企业版。自从开发ASP版本以来，该CMS已经酝酿了超过10万的安装量，正在蓄势待发，发布的PHP版更加自带SQLite支持，这种格式的数据库可以支持1GB以上的容量，对于企业网站来说，是最佳的选择，不用动辄安装MySQL数据库，节省开销。采用全新的内核，为企业提供强大的动力。\r\n</p>\r\n<p>\r\n	<strong>B) 帝国CMS</strong>，本来想先推荐帝国这款CMS的，但是它的功能不限于企业建站，比较适合制作信息量比较大的网站，经过5年的发展，帝国的内核不断推陈出新，大量的良好使用习惯赢得用户的一直好评。适合制作需求比较复杂的企业网站。\r\n</p>\r\n<p>\r\n	<strong>C) 织梦CMS</strong>，和帝国CMS是一对小冤家，经过多年的发展，已经走上公司化操作，不过交接等历史问题，织梦的内核不是很优秀，遗留的历史问题比较多。用户很多，模板应用也丰富，当网站做大之后，需要专人优化数据库结构。\r\n</p>', 'faq/3.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 4, 1029251486, -1, 0, 1, 0, 0, 0, NULL, 'Gougliang', ''),
(4, 0, 1, 5, '什么是CMS建站', '', 0, 4, 0, 1286520098, 1286520098, '', '', '智能建站是使用容易操作的网站系统来建设和管理网站，那么CMS建站是什么意思呢？CMS建站是一个新兴的名词。最原始的建网站是根据每一个客户需求设计功能并且实现功能的，久而久之，客户的需求越来越统一化了，大致的..', '', '<p>\r\n	<span style="font-family:Arial;">智能建站是使用容易操作的网站系统来建设和管理网站，那么CMS建站是什么意思呢？</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">CMS建站是一个新兴的名词。最原始的建网站是根据每一个客户需求设计功能并且实现功能的，久而久之，客户的需求越来越统一化了，大致的需求都是相同的，所以使用已有的程序的基础上去建立网站会更加高效。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">网站的代码不用重新写了，变化的只是策划，设计和内容，这就是CMS建站。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">CMS建站可以节省功能需求的分析，只借助现成的CMS程序，建立网站的人只需要知道哪个CMS可以实现这些需求，直接购买或者使用免费授权的系统去建立网站即可。在CMS建站当中，最常见的就是文章系统和留言系统，绝大多数的企业网站最细化功能之后都是以这两个功能为主。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">外国现在比较流行使用基于CMS的二次开发做项目开发，请维护的人也是请熟悉该款CMS的人员。对于开发者或者从业者来说，这无疑是一种机遇。在2009年，我们知道圈内缺少的是掌握技术型的营销人才。在2010年，就算你懂得SEO，懂得推广手段，但是还是需要懂得更多，比如网站策划，网站系统的调配使用，综合性的人才越来越抢手。</span>\r\n</p>', 'faq/4.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 1, 0, 1, 643306471, -1, 0, 1, 0, 0, 0, NULL, 'Gougliang', ''),
(5, 0, 1, 4, 'KingCMS官方网站', '', 0, 5, 0, 1286520205, 1286678946, 'KingCMS', '', 'KingCMS官网网站点击访问：http://www.kingcms.com/', 'demoupfiles/image/12866789440.jpg', '<p>\r\n	<span style="font-family:Arial;">KingCMS官网网站</span>\r\n</p>\r\n<p>\r\n	点击访问：<a href="http://www.kingcms.com/" target="_blank">http://www.kingcms.com/</a>\r\n</p>', 'cases/5.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 1, 643276757, -1, 0, 1, 0, 0, 0, NULL, 'Gougliang', ''),
(6, 0, 1, 4, 'CMS十万个为什么', '', 0, 6, 0, 1286520492, 1286678926, '', '', '一个用KingCMS做实验的网站。点击访问：http://www.cmswhy.com/', 'demoupfiles/image/12866789240.jpg', '<p>\r\n	一个用KingCMS做实验的网站。\r\n</p>\r\n<p>\r\n	点击访问：<a href="http://www.cmswhy.com/" target="_blank">http://www.cmswhy.com/</a>\r\n</p>', 'cases/6.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 3, 964947119, -1, 0, 1, 0, 0, 0, NULL, 'Gougliang', ''),
(7, 0, 1, 4, 'KingCMS官方演示网站', '', 0, 7, 0, 1286520522, 1286678908, 'KingCMS', '', 'KingCMS官方演示网站，就是你现在看到的这个。', 'demoupfiles/image/12866789040.jpg', '<span style="font-family:Arial;">KingCMS官方演示网站，就是你现在看到的这个。</span>', 'cases/7.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 1, 0, 8, 1127783523, -1, 0, 1, 0, 0, 0, NULL, 'Gougliang', ''),
(8, 0, 1, 8, '雅虎将推iPhone视频应用：挑战苹果', '', 0, 8, 0, 1286520576, 1286520576, '雅虎,iPhone,苹果', '', '据国外媒体报道，雅虎美国移动业务副总裁大卫·卡茨（David Katz）周四表示，该公司将通过雅虎通（Yahoo Messenger）即时通讯服务向iPhone和Android手机提供视频聊天功能，挑战苹果Facetime。', '', '<span style="font-family:Arial;"></span>\r\n<p>\r\n	<span style="font-family:Arial;">据国外媒体报道，雅虎美国移动业务副总裁大卫·卡茨（David Katz）周四表示，该公司将通过雅虎通（Yahoo Messenger）即时通讯服务向iPhone和Android手机提供视频聊天功能，挑战苹果Facetime。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">本周早些时候，T-Mobile宣布，该公司的4G myTouch智能手机将内置雅虎视频通话应用。而本次面向更多智能手机推出视频聊天应用，将帮助雅虎在移动市场占据更为重要的地位。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">卡兹表示，这款免费应用将面向iPhone和Android手机推出，该产品不仅允许手机用户之间相互进行视频通话，还可以实现手机用户与PC用户之间的视频通话。雅虎官方数据显示，雅虎通目前的全球用户为8100万。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">与FaceTime不同，雅虎通的移动视频聊天应用不仅可以通过Wi-Fi建立连接，还可以直接借助手机无线网传输数据。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">通过iPhone提供视频通话功能已经成为一个重要领域。但令人不解的是，Skype一直都没有在iPhone应用中添加视频通话功能，尽管其PC客户端早已支持这一功能。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">还有业内人士怀疑，苹果之所以只允许FaceTime使用Wi-Fi网络，意在防止本已十分紧张的AT&amp;T带宽遭遇视频流量的激增。所以，苹果究竟会对第三方视频通话应用采取何种态度，还有待进一步观察。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">雅虎发言人表示，iPhone版雅虎通应用已经获得苹果的审批，并将“很快”推出。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">苹果尚未对此置评。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">值得注意的是，Fring和Tango两款不知名的iPhone应用此前已经能够同时支持Wi-Fi和手机网络的视频通话。但由于这两款产品的市场认知度远低于雅虎，因此对网络流量的影响也不可相提并论。</span>\r\n</p>\r\n<p></p>', 'news/3.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 0, 0, -1, 0, 1, 0, 0, 0, NULL, '', ''),
(9, 0, 1, 9, 'KingCMS新版官网调试中', '', 0, 9, 0, 1286520642, 1286520642, 'KingCMS', '', 'KingCMS新版官网调试中', '', '<p>\r\n	<span style="font-family:Arial;">KingCMS新版官网调试中</span>\r\n</p>', 'news/9.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 0, 0, -1, 0, 1, 0, 0, 0, NULL, 'Gougliang', ''),
(10, 0, 1, 9, '论坛在线等级改进', '', 0, 10, 0, 1286520660, 1286520660, '', '', '论坛级别显示改用了QQ在线等级一样的显示方式，减少了图片调用数量，原先是一个级别一个图片，现在只用3个图片的组合就可以实现到不同级别的显示。对带有VIP勋章的会员在线时间升级方法进行了适当的调整，带有VIP勋..', '', '<p>\r\n	论坛级别显示改用了QQ在线等级一样的显示方式，减少了图片调用数量，原先是一个级别一个图片，现在只用3个图片的组合就可以实现到不同级别的显示。\r\n</p>\r\n<p>\r\n	对带有VIP勋章的会员在线时间升级方法进行了适当的调整，<strong>带有VIP勋章的会员的升级速度比普通会员快10%</strong>，级别升级将更快。\r\n</p>', 'news/10.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 0, 0, -1, 0, 1, 0, 0, 0, NULL, 'Gougliang', ''),
(11, 0, 1, 9, '调整论坛帖子显示次序及奖励金币功能', '', 0, 11, 0, 1286520689, 1286520689, '', '', '论坛帖子页以问答形式，把优秀的答案排前面显示，从此KingCMS论坛已经不再是纯粹意义上的论坛，是以论坛+问答结合的程序。论坛回复贴或主题贴被设置为“GOOD”，以前是没有金币的，这样做的原因是因为考虑到被版主或..', '', '<p>\r\n	论坛帖子页以问答形式，把优秀的答案排前面显示，从此KingCMS论坛已经不再是纯粹意义上的论坛，是以论坛+问答结合的程序。\r\n</p>\r\n<p>\r\n	论坛回复贴或主题贴被设置为“GOOD”，以前是没有金币的，这样做的原因是因为考虑到被版主或管理员无限制的刷金币，今做了防刷金币的功能后，重新开启了相关的积分规则：被设置为GOOD时，即可获得<strong><span style="color:#3333ff;"><span style="font-size:large;">+10</span></span></strong>金币和<span style="color:#ff0000;"><span style="font-size:large;"><strong>+1</strong></span></span>人气值、<span style="color:#993399;"><strong><span style="font-size:large;">+5</span></strong></span>积分的奖励。\r\n</p>\r\n<p>\r\n	希望想赚取金币的朋友们，不要只顾着发主题贴的方式，积极解决别人的疑问或共享知识或心得，这才是快速获得金币的最好的途径。\r\n</p>', 'news/11.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 0, 0, -1, 0, 1, 0, 0, 0, NULL, 'SinCS', ''),
(12, 0, 1, 8, '谷歌因投诉处理不及时被美国商业促进会评为C级', '', 0, 12, 0, 1286520756, 1286520756, '谷歌,美国商业促进会', '', '据国外媒体报道，据博客作者麦克·布鲁门萨尔（Mike Blumenthal）报道，由于谷歌对部分消费者的投诉没有及时处理，美国消费者权益组织美国商业促进会（BBB）在其“可靠企业报告”中将谷歌公司评级为C级。', '', '<p>\r\n	<span style="font-family:Arial;">据国外媒体报道，据博客作者麦克·布鲁门萨尔（Mike Blumenthal）报道，由于谷歌对部分消费者的投诉没有及时处理，美国消费者权益组织美国商业促进会（BBB）在其“可靠企业报告”中将谷歌公司评级为C级。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">该报告给谷歌的评级较低是因为“超过一个投诉未被处理就说明一家公司未能正确处理投诉或反应缓慢。”过去36个月，谷歌收到的648个投诉中有49个未被处理。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">美国商业促进会成立于1912年，是一个由当地商业促进会组织的一些私人特许经销商组成的公司，专门收集报告商业可靠性信息，警告民众有关消费者和商人的欺诈。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">让人大跌眼镜的是，该局曾将巴勒斯坦伊斯兰抵抗运动（哈马斯）评级为“A-”，并将星巴克评级为“F”。谷歌2008年也曾因投诉处理问题被评级为“不满意”。</span>\r\n</p>', 'news/12.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 2, 857716212, -1, 0, 1, 0, 0, 0, NULL, '', ''),
(13, 0, 1, 8, '微软下周二发布16个补丁 修复49个安全漏洞', '', 0, 13, 0, 1286520835, 1286520835, '微软,补丁', '', '10月8日消息，据国外媒体报道，微软星期四称，它将在下周星期二发布创纪录的16个安全补丁，修复Windows、IE浏览器、Office和SharePoint等软件中的49个安全漏洞。', '', '<p>\r\n	<span style="font-family:Arial;">10月8日消息，据国外媒体报道，微软星期四称，它将在下周星期二发布创纪录的16个安全补丁，修复Windows、IE浏览器、Office和SharePoint等软件中的49个安全漏洞。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">在这16个安全补丁中，有4个是“严重”等级的安全补丁。这是微软四级评级系统中最严重的等级。另外10个安全补丁是“重要”等级的，是第二严重的等级。剩下的两个补丁是“中等”等级的安全补丁。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">微软在发布10月12日发布补丁的提前通知中说，攻击者正在利用其中的9个安全漏洞向那些有安全漏洞的计算机注入恶意代码。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">在这16个安全补丁中，有12个补丁是修复Windows操作系统中的安全漏洞，包括台式电脑版本和服务器版本的Windows。2个安全补丁是修复Office软件中的安全漏洞，特别是修复Word和Excel软件中的安全漏洞，修复一个或者更多的文件格式安全漏洞。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">据这个通知称，还有一个补丁修复SharePoint软件中的安全漏洞。这是微软企业级协作服务器软件。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">据介绍，用户除了要使用大量的补丁之外，这些补丁还要用于最新版本的微软操作系统，台式电脑方面的Windows 7和服务器方面的Windows Server 2008 R2。这两个软件在推出之后已经使用了多次补丁。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">在下周二发布的补丁中有些补丁即修复台式电脑系统又修复服务器系统中的安全漏洞。因此，有9个补丁修复Windows 7中的安全漏洞，另外有9个补丁修复Windows Server 2008 R2中的安全漏洞，其中有两个是严重等级的漏洞。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">微软发布的严重IE补丁涉及到IE 6、IE 7和IE 8。但是，微软没有说是否影响到三个星期前刚发布测试版的IE 9。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">微软将在美国东部时间10月12日下午1点发布这16个安全补丁。</span>\r\n</p>', 'news/13.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 1, 643339876, -1, 0, 1, 0, 0, 0, NULL, '', ''),
(14, 0, 1, 8, '陈天桥：欣赏360 用户安全永远第一 ', '', 0, 14, 0, 1286521171, 1286521171, '陈天桥,360', '', '10月8日消息，在360等公司的公开指摘下，腾讯qq利用其软件窥探用户隐私的事件不断升级。业内众多重视用户信息安全的互联网企业纷纷提醒用户，防范安装qq可能带来的自身电脑被扫描的风险。', '', '<p>\r\n	<span style="font-family:Arial;">10月8日消息，在360等公司的公开指摘下，腾讯qq利用其软件窥探用户隐私的事件不断升级。业内众多重视用户信息安全的互联网企业纷纷提醒用户，防范安装qq可能带来的自身电脑被扫描的风险。盛大游戏、赢家竞技等率先在游戏平台中郑重提示：“在输入账户密码、付费充值、以及进行私密对话时，请先关闭qq ，以保证个人信息安全”。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">对于网络游戏企业如此迅速的反应，盛大集团董事长陈天桥首先表示非常欣赏360公司重视和保护用户隐私，对用户负责任的行为。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">陈天桥说，很高兴看到下属各公司都能够把用户安全放在第一位。他也特别希望游戏公司多年来服务用户、保护用户的宝贵经验，能够为文学、视频等其他内容公司所学习和借鉴。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">据了解，盛大游戏历来重视玩家权益的保护，曾斥资800万悬赏私服、外挂、盗号等令网民深恶痛绝的违法犯罪行为线索。</span>\r\n</p>', 'news/14.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 0, 0, -1, 0, 1, 0, 0, 0, NULL, '', ''),
(15, 0, 1, 8, '美FTC前员工对谷歌提起隐私权诉讼', '', 0, 15, 0, 1286521246, 1286521246, '美FTC,谷歌', '', '北京时间10月8日消息，据国外媒体报道，美国联邦贸易委员会（以下简称“FTC”）一名前员工已对谷歌提起诉讼，称谷歌未能适当地保护用户在搜索时的隐私。', '', '<p>\r\n	<span style="font-family:Arial;">北京时间10月8日消息，据国外媒体报道，美国联邦贸易委员会（以下简称“FTC”）一名前员工已对谷歌提起诉讼，称谷歌未能适当地保护用户在搜索时的隐私。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">这名FTC前员工克里斯托弗·索菲安（Christopher Soghoian）于9月6日对谷歌提起诉讼。他在今年8月之前供职于FTC的隐私及身份保护部门，担任技术专家。在诉讼中，索菲安呼吁FTC对谷歌进行调查，“迫使谷歌采取积极措施，保护个人用户在搜索时的隐私”。诉讼中还称，谷歌与第三方共享用户的搜索关键词，这些关键词中包含用户的个人信息。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">在一封电子邮件声明中，谷歌表示将搜索关键词数据与第三方分享是“所有搜索引擎的标准行为”，“网站站长通过这些信息了解哪些关键词搜索促使用户访问他们的网站”。声明还称，“谷歌没有泄露任何搜索源至目标网站的个人信息”。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">FTC发言人拒绝对此置评。索菲安提起诉讼的核心在于互联网处理用户点击链接的方式。当用户点击一个链接时，用户的源地址将会通过“来源消息头”被发送至被链接的网站。在进行搜索时，这一地址包括用户搜索的全部关键词，这其中有可能包含用户的个人信息，例如当用户搜索自己姓名时。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">索菲安在接受采访时表示：“我并不是说，每次点击谷歌搜索结果链接你都有可能泄露个人身份。我所说的是，谷歌很肯定的声称，他们能够保护用户数据，但实际上他们无法做到这一点。”</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">索菲安在起诉中称，当他在FTC工作期间，根据总法律顾问办公室的决定，他被禁止参与任何与谷歌有关的事务，因为他早年的学术研究和其他成果“对谷歌来说是致命的，有可能导致对该公司的偏见”。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">伯克利法律与科技中心主管克里斯·杰·胡夫纳格（Chris Jay Hoofnagle）表示，目前尚不清楚FTC是否会认真对待索菲安的诉讼。他表示：“这一诉讼有趣的部分并不是法律理论，而是谷歌与广告主之间不为外人所知的阴谋和对话。”</span>\r\n</p>', 'news/15.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 2, 857735990, -1, 0, 1, 0, 0, 0, NULL, '', ''),
(16, 0, 1, 8, '明年苹果iPad销量将达4500万台 进账300亿美元', '', 0, 16, 0, 1286521311, 1286521311, '苹果,iPad', '', '北京时间10月8日消息，据国外媒体报道，Ticonderoga证券公司分析师布莱恩·怀特（Brian White）表示，苹果计划明年销售4500万台iPad。', '', '<p>\r\n	<span style="font-family:Arial;">北京时间10月8日消息，据国外媒体报道，Ticonderoga证券公司分析师布莱恩·怀特（Brian White）表示，苹果计划明年销售4500万台iPad。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">数月前有媒体报道称，对冲基金经理杰夫·马修斯（Jeff Matthews）预计苹果一年将销售5000万台iPad。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">4500万台iPad将给苹果带来约300亿美元营收——相当于该公司2008年的营收。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">iPad的发布不仅给苹果带来了滚滚财源，还改变了全球PC产业。在过去25年的大多数时间里，高盛一直看好微软，但最近下调了对微软股票的评级，原因是PC将受到以iPad为代表的平板电脑的蚕食。</span>\r\n</p>', 'news/16.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 0, 0, -1, 0, 1, 0, 0, 0, NULL, '', ''),
(17, 0, 1, 8, '评论：如果微软联手Adobe为针对苹果 就狭隘了', '', 0, 17, 0, 1286521414, 1286521414, '微软,Adobe,苹果', '', '假如，微软和Adobe联手的话，苹果可以战胜吗？这是需要回答的问题。不过这个问题恐怕在微软动心思收购Adobe的那一刹那，他们就想过这个问题了，联手Adobe或者收购Adobe能够带来什么？', '', '<p>\r\n	<span style="font-family:Arial;">假如，微软和Adobe联手的话，苹果可以战胜吗？这是需要回答的问题。不过这个问题恐怕在微软动心思收购Adobe的那一刹那，他们就想过这个问题了，联手Adobe或者收购Adobe能够带来什么？</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">从报道来看，微软和Adobe的合作针对的是苹果……这个让人恨的牙痒痒的潮流引领者。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">微软和Adobe可是一对死冤家。微软的Silverlight和Adobe的Flash势不两立。但是由于双方发展道路上横亘着一颗恼人的苹果，苹果曾表示在iPhone和iPad上封杀Flash。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">在移动市场，微软的吸引力逐渐下降，Google和苹果成为光鲜的明星，为了夺回往日的光环，微软不惜停掉自有手机业务，把精力放在Windows Phone 7上面。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">在业界都不看好的情况下，微软似乎博得了手机老大诺基亚的垂青，传说诺基亚将推出Windows Phone7智能手机。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">Adobe呢，貌似一个落魄者。眼瞅着苹果的iPhone和iPad如日中天，自己的“孩子”却不被采用，心中那个纠结，但是Adobe自己毕竟势单力孤，需要找个合适的帮手。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">Adobe，这个单词的英文解释有一个是“土坯”的意思。土坯搭建起来的房子可以持久吗？这是个问题。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">要说微软收购Adobe的可能性，几乎为零，微软现在不会轻易谈收购，因它时刻被盯着呢，它这一收购，那边就会有人说您这又垄断啦，购监处不会放过他们的。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">苹果现在太小家子气，仗着自己的iPhone和iPad是市场宠儿，就可以排除异己。但是有消息称，有关机构已经调查了苹果。而苹果方面也松口可能会支持Flash。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">苹果的iPad已经风光很长一阵子，微软的Windows7 Tablet版年底前会发布，这让很多OEM及业内合作伙伴等不及或者等得不耐烦，而至于去选择Android或者MeeGo。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">微软有些点子很先进，但是市场化的脚步却慢一拍，这种步调已经让微软面临窘境。有评论称，Flash在微软手里会是一个有趣的武器。这句话说的很无厘头，怎么个有趣呢。SliverLight要和Flash联手来，针对苹果？还是说双方扩大合作，在其他领域实现突破？</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">如果，双方的合作单纯针对苹果，那么这个合作没有什么意义，因为苹果的市场和用户毕竟也就那么点。双方应该搞点新花样。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">风水轮流转。当年微软风光时，对手想着攻击它，而现在它要想折子去打击敌人。苹果呢，别太离谱，当心业界以彼之道还之彼身。抱着开放的心态，才会迎来更大发展。</span>\r\n</p>', 'news/17.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 1, 643264109, -1, 0, 1, 0, 0, 0, NULL, '', ''),
(18, 0, 1, 8, '亚马逊欲开Android应用程序商店与谷歌竞争', '', 0, 18, 0, 1286521478, 1286521478, '亚马逊,Android,谷歌', '', '北京时间10月8日消息，据国外媒体报道，亚马逊正计划开设一家应用软件商店，服务于基于谷歌Android操作系统的智能手机，进而与谷歌自有的应用程序商店展开正面竞争。', '', '<p>\r\n	<span style="font-family:Arial;">北京时间10月8日消息，据国外媒体报道，亚马逊正计划开设一家应用软件商店，服务于基于谷歌Android操作系统的智能手机，进而与谷歌自有的应用程序商店展开正面竞争。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">据亚马逊给软件开发方的文件显示，该公司将从销售额中分成30%，其余70%收入归属开发方。不过该文件还有一项约束性条款，即这些应用程序不可在其他平台以更低价格出售。该收入分成比例与其他应用软件商店一致。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">亚马逊就此事主动接触过的一些开发方表示，并未被告知该软件商店的名字或上线时间。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">亚马逊一位发言人表示，对传言和猜测不予置评。谷歌则未立即对置评请求作出回应。</span>\r\n</p>', 'news/18.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 1, 643339876, -1, 0, 1, 0, 0, 0, NULL, '', ''),
(19, 0, 1, 8, '无论是门户还是搜索 中国雅虎都难以东山再起', '', 0, 19, 0, 1286521670, 1286521670, '中国雅虎,雅虎,搜索,门户', '', '如果不是最近雅虎和阿里巴巴之间的口水战，很多网民已经不清楚中国还有雅虎，或者雅虎还在中国。', '', '<p>\r\n	<span style="font-family:Arial;">如果不是最近雅虎和阿里巴巴之间的口水战，很多网民已经不清楚中国还有雅虎，或者雅虎还在中国。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">“作为中文门户和搜索引擎，中国雅虎基本没有影响力了”。中国知名互联网观察家方兴东得出这样的结论。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">易观国际的统计数据显示，雅虎中国2009年搜索营收仅占国内搜索市场总营收的2.9%，谷歌的份额为31.8%，百度的份额达到了60.9%。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">关于目前雅虎的份额，记者近日致电易观国际，易观国际分析师曹飞找了半天，很遗憾告诉记者，因为目前作为搜索引擎的中国雅虎，市场份额已经低于1%，所以已经把中国雅虎剔除监测范围。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">而作为中文门户，易观国际分析师曹飞认为从广告份额来评判也是微乎其微了。而广告对应的是访问流量。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">雅虎曾经是互联网界开山鼻祖，为华人杨致远创办于美国。方兴东告诉记者，中国人互联网最初体验，浏览中文网页、搜索、邮箱大多是从雅虎中国开始。 1999年，yahoo.com.cn正式上线，凭借着雅虎的品牌影响力，雅虎中国当时不仅拥有先天优势，而且在技术上都领先新浪、网易、搜狐。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">2005年，雅虎以10亿美元和雅虎中国业务作价，换取了其在阿里巴巴集团近40%股权，雅虎中国变身中国雅虎成为阿里巴巴集团旗下的全资子公司。而最近阿里巴巴和雅虎的股权之争也就始于这次交易。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">据一位雅虎中国的老员工回忆，在并购后马云第一次和员工见面时候曾经表态，虽然他不太懂雅虎的几大业务，但他一定会为中国人创造出一个强大的互联网门户，真正的门户。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">五年过去了，马云当初的设想基本成为泡影。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">中国雅虎的现状成为最近雅巴之争的导火索之一。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">据媒体报道，当马云前往硅谷拜访雅虎CEO巴茨时，她甚至在整个阿里管理层面前将马云数落了一通，批评雅虎中国越来越糟糕的境况。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">而阿里巴巴也不甘示弱。阿里巴巴CEO卫哲则指责雅虎把搜索卖给微软导致阿里巴巴每年向雅虎交技术使用费却没有技术支撑，最终导致中国雅虎在搜索上的式微，而当初阿里巴巴很大程度是看重雅虎在搜索上的发言权。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">对于中国雅虎的式微，方兴东认为阿里巴巴入主后中国雅虎就换了5任总裁，走马灯换CEO极大影响了雅虎的发展，在门户和搜索、社区的战略选择中徘徊多时，而且这样通过职业经理人中途接盘，在互联网界还是少有成功案例，目前成功的基本还是原创团队，如阿里巴巴的马云，网易的丁磊，百度的李彦宏。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">“互联网的成功离不开创业精神。”方兴东说。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">而谢文就是这些走马灯职业经理人之一。2006年10月他受马云之邀任雅虎中国总裁，但41天后黯然去职。原因是他的web2.0社区战略和雅虎高层坚持门户搜索意见不合。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">“对一切以销售为主的阿里巴巴来说，要做一个真正的互联网门户，简直难上加难。”谢文直指这两种商业之间根本不相容。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">易观国际分析师曹飞认为在2005年的交易中雅虎中国更像一个买一送一的“搭头”。在这场交易中，马云意在10亿美金，雅虎志在成为阿里巴巴的大股东，通过交易双方都得到了自己想要的东西，而雅虎中国，离开雅虎到阿里巴巴，阿里巴巴始终对雅虎没有太多的投入，也没有把他作为战略角色，更多是把它作为服务于淘宝、阿里巴巴B2B的配角。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">互联网专栏作家柳华芳分析雅虎中国在之前有国内最早的网上拍卖站点一拍网、有市场份额不少的3721、有还算可以的雅虎网站联盟、搜索份额也还凑合，雅虎统计、雅虎知识堂也都是不错的产品。但进入阿里巴巴后一拍没了，有了淘宝；3721、雅虎搜索都不行了，团队去了淘宝；雅虎联盟变成阿里妈妈，雅虎统计变成量子统计；雅虎知识堂后来归属了口碑网，2009年8月又把口碑网剥离雅虎并入淘宝网。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">阿里巴巴则表示，他们仍然在设法努力帮助雅虎中国发展，目前雅虎中国已经重新被定位为一个娱乐门户网站。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">“无论是门户还是搜索，中国雅虎东山再起机会不会太多了。”易观国际分析师曹飞这样认为。</span>\r\n</p>', 'news/19.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 0, 0, -1, 0, 1, 0, 0, 0, NULL, '', ''),
(20, 0, 1, 8, '“大闸蟹”恶斗百度排名：置顶点击一次200元', '', 0, 20, 0, 1286521939, 1286521939, '大闸蟹,排名,百度', '', '每一次网络的点击，都能让遷荣蟹行销售经理陈晓峰的心“滴血”。“这一下，可能就是一张‘老人头’没了。”', '', '<p>\r\n	<span style="font-family:Arial;">每一次网络的点击，都能让遷荣蟹行销售经理陈晓峰的心“滴血”。“这一下，可能就是一张‘老人头’没了。”他无奈地表示。大闸蟹销售旺季尚未到来，沪上蟹商“血战”市场的“战鼓”早已敲响。除了拼资源、拼价格、拼客户、拼服务之外，拼网上排名也成了重中之重。为了能让自己的蟹行在首页、甚至出现在前三位中，用钱去“恶斗”关键词的排名成为不得不参与的现实。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">记者采访了解，目前在上海，蟹行如果想出现在百度“大闸蟹”关键词搜索的首页，没有60元以上的点击付费“想都别想”，而如果置顶，点击一次的价格甚至在200元以上。“这已经不能说是夸张了，简直就是疯狂！”一位蟹行的老板指出。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;"><strong>一天竞价费三千元</strong></span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">“你要看我的网站，直接输域名，千万别百度‘大闸蟹’三个字。”陈晓峰半开玩笑半认真地说道，“帮我省点钱吧。”</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">能有实力开蟹行，还缺这点小钱？面对记者的调侃，陈晓峰双手一摊叫道，“光一天竞价费就能超过3000元，这还算小钱？”</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">可以说，大闸蟹的商战一点都不平静，拼资源、拼价格、拼客户、拼服务，除了这些，竞争网上的百度排名同样激烈，为的就是让自己的蟹行能让顾客更为醒目。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">陈晓峰一早就打开电脑查询当日大闸蟹百度竞价，结果让他“很受伤”，出现在首页的“地板价”就是60元，而要想成为“第一名”，则需用付出200元每次的点击费用。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">“一天网站的点击量50多次，最少也要3000元。”陈晓峰有些郁闷，“就前一会，同一个IP地址连续登陆了3次，200元就这么没了。也不知道真的是顾客，还是被人恶意点击了。”</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;"><strong>利用时间“争一把”</strong></span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">用“头破血流”来形容上海大闸蟹的网络排名竞争，丝毫不为过。在杭州，前三位的大闸蟹竞价起价不过10元以上，当地老板已喊“吃不消”。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">“这个价，在上海压根没竞争力。”陈晓峰不屑地表示，杭州的两家蟹商老板不断在炒高该价格，也陷入了一场“恶战”之中。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">这种网络排名的争夺极其现实，只要有充沛的资金作为后盾，自己的蟹行就能永远出现在最醒目的位置。一个例子是，陈晓峰用3000元换来了自己蟹行当天仅仅数小时的“前置权”，当账户资金用完后，他马上被其他蟹行甩在了身后。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">“就和拍卖一样。”一位百度竞价的推广员如此说道，“出的价钱越高，自然你的蟹行位置越靠前。”</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">但是，如今的价钱已经让许多小蟹行开始感到吃不消，可是他们却又深陷入其中，不能抽身而退，毕竟网上还是存在一定的销量。于是，不少蟹 行开始退出上午9时至11时、下午14时至17时等“黄金时间”的竞争，而是把资金投入到中午吃饭或是下班时间之中，这样可以节约近三分之一的价格。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;"><strong>“疯狂”背后的无奈</strong></span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">“这已经不能说是夸张了，简直就是疯狂！”一位经营了十多年的蟹行老板对竞争关键词排名一针见血地指出。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">所有的蟹行都面临着一个现实，那就是到底想不想赚钱。答案或许很简单，但过程却很艰难。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">目前披露的一种消息是，阳澄湖大闸蟹今年涨价“板上钉钉”。因为产量减少，饵料中的螺蛳、小鱼、玉米价格都有不同程度上涨，再加上劳动力成本、柴油等运输成本和水电费等的增长，大闸蟹的价格少说也会涨一至两成。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">然而，记者采访的多家沪上蟹行却对此并不看好。“是不是能涨，能涨多少，都很难说。”不少老板显得有些信心不足，“竞争太激烈了，成本提升太快，可真要卖高价，又有多少人会买呢？”</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">“我们现在就两手准备了。”陈晓峰挥着一大叠宣传手册无奈说道，“再拼下去，没底了。这种小册子成本价才1角多，夹在报纸里发放的费用也是1角多，3角左右也能打一次广告。”</span>\r\n</p>', 'news/20.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 1, 643264109, -1, 0, 1, 0, 0, 0, NULL, '', ''),
(21, 0, 1, 9, '争做人气王，狂赚更多金币！', '', 0, 21, 0, 1286522564, 1286522796, '人气王,金币', '', '从即日起举行每日人气王评比，每天赚的人气值最高的前三名，获得金币奖励。', '', '<div class="content">\r\n	<p>\r\n		从即日起举行每日人气王评比，每天赚的人气值最高的前三名，获得金币奖励。\r\n	</p>\r\n	<p>\r\n		第一名：+100 金币<br />\r\n		第二名：+50 金币<br />\r\n		第三名：+20 金币\r\n	</p>\r\n	<p>\r\n		活动天天进行，系统自动做统计，老少无欺，全民皆可参加。\r\n	</p>\r\n	<p>\r\n		每日人气王排行榜将在官网首页改版后，在首页做显示过去一天的评比结果。\r\n	</p>\r\n	<p>\r\n		关于赚人气值的方法，请见：<a href="http://www.kingcms.com/blog/notice/forumsconfig/">关于论坛积分、人气值、金币和文件上传大小的说明</a>\r\n	</p>\r\n</div>\r\n<p></p>', 'news/21.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 0, 0, -1, 0, 1, 0, 0, 0, NULL, '', ''),
(23, 0, 1, 9, '自助领取VIP勋章,下载模板Admin买单', '', 0, 23, 0, 1286522870, 1286522870, 'VIP,勋章,Admin', '', '为答谢KingCMS商业授权用户，提供在线自助开通VIP勋章的功能。', '', '<div class="content">\r\n	<p>\r\n		为答谢KingCMS商业授权用户，提供在线自助开通VIP勋章的功能。\r\n	</p>\r\n	<p>\r\n		开通步骤如下：\r\n	</p>\r\n	<ol>\r\n		<li>\r\n			注册成为本站会员，然后登陆。 \r\n		</li>\r\n		<li>\r\n			在“我的网站”中点击“加入我的网站”，输入需要授权的网站域名，点击确定。 \r\n		</li>\r\n		<li>\r\n			新建文本文档，命名为：<span style="color:#ff0000;">kingcmscheck.txt</span>，将<strong>验证代码</strong>粘贴到文本中，上传到授权网站根目录，接着点击验证。 \r\n		</li>\r\n		<li>\r\n			当成功验证网站后，并且当前域名已获得授权，网站列表下面显示一行提示：<br />\r\n			<img src="http://www.kingcms.com/images/10111.jpg" />\r\n		</li>\r\n		<li>\r\n			点击提示，即可获得VIP勋章，下载模板等附件时消耗的金币，全部由Admin买单。\r\n		</li>\r\n	</ol>\r\n</div>', 'news/23.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 0, 0, -1, 0, 1, 0, 0, 0, NULL, '', ''),
(22, 0, 1, 9, 'KingCMS地方门户版2.0部分管理模式截图', '', 0, 22, 0, 1286522659, 1286678769, 'KingCMS,地方门户版2.0', '', '相信大家对正在公测的珲春123，也就是KingCMS地方门户版2.0期待已久。', 'demoupfiles/image/12866787660.jpg', '<div class="content">\r\n	<p>\r\n		相信大家对正在公测的<a href="http://www.hunchun123.com/" target="_blank">珲春123</a>，也就是KingCMS地方门户版2.0期待已久。\r\n	</p>\r\n	<p>\r\n		下面就<strong>KingCMS地方门户版</strong>的前台在管理模式下进行截图，基本上可以看到，这些管理选项的存在不会影响任何正常操作，更加不会扰乱网页排版。由于KingCMS地方门户版部分功能尚在开发当中，主体的管理部分还是采用了遮挡方式，敬请谅解。\r\n	</p>\r\n	<p align="center">\r\n		<img src="http://www.kingcms.com/images/10224.jpg" /><br />\r\n		\r\n	</p>\r\n	<p align="center">\r\n		<strong>珲春123首页的广告位管理</strong>\r\n	</p>\r\n	<p align="center">\r\n		<strong><img src="http://www.kingcms.com/images/10225.jpg" /><br />\r\n		<br />\r\n		珲春123的论坛列表</strong>\r\n	</p>\r\n	<p>\r\n		<img src="http://www.kingcms.com/images/10226.jpg" /><br />\r\n		\r\n	</p>\r\n	<p align="center">\r\n		<strong>论坛帖子的管理菜单</strong>\r\n	</p>\r\n	<p align="left">\r\n		<strong>KingCMS地方门户版</strong>采用了纯前台化管理方式，彻底把网站管理人员从复杂繁多的后台菜单中解放出来，整个管理流程只需登陆一次帐号，边浏览边管理，同时也支持批量化操作，甚至比使用QQ更加简单。\r\n	</p>\r\n</div>', 'news/22.html', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 1, 0, 1, 643336617, -1, 0, 1, 0, 0, 0, NULL, '', '');
INSERT INTO `king__article` (`kid`, `kid1`, `ncount`, `listid`, `ktitle`, `ksubtitle`, `nsublength`, `norder`, `isstar`, `ndate`, `nlastdate`, `kkeywords`, `ktag`, `kdescription`, `kimage`, `kcontent`, `kpath`, `nshow`, `nhead`, `ncommend`, `nup`, `nfocus`, `nhot`, `nprice`, `nweight`, `nnumber`, `nbuy`, `ncomment`, `krelate`, `ndigg1`, `ndigg0`, `ndigg`, `nfavorite`, `nhit`, `nhitlate`, `userid`, `ulock`, `adminid`, `isok`, `nip`, `aid`, `nattrib`, `k_author`, `k_source`) VALUES
(24, 0, 1, 9, '关于论坛积分、人气值、金币和文件上传大小的说明', '', 0, 24, 0, 1286522936, 1286522936, '论坛积分,人气值,金币,文件上传大小', '', '关于论坛积分、人气值、金币和文件上传大小的说明', '', '<div class="content">\r\n	<h3>积分设置</h3>\r\n	<p>\r\n		创建主题&nbsp; <strong><span style="color:#3333ff;">+2</span></strong><br />\r\n		主题被回复&nbsp; <strong><span style="color:#3333ff;">+1</span></strong><span style="color:#999999;"> (多次回复不重复计算)</span><br />\r\n		设置为精华 <strong><span style="color:#3333ff;">+10<br />\r\n		</span></strong>首页推荐 <strong><span style="color:#3333ff;">+5</span></strong><br />\r\n		优秀回复 <strong><span style="color:#3333ff;">+5</span></strong>\r\n	</p>\r\n	<p>\r\n		作用：发布会员广告。\r\n	</p>\r\n	<h3>人气值设置</h3>\r\n	<p jquery1283443606924="840">\r\n		被认证会员回复 <strong><span style="color:#3333ff;">+1</span></strong><span style="color:#999999;"> (多次回复不重复计算)</span>\r\n	</p>\r\n	<p>\r\n		作用：显示一个人的受欢迎程度\r\n	</p>\r\n	<h3>金币设置</h3>\r\n	<p jquery1283443606924="980">\r\n		编辑个人资料 <span style="color:#3333ff;"><strong>+20</strong><span style="color:#000000;"></span><span style="color:#999999;">(一次性)</span></span><br />\r\n		编辑用户头像 <span style="color:#3333ff;"><strong>+20</strong><span style="color:#000000;"></span><span style="color:#999999;">(一次性)</span></span><br />\r\n		被认证会员回复 <strong><span style="color:#3333ff;">+2</span></strong><span style="color:#999999;">(多次回复不重复计算)</span><br />\r\n		下载文件 <strong><span style="color:#ff0000;">-5</span><br />\r\n		</strong>我上传的文件被下载 <span style="color:#3333ff;"><strong>+4<br />\r\n		</strong></span>推广文章<span style="color:#3333ff;"><strong>+2 &nbsp;</strong></span>被百度收录后,再补&nbsp;<strong><span style="color:#3333ff;">+10</span></strong> &nbsp;\r\n	</p>\r\n	<p>\r\n		<span>作用：可以购买KingCMS商业授权，下载文件等……</span>\r\n	</p>\r\n	<h3>文件上传尺寸</h3>\r\n	<p>\r\n		图片文件：2Mb，支持扩展名：jpg/jpeg/gif/png<br />\r\n		文件类型：5Mb，支持扩展名：zip/7z/rar\r\n	</p>\r\n</div>', 'news/24.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 0, 0, -1, 0, 1, 0, 0, 0, NULL, '', ''),
(25, 0, 1, 9, '为论坛会员Winnerzyy颁发特殊贡献勋章', '', 0, 25, 0, 1286523012, 1286523012, 'Winnerzyy,勋章', '', '为论坛会员Winnerzyy颁发特殊贡献勋章', '', '<div class="content">\r\n	<p>\r\n		2004年，当我初出茅庐时发布的ActiveCMS，虽然谈不上什么程序，但毕竟它是第一个作品，一直在找。\r\n	</p>\r\n	<p>\r\n		昨天群里偶然提到，令我很意外又很开心的是，<a href="http://www.kingcms.com/forums/u10080/">Winnerzyy</a>还保留着这个原版的程序。\r\n	</p>\r\n	<p>\r\n		今给他特颁发特殊贡献勋章，以表我们对他的感激和钟爱。\r\n	</p>\r\n</div>', 'news/25.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 2, 857769707, -1, 0, 1, 0, 0, 0, NULL, '', ''),
(26, 0, 1, 9, '今天是你的生日，我的祖国', '', 0, 26, 0, 1286523119, 1286523119, 'KingCMS,地方门户版2.0', '', '今天是你的生日，我的祖国', '', '<p>\r\n	“今天是你的生日，我的中国。清晨我放飞一群白鸽……”，雅典的旋律，真切的赞颂。<br />\r\n	<br />\r\n	新中国61岁华诞，KingCMS借助这首经典的歌曲，祝福祖国母亲更加繁荣富强，祝愿中国人民更加幸福安康！时光荏苒，如驹过隙，华夏大地已发生翻天覆地的变化，让国人骄傲，让世人折服。\r\n</p>\r\n<p>\r\n	KingCMS走过了六年，我们肩负着网站标准的责任，心怀着繁荣富强祖国的感恩。我们将会一如既往地为广大用户提供优质的产品和服务，向着中国制造的世界CMS品牌的目标冲锋！\r\n</p>', 'news/26.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 1, 0, 4, 977831013, -1, 0, 1, 0, 0, 0, NULL, '', ''),
(27, 0, 1, 9, '史上最疯狂的赚金币活动“全民推广KingCMS”开展了！', '', 0, 27, 0, 1286523210, 1286678737, 'KingCMS,全民推广,金币', '', '亲爱的KingCMS会员们，官网在2010年9月1日开放以来，得到了广大KC爱好者的热心支持，各项统计指数节节攀升。众所周知，官网的金币是可以用下载资源和兑换程序授权等用途的，目前已经有六大方法能赚取金币(具体见常见问题)，下面就第七种最疯狂的赚取金币方法公布如下', 'demoupfiles/image/12866787340.jpg', '<div class="content">\r\n	<p>\r\n		亲爱的KingCMS会员们，官网在2010年9月1日开放以来，得到了广大KC爱好者的热心支持，各项统计指数节节攀升。众所周知，官网的金币是可以用下载资源和兑换程序授权等用途的，目前已经有六大方法能赚取金币(具体见<a href="http://www.kingcms.com/faq/" target="_blank">常见问题</a>)，下面就第七种最疯狂的赚取金币方法公布如下：\r\n	</p>\r\n	<p>\r\n	</p>\r\n	<p>\r\n		史上最疯狂的赚金币活动-<strong>全民推广KingCMS</strong>。<br />\r\n		参与方法非常简单：<strong>转载文章</strong>。得到的回报非常诱人：1个月能达到最多<strong><span style="color:#ff0000;">36000个金币</span></strong>！\r\n	</p>\r\n	<p>\r\n	</p>\r\n	<p>\r\n		<strong>活动细则如下：</strong>\r\n	</p>\r\n	<p>\r\n	</p>\r\n	<p>\r\n		参与对象：KingCMS全体会员\r\n	</p>\r\n	<p>\r\n	</p>\r\n	<p>\r\n		<strong>活动流程</strong>：\r\n	</p>\r\n	<p>\r\n		1、每天到“<a href="http://www.kingcms.com/advertorial/">我的推广</a>”领取文章进行转载，转载的地方不限，建议以论坛和博客为主；<br />\r\n		2、每转载完毕一篇文章，点击“<strong>转载验证</strong>”提交转载的文章网址进行验证后得2个金币；<br />\r\n		3、自转载后一个小时允许申请提交到百度收录检测，通过后再额外加10个金币；\r\n	</p>\r\n	<p>\r\n	</p>\r\n	<p>\r\n		<strong>备注说明</strong>：\r\n	</p>\r\n	<p>\r\n		1、百度收录的标准是，输入你发的文章的网址，百度有搜索结果即可通过检测。<br />\r\n		2、一般的网站一个小时百度不会收录的，建议隔几天再提交检测，每天只能检测一次。<br />\r\n		3、每个帐号每天最多允许转载文章到100个网址。&nbsp;<br />\r\n		4、不同会员如果转载同一篇文章到同一个论坛，可以适当修改标题，但是标题必须要包含提示的关键字才能通过检验。&nbsp;<br />\r\n		5、文章库里面的文章可以随意选择其中一篇进行转载，都做统计的。\r\n	</p>\r\n	<p>\r\n	</p>\r\n	<p>\r\n		<strong>按照理论的计算</strong>，1天1位会员把相同或者不同的文章转载到100个网址，第二天或者N天之后百度能检测到，那么合计共赚到100*12=1200个金币，1个自然月按照30天计算，合计共赚到1200*30=36000个金币。\r\n	</p>\r\n	<p>\r\n	</p>\r\n	<p>\r\n		能否达到理论值，因人而异了，有了这个疯狂的活动之后，各位首富们可要注意了，大伙都有机会去抢你的地位了。\r\n	</p>\r\n	<p>\r\n	</p>\r\n	<p>\r\n		祝大家生活愉快，用KingCMS创造更高的效益！\r\n	</p>\r\n</div>', 'news/27.html', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 3, '', 0, 0, 1, 0, 5, 1072167326, -1, 0, 1, 0, 0, 0, NULL, '', ''),
(28, 0, 1, 8, '网络营销中常用的十种有效方法', '', 0, 28, 0, 1286523991, 1286523991, '网络营销', '', '网络营销职能的实现需要通过一种或多种网络营销手段，常用的网络营销方法除了搜索引擎注册之外还有：', '', '<p>\r\n	<span style="font-family:Arial;">网络营销职能的实现需要通过一种或多种网络营销手段，常用的网络营销方法除了搜索引擎注册之外还有：网络广告、交换链接、信息发布、邮件列表、许可Email营销、个性化营销、会员制营销、病毒性营销等等。下面简要介绍十种常用的网络营销方法及一般效果。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">（1）搜索引擎注册与排名。这是最经典、也是最常用的网络营销方法之一，现在，虽然搜索引擎的效果已经不象几年前那样有效，但调查表明，搜索引擎仍然是人们发现新网站的基本方法。因此，在主要的搜索引擎上注册并获得最理想的排名，是网站设计过程中就要考虑的问题之一，网站正式发布后尽快提交到主要的搜索引擎，是网络营销的基本任务。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">（2）交换链接。交换链接或称互惠链接，是具有一定互补优势的网站之间的简单合作形式，即分别在自己的网站上放置对方网站的LOGO或网站名称并设置对方网站的超级链接，使得用户可以从合作网站中发现自己的网站，达到互相推广的目。交换链接的作用主要表现在几个方面：获得访问量、增加用户浏览时的印象、在搜索引擎排名中增加优势、通过合作网站的推荐增加访问者的可信度等。更重要的是是，交换链接的意义已经超出了是否可以增加访问量，比直接效果更重要的在于业内的认知和认可。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">（3）病毒性营销。病毒性营销并非真的以传播病毒的方式开展营销，而是通过用户的口碑宣传网络，信息像病毒一样传播和扩散，利用快速复制的方式传向数以千计、数以百万计的受众。病毒性营销的经典范例是Hotmail.com.现在几乎所有的免费电子邮件提供商都采取类似的推广方法。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">（4）网络广告。几乎所有的网络营销活动都与品牌形象有关，在所有与品牌推广有关的网络营销手段中，网络广告的作用最为直接。标准标志广告（BANNER）曾经是网上广告的主流（虽然不是唯一形式），进入2001年之后，网络广告领域发起了一场轰轰烈烈的创新运动，新的广告形式不断出现，新型广告由于克服了标准条幅广告条承载信息量有限、交互性差等弱点，因此获得了相对比较高一些的点击率。有研究表明，网络广告的点击率并不能完全代表其效果，网络广告对那些浏览而没有点击广告的、占浏览者总数99%以上的访问者同样产生作用。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">（5）信息发布。信息发布既是网络营销的基本职能，又是一种实用的操作手段，通过互联网，不仅可以浏览到大量商业信息，同时还可以自己发布信息。最重要的是将有价值的信息及时发布在自己的网站上，以充分发挥网站的功能，比如新产品信息、优惠促销信息等。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">（6）许可Email营销。基于用户许可的Email营销比传统的推广方式或未经许可的Email营销具有明显的优势，比如可以减少广告对用户的滋扰、增加潜在客户定位的准确度、增强与客户的关系、提高品牌忠诚度等。开展Email营销的前提是拥有潜在用户的Email地址，这些地址可以是企业从用户、潜在用户资料中自行收集整理，也可以利用第三方的潜在用户资源。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">（7）邮件列表。邮件列表实际上也是一种Email营销形式，邮件列表也是基于用户许可的原则，用户自愿加入、自由退出，稍微不同的是，Email营销直接向用户发送促销信息，而邮件列表是通过为用户提供有价值的信息，在邮件内容中加入适量促销信息，从而实现营销的目的。邮件列表的主要价值表现在四个方面：作为公司产品或服务的促销工具、方便和用户交流、获得赞助或者出售广告空间、收费信息服务。邮件列表的表现形式很多，常见的有新闻邮件、各种电子刊物、新产品通知、优惠促销信息、重要事件提醒服务等等。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">（8）个性化营销。个性化营销的主要内容包括：用户定制自己感兴趣的信息内容、选择自己喜欢的网页设计形式、根据自己的需要设置信息的接收方式和接受时间等等。个性化服务在改善顾客关系、培养顾客忠诚以及增加网上销售方面具有明显的效果，据研究，为了获得某些个性化服务，在个人信息可以得到保护的情况下，用户才愿意提供有限的个人信息，这正是开展个性化营销的前提保证。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">（9）网络会员制营销。网络会员制营销已经被证实为电子商务网站的有效营销手段，国外许多网上零售型网站都实施了会员制计划，几乎已经覆盖了所有行业，国内的会员制营销还处在发展初期，不过已经看出电子商务企业对此表现出的浓厚兴趣和旺盛的发展势头，一度是中国电子商务旗帜的时代珠峰公司（My8848.net）于2001年3月初推出的"My8848网上连锁店（U-Shop）"就是一种会员制营销的形式。现在，西单电子商务公司网上商场同样采用了这种营销思想，不过在表现形式上有一定的差别。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">（10）网上商店。建立在第三方提供的电子商务平台上、由商家自行经营网上商店，如同在大型商场中租用场地开设商家的专卖店一样，是一种比较简单的电子商务形式。网上商店除了通过网络直接销售产品这一基本功能之外，还是一种有效的网络营销手段。从企业整体营销策略和顾客的角度考虑，网上商店的作用主要表现在两个方面：一方面，网上商店为企业扩展网上销售渠道提供了便利的条件；另一方面，建立在知名电子商务平台上的网上商店增加了顾客的信任度，从功能上来说，对不具备电子商务功能的企业网站也是一种有效的补充，对提升企业形象并直接增加销售具有良好效果，尤其是将企业网站与网上商店相结合，效果更为明显。</span>\r\n</p>', 'news/28.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 0, 0, -1, 0, 1, 0, 0, 0, NULL, '', ''),
(29, 0, 1, 8, 'Zynga首席设计师解密开心农场成功原因：结构简单', '', 0, 29, 0, 1286527541, 1286527541, 'Zynga,开心农场', '', '北京时间10月8日消息，据国外媒体报道，知名社交游戏开发商Zynga首席游戏设计师布赖恩-雷诺兹（Brian Reynolds）', '', '<p>\r\n	<span style="font-family:Arial;">北京时间10月8日消息，据国外媒体报道，知名社交游戏开发商Zynga首席游戏设计师布赖恩-雷诺兹（Brian Reynolds）本周四在参加游戏开发者在线大会（Game Developers Conference Online）时揭露了该公司旗下热门游戏FrontierVille成功的秘密。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">FrontierVille今年6月份发布，紧随农场游戏FarmVille（开心农场）。截至7月份，该游戏活跃用户已经达到2000万。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">赖恩-雷诺兹认为这款游戏以及FarmVille（开心农场）的成功关键在于都拥有简单的结构，但深度和细节却不断提高。雷诺兹称，他相信人们对这些所谓的“社交游戏”的需求不过是想知道朋友们在做什么，无论是通过Facebook动态消息知晓还是通过游戏本身。所以，不少游戏设计师就将重点放在尽力延长游戏时间上。雷诺兹称，FrontierVille这样的游戏一般定位于时间递增15至20分钟。玩家可以在工作或学习时玩这些社交游戏。雷诺兹表示，“玩游戏的时候大可以做其它的事情。”</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">FrontierVille开发团队不断在游戏中添加新元素，同时还不断通过移除某些元素进行调整，比如添加动物元素就是一个例子。另外还在游戏中添加了“恶棍”，这同添加家庭成员一样取得了成功。雷诺兹说，在游戏中添加“配偶”的做法就非常有趣，很受欢迎。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">对于如何吸引玩家进入游戏，雷诺兹称，“学习的过程是艰难的，毕竟上学总是无趣的。”他说，所以要使游戏“教程”变得尽可能充满乐趣及吸引力。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">雷诺兹说，好的游戏设计师应该能关注到游戏中各种有机出现的行为，哪怕是无意的。他举了一个例子：一个女性站在绵羊身旁的卡通形象在Facebook动态中被分享得最多。Zynga利用了这种幽默的场景，并看到了大面积扩散。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">雷诺兹认为，社交游戏质量提高很快，未来将充满新鲜的内容和更动人的故事情节。雷诺兹告诉游戏设计师们，这就是该公司旗下游戏成功的秘密-“趣味即赚钱”。</span>\r\n</p>', 'news/29.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 0, 0, -1, 0, 1, 0, 0, 0, NULL, '', ''),
(30, 0, 1, 8, '盖茨：给孩子留几十亿对社会不利', '', 0, 30, 0, 1286527689, 1286682132, '盖茨,慈善', '', '央视财经频道主持人芮成钢专访比尔盖茨、沃伦巴菲特。两人谈论慈善与家庭的关系，社会慈善事业，以及资本、信贷和市场的作用。对话在财经频道《领导者》栏目播出。', '', '<p><span style="font-family:Arial;">央视财经频道主持人芮成钢专访比尔盖茨、沃伦巴菲特。两人谈论慈善与家庭的关系，社会慈善事业，以及资本、信贷和市场的作用。对话在财经频道《领导者》栏目播出。</span></p><p><br /><span style="font-family:Arial;"><strong>慈善始于家庭</strong></span></p><p><br /><span style="font-family:Arial;">慈善始于家庭，这意味着，对家人尽责是你的首要义务。它也意味着，你要观察四周是否有需要帮助的人，给予他们帮助。</span></p><p><br /><span style="font-family:Arial;">做慈善时，我们很少谈及孩子。给孩子们的金钱，可能会有损于他们的自我发展动力、他们的职业发展、以及他们走出社会寻找自我道路的方式。</span></p><p><br /><span style="font-family:Arial;">主持人：美国有一古老谚语：慈善始于家庭。 这是不是意味着你对家庭的责任也是一种慈善活动？</span></p><p><br /><span style="font-family:Arial;">盖茨：慈善始于家庭，这意味着，对家人尽责是你的首要义务。它也意味着，你要观察四周是否有需要帮助的人，给予他们帮助。大多数人都是在身边学会第一次施与，随着施舍经历的增多，他们可能会开始放眼整个国家甚至世界。你亲眼所见后，就会发现最好的方法。</span></p><p><br /><span style="font-family:Arial;">巴菲特：在美国，大多数的捐款都是流向教堂。他们也会捐赠给当地的学校、本地慈善组织等等，这些都是很好的慈善途径。</span></p><p><br /><span style="font-family:Arial;">主持人：您年轻时，比较吝于花钱。您现在对金钱的态度改变了很多，是什么改变了您的态度？</span></p><p><br /><span style="font-family:Arial;">盖茨：刚开始时，我很穷。到了35岁时，我拥有的金钱已远超出家人所需要的数目，因此我对拥有多少金钱已经比较超然。与其在六十岁时捐赠几百万美元，也许到七十岁时捐赠几十亿，对社会更有利。我一直都有一定数额的捐款，但最重要的转折点是五年前。</span></p><p><br /><span style="font-family:Arial;">主持人：您一直都如此慷慨地做善事吗？</span></p><p><br /><span style="font-family:Arial;">盖茨：做慈善时，我们很少谈及孩子。给孩子们的金钱，可能会有损于他们的自我发展动力、他们的职业发展以及他们走出社会寻找自我道路的方式。我在教育上、生活上尽力给了我的孩子们所需的一切，但他们必须靠自己的努力去赚钱。给孩子们留下几十亿（美元）的遗产，对他们自身及整个社会都是不利的。</span></p><p><br /><span style="font-family:Arial;"><strong>慈善是全社会的事</strong></span></p><p><br /><span style="font-family:Arial;">富人们不需要一个准则，来要求他们捐款，即使他们不想捐赠，也是个人选择。但有先例的话，人们可以相互模仿，他们会更享受善举，也会带来更大影响。</span></p><p><br /><span style="font-family:Arial;">如果我们成长中，看到人们都会慷慨捐款，这会影响到我们。一旦开始了，捐款和善举都会随时日增多。</span></p><p><br /><span style="font-family:Arial;">主持人：目前为止，并没有一个准则，说富人应该将百分之多少的财富捐赠给社会。那么继您之后的捐赠者，是否知道他们该怎么做？</span></p><p><br /><span style="font-family:Arial;">盖茨：有两个目标，一是人们需要明智地捐赠，通过善举互相学习，我们也鼓励人们在更年轻的时候投入这一事业，你在年轻时更有活力，更清楚世界上正发生什么事，这会有助于你的成功。富人们不需要一个准则，来要求他们捐款，即使他们不想捐赠，也是个人选择。但有先例的话，人们可以相互模仿，他们会更享受善举，也会带来更大影响。</span></p><p><br /><span style="font-family:Arial;">巴菲特：如果我们成长中，看到人们都会慷慨捐款，这会影响到我们。一旦开始了，捐款和善举都会随时日增多。很少有人会逆水行舟越捐越少。因为看到人们过上更好的生活，你的捐赠会升级。</span></p><p><br /><span style="font-family:Arial;">盖茨：你会看到奖学金对孩子们会有什么帮助，科研基金如何改变社会，环保投入是否会有成果。开始时你会犯一些错，所以你会希望有人与你分享经验或并肩作战。但当你亲眼见到你所资助的孩子时，你会更有动力将慈善进行下去。通常人们都会越来越投入。</span></p><p><br /><span style="font-family:Arial;"><strong>机遇不是问题 价格才是</strong></span></p><p><br /><span style="font-family:Arial;">从长远的角度来说，我们要明智地做生意，而非只关注市场。</span></p><p><br /><span style="font-family:Arial;">我们都想要大量的生意机会，但也需要良好的时机。我们不用担心机遇问题，关键是市场价格问题。</span></p><p><br /><span style="font-family:Arial;">主持人：有人说市场是可以预测的，比如说巴菲特可以坐拥大笔金钱，静观其变，一旦危机发生，就出手，获得巨额利润。但还有人认为，市场是不可预测的。对你们来说，这两种方式，哪种更好？</span></p><p><br /><span style="font-family:Arial;">盖茨：虽然你不能预测市场，但是时间一长，一家公司的价值就能显现。而巴菲特能累积上亿的资产，就是因为他能在一定范围内感知信息流。但我对市场了解比较少，不过我还是清楚市场是不可预测的。从长远的角度来说，我们要明智地做生意，而非只关注市场。</span></p><p><br /><span style="font-family:Arial;">巴菲特：我们都想要大量的生意机会，但也需要良好的时机。我们不用担心机遇问题，关键是市场价格问题。即使是2008年秋天，很多人都说我下周或者下个月就会退出市场，但是我却赚了很多。<br /><br /><br /><img src="/demoupfiles/image/2010/10/10/201010101142064805.jpg" alt="" /><br /></span></p>', 'news/30.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 0, 0, -1, 0, 1, 0, 0, 0, NULL, '', ''),
(31, 0, 1, 8, 'PayPal面向iPhone推出拍照存支票功能', '', 0, 31, 0, 1286527784, 1286527784, 'PayPal,iPhone,支票', '', '据国外媒体今日报道，PayPal已经向免费iPhone应用中增添了一项最新功能，只要用iPhone给支票拍照，即可将其存入PayPal账号，从而免去了跑到银行或ATM机办理业务的麻烦。', '', '<p>\r\n	<span style="font-family:Arial;">据国外媒体今日报道，PayPal已经向免费iPhone应用中增添了一项最新功能，只要用iPhone给支票拍照，即可将其存入PayPal账号，从而免去了跑到银行或ATM机办理业务的麻烦。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">用户只要用iPhone将支票的反正面拍成照片即可将其存入PayPal账户，之后既可以直接花掉，也可以将其转存到银行账户中。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">PayPal建议用户将支票保留15天，以免出现问题。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">PayPal平台、移动和新企业业务副总裁奥萨马-贝迪尔（Osama Bedier）表示，该功能推出36小时内已经处理了总额10万美元的支票业务。</span>\r\n</p>', 'news/31.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 1, 643306471, -1, 0, 1, 0, 0, 0, NULL, '', ''),
(32, 0, 1, 8, '百事副总裁董本洪离职 将任贰点零互动CEO', '', 0, 32, 0, 1286527883, 1286527883, '百事,贰点零互动', '', '经百事集团证实，原百事大中华区市场副总裁董本洪已于近日辞职，将加盟贰点零互动传媒，出任该公司首席执行官。贰点零互动传媒由原千橡集团（人人网&猫扑网）执行副总裁，首席营销官Susan Wang 创建。', '', '<p>\r\n	<span style="font-family:Arial;">10月8日消息，经百事集团证实，原百事大中华区市场副总裁董本洪已于近日辞职，将加盟贰点零互动传媒，出任该公司首席执行官。贰点零互动传媒由原千橡集团（人人网&amp;猫扑网）执行副总裁，首席营销官Susan Wang 创建。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">贰点零互动传媒创始人Susan在2010中国互联网大会中曾经表示：“我们的世界正在改变，中国媒体环境已经百花齐放，互联网营销格局发生变化，正在迅速发展，从被动型到主动型。尤其现今的互动营销领域，越来越多的客户已经开始不在满足于传统4A公司的创意导向，开始追求创意+技术创新驱动的实效营销与360度的整合营销。”</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">Susan早年有千橡众多互动案例和对新媒体营销的向往与新锐实践的经验，而百事集团副总裁的董本洪，有着全球前沿的互动营销国际视野和专业营销能力，填补了国内广告公司全局战略的不足。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">业内人士分析认为，贰点零互动传媒起初只是IM2.0互动集团的旗下品牌，而在过去一年多的时间里，贰点零互动传媒的团队竞争力和未来发展潜力得到了提高。百事、海尔、蒙牛合作以来，均在新型营销探索上获得了不同程度的成功。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">董本洪，现任百事可乐大中华区市场副总裁，拥有超过16年的国际市场营销经验，曾成功带领百事可乐在2008年以“全民上罐，舞动中国”项目为百事集团赢得空前胜利，并获颁百事集团董事长奖殊荣。其后完成“百事我创”全球性品牌战略转型，推出“百事群音”乐队大赛娱乐营销项目，力主“把舞台交给年轻人”的全新品牌理念，在营销领域久富盛名。2005年，他成功的将世界第一运动饮料佳得乐（Gatorade）投放中国市场，在2007年更带领全球第一果汁品牌纯果乐-果缤纷（Tropicana）的上市，为百事在中国市场开拓了宽广的非碳酸饮料领域。之前，他曾在宝洁（台湾）以及欧莱雅（加拿大）等多家跨国集团公司担任核心营销领导人，经营玉兰油（OLAY），潘婷（Pantene），汰渍（Tide），巴黎欧莱雅（L‘Oreal Paris）等品牌。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">贰点零互动传媒由原千橡集团（人人网&amp;猫扑网）执行副总裁，首席营销官Susan Wang 所创建，自创建以来一直以中国互联网应用的前沿阵地，致力于拓展最具发展趋势的搜索媒体、社交媒体、视频媒体、无线媒体等互动营销市场。在新媒体的应用中惯以技术驱动营销模型，以SEM（搜索引擎营销）、SEO（搜索引擎优化）、SRM（用户关系管理）、APP GAME、电子商务营销与竞争广告平台为其核心的竞争优势。贰点零互动传媒目前服务于百事可乐，海尔，欧莱雅，蒙牛，森马等多家客户，客户均为各行业标杆客户，经典案例更已为业内广为流传。</span>\r\n</p>', 'news/32.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 2, 857725233, -1, 0, 1, 0, 0, 0, NULL, '', ''),
(33, 0, 1, 8, '分析称谷歌第三季营收和利润将双双大幅增长', '', 0, 33, 0, 1286528030, 1286528030, '谷歌', '', '据国外媒体报道，谷歌将于下周四股市收盘后公布第三季度业绩，分析师认为该公司在营收和利润方面均有大幅增长，主要原因在于第三季度期间搜索广告方面的需求增长。', '', '<p>\r\n	<span style="font-family:Arial;">据国外媒体报道，谷歌将于下周四股市收盘后公布第三季度业绩，分析师认为该公司在营收和利润方面均有大幅增长，主要原因在于第三季度期间搜索广告方面的需求增长。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">根据市场调查公司FactSet Research的调查，华尔街分析师预期谷歌第三季度不计特殊项目的每股盈利为6.67美元，净收入达到52亿美元。而去年同期不计特殊项目的每股盈利和净收入分别为5.89美元和44亿美元，增长分别达到13.2%和18.2%.</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">分析师普遍认为第三季度广告主的需求有较大增长，从而使得广告主支付给谷歌的每广告链接点击金额有所提高。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">摩根大通分析师埃姆兰·克汉（Imran Khan）在周二的一份研究备忘录中向客户表示，由于与社交网站MySpace续签合约，谷歌可能从而在该季度节省了部分吸引网络流量至其服务的费用。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">克汉还指出，谷歌此外在旅游和金融服务方面的搜索广告量也有所增长。他还预期谷歌第三季度的付费点击量将同比增长15%，每广告点击的平均价格增长3%.克汉对谷歌的目标股价为569美元。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">谷歌股价在过去3个月增长18%，在周四收盘时报530.01美元。而以科技股为主的纳斯达克综合指数同期增长仅为约10%.</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">市场研究公司Technology Research Group分析师克里斯·布尔基（Chris Bulkey）最近向客户表示，谷歌第三季度的业绩有可能符合华尔街分析师的平均预期。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">但是根据布尔基上周发布的研究报告，他对于谷歌的行情并不看好。他指出，谷歌的Android移动操作系统已经快速的获得了较大的市场份额，但是由于该系统是免费向手机制造商开放，因此在目前不能作出较大的收入贡献。他估计谷歌现在97%的影视仍然来自于网络广告，尽管该公司一直致力于使其营收来源多样化。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">此外，布尔基指出，谷歌越来越依赖于通过收购来提高营收增长。尽管谷歌在2009年并购了不到10家公司，但今年去已经收购了超过20家公司。他写到：“我们看跌的立场并不是基于目前的财务状况，而是因为该公司缺乏有力的增长刺激因素。”</span>\r\n</p>', 'news/33.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 2, 857744477, -1, 0, 1, 0, 0, 0, NULL, '', ''),
(34, 0, 1, 8, '麦当劳试水社交游戏营销：美版开心农场投广告', '', 0, 34, 0, 1286528123, 1286681974, '社交游戏,营销,开心农场,麦当劳', '', '据国外媒体报道，全球知名快餐连锁麦当劳周四宣布与社交游戏开发商Zynga旗下农场游戏FarmVille展开合作伙伴关系，创建一个独特的麦当劳农场，用户可以通过与该品牌农场互动获得奖励。虽然该活动只进行了一天，但已经产生了巨大的推广效应。', '', '<p><span style="font-family:Arial;">据国外媒体报道，全球知名快餐连锁麦当劳周四宣布与社交游戏开发商Zynga旗下农场游戏FarmVille展开合作伙伴关系，创建一个独特的麦当劳农场，用户可以通过与该品牌农场互动获得奖励。虽然该活动只进行了一天，但已经产生了巨大的推广效应。</span> </p>\r\n<p><span style="font-family:Arial;">在本次营销活动中，麦当劳农场将作为用户的“邻居农场”出现，用户可以在拜访麦当劳农场的过程中帮忙，比如帮助蕃茄成长等，作为回报，用户会获得一种名为“FarmVille McCafe Consumable”的奖励。“FarmVille McCafe Consumable”能让玩家速度加倍。与麦当劳农场互动的玩家还可以获得麦当劳的热气球道具装点自己的农场。</span> </p>\r\n<p><span style="font-family:Arial;">社交品牌和广告公司Appssavvy联合创始人兼CEO 克里斯-坎宁安称，麦当劳和FarmVille的合作代表着对广告传播和接收的重新定位。企业都意识到了社交活动的存在，然后寻找一条加入增值营销的途径。麦当劳已经做得很出色。</span> </p>\r\n<p><span style="font-family:Arial;">Zynga公司称，每月有超过2.15亿活跃用户玩Zynga游戏，而FarmVille是其中最热门的一款。通过这次合作，麦当劳将获得更多曝光率。</span> </p>\r\n<p><span style="font-family:Arial;">这并不是Zynga的第一次广告策略尝试。早在今年5月份，该公司就同7-11公司的7000家店铺进行了为期6周的合作。</span> <br /><br /><img src="/demoupfiles/image/2010/10/10/201010101139268441.jpg" alt="" /></p>', 'news/34.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 1, 0, 1, 643276757, -1, 0, 1, 0, 0, 0, NULL, '', ''),
(35, 0, 1, 8, 'IE浏览器市占率降至50%以下 未来还将下降', '', 0, 35, 0, 1286528206, 1286528206, 'IE,浏览器,微软', '', '据国外媒体报道，从互联网数据统计公司StatCounter得到的数据显示，微软IE浏览器的市场份额已经下降到50%以下。', '', '<p>\r\n	<span style="font-family:Arial;">据国外媒体报道，从互联网数据统计公司StatCounter得到的数据显示，微软IE浏览器的市场份额已经下降到50%以下。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">该公司的数据显示IE的用户在线率为49.87%，Firefox为31.5%，Chrome为11.54%。Chrome的表现非常抢眼，它的市场份额在去年翻了三倍。StatCounter公司首席执行官Aodhan Cullen说，这是浏览器大战中的一个里程碑，两年前IE在全球的市场份额为67%，同时微软在北美占据了52.3%的浏览器市场，而Firefox为27.21%，Chrome只有9.87%。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">在欧洲用户中，IE的使用率下降到40.26%，Cullen说有一部分原因是欧盟要求用户必须选择他们的默认浏览器。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">IDC部门主管Al Hilwa称市场的平衡不可避免，随着移动互联网的快速发展以及对手的激烈竞争，微软在未来的市场份额还会下降。Hilwa还说Chrome正在获得更多的市场认可，大多数开发者已经倾向于使用Chrome，因为它是最快的浏览器之一。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">微软期望通过即将发布的IE9来挽回颓势，但是目前仍有很多用户使用Windows XP，而IE9无法在XP上安装。目前微软可能正在针对XP开发一款特定的IE9版本。</span>\r\n</p>', 'news/35.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 1, 643276579, -1, 0, 1, 0, 0, 0, NULL, '', ''),
(36, 0, 1, 8, '微博流行词中的围脖文化', '', 0, 36, 0, 1286528302, 1286528302, '微博,流行词', '', '现在，微博成了网友们的新宠，也成为网民们交流信息的一个重要平台。', '', '<p>\r\n	<span style="font-family:Arial;">现在，微博成了网友们的新宠，也成为网民们交流信息的一个重要平台。由于微博每条博文字数不可超过140字，部分用户将文字“简洁化”或将其原意“曲解化”，创造出了“简短版”或“风趣版”的流行语。微博上最为流行的有19个词，如下：</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">童鞋：同学的谐音，意指在微博上的博友。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">稀饭：喜欢，例如：你到底稀饭什么呢？</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">鸡冻：激动，例如：杭州上空发现UFO，姐看了好鸡冻啊！</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">LZ：发微博的人(楼主)，LZ是“楼主”二字普通话拼音的声母。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">酱子：即这样子，例如：哦，原来是酱子。语气中有扮可爱之状。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">杯具：本为饮水用具，不知什么时候被用其谐音，引申为“悲剧”了。当然，带有调侃的意味。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">沙发：第一个留言者为沙发，通常为抢沙发，即坐上第一把交椅。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">板凳：第二个留言者，通常称为坐板凳；第一个留言者为抢沙发，也许是由于不好抢，坐板凳就流行了。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">织围脖(http://t.sina.com.cn)：即写微博。“今天你织围脖了吗？”是时下很流行的问候语。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">脖领儿：“脖(博)领儿”，微博一族中的“领袖人物”，微博关注率、点击率双高，粉丝众多。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">微波炉：“微波(博)炉”，如微波炉般把一些“半成品”放在炉里“加热”一番，便有“翻新猛料”爆出。微博标题及文字吸引眼球、颇具煽动力。言辞哗众，语不“雷”人死不休。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">脖梗儿：“脖(博)梗儿”，微博一族中的“刺儿头”，微博文字以讥讽、拍砖、恶搞等为主。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">铂金：“铂(博)金”，含金量颇高、很有名望的微博客。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">长脖鹿：“长脖(博)鹿”，微博文字言简意赅，高屋建瓴；着眼点高，观点独到。亦指自命清高、俯视其他博主。同时有“脖子伸得很长，专窥探别人隐私”的意思。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">伯爵：“伯(博)爵”，微博一族中的“贵族”，多为知名人士以及各行业里的“专家”等。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">老伯：“老伯(博士、博导)”，微博的先行者。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">漂泊：“漂泊(博)”，微博一族中的“散户”，三天打鱼两天晒网，飘忽不定。也指以“转载”他人文章为主的微博，内容多为“舶来品”。另：也指外观漂亮的微博。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">泊位：“泊(博)位”，在微博一族中虽够不上“老伯”、“伯爵”、“脖领儿”式的人物，但也算“有一号”的，占有独特的一席之“位”。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">薄荷糖：“薄(博)荷糖”，微博一族里，语言特色、内容形式都很具个性的微博。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">呵呵，网络上创造的这些围脖文化， 无论如何，这类“新文化”咱也得整明白，要不，在网上也就难以对话啦！</span>\r\n</p>', 'news/36.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 1, 643276579, -1, 0, 1, 0, 0, 0, NULL, '', ''),
(37, 0, 1, 8, '马云：超越微软和沃尔玛是阿里巴巴的使命', '', 0, 37, 0, 1286528400, 1286682330, '阿里巴巴,马云', '', '近日，阿里巴巴董事局主席马云在美国接受著名脱口秀节目主持人查理-罗斯（Charlie Rose）专访，围绕阿里的成功之道、未来方向以及自己的创富心得等内容，马云进行了阐释。', '', '<p>近日，阿里巴巴董事局主席马云在美国接受著名脱口秀节目主持人查理-罗斯（Charlie Rose）专访，围绕阿里的成功之道、未来方向以及自己的创富心得等内容，马云进行了阐释。</p>\r\n<p>在马云眼中，企业成功的关键因素并非创新力本身，而是这一能力背后的执行者与推动者——企业员工。马云指出，创业者只有坚守这一理念，懂得尊重人才，同时坚持将服务做到最好，企业盈利将是必然。</p>\r\n<p>以下为马云与查理。罗斯谈话实录：</p>\r\n<p>科技不是我的事业</p>\r\n<p>罗斯：你是怎样投身于科技的呢？</p>\r\n<p>马云：嗯，直到现在科技都不是我的事业。我从小立志成为一名高中教师，对科技一无所知。我现在在网上也只能收发邮件而已。</p>\r\n<p>罗斯：你不会写程序吗？</p>\r\n<p>马云：一点都不会，我一直都好奇那些程序是如何起作用的。因为我不懂科技，所以我对科技抱有一种敬仰的态度，我雇来最好的科技人才。我相信：科技为人而生。我们要告诉那些搞科技的人：人们想要什么，消费者需要什么。我觉得这世上百分之八十的人，像我一样，喜爱科技但是又不懂科技。</p>\r\n<p>罗斯：你成立阿里巴巴的最初是怎样的？</p>\r\n<p>马云：1995年，我成立了中国的第一家互联网公司。当时我意识到互联网将改变世界，它潜力无限，所以我就去学了商业。</p>\r\n<p>罗斯：你知道因特网会改变世界？</p>\r\n<p>马云：是的，但我并没有想到它在十几年间会发展如此迅速。</p>\r\n<p>创业之初，我们只是一家小型的公司，经历过很多困难。现在阿里巴巴壮大了，我们想去帮助更多的中小型企业，帮助更多的创业者和就业者。我们通过互联网帮助他们，我们帮助他们，他们也会回报我们，这样公司才会越来越强大。</p>\r\n<p>阿里要做电子商务的基石</p>\r\n<p>罗斯：阿里巴巴未来的方向是什么？</p>\r\n<p>马云：我们仍将重点放在电子商务、中小型企业和消费者身上。我们希望成为中国电子商务的基石。在电子商务领域，美国有着很好的商业基础环境，但中国在这一方面却极度落后。</p>\r\n<p>罗斯：你们公司的核心竞争力是什么？</p>\r\n<p>马云：当然是文化，科技只是一种工具。我们公司的员工已从最初的18人增长到现在的2000人。我们很注重文化、创新、相互扶持、互相帮助，而不单单是赚钱。和华尔街不一样的是，我们把顾客排在第一位，员工第二位，股东在最后。这就是我的信仰。顾客是我们财富的来源，员工推动创新，而那些总是嚷着要分红的股东在危机到来时却跑得最快。危难时，员工会留下来，顾客也会留下来。</p>\r\n<p>罗斯：既然在中国成功了，阿里巴巴能不能在世界其他国家都获得成功呢？</p>\r\n<p>马云：只要世界其他国家有中小型企业，都能获得和在中国一样的成绩。我相信在21世纪，“小就是美”。我们希望有天，世界上任何有中小型企业的地方，都会有阿里巴巴。</p>\r\n<p>我见有人靠抓虾米发财，而没见人靠逮鲨鱼或鲸鱼致富。阿甘跟我们说过：到处都是虾米，你得懂得如何去抓。</p>\r\n<p>“左眼美金，右眼日元”赚不到钱</p>\r\n<p>罗斯：你有钱有名，那你还想要什么呢？</p>\r\n<p>马云：我的余生将致力于鼓励和支持创业者。我想让他们重回学校充电。我原本打算做老师，但是却做起了生意，一做就是15年。我觉得我在学校学到的大多数东西都是错的。</p>\r\n<p>很多商学院都教学生赚钱和经营之道，但我要告诉人们，如果你想开公司，你必须先有价值观，即懂得如何为人们服务，如何帮助人们，这是关键。</p>\r\n<p>我们坚信，如果你眼中只有钱，左眼看美金，右眼盯日元，没有人会愿意和你做朋友的。</p>\r\n<p>如果人人都在向钱看，那么人们很容易就会迷失自己。我们来这个世界上是享受和经历人生的，不是仅仅为赚钱的。</p>\r\n<p>想想如何帮助人们，为社会创造价值，那么钱自然会来。这就是我们为何能在中国成功，也是阿里巴巴的核心竞争力。阿里巴巴是这样做生意的，我认为21世纪，其他的公司都应该这样。</p>\r\n<p>罗斯：以人为重？</p>\r\n<p>马云：没错。中国最大的资源不是煤炭，而是13亿人。如果我们能好好开发这些人的智能的话，将会带来难以想象的创新。我很高兴我们公司有很多26岁左右的年轻人，这些人将改变世界。我讨厌人跟着电脑团团转。随着科技的发展，在五六百年后，机器将成为人类杀手。我们的任务就是保证：人们控制机器，让机器服务于人类。</p>\r\n<p>超越微软和沃尔玛是阿里的使命</p>\r\n<p>罗斯：你一直工作还是会抽出时间来放松下？</p>\r\n<p>马云：我很珍惜现在的机遇，如果我早生几十年，现在的一切都是不可能的，所以我想抓住时间做自己喜欢的事情。想回报社会，解决社会问题。现在，美国所有与科技进步相关的事情都在中国发生着。</p>\r\n<p>罗斯：那美国会继续引领世界的科技革命吗？</p>\r\n<p>马云：在10年20年间，美国会继续领先，但世界正在向中国倾斜。</p>\r\n<p>罗斯：是因为中国巨大的人才资源吗？科学家、工程师以及那些创新型人才？</p>\r\n<p>马云：美国也有很多人才，主要原因是中国庞大的市场需求，13亿人，而有需求才有创造。13亿人的市场不只是中国市场，而是全球市场，美国也开始转向这个市场。但中国同样要向美国学习：激情创新文化体系。中国还有很长的一段路要走，赶上科技很容易，但是培养创新的文化体系却是中国的一大难题。</p>\r\n<p>罗斯：需要多少年？</p>\r\n<p>马云：至少二三十年。</p>\r\n<p>罗斯：你曾说如果你不能成为中国的微软或沃尔玛，你将抱憾终生。</p>\r\n<p>马云：我们想超越微软和沃尔玛，并不是因为阿里巴巴有多强，而是因为这是我们的使命。这一代企业家的使命。</p>\r\n<p>创造就业机会重于做慈善</p>\r\n<p>罗斯：你对近期巴菲特和比尔盖茨的慈善中国行有何想法？你自己也很富有，有没有想过把自己一半的财富捐出去。</p>\r\n<p>马云：这是目前中国很热的一个话题。我从来没有想过现在的钱属于我自己，这是属于社会的。有几百万算是富人，有几千万是资本家，你有几亿的话，那就是社会财富。这不是我的钱，一张床，三顿餐，我有的仅此而已。</p>\r\n<p>中国目前需要2亿的就业机会。我们有13亿人，城市化扩张，我们急需工作岗位。我尊重慈善事业，但是我觉得我们应该更好地利用这笔钱。如果我现在把钱捐出去了，等我老了时，我会后悔的，我要现在把钱花出去，创造就业机会，而不是捐出去做慈善。<br /></p>\r\n<p>&nbsp;</p>', 'news/37.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 1, 0, 2, 857724526, -1, 0, 1, 0, 0, 0, NULL, '', '');
INSERT INTO `king__article` (`kid`, `kid1`, `ncount`, `listid`, `ktitle`, `ksubtitle`, `nsublength`, `norder`, `isstar`, `ndate`, `nlastdate`, `kkeywords`, `ktag`, `kdescription`, `kimage`, `kcontent`, `kpath`, `nshow`, `nhead`, `ncommend`, `nup`, `nfocus`, `nhot`, `nprice`, `nweight`, `nnumber`, `nbuy`, `ncomment`, `krelate`, `ndigg1`, `ndigg0`, `ndigg`, `nfavorite`, `nhit`, `nhitlate`, `userid`, `ulock`, `adminid`, `isok`, `nip`, `aid`, `nattrib`, `k_author`, `k_source`) VALUES
(38, 0, 1, 8, 'CNN称SNS成美国网络新闻分享主渠道', '', 0, 38, 0, 1286528515, 1286528672, 'SNS,CNN,网络新闻', '', '据国外媒体报道，美国有线电视新闻网（以下简称“CNN”）的一项有关新闻消费和读者新闻分享习惯的研究显示，', '', '<span style="font-family:Arial;"></span>\r\n<p>\r\n	<span style="font-family:Arial;">据国外媒体报道，美国有线电视新闻网（以下简称“CNN”）的一项有关新闻消费和读者新闻分享习惯的研究显示，43%的网络新闻分享是通过Facebook、Twitter、YouTube和MySpace等社交网络完成的，其次是电子邮件（30%）、短信（15%）和即时通讯（12%）。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">少数有影响力的读者推动着新闻的传播。27%的经常分享新闻的读者（每周分享至少6篇新闻报道）占网络新闻发布总量的87%，网络新闻读者平均每周分享13篇新闻报道，通过社交网络和电子邮件阅读26篇新闻报道。佩尤研究中心（Pew Research Center）进行的一项研究显示，读者对网络分享的爱好推动了美国新闻消费量的增长。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">在读者分享的新闻中，65%是动态消息（Ongoing news），其次是突发消息（19%）和CNN称之为“逸闻趣事”的消息。有视觉冲击力的新闻以及科技、理财等方面的新闻报道被分享的次数最多。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">研究发现，不同地区的读者分享新闻的动机不同。北美和欧洲的读者会分享他们认为对亲友和同事有用的新闻报道，亚太地区的读者会分享他们认为有趣的新闻报道。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">CNN的研究与其它类似研究的一个不同点是，政治性新闻在社交网络上被广泛分享，特别是在YouTube上。</span>\r\n</p>\r\n<p></p>', 'news/38.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 1, 0, 4, 1029280418, -1, 0, 1, 0, 0, 0, NULL, '', ''),
(39, 0, 1, 8, '马云：活着努力远比死后裸捐重要', '', 0, 39, 0, 1286528571, 1286680035, '阿里巴巴,马云', '', '上海世博会最后一场主题论坛10月6日在杭州开幕，阿里巴巴董事局主席马云在论坛上发表演讲。', '', '<p>\r\n	<span style="font-family:Arial;">上海世博会最后一场主题论坛10月6日在杭州开幕，阿里巴巴董事局主席马云在论坛上发表演讲。谈及论坛主题“和谐城市和宜居生活”，马云称，城市应为自己的市民而建，城市因人而美丽，高楼固然重要，但更应让人感觉舒服。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">培养了阿里巴巴、淘宝和支付宝三个“儿子”的马云，在演讲中用得最多的词就是舒服。他开玩笑说，许多朋友觉得他气质上不像一个在闲适环境中成长起来的商人，但正是杭州舒服的环境成就了自己。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">马云认为，杭州是个适合创业的城市。政府跟企业的关系很融洽，我没有找过他们麻烦，他们也没有找过我麻烦。而且一旦我有什么想法，政府会鼓励我去做，没人会笑话我。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">对于未来企业乃至城市之间的竞争，马云诠释道，既不是高楼之间的竞争，也绝不是GDP的竞争，未来的竞争就是人才的竞争。而吸引人才的将不再是政策、户口，而空气、水和食品安全。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">谈到“裸捐”话题，马云说，大家都想为自己的国家、为自己的社会、为自己的城市做些什么，“我赞赏裸捐的人，但是我觉得，今天的中国，今天的世界 ，也许每一个人在活着的时候，花一点点时间对你的社区、你的城市做一点点努力，远比死后捐50%更为重要”。</span>\r\n</p>\r\n<p>\r\n	测试上传\r\n</p>\r\n<p>\r\n	<img src="/demoupfiles/image/2010/10/10/201010101107071093.jpg" />\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">以下为马云演讲文字实录：</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">早上好！各位嘉宾、各位领导，大家好！我感觉非常的激动，我将会做一个很长的发言，欢迎大家来到我的城市，我想对杭州作一个详细的介绍。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">我只是一个杭州的幸运的创业者，各位可能想我为什么有这么好的运气。我昨天回到杭州，有一种莫名的幸福感，特别是闻到桂花香。我到美国，闻到咖啡香我就知道我来到了西雅图，闻到桂花香我就知道我回到了杭州。不知道咖啡、茶，和城市的发展有没有什么关系。阿里巴巴是从杭州的茶室发展出来的，美国很多的城市，像微软等等，可能跟咖啡馆有关系；广东很多制造业，可能跟早茶有关系。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">我非常感谢我家乡的城市，十年以内我“生”了三个“孩子”——第一个是阿里巴巴，第二个是淘宝网，第三个是支付宝。这个城市给了我们很多，我也想到底是什么让我们在城市里成长起来、发展起来？城市就像家一样，你对自己的家有信心，你就会不断的生养孩子，尽管在中国是计划生育，只能生一个，但是公司会不断地创新。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">我在想，有三个原因让我们在这个城市里很自在地发展，第一是氛围，第二是人才，第三是文化。在这个氛围里，有一种很有意思的，就是这儿的政府跟企业的关系，我认为不管事的婆婆是最好的婆婆，不把自己当父母的官是最好的官。浙江杭州给了我们自由自在的想法，很舒服、很自在，我进来之前是穿的西装，但是我觉得穿了西装我不会讲话，因为这是我自己的城市，我就怎么舒服怎么来，我就换了这个衣服。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">这个氛围就是这样，从来没有人笑话我，十年前我说我们要做最优秀的互联网公司，我们希望赢取世界的关注，能够帮助无数的创业者。外面也许会有人笑话我，这里没有人笑话我，说，你做吧。我也从来没有想过有麻烦，我没有找过麻烦，他们也没有找过我麻烦，在这里相安无事，很舒服，很自在，就像自己家一样，这是一种氛围。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">第二，它是人才。十年创业我记不住杭州的哪一幢高楼给我留下了印象，我记得的是杭州老百姓给我的支持，我的同事每天的辛苦和微笑，我记得的是所有杭州老百姓对我们的支持。每一天、每一个事情是城市给你点点滴滴，是这些东西，是各种各样的人。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">我们刚刚创业的时候，只凑了两万块钱，我们没有会议室和接待室，开会也很少。杭州的西湖边上，我知道很多的重要的决定是我坐在西湖边上的椅子上讨论出的，我们很多创新的主意是在茶室中创造出来。有人抱怨说杭州太休闲，有人说马云，你不像杭州人，这么休闲的城市怎么会诞生你？我确实是杭州造。假如你欣赏这个文化，喜欢这个文化，并且在文化中不断地思考，也会找到好的办法。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">城市以人为本，刚才约翰。弗里德曼先生讲，城市应该是以人为本，我不知道怎么运营城市，但是我知道管理公司的几大重要要素。城市需要很多的高楼，公司也需要自己的办公楼。我们在设立自己办公楼的时候，我们很多公司内部的争论，我们的楼应该建得多么的漂亮，成为杭州的标志，就像城市希望自己的楼是全世界的标志。但是我们知道，我们的楼是给员工住的，是给员工上班的，不是用来炫耀的，而是让员工舒服。城市应该为自己的市民建，高楼很重要，但是最重要的是让我们的市民，让我们的员工感到舒适和舒服。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">城市的竞争就像公司的竞争，是人才的竞争。而人才的竞争很重要的是我们需要什么样的人才。我不希望我的公司是农场，而是动物园，有各种各样的动物相安无事和谐相处，这才是我认为和谐的动物园，公司是这样，城市更是这样。我去纽约、去北京，让我感慨的不是高楼大厦，而是人！是人让我们永远的记住，我相信城市因人而美丽。我再度回到一座城市，绝不是因为哪栋楼，而是那边有我的朋友，有我的合伙人，因为这些人让我回来，城市的魅力一定因人而异。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">第三是我们的文化。我觉得房子是可以两年建起来的，但是家需要二十年的建设，优秀的城市需要几十年、几百年的努力。我们刚刚去了法国巴黎，巴黎的完美建设，我一直在思考这个问题，为了不打巴黎，法国居然投降，几百里之外就把城市交出去了。为了保护这个文化保护这个城市，他们做出了巨大的努力。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">文化是需要保护的，保护最好的办法可能就是发展。所以我自己觉得，城市跟公司来说，都是以人为本，以人为中心。未来的竞争，城市与城市的竞争将不是高楼之间的竞争，城市与城市的竞争绝不是GDP的竞争，未来的竞争是人才的竞争，而关键是空气的竞争水的竞争和安全食品的竞争。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:Arial;">最近大家讨论最多的问题，关于裸捐的问题，大家都想为自己的国家、为自己的社会、为自己的城市做些什么。我赞赏裸捐的人，但是我觉得，今天的中国，今天的世界，也许每一个人只要花一点点的时间，在活着的时候，花一点点时间对你的社区、你的城市做一点点努力，远比死后捐50%更为重要，谢谢大家。</span>\r\n</p>', 'news/39.html', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, '', 0, 0, 1, 0, 7, 1107922309, -1, 0, 1, 0, 0, 0, NULL, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `king__bbs`
--

CREATE TABLE IF NOT EXISTS `king__bbs` (
  `kid` int(11) NOT NULL auto_increment,
  `kid1` int(11) NOT NULL default '0',
  `ncount` int(11) NOT NULL default '1',
  `listid` int(11) NOT NULL default '0',
  `ktitle` varchar(100) default NULL,
  `ksubtitle` varchar(20) default NULL,
  `nsublength` tinyint(2) NOT NULL default '0',
  `norder` int(11) NOT NULL default '0',
  `isstar` tinyint(1) NOT NULL default '0',
  `ndate` int(10) NOT NULL default '0',
  `nlastdate` int(10) NOT NULL default '0',
  `kkeywords` varchar(100) default NULL,
  `ktag` varchar(100) default NULL,
  `kdescription` varchar(255) default NULL,
  `kimage` varchar(255) default NULL,
  `kcontent` text,
  `kpath` varchar(255) NOT NULL,
  `nshow` tinyint(1) NOT NULL default '1',
  `nhead` tinyint(1) NOT NULL default '0',
  `ncommend` tinyint(1) NOT NULL default '0',
  `nup` tinyint(1) NOT NULL default '0',
  `nfocus` tinyint(1) NOT NULL default '0',
  `nhot` tinyint(1) NOT NULL default '0',
  `nprice` double NOT NULL default '0',
  `nweight` int(11) NOT NULL default '0',
  `nnumber` int(10) NOT NULL default '0',
  `nbuy` int(10) NOT NULL default '0',
  `ncomment` int(11) NOT NULL default '0',
  `krelate` varchar(255) default NULL,
  `ndigg1` int(11) NOT NULL default '0',
  `ndigg0` int(11) NOT NULL default '0',
  `ndigg` int(11) NOT NULL default '1',
  `nfavorite` int(11) NOT NULL default '0',
  `nhit` int(11) NOT NULL default '0',
  `nhitlate` int(11) NOT NULL default '0',
  `userid` int(11) NOT NULL default '0',
  `ulock` tinyint(1) NOT NULL default '0',
  `adminid` int(11) NOT NULL default '0',
  `isok` tinyint(1) NOT NULL default '0',
  `nip` int(10) NOT NULL default '0',
  `aid` int(11) NOT NULL default '0',
  `nattrib` text,
  PRIMARY KEY  (`kid`),
  UNIQUE KEY `kpath` (`kpath`),
  KEY `kid1` (`kid1`),
  KEY `aid` (`aid`),
  KEY `nshow` (`nshow`),
  KEY `nhead` (`nhead`),
  KEY `nfocus` (`nfocus`),
  KEY `nhot` (`nhot`),
  KEY `userid` (`userid`),
  KEY `adminid` (`adminid`),
  KEY `ndigg` (`ndigg`),
  KEY `listid` (`listid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `king__bbs`
--


-- --------------------------------------------------------

--
-- 表的结构 `king__product`
--

CREATE TABLE IF NOT EXISTS `king__product` (
  `kid` int(11) NOT NULL auto_increment,
  `kid1` int(11) NOT NULL default '0',
  `ncount` int(11) NOT NULL default '1',
  `listid` int(11) NOT NULL default '0',
  `ktitle` varchar(100) default NULL,
  `ksubtitle` varchar(20) default NULL,
  `nsublength` tinyint(2) NOT NULL default '0',
  `norder` int(11) NOT NULL default '0',
  `isstar` tinyint(1) NOT NULL default '0',
  `ndate` int(10) NOT NULL default '0',
  `nlastdate` int(10) NOT NULL default '0',
  `kkeywords` varchar(100) default NULL,
  `ktag` varchar(100) default NULL,
  `kdescription` varchar(255) default NULL,
  `kimage` varchar(255) default NULL,
  `kcontent` text,
  `kpath` varchar(255) NOT NULL,
  `nshow` tinyint(1) NOT NULL default '1',
  `nhead` tinyint(1) NOT NULL default '0',
  `ncommend` tinyint(1) NOT NULL default '0',
  `nup` tinyint(1) NOT NULL default '0',
  `nfocus` tinyint(1) NOT NULL default '0',
  `nhot` tinyint(1) NOT NULL default '0',
  `nprice` double NOT NULL default '0',
  `nweight` int(11) NOT NULL default '0',
  `nnumber` int(10) NOT NULL default '0',
  `nbuy` int(10) NOT NULL default '0',
  `ncomment` int(11) NOT NULL default '0',
  `krelate` varchar(255) default NULL,
  `ndigg1` int(11) NOT NULL default '0',
  `ndigg0` int(11) NOT NULL default '0',
  `ndigg` int(11) NOT NULL default '1',
  `nfavorite` int(11) NOT NULL default '0',
  `nhit` int(11) NOT NULL default '0',
  `nhitlate` int(11) NOT NULL default '0',
  `userid` int(11) NOT NULL default '0',
  `ulock` tinyint(1) NOT NULL default '0',
  `adminid` int(11) NOT NULL default '0',
  `isok` tinyint(1) NOT NULL default '0',
  `nip` int(10) NOT NULL default '0',
  `aid` int(11) NOT NULL default '0',
  `nattrib` text,
  `k_Serial` varchar(100) default NULL,
  `k_chanpintupian` text,
  PRIMARY KEY  (`kid`),
  UNIQUE KEY `kpath` (`kpath`),
  KEY `kid1` (`kid1`),
  KEY `aid` (`aid`),
  KEY `nshow` (`nshow`),
  KEY `nhead` (`nhead`),
  KEY `nfocus` (`nfocus`),
  KEY `nhot` (`nhot`),
  KEY `userid` (`userid`),
  KEY `adminid` (`adminid`),
  KEY `ndigg` (`ndigg`),
  KEY `listid` (`listid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `king__product`
--

INSERT INTO `king__product` (`kid`, `kid1`, `ncount`, `listid`, `ktitle`, `ksubtitle`, `nsublength`, `norder`, `isstar`, `ndate`, `nlastdate`, `kkeywords`, `ktag`, `kdescription`, `kimage`, `kcontent`, `kpath`, `nshow`, `nhead`, `ncommend`, `nup`, `nfocus`, `nhot`, `nprice`, `nweight`, `nnumber`, `nbuy`, `ncomment`, `krelate`, `ndigg1`, `ndigg0`, `ndigg`, `nfavorite`, `nhit`, `nhitlate`, `userid`, `ulock`, `adminid`, `isok`, `nip`, `aid`, `nattrib`, `k_Serial`, `k_chanpintupian`) VALUES
(1, 0, 1, 10, '企业版(ASP)授权', NULL, 0, 1, 0, 1286521702, 1286679349, 'KingCMS', '', 'KingCMS第一个模块化方式开发的内容管理系统。修正了单页面关键字写的很多的时候报错的问题；文章再次更新的时候，缩略图0字节的问题；自定义发布系统字段大写无法正常调用的问题。\r\n\r\nKingCMS第一个模块化方式开发的内容管理系统。', 'demoupfiles/image/12866793240.jpg', '<span style="font-family:Arial;"><span style="color:#000000;WIDOWS: 2; TEXT-TRANSFORM: none; TEXT-INDENT: 0px; BORDER-COLLAPSE: separate; FONT: medium 宋体; WHITE-SPACE: normal; ORPHANS: 2; LETTER-SPACING: normal; WORD-SPACING: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px"><span style="font-family:微软雅黑, Arial, SimSun, 宋体;color:#666666;TEXT-ALIGN: left; LINE-HEIGHT: 24px; FONT-SIZE: 14px"></span></span></span>\r\n<p>\r\n	<strong>说明</strong>\r\n</p>\r\n<p></p>\r\n<p>\r\n	KingCMS第一个模块化方式开发的内容管理系统。\r\n</p>\r\n<p>\r\n	<strong>更新日志</strong>\r\n</p>\r\n<p>\r\n	5.0.1.0508更新列表<br />\r\n	1、单页面关键字写的很多的时候报错的问题。<br />\r\n	2、文章再次更新的时候，缩略图0字节的问题。<br />\r\n	3、自定义发布系统字段大写无法正常调用的问题。<br />\r\n	4、自定义发布系统字段验证忽略减号(-)的问题。<br />\r\n	5、增加htmlcode属性，功能：转换回车为换行，空格为&amp;nbsp;等<br />\r\n	6、自定义发布系统，字段用大写无法调用问题。<br />\r\n	** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **<span>&nbsp;</span><br />\r\n	5.0.1.0217更新列表<br />\r\n	1、自定义发布系统无权限的时候出错问题。<br />\r\n	2、评论管理扩展名不为index.htm的时候出现404错误的问题。<br />\r\n	3、模块列表里生成adfile文件夹的问题。<br />\r\n	4、第一次安装的时候后删除模块出错的问题<br />\r\n	** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **<span>&nbsp;</span><br />\r\n	5.0.1.0202更新列表<br />\r\n	1、修复自定义发布系统插入日期类型出错。<br />\r\n	2、增加类函数.errtag(l1)，作用为在解析标签的时候，标签有误，则输出错误提示(被注释)<br />\r\n	3、广告系统，当模板生成的时候，模板里的广告文件没有被生成，则自动生成，以免出现加载错误。<br />\r\n	4、单页面和简易文章系统的搜索功能。<br />\r\n	5、文章系统下拉菜单命令的扩展(和自定义发布系统一样直接在列表里设置推荐等)。<br />\r\n	6、文章系统的循环标签里调用推荐、头条等参数，若为推荐输出1，否则输出0。<br />\r\n	7、自定义发布系统的选项字段预置值错误。<br />\r\n	8、{king:sql/}的扩展，支持(king:字段名称/)方式调用。<br />\r\n	9、文章系统自动抓取原创缩略图失败问题。<br />\r\n	10、自定义发布模块长度限定等验证出错问题。<br />\r\n	11、增加过滤脏话的函数.dirty及参数设置里扩展对脏话的编辑。<br />\r\n	12、数据库更新到5.02版<br />\r\n	13、增加.stemplate搜索页模版<br />\r\n	14、增加.form_radio表单函数<br />\r\n	15、增加record.value(l1)，在列表页增加提交额外的参数，必须在dp.sect前面调用才有效。<br />\r\n	16、编辑文章的时候，指定所属主栏目无法更新问题，电影和自定义发布系统都有此问题。<br />\r\n	17、.getsql(TABLENAME,COLUMS)获取指定的表的字段值<br />\r\n	18、自定义发布系统增加对关键字、简述及路径的显示选项<br />\r\n	19、文章进度条生成，并可设置时间，减轻服务器CPU压力<br />\r\n	20、增加新系统：评论管理<br />\r\n	21、Tag支持，search.asp?query=TAG 当没有query参数的时候，判断为TAG检索。<br />\r\n	22、关键字匹配属性：link，如：{king:content link="/page/article/search.asp?query="/}<br />\r\n	&nbsp;&nbsp;&nbsp; (但这个正则匹配表达式并不完美，有待改进。)<br />\r\n	** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **<span>&nbsp;</span><br />\r\n	5.0.1.0101更新列表<br />\r\n	1、修改KingCMS类函数.ubbencode函数里的跳转路径<br />\r\n	2、rn列表链接问题<br />\r\n	3、文件管理中的ico显示错误<br />\r\n	4、自定义发布系统，当生成出来的模块简述留空的时候，自动补充1的问题。<br />\r\n	5、去掉了WEBFTP的codePress代码加亮功能，因为严重拖死浏览器。<br />\r\n	6、爬虫名称错误，修改后部分原爬虫记录失效，建议删除重来。<br />\r\n	7、自定义发布系统和文章系统列表页的关键字和简述和标题一致的问题。<br />\r\n	8、增加.createhome过程，定义单页面实时更新页面及参数设置。<br />\r\n	9、增加.form_html过程，结构化后台输出表单代码。<br />\r\n	10、 OO模块中的下一篇链接错误。<br />\r\n	11、单页面自动更新标签：{king:onepage#update listid="1,2" time="2"/}<br />\r\n	12、文章、电影和OO模块中的上一页下一页标题中含有字符:的话，会出现部分丢失问题。<br />\r\n	13、自定义模块字段列表页的20|40|80链接地址错误。<br />\r\n	14、增加Next属性，跳过指定数量的记录后再显示<br />\r\n	15、新增系统标签{king:sql cmd=""/}<br />\r\n	16、FCKeditor编辑器更新到最新 2.5.1 CR 版<br />\r\n	** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **<span>&nbsp;</span><br />\r\n	5.0.0.1115更新列表<br />\r\n	1、admin/system/images/fun.js文件updown函数<br />\r\n	插件更新<br />\r\n	1、简易文章：listid属性调用失效<br />\r\n	2、完整文章：Firefox下作者和来源的快速插入失效问题<br />\r\n	3、完整文章：标签生成失效<br />\r\n	4、完整文章：丢失DIV关闭标签等细节问题<br />\r\n	5、更名：插件更名为模块<br />\r\n	6、修改KingCMS类函数.ubbshow(l1,l2,l3,l4,l5) 换行替换为/n的问题<br />\r\n	7、king.plugin 显示plugin列表<br />\r\n	8、更改KingCMS类函数.pinyin(l1) 库中无对应汉字的时候，输出汉字的问题<br />\r\n	** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **<span>&nbsp;</span><br />\r\n	5.0.0.1030更新列表<br />\r\n	1、增加KingCMS类过程.form_brow(l1,l2,l3) 显示浏览器端文件列表，既为文件浏览器。<br />\r\n	2、增加KingCMS类函数.filecate(l1) 转换文件扩展名，以方便调用ico图片。<br />\r\n	3、修正空格转换为&amp;nbsp;的问题<br />\r\n	4、增加KingCMS类函数.pinyin(l1) 中文转换为拼音文件名<br />\r\n	5、增加KingCMS类函数.imgsize(l1) 返回指定的图片文件的尺寸，返回值为：200x300形式<br />\r\n	6、自定义栏目中文空格无法生成二级菜单的问题(这个问题出现具有随机性，若还是出现则试试提交保存)<br />\r\n	7、增加函数:keylight(l1,l2) 关键字加亮<br />\r\n	8、增加对双层标签的支持<br />\r\n	&nbsp;&nbsp; * 双层标签：{{king:article listid="1,2,3"}} ... {{/king}}<br />\r\n	9、增加函数.getdblabel(l1,l2) 功能同getlabel，但是用作获取双层标签参数的。<br />\r\n	10、增加函数formencode(l1) 等效于server.htmlencode，但是多了一个空值判断<br />\r\n	11、在线升级功能<br />\r\n	12、已经用完整版文章系统的测试版建站的站，请在sql里执行如下代码<br />\r\n	alter table kingart_list add listtitle nvarchar(100) ;\r\n</p>', 'products/1.html', 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 0, 0, -1, 0, 1, 0, 0, 0, NULL, '企业版(ASP)', 'demoupfiles/image/12866793240.jpg	1		demoupfiles/image/12866793241.jpg	2		demoupfiles/image/12866793242.jpg	3'),
(2, 0, 1, 10, '企业版(PHP)', NULL, 0, 2, 0, 1286521726, 1286679265, 'KingCMS', '', 'KingCMS第一个PHP版程序，同时支持mysql和sqlite3+数据库。特别是php+sqlite的结合完全胜于asp+access的结合，很适合企业建站之应用。打破ASP版多层嵌套的瓶颈，PHP版模板标签任意无限层的进行嵌套，并传递值和获得URL参数和POST值；调用语言包内容。', 'demoupfiles/image/12866792361.jpg', '<span style="font-family:Arial;"><span style="color:#000000;WIDOWS: 2; TEXT-TRANSFORM: none; TEXT-INDENT: 0px; BORDER-COLLAPSE: separate; FONT: medium 宋体; WHITE-SPACE: normal; ORPHANS: 2; LETTER-SPACING: normal; WORD-SPACING: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px"><span style="font-family:微软雅黑, Arial, SimSun, 宋体;color:#666666;TEXT-ALIGN: left; LINE-HEIGHT: 24px; FONT-SIZE: 14px"></span></span></span>\r\n<p>\r\n	<strong><span style="color:#3333ff;">说明</span></strong>\r\n</p>\r\n<p>\r\n	KingCMS第一个PHP版程序，同时支持mysql和sqlite3+数据库。\r\n</p>\r\n<p>\r\n	特别是php+sqlite的结合完全胜于asp+access的结合，很适合企业建站之应用。\r\n</p>\r\n<p>\r\n	<strong><span style="color:#3333ff;">特性</span></strong>\r\n</p>\r\n<p>\r\n	<strong>简单灵活的无限层级模板标签：</strong>\r\n</p>\r\n<p>\r\n	打破ASP版多层嵌套的瓶颈，PHP版模板标签任意无限层的进行嵌套，并传递值和获得URL参数和POST值；调用语言包内容；支持PHP直接在模板中编写PHP代码，并互相独立运行；无需记忆标签，可以用参数标签及时显示可用标签。\r\n</p>\r\n<p>\r\n	<strong>高效的模板解析引擎：</strong>\r\n</p>\r\n<p>\r\n	采用按需解析方式，仅对模板中存在的标签进行解析，并支持缓存比较大或相同内容的模板标签，以进一步提高页面生成或显示速度。\r\n</p>\r\n<p>\r\n	<strong>生成HTML及伪静态支持：</strong>\r\n</p>\r\n<p>\r\n	支持生成HTML页面、动态页面和伪静态，甚至是不显示(留言反馈之类用得上)。\r\n</p>\r\n<p>\r\n	<strong>任意扩展的功能模型：</strong>\r\n</p>\r\n<p>\r\n	支持文章等模型的定制、修改、删除、导出和导入；并无需编写一行代码。\r\n</p>\r\n<p>\r\n	<strong>定制管理界面：</strong>\r\n</p>\r\n<p>\r\n	和前台一样的模板标签形式定制管理界面，可制作出最适合于自己的人性化操作界面。\r\n</p>\r\n<p>\r\n	<strong>支持SQLite：</strong>\r\n</p>\r\n<p>\r\n	在支持主流的MySQL外，还可以支持成本更低，性能很不错的SQLite数据库。\r\n</p>\r\n<p>\r\n	<strong>挂接数据源：</strong>\r\n</p>\r\n<p>\r\n	支持挂接UCHome、Discuz!论坛和其他CMS等的MySQL数据库及本地SQLite数据库；并完全融合到KingCMS标签，以KingCMS标签方式调用数据。\r\n</p>\r\n<p>\r\n	<strong>碎片：</strong>\r\n</p>\r\n<p>\r\n	有别于ASP版的广告模块，碎片功能更是功能化、灵活使用为主，不仅支持一个标签输出一个内容的基本功能外，还支持用一个标签在不同的栏目、域名下显示不同的信息，且无需编写代码或判断。\r\n</p>\r\n<p>\r\n	<strong>支持多域名绑定：</strong>\r\n</p>\r\n<p>\r\n	一站式管理多个网站。\r\n</p>\r\n<p>\r\n	<strong>即见即所得编辑器：</strong>\r\n</p>\r\n<p>\r\n	支持FCKEditor、TinyMCE、eWebEditor、nicEdit等可视化编辑器外，专门为SEO高手准备了Edit_area纯HTML代码编辑器(支持代码加亮)。\r\n</p>\r\n<p>\r\n	<strong>浏览器兼容性：</strong>\r\n</p>\r\n<p>\r\n	支持IE6/7/8、Firefox、Chorme、Safari、Opera等主流浏览器。\r\n</p>\r\n<p>\r\n	<strong>商城类网站的支持：</strong>\r\n</p>\r\n<p>\r\n	支持在线购物、非会员购物和在线支付；支持支付宝支付和财付通在线支付方式；以产品重量计算运费，多买商品不多算运费；保证买卖双方利益并减少不必要的沟通。\r\n</p>\r\n<p>\r\n	<strong>多语言支持：</strong>\r\n</p>\r\n<p>\r\n	采用传统的XML语言包结构，方便转换成其他语言，并支持多语言共存及多国管理员同时使用一个管理系统。\r\n</p>', 'products/2.html', 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 0, 0, -1, 0, 1, 0, 0, 0, NULL, '企业版(PHP)', 'demoupfiles/image/12866792360.jpg	1		demoupfiles/image/12866792361.jpg	2		demoupfiles/image/12866792362.jpg	3'),
(6, 0, 1, 11, '标准型建站', NULL, 0, 6, 0, 1286521927, 1286679508, '', '', '标准型建站', 'demoupfiles/image/12866791662.jpg', '<span style="font-family:Arial;">标准型建站</span>', 'products/6.html', 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 0, 0, -1, 0, 1, 0, 0, 0, NULL, '标准', 'demoupfiles/image/12866790962.jpg	1		demoupfiles/image/12866791661.jpg	2		demoupfiles/image/12866791662.jpg	3'),
(3, 0, 1, 10, '地方门户v2.0', NULL, 0, 3, 0, 1286521771, 1286679197, 'KingCMS,门户', '', 'KingCMS地方门户版', 'demoupfiles/image/12866791660.jpg', '<span style="font-family:Arial;">KingCMS 地方门户版</span>', 'products/3.html', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 0, 0, -1, 0, 1, 0, 0, 0, NULL, 'v2.0', 'demoupfiles/image/12866791660.jpg	1		demoupfiles/image/12866791661.jpg	2		demoupfiles/image/12866791662.jpg	3'),
(4, 0, 1, 10, '地方门户v3.0', NULL, 0, 4, 0, 1286521816, 1286679140, 'KingCMS,门户', '', 'KingCMS地方门户房产版', 'demoupfiles/image/12866790960.jpg', '<span style="font-family:Arial;">KingCMS 地方门户房产版</span>', 'products/4.html', 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 0, 0, -1, 0, 1, 0, 0, 0, NULL, 'v3.0', 'demoupfiles/image/12866790961.jpg	1		demoupfiles/image/12866790960.jpg	2		demoupfiles/image/12866790962.jpg	3'),
(5, 0, 1, 10, '地方门户v4.0', NULL, 0, 5, 0, 1286521831, 1286679068, 'KingCMS,门户', '', 'KingCMS地方门户人才版', 'demoupfiles/image/12866789980.jpg', '<span style="font-family:Arial;">KingCMS 地方门户人才版</span>', 'products/5.html', 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 0, 0, -1, 0, 1, 0, 0, 0, NULL, 'v4.0', 'demoupfiles/image/12866789980.jpg	介绍1		demoupfiles/image/12866790430.jpg	介绍2		demoupfiles/image/12866790431.jpg	介绍3'),
(7, 0, 1, 11, '基于KingCMS专业型建站', NULL, 0, 7, 0, 1286521945, 1286679469, 'KingCMS', '', '标准型建站', 'demoupfiles/image/12866790962.jpg', '<span style="font-family:Arial;">专业型建站</span>', 'products/7.html', 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 0, 0, -1, 0, 1, 0, 0, 0, NULL, '专业型', 'demoupfiles/image/12866793240.jpg	1		demoupfiles/image/12866792360.jpg	2		demoupfiles/image/12866792361.jpg	3'),
(8, 0, 1, 11, '经济型建站', NULL, 0, 8, 0, 1286544548, 1286679399, '', '', '经济型建站', 'demoupfiles/image/12866793770.jpg', '<span style="font-family:Arial;">经济型建站</span>', 'products/8.html', 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, 0, 0, -1, 0, 1, 0, 0, 0, NULL, '经济型', 'demoupfiles/image/12866793770.jpg	1		demoupfiles/image/12866793771.jpg	2');

-- --------------------------------------------------------

--
-- 表的结构 `king__shop`
--

CREATE TABLE IF NOT EXISTS `king__shop` (
  `kid` int(11) NOT NULL auto_increment,
  `kid1` int(11) NOT NULL default '0',
  `ncount` int(11) NOT NULL default '1',
  `listid` int(11) NOT NULL default '0',
  `ktitle` varchar(100) default NULL,
  `ksubtitle` varchar(20) default NULL,
  `nsublength` tinyint(2) NOT NULL default '0',
  `norder` int(11) NOT NULL default '0',
  `isstar` tinyint(1) NOT NULL default '0',
  `ndate` int(10) NOT NULL default '0',
  `nlastdate` int(10) NOT NULL default '0',
  `kkeywords` varchar(100) default NULL,
  `ktag` varchar(100) default NULL,
  `kdescription` varchar(255) default NULL,
  `kimage` varchar(255) default NULL,
  `kcontent` text,
  `kpath` varchar(255) NOT NULL,
  `nshow` tinyint(1) NOT NULL default '1',
  `nhead` tinyint(1) NOT NULL default '0',
  `ncommend` tinyint(1) NOT NULL default '0',
  `nup` tinyint(1) NOT NULL default '0',
  `nfocus` tinyint(1) NOT NULL default '0',
  `nhot` tinyint(1) NOT NULL default '0',
  `nprice` double NOT NULL default '0',
  `nweight` int(11) NOT NULL default '0',
  `nnumber` int(10) NOT NULL default '0',
  `nbuy` int(10) NOT NULL default '0',
  `ncomment` int(11) NOT NULL default '0',
  `krelate` varchar(255) default NULL,
  `ndigg1` int(11) NOT NULL default '0',
  `ndigg0` int(11) NOT NULL default '0',
  `ndigg` int(11) NOT NULL default '1',
  `nfavorite` int(11) NOT NULL default '0',
  `nhit` int(11) NOT NULL default '0',
  `nhitlate` int(11) NOT NULL default '0',
  `userid` int(11) NOT NULL default '0',
  `ulock` tinyint(1) NOT NULL default '0',
  `adminid` int(11) NOT NULL default '0',
  `isok` tinyint(1) NOT NULL default '0',
  `nip` int(10) NOT NULL default '0',
  `aid` int(11) NOT NULL default '0',
  `nattrib` text,
  `k_Market` varchar(11) default NULL,
  `k_Serial` varchar(100) default NULL,
  PRIMARY KEY  (`kid`),
  UNIQUE KEY `kpath` (`kpath`),
  KEY `kid1` (`kid1`),
  KEY `aid` (`aid`),
  KEY `nshow` (`nshow`),
  KEY `nhead` (`nhead`),
  KEY `nfocus` (`nfocus`),
  KEY `nhot` (`nhot`),
  KEY `userid` (`userid`),
  KEY `adminid` (`adminid`),
  KEY `ndigg` (`ndigg`),
  KEY `listid` (`listid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `king__shop`
--

