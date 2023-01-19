CREATE TABLE IF NOT EXISTS movie(
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(50),
    duration INT,
    PRIMARY KEY (id)
);

INSERT INTO movie(title,duration) VALUES("Spiderman", 109);
INSERT INTO movie(title,duration) VALUES("Batman", 99);
INSERT INTO movie(title,duration) VALUES("Black Panter", 110);
INSERT INTO movie(title,duration) VALUES("Stranger Things", 100);