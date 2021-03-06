
-- IMDb Project
-- Stagng Tables
-- Rick Sherman
-- 2020-04-10


-- Drop table

DROP TABLE IF EXISTS stg_imdb_title_akas;

CREATE TABLE stg_imdb_title_akas (
	titleId varchar(10) not null,
	[ordering] int,
	title varchar(1024),
	region varchar(255),
	[language] varchar(255),
	types varchar(255),
	[attributes] varchar(1024),
	isOriginalTitle varchar(255),
	DI_JobID varchar(20) NOT NULL,
	DI_Create_DT datetime DEFAULT getdate() NOT NULL,
	PRIMARY KEY CLUSTERED (titleId, [ordering] )
) ;


-- Drop table

DROP TABLE IF EXISTS stg_imdb_title_basics;

CREATE TABLE stg_imdb_title_basics (
	tconst varchar(10) not null,
	titleType varchar(255),
	primaryTitle varchar(1024),
	originalTitle varchar(1024),
	isAdult bit,
	startYear int,  
	endYear int,   
	runtimeMinutes int,   
	startYear_char varchar(4),  
	endYear_char varchar(4),   
	runtimeMinutes_char varchar(10),   
	genres varchar(255),
	DI_JobID varchar(20) NOT NULL,
	DI_Create_DT datetime DEFAULT getdate() NOT NULL,
	PRIMARY KEY CLUSTERED (tconst) 
) ;

-- Drop table

DROP TABLE IF EXISTS stg_imdb_title_crew

CREATE TABLE stg_imdb_title_crew (
	tconst varchar(10) not null,
	directors varchar(MAX),
	writers varchar(MAX),
	DI_JobID varchar(20) NOT NULL,
	DI_Create_DT datetime DEFAULT getdate() NOT NULL,
	PRIMARY KEY CLUSTERED (tconst) 
) ;

-- Drop table

DROP TABLE IF EXISTS stg_imdb_title_episode;

CREATE TABLE stg_imdb_title_episode (
	tconst varchar(10) not null ,
	parentTconst varchar(10),
	seasonNumber int,    
	episodeNumber int,
	seasonNumber_char varchar(10) ,  
	episodeNumber_char varchar(10) ,
	DI_JobID varchar(20) NOT NULL,
	DI_Create_DT datetime DEFAULT getdate() NOT NULL,
	PRIMARY KEY CLUSTERED (tconst) 
) ;

-- Drop table

DROP TABLE IF EXISTS stg_imdb_title_principals;

CREATE TABLE stg_imdb_title_principals (
	tconst varchar(10) not null,
	[ordering] int,
	nconst varchar(10),
	category varchar(255),
	job varchar(1024),
	[characters] varchar(1024),
	DI_JobID varchar(20) NOT NULL,
	DI_Create_DT datetime DEFAULT getdate() NOT NULL,
	PRIMARY KEY CLUSTERED (tconst,[ordering]) 
) ;

-- Drop table

DROP TABLE IF EXISTS stg_imdb_title_ratings;

CREATE TABLE stg_imdb_title_ratings (
	tconst varchar(10)  not null,
	averageRating real,
	numVotes int,
	DI_JobID varchar(20) NOT NULL,
	DI_Create_DT datetime DEFAULT getdate() NOT NULL,
	PRIMARY KEY CLUSTERED (tconst) 
) ;

-- Drop table

DROP TABLE IF EXISTS stg_imdb_name_basics;

CREATE TABLE stg_imdb_name_basics (
	nconst varchar(10) not null,
	primaryName varchar(255),
	birthYear int, 
	deathYear int,   
	birthYear_char varchar(4),       
	deathYear_char varchar(4),     
	primaryProfession varchar(255),
	knownForTitles varchar(1024),
	DI_JobID varchar(20) NOT NULL,
	DI_Create_DT datetime DEFAULT getdate() NOT NULL,
	PRIMARY KEY CLUSTERED (nconst) 
) ;

-- Drop table

DROP TABLE IF EXISTS stg_imdb_title_crew_directors;

CREATE TABLE stg_imdb_title_crew_directors (
	tconst varchar(10) not null,
	nconst varchar(10) not null,
	DI_JobID varchar(20) NOT NULL,
	DI_Create_DT datetime DEFAULT getdate() NOT NULL,
	PRIMARY KEY CLUSTERED (tconst, nconst) 
) ;

-- Drop table

DROP TABLE IF EXISTS stg_imdb_title_crew_writers

CREATE TABLE stg_imdb_title_crew_writers (
	tconst varchar(10) not null,
	nconst varchar(10) not null,
	DI_JobID varchar(20) NOT NULL,
	DI_Create_DT datetime DEFAULT getdate() NOT NULL,
	PRIMARY KEY CLUSTERED (tconst, nconst) 
) ;