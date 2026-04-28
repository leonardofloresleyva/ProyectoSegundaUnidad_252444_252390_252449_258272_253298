*** Settings ***
Library     SeleniumLibrary
Resource    ../Variables/global_variables.robot

*** Keywords ***
# Se dirije a la página de pruebas con la url recibida
Go_To_Website
    [Arguments]     ${url}
    Open Browser    ${None}     ${browser}
    Maximize Browser Window
    Go To           ${url}

# Verifica la existencia y la visibilidad del elemento recibido
# en un tiempo de espera máximo establecido en 'timeout'
Verificar_Existencia
    [Arguments]     ${element}  ${timeout}
    Wait Until Page Contains Element    ${element}  timeout=${timeout}
    Wait Until Element Is Visible       ${element}  timeout=${timeout}