use Project;

ALTER TABLE users MODIFY phone_number BIGINT;
ALTER TABLE payments ADD task_id int NULL;

ALTER TABLE payments
ADD CONSTRAINT payments_tasks_id_fk
FOREIGN KEY (task_id) REFERENCES tasks (id);
ALTER TABLE payments DROP FOREIGN KEY payments_users_id_fk;
ALTER TABLE payments
ADD CONSTRAINT payments_users_id_id_fk
FOREIGN KEY (seller_id, buyer_id) REFERENCES users (id, id);

ALTER TABLE payments MODIFY task_id int(11) NOT NULL;