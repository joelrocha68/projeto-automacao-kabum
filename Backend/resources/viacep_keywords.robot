*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}    https://viacep.com.br/ws

*** Keywords ***
Buscar CEP
    [Arguments]    ${cep}
    Log To Console    \n[INFO] Consultando CEP: ${cep}
    
    # Faz a chamada GET para a API ViaCEP
    ${response}=    GET    ${BASE_URL}/${cep}/json/    expected_status=any
    Log    Status: ${response.status_code}, Body: ${response.text}
    RETURN    ${response}
