# <img src="https://user-images.githubusercontent.com/106452876/218260379-0a74a6b4-faee-410e-83d7-602e6b779cf1.png" alt="table icon" width="30" />Projeto One For All!

Para este projeto recebemos uma tabela não normalizada e precisamos normalizá-la na terceira forma normal. Em seguida precisamos criar as tabelas normalizadas e interagir com elas criando queries para juntar as informações das tabelas utilizando o método ``JOIN``. 

![one-for-all](https://user-images.githubusercontent.com/106452876/218260257-b96b5af2-c8a4-4423-b552-575c897a0650.png)

### Normalização da Tabela
Precisamos normalizar na terceira forma normal e para chegar na terceira forma normal foi preciso passar pela primeira e segunda forma normal, são elas:

**Primeira forma normal**
-   Colunas devem possuir apenas um valor;
-   Valores em uma coluna devem ser do mesmo tipo de dados;
-   Cada coluna deve possuir um nome único;
-   A ordem dos dados registrados em uma tabela não deve afetar a integridade dos dados.

**Segunda forma normal**
-   A tabela deve estar na 1ª Forma Normal;
-   A tabela não deve possuir dependências parciais.

**Terceira forma normal**
-   A tabela deve estar na 1ª e 2ª Formas Normais;
-   A tabela não deve conter atributos (colunas) que não sejam **dependentes exclusivamente da _PK_** (chave primária).

## Tecnologias usadas
Back-end:
> Desenvolvido usando: Docker, docker-compose, SQL, MySQL Workbench

## Instalando Dependências
### Com Docker
> Backend

* Primeiro instale os containers: 
```bash
docker-compose up -d
``` 

* Em seguida abra o terminal interativo do container: 
```bash
docker exec -it one_for_all bash
``` 

* Instale as dependências dentro do container: 
```bash
npm install
``` 
> Testes

* Dentro do terminal do container:
```bash
npm test
``` 

:warning: Atenção: O git dentro do container não vem configurado com suas credenciais;

### Sem Docker

* Instale as dependências [Caso existam]
```bash
npm install
``` 

:information_source: Para rodar o projeto desta forma, obrigatoriamente você deve ter o ```node``` instalado em seu computador e o avaliador espera que seja a versão 16.

