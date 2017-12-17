-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 26 Novembre 2017 à 05:54
-- Version du serveur :  5.6.21
-- Version de PHP :  5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `banhang`
--

-- --------------------------------------------------------

--
-- Structure de la table `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
`id` int(11) NOT NULL,
  `hinh` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `rong` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `cao` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `banner`
--

INSERT INTO `banner` (`id`, `hinh`, `rong`, `cao`) VALUES
(1, 'banner_2.png', '990px', '150px');

-- --------------------------------------------------------

--
-- Structure de la table `footer`
--

CREATE TABLE IF NOT EXISTS `footer` (
`id` int(11) NOT NULL,
  `html` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `footer`
--

INSERT INTO `footer` (`id`, `html`) VALUES
(1, '<table width="990px">\r\n<tbody>\r\n<tr>\r\n<td align="right" width="495px">Cửa h&agrave;ng :</td>\r\n<td width="495px">Shop abc <strong>mới</strong></td>\r\n</tr>\r\n<tr>\r\n<td align="right">Điện thoại :</td>\r\n<td>so_dien_thoai_<strong>moi</strong></td>\r\n</tr>\r\n<tr>\r\n<td align="right">Địa chỉ :</td>\r\n<td>dia_chi_<strong>moi</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>');

-- --------------------------------------------------------

--
-- Structure de la table `hoa_don`
--

CREATE TABLE IF NOT EXISTS `hoa_don` (
`id` int(11) NOT NULL,
  `ten_nguoi_mua` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dien_thoai` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `hang_duoc_mua` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `menu_doc`
--

CREATE TABLE IF NOT EXISTS `menu_doc` (
`id` int(11) NOT NULL,
  `ten` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `menu_doc`
--

INSERT INTO `menu_doc` (`id`, `ten`) VALUES
(1, 'Menu 1'),
(2, 'Menu 2'),
(3, 'Menu 3'),
(4, 'Menu 4'),
(5, 'Menu 5a'),
(6, 'Menu 6'),
(7, 'Menu 7'),
(8, 'Menu 8');

-- --------------------------------------------------------

--
-- Structure de la table `menu_ngang`
--

CREATE TABLE IF NOT EXISTS `menu_ngang` (
`id` int(11) NOT NULL,
  `ten` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `loai_menu` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `menu_ngang`
--

INSERT INTO `menu_ngang` (`id`, `ten`, `noi_dung`, `loai_menu`) VALUES
(1, 'Giới thiệu', '<p>Nội dung phần giới thiệu <br /><br /> Nội dung phần giới thiệu <br /><br /> Nội dung phần giới thiệu <br /><br /> Nội dung phần giới thiệu <br /><br /> Nội dung phần giới thiệu <br /><br /> Nội dung phần giới thiệu <br /><br /> Nội dung phần giới thiệu <br /><br /> Nội dung phần giới thiệu <br /><br /></p>', ''),
(2, 'Sản phẩm', '', 'san_pham'),
(3, 'Hướng dẫn mua hàng', 'Nội dung hướng dẫn mua hàng <br><br>\r\nNội dung hướng dẫn mua hàng <br><br>\r\nNội dung hướng dẫn mua hàng <br><br>\r\nNội dung hướng dẫn mua hàng <br><br>\r\nNội dung hướng dẫn mua hàng <br><br>\r\nNội dung hướng dẫn mua hàng <br><br>\r\nNội dung hướng dẫn mua hàng <br><br>', ''),
(4, 'Cách mua hàng', 'Nội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>', ''),
(5, 'Liên hệ', 'Nội dung liên hệ<br><br>\r\nNội dung liên hệ<br><br>\r\nNội dung liên hệ<br><br>\r\nNội dung liên hệ<br><br>\r\nNội dung liên hệ<br><br>\r\nNội dung liên hệ<br><br>\r\nNội dung liên hệ<br><br>', '');

-- --------------------------------------------------------

--
-- Structure de la table `quang_cao`
--

CREATE TABLE IF NOT EXISTS `quang_cao` (
`id` int(11) NOT NULL,
  `html` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `vi_tri` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `quang_cao`
--

INSERT INTO `quang_cao` (`id`, `html`, `vi_tri`) VALUES
(1, '<p><a href="#"><img style="display: block; margin-left: auto; margin-right: auto;" src="/ban_hang/hinh_anh/tinymce/qc_p_1.png" alt="" /></a></p>\r\n<p style="text-align: center;"><a href="#"><img src="/ban_hang/hinh_anh/tinymce/qc_p_2.png" alt="" /></a></p>\r\n<p><a href="#"><img style="display: block; margin-left: auto; margin-right: auto;" src="/ban_hang/hinh_anh/tinymce/qc_p_3.png" alt="" /></a></p>', 'trai'),
(2, '<p><a href="#"><img style="display: block; margin-left: auto; margin-right: auto;" src="/ban_hang/hinh_anh/tinymce/qc_t_1.png" alt="" /></a></p>\r\n<p style="text-align: center;"><a href="#"><img src="/ban_hang/hinh_anh/tinymce/qc_t_2.png" alt="" /></a></p>\r\n<p><a href="#"><img style="display: block; margin-left: auto; margin-right: auto;" src="/ban_hang/hinh_anh/tinymce/qc_t_3.png" alt="" /></a></p>', 'phai');

-- --------------------------------------------------------

--
-- Structure de la table `san_pham`
--

CREATE TABLE IF NOT EXISTS `san_pham` (
`id` int(11) NOT NULL,
  `ten` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `gia` int(255) NOT NULL,
  `hinh_anh` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `thuoc_menu` int(255) NOT NULL,
  `noi_bat` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `trang_chu` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `sap_xep_trang_chu` int(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `san_pham`
--

INSERT INTO `san_pham` (`id`, `ten`, `gia`, `hinh_anh`, `noi_dung`, `thuoc_menu`, `noi_bat`, `trang_chu`, `sap_xep_trang_chu`) VALUES
(1, 'Sản phẩm 1', 55000, '1.jpg', '<p>Nội dung của sản phẩm 1</p>', 1, 'co', '', 0),
(2, 'Sản phẩm 3', 82000, '3.jpg', '<p>Nội dung sản phẩm 3</p>', 3, '', 'co', 7),
(3, 'Sản phẩm 1_2', 86000, '1_2.jpg', 'Nội dung của sản phẩm 1_2', 1, '', '', 0),
(4, 'Sản phẩm 1_3', 97000, '1_3.jpg', 'Nội dung của sản phẩm 1_3', 1, '', 'co', 3),
(5, 'Sản phẩm 1_4', 42000, '1_4.jpg', 'Nội dung của sản phẩm 1_4', 1, '', '', 0),
(6, 'Sản phẩm 1_5', 100000, '1_5.jpg', '<p>Nội dung của sản phẩm 1_5</p>', 1, '', 'co', 0),
(7, 'Sản phẩm 1_6', 120000, '1_6.jpg', 'Nội dung của sản phẩm 1_6', 1, '', 'co', 2),
(8, 'Sản phẩm 1_7', 80000, '1_7.jpg', 'Nội dung của sản phẩm 1_7', 1, '', '', 0),
(9, 'Sản phẩm 1_8', 160000, '1_8.jpg', 'Nội dung của sản phẩm 1_8', 1, '', '', 0),
(10, 'Sản phẩm 1_9', 160000, '1_9.jpg', 'Nội dung của sản phẩm 1_9', 1, '', 'co', 7),
(11, 'Sản phẩm 1_10', 135000, '1_10.jpg', '<p>Nội dung của sản phẩm 1_10</p>', 1, '', 'co', 0),
(12, 'Sản phẩm 1_11', 55000, '1_11.jpg', '<p>Nội dung của sản phẩm 1_11</p>', 1, '', 'co', 13),
(13, 'Sản phẩm 1_12', 72000, '1_12.jpg', '<p>Nội dung của sản phẩm 1_12</p>', 1, '', '', 0),
(14, 'Sản phẩm 1_13', 78000, '1_13.jpg', '<p>Nội dung của sản phẩm 1_13</p>', 1, '', 'co', 11),
(15, 'Sản phẩm 1_14', 123000, '1_14.jpg', '<p>Nội dung của sản phẩm 1_14</p>', 1, '', 'co', 0),
(16, 'Sản phẩm 1_15', 125000, '1_15.jpg', 'Nội dung của sản phẩm 1_15', 1, 'co', 'co', 5),
(17, 'Sản phẩm 1_16', 99000, '1_16.jpg', 'Nội dung của sản phẩm 1_16', 1, '', '', 0),
(18, 'Sản phẩm 1_17', 145000, '1_17.jpg', '<p>Nội dung của sản phẩm 1_17</p>', 1, '', 'co', 1),
(19, 'Sản phẩm 1_18', 145000, '1_18.jpg', 'Nội dung của sản phẩm 1_18', 1, '', '', 0),
(20, 'Sản phẩm 1_19', 170000, '1_19.jpg', 'Nội dung của sản phẩm 1_19', 1, '', '', 0),
(21, 'Sản phẩm 1_20', 85000, '1_20.jpg', 'Nội dung của sản phẩm 1_20', 1, '', '', 0),
(22, 'Sản phẩm 3_2', 30000, '3_2.jpg', '<p>Nội dung của sản phẩm 3_2</p>', 3, '', 'co', 8),
(23, 'Sản phẩm 3_3', 40000, '3_3.jpg', 'Nội dung của sản phẩm 3_3', 3, '', '', 6),
(24, 'Sản phẩm 3_4', 50000, '3_4.jpg', 'Nội dung của sản phẩm 3_4', 3, '', '', 0),
(25, 'Sản phẩm 3_5', 60000, '3_5.jpg', 'Nội dung của sản phẩm 3_5', 3, '', '', 9),
(26, 'Sản phẩm 3_6', 70000, '3_6.jpg', '<p>Nội dung của sản phẩm 3_6</p>', 3, '', 'co', 12),
(27, 'Sản phẩm 3_7', 80000, '3_7.jpg', 'Nội dung của sản phẩm 3_7', 3, '', '', 0),
(28, 'Sản phẩm 3_8', 90000, '3_8.jpg', '<p>Nội dung của sản phẩm 3_8</p>', 3, '', '', 8),
(29, 'Sản phẩm 3_9', 100000, '3_9.jpg', 'Nội dung của sản phẩm 3_9', 3, '', '', 0),
(30, 'Sản phẩm 3_10', 110000, '3_10.jpg', 'Nội dung của sản phẩm 3_10', 3, '', '', 7),
(31, 'Sản phẩm 3_11', 120000, '3_11.jpg', '<p>Nội dung của sản phẩm 3_11</p>', 3, '', 'co', 9),
(32, 'Sản phẩm 3_12', 50000, '3_12.jpg', 'Nội dung của sản phẩm 3_12', 3, '', '', 12),
(33, 'Sản phẩm 3_13', 60000, '3_13.jpg', '<p>Nội dung của sản phẩm 3_13</p>', 3, '', '', 1),
(34, 'Sản phẩm 3_14', 70000, '3_14.jpg', 'Nội dung của sản phẩm 3_14', 3, '', '', 11),
(35, 'Sản phẩm 3_15', 80000, '3_15.jpg', '<p>Nội dung của sản phẩm 3_15</p>', 3, '', '', 0),
(36, 'Sản phẩm 3_16', 90000, '3_16.jpg', 'Nội dung của sản phẩm 3_16', 3, '', '', 16),
(37, 'Sản phẩm 3_17', 170000, '3_17.jpg', 'Nội dung của sản phẩm 3_17', 3, '', '', 15),
(38, 'Sản phẩm 3_18', 180000, '3_18.jpg', 'Nội dung của sản phẩm 3_18', 3, '', '', 0),
(39, 'Sản phẩm 3_19', 190000, '3_19.jpg', '<p>Nội dung của sản phẩm 3_19</p>', 3, 'co', '', 0),
(40, 'Sản phẩm 3_20', 200000, '3_20.jpg', '<p>Nội dung của sản phẩm 3_20</p>', 3, '', 'co', 2);

-- --------------------------------------------------------

--
-- Structure de la table `slideshow`
--

CREATE TABLE IF NOT EXISTS `slideshow` (
`id` int(11) NOT NULL,
  `hinh` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `lien_ket` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `slideshow`
--

INSERT INTO `slideshow` (`id`, `hinh`, `lien_ket`) VALUES
(1, 'a_1.png', '#'),
(2, 'a_2.png', '#'),
(3, 'a_3.png', '#'),
(4, 'a_4.png', '#');

-- --------------------------------------------------------

--
-- Structure de la table `thong_tin_quan_tri`
--

CREATE TABLE IF NOT EXISTS `thong_tin_quan_tri` (
`id` int(11) NOT NULL,
  `ky_danh` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `thong_tin_quan_tri`
--

INSERT INTO `thong_tin_quan_tri` (`id`, `ky_danh`, `mat_khau`) VALUES
(1, 'admin', 'c3284d0f94606de1fd2af172aba15bf3');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `banner`
--
ALTER TABLE `banner`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `footer`
--
ALTER TABLE `footer`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `hoa_don`
--
ALTER TABLE `hoa_don`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `menu_doc`
--
ALTER TABLE `menu_doc`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `menu_ngang`
--
ALTER TABLE `menu_ngang`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `quang_cao`
--
ALTER TABLE `quang_cao`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `san_pham`
--
ALTER TABLE `san_pham`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `slideshow`
--
ALTER TABLE `slideshow`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `thong_tin_quan_tri`
--
ALTER TABLE `thong_tin_quan_tri`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `banner`
--
ALTER TABLE `banner`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `footer`
--
ALTER TABLE `footer`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `hoa_don`
--
ALTER TABLE `hoa_don`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `menu_doc`
--
ALTER TABLE `menu_doc`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `menu_ngang`
--
ALTER TABLE `menu_ngang`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `quang_cao`
--
ALTER TABLE `quang_cao`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `san_pham`
--
ALTER TABLE `san_pham`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT pour la table `slideshow`
--
ALTER TABLE `slideshow`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `thong_tin_quan_tri`
--
ALTER TABLE `thong_tin_quan_tri`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;--
-- Base de données :  `bookstore`
--

-- --------------------------------------------------------

--
-- Structure de la table `chitiethd`
--

CREATE TABLE IF NOT EXISTS `chitiethd` (
  `mahd` varchar(100) NOT NULL,
  `masach` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `soluong` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gia` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `chitiethd`
--

INSERT INTO `chitiethd` (`mahd`, `masach`, `soluong`, `gia`) VALUES
('abcd@yahoo.com_1286282293', 'td01', 1, 450000),
('abcd@yahoo.com_1286282293', 'th12', 1, 76000);

-- --------------------------------------------------------

--
-- Structure de la table `hoadon`
--

CREATE TABLE IF NOT EXISTS `hoadon` (
  `mahd` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL DEFAULT '',
  `ngayhd` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tennguoinhan` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `diachinguoinhan` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngaynhan` date NOT NULL DEFAULT '0000-00-00',
  `dienthoainguoinhan` varchar(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `hoadon`
--

INSERT INTO `hoadon` (`mahd`, `email`, `ngayhd`, `tennguoinhan`, `diachinguoinhan`, `ngaynhan`, `dienthoainguoinhan`) VALUES
('abcd@yahoo.com_1286282293', 'abcd@yahoo.com', '2010-10-05 19:38:13', 'abc', 'd,skl', '2010-10-06', '234567');

-- --------------------------------------------------------

--
-- Structure de la table `khachhang`
--

CREATE TABLE IF NOT EXISTS `khachhang` (
  `email` varchar(50) NOT NULL DEFAULT '',
  `matkhau` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tenkh` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `khachhang`
--

INSERT INTO `khachhang` (`email`, `matkhau`, `tenkh`, `diachi`, `dienthoai`) VALUES
('abcd@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Minh Triết', 'Q1', '99999999'),
('hung.stu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Đại Ca - Trần văn Hùng', 'Quận 3', '090090999');

-- --------------------------------------------------------

--
-- Structure de la table `loai`
--

CREATE TABLE IF NOT EXISTS `loai` (
  `maloai` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tenloai` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `loai`
--

INSERT INTO `loai` (`maloai`, `tenloai`) VALUES
('gk', 'Giáo Khoa'),
('khkt', 'Ky Thuat'),
('kt', 'Kinh Tế'),
('nn', 'Ngoại Ngữ'),
('pl', 'Pháp Luật'),
('td', 'Từ Điển'),
('test', 'Loai Moi'),
('th', 'Tin Học'),
('to', 'Toán Học'),
('tt', 'The Thao Du Lich'),
('vh', 'Văn Học'),
('vhxh', 'Van Hoa xa Hoi');

-- --------------------------------------------------------

--
-- Structure de la table `nhaxb`
--

CREATE TABLE IF NOT EXISTS `nhaxb` (
  `manxb` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tennxb` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `nhaxb`
--

INSERT INTO `nhaxb` (`manxb`, `tennxb`) VALUES
('gd', 'Giáo dục'),
('hcm', 'Tổng Hợp Hồ Chí Minh'),
('hnv', 'Hội Nhà Văn'),
('pn', 'Phụ Nữ'),
('tn', 'Thanh Niên'),
('vh', 'Văn Học'),
('vhtt', 'Văn Hóa Thông Tin');

-- --------------------------------------------------------

--
-- Structure de la table `quantri`
--

CREATE TABLE IF NOT EXISTS `quantri` (
  `username` varchar(30) NOT NULL,
  `matkhau` varchar(32) DEFAULT NULL,
  `hoten` varchar(100) CHARACTER SET utf8 NOT NULL,
  `quyen` int(1) NOT NULL COMMENT '1:  supper admin, 2:nhan viên, 3:...'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `quantri`
--

INSERT INTO `quantri` (`username`, `matkhau`, `hoten`, `quyen`) VALUES
('abcd', '81dc9bdb52d04dc20036dbd8313ed055', 'Nguyễn văn A', 2),
('hung', 'e10adc3949ba59abbe56e057f20f883e', 'Lên Văn An', 2),
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Trần Văn Hùng', 1);

-- --------------------------------------------------------

--
-- Structure de la table `sach`
--

CREATE TABLE IF NOT EXISTS `sach` (
  `masach` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tensach` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mota` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gia` int(10) NOT NULL,
  `hinh` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `manxb` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `maloai` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `sach`
--

INSERT INTO `sach` (`masach`, `tensach`, `mota`, `gia`, `hinh`, `manxb`, `maloai`) VALUES
('td01', 'Từ Điển mẫu câu tiếng Nhật', 'Tập hợp tất cả các mẫu câu tiếng Nhật. Phong phú, đầu đủ nhất. ', 450000, 'td01.jpg', 'gd', 'td'),
('td02', 'Từ Điển Kinh Doanh Và Tiếp Thị Hiện Đại', 'Quyển sách “Từ điển Kinh doanh – Tiếp thị Hiện đại” (Modern Business & Marketing Dictionary) của tác giả Cung Kim Tiến (Bút danh Anh Tuấn) trình bày các thuật ngữ đang sử dụng thịnh hành trong giao dịch kinh doanh và tiếp thị trong nước và quốc tế. Đặc điểm của quyển sách là các thuật ngữ được đặt trong các bối cảnh khác nhau, bằng cách dẫn các đoạn văn xuất hiện trong thực tiễn kinh doanh quốc tế, giúp bạn đọc hiểu rõ được ý nghĩa và cách sử dụng trong thực tiễn của các thuật ngữ chuyên biệt này, với các nội dung thú vị khác nhau.\r\n Tác giả đã chọn lọc một cách công phu các đoạn văn đa dạng và phong phú, xuất hiện trên các ấn phẩm quốc tế khác nhau, giúp độc giả có cơ hội thuận lợi trong giao tiếp, soạn thảo, hoặc tham gia các buổi họp liên quan đến kinh doanh, đảm nhiệm các nhiệm vụ về kinh doanh, quản lý và tiếp thị trong các doanh nghiệp.\r\nQuyển sách này được kỳ vọng sẽ trợ giúp hiệu quả để bạn đọc tiếp cận một lĩnh vực tri thức kinh doanh bằng Anh ngữ, là bạn đồng hành trên con đường sự nghiệp trong thời kỳ quốc tế hóa.', 195000, 'td02.gif', 'vhtt', 'td'),
('td03', 'Đại Từ Điển Tiếng Việt (Bản mới 2010)', 'Thêm yêu tiếng Việt\r\n\r\n \r\n\r\nTừ lâu chúng ta đã có nhiều công trình nghiên cứu về kho tàng tiếng Việt, thế nhưng “Đại từ điển tiếng Việt” (NXB Đại học Quốc gia TPHCM - Nguyễn Như Ý chủ biên) vừa ra mắt bạn đọc là công trình đầy đặn và đồ sộ nhất. Cuốn sách đã bắt nhịp cầu cho những ai yêu tiếng mẹ…\r\n\r\n \r\n\r\nCầm trên tay cuốn Đại từ điển dày gần 2.000 trang mới cảm nhận hết tâm huyết của những người làm sách. Cuốn từ điển này được in lần đầu tiên vào năm 1999, đến nay, đáp ứng nhu cầu của bạn đọc, các tác giả đã tiến hành nghiên cứu, bổ sung.\r\n\r\n \r\n\r\nTrong lần tái bản này, ban biên soạn đã chọn và đưa vào sách những từ ngữ mới xuất hiện và đã được dùng rộng rãi trong đời sống và trên các phương tiện thông tin đại chúng nhằm làm tăng tính mới mẻ và tiện ích cho người sử dụng.\r\n\r\n \r\n\r\nMột trong những ý tưởng chinh phục người đọc là tính đa dạng của Đại từ điển tiếng Việt. Bởi nó không chỉ đơn thuần là sự tra cứu nghĩa các từ mà mở ra chân trời kiến thức mới. Việc đan xen những kiến thức cơ bản về văn hóa, văn minh Việt Nam và thế giới, giới thiệu tổng quan và hệ thống các hiện vật văn hóa như: Đơn vị đo lường của Việt Nam và thế giới, đồng bạc Việt xưa và nay, các loại trống đồng hiện có ở Việt Nam, quốc kỳ các nước trên thế giới… Đây là những thông tin bổ ích đáp ứng nhu cầu bổ sung kiến thức cơ bản của học sinh - sinh viên và các bạn trẻ Việt Nam.\r\n\r\n\r\n', 450000, 'td03.jpg', 'hcm', 'td'),
('td04', 'từ điển y học sức khỏe bệnh lý Anh Anh Việt', 'Từ điển y học - sức khỏe bệnh lý Anh Anh Việt này được biên soạn để đáp ứng nhu cầu tìm hiểu, tra cướu và dịch thuật các tư liệu y khoa bằng tiếng anh, cũng như tăng cường kiến thức về các bệnh thường gặp của các thành phần độc giả trong xã hội. ', 380000, 'td04.jpg', 'tn', 'td'),
('td05', 'Từ Điển Anh Việt - 75000 Từ', 'Từ điển mới ...', 50000, 'td05.jpg', 'hcm', 'td'),
('td06', 'Từ điển địa danh hành chính Nam Bộ', 'Từ điển địa danh hành chính Nam Bộ do tác giả Nguyễn Đình Tư biên soạn hết sức công phu, tổng hợp được nhiều tư liệu quý, là công cụ giúp bạn đọc tra cứu một cách khoa học về địa danh hành chính. Đây là cuốn sách có giá trị không chỉ bởi nó cung cấp một lượng mục từ khá đồ sộ, mà còn bởi tác giả đã dành rất nhiều công sức và tâm huyết để sưu tầm, xử lý tư liệu về vùng đất có bề dày truyền thống lịch sử, nhưng cũng có sự thay đổi nhiều và phức tạp nhất về địa danh hành chính', 265000, 'td06.jpg', 'hcm', 'td'),
('th01', '100 thủ thuật với Excel 2010', '100 thủ thuật ứng với 100 bài tập thực hành được hướng dẫn, giải thích theo bố cục chặt chẽ, cách trình bày rõ ràng, dễ sử dụng, bạn đọc có thể tự mình xử lý những vấn đề nảy sinh trong quá trình thực hành đồng thời giúp các bạn thao tác nhanh trên bảng tính.\r\n', 54000, 'th01.gif', 'hcm', 'th'),
('th02', 'Lập trình web bằng PHP 5.3 và cơ sở dữ liệu', 'Tiếp theo tập 1, tập 2 của cuốn sách "Lập trình Web bằng PHP 5.3 và cơ sở dữ liệu MySQL 5.1" bao gồm 10 chương và ứng dụng đính kèm lần lượt giới thiệu cùng bạn đọc các kiến thức liên quan đến Session, Cookie, giỏ hàng trực tuyến, tìm kiếm và phân trang dữ liệu, lập trình hướng đối tượng và sử dụng Zend Framework.\r\n\r\nChương 8 trình bày kiến thức cơ bản của kịch bản trình chủ PHP và cơ sở dữ liệu MySQL.\r\n\r\nSang chương 9, bạn tiếp tục tìm hiểu cách thiết kế trang Web cho phép người sử dụng tìm kiếm và phân trang dữ liệu trình bày với nhiều hình thức khác nhau.\r\n\r\nĐể xây dựng ứng dụng thương mại điện tử hoàn chỉnh và mang tính chuyên nghiệp cao, bạn tiếp tục tìm hiểu cách sử dụng hàm Session và Cookie trong chương 10 để lưu trữ thông tin của người sử dụng nhằm vào mục đích quản lý tài nguyên của Website.\r\n\r\nMọi ứng dụng thương mại điện tử đều cung cấp chương giỏ hàng trực tuyến, bạn cũng được tìm hiểu cách xây dựng giỏ hàng bằng cách sử dụng Session lẫn Cookie trong chương 11.\r\n\r\nKhi có nhu cầu trình bày hình ảnh, đồ thị và âm thanh lẫn phim ảnh, bạn tìm hiểu cách sử dụng mã PHP trong chương 12.\r\n\r\nTiếp theo, bạn có thể tìm hiểu cú pháp của kịch bản PHP trong chương 13 và học cách lập trình hướng đối tượng và sử dụng lớp này vào ứng dụng trong chương 14.\r\n\r\nChương 15 giúp bạn sử dụng kịch bản trình khách Java Script để thay đổi góc nhìn và ứng xử của thẻ HTML trong trang Web.\r\n\r\nSang chương 16, bạn khám phá thư viện mã nguồn mở Zend viết bằng PHP dùng cho các loại cơ sở dữ liệu và học cách sử dụng các lớp trong thư viện này vào ứng dụng bán hàng trực tuyến trong chương 17.', 76000, 'th02.jpg', 'hcm', 'th'),
('th03', 'Lập trình web bằng PHP 5.3 và cơ sở dữ liệu MySQL 5.1 (Tập1)', 'Tập 1 của cuốn sách "Lập trình Web bằng PHP 5.3 và cơ sở dữ liệu MySQL 5.1" bao gồm 7 chương và ứng dụng đính kèm. Chương 1 cung cấp cho bạn kiến thức từ chức năng của Website, cài đặt gói WamSever 2.0 và cấu hình để có thể vận hành ứng dụng Web bằng PHP, MySQL và Apache Web Sever.\r\n\r\nSang chương 2, bạn tiếp tục tìm hiểu cách tạo Website và thiết kế cấu trúc dùng cho doanh nghiệp bằng hệ quản trị nội dung mã nguồn mở Joomla. Nhằm thỏa mãn nội dung trình bày, bạn tiếp tục tìm hiểu cách thiết kế trang Web tĩnh hay động bằng mã tự sinh PHP với phần mềm Dreamweaver CS trong chương 3 và thẻ HTML trong chương 4.\r\n\r\nTiếp theo, bạn có thể tìm hiểu cú pháp của kịch bản PHP trong chương 5 và học cách sử dụng ứng dụng PhpMyAdmin để quản trị cơ sở dữ liệu MySQL trong chương 6. Sang chương 7 bạn tìm hiểu phát biểu SQL của cơ sở dữ liệu MySQL dùng để xây dựng ứng dụng bán hàng trực tuyến.', 76000, 'th03.jpg', 'hcm', 'th'),
('th04', 'Làm Quen Với Internet', 'Ngày nay với sự phát triển không ngừng của kinh tế nói chung và ngành công nghệ thông tin nói riêng, chúng ta có thể dễ dàng tiếp xúc và làm quen với máy vi tính. Tuy nhiên đây là một lĩnh vực mới lại chưa được phổ cập ở mọi cấp học nên các em sẽ có cảm giác bỡ ngỡ, thiếu tự tin khi lần đầu làm quen với chiếc máy tính đa năng. Mỗi bài học trong cuốn sách là một bài thực hành, được thực hiện qua từng bước cơ bản với hình ảnh minh họa trực quan và những lời giải thích chi tiết.', 31000, 'th04.jpg', 'hcm', 'th'),
('th05', 'Từng Bước Làm Quen Với Máy Tính', 'Mục Lục:\r\n\r\nBài 1: Máy tính điện tử và hệ điều hành\r\n\r\nBài 2: Hệ điều hành Window XP\r\n\r\nBài 3: Làm việc với máy tính qua desktop\r\n\r\nBài 4: Tệp tin và thư mục\r\n\r\nBài 5: Sử dụng Window Explorer\r\n\r\nBài 6: Một số thao tác cần biết\r\n\r\nPhụ lục – Những tổ hợp phím tắt', 31000, 'th05.jpg', 'vhtt', 'th'),
('th06', 'Quản Trị Windows Server 2008 - Tập 2', 'Kế thừa những ưu điểm vượt trội và sự thành công của Windows Server 2003 cùng những phiên bản Windows trước đó, hãng Microsoft tiếp tục cho ra đời một phiên bản hệ điều hành dành cho máy chủ mới, Windows Server 2008. Phiên bản này đem đến cho người dùng sự nhanh chóng trong cài đặt; sự tiện lợi trong quản trị hệ thống, tương tác với các thành phần và dịch vụ vì được tập trung vài một công cụ duy nhất – Server Manager, những cải tiến đáng chú ý trên Windows Firewall; công nghệ ảo hoá…\r\n\r\nWindows Server 2008 còn cung cấp cho người sử dụng cách thức cài đặt Server Core, bao gồm những thành phần cơ bản nhất của Windows Server và giao diện dòng lệnh. Với kiểu cài đặt này, giao diện đồ hoạ quen thuộc của Windows cùng những dịch vụ không cần thiết sẽ không được cài đặt lên hệ thống. Nhờ đó nâng cao độ bảo mật và nâng cấp hệ thống.', 62000, 'th06.jpg', 'hcm', 'th'),
('th07', 'Kỹ Thuật Lập Trình C - Cơ Sở Và Nâng Cao', ' Cuốn sách này gồm những nội dung chính sau:\r\n# Chương 1: Các khái niệm cơ bản\r\n# Chương 2: Hằng biến và mảng\r\n# Chương 3: Biểu thức\r\n# Chương 4: Vào ra\r\n# Chương 5: Các toán tử điều khiển\r\n# Chương 6: Hàm và cấu trúc chương trình\r\n# Chương 7: Cấu trúc\r\n# Chương 8: Quản lý màn hình và cửa sổ\r\n# Chương 9: Đồ họa\r\n# Chương 10: Thao tác trên các tập tin\r\n# Chương 11: Lưu trữ dữ liệu và tổ chức bộ nhớ chương trình\r\n# Chương 12: Các chỉ thị tiền xử lý\r\n# Chương 13: Sử dụng ngắt trong C\r\n# Chương 14: Truy nhập trực tiếp vào bộ nhớ\r\n# Chương 15: Hàm xử ngắt và chương trình thường trú\r\n# Chương 16: Âm thanh, âm nhạc\r\n# Chương 17: Lập trình theo thời gian, theo sự kiện và trò chơi\r\n# Chương 18: Giao diện giữa C và Assembler\r\n# Phụ lục 1: Quy tắc xuống dòng và sử dụng các khoảng trống khi viết chương trình\r\n# Phụ lục 2: Tóm tắt các hàm chuẩn của Turbo C\r\n# Phụ lục 3: Bảng mã ASCII\r\n# Phụ lục 4: Cài đặt Turbo C vào đĩa cứng\r\n# Phụ lục 5: Hướng dẫn sử dụng môi trường kết hợp Turbo C\r\n# Phụ lục 6: Hệ soạn thảo của Turbo C\r\n# Phụ lục 7: Dùng menu project dịch chương trình trên nhiều tệp\r\n# Phụ lục 8: Dịch chương trình theo chế độ dòng lệnh TCC\r\n# Phụ lục 9: Sửa đổi cú pháp và gỡ rối chương trình\r\n# Phụ lục 10: Các mô hình bộ nhớ\r\n# Phụ lục 11: Danh sách các hàm của Turbo C theo thứ tự ABC\r\n# Phụ lục 12: Hàm với đối số bất định trong C\r\n# Phụ lục 13: Một số chương trình hữu ích', 72000, 'th07.jpg', 'tn', 'th'),
('th08', 'Giáo Trình Học Nhanh SQL Server 2008 - Tập 2', 'Bộ sách “Giáo trình học nhanh SQL Server 2008” được biên soạn dành cho các nhà phát triển và các nhà quản trị cơ sở dữ liệu, những người đang công tác trong lĩnh vực quản lý dữ liệu doanh nghiệp và cho tất cả những ai quan tâm đến SQL Server 2008.\r\n\r\n\r\nVới cách thiết kế và bố cục rõ ràng theo từng chủ điểm cụ thể, bộ sách tập trung trình bày những tính năng chính của SQL Server 2008 nhằm mục đích giúp bạn đọc tăng cường kiến thức đồng thời nâng cao kỹ năng sử dụng sản phẩm mới rất tuyệt vời này. Bộ sách được chia thành 2 tập với bốn phần chính sau đây:', 81000, 'th08.jpg', 'hcm', 'th'),
('th09', '160 Vấn Đề Cần Nên Biết Khi Sử Dụng Đồ Họa Máy Vi Tính', '"160 Vấn Đề Cần Nên Biết Khi Sử Dụng Đồ Họa Máy Vi Tính" bao gồm những vấn đề cơ bản và thiết yếu mà những người đang học hay làm đồ họa máy vi tính thường quan tâm tìm hiểu nhằm làm việc hiệu quả hơn với các chương trình phần mềm như Photoshop, CorelDRAW và Illustrator.\r\n\r\n\r\nSách gồm 3 phần, được thiết kế và bố cục theo từng vấn đề cụ thể từ cơ bản đến chuyên nghiệp như tùy biến Photoshop cho các dự án mà bạn thực hiện, chỉnh sửa các bức ảnh chân dung, tạo nên điều kỳ diệu với những hiệu ứng số đặc biệt, trình bày hình ảnh một cách chuyên nghiệp, tạo các thiết kế và viết lời truyện tranh trong CorelDRAW, và áp dụng các hiệu ứng với Illustrator.\r\n\r\n\r\nSách được trình bày ngắn gọn, rõ ràng kèm hình ảnh minh họa. Ngoài ra sách còn bao gồm nhiều thủ thuật và lưu ý hữu ích.', 85000, 'th09.jpg', 'tn', 'th'),
('th10', 'Giáo Trình Học Nhanh SQL Server 2008 - Tập 1', 'Bộ sách “Giáo trình học nhanh SQL Server 2008” được biên soạn dành cho các nhà phát triển và các nhà quản trị cơ sở dữ liệu, những người đang công tác trong lĩnh vực quản lý dữ liệu doanh nghiệp và cho tất cả những ai quan tâm đến SQL Server 2008.\r\n\r\n\r\nVới cách thiết kế và bố cục rõ ràng theo từng chủ điểm cụ thể, bộ sách tập trung trình bày những tính năng chính của SQL Server 2008 nhằm mục đích giúp bạn đọc tăng cường kiến thức đồng thời nâng cao kỹ năng sử dụng sản phẩm mới rất tuyệt vời này.', 69000, 'th10.jpg', 'tn', 'th'),
('th11', 'Microsoft Word 2007 - Căn Bản Và Thủ Thuật', 'Microsoft Word 2007 nói riêng và Microsoft Office 2007 nói chung có nhiều đổi mới. Microsoft chẳng những cung cấp cho người dùng giao diện đẹp mắt mà còn có nhiều tiện ích và trực quan hơn so với các phiên bản trước đây. Thay cho thanh menu và các thanh dụng cụ là một hệ thống Ribbon bao gồm các thẻ, các nhóm, trong từng menu lại có các menu phụ và các lệnh. Khi bạn trỏ chuột vào biểu tượng nào của hệ thống này sẽ hiển thị ScreenTip cho biết chức năng và công dụng của chúng. Chẳng những thế, Word còn thể hiện tức thời hiệu quả của từng lệnh để bạn xem, trước khi chọn chúng.\r\n\r\n\r\nTrong quyển sách này, chúng tôi trình bày tóm tắt lý thuyết căn bản về soạn thảo, chỉnh sửa, định dạng văn bản và một số thủ thuật mà bất cứ ai làm công tác văn phòng đều phải sử dụng. Nội dung sách gồm 6 bài: 1-Thủ thuật tổng quát, 2-Soạn thảo và chỉnh sửa văn bản, 3-Định dạng văn bản, 4-WordArt và xử lý hình ảnh, 5-Liên kết và Web, 6-Bảo mật & in ấn văn bản,. Từ bài 2 đến bài 4, trước khi trình bày thủ thuật, chúng tôi tóm tắt lý thuyết giống như giáo trình Word 2007 để bạn thực hành', 69000, 'th11.jpg', 'gd', 'th'),
('th12', 'Kế Toán Doanh Nghiệp Với ACCESS', 'Sách mới...', 76000, 'th12.jpg', 'gd', 'th'),
('th13', 'Giáo Trình C++ & Lập Trình Hướng Đối Tượng', 'Cuốn sách gồm 12 chương và 7 phụ lục:\r\n\r\nChương 1 hướng dẫn cách làm việc với phần mềm TC++ 3.0 để thử nghiệm các chương trình, trình bày sơ lược về các phương pháp lập trình và giới thiệu một số mở rộng đơn giản của C.\r\n\r\nChương 2 trình bày các khả năng mới trong việc xây dựng và sử dụng hàm trong C++ như biến tham chiếu, đối có kiểu tham chiếu, đối có giá trị mặc định, hàm trực tuyến, hàm trùng tên, hàm toán tử.\r\n\r\nChương 3 nói về một khái niệm trung tâm của lập trình hướng đối tượng là lớp gồm: Định nghĩa lớp, khai báo các biến, mảng đối tượng ( kiểu lớp ), phương pháp, dùng con trỏ this trong phương thức, phạm vi truy xuất của các thành phần, các phương thức toán tử.\r\n\r\nChương 4 trình bày các vấn đề tạo dựng, sao chép, huỷ bỏ các đối tượng và các vấn đề khác có liên quan như: Hàm tạo, hàm tạo sao chép, hàm huỷ, toán tử gán, cấp phát bộ nhớ cho đối tượng, hàm bạn, lớp bạn.\r\n\r\nChương 5 trình bày một khái niệm quan trong tạo nên khả năng mạnh của lập trình hướng đối tượng trong việc phát triển, mở rộng phầm mềm, đó là khả năng thừa kế củaw các lớp.\r\n\r\nChương 6 trình bày một khái niệm quan trọng khác cho phép xử lý các vấn đề khác nhau, các thực thể khác nhau, các thuật toán khác nhau theo cùng một lược đồ thống nhất, đó là tính tướng ứng bội và phương thức ảo. Các công cụ này cho phép dễ dàng tổ chức chương trình quản lý nhiều dạng đối tượng khác nhau.\r\n\r\nChương 7 trình bày các thao tác trên tệp như: tạo một tệp mới, ghi dữ liệu từ bộ nhớ lên tệp, đọc dữ liệu từ tệp vào bộ nhớ...\r\n\r\nChương 8 nói về việc tổ chức vào/ ra trong C++.C++ đưa vào một khái niệm mới gọi là các dòng tin ( Stream ), Các thao tác vào/ra sẽ thực hiện trao đổi dữ liệu giữa các bộ nhớ với dòng tin: Vào là chuyển dữ liệu từ dòng nhập vào bộ nhớ, ra là chuyển dữ liệu từ bộ nhớ lên dòng xuất. Để nhập xuất dữ liệu trên một thiết bị cụ thể nào, ta chỉ cần gắn dòng nhập xuất với thiết bị đó. Việc tổ chức vào ra theo cách như vậy là rất khoa học và tiện lợi vì nó có tính độc lập thiết bị.\r\n\r\nChương 9 trình bày các hàm đồ hoạ sử dụng trong C và C++. Các hàm này được sử dụng rải rác trong toàn bộ cuốn sách để xây dựng các đối tượng đồ hoạ.\r\n\r\nChương 10 trình bày các hàm truy xuất trực tiếp vào bộ nhớ của máy tính, trong đó có bộ nhớ màn hình. Các hàm này sẽ được sử dụng trong chương 11 để xây dựng các lớp menu và cửa sổ.\r\n\r\nChương 11 giới thiệu 5 chương trình tương đối hoàn chỉnh nhằm minh hoạ thêm khả năng và kỹ thuật lập trình hướng đối tượng trên C++.\r\n\r\nChương 12 trình bày thêm một số chương trình đối tượng trên C++. Đây là các chương trình tương đối phức tạp, hữu ích và sử dụng các công cụ mạnh của C++.', 78000, 'th13.gif', 'gd', 'th'),
('th14', 'Các Thủ Thuật Trong HTML Và Thiết Kế Web', 'Cuốn sách này sẽ cung cấp các thông tin cần thiết để đẩy nhanh tốc độ thiết kế Web thông qua việc thực hành với các mẫu của nhiều chuyên gia thiết kế Web.\r\nCuốn sách tập trung vào các chi tiết để tạo ra các Web site tốt thông qua nhiều cách tiếp cận hiện đại để giải quyết các thách thức liên quan đến việc tạo Web site. Thay vì đi vào từng ngôn ngữ và công nghệ cụ thể, các bài học trong cuốn sách này được phân chia thành các "thủ thuật" nhằm giúp bạn:\r\n# Ngay lập tức cải thiện được Web site của mình\r\n# Xây dựng Web site mới thật sinh động, tương thích với nhiều môi trường khác nhau\r\n# Quản lý việc thiết kế lại\r\n# Đưa Web site từ khởi đầu đến thành công', 89000, 'th14.jpg', 'gd', 'th'),
('th15', 'Tạo Website Hấp Dẫn Với HTML, XHTML Và CSS', 'Ngày nay, việc ứng dụng phát triển Website hấp dẫn không còn gói gọn bằng HTLM, cho dù bạn đang xây dựng một Website thương mại phức tạp hoặc chỉ đơn thuần là tạo ra một Website nhỏ cho bản thân. Với cuốn sách "Tạo Website Hấp Dẫn Với HTML, XHTML Và CSS"  này sẽ cùng bạn khám phá các sắc thái của XHTML và CSS theo cách giúp bạn nắm được các vấn đề. Sách bao gồm nhiều thông tin mới cập nhật về XHTML, CSS, JavaScript...\r\nCuốn sách này không những giúp bạn tiết kiệm được thời gian học tập mà còn thích hợp với những ai muốn tò mò tạo một Website, vì sách cung cấp nhiều gợi ý, hướng dẫn rõ ràng trong việc chuẩn bị xuất bản những trang Web đầu tiên ngay sau khi bạn đọc qua vài chương.', 79000, 'th15.jpg', 'gd', 'th'),
('th16', 'Tuyển Tập Thủ Thuật Javascript - Tập 1', '"Tuyển Tập Thủ Thuật Javascript" gồm 2 tập, là một tuyển tập các giải pháp cho những vấn đề phổ biến nhất trong JavaScript. Nó chứa đựng các thủ thuật, gợi ý và kỹ thuật tương thích chuẩn, đã được thử nghiệm và bạn có thể tùy biến để sử dụng trong các trình duyệt khác nhau.', 66000, 'th16.jpg', 'gd', 'th'),
('th17', 'Thiết Kế Web Với CSS', '\r\nTừ khi được giới thiệu năm 1996, bảng kiểu xếp tầng (CSS) đã làm thay đổi đáng kể thiết kế Web. Hiện nay, phần lớn trang Web đều sử dụng CSS và nhiều nhà thiết kế đã xây dựng các bố cục trang hoàn toàn dựa trên CSS. Để thực hiện điều này một cách thành công, đòi hỏi chúng ta phải hiểu biết kỹ về nội dung hoạt động của CSS. Sách Thiết Kế Web Với CSS cung cấp cho bạn những vấn đề cần thiết để sử dụng CSS. ', 82000, 'th17.jpg', 'gd', 'th'),
('th18', 'Thiết Kế Web Với JavaScript Và Dom', 'Nội dung cuốn sách "Thiết Kế Web Với JavaScript Và Dom" giới thiệu về ngôn ngữ lập trình, nhưng nó không chỉ dành riêng cho các lập trình viên, mà còn rất có ích cho các nhà thiết kế Web.', 79000, 'th18.jpg', 'gd', 'th'),
('th88', 'sach giao khoa lop 10', '?', 30000, 'th18.jpg', 'gd', 'gk');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `chitiethd`
--
ALTER TABLE `chitiethd`
 ADD PRIMARY KEY (`mahd`,`masach`), ADD KEY `masach` (`masach`);

--
-- Index pour la table `hoadon`
--
ALTER TABLE `hoadon`
 ADD PRIMARY KEY (`mahd`), ADD KEY `email` (`email`);

--
-- Index pour la table `khachhang`
--
ALTER TABLE `khachhang`
 ADD PRIMARY KEY (`email`);

--
-- Index pour la table `loai`
--
ALTER TABLE `loai`
 ADD PRIMARY KEY (`maloai`);

--
-- Index pour la table `nhaxb`
--
ALTER TABLE `nhaxb`
 ADD PRIMARY KEY (`manxb`);

--
-- Index pour la table `quantri`
--
ALTER TABLE `quantri`
 ADD PRIMARY KEY (`username`);

--
-- Index pour la table `sach`
--
ALTER TABLE `sach`
 ADD PRIMARY KEY (`masach`), ADD KEY `manxb` (`manxb`,`maloai`), ADD KEY `maloai` (`maloai`);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `chitiethd`
--
ALTER TABLE `chitiethd`
ADD CONSTRAINT `chitiethd_ibfk_1` FOREIGN KEY (`mahd`) REFERENCES `hoadon` (`mahd`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `chitiethd_ibfk_2` FOREIGN KEY (`masach`) REFERENCES `sach` (`masach`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `hoadon`
--
ALTER TABLE `hoadon`
ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`email`) REFERENCES `khachhang` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `sach`
--
ALTER TABLE `sach`
ADD CONSTRAINT `sach_ibfk_1` FOREIGN KEY (`manxb`) REFERENCES `nhaxb` (`manxb`) ON UPDATE CASCADE,
ADD CONSTRAINT `sach_ibfk_2` FOREIGN KEY (`maloai`) REFERENCES `loai` (`maloai`) ON UPDATE CASCADE;
--
-- Base de données :  `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Structure de la table `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
`id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Structure de la table `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
`id` int(5) unsigned NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

--
-- Contenu de la table `pma_column_info`
--

INSERT INTO `pma_column_info` (`id`, `db_name`, `table_name`, `column_name`, `comment`, `mimetype`, `transformation`, `transformation_options`) VALUES
(10, 'webchuyenhang', 'account', 'Maloai', '', '', '_', ''),
(2, 'webchuyenhang', 'Loaiaccount', 'Loaiaccount', '', '', '_', ''),
(4, 'webchuyenhang', 'Trangthaidonhang', 'Trangthai', '', '', '_', ''),
(5, 'webchuyenhang', 'Trangthai', 'Trangthai', '', '', '_', ''),
(14, 'webchuyenhang', 'Trangthaidonhang', 'Matrangthai', '', '', '_', ''),
(8, 'webchuyenhang', 'Trangthaidonhang', 't', '', '', '_', ''),
(43, 'webchuyenhang', 'Trangthai', 'ma', '', '', '_', ''),
(11, 'webchuyenhang', 'Loaiaccount', 'Ma', '', '', '_', ''),
(12, 'webchuyenhang', 'Loaiaccount', 'Tenloai', '', '', '_', ''),
(15, 'webchuyenhang', 'Trangthaidonhang', 'Tentrangthai', '', '', '_', ''),
(16, 'webchuyenhang', 'khachhang', 'Loaikh', '', '', '_', ''),
(17, 'webchuyenhang', 'loaikh', 'Loaikh', '', '', '_', ''),
(18, 'webchuyenhang', 'loaikh', 'Tenloai', '', '', '_', ''),
(19, 'webchuyenhang', 'nhanvien', 'Loainv', '', '', '_', ''),
(22, 'webchuyenhang', 'Loainv', 'Maloai', '', '', '_', ''),
(23, 'webchuyenhang', 'Loainv', 'Tenloai', '', '', '_', ''),
(24, 'webchuyenhang', 'thongtindonhang', 'Loaihang', '', '', '_', ''),
(25, 'webchuyenhang', 'loaihang', 'Tenhang', '', '', '_', ''),
(26, 'webchuyenhang', 'loaihang', 'Maloai', '', '', '_', ''),
(27, 'webchuyenhang', 'hinhthucchuyen', 'Maloai', '', '', '_', ''),
(28, 'webchuyenhang', 'hinhthucchuyen', 'Tenloai', '', '', '_', ''),
(29, 'webchuyenhang', 'thanhtoan', 'Maloai', '', '', '_', ''),
(30, 'webchuyenhang', 'thanhtoan', 'Tenloai', '', '', '_', ''),
(31, 'webchuyenhang', 'thongtinnguoinhan', 'Ten', '', '', '_', ''),
(32, 'webchuyenhang', 'thongtinnguoinhan', 'Sdt', '', '', '_', ''),
(33, 'webchuyenhang', 'loaiaccount', 'Maloai', '', '', '_', ''),
(34, 'webchuyenhang', 'account', 'Loaiaccount', '', '', '_', ''),
(35, 'webchuyenhang', 'loaikh', 'Maloai', '', '', '_', ''),
(36, 'webchuyenhang', 'thongtindonhang', 'Thanhtoan', '', '', '_', ''),
(41, 'webchuyenhang', 'Trangthaidonhang', 'Tenloai', '', '', '_', ''),
(40, 'webchuyenhang', 'Trangthaidonhang', 'Maloai', '', '', '_', ''),
(44, 'webchuyenhang', 'Trangthai', 'Tenloai', '', '', '_', ''),
(45, 'webchuyenhang', 'donhang', 'Trangthai', '', '', '_', ''),
(51, 'webchuyenhang', 'Trangthai', 'Ten loai', '', '', '_', ''),
(50, 'webchuyenhang', 'Trangthai', 'Maloai', '', '', '_', ''),
(52, 'webchuyenhang', 'donhang', 'Xuly', '', '', '_', ''),
(53, 'webchuyenhang', 'xuly', 'Maloai', '', '', '_', ''),
(54, 'webchuyenhang', 'xuly', 'tenloai', '', '', '_', ''),
(55, 'webchuyenhang', 'loainv', 'Tenloai', '', '', '_', ''),
(56, 'webchuyenhang', 'nhanvien', 'UserID', '', '', '_', ''),
(57, 'webchuyenhang', 'Gioitinh', 'maloai', '', '', '_', ''),
(58, 'webchuyenhang', 'Gioitinh', 'ten', '', '', '_', ''),
(59, 'webchuyenhang', 'nhanvien', 'Gioitinh', '', '', '_', ''),
(60, 'webchuyenhang', 'khachhang', 'Gioitinh', '', '', '_', ''),
(61, 'webchuyenhang', 'gioitinh', 'ten', '', '', '_', ''),
(62, 'webchuyenhang', 'nhanvien', 'Ngaysinh', '', '', '_', '');

-- --------------------------------------------------------

--
-- Structure de la table `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

--
-- Contenu de la table `pma_designer_coords`
--

INSERT INTO `pma_designer_coords` (`db_name`, `table_name`, `x`, `y`, `v`, `h`) VALUES
('webchuyenhang', 'account', 102, 45, 1, 1),
('webchuyenhang', 'donhang', 443, 399, 1, 1),
('webchuyenhang', 'hinhthucchuyen', 783, 450, 1, 1),
('webchuyenhang', 'khachhang', 14, 367, 1, 1),
('webchuyenhang', 'loaihang', 112, 607, 1, 1),
('webchuyenhang', 'loaikh', 184, 179, 1, 1),
('webchuyenhang', 'nhanvien', 407, 58, 1, 1),
('webchuyenhang', 'thanhtoan', 743, 368, 1, 1),
('webchuyenhang', 'thongtindonhang', 756, 564, 1, 1),
('webchuyenhang', 'thongtinnguoinhan', 0, 726, 1, 1),
('webchuyenhang', 'loaiaccount', 143, 276, 1, 1),
('webchuyenhang', 'loainv', 710, 193, 1, 1),
('webchuyenhang', 'xuly', 501, 654, 1, 1),
('webchuyenhang', 'gioitinh', 759, 80, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
`id` bigint(20) unsigned NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma_navigationhiding`
--

CREATE TABLE IF NOT EXISTS `pma_navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Structure de la table `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
`page_nr` int(10) unsigned NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Contenu de la table `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"webchuyenhang","table":"thongtinnguoinhan"},{"db":"webchuyenhang","table":"thongtindonhang"},{"db":"webchuyenhang","table":"khachhang"},{"db":"webchuyenhang","table":"donhang"},{"db":"webchuyenhang","table":"nhanvien"},{"db":"webchuyenhang","table":"account"},{"db":"webchuyenhang","table":"loainv"},{"db":"webchuyenhang","table":"gioitinh"},{"db":"webchuyenhang","table":"loaiaccount"},{"db":"webchuyenhang","table":"xuly"}]');

-- --------------------------------------------------------

--
-- Structure de la table `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Structure de la table `pma_savedsearches`
--

CREATE TABLE IF NOT EXISTS `pma_savedsearches` (
`id` int(5) unsigned NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Structure de la table `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Structure de la table `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Structure de la table `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Contenu de la table `pma_userconfig`
--

INSERT INTO `pma_userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2017-11-17 15:42:26', '{"lang":"fr","collation_connection":"utf8mb4_general_ci"}');

-- --------------------------------------------------------

--
-- Structure de la table `pma_usergroups`
--

CREATE TABLE IF NOT EXISTS `pma_usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Structure de la table `pma_users`
--

CREATE TABLE IF NOT EXISTS `pma_users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Index pour les tables exportées
--

--
-- Index pour la table `pma_bookmark`
--
ALTER TABLE `pma_bookmark`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pma_column_info`
--
ALTER TABLE `pma_column_info`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Index pour la table `pma_designer_coords`
--
ALTER TABLE `pma_designer_coords`
 ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Index pour la table `pma_history`
--
ALTER TABLE `pma_history`
 ADD PRIMARY KEY (`id`), ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Index pour la table `pma_navigationhiding`
--
ALTER TABLE `pma_navigationhiding`
 ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Index pour la table `pma_pdf_pages`
--
ALTER TABLE `pma_pdf_pages`
 ADD PRIMARY KEY (`page_nr`), ADD KEY `db_name` (`db_name`);

--
-- Index pour la table `pma_recent`
--
ALTER TABLE `pma_recent`
 ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma_relation`
--
ALTER TABLE `pma_relation`
 ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`), ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Index pour la table `pma_savedsearches`
--
ALTER TABLE `pma_savedsearches`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Index pour la table `pma_table_coords`
--
ALTER TABLE `pma_table_coords`
 ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Index pour la table `pma_table_info`
--
ALTER TABLE `pma_table_info`
 ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Index pour la table `pma_table_uiprefs`
--
ALTER TABLE `pma_table_uiprefs`
 ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Index pour la table `pma_tracking`
--
ALTER TABLE `pma_tracking`
 ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Index pour la table `pma_userconfig`
--
ALTER TABLE `pma_userconfig`
 ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma_usergroups`
--
ALTER TABLE `pma_usergroups`
 ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Index pour la table `pma_users`
--
ALTER TABLE `pma_users`
 ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `pma_bookmark`
--
ALTER TABLE `pma_bookmark`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `pma_column_info`
--
ALTER TABLE `pma_column_info`
MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT pour la table `pma_history`
--
ALTER TABLE `pma_history`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `pma_pdf_pages`
--
ALTER TABLE `pma_pdf_pages`
MODIFY `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `pma_savedsearches`
--
ALTER TABLE `pma_savedsearches`
MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT;--
-- Base de données :  `test`
--
--
-- Base de données :  `webchuyenhang`
--

-- --------------------------------------------------------

--
-- Structure de la table `account`
--

CREATE TABLE IF NOT EXISTS `account` (
`UserID` int(10) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Loaiaccount` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `account`
--

INSERT INTO `account` (`UserID`, `Username`, `Password`, `Loaiaccount`) VALUES
(3, 'khachhang', '123456789', 3),
(4, 'admin', '123456789', 1),
(5, 'quanlydon', '123456789', 2),
(6, 'chuyenhang', '123456789', 2),
(7, 'tongdai', '123456789', 2);

-- --------------------------------------------------------

--
-- Structure de la table `donhang`
--

CREATE TABLE IF NOT EXISTS `donhang` (
`IDdonhang` int(10) NOT NULL,
  `IDnvchuyenhang` int(10) NOT NULL,
  `IDnvquanlydonhang` int(10) NOT NULL,
  `Ngaytaodonhang` date NOT NULL,
  `Ngayduyetdon` date NOT NULL,
  `Xuly` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `donhang`
--

INSERT INTO `donhang` (`IDdonhang`, `IDnvchuyenhang`, `IDnvquanlydonhang`, `Ngaytaodonhang`, `Ngayduyetdon`, `Xuly`) VALUES
(1, 3, 2, '2017-11-02', '2017-11-03', 1),
(2, 3, 2, '2017-11-11', '2017-11-22', 2),
(3, 3, 2, '2017-11-07', '2017-11-10', 3);

-- --------------------------------------------------------

--
-- Structure de la table `gioitinh`
--

CREATE TABLE IF NOT EXISTS `gioitinh` (
`maloai` int(1) NOT NULL,
  `ten` varchar(10) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `gioitinh`
--

INSERT INTO `gioitinh` (`maloai`, `ten`) VALUES
(1, 'nam'),
(2, 'nữ');

-- --------------------------------------------------------

--
-- Structure de la table `hinhthucchuyen`
--

CREATE TABLE IF NOT EXISTS `hinhthucchuyen` (
`Maloai` tinyint(1) NOT NULL,
  `Tenloai` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `hinhthucchuyen`
--

INSERT INTO `hinhthucchuyen` (`Maloai`, `Tenloai`) VALUES
(1, 'chuyển thường'),
(2, 'chuyển nhanh');

-- --------------------------------------------------------

--
-- Structure de la table `khachhang`
--

CREATE TABLE IF NOT EXISTS `khachhang` (
`IDkh` int(10) NOT NULL,
  `UserID` int(10) NOT NULL,
  `Diachi` varchar(255) NOT NULL,
  `Gioitinh` int(1) NOT NULL,
  `Sdt` int(13) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Tenkh` varchar(100) NOT NULL,
  `Ngaysinh` date NOT NULL,
  `Loaikh` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `khachhang`
--

INSERT INTO `khachhang` (`IDkh`, `UserID`, `Diachi`, `Gioitinh`, `Sdt`, `Email`, `Tenkh`, `Ngaysinh`, `Loaikh`) VALUES
(1, 3, 'abc', 1, 2147483647, 'khachshippershop@gmail.com', 'khachhang', '2017-11-24', 1);

-- --------------------------------------------------------

--
-- Structure de la table `loaiaccount`
--

CREATE TABLE IF NOT EXISTS `loaiaccount` (
`Maloai` int(1) NOT NULL,
  `Tenloai` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `loaiaccount`
--

INSERT INTO `loaiaccount` (`Maloai`, `Tenloai`) VALUES
(1, 'admin'),
(2, 'nhanvien'),
(3, 'khachhang');

-- --------------------------------------------------------

--
-- Structure de la table `loaihang`
--

CREATE TABLE IF NOT EXISTS `loaihang` (
`Maloai` int(1) NOT NULL,
  `Tenhang` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `loaihang`
--

INSERT INTO `loaihang` (`Maloai`, `Tenhang`) VALUES
(1, 'vật phẩm'),
(2, 'cồng kềnh'),
(3, 'số lượng lớn');

-- --------------------------------------------------------

--
-- Structure de la table `loaikh`
--

CREATE TABLE IF NOT EXISTS `loaikh` (
`Maloai` int(1) NOT NULL,
  `Tenloai` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `loaikh`
--

INSERT INTO `loaikh` (`Maloai`, `Tenloai`) VALUES
(1, 'nhỏ lẻ'),
(2, 'hợp đồng');

-- --------------------------------------------------------

--
-- Structure de la table `loainv`
--

CREATE TABLE IF NOT EXISTS `loainv` (
`Maloai` int(1) NOT NULL,
  `Tenloai` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `loainv`
--

INSERT INTO `loainv` (`Maloai`, `Tenloai`) VALUES
(1, 'admin'),
(2, 'quản lý đơn hàng'),
(3, 'nhân viên tổng đài'),
(4, 'nhân viên chuyển hàng');

-- --------------------------------------------------------

--
-- Structure de la table `nhanvien`
--

CREATE TABLE IF NOT EXISTS `nhanvien` (
`IDnv` int(10) NOT NULL,
  `UserID` int(10) NOT NULL,
  `Ten` varchar(100) NOT NULL,
  `Gioitinh` int(1) NOT NULL,
  `Sdt` int(13) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Loainv` int(1) NOT NULL,
  `Ngaysinh` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `nhanvien`
--

INSERT INTO `nhanvien` (`IDnv`, `UserID`, `Ten`, `Gioitinh`, `Sdt`, `Email`, `Loainv`, `Ngaysinh`) VALUES
(1, 4, 'admin', 1, 1234567890, 'adminshippershop@gmail.com', 1, '2017-08-08'),
(2, 5, 'quanlydonhang', 2, 11232654, 'quanlydonhangshippershop@gmail.com', 2, '2017-11-02'),
(3, 6, 'chuyenhang', 1, 2147483647, 'chuyenhangshippershop@gmail.com', 4, '2017-11-06'),
(4, 7, 'tongdai', 2, 2147483647, 'tongdaishippershop@gmail.com', 3, '2017-11-14');

-- --------------------------------------------------------

--
-- Structure de la table `thanhtoan`
--

CREATE TABLE IF NOT EXISTS `thanhtoan` (
`Maloai` int(1) NOT NULL,
  `Tenloai` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `thanhtoan`
--

INSERT INTO `thanhtoan` (`Maloai`, `Tenloai`) VALUES
(1, ''),
(2, '');

-- --------------------------------------------------------

--
-- Structure de la table `thongtindonhang`
--

CREATE TABLE IF NOT EXISTS `thongtindonhang` (
  `IDdonhang` int(10) NOT NULL,
  `Loaihang` int(1) NOT NULL,
  `khoiluong` float NOT NULL,
  `Thuho` float NOT NULL,
  `Hinhthucchuyen` tinyint(1) NOT NULL,
  `Mota` varchar(1000) NOT NULL,
  `Thanhtoan` int(1) NOT NULL,
  `Cuocphi` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `thongtindonhang`
--

INSERT INTO `thongtindonhang` (`IDdonhang`, `Loaihang`, `khoiluong`, `Thuho`, `Hinhthucchuyen`, `Mota`, `Thanhtoan`, `Cuocphi`) VALUES
(1, 2, 3, 3000000, 1, 'abc', 1, 100000);

-- --------------------------------------------------------

--
-- Structure de la table `thongtinnguoinhan`
--

CREATE TABLE IF NOT EXISTS `thongtinnguoinhan` (
  `IDdonhang` int(10) NOT NULL,
  `Ten` varchar(100) NOT NULL,
  `Diachi` varchar(255) NOT NULL,
  `Sdt` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `thongtinnguoinhan`
--

INSERT INTO `thongtinnguoinhan` (`IDdonhang`, `Ten`, `Diachi`, `Sdt`) VALUES
(1, ' người nhận', 'abc', 321654687);

-- --------------------------------------------------------

--
-- Structure de la table `xuly`
--

CREATE TABLE IF NOT EXISTS `xuly` (
`Maloai` int(1) NOT NULL,
  `tenloai` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `xuly`
--

INSERT INTO `xuly` (`Maloai`, `tenloai`) VALUES
(1, 'chưa duyệt'),
(2, 'đã duyệt'),
(3, 'đã thực hiện');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `account`
--
ALTER TABLE `account`
 ADD PRIMARY KEY (`UserID`), ADD KEY `Loaiaccount` (`Loaiaccount`);

--
-- Index pour la table `donhang`
--
ALTER TABLE `donhang`
 ADD PRIMARY KEY (`IDdonhang`), ADD KEY `IDnvchuyenhang` (`IDnvchuyenhang`,`IDnvquanlydonhang`), ADD KEY `Xuly` (`Xuly`);

--
-- Index pour la table `gioitinh`
--
ALTER TABLE `gioitinh`
 ADD PRIMARY KEY (`maloai`);

--
-- Index pour la table `hinhthucchuyen`
--
ALTER TABLE `hinhthucchuyen`
 ADD PRIMARY KEY (`Maloai`);

--
-- Index pour la table `khachhang`
--
ALTER TABLE `khachhang`
 ADD PRIMARY KEY (`IDkh`), ADD KEY `UserID` (`UserID`), ADD KEY `Loaikh` (`Loaikh`), ADD KEY `Gioitinh` (`Gioitinh`);

--
-- Index pour la table `loaiaccount`
--
ALTER TABLE `loaiaccount`
 ADD PRIMARY KEY (`Maloai`);

--
-- Index pour la table `loaihang`
--
ALTER TABLE `loaihang`
 ADD PRIMARY KEY (`Maloai`);

--
-- Index pour la table `loaikh`
--
ALTER TABLE `loaikh`
 ADD PRIMARY KEY (`Maloai`);

--
-- Index pour la table `loainv`
--
ALTER TABLE `loainv`
 ADD PRIMARY KEY (`Maloai`);

--
-- Index pour la table `nhanvien`
--
ALTER TABLE `nhanvien`
 ADD PRIMARY KEY (`IDnv`), ADD KEY `UserID` (`UserID`), ADD KEY `Loainv` (`Loainv`), ADD KEY `Loainv_2` (`Loainv`), ADD KEY `Gioitinh` (`Gioitinh`);

--
-- Index pour la table `thanhtoan`
--
ALTER TABLE `thanhtoan`
 ADD PRIMARY KEY (`Maloai`);

--
-- Index pour la table `thongtindonhang`
--
ALTER TABLE `thongtindonhang`
 ADD KEY `IDdonhang` (`IDdonhang`), ADD KEY `Loaihang` (`Loaihang`), ADD KEY `Hinhthucchuyen` (`Hinhthucchuyen`), ADD KEY `Thanhtoan` (`Thanhtoan`), ADD KEY `Thanhtoan_2` (`Thanhtoan`), ADD KEY `Hinhthucchuyen_2` (`Hinhthucchuyen`), ADD KEY `Thanhtoan_3` (`Thanhtoan`);

--
-- Index pour la table `thongtinnguoinhan`
--
ALTER TABLE `thongtinnguoinhan`
 ADD PRIMARY KEY (`Ten`), ADD KEY `IDdonhang` (`IDdonhang`);

--
-- Index pour la table `xuly`
--
ALTER TABLE `xuly`
 ADD PRIMARY KEY (`Maloai`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `account`
--
ALTER TABLE `account`
MODIFY `UserID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `donhang`
--
ALTER TABLE `donhang`
MODIFY `IDdonhang` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `gioitinh`
--
ALTER TABLE `gioitinh`
MODIFY `maloai` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `hinhthucchuyen`
--
ALTER TABLE `hinhthucchuyen`
MODIFY `Maloai` tinyint(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `khachhang`
--
ALTER TABLE `khachhang`
MODIFY `IDkh` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `loaiaccount`
--
ALTER TABLE `loaiaccount`
MODIFY `Maloai` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `loaihang`
--
ALTER TABLE `loaihang`
MODIFY `Maloai` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `loaikh`
--
ALTER TABLE `loaikh`
MODIFY `Maloai` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `loainv`
--
ALTER TABLE `loainv`
MODIFY `Maloai` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `nhanvien`
--
ALTER TABLE `nhanvien`
MODIFY `IDnv` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `thanhtoan`
--
ALTER TABLE `thanhtoan`
MODIFY `Maloai` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `xuly`
--
ALTER TABLE `xuly`
MODIFY `Maloai` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `account`
--
ALTER TABLE `account`
ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`Loaiaccount`) REFERENCES `loaiaccount` (`Maloai`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `donhang`
--
ALTER TABLE `donhang`
ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`Xuly`) REFERENCES `xuly` (`Maloai`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `khachhang`
--
ALTER TABLE `khachhang`
ADD CONSTRAINT `khachhang_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `account` (`UserID`) ON UPDATE CASCADE,
ADD CONSTRAINT `khachhang_ibfk_2` FOREIGN KEY (`Loaikh`) REFERENCES `loaikh` (`Maloai`) ON UPDATE CASCADE,
ADD CONSTRAINT `khachhang_ibfk_3` FOREIGN KEY (`Gioitinh`) REFERENCES `gioitinh` (`maloai`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `nhanvien`
--
ALTER TABLE `nhanvien`
ADD CONSTRAINT `nhanvien_ibfk_3` FOREIGN KEY (`UserID`) REFERENCES `account` (`UserID`) ON UPDATE CASCADE,
ADD CONSTRAINT `nhanvien_ibfk_4` FOREIGN KEY (`Loainv`) REFERENCES `loainv` (`Maloai`) ON UPDATE CASCADE,
ADD CONSTRAINT `nhanvien_ibfk_5` FOREIGN KEY (`Gioitinh`) REFERENCES `gioitinh` (`maloai`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `thongtindonhang`
--
ALTER TABLE `thongtindonhang`
ADD CONSTRAINT `thongtindonhang_ibfk_1` FOREIGN KEY (`IDdonhang`) REFERENCES `donhang` (`IDdonhang`),
ADD CONSTRAINT `thongtindonhang_ibfk_2` FOREIGN KEY (`Hinhthucchuyen`) REFERENCES `hinhthucchuyen` (`Maloai`) ON UPDATE CASCADE,
ADD CONSTRAINT `thongtindonhang_ibfk_3` FOREIGN KEY (`Thanhtoan`) REFERENCES `thanhtoan` (`Maloai`) ON UPDATE CASCADE,
ADD CONSTRAINT `thongtindonhang_ibfk_4` FOREIGN KEY (`Loaihang`) REFERENCES `loaihang` (`Maloai`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Contraintes pour la table `thongtinnguoinhan`
--
ALTER TABLE `thongtinnguoinhan`
ADD CONSTRAINT `thongtinnguoinhan_ibfk_1` FOREIGN KEY (`IDdonhang`) REFERENCES `donhang` (`IDdonhang`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
