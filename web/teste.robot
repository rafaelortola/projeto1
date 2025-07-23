*** Settings ***
Library    BuiltIn

*** Keywords ***
Soma de dois numeros
  [Arguments]  ${n1}  ${n2}
    Log To Console    Etapa1: Somou
    ${resultado}=    Evaluate    ${n1} + ${n2}
    Log To Console    Etapa2: validou o resultado da soma
    Should Be Equal As Numbers    ${resultado}    5


*** Test Cases ***
Verificar Soma de Dois Números
    Soma de dois numeros  3  2