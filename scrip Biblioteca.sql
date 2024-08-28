
CREATE DATABASE db_biblioteca;
USE db_biblioteca;

CREATE TABLE autor (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    phone VARCHAR(10) NOT NULL
);


CREATE TABLE books (
    id INT PRIMARY KEY NOT NULL,
    id_author INT,
    code_book VARCHAR(8) NOT NULL,
    name VARCHAR(50) NOT NULL,
    title VARCHAR(100) NOT NULL,
    publisher DATE NOT NULL,
    sbn CHAR(12),
    FOREIGN KEY (id_author) REFERENCES autor(id),
    created_at DATETIME,
    updated_at DATETIME
);

CREATE TABLE Usuario (
    id INT PRIMARY KEY NOT NULL,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    registration_date DATE NOT NULL
);


CREATE TABLE prestamo (
    id INT PRIMARY KEY NOT NULL,
    user_id INT NOT NULL,
    book_id INT NOT NULL,
    loan_date DATE NOT NULL,
    return_date DATE,
    FOREIGN KEY (user_id) REFERENCES Usuario(id),
    FOREIGN KEY (book_id) REFERENCES books(id)
);


