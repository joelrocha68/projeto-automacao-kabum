*** Settings ***
Resource    ../resources/viacep_keywords.robot

*** Variables ***
@{CEPS_INVALIDOS}    1234567    123456789    12    ${EMPTY}

*** Test Cases ***
Formato Incorreto Deve Retornar 400
    FOR    ${cep}    IN    @{CEPS_INVALIDOS}
        Log To Console    \n[INFO] Testando CEP com formato incorreto: ${cep}
        ${response}=    Buscar CEP    ${cep}
        Should Be Equal As Integers    ${response.status_code}    400
    END
