LOAD DATA INFILE '/var/lib/mysql-files/payments.csv'
INTO TABLE Project.payments
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES

