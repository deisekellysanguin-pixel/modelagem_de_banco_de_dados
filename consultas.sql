-- #######################################################
-- ## 3. CONSULTAS (SELECT)
-- #######################################################

-- 1. Caes e seus donos
SELECT
    C.nome AS Nome_Cao,
    C.raca AS Raca_Cao,
    CL.nome AS Nome_Tutor,
    CL.telefone AS Telefone_Tutor
FROM CAO C
JOIN CLIENTE CL ON C.fk_id_cliente = CL.id_cliente
ORDER BY CL.nome;

-- 2. Aulas do instrutor Joao Pereira
SELECT nome_aula, data_hora
FROM AULA
WHERE instrutor = 'Joao Pereira'
ORDER BY data_hora ASC;

-- 3. Desempenho do cao Max
SELECT
    C.nome AS Nome_Cao,
    A.nome_aula AS Nome_Aula,
    PS.desempenho,
    PS.data_sessao
FROM PROGRESSO_SESSAO PS
JOIN CAO C ON PS.fk_id_cao = C.id_cao
JOIN AULA A ON PS.fk_id_aula = A.id_aula
WHERE C.nome = 'Max'
ORDER BY PS.data_sessao DESC;

-- 4. Dois caes mais pesados
SELECT nome, raca, peso
FROM CAO
ORDER BY peso DESC
LIMIT 2;

-- 5. Clientes com mais de 1 cao
SELECT
    CL.nome AS Nome_Cliente,
    COUNT(C.id_cao) AS Total_Caes
FROM CLIENTE CL
JOIN CAO C ON CL.id_cliente = C.fk_id_cliente
GROUP BY CL.nome
HAVING COUNT(C.id_cao) > 1
ORDER BY Total_Caes DESC;