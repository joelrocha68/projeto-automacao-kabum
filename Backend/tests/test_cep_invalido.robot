*** Settings ***
Resource    ../resources/viacep_keywords.robot

*** Test Cases ***
CEP Inválido Deve Retornar Erro
    # Consulta um CEP que não existe
    ${response}=    Buscar CEP    00000000
    Should Be Equal As Integers    ${response.status_code}    200

    # Converte a resposta em dicionário
    ${data}=    Evaluate    $response.json()
    Log To Console    [INFO] Retorno CEP inválido: ${data}

    # Verifica se contém a chave "erro"
    Should Contain    ${data}    erro

    # Converte o valor para string e valida que é "true" - verdadeiro
    ${erro}=    Set Variable    ${data["erro"]}
    ${erro_str}=    Convert To String    ${erro}
    Should Be Equal As Strings    ${erro_str}    true
