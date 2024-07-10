*** Settings ***
Documentation       Suite cartao

Resource            ../resources/base.resource

Test Setup          Iniciar sessao
Test Teardown       Finalizar sessao


*** Test Cases ***
Ver dados cartão virtual
    [Tags]    car

    ${data}    Load Json From File    ${EXECDIR}/resources/fixtures/login-mupay.json    encoding=utf-8

    Botao continue
    Campo CPF    ${data}[login][sucesso][cpf]
    Botao confirmar
    Campo senha    ${data}[login][sucesso][senha]
    Botao confirmar
    Botao continuar
    Codigo de verificacao
    Botao acessar conta
    Card meus cartoes
    Cartao virtual    CARLOS OLIVEIRA, Final 0112 • Débito
    Ver dados do cartao
    Senha transacional
    Botao continuar
    Wait Until Page Contains    text=Cartão Virtual
    Wait Until Page Contains    text=Número do Cartão
    Wait Until Page Contains    text=4261 7608 8037 8745
    Wait Until Page Contains    text=Nome do Titular
    Wait Until Page Contains    text=JOSE PEREIRA
    Wait Until Page Contains    text=Data de vencimento
    Wait Until Page Contains    text=CVV

Atualizar cartão virtual
    [Tags]    atu_car

    ${data}    Load Json From File    ${EXECDIR}/resources/fixtures/login.json    encoding=utf-8

    Botao continue
    Campo CPF    ${data}[login][pass][cpf]
    Botao confirmar
    Campo senha    ${data}[login][pass][senha]
    Botao confirmar
    Botao continuar
    Codigo de verificacao
    Botao acessar conta
    Card meus cartoes
    Cartao virtual    CARLOS OLIVEIRA, Final 0112 • Débito
    Gerar novo cartao
    Gerar novo cartao virtual
    Mensagem de sucesso    O seu novo cartão virtual foi gerado!