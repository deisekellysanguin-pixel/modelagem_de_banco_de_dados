<h1>Sistema de Adestramento Canino – Mente Canina</h1>

<p>
Este projeto apresenta o desenvolvimento de um sistema completo para gerenciamento de um centro de 
adestramento canino chamado <strong>Mente Canina</strong>.  
Todo o banco de dados foi criado utilizando <strong>SQLiteStudio</strong>, escolhido por sua leveza, portabilidade e facilidade de uso 
em aplicações locais ou embarcadas.
</p>

<hr>

<h2>🐾 Objetivo do Sistema</h2>

<p>
O banco de dados tem como finalidade organizar clientes, cães, aulas e o progresso das sessões de treinamento.  
Ele serve como base para softwares de gestão de adestramento, escolas caninas, pet shops e treinadores autônomos.
</p>

<hr>

<h2>📌 1. Estrutura do Banco de Dados (DDL)</h2>

<p>O banco contém quatro tabelas principais, criadas em SQLite:</p>

<h3>👤 Tabela <code>CLIENTE</code></h3>
<ul>
    <li>Armazena informações dos tutores dos cães.</li>
    <li>Campos: nome, telefone, email (único) e endereço.</li>
    <li>Possui chave primária autoincrementada.</li>
</ul>

<h3>📘 Tabela <code>AULA</code></h3>
<ul>
    <li>Registra as aulas oferecidas no centro de treinamento.</li>
    <li>Campos incluem nome da aula, descrição, data e instrutor.</li>
</ul>

<h3>🐕 Tabela <code>CAO</code></h3>
<ul>
    <li>Relaciona cada cão ao seu tutor através de <code>fk_id_cliente</code>.</li>
    <li>Campos: nome, raça, idade e peso.</li>
    <li>Possui chave estrangeira vinculada a <code>CLIENTE</code>.</li>
</ul>

<h3>📈 Tabela <code>PROGRESSO_SESSAO</code></h3>
<ul>
    <li>Registra o desempenho de cada cão em uma aula específica.</li>
    <li>Relaciona cães e aulas por meio de chaves estrangeiras.</li>
    <li>Restrições garantem que um cão não tenha dois registros iguais no mesmo dia.</li>
</ul>

<hr>

<h2>📌 2. Inserção de Dados (DML)</h2>

<p>Foram adicionados dados de exemplo para demonstrar o funcionamento do sistema:</p>

<ul>
    <li><strong>Clientes</strong>: Ana, Bruno e Carla.</li>
    <li><strong>Aulas</strong>: obediência, socialização, agilidade e truques.</li>
    <li><strong>Cães</strong>: Max, Luna, Thor e Bela.</li>
    <li><strong>Progresso das sessões</strong>: registros reais de desempenho.</li>
</ul>

<p>
Esses dados simulam um ambiente real em um centro de adestramento canino.
</p>

<hr>

<h2>📌 3. Consultas (SELECT)</h2>

<p>O script inclui diversas consultas úteis para análise de desempenho e gerenciamento:</p>

<ol>
    <li><strong>Listar cães e seus donos</strong> — com nome, raça e telefone do tutor.</li>
    <li><strong>Filtrar aulas por instrutor</strong> — exemplo com João Pereira.</li>
    <li><strong>Acompanhar o desempenho do cão Max</strong> — histórico por data.</li>
    <li><strong>Exibir os dois cães mais pesados</strong>.</li>
    <li><strong>Clientes com mais de um cão</strong> — agrupando e contando registros.</li>
</ol>

<hr>

<h2>📌 4. Manipulação de Dados (UPDATE e DELETE)</h2>

<h3>🔄 Atualizações</h3>
<ul>
    <li>Alteração do telefone de um cliente.</li>
    <li>Ajustes em registros de desempenho.</li>
    <li>Atualização automática de idade de cães de raça específica.</li>
</ul>

<h3>🗑️ Exclusões</h3>
<ul>
    <li>Exclusão de históricos de progresso.</li>
    <li>Remoção de cães e clientes sem associações.</li>
    <li>Limpeza de registros para reorganização geral.</li>
</ul>

<hr>

<h2>💡 Conclusão</h2>

<p>
O banco de dados <strong>Mente Canina</strong>, desenvolvido em <strong>SQLite</strong>, demonstra uma solução completa para gerenciar 
um sistema de adestramento canino, oferecendo controle de clientes, cães, aulas e evoluções.  
A estrutura pode ser utilizada em aplicações reais, estudos acadêmicos ou como base para sistemas maiores.
</p>

<hr>

<h3>📄 Autor</h3>
<p>Deise Kelly Sanguin - Projeto criado para fins de estudo e demonstração prática de SQL.</p>
