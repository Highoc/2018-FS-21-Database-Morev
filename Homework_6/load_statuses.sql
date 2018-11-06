LOAD DATA INFILE '/var/lib/mysql-files/statuses.csv'
INTO TABLE Project.statuses
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES