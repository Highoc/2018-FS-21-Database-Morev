CREATE TABLE users
(
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    password varchar(128) NOT NULL,
    email varchar(32) NOT NULL,
    login varchar(32) NOT NULL,
    date_joined datetime(6) DEFAULT CURRENT_TIMESTAMP NOT NULL,
    first_name varchar(32),
    last_name varchar(32),
    phone_number int(16),
    balance float DEFAULT 0
);
CREATE UNIQUE INDEX users_id_uindex ON users (id);
CREATE UNIQUE INDEX users_login_uindex ON users (login);
CREATE UNIQUE INDEX users_phone_number_uindex ON users (phone_number);