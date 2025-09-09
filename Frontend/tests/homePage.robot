*** Settings ***
Resource    ../resources/keywords.robot
Resource   ../variables.robot/testdata.robot

*** Variables ***
${CEP}    54762-292
${valor_esperado_entrega_expressa}    79,00
${valor_esperado_entrega_padrao}      49,00

*** Test Cases ***
Comprar Notebook Na Kabum
    # Abre o site da Kabum
    Abrir Site Kabum

    # Busca produto "Notebook"
    Preencher Campo Buscar Produto    Notebook

    # Seleciona o notebook gamer da lista
    Selecionar Notebook Gamer

    # Insere o CEP para calcular frete
    Preencher Campo Inserir Cep       ${CEP}

    # Valida os valores do frete
    Validar Valores de Frete          ${valor_esperado_entrega_expressa}    ${valor_esperado_entrega_padrao}

    # Clica no botão "Comprar Agora"
    Clicar Botao Comprar Agora

    # Vai para a página do carrinho
    Ir Para O Carrinho

    # Valida que a seção carrinho foi aberta
    Validar secao Carrinho

    # Valida que o produto está no carrinho
    Validar produto no carrinho