*** Settings ***
Resource  ../resources/global_keywords.robot

Test Setup  Abrir Navegador  Chrome
Test Teardown  Close Browser

*** Keywords ***
Digitar email
  [Arguments]  ${email}
  Wait Until Element Is Visible    ${LOCATOR_CAMPO_EMAIL}   timeout=10s
  Input Text    ${LOCATOR_CAMPO_EMAIL}    ${email}

Digitar senha
  [Arguments]  ${senha}
  Wait Until Element Is Visible    ${LOCATOR_CAMPO_SENHA}   timeout=10s
  Input Text    ${LOCATOR_CAMPO_SENHA}    ${senha}  

Clicar no botão
  [Arguments]  ${botao}
  Click Button    ${LOCATOR_BOTAO_ACESSAR}

Validar mensagem de erro
  [Arguments]  ${mensagem}
  Wait Until Element Is Visible    ${LOCATOR_MENSAGEM_ERRO}    timeout=10s

Validar mensagem de erro do modal
  [Arguments]  ${mensagem}
  Wait Until Element Is Visible    ${LOCATOR_MODAL_TEXTO}    timeout=10s
  ${mensagem_tela}=    Get Text    ${LOCATOR_MODAL_TEXTO}
    ${mensagem_unica}=    Replace String    ${mensagem_tela}    \n    ${SPACE}
    Log To Console    ${mensagem_unica}
    Should Be Equal As Strings    ${mensagem_unica}    ${mensagem}

*** Test Cases ***
Validar campo email como obrigatório
   [Documentation]  Verifica se o campo email é obrigatório ao tentar acessar sem preenchê-lo
   Digitar senha  teste
   Clicar no botão  Acessar
   Validar mensagem de erro  É campo obrigatório

Validar campo senha como obrigatório
   [Documentation]  Verifica se o campo senha é obrigatório ao tentar acessar sem preenchê-lo
   Digitar email  teste@teste.com
   Clicar no botão  Acessar
   Validar mensagem de erro  É campo obrigatório

Logar com dados inválidos
   [Documentation]  Verifica se o login falha com dados inválidos
   Digitar email  testeinvalido@gmail.com
   Digitar senha  123
   Clicar no botão  Acessar
   Validar mensagem de erro do modal  Usuário ou senha inválido. Tente novamente ou verifique suas informações!