CREATE TABLE IF NOT EXISTS `users` (
`id` INT NULL,
`name` VARCHAR(MAX) NULL,
`username` VARCHAR(MAX) NULL,
`email` VARCHAR(MAX) NULL,
`password` VARCHAR(MAX) NULL,
`img` VARCHAR(MAX) NULL,
`date_create` VARCHAR(MAX) NULL
);

INSERT INTO users VALUES
(1,'Melinda Jenkins','user1','user1@gmail.com',md5('pass'),'https://via.placeholder.com/400/853/fff/?text=user1','2022-03-30 04:54:18'),
(2,'Inez Freeman','user2','user2@gmail.com',md5('pass'),'https://via.placeholder.com/400/778/fff/?text=user2','2022-04-03 06:09:21'),
(3,'Goff Flowers','user3','user3@gmail.com',md5('pass'),'https://via.placeholder.com/400/927/fff/?text=user3','2022-02-07 06:43:06'),
(4,'Leonard Porter','user4','user4@gmail.com',md5('pass'),'https://via.placeholder.com/400/940/fff/?text=user4','2022-02-06 03:15:58'),
(5,'Wright Stewart','user5','user5@gmail.com',md5('pass'),'https://via.placeholder.com/400/817/fff/?text=user5','2022-02-22 05:35:50'),
(6,'Monica Vance','user6','user6@gmail.com',md5('pass'),'https://via.placeholder.com/400/713/fff/?text=user6','2022-03-24 06:12:08'),
(7,'Merle Charles','user7','user7@gmail.com',md5('pass'),'https://via.placeholder.com/400/821/fff/?text=user7','2022-02-13 02:04:56'),
(8,'Vivian Woodard','user8','user8@gmail.com',md5('pass'),'https://via.placeholder.com/400/719/fff/?text=user8','2022-04-02 01:13:43'),
(9,'Adele Small','user9','user9@gmail.com',md5('pass'),'https://via.placeholder.com/400/823/fff/?text=user9','2022-01-25 12:16:38'),
(10,'Heather Cox','user10','user10@gmail.com',md5('pass'),'https://via.placeholder.com/400/923/fff/?text=user10','2022-02-02 04:01:37');