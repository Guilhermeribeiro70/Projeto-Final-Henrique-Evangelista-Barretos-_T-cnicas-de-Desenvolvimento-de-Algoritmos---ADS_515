CREATE DATABASE IF NOT EXISTS academia7 CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE academia7;

DROP TABLE IF EXISTS matriculas;
DROP TABLE IF EXISTS alunos;

CREATE TABLE alunos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(150) NOT NULL,
  idade INT,
  email VARCHAR(150)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE matriculas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  curso VARCHAR(200) NOT NULL,
  data_matricula DATE,
  status VARCHAR(50),
  aluno_id INT NOT NULL,
  FOREIGN KEY (aluno_id) REFERENCES alunos(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO alunos (nome, idade, email) VALUES
('Lucas Silva',22,'lucas@example.com'),
('Mariana Costa',28,'mariana@example.com');

INSERT INTO matriculas (curso, data_matricula, status, aluno_id) VALUES
('Musculação Avançada','2025-01-15','ativa',1),
('Zumba Iniciante','2025-03-02','ativa',2);
