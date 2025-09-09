*** Variables ***

# Campo de busca de produtos
${CAMPO_BUSCAR_PRODUTO}          //input[@id="inputBusca"]

# Produto específico "Notebook Gamer Acer Nitro"
${PRODUTO_NOTEBOOK_GAMER}        //span[contains(text(),'Notebook Gamer Acer Nitro V15, Intel Core i7-13620')]

# Produto dentro do carrinho
${NOTEBOOK_NO_CARRINHO}          //a[contains(text(),'Notebook Gamer Acer Nitro')]

# Campo para digitar o CEP
${CAMPO_INSERIR_CEP}             //input[@id='zipCodeInputField']

# Botão para abrir caixa de digitar CEP
${CAIXA_CEP}                     //button[@aria-label='Abrir caixa para digitar cep']

# Botão OK do modal de frete
${BOTAO_OK}                      (//span[normalize-space(text())="OK"])[1]

# Botão "Aceitar Cookies"
${BOTAO_ACEITAR_COOKIES}         //button[@id="onetrust-accept-btn-handler"]

# Botão "Inserir CEP"
${BOTAO_INSERIR_CEP}             //button[.//span[normalize-space(text())="Inserir CEP"]]

# Botão "Ir para o carrinho"
${BOTAO_IR_PARA_CARRINHO}        //span[normalize-space()='IR PARA O CARRINHO']

# Botão "Comprar agora"
${BOTAO_COMPRAR_AGORA}           //span[normalize-space()='Comprar agora']

# Label da seção Carrinho
${LABEL_CARRINHO}                //label[normalize-space()='Carrinho']