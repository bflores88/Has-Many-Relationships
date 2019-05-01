-- DROP DATABASE IF EXISTS has_many_blogs;

-- -- CREATE USER has_many_user;

-- CREATE DATABASE has_many_blogs WITH OWNER has_many_user;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id serial primary key,
  username varchar(90) NOT NULL,
  first_name varchar(90) DEFAULT NULL,
  last_name varchar(90) DEFAULT NULL,
  created_at timestamp without time zone NOT NULL DEFAULT NOW(),
  updated_at timestamp without time zone NOT NULL DEFAULT NOW()
  );


DROP TABLE IF EXISTS posts;

CREATE TABLE posts (
  id serial primary key,
  title varchar(180) DEFAULT NULL,
  url varchar(510) DEFAULT NULL,
  content text DEFAULT NULL,
  created_at timestamp without time zone NOT NULL DEFAULT NOW(),
  updated_at timestamp without time zone NOT NULL DEFAULT NOW(),
  user_id integer references users(id)
  );


DROP TABLE IF EXISTS comments;

CREATE TABLE comments (
  id serial primary key,
  body varchar(510) DEFAULT NULL,
  created_at timestamp without time zone NOT NULL DEFAULT NOW(),
  updated_at timestamp without time zone NOT NULL DEFAULT NOW(),
  user_id integer references users(id),
  post_id integer references posts(id)
);