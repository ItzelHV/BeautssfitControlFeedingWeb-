CREATE TABLE atletas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    edad INT,
    peso FLOAT,
    altura FLOAT
);

CREATE TABLE dietas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    atleta_id INT,
    comida VARCHAR(100),
    hora TIME,
    FOREIGN KEY (atleta_id) REFERENCES atletas(id) ON DELETE CASCADE
);