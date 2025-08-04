*** Settings ***
Resource  locators.robot
Resource  variables.robot
Resource  ../../library.robot

*** Keywords ***
Abrir Navegador
  [Arguments]  ${BROWSER}
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Fechar Navegador
    Close Browser
