CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL
);

CREATE TABLE IF NOT EXISTS adresses (
    id SERIAL PRIMARY KEY,
    country VARCHAR(150) NOT NULL,
    user_id INTEGER NOT NULL,
    CONSTRAINT fk_user_id
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

SELECT * FROM users AS u JOIN adresses AS a ON a.user_id = u.id;