*** Settings ***
Library  SeleniumLibrary
Library  String

*** Variables ***
${URL}            https://bugbank.netlify.app/
${OPTIONS}        add_argument("--disable-popup-blocking"); add_argument("--ignore-certificate-errors")

*** Keywords ***
Abrir Navegador
  [Arguments]  ${navegador}
    Open Browser    ${URL}    ${navegador}  options=
    Maximize Browser Window