# Projeto Automação API viacep

Este projeto contém testes automatizados desenvolvidos em **Robot Framework** utilizando a biblioteca **RequestsLibrary**.  
O objetivo é validar as APIs de CEP no site [viacep](https://viacep.com.br/ws).

---

## Tecnologias Utilizadas
- [Robot Framework]
- [Requests Library]
- Python 3.10+

---

## Estrutura do Projeto
backend/
│── resources/
│   └── viacep_keywords.robot   # Keywords reutilizáveis (requisições HTTP)
│
│── tests/
│   ├── test_cep_valido.robot       # Cenário CEP válido
│   ├── test_cep_invalido.robot     # Cenário CEP inexistente
│   ├── test_cep_formato.robot      # Cenário CEP com formato incorreto
│   ├── test_cep_caracteres.robot   # Cenário CEP com caracteres inválidos
│
│── README.md   # Este arquivo


---

## Instalar RequestsLibrary

pip install robotframework-requests



## Executar os Testes

cd backend
robot tests/


## Rodar apenas um teste específico

robot tests/test_cep_valido.robot


## Cenários Cobertos
1. CEP Válido

Consulta de um CEP existente (01001000 → Praça da Sé - SP).
Valida que os campos retornados são corretos:
cep, logradouro, bairro, localidade, uf.

2. CEP Inválido

Consulta de um CEP inexistente (00000000).
API deve retornar JSON com a chave "erro": true.

3. Formato Incorreto

Consulta com CEP fora do padrão (menos de 8 dígitos, mais de 8 dígitos, vazio).
API deve retornar HTTP 400 Bad Request.

4. Caracteres Especiais

Consulta com caracteres não numéricos (abcd1234, !@#$%¨&*, 12-345-678).
API deve retornar HTTP 400 Bad Request.
