CREATE TABLE statuses
(
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    type varchar(64) NOT NULL
);
CREATE UNIQUE INDEX statuses_id_uindex ON statuses (id);
CREATE UNIQUE INDEX statuses_type_uindex ON statuses (type);