-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 02 2021 г., 05:32
-- Версия сервера: 10.5.11-MariaDB
-- Версия PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `my_renovation`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cities`
--

CREATE TABLE `cities` (
  `city` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cities`
--

INSERT INTO `cities` (`city`) VALUES
('Москва'),
('Томск');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `project` int(11) NOT NULL,
  `author` int(11) NOT NULL,
  `text` text NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `text` varchar(535) NOT NULL,
  `is_new` tinyint(1) NOT NULL DEFAULT 1,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `title`, `text`, `is_new`, `date`) VALUES
(7, 7, 'Ваш проект приняли!', 'Поздравляем! <a href=\'projects?projectId=65\'>Ваш проект</a> по адресу Томск, Усова 11А  был принят.', 0, '2021-08-23 19:51:17'),
(8, 7, 'Ваш проект приняли!', 'Поздравляем! <a href=\'projects?projectId=65\'>Ваш проект</a> по адресу Томск, Усова 11А  был принят.', 0, '2021-08-23 19:53:05'),
(9, 7, 'Ваш проект приняли!', 'Поздравляем! <a href=\'projects?projectId=65\'>Ваш проект</a> по адресу Томск, Усова 11А  был принят.', 0, '2021-08-23 20:09:48'),
(10, 7, 'Ваш проект приняли!', 'Поздравляем! <a href=\'projects?projectId=65\'>Ваш проект</a> по адресу Томск, Усова 11А  был принят.', 0, '2021-08-23 20:12:34'),
(11, 7, 'Ваш проект приняли!', 'Поздравляем! <a href=\'projects?projectId=65\'>Ваш проект</a> по адресу Томск, Усова 11А  был принят.', 0, '2021-08-23 20:13:34'),
(12, 7, 'Ваш проект приняли!', 'Поздравляем! <a href=\'projects?projectId=65\'>Ваш проект</a> по адресу Томск, Усова 11А  был принят.', 0, '2021-08-23 20:13:56');

-- --------------------------------------------------------

--
-- Структура таблицы `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `message_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `photos`
--

INSERT INTO `photos` (`id`, `message_id`, `project_id`, `path`) VALUES
(26, NULL, 65, 'web/uploads/BAAXLhWya7g7cWj.jpg'),
(27, NULL, 65, 'web/uploads/hrf3hBwJjJMBbkn.jpg'),
(28, NULL, 65, 'web/uploads/I5e4ayv0KVjdNve.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `profiles_specializations`
--

CREATE TABLE `profiles_specializations` (
  `id` int(11) NOT NULL,
  `profile` int(11) NOT NULL,
  `specialization` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `client` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `city` varchar(40) NOT NULL,
  `street` varchar(30) NOT NULL,
  `house` varchar(5) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `statement_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `projects`
--

INSERT INTO `projects` (`id`, `client`, `comment`, `city`, `street`, `house`, `create_date`, `statement_date`) VALUES
(65, 7, 'Различные требования Различные требования Различные требования Различные требования Различные требования Различные требования Различные требования Различные требования Различные требования Различные требования Различные требования Различные требования Различные требования Различные требования Различные требования Различные требования Различные требования Различные требования Различные требования Различные требования Различные требования Различные требования Различные требования Различные требования Различные требования Различные требования Различные требования Различные требования Различные требования Различные требования Различные требования Различные требования Различные требования Различные требования Различные требования ', 'Томск', 'Усова', '11А', '2021-08-21 16:48:57', '2021-08-23 16:13:56'),
(66, 7, 'test', 'Томск', 'Усова', '11А', '2021-08-22 10:10:55', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`role`) VALUES
('Пользователь'),
('Прораб');

-- --------------------------------------------------------

--
-- Структура таблицы `specializations`
--

CREATE TABLE `specializations` (
  `id` int(11) NOT NULL,
  `specialization` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `specializations`
--

INSERT INTO `specializations` (`id`, `specialization`) VALUES
(1, 'Стекольщик'),
(2, 'Электрик'),
(3, 'Прораб');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `phone` decimal(10,0) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(30) NOT NULL DEFAULT 'Пользователь'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `first_name`, `middle_name`, `last_name`, `phone`, `password`, `role`) VALUES
(7, 'Сергей', 'Комлев', 'Евгеньевич', '9627865490', '$2y$13$vRAhTi2.YN73fdbiIinPxeeDkkmOqfdxTyfi0PMJ8HxE7VGj.mOfe', 'Пользователь');

-- --------------------------------------------------------

--
-- Структура таблицы `users_projects`
--

CREATE TABLE `users_projects` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `project` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users_projects`
--

INSERT INTO `users_projects` (`id`, `user`, `project`) VALUES
(8, 7, 65),
(9, 7, 65),
(10, 7, 65),
(11, 7, 65),
(12, 7, 65),
(13, 7, 65),
(14, 7, 65),
(15, 7, 65),
(16, 7, 65),
(17, 7, 65),
(18, 7, 65),
(19, 7, 65),
(20, 7, 65),
(21, 7, 65);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city`),
  ADD UNIQUE KEY `city` (`city`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author` (`author`),
  ADD KEY `project` (`project`);

--
-- Индексы таблицы `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_id` (`message_id`);

--
-- Индексы таблицы `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `profiles_specializations`
--
ALTER TABLE `profiles_specializations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile` (`profile`,`specialization`),
  ADD KEY `specialization` (`specialization`);

--
-- Индексы таблицы `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client` (`client`),
  ADD KEY `city` (`city`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD UNIQUE KEY `role` (`role`);

--
-- Индексы таблицы `specializations`
--
ALTER TABLE `specializations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`);

--
-- Индексы таблицы `users_projects`
--
ALTER TABLE `users_projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile` (`user`,`project`),
  ADD KEY `project` (`project`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `profiles_specializations`
--
ALTER TABLE `profiles_specializations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT для таблицы `specializations`
--
ALTER TABLE `specializations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `users_projects`
--
ALTER TABLE `users_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`author`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`project`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `profiles_specializations`
--
ALTER TABLE `profiles_specializations`
  ADD CONSTRAINT `profiles_specializations_ibfk_2` FOREIGN KEY (`specialization`) REFERENCES `specializations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `profiles_specializations_ibfk_3` FOREIGN KEY (`profile`) REFERENCES `profiles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`client`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projects_ibfk_2` FOREIGN KEY (`city`) REFERENCES `cities` (`city`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role`) REFERENCES `roles` (`role`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users_projects`
--
ALTER TABLE `users_projects`
  ADD CONSTRAINT `users_projects_ibfk_2` FOREIGN KEY (`project`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_projects_ibfk_3` FOREIGN KEY (`user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
