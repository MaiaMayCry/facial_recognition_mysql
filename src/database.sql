CREATE DATABASE IF NOT EXISTS main
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE main;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cpf VARCHAR(20) NOT NULL UNIQUE,
    nome VARCHAR(150) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    setor VARCHAR(150) NOT NULL
);

CREATE TABLE IF NOT EXISTS files (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    filename VARCHAR(255) NOT NULL,
    filepath VARCHAR(500) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_files_user
        FOREIGN KEY (user_id)
        REFERENCES users(id)
        ON DELETE CASCADE
);

INSERT INTO users (cpf, nome, senha, setor)
VALUES (
    '12345678900',
    'Lucas',
    'change-this-password',
    'Development'
)
ON DUPLICATE KEY UPDATE
    nome = VALUES(nome),
    senha = VALUES(senha),
    setor = VALUES(setor);