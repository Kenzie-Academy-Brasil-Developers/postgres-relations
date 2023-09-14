CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL
);

CREATE TABLE IF NOT EXISTS adresses (
    id SERIAL PRIMARY KEY,
    country VARCHAR(150) NOT NULL,
    user_id INTEGER UNIQUE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

SELECT * FROM adresses AS a 
LEFT JOIN users u ON a.user_id = u.id;