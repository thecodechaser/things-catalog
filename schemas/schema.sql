CREATE DATABASE catalog;
CREATE TABLE genres (
    id  INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100),
    PRIMARY KEY(id)
);

CREATE TABLE music_albums (
    id  INT,
    name VARCHAR(100),
    on_spotify BOOLEAN,
    FOREIGN KEY(id) REFERENCES item(id)
);

CREATE TABLE labels (
    id  INT GENERATED ALWAYS AS IDENTITY,
    title VARCHAR(100),
    color VARCHAR(100),
    PRIMARY KEY(id)
);
