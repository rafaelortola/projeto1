*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TEMP_PROFILE}    --headless

*** Keywords ***
Abrir Navegador
  [Arguments]  ${navegador}
    Open Browser  https://bugbank.netlify.app/  ${navegador}  options=add_argument("--disable-popup-blocking"); add_argument("--ignore-certificate-errors")
    Sleep    5s

*** Test Cases ***
Abertura do navegador chrome
   Abrir Navegador  chrome

Abertura do navegador firefox
   Abrir Navegador  firefox