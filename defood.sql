-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jun 2023 pada 12.00
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `defood`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `costumer`
--

CREATE TABLE `costumer` (
  `id_costumer` int(11) UNSIGNED NOT NULL,
  `nama_costumer` varchar(225) NOT NULL,
  `no_tlpn` int(12) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `costumer`
--

INSERT INTO `costumer` (`id_costumer`, `nama_costumer`, `no_tlpn`, `alamat`, `created_at`, `update_at`) VALUES
(1, '宮沢 和也', 90, '4662319  福島県浜田市北区中島町笹田6-7-10 ハイツ廣川109号', '2023-06-11 22:17:12', '2023-06-11 22:17:12'),
(2, '坂本 英樹', 8, '7939665  山梨県佐々木市西区小泉町伊藤1-10-4', '2023-06-11 22:17:12', '2023-06-11 22:17:12'),
(3, '宇野 淳', 80, '8099954  秋田県高橋市南区吉本町渡辺4-5-9', '2023-06-11 22:17:12', '2023-06-11 22:17:12'),
(4, '井高 桃子', 90, '4372702  三重県小林市西区津田町工藤3-8-3 コーポ吉本110号', '2023-06-11 22:17:12', '2023-06-11 22:17:12'),
(5, '斉藤 美加子', 90, '5469014  茨城県小泉市南区笹田町津田5-9-10 ハイツ宮沢102号', '2023-06-11 22:17:12', '2023-06-11 22:17:12'),
(6, '藤本 太郎', 76, '2205289  香川県井上市中央区斉藤町原田10-10-5', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(7, '小泉 里佳', 90, '8184397  静岡県坂本市中央区高橋町浜田4-2-7', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(8, '近藤 里佳', 5596, '1379336  島根県宮沢市中央区井上町鈴木2-5-4', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(9, '吉本 英樹', 80, '8535690  鹿児島県宇野市西区渡辺町青山10-4-7', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(10, '津田 篤司', 500, '6377808  福島県松本市中央区野村町藤本9-1-6 ハイツ吉田102号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(11, '小泉 修平', 28, '5467699  千葉県桐山市東区吉田町桐山6-2-4 ハイツ野村103号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(12, '大垣 健一', 90, '6161531  富山県井上市東区吉田町佐々木4-8-5', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(13, '中村 幹', 80, '4563409  沖縄県吉田市東区佐藤町山口1-4-9', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(14, '加藤 和也', 9, '2239622  栃木県吉田市東区井高町加藤5-5-8 ハイツ井高101号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(15, '木村 くみ子', 2, '6609528  栃木県渡辺市中央区斉藤町田中7-1-10', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(16, '中津川 七夏', 80, '3553205  京都府石田市西区小泉町廣川9-8-10 コーポ吉本107号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(17, '加納 くみ子', 36, '5314455  山梨県山口市中央区佐々木町工藤7-5-5 コーポ吉田106号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(18, '井上 修平', 80, '2137312  岡山県野村市南区中島町渚1-7-1 コーポ加藤106号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(19, '喜嶋 太郎', 5903, '4111054  石川県佐藤市南区加納町廣川1-2-7 コーポ西之園107号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(20, '山田 美加子', 7481, '3424149  栃木県三宅市中央区斉藤町井高10-6-6 ハイツ喜嶋109号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(21, '吉田 結衣', 5, '3309453  高知県坂本市北区加藤町宮沢10-8-4', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(22, '井高 結衣', 7896, '3657015  岐阜県小泉市北区井高町佐藤2-1-2 コーポ大垣101号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(23, '山本 美加子', 970, '7788337  秋田県加納市中央区小林町三宅6-1-6 ハイツ田中108号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(24, '加納 桃子', 58, '1938185  長崎県津田市中央区山岸町小泉2-7-4', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(25, '宇野 桃子', 90, '7378752  静岡県宮沢市南区原田町原田5-10-7', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(26, '山本 涼平', 12, '6752113  佐賀県山本市東区山岸町小泉2-5-5 ハイツ中村109号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(27, '吉本 充', 959, '7066939  京都府坂本市東区宮沢町山田6-7-3 ハイツ宇野109号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(28, '山田 充', 9, '1655365  福井県西之園市中央区坂本町高橋3-7-2 コーポ鈴木105号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(29, '野村 知実', 90, '7127429  富山県山口市中央区村山町青田9-7-8', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(30, '野村 陽一', 8386, '2802763  大分県吉田市西区小林町近藤9-9-6 ハイツ伊藤109号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(31, '近藤 涼平', 9837, '7054785  和歌山県佐藤市北区廣川町西之園7-10-7', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(32, '笹田 拓真', 170, '8902265  愛知県中津川市東区渡辺町佐藤6-9-10', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(33, '渡辺 裕太', 7980, '8166712  岩手県井高市北区山口町田中7-2-2 ハイツ江古田106号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(34, '原田 真綾', 2, '4095679  東京都野村市北区井上町原田1-3-2 コーポ山田102号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(35, '加納 里佳', 0, '5024964  群馬県青田市北区藤本町廣川6-10-9', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(36, '浜田 智也', 200, '5242105  千葉県石田市西区中津川町加藤6-7-6', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(37, '加藤 陽一', 491, '4467928  茨城県田辺市東区伊藤町青山1-10-2', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(38, '若松 直樹', 2, '2189448  富山県杉山市中央区杉山町三宅9-7-2 コーポ吉田108号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(39, '山岸 篤司', 21, '7929585  石川県佐藤市南区杉山町山田5-9-3', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(40, '中島 太一', 80, '2275874  福岡県山口市中央区石田町若松3-9-1 ハイツ宮沢109号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(41, '山本 翼', 240, '6447291  静岡県大垣市中央区工藤町斉藤4-6-8', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(42, '斉藤 零', 658, '2463064  岡山県加納市東区村山町青田8-7-2 コーポ木村102号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(43, '若松 陽一', 250, '9435720  鹿児島県工藤市東区宮沢町吉本8-8-6 コーポ津田109号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(44, '青山 浩', 890, '3852510  東京都佐藤市中央区坂本町原田8-6-1', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(45, '吉本 晃', 134, '7688524  京都府井高市中央区山田町高橋7-5-1 コーポ吉田101号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(46, '小林 裕太', 440, '8783448  沖縄県小林市東区藤本町小林9-9-10 コーポ宮沢109号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(47, '山田 陽子', 1, '5081247  山梨県斉藤市西区佐々木町山田6-2-1 ハイツ渚110号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(48, '桐山 裕美子', 9, '8238261  佐賀県桐山市北区中村町加納7-6-5', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(49, '山本 学', 7, '9677648  山梨県田辺市東区喜嶋町佐藤10-4-3 ハイツ佐藤106号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(50, '野村 里佳', 9825, '9056192  大阪府大垣市西区山岸町山岸9-6-4 ハイツ佐藤102号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(51, '山岸 学', 11, '5567218  青森県桐山市北区三宅町廣川1-5-7 コーポ渚109号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(52, '桐山 知実', 97, '7422804  岩手県石田市西区松本町加納10-3-5', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(53, '小泉 里佳', 478, '7082595  山梨県田中市南区石田町青田1-5-8', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(54, '鈴木 晃', 48, '9047911  山梨県中村市西区野村町加藤1-1-8 コーポ三宅103号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(55, '高橋 晃', 789, '6372841  栃木県加藤市西区原田町笹田3-6-1', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(56, '原田 千代', 90, '4401078  愛媛県高橋市東区井高町津田6-6-5', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(57, '山岸 真綾', 3, '1252629  広島県大垣市中央区近藤町津田1-1-7 コーポ井上108号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(58, '大垣 和也', 9, '1584744  富山県鈴木市西区浜田町田辺2-2-8', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(59, '山田 康弘', 7216, '5336053  山形県中津川市東区鈴木町鈴木2-2-9', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(60, '村山 英樹', 90, '5839296  大阪府木村市西区近藤町浜田8-8-5 ハイツ桐山108号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(61, '山本 美加子', 80, '8945107  京都府中村市南区吉本町原田9-7-5', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(62, '中村 結衣', 540, '3327535  富山県吉田市南区小林町渚2-1-4 コーポ青山103号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(63, '野村 直人', 80, '9379604  北海道木村市南区山岸町原田9-9-6', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(64, '山田 里佳', 80, '1961394  沖縄県江古田市南区山田町小泉4-4-1', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(65, '喜嶋 さゆり', 2039, '6999277  宮城県杉山市南区原田町木村2-4-6', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(66, '西之園 あすか', 2354, '9483133  京都府笹田市西区桐山町木村6-6-4', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(67, '渡辺 直樹', 23, '4688827  三重県宇野市西区中島町桐山10-8-2', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(68, '加納 明美', 80, '6373097  栃木県中村市東区青田町村山1-6-9 コーポ工藤102号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(69, '廣川 幹', 98, '7537272  鹿児島県松本市南区坂本町加納8-9-2 コーポ津田109号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(70, '坂本 加奈', 140, '9485828  京都府西之園市西区井上町中津川8-2-7 コーポ松本110号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(71, '宇野 さゆり', 50, '9439552  熊本県高橋市中央区小林町松本3-1-3 コーポ山本104号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(72, '宮沢 里佳', 660, '4737814  秋田県斉藤市東区廣川町藤本6-6-1 コーポ斉藤101号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(73, '吉本 桃子', 0, '8701165  福井県笹田市西区宮沢町津田8-3-3 ハイツ野村107号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(74, '中島 くみ子', 180, '4667105  徳島県高橋市北区小林町小泉6-3-6 ハイツ佐藤102号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(75, '桐山 康弘', 935, '4639172  鹿児島県渚市北区中島町山口2-5-5', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(76, '石田 淳', 9, '3927808  香川県藤本市北区廣川町藤本6-4-6', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(77, '宮沢 知実', 838, '6305853  千葉県井高市東区江古田町井上1-8-10', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(78, '杉山 充', 5, '6001815  香川県石田市北区近藤町江古田8-1-6', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(79, '加藤 淳', 50, '4462609  広島県小泉市西区桐山町三宅9-5-10 ハイツ近藤101号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(80, '小泉 千代', 80, '6315272  岩手県桐山市東区中島町田辺8-3-3 ハイツ江古田105号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(81, '藤本 明美', 8945, '5208714  長崎県吉本市中央区桐山町藤本6-3-6', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(82, '田中 美加子', 490, '7558781  京都府原田市中央区喜嶋町山岸3-5-6', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(83, '宇野 直樹', 8, '7512668  富山県三宅市中央区加納町松本7-7-4 ハイツ石田101号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(84, '斉藤 明美', 348, '5642085  新潟県浜田市東区斉藤町藤本2-9-2', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(85, '喜嶋 舞', 237, '9077729  福島県坂本市中央区杉山町加納6-10-7 コーポ石田106号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(86, '喜嶋 裕樹', 2628, '5327825  長崎県木村市東区三宅町吉田8-9-9 コーポ山本108号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(87, '斉藤 陽一', 90, '6994663  徳島県江古田市北区浜田町斉藤9-3-2 コーポ山口102号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(88, '山本 千代', 90, '6277753  岐阜県加藤市南区渚町加納4-8-6', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(89, '喜嶋 幹', 53, '8233044  宮城県佐々木市中央区中島町吉本2-2-8 ハイツ渡辺107号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(90, '小林 舞', 5169, '4854797  宮城県田中市北区佐藤町佐藤4-4-7', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(91, '野村 篤司', 270, '9996400  奈良県宮沢市南区山本町廣川5-6-3 ハイツ中島107号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(92, '山口 晃', 699, '9698135  熊本県工藤市西区野村町若松5-8-10 コーポ山口105号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(93, '石田 京助', 880, '4616431  大阪府江古田市中央区中村町木村8-4-2 ハイツ佐々木101号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(94, '笹田 裕樹', 4787, '7248155  福島県杉山市北区渚町中津川8-2-9 コーポ村山102号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(95, '原田 七夏', 6, '6231145  青森県木村市西区小林町加藤5-5-6', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(96, '小林 直子', 90, '3838567  埼玉県野村市西区伊藤町佐々木8-9-6', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(97, '加納 花子', 90, '1891187  栃木県山岸市中央区山田町高橋8-3-10 コーポ山本106号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(98, '原田 香織', 709, '6261927  三重県高橋市北区斉藤町三宅5-5-4', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(99, '渡辺 浩', 420, '3208009  高知県鈴木市中央区鈴木町青田10-7-4 ハイツ野村103号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(100, '鈴木 知実', 770, '9351146  宮城県村山市南区石田町西之園1-2-2', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(101, '浜田 春香', 0, '3407151  京都府津田市北区浜田町西之園5-1-10 ハイツ田辺104号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(102, '佐藤 くみ子', 4387, '8545311  長崎県杉山市西区山田町笹田8-4-9 コーポ村山101号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(103, '山本 翼', 470, '6314029  福井県高橋市中央区笹田町吉本10-5-2 ハイツ斉藤105号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(104, '渚 裕樹', 9, '3163004  滋賀県野村市西区佐々木町野村3-3-6 ハイツ津田102号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(105, '津田 結衣', 80, '9172399  愛媛県桐山市南区中津川町坂本10-1-1', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(106, '廣川 春香', 726, '1446325  秋田県野村市南区大垣町廣川7-8-4 ハイツ鈴木101号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(107, '吉本 修平', 80, '2777685  山口県鈴木市中央区渚町中津川1-7-1', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(108, '石田 英樹', 900, '3823444  三重県井上市南区三宅町青田1-7-9 コーポ青山102号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(109, '中村 健一', 90, '3983657  山梨県若松市東区浜田町中津川8-6-10 コーポ中島104号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(110, '佐々木 裕樹', 850, '9644744  大阪府山本市東区山口町渚10-4-10', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(111, '山田 治', 80, '5357039  宮城県井高市中央区若松町田中4-6-2 ハイツ工藤110号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(112, '三宅 拓真', 9, '3696481  宮城県宇野市東区浜田町工藤9-9-9', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(113, '石田 桃子', 388, '7174156  高知県加藤市東区佐々木町中津川8-8-2 コーポ加納106号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(114, '村山 陽子', 90, '1996585  鳥取県青山市南区吉田町石田7-9-3', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(115, '山岸 裕樹', 80, '6474318  千葉県坂本市北区桐山町吉本2-6-2 ハイツ坂本110号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(116, '小林 晃', 90, '2789070  静岡県佐々木市中央区工藤町高橋2-10-7', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(117, '斉藤 幹', 82, '4412199  秋田県鈴木市南区宇野町田中4-2-10 コーポ渚106号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(118, '井上 裕太', 527, '4558263  三重県青山市東区原田町杉山7-7-3', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(119, '青山 直人', 85, '4637347  鹿児島県加藤市南区小泉町田辺9-6-8', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(120, '山本 篤司', 953, '9708999  宮崎県浜田市北区渡辺町廣川5-9-1 コーポ笹田108号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(121, '江古田 治', 90, '3554076  山口県西之園市南区鈴木町杉山6-1-8 ハイツ原田105号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(122, '坂本 翔太', 470, '1979242  茨城県伊藤市西区中島町加藤9-10-3 コーポ田中108号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(123, '桐山 裕美子', 90, '4522166  広島県中島市南区青山町木村7-1-2 コーポ井高103号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(124, '西之園 直人', 90, '1775595  徳島県宇野市北区村山町山田6-5-8 コーポ小泉101号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(125, '石田 千代', 0, '4125423  青森県廣川市中央区村山町若松1-7-5', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(126, '小林 あすか', 9, '4425211  熊本県斉藤市南区田辺町村山1-6-6 コーポ中津川109号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(127, '村山 桃子', 550, '9572811  長野県鈴木市中央区西之園町野村4-10-8 ハイツ宇野105号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(128, '佐々木 裕美子', 5316, '8103560  富山県浜田市北区野村町吉本3-7-8 コーポ山田108号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(129, '山岸 明美', 9, '8538058  山形県吉本市北区田辺町山本10-10-3 ハイツ中村105号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(130, '加藤 陽子', 255, '4599410  秋田県加納市西区吉本町佐々木8-5-10', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(131, '佐藤 治', 210, '1892168  京都府近藤市西区宮沢町青田6-7-3 コーポ田辺104号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(132, '村山 千代', 290, '2477446  宮城県浜田市中央区原田町津田4-8-4', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(133, '渡辺 治', 90, '4335687  栃木県佐藤市南区工藤町渚1-3-7', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(134, '鈴木 裕樹', 8, '1499923  兵庫県佐藤市中央区喜嶋町宇野2-1-8', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(135, '渡辺 加奈', 0, '5696411  群馬県田辺市南区宮沢町小泉1-4-5', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(136, '小林 淳', 4107, '7833076  福岡県鈴木市南区渡辺町若松8-5-9', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(137, '原田 裕樹', 4, '2273115  広島県松本市東区桐山町笹田5-3-4', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(138, '大垣 千代', 80, '8265944  北海道松本市北区津田町近藤5-4-6 コーポ加藤108号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(139, '江古田 桃子', 80, '2141985  静岡県高橋市中央区中村町工藤3-2-3', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(140, '山田 学', 967, '8504607  埼玉県杉山市北区渡辺町村山6-9-3 ハイツ西之園102号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(141, '杉山 陽一', 30, '7356142  宮崎県廣川市西区津田町野村7-5-9 ハイツ桐山101号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(142, '江古田 くみ子', 460, '7636492  滋賀県工藤市中央区山本町宇野10-6-10 コーポ石田104号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(143, '三宅 智也', 80, '9299232  宮城県中村市南区坂本町高橋1-7-3 コーポ山本108号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(144, '吉田 淳', 5, '2905557  三重県松本市北区井高町近藤3-5-4', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(145, '加納 太一', 964, '9126107  大阪府西之園市西区青田町小泉3-9-7 コーポ原田103号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(146, '佐々木 治', 598, '2605910  富山県伊藤市南区小泉町佐藤8-8-9', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(147, '近藤 千代', 90, '9456739  新潟県喜嶋市中央区山口町石田7-10-3', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(148, '吉本 千代', 72, '3289859  福井県中村市北区江古田町吉田2-4-5 ハイツ井高107号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(149, '小林 太郎', 450, '8106388  奈良県工藤市東区小泉町西之園2-3-8', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(150, '井高 涼平', 150, '8567220  長崎県青田市東区桐山町坂本7-6-3 ハイツ工藤108号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(151, '佐藤 幹', 360, '4052743  大阪府田中市中央区工藤町山岸10-6-2 ハイツ桐山101号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(152, '小林 智也', 3150, '9573623  栃木県原田市東区三宅町山岸3-7-3 コーポ三宅107号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(153, '江古田 裕太', 1892, '8188921  栃木県松本市北区木村町藤本4-1-2', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(154, '宇野 春香', 90, '2625297  群馬県村山市西区鈴木町佐藤4-8-6 ハイツ井高101号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(155, '山田 直子', 417, '7317998  岡山県吉本市南区井高町原田3-5-6 ハイツ加納107号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(156, '渚 晃', 651, '3313623  三重県三宅市西区坂本町中津川6-5-4', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(157, '加藤 陽一', 3079, '9516064  宮城県近藤市中央区野村町鈴木1-6-5 コーポ田辺103号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(158, '松本 美加子', 6, '2742583  神奈川県石田市西区坂本町坂本5-5-5', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(159, '渡辺 陽子', 80, '2404676  愛媛県小泉市北区渡辺町原田7-10-1', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(160, '高橋 直子', 90, '2359830  東京都佐藤市北区伊藤町斉藤4-4-1 ハイツ佐々木101号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(161, '近藤 聡太郎', 7, '6443498  埼玉県中村市中央区大垣町津田6-8-5 ハイツ山口110号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(162, '青山 修平', 179, '1935570  神奈川県渡辺市中央区青山町小泉2-10-4 ハイツ渡辺107号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(163, '高橋 篤司', 270, '4685890  岩手県江古田市南区村山町浜田7-2-6', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(164, '藤本 花子', 90, '3451172  鹿児島県高橋市中央区渚町小泉7-3-8', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(165, '井高 直子', 2330, '4193081  福井県佐藤市東区吉田町高橋3-7-10 ハイツ小泉107号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(166, '西之園 舞', 513, '7836166  宮崎県工藤市東区山岸町三宅4-6-6', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(167, '西之園 涼平', 940, '1309614  大阪府大垣市中央区桐山町佐々木9-10-3 コーポ渡辺101号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(168, '青山 零', 80, '4008985  徳島県三宅市北区坂本町宮沢10-1-7', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(169, '三宅 亮介', 80, '1744995  石川県田辺市中央区山本町伊藤9-3-5', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(170, '木村 英樹', 625, '5368855  神奈川県喜嶋市南区石田町工藤8-4-6 コーポ木村108号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(171, '原田 直樹', 9, '6953152  山形県井高市西区中村町山田4-4-8 コーポ田中110号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(172, '津田 春香', 90, '9284357  山口県廣川市北区廣川町喜嶋2-8-5', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(173, '田辺 拓真', 868, '5958320  和歌山県鈴木市東区田中町野村2-5-3', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(174, '工藤 知実', 7934, '2581458  滋賀県小林市西区山本町笹田1-5-9', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(175, '木村 治', 90, '8756949  愛知県石田市北区若松町宮沢9-2-10', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(176, '山田 結衣', 6356, '6836986  徳島県小林市北区伊藤町伊藤2-1-3', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(177, '桐山 太一', 320, '4258678  三重県田中市北区杉山町青田6-7-5', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(178, '伊藤 陽子', 6, '4212438  岡山県宮沢市東区藤本町野村6-4-2', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(179, '石田 真綾', 80, '7811947  大阪府山口市東区山岸町鈴木5-10-4', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(180, '伊藤 くみ子', 142, '7994352  奈良県青山市中央区山本町廣川3-10-5', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(181, '木村 舞', 2470, '8048013  岩手県青田市中央区伊藤町大垣4-8-5 コーポ原田103号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(182, '山本 学', 90, '1925141  福井県村山市東区桐山町田辺6-7-2', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(183, '山岸 結衣', 7107, '5873663  千葉県佐々木市東区喜嶋町伊藤6-7-2', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(184, '渚 あすか', 820, '4581501  青森県吉田市西区松本町津田3-9-2 コーポ吉本102号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(185, '中津川 充', 90, '1172629  滋賀県加藤市北区山口町中島1-10-3 ハイツ三宅107号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(186, '渡辺 春香', 80, '5541141  福岡県渚市西区中津川町伊藤1-5-7', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(187, '山口 京助', 5, '9478574  福井県野村市南区宮沢町原田1-2-6', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(188, '江古田 結衣', 6, '1169167  福井県山本市中央区山岸町工藤10-8-9 ハイツ近藤103号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(189, '加藤 直樹', 8379, '1183484  秋田県藤本市西区三宅町青山8-5-2 コーポ青田103号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(190, '青田 浩', 9, '7221610  島根県木村市西区小林町佐々木2-2-5 コーポ野村110号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(191, '木村 明美', 90, '5769891  滋賀県小林市西区杉山町喜嶋10-4-3 コーポ山岸108号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(192, '井高 篤司', 2, '6939225  埼玉県桐山市東区青山町鈴木1-10-5 ハイツ津田109号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(193, '山本 篤司', 128, '8837057  岩手県木村市北区宇野町中津川3-1-10', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(194, '杉山 健一', 4, '6419464  愛媛県伊藤市西区佐々木町伊藤7-3-4', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(195, '小林 陽子', 8, '9363287  千葉県青田市東区浜田町青田2-3-2 ハイツ吉本102号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(196, '山田 結衣', 30, '1209059  神奈川県佐々木市中央区山岸町井高10-1-4', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(197, '山岸 裕美子', 80, '3049472  大阪府喜嶋市北区渚町佐々木6-8-6 コーポ津田110号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(198, '田中 里佳', 20, '9797032  長崎県佐々木市中央区渚町松本1-7-9 ハイツ小泉104号', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(199, '小泉 幹', 4, '9876966  宮城県坂本市北区小林町吉本8-4-10', '2023-06-11 22:17:13', '2023-06-11 22:17:13'),
(200, '浜田 陽子', 80, '4221730  山形県坂本市東区石田町桐山2-6-7 コーポ三宅102号', '2023-06-11 22:17:13', '2023-06-11 22:17:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `drink`
--

CREATE TABLE `drink` (
  `id_drink` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` varchar(200) NOT NULL,
  `sampul` varchar(200) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `drink`
--

INSERT INTO `drink` (`id_drink`, `nama`, `harga`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Green Tea', '15000', 'greenTea.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hamburger`
--

CREATE TABLE `hamburger` (
  `id_hamburger` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `harga` varchar(200) NOT NULL,
  `sampul` varchar(200) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hamburger`
--

INSERT INTO `hamburger` (`id_hamburger`, `nama`, `harga`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'abc', '70000', 'b.jpg', '2023-06-14 03:47:11', '2023-06-14 03:47:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2023-06-11-185751', 'App\\Database\\Migrations\\Costumer', 'default', 'App', 1686511141, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pizza`
--

CREATE TABLE `pizza` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `harga` varchar(200) NOT NULL,
  `sampul` varchar(200) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pizza`
--

INSERT INTO `pizza` (`id`, `nama`, `harga`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'capricciosa', '90000', 'margheritaPizza.png', NULL, NULL),
(2, 'hawaiian', '65000', 'hawaiian.png', NULL, NULL),
(9, 'meat lovers', '70000', 'meatLovers.png', NULL, NULL),
(12, 'bbqchiken', '50000', 'bbqChicken.png', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `costumer`
--
ALTER TABLE `costumer`
  ADD PRIMARY KEY (`id_costumer`);

--
-- Indeks untuk tabel `drink`
--
ALTER TABLE `drink`
  ADD PRIMARY KEY (`id_drink`);

--
-- Indeks untuk tabel `hamburger`
--
ALTER TABLE `hamburger`
  ADD PRIMARY KEY (`id_hamburger`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pizza`
--
ALTER TABLE `pizza`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `costumer`
--
ALTER TABLE `costumer`
  MODIFY `id_costumer` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT untuk tabel `drink`
--
ALTER TABLE `drink`
  MODIFY `id_drink` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `hamburger`
--
ALTER TABLE `hamburger`
  MODIFY `id_hamburger` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pizza`
--
ALTER TABLE `pizza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
