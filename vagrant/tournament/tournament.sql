-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.
\connect postgres

drop database if exists tournament;

create database tournament;

\connect tournament

create table player (
	id serial primary key,
	name varchar(80)
);

create table match (
	id serial primary key,
	id_winner integer references player (id),
	id_loser integer references player (id)
);

create view wins as 
	select p.id, count(m.id_winner) as win_count
		from player as p
			left join match as m on p.id = m.id_winner
		group by p.id;

create view matches as 
	select p.id, count(m.id_winner) as match_count
		from player as p
	        left join match as m on p.id = m.id_winner or p.id = m.id_loser
		group by p.id;