CREATE TABLE sessions
(
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_id int NOT NULL,
    begin_dttm timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
    end_dttm timestamp NOT NULL,
    CONSTRAINT sessions_users_id_fk FOREIGN KEY (user_id) REFERENCES users (id)
);
CREATE UNIQUE INDEX sessions_id_uindex ON sessions (id);