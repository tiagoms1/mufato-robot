*** Settings ***
Documentation       Elementos screen page

Resource            ../base.resource
Library             XML


*** Keywords ***
### acesso ao app ###
Botao continue
    ${el} =    Set Variable    xpath=//android.widget.TextView[@text="CONTINUE"]
    Wait Until Element Is Visible    ${el}    timeout=30
    Click Element    ${el}

Campo CPF
    [Arguments]    ${cpf}

    Wait Until Page Contains    text=Para começar, insira seu documento

    ${el} =    Set Variable    accessibility_id=input-document

    Wait Until Element Is Visible    ${el}    timeout=30
    Clear Text    ${el}
    Input Text    ${el}    ${cpf}
    Hide keyboard

Botao confirmar
    ${el} =    Set Variable    xpath=//android.widget.TextView[@text="CONFIRMAR"]

    Wait Until Element Is Visible    ${el}    timeout=30
    Click Element    ${el}

Campo senha
    [Arguments]    ${senha}

    Wait Until Page Contains    text=Para acessar digite a sua senha.

    ${el} =    Set Variable    accessibility_id=input-password
    Wait Until Element Is Visible    ${el}    timeout=30
    Input Text    ${el}    ${senha}
    Hide keyboard

Botao continuar
    Sleep    2
    ${el} =    Set Variable    xpath=//android.widget.TextView[@text="CONTINUAR"]
    Wait Until Element Is Visible    ${el}    timeout=30
    Click Element    ${el}

Codigo de verificacao
    Wait Until Page Contains    text=Enviamos um código de verificação para você. Preencha-o abaixo:

    ${el} =    Set Variable
    ...    xpath=//android.widget.EditText[@resource-id="verification-code-input"]

    Wait Until Element Is Visible    ${el}    timeout=30

    ${code} =    Set Variable    000000
    Sleep    5
    Input Text    ${el}    ${code}

    ${el_buuton} =    Set Variable    xpath=//android.widget.TextView[@text="CONTINUAR"]

    Wait Until Element Is Visible    ${el_buuton}    timeout=30
    Element Should Be Enabled    ${el_buuton}

    Click Element    ${el_buuton}

Botao acessar conta
    Wait Until Page Contains    text=Eba! Aparelho autorizado!!
    Wait Until Page Contains
    ...    text=Perfeito! Agora você já consegue realizar as suas transações de forma segura utilizando a sua Conta

    ${el} =    Set Variable    xpath=//android.widget.TextView[@text="ACESSAR CONTA"]

    Wait Until Element Is Visible    ${el}    timeout=30
    Click Element    ${el}

    Wait Until Page Contains    text=Saldo atual

Scroll app
    Swipe By Percent    50    90    50    10

Link esqueceu a sua senha
    ${el} =    Set Variable    xpath=//android.widget.TextView[@text="Esqueceu a sua senha?"]

    Wait Until Element Is Visible    ${el}    timeout=30
    Click Element    ${el}

Campo digite sua senha
    [Arguments]    ${senha}

    ${el} =    Set Variable    xpath=//android.widget.EditText[@content-desc="input-new-password"]
    Wait Until Element Is Visible    ${el}    timeout=30
    Clear Text    ${el}
    Input Text    ${el}    ${senha}

Campo confirme a senha
    [Arguments]    ${confirme_senha}

    ${el} =    Set Variable    xpath=//android.widget.EditText[@content-desc="input-confirm-new-password"]
    Wait Until Element Is Visible    ${el}    timeout=30
    Click Element    ${el}
    Input Text    ${el}    ${confirme_senha}

### pagina principal ###

Card perfil
    ${el} =    Set Variable    xpath=//android.widget.TextView[@text="Perfil"]
    Wait Until Element Is Visible    ${el}    timeout=30
    Click Element    ${el}

Card meus cartoes
    ${el} =    Set Variable    xpath=//android.widget.TextView[@text="Meus cartões"]
    Wait Until Element Is Visible    ${el}    timeout=30
    Click Element    ${el}

Card extrato
    ${el} =    Set Variable    xpath=//android.widget.TextView[@text="Extrato"]
    Wait Until Element Is Visible    ${el}    timeout=30
    Click Element    ${el}

Card pix
    ${el} =    Set Variable    xpath=//android.widget.TextView[@text="Pix"]
    Wait Until Element Is Visible    ${el}    timeout=30
    Click Element    ${el}

Card depositar
    ${el} =    Set Variable    xpath=//android.widget.TextView[@text="Depositar"]
    Wait Until Element Is Visible    ${el}    timeout=30
    Click Element    ${el}

Dados pessoais
    ${el} =    Set Variable    xpath=//android.widget.TextView[@text="Dados pessoais"]
    Wait Until Element Is Visible    ${el}    timeout=30
    Click Element    ${el}

Deposito via boleto
    ${el} =    Set Variable    xpath=//android.widget.TextView[@text="Depósito via boleto"]
    Wait Until Element Is Visible    ${el}    timeout=30
    Click Element    ${el}

Valor do deposito
    [Arguments]    ${valor}

    ${el} =    Set Variable    xpath=//android.widget.EditText[@content-desc="input-value-deposit"]
    Wait Until Element Is Visible    ${el}    timeout=30
    Input Text    ${el}    ${valor}

Extrato pix
    Sleep    3
    ${el} =    Set Variable    xpath=//android.widget.TextView[@text="Extrato Pix"]
    Wait Until Element Is Visible    ${el}    timeout=30
    Click Element    ${el}

Extrato pix <agendado>
    ${el} =    Set Variable    xpath=//android.widget.TextView[@text="Agendados"]
    Wait Until Element Is Visible    ${el}    timeout=30
    Click Element    ${el}

Opicao entrada
    Sleep    3
    ${el} =    Set Variable    xpath=//android.widget.TextView[@text="Entrada"]
    Wait Until Element Is Visible    ${el}    timeout=30
    Click Element    ${el}

Opicao saida
    Sleep    3
    ${el} =    Set Variable    xpath=//android.widget.TextView[@text="Saída"]
    Wait Until Element Is Visible    ${el}    timeout=30
    Click Element    ${el}

Opicao futuro
    Sleep    3
    ${el} =    Set Variable    xpath=//android.widget.TextView[@text="Futuro"]
    Wait Until Element Is Visible    ${el}    timeout=30
    Click Element    ${el}

Cartao virtual
    [Arguments]    ${data}
    ${xpath} =    Set Variable    xpath=//*[contains(@content-desc, "${data}")]
    Wait Until Element Is Visible    ${xpath}    timeout=30
    Click Element    ${xpath}

Gerar novo cartao
    ${el} =    Set Variable    xpath=//android.view.ViewGroup[@content-desc="Gerar novo cartão"]
    Wait Until Element Is Visible    ${el}    timeout=30
    Click Element    ${el}

Gerar novo cartao virtual
    ${el} =    Set Variable    xpath=//android.view.ViewGroup[@content-desc="GERAR CARTÃO"]
    Wait Until Element Is Visible    ${el}    timeout=30
    Click Element    ${el}

Ver dados do cartao
    ${el} =    Set Variable    xpath=//android.view.ViewGroup[@content-desc="Ver dados do cartão"]
    Wait Until Element Is Visible    ${el}    timeout=30
    Click Element    ${el}

Link alterar senha do app
    ${el} =    Set Variable    xpath=//android.widget.TextView[@text="Alterar senha do app"]
    Wait Until Element Is Visible    ${el}    timeout=30
    Click Element    ${el}

Botao entendi
    ${el} =    Set Variable    xpath=//android.widget.TextView[@text="ENTENDI"]
    Wait Until Element Is Visible    ${el}    timeout=30
    Click Element    ${el}

Campo senha atual
    [Arguments]    ${senha_atual}

    ${el} =    Set Variable    xpath=//android.widget.EditText[@content-desc="edit-password-current-password-input"]

    Wait Until Element Is Visible    ${el}    timeout=30
    Input Text    ${el}    ${senha_atual}
    Hide keyboard

Campo nova senha
    [Arguments]    ${senha_nova}

    ${el} =    Set Variable    xpath=//android.widget.EditText[@content-desc="edit-password-new-password-input"]

    Wait Until Element Is Visible    ${el}    timeout=30
    Input Text    ${el}    ${senha_nova}
    Hide keyboard

Campo confirmar nova senha
    [Arguments]    ${confirmar_senha_nova}

    ${el} =    Set Variable    xpath=//android.widget.EditText[@content-desc="edit-password-confirm-password-input"]

    Wait Until Element Is Visible    ${el}    timeout=30
    Input Text    ${el}    ${confirmar_senha_nova}
    Hide keyboard

Mensagem de sucesso
    [Arguments]    ${mensagem}

    Wait Until Page Contains    text=${mensagem}

Mensagem de erro
    [Arguments]    ${mensagem}

    Wait Until Page Contains    text=${mensagem}

Link alterar senha transacional
    ${el} =    Set Variable    xpath=//android.widget.TextView[@text="Alterar senha transacional"]

    Wait Until Element Is Visible    ${el}    timeout=30
    Click Element    ${el}

Link Esqueci minha senha <senha transacional>
    ${el} =    Set Variable    xpath=//android.widget.TextView[@text="Esqueci minha senha"]

    Wait Until Element Is Visible    ${el}    timeout=30
    Click Element    ${el}

Senha transacional
    ${el} =    Set Variable    xpath=//android.widget.EditText[@resource-id="smooth-pin-code-input"]
    Wait Until Element Is Visible    ${el}    30
    Input Text    ${el}    3256

Senha transacional <invalida>
    [Arguments]    ${senha_inv}
    ${el} =    Set Variable    xpath=//android.widget.EditText[@resource-id="smooth-pin-code-input"]
    Wait Until Element Is Visible    ${el}    30
    Input Text    ${el}    ${senha_inv}

    Botao continuar

    ${el_pop} =    Set Variable    xpath=//android.widget.TextView[@text="X Fechar"]
    Wait Until Element Is Visible    ${el_pop}    timeout=30
    Click Element    ${el_pop}

    ${el2} =    Set Variable    xpath=//android.widget.EditText[@resource-id="smooth-pin-code-input"]
    Wait Until Element Is Visible    ${el2}    30
    Input Text    ${el2}    ${senha_inv}

    Botao continuar

    ${el_pop} =    Set Variable    xpath=//android.widget.TextView[@text="X Fechar"]
    Wait Until Element Is Visible    ${el_pop}    timeout=30
    Click Element    ${el_pop}

    ${el3} =    Set Variable    xpath=//android.widget.EditText[@resource-id="smooth-pin-code-input"]
    Wait Until Element Is Visible    ${el3}    30
    Input Text    ${el3}    ${senha_inv}

    Botao continuar

Botao criar nova senha
    Wait Until Page Contains    text=Cartão bloqueado

    ${el} =    Set Variable    xpath=//android.view.ViewGroup[@content-desc="CRIAR NOVA SENHA"]
    Wait Until Element Is Visible    ${el}    timeout=30
    Click Element    ${el}

Digite sua nova senha <senha transacional>
    ${el} =    Set Variable    xpath=//android.widget.EditText[@resource-id="set-password-new-pin-input"]
    Wait Until Element Is Visible    ${el}    30
    Input Text    ${el}    3256

Confirme sua nova senha <senha transacional>
    ${el} =    Set Variable    xpath=//android.widget.EditText[@resource-id="set-password-confirm-new-pin-input"]
    Wait Until Element Is Visible    ${el}    30
    Input Text    ${el}    3256

Fechar pop-up
    ${el} =    Set Variable    xpath=//android.widget.TextView[@text="X Fechar"]
    Wait Until Element Is Visible    ${el}    timeout=30
    Click Element    ${el}

Entrar com outra conta
    ${el} =    Set Variable    xpath=//android.widget.TextView[@text="Entrar com outra conta"]
    Wait Until Element Is Visible    ${el}    timeout=30
    Click Element    ${el}

Botao sair
    Sleep    2
    ${el} =    Set Variable    xpath=//android.view.ViewGroup[@content-desc="Sair"]
    Wait Until Element Is Visible    ${el}    timeout=30
    Click Element    ${el}

    Sleep    2
    ${el1} =    Set Variable    xpath= //android.widget.TextView[@text="SIM"]
    Wait Until Element Is Visible    ${el1}    timeout=30
    Click Element    ${el1}

Transferir <pix>
    Sleep    5
    ${el1} =    Set Variable    xpath=//android.view.ViewGroup[@content-desc="access-transfer-pix"]
    Wait Until Element Is Visible    ${el1}    timeout=30
    Click Element    ${el1}

Novo contato
    ${el1} =    Set Variable    xpath=//android.view.ViewGroup[@content-desc="Novo contato"]
    Wait Until Element Is Visible    ${el1}    timeout=30
    Click Element    ${el1}

Celular
    Cole a chave Pix <nao>

    Sleep    4
    ${el1} =    Set Variable    xpath=//android.view.ViewGroup[@content-desc="Celular"]
    Wait Until Element Is Visible    ${el1}    timeout=30
    Click Element    ${el1}

Campo chave numero de celular
    [Arguments]    ${chave}
    Sleep    4
    ${el} =    Set Variable    xpath=//android.widget.EditText[@resource-id="transfer-select-key-phoneNumber-input"]
    Wait Until Element Is Visible    ${el}    30
    Input Text    ${el}    ${chave}

CPF/CNPJ
    Cole a chave Pix <nao>

    Sleep    4
    ${el1} =    Set Variable    xpath=//android.view.ViewGroup[@content-desc="CPF/CNPJ"]
    Wait Until Element Is Visible    ${el1}    timeout=30
    Click Element    ${el1}

Campo chave cpf/cnpj
    [Arguments]    ${chave}
    ${el} =    Set Variable
    ...    xpath=//android.widget.EditText[@resource-id="transfer-select-key-nationalRegistration-input"]
    Wait Until Element Is Visible    ${el}    30
    Input Text    ${el}    ${chave}

Email
    Cole a chave Pix <nao>

    Sleep    4
    ${el1} =    Set Variable    xpath=//android.view.ViewGroup[@content-desc="E-mail"]
    Wait Until Element Is Visible    ${el1}    timeout=30
    Click Element    ${el1}

Campo chave e-mail
    [Arguments]    ${chave}
    ${el} =    Set Variable
    ...    xpath=//android.widget.EditText[@resource-id="transfer-select-key-nationalRegistration-input"]
    Wait Until Element Is Visible    ${el}    30
    Input Text    ${el}    ${chave}

Chave aleatoria
    Cole a chave Pix <nao>
    Sleep    4
    ${el} =    Set Variable    xpath=//android.view.ViewGroup[@content-desc="Aleatória"]
    Wait Until Element Is Visible    ${el}    timeout=30
    Click Element    ${el}

Campo chave aleatoria
    [Arguments]    ${chave}
    Sleep    4
    ${el} =    Set Variable
    ...    xpath=//android.widget.EditText[@resource-id="transfer-select-key-evp-input"]
    Wait Until Element Is Visible    ${el}    30
    Input Text    ${el}    ${chave}

Cole a chave Pix <nao>
    ${el1} =    Set Variable    xpath=//android.view.ViewGroup[@content-desc="Não"]
    Wait Until Element Is Visible    ${el1}    timeout=30
    Click Element    ${el1}

Campo valor
    [Arguments]    ${valor}

    ${el} =    Set Variable    xpath=//android.widget.EditText[@content-desc="input-value-pix"]
    Wait Until Element Is Visible    ${el}    30
    Input Text    ${el}    ${valor}

Botao finalizar
    ${el1} =    Set Variable    xpath=//android.widget.TextView[@text="FINALIZAR"]
    Wait Until Element Is Visible    ${el1}    timeout=30
    Click Element    ${el1}

    Sleep    10

 Receber pix
    ${el1} =    Set Variable    xpath=//android.view.ViewGroup[@content-desc="access-receive-pix"]
    Wait Until Element Is Visible    ${el1}    timeout=30
    Click Element    ${el1}

Selecionar chave
    ${el1} =    Set Variable    xpath=//android.view.ViewGroup[@content-desc="select-key"]
    Wait Until Element Is Visible    ${el1}    timeout=30
    Click Element    ${el1}

    
