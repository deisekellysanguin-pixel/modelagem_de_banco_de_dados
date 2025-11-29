-- #######################################################
-- ## 2. INSERÇÃO DE DADOS (DML)
-- #######################################################

INSERT INTO CLIENTE (nome, telefone, email, endereco) VALUES
('Ana Silva', '11988887777', 'ana.silva@email.com', 'Rua das Flores, 100'),
('Bruno Costa', '21977776666', 'bruno.costa@email.com', 'Av. Central, 50'),
('Carla Souza', '31966665555', 'carla.souza@email.com', 'Praça da Liberdade, 20');

INSERT INTO AULA (nome_aula, descricao, data_hora, instrutor) VALUES
('Obediencia Basica', 'Comandos essenciais: senta, fica, vem.', '2025-12-01 10:00:00', 'Joao Pereira'),
('Socializacao Canina', 'Interacao controlada com outros caes e pessoas.', '2025-12-01 14:00:00', 'Maria Oliveira'),
('Agilidade Nivel I', 'Introducao ao circuito de obstaculos.', '2025-12-03 09:30:00', 'Joao Pereira'),
('Truques Divertidos', 'Ensinar truques como rolar, dar a pata, etc.', '2025-12-05 16:00:00', 'Maria Oliveira');

INSERT INTO CAO (fk_id_cliente, nome, raca, idade, peso) VALUES
(1, 'Max', 'Golden Retriever', 3, 30.50),
(2, 'Luna', 'Poodle', 5, 8.20),
(1, 'Thor', 'Pastor Alemao', 2, 38.00),
(3, 'Bela', 'Pinscher', 1, 3.50);

INSERT INTO PROGRESSO_SESSAO (fk_id_cao, fk_id_aula, desempenho, observacoes, data_sessao) VALUES
(1, 1, 'Excelente', 'Max dominou o comando "senta" rapidamente.', '2025-12-01'),
(2, 2, 'Bom', 'Luna esta mais confiante com outros caes.', '2025-12-01'),
(3, 3, 'Precisa Melhorar', 'Thor teve dificuldade inicial com o salto.', '2025-12-03'),
(4, 4, 'Excelente', 'Bela aprendeu a dar a pata em 10 minutos.', '2025-12-05'),
(3, 1, 'Bom', 'Thor esta mais focado, mas precisa de reforco no "fica".', '2025-12-01');