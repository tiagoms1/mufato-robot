*** Settings ***
Documentation       Suite extratos

Resource            ../resources/base.resource

Test Setup          Iniciar sessao
Test Teardown       Finalizar sessao


*** Test Cases ***
Exibição de extrato <tudo>
    [Tags]    ext

    ${data}    Load Json From File    ${EXECDIR}/resources/fixtures/login-mupay.json    encoding=utf-8

    Botao continue
    Campo CPF    ${data}[login][sucesso][cpf]
    Botao confirmar
    Campo senha    ${data}[login][sucesso][senha]
    Botao confirmar
    Botao continuar
    Codigo de verificacao
    Botao acessar conta
    Card extrato 

Exibição de extrato <entrada>
    [Tags]    ext

    ${data}    Load Json From File    ${EXECDIR}/resources/fixtures/login-mupay.json    encoding=utf-8

    Botao continue
    Campo CPF    ${data}[login][sucesso][cpf]
    Botao confirmar
    Campo senha    ${data}[login][sucesso][senha]
    Botao confirmar
    Botao continuar
    Codigo de verificacao
    Botao acessar conta
    Card extrato 
    Opicao entrada


Exibição de extrato <saida>
    [Tags]    ext

    ${data}    Load Json From File    ${EXECDIR}/resources/fixtures/login-mupay.json    encoding=utf-8

    Botao continue
    Campo CPF    ${data}[login][sucesso][cpf]
    Botao confirmar
    Campo senha    ${data}[login][sucesso][senha]
    Botao confirmar
    Botao continuar
    Codigo de verificacao
    Botao acessar conta
    Card extrato 
    Opicao saida

Exibição de extrato <futuro>
    [Tags]    ext

    ${data}    Load Json From File    ${EXECDIR}/resources/fixtures/login-mupay.json    encoding=utf-8

    Botao continue
    Campo CPF    ${data}[login][sucesso][cpf]
    Botao confirmar
    Campo senha    ${data}[login][sucesso][senha]
    Botao confirmar
    Botao continuar
    Codigo de verificacao
    Botao acessar conta
    Card extrato 
    Opicao futuro

Extrato pix
    [Tags]    ext_pix    ext_pix_tdo

    ${data}    Load Json From File    ${EXECDIR}/resources/fixtures/login-mupay.json    encoding=utf-8

    Botao continue
    Campo CPF    ${data}[login][sucesso][cpf]
    Botao confirmar
    Campo senha    ${data}[login][sucesso][senha]
    Botao confirmar
    Botao continuar
    Codigo de verificacao
    Botao acessar conta
    Card pix
    Extrato pix

Extrato pix agendado
    [Tags]    ext_pix    ext_pix_age

    ${data}    Load Json From File    ${EXECDIR}/resources/fixtures/login-mupay.json    encoding=utf-8

    Botao continue
    Campo CPF    ${data}[login][sucesso][cpf]
    Botao confirmar
    Campo senha    ${data}[login][sucesso][senha]
    Botao confirmar
    Botao continuar
    Codigo de verificacao
    Botao acessar conta
    Card pix
    Extrato pix
    Extrato pix <agendado>