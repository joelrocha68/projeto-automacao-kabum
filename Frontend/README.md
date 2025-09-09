# Projeto Automação Kabum

Este projeto contém testes automatizados desenvolvidos em **Robot Framework** utilizando a biblioteca **SeleniumLibrary**.  
O objetivo é validar o fluxo de compra no site [Kabum](https://www.kabum.com.br).

---

## Tecnologias Utilizadas
- [Robot Framework](https://robotframework.org/)
- [SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary)
- Python 3.10+

---

## Estrutura do Projeto
Projeto Automacao/
│── tests/              # Arquivos de testes
│── resources/          # Keywords personalizadas
│── variables/          # Variáveis globais
│── locators.robot      # Localizadores XPath
│── README.md           # Documentação do projeto


---

## Como Executar

1. Clone o repositório:
   ```bash
   git clone https://github.com/joelrocha68/projeto-automacao-kabum.git
   cd projeto-automacao-kabum

2. Execute os testes:
    robot tests/
