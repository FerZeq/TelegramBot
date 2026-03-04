CREATE TABLE IF NOT EXISTS irregular_words (
    id BIGINT PRIMARY KEY,
    infinitive VARCHAR(30),
    past VARCHAR(30),
    participle VARCHAR(30),
    translation VARCHAR(30)
);


CREATE TABLE IF NOT EXISTS users(
    id BIGINT PRIMARY KEY,
    name VARCHAR(50),
    nick_name VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS answers(
    id BIGINT PRIMARY KEY,
    is_correct boolean DEFAULT FALSE,
    FOREIGN KEY answering REFERENCES users (name),
    FOREIGN KEY word_id REFERENCES irregular_words (id)
);