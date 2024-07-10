*** Settings ***
Documentation       Suite transacoes

Resource            ../resources/base.resource

Test Setup          Iniciar sessao
Test Teardown       Finalizar sessao


*** Test Cases ***
PIX phone
    [Tags]    pix

    ${data}    Load Json From File    ${EXECDIR}/resources/fixtures/login-mupay.json    encoding=utf-8

    Botao continue
    Campo CPF    ${data}[login][pass][cpf]
    Botao confirmar
    Campo senha    ${data}[login][pass][senha]
    Botao confirmar
    Botao continuar
    Codigo de verificacao
    Botao acessar conta
    Card pix
    Transferir <pix>
    Novo contato
    Celular
    Campo chave numero de celular    ${data}[transacoes][pix][phone]
    Botao continuar
    Campo valor    2000
    Scroll app
    Botao continuar
    Botao continuar
    Senha transacional
    Botao finalizar
    Mensagem de sucesso    Concluído

PIX cpf
    [Tags]    pix_cpf

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
    Transferir <pix>
    Novo contato
    CPF/CNPJ
    Campo chave cpf/cnpj    ${data}[transacoes][pix][cpf]
    Botao continuar
    Campo valor    2000
    Scroll app
    Botao continuar
    Botao continuar
    Senha transacional
    Botao finalizar
    Mensagem de sucesso    Concluído

PIX email
    [Tags]    pix_ema

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
    Transferir <pix>
    Novo contato
    Email
    Campo chave e-mail    ${data}[transacoes][pix][email]
    Botao continuar
    Campo valor    2000
    Scroll app
    Botao continuar
    Botao continuar
    Senha transacional
    Botao finalizar
    Mensagem de sucesso    Concluído

PIX chave aleatoria
    [Tags]    pix_ale

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
    Transferir <pix>
    Novo contato
    Chave aleatoria
    Campo chave aleatoria    ${data}[transacoes][pix][aleatoria]
    Botao continuar
    Campo valor    2000
    Scroll app
    Botao continuar
    Botao continuar
    Senha transacional
    Botao finalizar
    Mensagem de sucesso    Concluído
