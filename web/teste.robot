*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TEMP_PROFILE}    ${CURDIR}/temp_chrome_profile

*** Keywords ***
Abrir Navegador
  [Arguments]  ${navegador}
    Open Browser  https://bugbank.netlify.app/  ${navegador}  options=add_argument(--headless)
    Sleep    5s

*** Test Cases ***
Abertura do navegador chrome
   Abrir Navegador  chrome

Abertura do navegador firefox
   Abrir Navegador  firefox