*** Settings ***

Library    SeleniumLibrary
Resource    ../variables.robot/testdata.robot
Resource    locators.robot

*** Keywords ***

# Abre o site da Kabum
Abrir Site Kabum
    Open Browser    ${URL_KABUM}    chrome
    Maximize Browser Window
    Set Selenium Timeout    10s
    Log To Console    [INFO] Site Kabum aberto com sucesso
    Log              Site Kabum aberto com sucesso

# Busca o produto digitado no campo de pesquisa
Preencher Campo Buscar Produto
    [Arguments]    ${text}
    Click Element                    ${BOTAO_ACEITAR_COOKIES}
    Wait Until Element Is Visible    ${CAMPO_BUSCAR_PRODUTO}    10s
    Input Text                       ${CAMPO_BUSCAR_PRODUTO}    ${text}

# Seleciona o notebook gamer da lista
Selecionar Notebook Gamer
    Wait Until Element Is Visible    ${PRODUTO_NOTEBOOK_GAMER}    10s
    Scroll Element Into View         ${PRODUTO_NOTEBOOK_GAMER}
    Click Element                    ${PRODUTO_NOTEBOOK_GAMER}
    Log To Console    [INFO] Notebook gamer selecionado
    Log              Notebook gamer selecionado

# Preenche o campo de CEP e confirma
Preencher Campo Inserir Cep
    [Arguments]    ${cep}
    Clicar Caixa De Cep
    Wait Until Element Is Visible    ${CAMPO_INSERIR_CEP}    10s
    Input Text                       ${CAMPO_INSERIR_CEP}    ${cep}
    Wait Until Element Is Visible    ${BOTAO_OK}    10s
    Click Element                    ${BOTAO_OK}
    Log To Console    [INFO] CEP inserido: ${cep}
    Log              CEP inserido: ${cep}

# Valida se os valores de frete aparecem na página
Validar Valores de Frete
    [Arguments]    ${expressa}    ${padrao}
    Wait Until Page Contains    ${expressa}    10s
    Wait Until Page Contains    ${padrao}    10s
    Page Should Contain         ${expressa}
    Page Should Contain         ${padrao}
    Log To Console    [INFO] Valores de frete validados (Expressa: ${expressa}, Padrão: ${padrao})
    Log              Valores de frete validados (Expressa: ${expressa}, Padrão: ${padrao})

# Abre a caixa de CEP e clica em "Inserir CEP"
Clicar Caixa De Cep
    Wait Until Element Is Visible    ${CAIXA_CEP}    10s
    Click Element                    ${CAIXA_CEP}
    Wait Until Element Is Visible    ${BOTAO_INSERIR_CEP}    10s
    Click Element                    ${BOTAO_INSERIR_CEP}

# Clica no botão "Comprar Agora"
Clicar Botao Comprar Agora
    Wait Until Element Is Visible    ${BOTAO_COMPRAR_AGORA}    10s
    Click Element    ${BOTAO_COMPRAR_AGORA}
    Log To Console    [INFO] Produto adicionado ao carrinho (Comprar Agora)
    Log              Produto adicionado ao carrinho (Comprar Agora)

# Vai para o carrinho
Ir Para O Carrinho
    Wait Until Element Is Visible    ${BOTAO_IR_PARA_CARRINHO}    10s
    Click Element                    ${BOTAO_IR_PARA_CARRINHO}
    Log To Console    [INFO] Redirecionado para o carrinho
    Log              Redirecionado para o carrinho

# Valida que a seção Carrinho aparece
Validar secao Carrinho
    Wait Until Element Is Visible    ${LABEL_CARRINHO}    10s
    Element Should Be Visible        ${LABEL_CARRINHO}
    Log To Console    [INFO] Seção carrinho validada
    Log              Seção carrinho validada

# Valida se o notebook está na seção carrinho
Validar produto no carrinho
    Wait Until Page Contains Element        ${NOTEBOOK_NO_CARRINHO}
    Page Should Contain Element             ${NOTEBOOK_NO_CARRINHO}
    Capture Page Screenshot
    Log To Console    [INFO] Produto validado no carrinho
    Log              Produto validado no carrinho