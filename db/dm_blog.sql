-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 23, 2022 at 07:52 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dm_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2022-01-16 06:28:56', '2022-01-16 06:28:56'),
(2, 'Web Design', 'web-design', '2022-01-16 06:28:56', '2022-01-16 06:28:56'),
(3, 'Personal', 'personal', '2022-01-16 06:28:56', '2022-01-16 06:28:56'),
(5, 'Cloud Computing', 'cloud-computing', '2022-01-20 20:09:19', '2022-01-22 06:31:07'),
(7, 'Software Developer', 'software-developer', '2022-01-23 00:30:36', '2022-01-23 00:31:01');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_01_074207_create_posts_table', 1),
(6, '2022_01_03_064010_create_categories_table', 1),
(7, '2022_01_20_040905_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Adipisci enim inventore et placeat consequatur dolorum.', 'nihil-hic-qui-aliquid-consequatur', NULL, 'Velit optio beatae consequuntur minima accusantium. Sit sit in voluptatum in nostrum natus. Sed dolores cupiditate minus. Reiciendis rerum eos ipsum itaque. Consequatur laborum sunt voluptatem officia dolores suscipit facere.', '<p>Vitae porro est dolor eos. Dignissimos eum qui incidunt placeat pariatur repudiandae. Sit laborum eligendi qui eos officia dolores. Voluptatum ea magnam nisi aut unde.</p><p>Placeat nisi repellendus at eius. Quia excepturi veritatis blanditiis vitae. Aut voluptate iste similique aut quia eaque iusto.</p><p>Nulla corrupti eius voluptate tenetur assumenda. Consequatur eos qui nam ullam magnam necessitatibus unde. Consequatur vel voluptatem ut ut ut dolorem.</p><p>Provident error quis voluptatem officiis saepe qui incidunt. Sunt impedit rerum vitae non molestiae ea praesentium. Iure eveniet accusamus rerum nostrum non. Nostrum cum labore delectus voluptate nihil ex.</p><p>Quod rerum consequatur reprehenderit temporibus minus et assumenda. Adipisci aut praesentium omnis esse vel commodi repudiandae corporis.</p><p>Velit ut odit eum ut rerum quam facere sint. Voluptatibus ipsum rem laboriosam adipisci. Molestiae id distinctio magnam sapiente.</p><p>Sit voluptatem est odit. Autem magni saepe et rem nihil ut. Dolorem veniam laborum architecto cumque. Minus quo amet asperiores praesentium officiis aut tempora. Blanditiis laudantium vero aperiam voluptatem.</p>', NULL, '2022-01-16 06:28:56', '2022-01-16 06:28:56'),
(2, 2, 1, 'Voluptatum illum iure autem sunt eveniet molestias.', 'distinctio-ea-veritatis-aut-rem-eveniet-fugiat-autem', NULL, 'Nulla magnam voluptatibus eos et ipsam labore quis. A minima velit sed expedita maiores dolorem. Ab inventore rerum sunt quis.', '<p>Modi sint laborum veniam ut alias. Qui enim quaerat est dolorum. Nam doloremque enim iure culpa. Enim qui earum asperiores qui consequuntur ad.</p><p>Modi non in ullam ullam doloribus consequatur aut cum. Qui iure ut omnis est ipsam. Et voluptas eligendi porro aliquam recusandae iusto qui.</p><p>Dignissimos fugiat sit quas perferendis ut voluptate ut. Voluptas ut quia est quisquam et et. Dolores libero minus ducimus autem cumque dolore.</p><p>Vel alias nam expedita. Porro suscipit ducimus quibusdam exercitationem qui qui esse. Aut similique veritatis laborum sit ipsam.</p><p>Ut saepe cum autem id nostrum qui suscipit aliquam. Natus necessitatibus quis exercitationem eum. Beatae facere adipisci repudiandae minima sunt aperiam. Omnis at omnis incidunt quos incidunt velit exercitationem ut.</p><p>Facere ratione quia voluptatem rem adipisci. Voluptatem omnis unde dolores quaerat culpa. Voluptatem eum est et quasi illo. Alias officia nisi quo similique laboriosam explicabo reprehenderit.</p><p>Et aut provident quia commodi facilis voluptas. Labore molestiae et numquam praesentium. Nihil voluptas ipsam fugit iste in unde in.</p><p>Illo nobis hic laborum qui rerum dignissimos quaerat consequatur. Odit asperiores hic minima maxime minima. Occaecati est consectetur et dolor eius sed voluptatem.</p>', NULL, '2022-01-16 06:28:56', '2022-01-16 06:28:56'),
(3, 1, 1, 'Dicta impedit eum blanditiis ad aut.', 'cumque-assumenda-quos-dolores-ullam-nihil', NULL, 'Autem soluta totam ex qui dolorum pariatur. Quis modi dolore expedita et quia officiis quia. Voluptatum omnis accusamus quaerat exercitationem labore. Libero cum officiis est quia.', '<p>Odio ut dolores qui incidunt. Placeat quia numquam voluptas distinctio. Perspiciatis pariatur illum assumenda esse. Eos at provident molestiae et.</p><p>Veniam vitae velit vitae eos molestias vel. Veritatis aperiam recusandae qui dolore iste officiis facilis in. Eius aliquid aut ab voluptatem nihil voluptatem temporibus. Et odio nihil totam ipsa suscipit qui.</p><p>Similique earum quisquam quia quas error. Quia error inventore maxime vitae unde. Quis molestias dolor sit quas vel. Voluptatem iure quos accusamus tempora.</p><p>Ut commodi ipsa sit aut quos aut vitae. Quam dolorum sed reiciendis in laborum iste sint occaecati. Tempore quibusdam laudantium saepe maiores consequatur. Molestiae molestiae beatae et ut animi alias ut.</p><p>Doloribus vel minima est. Omnis hic tenetur excepturi magni iusto sint. Maxime minus aut est nostrum et non amet.</p><p>Iste voluptatem quis incidunt aliquam. Odio molestiae ipsam incidunt nesciunt. Eos voluptatibus blanditiis molestiae.</p><p>Iure sit explicabo minus sapiente odio et labore. Dolorem fugit fuga nulla placeat sequi eius. Sunt voluptatibus quaerat temporibus minus sit ea saepe architecto. Reprehenderit dolor doloribus aut atque harum.</p>', NULL, '2022-01-16 06:28:56', '2022-01-16 06:28:56'),
(4, 2, 1, 'Sint earum.', 'quidem-minus-rerum-nihil-eum-aut-dolorem', NULL, 'Vel nisi iste quia. Occaecati facere repellendus dolores recusandae. Est ex aut voluptatem quae autem accusamus voluptatem. Quia aut cum consequuntur consequatur. Velit dignissimos ut nesciunt est harum.', '<p>Porro enim est qui. Nobis pariatur reiciendis et consequuntur tempore. Quia deserunt molestiae numquam. Qui consequatur quidem aliquam.</p><p>Sit ratione qui reprehenderit at incidunt accusantium delectus. Enim iste autem voluptatibus labore rerum. Vel laborum reprehenderit suscipit porro quod impedit provident. Animi aut numquam qui laudantium placeat reprehenderit dolorem.</p><p>Eius illum ratione quaerat sapiente iste nulla quo. Accusamus laborum mollitia aut iste fugit. Eveniet ut aut aliquid autem quas labore. Labore voluptate modi nulla qui natus ut.</p><p>Corrupti voluptatem at omnis nam aperiam. Quia harum numquam quam rerum. Et vel quisquam dolorum saepe illum. Aliquam alias nihil velit iure itaque.</p><p>Facilis doloribus repellendus sed qui quia. Architecto est dolorem et quos voluptatem veniam molestiae. Ut vel enim rerum voluptate iusto dolor.</p><p>Quo culpa soluta sequi facilis. Dicta quis pariatur aut mollitia voluptas ducimus. Ad aliquid impedit sit. Ipsum eos aut dolor.</p><p>Dolorum et consequatur illum. Architecto aut magnam sit officiis repellat exercitationem. Soluta ducimus harum quam ea quaerat assumenda.</p>', NULL, '2022-01-16 06:28:56', '2022-01-16 06:28:56'),
(5, 1, 3, 'Sit quae.', 'facilis-pariatur-quisquam-dolores-officia', NULL, 'Qui alias aut consequatur laborum distinctio. Consequuntur dolorem illum hic quisquam sit. Rerum voluptatum quasi ut omnis sit.', '<p>Corrupti rerum ea repellendus adipisci corrupti et quae. Id voluptatem molestiae quia at distinctio.</p><p>Autem ratione earum et velit. Eius voluptates incidunt quisquam architecto et. Ipsum aut aut velit enim quis sint.</p><p>Voluptatem suscipit maiores minus natus doloremque aspernatur dicta. Dolor eum voluptatibus placeat soluta ea. Enim rem nihil deleniti corporis quod. Voluptatem sit numquam quos et aut.</p><p>Voluptatem adipisci dicta a ut et. At excepturi aut quis ut qui. Officiis non non explicabo quae. Pariatur dolor labore amet id nemo.</p><p>Eligendi sunt eum qui vitae distinctio incidunt et perferendis. Quo similique excepturi voluptas culpa facilis rerum est. Provident laboriosam consequuntur perferendis. Nesciunt cupiditate sint delectus dolores reiciendis hic.</p><p>Sit ut eos et rerum maxime. Quidem et possimus rerum qui ea. Architecto et non ut esse voluptatem ipsam ducimus illum.</p><p>Quasi saepe ullam saepe explicabo. Sunt dolorem sequi cumque iste. Maxime est dolor et asperiores rerum officia sequi. Eos et assumenda non nihil ea.</p><p>Earum sit provident dignissimos voluptatum. Repellendus quidem dicta aut a fugit dolore veniam. Laboriosam eaque qui quia ullam asperiores.</p><p>Dicta aut pariatur quia voluptatem consequatur. Nam architecto alias neque nesciunt. Placeat quo odit accusantium modi ad sint veniam.</p><p>Pariatur exercitationem non veritatis. Autem voluptatem quo dolore suscipit veritatis. Quo consectetur dolorem temporibus enim ducimus.</p>', NULL, '2022-01-16 06:28:56', '2022-01-16 06:28:56'),
(6, 2, 1, 'Est quo.', 'natus-quis-voluptas-aliquam-ut', NULL, 'Et qui modi quisquam consequatur laborum. Laudantium voluptas voluptatum laborum perspiciatis id perferendis repellendus modi. Explicabo eveniet blanditiis architecto consequatur provident aut corporis.', '<p>Quia amet rerum nobis molestias ut. Saepe veritatis qui cumque error quia. Magnam laudantium itaque enim optio blanditiis recusandae.</p><p>Est quisquam aut natus debitis praesentium harum. Nam quam unde tempore earum dolorum labore. Aspernatur rerum saepe assumenda sed nesciunt repellat.</p><p>Quos sit excepturi voluptas ratione vel labore. Voluptate expedita qui magni vel perspiciatis esse eum vero. Consequatur assumenda ex et molestiae.</p><p>Eos pariatur maiores ea recusandae qui corrupti in. Quasi aut beatae inventore illo. Sunt vel saepe laudantium quia aspernatur alias.</p><p>Eaque mollitia quo maiores et quisquam. Velit iure ratione aliquid quia eos officiis. Enim itaque aut maiores alias.</p><p>Culpa nihil perferendis est dolorem. Ut corrupti voluptate sequi et. Nihil ea qui pariatur qui. Id beatae temporibus aperiam sunt ut.</p><p>Aut natus saepe et nisi corrupti et voluptate. Et minus nihil laboriosam perferendis dolor sed. Doloremque molestiae eum cupiditate at.</p><p>Animi qui dolor odio qui. Iure accusamus eligendi eum. Ut aperiam tenetur ut nostrum et soluta ea. Minima veritatis provident voluptates laboriosam fugit.</p>', NULL, '2022-01-16 06:28:56', '2022-01-16 06:28:56'),
(7, 2, 3, 'Harum rerum possimus nam.', 'sequi-beatae-aut-sint-amet-aspernatur-est', NULL, 'Voluptatem rerum blanditiis beatae optio. Et optio quo qui et aliquid laudantium sunt. Libero sunt magni delectus non quia earum id.', '<p>Laudantium quia eveniet eligendi. Quo eveniet aut fuga et nostrum hic. Quo consequatur qui ad incidunt consequatur. Aperiam consequatur ab deleniti cupiditate aut.</p><p>Alias animi vel voluptatum voluptates nihil. Laboriosam eaque quisquam corporis repudiandae ipsum. Doloribus ad minima autem saepe.</p><p>Enim veniam dolor voluptas laborum fugiat necessitatibus. Aperiam quia hic ut ea dolor et. Itaque qui quia alias deserunt.</p><p>Eius non enim dolorum. In maxime qui fuga similique est sint ut. Optio quis et natus occaecati. Minima qui facilis dolorem quisquam aut officiis dolor.</p><p>Reiciendis sunt omnis sit qui. Iste et quaerat sed ullam hic officia. Sit sed ipsum fuga in doloremque libero. Dolor rem id omnis voluptatem quia aut sed voluptatem.</p><p>Magnam velit qui vel occaecati et optio unde. Mollitia voluptatem soluta perspiciatis et in nihil nulla. Molestiae nostrum sit et deleniti adipisci.</p><p>Pariatur qui enim tempore dolores. Natus voluptates non nemo in occaecati cupiditate voluptates. Voluptas sit tempora et magnam quas facere et. Iure ratione commodi non maxime.</p><p>Enim sunt nisi iure perferendis voluptas. Earum sapiente architecto et exercitationem cupiditate quidem voluptas. Nesciunt nemo totam commodi recusandae doloremque qui. Eius sunt numquam magni ut veniam iusto.</p>', NULL, '2022-01-16 06:28:56', '2022-01-16 06:28:56'),
(8, 1, 1, 'Autem aut deleniti ut perspiciatis.', 'dolor-fugit-neque-perferendis-modi-dignissimos-et', NULL, 'Enim nihil dolores sit. Dolor id id rerum excepturi earum.', '<p>Ut magni porro corporis mollitia aliquam ut. Sed aperiam modi aut autem natus aut sed. Non omnis eaque natus vel et. Blanditiis voluptates tempora ut ab itaque et.</p><p>Quibusdam autem provident qui iure distinctio. Error cumque tenetur qui voluptatibus animi cumque eligendi rerum. In minima nobis inventore. Dolorem rerum sit maiores quo odit.</p><p>Quidem beatae vero sunt excepturi animi maiores. Rerum nihil aut exercitationem fugiat repellendus eos nesciunt quos. Vel ut ab odit accusamus et omnis voluptatem. Voluptas quos cum est inventore maiores iste.</p><p>Facere ut alias nulla non assumenda sed quisquam. Autem impedit voluptates fugit quas aspernatur sequi.</p><p>Accusantium sint consequatur enim optio et suscipit. Quae qui sint nihil dolor exercitationem. Consequatur ea possimus quisquam veniam. Vero eum et corrupti.</p><p>Dolore culpa voluptatem qui porro optio est. Veritatis commodi sed maiores ipsum veniam. Sed voluptate saepe dolore omnis eos. Ipsa modi quo totam ut sequi.</p><p>Esse ut sed cupiditate non laudantium necessitatibus. Eligendi veniam sed consequuntur ut libero. Minus doloribus ut eum natus iste laboriosam atque quo. Ex rerum tenetur harum expedita rerum facere fuga aliquid.</p>', NULL, '2022-01-16 06:28:56', '2022-01-16 06:28:56'),
(9, 1, 1, 'Deleniti voluptate rerum eius est illum.', 'quaerat-molestias-asperiores-deleniti-incidunt', NULL, 'Fuga minima sint cumque voluptatem amet iste ipsa. Mollitia qui officiis neque sit. Error a corporis ex omnis laboriosam. Fuga eos et qui perspiciatis sint ratione.', '<p>Ut cumque vel nam sed omnis vero labore. Enim harum et non velit. Placeat quibusdam quia rem dolorem rerum cumque rerum. Et autem magni id qui qui qui atque. Non nostrum voluptatem aut et sed.</p><p>Nam aut facere similique tempora quidem. Aliquid quae animi occaecati in totam voluptas ea. Eum voluptatibus molestiae sequi dolorem.</p><p>Voluptatem debitis rem aut amet doloribus. Qui dolor recusandae voluptatem doloremque et rerum enim. Dolorum tenetur quisquam sed aut dolores temporibus. Veritatis est quibusdam temporibus quia quia doloremque aut.</p><p>Voluptatem voluptatem ea occaecati non eligendi. Cum accusamus consectetur ipsa voluptatem et. Itaque voluptatem tempora dolor dolor.</p><p>Consequuntur odio quaerat omnis qui qui dicta. Aperiam voluptas quia totam provident laboriosam enim dolorem. Quae architecto corrupti consequatur quia fuga quae iusto.</p><p>Necessitatibus aut nemo hic mollitia qui et voluptas. Omnis dolore esse harum minus veniam quia deserunt. Aut atque esse doloremque vel alias molestias iusto est.</p>', NULL, '2022-01-16 06:28:56', '2022-01-16 06:28:56'),
(10, 2, 3, 'Provident et.', 'animi-et-est-minus-dicta-sit', NULL, 'Qui corporis perferendis aliquam expedita aut quia. Quas tempore voluptatibus deleniti. Veritatis laudantium esse nihil dolor quas distinctio est. Laudantium itaque necessitatibus quibusdam architecto tempora itaque a qui.', '<p>Expedita consequatur velit et eaque sit. Reprehenderit qui eum accusantium quo. Facere excepturi aliquid cupiditate facere. Dolores minima voluptatum occaecati expedita omnis praesentium.</p><p>A aut corrupti qui enim et. In inventore voluptate ut fugiat voluptate eos. Saepe ut voluptate vel autem ut.</p><p>Earum quo animi non molestiae. Aut qui et praesentium eum. Et explicabo harum culpa. Provident voluptatem necessitatibus sit dignissimos.</p><p>Quis sunt aliquam ipsum porro ipsa facilis autem. Sit voluptas minus aut optio officiis veritatis. Unde beatae sed ratione quae similique. Ut unde est consectetur velit id sapiente et.</p><p>Laudantium eaque corrupti velit error id. Qui amet repellat dolor cupiditate recusandae placeat facilis. Velit quas impedit exercitationem dolores laborum ut et.</p><p>Magni repellat vel et ut repudiandae. Libero numquam doloribus fugit accusantium. Nostrum ipsa praesentium odio totam est.</p><p>Totam inventore incidunt assumenda voluptates eos aut. Nulla vero non aut ea. Iusto sit quia placeat ratione aperiam.</p><p>Nihil dolorum et totam. Dolorem sit in quia in culpa ab. Placeat et commodi non. Eos culpa consectetur et enim fuga totam.</p>', NULL, '2022-01-16 06:28:56', '2022-01-16 06:28:56'),
(11, 2, 3, 'Eveniet qui.', 'dolorem-quaerat-autem-qui-cumque-beatae-voluptatem', NULL, 'Dignissimos magnam vitae voluptatem tempora recusandae et nihil et. Aut et corporis eveniet enim beatae. Occaecati ipsum excepturi quis quia enim. Sit a eos incidunt. At maiores consequatur incidunt nostrum explicabo.', '<p>Voluptas tempora quod sapiente labore sunt maxime ut error. Sit placeat ut sapiente consequuntur amet dicta vero. Voluptatum ut accusamus quis provident est. Veritatis tenetur officia voluptas error necessitatibus ullam.</p><p>Sapiente unde adipisci sunt sequi qui est. Nostrum sit quisquam soluta qui nihil rem quas. Voluptas saepe provident atque quis. Repellendus voluptatem placeat reprehenderit pariatur voluptas alias.</p><p>Hic nostrum blanditiis corporis cum. Fuga possimus dolores quas fugit nemo. Neque temporibus culpa odit.</p><p>Atque eum reiciendis occaecati. Ab aspernatur asperiores maxime repellat repellat.</p><p>Eligendi illo sit dolores velit. Vero quam ratione nam autem occaecati. Voluptas facilis minus architecto non modi est dolores illum.</p><p>Fugit nobis qui voluptatem doloribus ea et. Est incidunt iusto ullam sed quae ad recusandae. Sapiente dolorem quasi minus voluptatem.</p><p>Quis praesentium tempora ea esse quia eaque nesciunt. In aut quia aliquam et. Provident velit porro sit hic necessitatibus nulla. Enim repellendus et eum veniam vel.</p><p>Quaerat animi ipsum quos maiores dolor ut dolores. Qui corrupti adipisci ea. Consequatur doloremque alias dolor mollitia. Est praesentium voluptatem minima.</p><p>Rerum porro mollitia necessitatibus. Modi est ex saepe architecto. Voluptates nesciunt nihil quasi temporibus cumque.</p><p>Culpa explicabo blanditiis eos fuga perspiciatis. Nihil unde architecto odit accusamus error deleniti. Qui temporibus veritatis soluta consectetur laboriosam. Illo placeat alias provident magni.</p>', NULL, '2022-01-16 06:28:56', '2022-01-16 06:28:56'),
(12, 2, 2, 'Ab omnis voluptatem.', 'et-ut-aut-enim-libero-sed', NULL, 'Laborum nesciunt sint quo. Debitis tempore voluptas sit aut placeat eos. In quas et consequatur in aut reprehenderit. Doloremque qui autem dolore illo quam excepturi officiis doloremque.', '<p>Enim omnis incidunt nihil sint exercitationem. Labore rem est accusantium autem laudantium cumque. Blanditiis aut adipisci quas necessitatibus id excepturi. Hic commodi occaecati at et culpa est eaque. Beatae quas cumque autem.</p><p>Consequatur veritatis enim consectetur nostrum labore omnis est expedita. Et corporis odio aut quasi eos accusantium earum. Laboriosam quo consequatur recusandae et. Aut fuga aliquid amet aut dicta omnis. Eum vel tempora sed aut omnis quia.</p><p>Vel velit veritatis dolorum consequatur assumenda velit corporis iste. Voluptatem et tempora quia quis porro reiciendis. Distinctio quis ut dicta praesentium ea rerum. Qui dolore ratione porro hic at consectetur nisi. Vel eum porro dignissimos vel praesentium.</p><p>Illum quia delectus impedit sint facilis deleniti quibusdam. Odio in quas quod quia ab accusantium.</p><p>Consequatur sunt vero est in assumenda ratione et. Quasi vitae dolores autem et omnis. Saepe minima eius corrupti quasi.</p><p>Nisi sapiente animi fugiat modi itaque voluptas itaque ex. Error expedita beatae sed deleniti corrupti sit. Maiores cumque nihil laboriosam sed odit.</p>', NULL, '2022-01-16 06:28:56', '2022-01-16 06:28:56'),
(13, 1, 3, 'Sapiente ullam quae.', 'necessitatibus-ipsa-repellendus-enim-ut-pariatur-et', NULL, 'Pariatur repudiandae sint eos quia tempore est numquam aliquid. Facere enim nisi delectus expedita quia dolores. Iusto necessitatibus consequatur voluptatem. Error quos omnis ut nemo qui ut animi. Quia vel deserunt animi et.', '<p>Rem est vitae earum beatae id in. Aut blanditiis mollitia molestiae nesciunt sed sapiente non reiciendis. Soluta porro reprehenderit enim non et in distinctio provident. Voluptas aut quasi ut saepe. Officiis tempora iure minima earum consequatur voluptas.</p><p>Illum suscipit et quibusdam soluta. Fugiat rem ut voluptas.</p><p>Sed ut molestiae est minima id voluptatibus qui non. Et omnis aut quia. Quaerat eos tenetur odit maxime et voluptas.</p><p>Aliquam non iusto non dolorum. Rerum voluptas id voluptatibus dicta laborum neque dolorum. Amet aliquid libero aut corrupti. Eos dolores iusto dolor.</p><p>Beatae accusantium alias unde porro corrupti nemo qui quaerat. Quam sunt quos facilis odio libero. Minus ea quos dolore dignissimos id exercitationem.</p><p>Est voluptatem adipisci quia quisquam eos. Rerum sit at non. Laborum excepturi sint vel. Et aut eveniet voluptas neque possimus eum porro.</p><p>Laboriosam commodi nihil non ut et quia. Nobis tenetur saepe sequi sit non iure. Voluptates suscipit eius nulla fugit perferendis atque ipsam.</p><p>Odio mollitia non at sit. Voluptas et eligendi a. Labore at deleniti debitis voluptatem rerum vel.</p>', NULL, '2022-01-16 06:28:57', '2022-01-16 06:28:57'),
(14, 2, 1, 'Repellat non enim.', 'enim-rerum-possimus-neque-sit-maiores-doloremque-aspernatur-esse', NULL, 'Fugiat enim voluptatem animi quae voluptatibus sapiente. Libero sit perferendis reprehenderit consequuntur aut veniam. Saepe qui aut necessitatibus vitae id iusto.', '<p>Eos quos iste non aperiam quisquam dolores ipsam. Ullam laborum similique placeat doloremque quae. Occaecati dicta excepturi rem atque consequuntur reiciendis.</p><p>Nemo deserunt id aut nulla totam facere. Corrupti dolorem ut deserunt molestiae eos. Qui consectetur debitis amet sint sit.</p><p>Omnis voluptatem iure magni quos veniam quia qui optio. Ad omnis inventore exercitationem amet fugiat tenetur facere. Tempora nihil ut rem vero ipsum velit. Consequatur in aut deserunt maxime ex.</p><p>Sunt veritatis qui illo exercitationem sunt magni est. Esse qui aut exercitationem quia quam delectus ab suscipit. Perspiciatis quaerat et id fugiat alias.</p><p>Vero nam velit omnis molestiae dolor non maiores. Commodi in nulla voluptatem rerum provident omnis cumque. Mollitia consectetur consequatur deleniti qui inventore voluptas eaque. Aut non nihil debitis voluptatem dolorem praesentium est.</p><p>Qui quibusdam adipisci ipsum ipsam. Expedita asperiores est quia aliquam corrupti tempora quidem quis. Quas repellendus maxime odit quasi vel. Et voluptatibus aut suscipit similique.</p>', NULL, '2022-01-16 06:28:57', '2022-01-16 06:28:57'),
(15, 2, 2, 'Nesciunt explicabo dolore et nobis.', 'rerum-dolor-voluptas-qui-sit-voluptas', NULL, 'Amet autem saepe molestiae. Ipsam sint sit incidunt blanditiis possimus labore occaecati. Id nostrum non amet maiores autem recusandae quam. Et harum ut qui. Qui quos id sed sed vel ut.', '<p>Et quo numquam nam magnam placeat deserunt. Consectetur quisquam asperiores ab voluptas est incidunt odio quasi. Illum tempore sint temporibus sed labore.</p><p>Labore qui et autem et voluptatem impedit eius. Sint et facere qui dolor beatae debitis nulla. Quaerat enim fugit dolorum tenetur perspiciatis eos. Dolorem labore et non omnis maiores.</p><p>Adipisci voluptates quas dolorem optio molestiae. Vel aut ullam neque occaecati. Natus saepe non qui nisi nobis. Eaque et ipsa aspernatur ratione et aut.</p><p>Voluptates voluptatibus mollitia consequuntur tempore. Ea voluptas ut aut amet eos sunt est. Ut maxime eum ullam aperiam itaque. Eum voluptatem sunt nihil qui dolore.</p><p>Aut expedita earum consequatur sint. Sit et hic animi inventore. Autem dolorum provident rem corporis consequuntur in expedita. Qui velit velit nihil doloribus iure.</p>', NULL, '2022-01-16 06:28:57', '2022-01-16 06:28:57'),
(16, 2, 1, 'Qui perferendis odit rem aut mollitia nemo qui.', 'aliquam-iure-voluptatem-quo-aut-et', NULL, 'Placeat excepturi pariatur sed omnis est. Sunt quisquam eos necessitatibus et tenetur odio. Exercitationem numquam vel est aut nemo.', '<p>Beatae dolorem earum reiciendis deserunt maiores consequuntur velit. Est odio sed eveniet impedit non odio fugiat. Rerum sunt fugit est porro maxime. Aut ea officia pariatur dicta nemo error quisquam. Vero iusto eos labore et voluptatem.</p><p>Exercitationem accusantium et enim soluta non. In illum quis at molestiae omnis est. Fuga dolore eum reprehenderit minima error. Numquam omnis quo tempora et et soluta possimus.</p><p>Quo excepturi praesentium nobis vitae reiciendis distinctio. Et dolores ut temporibus unde. Perspiciatis tempore accusantium aspernatur minus maiores iusto. Explicabo numquam ipsum laboriosam quidem.</p><p>Est cumque omnis quos ab libero voluptatibus. Ipsum eius maxime perferendis quia quidem consequuntur quam reiciendis. Illum nihil optio quaerat illo necessitatibus excepturi molestias.</p><p>Dignissimos qui qui eveniet reprehenderit voluptatem perspiciatis. Unde quis repellendus voluptatem quos perferendis voluptate reiciendis temporibus. Ducimus est optio rerum rem dolorem ut totam non. Et expedita maxime nesciunt repellat enim dignissimos voluptatem.</p><p>Exercitationem est doloremque ea aut consequatur sed. Maxime totam eveniet sed dolore. Officia ipsa voluptatum et et expedita et ducimus.</p><p>Non labore aut quaerat. Qui veritatis magni explicabo dolores aspernatur quisquam magnam. Maiores tempora molestiae labore error sapiente quo. Dolor et sunt sequi fuga amet qui omnis.</p><p>Est sit suscipit ratione porro ad rerum. Laborum id voluptate aut voluptatem accusantium praesentium laudantium et. Rerum soluta molestiae enim deserunt eum laudantium dolores.</p><p>Molestias occaecati sapiente qui nemo quibusdam earum. Vel velit rerum ea molestiae assumenda et. Et nobis libero voluptatem harum eius consequuntur. Enim quidem dolor iusto.</p><p>Voluptate repellendus magnam est excepturi eum placeat et. Illo odit eius illum quas voluptatum sed quia voluptates. Voluptates sed eum blanditiis illo eos et nihil.</p>', NULL, '2022-01-16 06:28:57', '2022-01-16 06:28:57'),
(17, 2, 1, 'Cum quas fuga assumenda.', 'consequatur-in-voluptatum-laborum-assumenda', NULL, 'Dolores molestiae optio quia fugit in nobis ea. Sapiente et et dolorum eum ab. Molestiae sit et necessitatibus.', '<p>Perspiciatis ut enim molestias velit porro. Beatae labore non culpa. Veniam omnis tempore suscipit delectus.</p><p>Dicta voluptatem aut modi voluptatem quod ad alias. Aut ab repellendus repellendus dolores et qui libero magnam. Et beatae possimus deserunt eligendi est.</p><p>Ut neque nihil quia. Et est rerum ab incidunt rem vero quia. Voluptas voluptatem animi fugiat sunt natus autem quod.</p><p>Expedita sint quod eius nihil hic voluptatum pariatur. Fugiat dolor ea nesciunt temporibus. Debitis amet quos in sit. Libero doloribus enim molestiae ut accusantium sed. Consequatur voluptas quo neque autem nemo.</p><p>Consectetur expedita earum repellendus omnis eius sapiente ad. Sit modi repellat quasi est qui. Molestiae cum perspiciatis hic.</p><p>Totam est dolorem facere laudantium qui eaque. Iusto ipsa autem vero vero est. Aut qui beatae accusamus quia facere soluta culpa nihil.</p><p>Repudiandae perspiciatis nemo ea quaerat. Aspernatur exercitationem id et sint dolor nemo. Iste mollitia ex aut.</p>', NULL, '2022-01-16 06:28:57', '2022-01-16 06:28:57'),
(18, 1, 1, 'Necessitatibus quae quis non.', 'non-sit-ut-rem-repellendus', NULL, 'Quia molestiae optio dolores sit ut omnis. Numquam officiis sed qui adipisci expedita ea. Velit quidem qui laudantium iure aliquam totam. Laboriosam non a ut ullam.', '<p>Nostrum cumque sunt laboriosam ipsa repellat aliquid. Enim eius qui ut quae illum. Labore unde eum quisquam sunt.</p><p>Ut accusamus voluptatem quas eaque commodi atque porro occaecati. Sed optio error illo voluptas necessitatibus consequatur repellendus officiis. Magnam omnis cupiditate atque consequuntur enim. Dolorum aut iste architecto quas voluptas dicta est. Veniam velit et qui corporis.</p><p>Qui sequi ea nulla. Nihil aut et voluptate rem. Quibusdam nobis ut tenetur enim esse voluptas. Ipsam similique qui voluptas perspiciatis explicabo.</p><p>Incidunt voluptas voluptas autem molestiae eum. Tempora odit sapiente assumenda sit molestias sed. Aliquam consequatur velit blanditiis qui architecto voluptatem quos.</p><p>Ducimus voluptatem ullam quasi necessitatibus ut ut praesentium. Veritatis doloribus magnam voluptate. Omnis repellendus perspiciatis pariatur ut ut voluptatem. Consequuntur hic facere odio quaerat dolor molestiae qui. Voluptatibus repellendus placeat aspernatur quis officia.</p><p>Quod veritatis aut id et magnam laboriosam rerum dolore. Commodi quae sit voluptas rerum porro sequi. Et qui ad repellendus minus.</p>', NULL, '2022-01-16 06:28:57', '2022-01-16 06:28:57'),
(19, 2, 2, 'Minima accusamus cum eos.', 'ab-ducimus-perspiciatis-ut-earum', NULL, 'Dignissimos doloremque omnis sequi sunt. Et consectetur ratione doloribus officiis distinctio occaecati quis. Odit asperiores quaerat velit et et. Aut necessitatibus eos laudantium dolores sit ipsum eos.', '<p>Illum aut corporis ut sed. Est sit distinctio voluptatem at. Ut aliquam et commodi eum tempore. Non voluptates repellat maiores. Ipsum provident sit fugiat neque accusantium.</p><p>Molestiae cupiditate enim repellat rem harum. Et vel officia nihil quis dolores animi. Odio temporibus quis dolorum et.</p><p>Ut nostrum natus dicta optio saepe. Quae dolorem fuga rerum aperiam quos accusamus. Qui nesciunt eveniet modi earum sint pariatur.</p><p>Perspiciatis ipsum eum aut omnis id libero quod. Qui aut aut quaerat laudantium accusamus. Id expedita vero reprehenderit rerum aut dolorem ea. Voluptatem porro omnis sunt aut.</p><p>Cumque deleniti quas delectus ut mollitia quod. Cumque optio doloribus iusto. Error illum debitis labore.</p>', NULL, '2022-01-16 06:28:57', '2022-01-16 06:28:57'),
(20, 1, 2, 'Quia unde officiis excepturi et in.', 'assumenda-rerum-quas-est-hic-non', NULL, 'Quia exercitationem in odio molestiae perferendis. Nobis expedita quos ut in modi. Et vel autem ad aut. Tenetur est veniam totam et quisquam.', '<p>Consequuntur fugit neque atque. In autem non ut fugiat maiores.</p><p>Omnis libero soluta reiciendis cupiditate reprehenderit molestias. Soluta eaque delectus qui occaecati commodi at at id. Et sed laboriosam natus nobis.</p><p>Non architecto consequatur sequi earum molestiae odio. Qui facilis et repudiandae quia voluptates aliquid. Beatae ipsum et quos sunt. Et voluptas eos et molestiae quod sit aliquam.</p><p>Dolorem tempore possimus aut. Blanditiis libero provident ea et exercitationem esse vitae. Quia illo voluptas non aut id. Sed officiis quo autem qui illum sunt.</p><p>Eum voluptas iusto aut earum quam iusto dolores facilis. Dolorem et quo iusto accusamus numquam dolor vel. Aut nihil porro et qui quia ut.</p><p>Enim a accusamus et aut tempore quo facere. Nobis dolores laborum magni impedit mollitia nesciunt distinctio.</p>', NULL, '2022-01-16 06:28:57', '2022-01-16 06:28:57'),
(21, 5, 1, 'Post Baru', 'post-baru', 'post-images/vqI7hxrHAmatKOGZgqrjGPkoCyAzN6hPhc8tSfLP.jpg', 'ini post baru', '<div>ini post baru</div>', NULL, '2022-01-16 06:53:18', '2022-01-22 06:21:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Deny Maulana', 'denymaulana', 'denymaulana@gmail.com', NULL, '$2y$10$XrCvUrTFXSYv1t6989urMuxaRLGsrlsp8S6iAHOhKaem/tXJAKpjy', NULL, '2022-01-16 06:28:54', '2022-01-16 06:28:54', 1),
(2, 'Cici Utami', 'ekuswoyo', 'gantar76@example.com', '2022-01-16 06:28:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hUDaoM7zn15KzZDFi3Up56TYgOmpQbRoK9cJXoUJXLy900ke6S8rEVgeZlAT', '2022-01-16 06:28:56', '2022-01-16 06:28:56', 1),
(3, 'Tania Uchita Prastuti S.T.', 'jane.haryanto', 'jkuswoyo@example.org', '2022-01-16 06:28:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4D6vvycf9c', '2022-01-16 06:28:56', '2022-01-16 06:28:56', 0),
(4, 'Aditya Salahudin', 'pangeran.prasetyo', 'ramadan.heryanto@example.com', '2022-01-16 06:28:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GiIr15v572gHL0eTDosffRSSSUYjaRAUe1yim2YQgdDF8dJM7GDtqJZtMATx', '2022-01-16 06:28:56', '2022-01-16 06:28:56', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
