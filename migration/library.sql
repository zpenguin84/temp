DROP DATABASE library;
CREATE DATABASE library;

CREATE TABLE books (
	id serial PRIMARY KEY,
	title varchar(255) NOT NULL,
	published integer DEFAULT NULL,
	bookcase_id integer NOT NULL,
	bookshelf_id integer NOT NULL,
	available boolean NOT NULL
);

CREATE TABLE categories (
	id serial PRIMARY KEY,
	title varchar(50) NOT NULL
);

CREATE TABLE categories2books (
	category_id integer,
	book_id integer,
	PRIMARY KEY (category_id, book_id)
);

CREATE TABLE authors (
	id serial PRIMARY KEY,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL
);

CREATE TABLE authors2books (
	author_id integer,
	book_id integer,
	PRIMARY KEY (author_id, book_id)
);

CREATE TABLE users (
	id serial PRIMARY KEY,
	name varchar(50) NOT NULL,
	class varchar(5)
);

CREATE TABLE books2users (
	book_id integer PRIMARY KEY,
	user_id integer,
	get_date timestamp
);
