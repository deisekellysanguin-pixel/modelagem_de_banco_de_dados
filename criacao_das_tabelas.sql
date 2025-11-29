-- #######################################################
-- ## 1. CRIAÇÃO DAS TABELAS (DDL)
-- #######################################################

-- Tabela CLIENTE
CREATE TABLE CLIENTE (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    telefone TEXT,
    email TEXT UNIQUE NOT NULL,
    endereco TEXT
);

-- Tabela AULA
CREATE TABLE AULA (
    id_aula INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_aula TEXT NOT NULL,
    descricao TEXT,
    data_hora TEXT NOT NULL,
    instrutor TEXT NOT NULL
);

-- Tabela CAO
CREATE TABLE CAO (
    id_cao INTEGER PRIMARY KEY AUTOINCREMENT,
    fk_id_cliente INTEGER NOT NULL,
    nome TEXT NOT NULL,
    raca TEXT,
    idade INTEGER,
    peso REAL,
    FOREIGN KEY (fk_id_cliente) REFERENCES CLIENTE(id_cliente)
);

-- Tabela PROGRESSO_SESSAO
CREATE TABLE PROGRESSO_SESSAO (
    id_progresso INTEGER PRIMARY KEY AUTOINCREMENT,
    fk_id_cao INTEGER NOT NULL,
    fk_id_aula INTEGER NOT NULL,
    desempenho TEXT,
    observacoes TEXT,
    data_sessao TEXT NOT NULL,
    
    UNIQUE (fk_id_cao, fk_id_aula, data_sessao),

    FOREIGN KEY (fk_id_cao) REFERENCES CAO(id_cao),
    FOREIGN KEY (fk_id_aula) REFERENCES AULA(id_aula)
);