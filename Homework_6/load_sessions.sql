LOAD DATA INFILE '/var/lib/mysql-files/sessions.csv'
INTO TABLE Project.sessions
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
