CREATE TABLE payments
(
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_id int NOT NULL,
    sum float DEFAULT 0 NOT NULL,
    dttm timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT payments_users_id_fk FOREIGN KEY (user_id) REFERENCES users (id)
);
CREATE UNIQUE INDEX payments_id_uindex ON payments (id);

ALTER TABLE payments ADD buyer_id int NOT NULL;
ALTER TABLE payments CHANGE user_id seller_id int(11) NOT NULL;
ALTER TABLE payments
    MODIFY COLUMN sum float NOT NULL DEFAULT '0' AFTER buyer_id,
    MODIFY COLUMN dttm timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER buyer_id;