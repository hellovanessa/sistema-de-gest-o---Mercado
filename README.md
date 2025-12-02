# Sistema de Gestão de Estoque para Comércio (SGEC)

Repositório contendo os scripts SQL e documentação do projeto desenvolvido para a Experiência Prática 3.

## Objetivo do Projeto
Criar e manipular um banco de dados funcional utilizando conceitos de modelagem, normalização, DDL, DML e consultas SQL, seguindo princípios das taxonomias de Bloom e Fink.

## Tecnologias
- PostgreSQL 13+  
- PGAdmin ou DBeaver  
- SQL padrão ANSI  

## Estrutura do Repositório
├── 01_ddl.sql # Criação das tabelas
├── 02_insert.sql # População inicial das tabelas
├── 03_select.sql # Consultas SELECT (WHERE, JOIN, ORDER BY, LIMIT etc.)
├── 04_update_delete.sql # Comandos UPDATE e DELETE
└── README.md


---

## 🛠️ 01_ddl.sql – Criação do banco e tabelas

Script para criar o banco de dados e todas as tabelas necessárias.

---

## 📥 02_insert.sql – Inserção de dados

Script contendo INSERTs para usuários, produtos e movimentações.

---

## 🔎 03_select.sql – Consultas SQL

Contém consultas utilizando:

- WHERE  
- ORDER BY  
- LIMIT  
- JOIN  
- GROUP BY  

---

## ✏️ 04_update_delete.sql – Atualizações e exclusões

Inclui:

- 3 UPDATE com condições  
- 3 DELETE com condições  

---

## ▶️ Como Executar

1. Instale o PostgreSQL e o PGAdmin.  
2. Abra o PGAdmin → Query Tool.  
3. Execute o script `01_ddl.sql`.  
4. Execute o script `02_insert.sql`.  
5. Utilize os scripts `03_select.sql` e `04_update_delete.sql` para testes.  

---

## 📚 Taxonomias Atendidas

### **Bloom**
- **Aplicar:** execução de comandos SQL reais  
- **Criar:** desenvolvimento completo do banco e scripts  

### **Fink**
- **Aplicação:** uso de PGAdmin e SQL real  
- **Integração:** união de modelagem + normalização + DML  
- **Aprendendo a aprender:** interpretação de erros SQL  

---



