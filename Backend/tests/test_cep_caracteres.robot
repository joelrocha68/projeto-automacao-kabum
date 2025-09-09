*** Settings ***
Resource    ../resources/viacep_keywords.robot

*** Variables ***
@{CEPS_INVALIDOS}    abjt1844    !@#$%#&*    52-345-677

*** Test Cases ***
Caracteres Especiais Devem Retornar 400
    FOR    ${cep}    IN    @{CEPS_INVALIDOS}
        Log To Console    \n[INFO] Testando CEP com caracteres inválidos: ${cep}
        ${response}=    Buscar CEP    ${cep}
        Should Be Equal As Integers    ${response.status_code}    400
    END
