# Projeto de Integração de Dados Emlurb (156)
Este projeto implementa e compara duas arquiteturas de integração de dados (ETL e ELT) utilizando dados de chamados do serviço 156 da Emlurb (Recife). O objetivo é processar arquivos CSV brutos, tratar os dados e carregá-los em um Data Warehouse no PostgreSQL seguindo a modelagem Star Schema.

## 📋 Pré-requisitos
Para executar este projeto, você precisará ter instalado em sua máquina:

>Python 3.x
>
>PostgreSQL (Servidor de Banco de Dados)
>
>Jupyter Notebook ou JupyterLab

## 🚀 Instalação e Configuração
### 1. Clonar o Repositório

```
git clone https://github.com/seu-usuario/projeto-bd-emlurb.git

cd projeto-bd-emlurb
```

### 2. Instalar Dependências
Instale as bibliotecas Python necessárias listadas nos notebooks:


>pip install pandas sqlalchemy psycopg2-binary jupyter notebook

Nota: As bibliotecas principais utilizadas são:

>**pandas:** Manipulação de dados e ETL.
>
>**sqlalchemy:** ORM e conexão com o banco.
>
>**psycopg2-binary:** Driver PostgreSQL para Python.

### 3. Configuração do Banco de Dados
Antes de rodar os scripts, certifique-se de que o serviço do PostgreSQL está ativo e crie os bancos de dados que serão utilizados pelos processos:

Abra seu gerenciador de banco de dados.

Crie dois bancos de dados vazios:

etl_BD (para o processo ETL)

elt_BD (para o processo ELT)

**Atenção:** Os notebooks estão configurados com credenciais padrão (usuario='postgres', senha='254535'). Lembre-se de atualizar essas credenciais nas células de conexão dos notebooks ETL.ipynb e ELT.ipynb para corresponderem ao seu ambiente local.

### 📂 Estrutura do Projeto

**notebooks/:** Contém os Jupyter Notebooks com o código fonte.

**ETL.ipynb:** Script de Extração, Transformação (em memória/Pandas) e Carga.

**ELT.ipynb:** Script de Extração, Carga (Raw) e Transformação (via SQL no banco).

**notebooks/data/:** Diretório para os arquivos CSV brutos (ex: 156_2022.csv, 156_2024.csv, etc.).

**relatorios/:** Documentação e PDFs explicativos do projeto.

### ▶️ Como Rodar

1. Certifique-se de que os arquivos de dados (.csv) estejam na pasta notebooks/data/.

2. Inicie o servidor do Jupyter:
   
    ``` jupyter lab ```

4. No navegador, abra a pasta notebooks.

5. Execute os arquivos


### 📊 Resultados Esperados

Ao final da execução:

As tabelas dimensionais (dim_servico, dim_localizacao, etc.) e a tabela fato (fato_chamados) estarão criadas e populadas nos respectivos bancos de dados.

Você poderá executar consultas SQL analíticas diretamente no banco para extrair insights sobre o tempo de atendimento e distribuição dos chamados.
