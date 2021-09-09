USE adlister_db;

CREATE TABLE users (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        username VARCHAR(100) NOT NULL,
                        email  VARCHAR(200) NOT NULL,
                        password VARCHAR(100) NOT NULL,
                        PRIMARY KEY (id)
);

describe users;

CREATE TABLE ads (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       user_id INT UNSIGNED NOT NULL,
                       title  VARCHAR(200) NOT NULL,
                       description VARCHAR(200) NOT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (user_id) REFERENCES users (id)
);

describe ads;