CREATE DATABASE clinica;
USE clinica;

CREATE TABLE paciente (
idpaciente INT PRIMARY KEY AUTO_INCREMENT,
nome Varchar(30),
cpf VARCHAR(30),
data_nascimento DATE

);

CREATE TABLE medico(
idmedico INT PRIMARY KEY AUTO_INCREMENT,
nome Varchar(30),
crm VARCHAR(30),
especialidade VARCHAR(30)
);

CREATE TABLE atendimento(
idatendimento INT PRIMARY KEY AUTO_INCREMENT,
id_paciente INT,
id_medico INT,
observacoes TEXT,
data_atendimento DATE,
FOREIGN KEY(id_paciente) REFERENCES paciente(idpaciente),
FOREIGN KEY(id_medico) REFERENCES medico(idmedico)
);

INSERT INTO paciente (idpaciente, nome, cpf, data_nascimento) VALUES
(NULL, 'Ana Silva', 12345678901, '1985-03-15'),
(NULL, 'Bruno Costa', 98765432109, '1992-11-22'),
(NULL, 'Carla Dias', 45678901234, '1978-07-01'),
(NULL, 'Daniel Sousa', 78901234567, '2000-01-30'),
(NULL, 'Eduarda Lima', 32109876543, '1965-09-10'),
(NULL, 'Fábio Guedes', 11223344556, '1990-04-02'),
(NULL, 'Giovana Alves', 66778899001, '1982-12-25'),
(NULL, 'Hugo Ferreira', 22334455667, '1973-06-14'),
(NULL, 'Isadora Rocha', 88990011223, '1998-08-08'),
(NULL, 'Júlio Brito', 33445566778, '1960-02-29');

INSERT INTO medico (idmedico, nome, crm, especialidade) VALUES
(NULL, 'Dr. Fernando Rocha', 12345, 'Cardiologia'),
(NULL, 'Dra. Gabriela Mendes', 67890, 'Pediatria'),
(NULL, 'Dr. Henrique Santos', 11223, 'Dermatologia'),
(NULL, 'Dra. Isabela Oliveira', 44556, 'Ginecologia'),
(NULL, 'Dr. João Pereira', 77889, 'Clínica Geral'),
(NULL, 'Dra. Camila Nogueira', 99001, 'Oftalmologia'),
(NULL, 'Dr. Lucas Silveira', 22334, 'Ortopedia'),
(NULL, 'Dra. Patrícia Gomes', 55667, 'Neurologia'),
(NULL, 'Dr. Rafael Costa', 88990, 'Psiquiatria'),
(NULL, 'Dra. Sofia Lima', 12121, 'Endocrinologia');

INSERT INTO atendimento (idatendimento, id_paciente, id_medico, observacoes, data_atendimento) VALUES
(NULL, 1, 1, 'Paciente com dores no peito, encaminhado para exames cardiológicos.', '2024-05-20'),
(NULL, 2, 2, 'Consulta de rotina para acompanhamento de crescimento.', '2024-05-18'),
(NULL, 3, 3, 'Lesão de pele no braço esquerdo, prescrito pomada tópica.', '2024-05-19'),
(NULL, 4, 5, 'Primeira consulta. Queixa de dores de cabeça frequentes.', '2024-05-21'),
(NULL, 5, 4, 'Exames de rotina ginecológicos, resultados normais.', '2024-05-17'),
(NULL, 6, 1, 'Avaliação pré-operatória. Paciente apto para cirurgia.', '2024-05-22'),
(NULL, 7, 2, 'Revisão de vacinação anual.', '2024-05-15'),
(NULL, 8, 3, 'Acompanhamento de acne. Prescrito novo tratamento.', '2024-05-23'),
(NULL, 9, 5, 'Resultados de exames neurológicos. Tudo ok.', '2024-05-24'),
(NULL, 10, 4, 'Discussão sobre opções de contracepção.', '2024-05-16');

SELECT a.idatendimento AS "Id Atendimento", p.nome AS Paciente, m.nome AS Medico, a.data_atendimento AS "Data do Atendimento"
FROM atendimento a JOIN paciente p ON a.id_paciente = p.idpaciente JOIN medico m ON a.id_medico = m.idmedico;

SELECT nome FROM paciente UNION SELECT nome FROM medico;

select * from paciente
