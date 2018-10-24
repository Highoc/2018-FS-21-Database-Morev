CREATE TABLE tasks_workers
(
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    task_id int NOT NULL,
    worker_id int NOT NULL,
    CONSTRAINT tasks_workers_users_id_fk FOREIGN KEY (worker_id) REFERENCES users (id),
    CONSTRAINT tasks_workers_tasks_id_fk FOREIGN KEY (task_id) REFERENCES tasks (id)
);
CREATE UNIQUE INDEX tasks_workers_id_uindex ON tasks_workers (id);