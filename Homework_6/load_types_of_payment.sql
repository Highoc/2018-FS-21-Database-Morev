LOAD DATA INFILE '/var/lib/mysql-files/types.csv'
INTO TABLE Project.types_of_payment
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES