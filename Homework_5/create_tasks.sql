CREATE TABLE tasks
(
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name varchar(64) DEFAULT 'Default task name' NOT NULL,
    description varchar(512) DEFAULT 'Default task description' NOT NULL,
    price float DEFAULT 0 NOT NULL,
    begin_dttm timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
    end_dttm timestamp NOT NULL,
    location point,
    user_id int NOT NULL,
    category_id int NOT NULL,
    status_id int NOT NULL,
    type_of_payment_id int NOT NULL,
    CONSTRAINT tasks_users_id_fk FOREIGN KEY (user_id) REFERENCES users (id),
    CONSTRAINT tasks_categories_id_fk FOREIGN KEY (category_id) REFERENCES categories (id),
    CONSTRAINT tasks_types_of_payment_id_fk FOREIGN KEY (type_of_payment_id) REFERENCES types_of_payment (id),
    CONSTRAINT tasks_statuses_id_fk FOREIGN KEY (status_id) REFERENCES statuses (id)
);
CREATE UNIQUE INDEX tasks_id_uindex ON tasks (id);