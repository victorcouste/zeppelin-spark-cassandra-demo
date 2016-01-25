CREATE KEYSPACE IF NOT EXISTS ks_music 
WITH replication = {
	'class' : 'SimpleStrategy',
	'replication_factor' : 1
};

use ks_music;

DROP TABLE albums;

CREATE TABLE IF NOT EXISTS albums ( 
	artist text,
	album text,
	year text,
	country text,
	quality text,
	status text,
	PRIMARY KEY (album) 
);

DROP TABLE nbalbums_by_year;

CREATE TABLE IF NOT EXISTS nbalbums_by_year ( 
	year text,
    nbalbums int,
	PRIMARY KEY (year)
);