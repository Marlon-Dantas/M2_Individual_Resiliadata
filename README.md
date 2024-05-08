# M2_Individual_Resiliadata

## Modelo de Banco de Dados RESILIADATA

### 1. QUAIS ENTIDADES NECESSÁRIAS?
### Entidades Necessárias
- **Empresa Parceira**: Representa as empresas parceiras.
- **Tecnologia**: Refere-se às tecnologias utilizadas pelas empresas.
- **Área de Tecnologia**: Categoriza as tecnologias por área de especialização.
- **Empresa_Tecnologia**: Associação entre empresas e tecnologias.
- **Colaborador**: Dados dos colaboradores das empresas parceiras.
  
------------------------------
  
### 2. Quais são os principais campos e seus respectivos tipos?
### Principais Campos e Tipos
| Entidade            | Campo       | Tipo    |
|---------------------|-------------|---------|
| Empresa Parceira    | id          | INT     |
|                     | nome        | VARCHAR |
|                     | endereço    | VARCHAR |
|                     | contato     | VARCHAR |
|                     |             |         |
| Tecnologia          | id          | INT     |
|                     | nome        | VARCHAR |
|                     | descrição   | TEXT    |
|                     |             |         |
| Área de Tecnologia  | id          | INT     |
|                     | nome        | VARCHAR |
|                     |             |         |
| Empresa_Tecnologia  | empresa_id  | INT     |
|                     | tecnologia_id| INT     |
|                     |             |         |
| Colaborador         | id          | INT     |
|                     | nome        | VARCHAR |
|                     | cargo       | VARCHAR |
|                     | empresa_id  | INT     |

------------------------------

### 3. Como essas entidades estão relacionadas?;
### Relacionamentos
### Empresa Parceira ↔️ Tecnologia
**Relacionamento Muitos-Para-Muitos**: Uma **Empresa Parceira** pode utilizar diversas **Tecnologias**, e uma **Tecnologia** pode ser empregada por várias **Empresas Parceiras**. Esse relacionamento é representado pela tabela de associação `Empresa_Tecnologia`.

### Tecnologia ➡️ Área de Tecnologia
**Relacionamento Um-Para-Muitos**: Uma **Área de Tecnologia** pode abranger múltiplas **Tecnologias**, mas uma **Tecnologia** específica pertence somente a uma única **Área de Tecnologia**.

### Colaborador ➡️ Empresa Parceira
**Relacionamento Um-Para-Muitos**: Uma **Empresa Parceira** pode ter vários **Colaboradores**, mas um **Colaborador** está vinculado a apenas uma **Empresa Parceira**.
 #### IMAGEM ILUSTRATIVA:

 ![image](https://github.com/Marlon-Dantas/meu-teste-git/assets/92075470/efa1051a-7301-4ff5-89cd-3a0774748a0d)

------------------------------

### 4. Simule 2 registros para cada entidade:
### Simulação de Registros para RESILIADATA

```sql
### Empresas Parceiras
INSERT INTO empresa_parceira (id, nome, endereço, contato) VALUES
(1, 'Tech Solutions', 'Rua Exemplo, 100', 'contato@techsolutions.com'),
(2, 'Data Innovate', 'Av. Inovação, 200', 'hello@datainnovate.com');

### Tecnologias:
INSERT INTO tecnologia (id, nome, descrição) VALUES
(1, 'React', 'Biblioteca JavaScript para construção de interfaces'),
(2, 'Python', 'Linguagem de programação de alto nível');

###Áreas de Tecnologia:
INSERT INTO area_tecnologia (id, nome) VALUES
(1, 'Web Development'),
(2, 'Data Science');

###Empresa_Tecnologia:
INSERT INTO empresa_tecnologia (empresa_id, tecnologia_id) VALUES
(1, 1),
(2, 2);

###Colaboradores:
INSERT INTO colaborador (id, nome, cargo, empresa_id) VALUES
(1, 'Alice Santos', 'Desenvolvedora Front-end', 1),
(2, 'Carlos Gomes', 'Cientista de Dados', 2);

