CREATE TABLE types_of_payment
(
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    type varchar(64) NOT NULL
);
CREATE UNIQUE INDEX types_of_payment_id_uindex ON types_of_payment (id);
CREATE UNIQUE INDEX types_of_payment_type_uindex ON types_of_payment (type);