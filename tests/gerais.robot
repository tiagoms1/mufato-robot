*** Settings ***
Documentation       Suite gerais

Resource            ../resources/base.resource

Test Setup          Iniciar sessao
Test Teardown       Finalizar sessao


*** Test Cases ***
Gerar boleto para deposito
    [Tags]    dep_bol     ger

    ${data}    Load Json From File    ${EXECDIR}/resources/fixtures/login-mupay.json    encoding=utf-8

    Botao continue
    Campo CPF    ${data}[login][sucesso][cpf]
    Botao confirmar
    Campo senha    ${data}[login][sucesso][senha]
    Botao confirmar
    Botao continuar
    Codigo de verificacao
    Botao acessar conta
    Card depositar
    Deposito via boleto
    Valor do deposito    2000
    Botao continuar
    Wait Until Page Contains    text=Código do Boleto
    Wait Until Page Contains    text=Utilize o código de barras abaixo para realizar o pagamento:
    Wait Until Page Contains    text=Vencimento
    Wait Until Page Contains    text=Valor do depósito
    Wait Until Page Contains    text=R$ 20,00

Visualização de dados pessoais
    [Tags]    dad_pes    ger

    ${data}    Load Json From File    ${EXECDIR}/resources/fixtures/login-mupay.json    encoding=utf-8

    Botao continue
    Campo CPF    ${data}[login][sucesso][cpf]
    Botao confirmar
    Campo senha    ${data}[login][sucesso][senha]
    Botao confirmar
    Botao continuar
    Codigo de verificacao
    Botao acessar conta
    Card perfil
    Dados pessoais
    Wait Until Page Contains    text=Dados pessoais
    Wait Until Page Contains    text=Nome completo
    Wait Until Page Contains    text=José Pereira
    Wait Until Page Contains    text=CPF
    Wait Until Page Contains    text=400.108.620-48
    Wait Until Page Contains    text=Endereço
    Wait Until Page Contains    text=Rua Jackson Xavier de Barros, 927, Bela Vista, Teixeira de Freitas - BA, 45990235
    Wait Until Page Contains    text=Telefone Celular
    Wait Until Page Contains    text=(61) 9 8137-3059
    Wait Until Page Contains    text=E-mail
    Wait Until Page Contains    text=joao.louren@rubcube.com
