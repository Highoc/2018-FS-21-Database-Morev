LOAD DATA INFILE '/var/lib/mysql-files/categories.csv'
INTO TABLE Project.categories
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES