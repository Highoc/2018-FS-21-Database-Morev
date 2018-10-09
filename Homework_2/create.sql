use `FS21-DB`;

CREATE TABLE `users` (
    `user_id` int NOT NULL AUTO_INCREMENT,
    `login` varchar(16) NOT NULL,
    `reg_dttm` timestamp NOT NULL,
    PRIMARY KEY(`user_id`)
);

CREATE TABLE `payments` (
    `payment_id` int NOT NULL AUTO_INCREMENT,
    `user_id` int NOT NULL,
    `payment_sum` double NOT NULL,
    `payment_dttm` timestamp NOT NULL,
    PRIMARY KEY(`payment_id`),
    FOREIGN KEY(`user_id`) REFERENCES `users` (`user_id`)
);

CREATE TABLE `sessions` (
    `session_id` int NOT NULL AUTO_INCREMENT,
    `user_id` int NOT NULL,
    `begin_dttm` timestamp NOT NULL,
    `end_dttm` timestamp NOT NULL,
    PRIMARY KEY(`session_id`),
    FOREIGN KEY(`user_id`) REFERENCES `users` (`user_id`)
);
