SHOW GLOBAL VARIABLES LIKE 'local_infile';
SET GLOBAL local_infile = 1;

LOAD DATA LOCAL INFILE '.\data\exchange.tsv' INTO TABLE `exchange`
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '.\data\currency.tsv' INTO TABLE `currency`
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '.\data\currencyPair.tsv' INTO TABLE `currencyPair`
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

/* MySQL has a bug around LOAD DATA LOCAL right now
   so we are going to have to copy the file to where secure_file_priv
   specified and load from there.
   https://bugs.mysql.com/bug.php?id=91891
 */
SHOW VARIABLES LIKE "secure_file_priv";
SET secure_file_priv = "";

LOAD DATA INFILE 'C:\ProgramData\MySQL\MySQL Server 8.0\Uploads\data\exchange.tsv' INTO TABLE `exchange`
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE '.\data\currency.tsv' INTO TABLE `currency`
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE '.\data\currencyPair.tsv' INTO TABLE `currencyPair`
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

COMMIT;