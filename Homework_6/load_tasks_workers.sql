LOAD DATA INFILE '/var/lib/mysql-files/tasks_workers.csv'
INTO TABLE Project.tasks_workers
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
