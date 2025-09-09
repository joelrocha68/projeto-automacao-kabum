*** Settings ***
Resource    ../resources/viacep_keywords.robot
Library     json

*** Test Cases ***
CEP Válido Deve Retornar Dados Corretos
    # Consulta um CEP válido
    ${response}=    Buscar CEP    01001000
    Should Be Equal As Integers    ${response.status_code}    200

    # Converte a resposta JSON em dicionário
    ${data}=    Evaluate    json.loads('''${response.text}''')    json
    Log To Console    [INFO] Retorno CEP válido: ${data}

    # Valida os campos retornados
    Should Be Equal    ${data["cep"]}           01001-000
    Should Be Equal    ${data["logradouro"]}    Praça da Sé
    Should Be Equal    ${data["bairro"]}        Sé
    Should Be Equal    ${data["localidade"]}    São Paulo
    Should Be Equal    ${data["uf"]}            SP
