CREATE TABLE categories
(
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name varchar(64) DEFAULT 'Default category name' NOT NULL,
    description varchar(512) DEFAULT 'Default category description' NOT NULL
);
CREATE UNIQUE INDEX categories_id_uindex ON categories (id);