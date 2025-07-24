*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Abrir Navegador
  [Arguments]  ${navegador}
    Open Browser  https://bugbank.netlify.app/  ${navegador}
    Sleep    5s

*** Test Cases ***
Abertura do navegador chrome
   Abrir Navegador  chrome

Abertura do navegador firefox
   Abrir Navegador  firefox