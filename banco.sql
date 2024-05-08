-- CRIAÇÃO TABELA 'empresa_parceira'

CREATE TABLE resiliadata.empresa_parceira (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  endereco VARCHAR(150) NOT NULL,
  contato VARCHAR(50) NOT NULL
);

SELECT * FROM resiliadata.empresa_parceira;

-- CRIAÇÃO TABELA 'area_tecnologia'

CREATE TABLE resiliadata.area_tecnologia (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL
);

SELECT * FROM resiliadata.area_tecnologia;

-- CRIAÇÃO TABELA 'tecnologia'

CREATE TABLE resiliadata.tecnologia (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  descricao TEXT NOT NULL,
  area_tecnologia_id INT,
  FOREIGN KEY (area_tecnologia_id) REFERENCES resiliadata.area_tecnologia(id)
);

SELECT * FROM resiliadata.tecnologia;

-- CRIAÇÃO TABELA 'empresa_tecnologia'

CREATE TABLE resiliadata.empresa_tecnologia (
  empresa_id INT,
  tecnologia_id INT,
  PRIMARY KEY (empresa_id, tecnologia_id),
  FOREIGN KEY (empresa_id) REFERENCES resiliadata.empresa_parceira(id),
  FOREIGN KEY (tecnologia_id) REFERENCES resiliadata.tecnologia(id)
);

SELECT * FROM resiliadata.empresa_tecnologia;

-- CRIAÇÃO TABELA 'COLABORADOR'

CREATE TABLE resiliadata.colaborador (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  cargo VARCHAR(50) NOT NULL,
  empresa_id INT,
  FOREIGN KEY (empresa_id) REFERENCES resiliadata.empresa_parceira(id)
);


SELECT * FROM resiliadata.colaborador;



-- PARA INSERIR OS DADOS:

-- Empresas Parceiras
INSERT INTO resiliadata.empresa_parceira (id, nome, endereco, contato) VALUES
(1, 'Tech Solutions', 'Rua Exemplo, 100', 'contato@techsolutions.com'),
(2, 'Data Innovate', 'Av. Inovação, 200', 'hello@datainnovate.com');

-- Tecnologias:
INSERT INTO resiliadata.tecnologia (id, nome, descricao) VALUES
(1, 'React', 'Biblioteca JavaScript para construção de interfaces'),
(2, 'Python', 'Linguagem de programação de alto nível');

-- Áreas de Tecnologia:
INSERT INTO resiliadata.area_tecnologia (id, nome) VALUES
(1, 'Web Development'),
(2, 'Data Science');

-- Empresa_Tecnologia:
INSERT INTO resiliadata.empresa_tecnologia (empresa_id, tecnologia_id) VALUES
(1, 1),
(2, 2);

-- Colaboradores:
INSERT INTO resiliadata.colaborador (id, nome, cargo, empresa_id) VALUES
(1, 'Alice Santos', 'Desenvolvedora Front-end', 1),
(2, 'Carlos Gomes', 'Cientista de Dados', 2);
