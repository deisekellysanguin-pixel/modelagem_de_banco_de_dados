-- #######################################################
-- ## 4. MANIPULAÇÃO (UPDATE E DELETE)
-- #######################################################

-- UPDATES
UPDATE CLIENTE
SET telefone = '11999990000'
WHERE nome = 'Ana Silva';

UPDATE progresso_sessao
SET desempenho = 'Bom',
    observacoes = 'Max se adaptou melhor apos ajustes nos comandos.'
WHERE fk_id_cao = 1
  AND fk_id_aula = 1
  AND data_sessao = '2025-12-01';

UPDATE CAO
SET idade = idade + 1
WHERE raca = 'Poodle';

-- DELETES
-- Deletando progressos da aula 4
DELETE FROM PROGRESSO_SESSAO WHERE fk_id_aula = 4;

-- Deletando o cao Bela (id_cao = 4) e seus progressos
DELETE FROM PROGRESSO_SESSAO WHERE fk_id_cao = 4;
DELETE FROM CAO WHERE id_cao = 4;

-- Deletando a cliente Carla Souza (id_cliente = 3) - agora sem caes associados
DELETE FROM CLIENTE WHERE id_cliente = 3;

-- Deletando progressos do cao Max (id_cao = 1)
DELETE FROM PROGRESSO_SESSAO WHERE fk_id_cao = 1;

-- Deletando o cao Max (id_cao = 1)
DELETE FROM CAO WHERE id_cao = 1;