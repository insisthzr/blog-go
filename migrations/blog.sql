DROP table IF EXISTS user;

CREATE TABLE  user(
    id BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL DEFAULT '',
    password VARCHAR(20) NOT NULL DEFAULT '',
    PRIMARY KEY(id)
);

DROP table IF EXISTS post;

CREATE TABLE post(
    id BIGINT NOT NULL AUTO_INCREMENT,
    title VARCHAR(40) NOT NULL DEFAULT '',
    content LONGTEXT NOT NULL,
    created_at DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00',
    author_id BIGINT NOT NULL DEFAULT '0',
    category_id BIGINT NOT NULL DEFAULT '0',
    PRIMARY KEY(id)
);

DROP table IF EXISTS category;

CREATE TABLE category(
    id BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL DEFAULT '',
    PRIMARY KEY(id)
);

DROP table IF EXISTS tag;

CREATE TABLE tag(
    id BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL DEFAULT '',
    PRIMARY KEY(id)
);

DROP table IF EXISTS post_tag;

CREATE TABLE post_tag(
    post_id BIGINT NOT NULL DEFAULT '0',
    tag_id BIGINT NOT NULL DEFAULT '0'
);