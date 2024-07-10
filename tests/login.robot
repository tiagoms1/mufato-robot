*** Settings ***
Documentation       Suite login

Resource            ../resources/base.resource

Test Setup          Iniciar sessao
Test Teardown       Finalizar sessao


*** Test Cases ***
Login com sucesso
    [Tags]    suc

    ${data}    Load Json From File    ${EXECDIR}/resources/fixtures/login-mupay.json    encoding=utf-8

    Botao continue
    Campo CPF    ${data}[login][sucesso][cpf]
    Botao confirmar
    Campo senha    ${data}[login][sucesso][senha]
    Botao confirmar
    Botao continuar
    Codigo de verificacao
    Botao acessar conta

Alterar senha do app logado
    [Tags]    alt_sen

    ${data}    Load Json From File    ${EXECDIR}/resources/fixtures/login-mupay.json    encoding=utf-8

    Botao continue
    Campo CPF    ${data}[login][pass][cpf]
    Botao confirmar
    Campo senha    ${data}[login][pass][senha]
    Botao confirmar
    Botao continuar
    Codigo de verificacao
    Botao acessar conta
    Card perfil
    Link alterar senha do app
    Botao entendi
    Campo senha atual    ${data}[login][pass][senha]
    Campo nova senha    ${data}[login][pass][senha]
    Campo confirmar nova senha    ${data}[login][pass][senha]
    Botao continuar
    Codigo de verificacao
    Mensagem de sucesso    Senha atualizada!

Alterar senha do app pelo "esqueci minha senha"
    [Tags]    esq_sen

    ${data}    Load Json From File    ${EXECDIR}/resources/fixtures/login-mupay.json    encoding=utf-8

    Botao continue
    Campo CPF    ${data}[login][pass][cpf]
    Botao confirmar
    Link esqueceu a sua senha
    Botao entendi
    Campo digite sua senha    ${data}[login][pass][senha]
    Campo confirme a senha    ${data}[login][pass][senha]
    Botao continuar
    Codigo de verificacao
    Mensagem de sucesso    Você redefiniu sua senha com sucesso!

Alterar senha transacional com senha antiga
    [Tags]    alt_sen_tra

    ${data}    Load Json From File    ${EXECDIR}/resources/fixtures/login-mupay.json    encoding=utf-8

    Botao continue
    Campo CPF    ${data}[login][pass][cpf]
    Botao confirmar
    Campo senha    ${data}[login][pass][senha]
    Botao confirmar
    Botao continuar
    Codigo de verificacao
    Botao acessar conta
    Card perfil
    Link alterar senha transacional
    Senha transacional
    Botao continuar
    Digite sua nova senha <senha transacional>
    Confirme sua nova senha <senha transacional>
    Botao continuar
    Mensagem de sucesso    A sua senha transacional foi redefinida com sucesso.

Alterar senha transacional pelo "esqueci minha senha"
    [Tags]    esq_sen_tra

    ${data}    Load Json From File    ${EXECDIR}/resources/fixtures/login-mupay.json    encoding=utf-8

    Botao continue
    Campo CPF    ${data}[login][pass][cpf]
    Botao confirmar
    Campo senha    ${data}[login][pass][senha]
    Botao confirmar
    Botao continuar
    Codigo de verificacao
    Botao acessar conta
    Card perfil
    Link alterar senha transacional
    Link Esqueci minha senha <senha transacional>
    Digite sua nova senha <senha transacional>
    Confirme sua nova senha <senha transacional>
    Botao continuar
    Codigo de verificacao
    Mensagem de sucesso    A sua senha transacional foi redefinida com sucesso.

Desbloqueio de senha transacional
    [Tags]    des

    ${data}    Load Json From File    ${EXECDIR}/resources/fixtures/login-mupay.json    encoding=utf-8

    Botao continue
    Campo CPF    ${data}[login][pass][cpf]
    Botao confirmar
    Campo senha    ${data}[login][pass][senha]
    Botao confirmar
    Botao continuar
    Codigo de verificacao
    Botao acessar conta
    Card perfil
    Link alterar senha transacional
    Senha transacional <invalida>    1234
    Botao criar nova senha
    Digite sua nova senha <senha transacional>
    Confirme sua nova senha <senha transacional>
    Botao continuar
    Codigo de verificacao
    Mensagem de sucesso    A sua senha transacional foi redefinida com sucesso.

Tenta logar sem preencher CPF
    [Tags]    sem_cpf    cpf

    ${data}    Load Json From File    ${EXECDIR}/resources/fixtures/login-mupay.json    encoding=utf-8

    Botao continue
    Campo CPF    ${EMPTY}
    Botao confirmar
    Mensagem de erro    Esse campo é obrigatório.

Tenta logar com CPF inválido
    [Tags]    inv_cpf    cpf

    ${data}    Load Json From File    ${EXECDIR}/resources/fixtures/login-mupay.json    encoding=utf-8

    Botao continue
    Campo CPF    ${data}[login][invalido][cpf]
    Botao confirmar
    Mensagem de erro    Esse CPF está inválido.

Entrar com outra conta
    [Tags]    out

    ${data}    Load Json From File    ${EXECDIR}/resources/fixtures/login-mupay.json    encoding=utf-8

    Botao continue
    Campo CPF    ${data}[login][pass][cpf]
    Botao confirmar
    Campo senha    ${data}[login][pass][senha]
    Botao confirmar
    Botao continuar
    Codigo de verificacao
    Botao acessar conta
    Card perfil
    Scroll app
    Botao sair
    Entrar com outra conta
    Campo CPF    ${data}[login][sucesso][cpf]
    Botao confirmar
    Campo senha    ${data}[login][sucesso][senha]
    Botao confirmar
    Botao continuar
    Codigo de verificacao
    Botao acessar conta
