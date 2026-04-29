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

# Escribe el username y password recibidos y hace clic en el botón de login
Realizar_Login
    [Arguments]     ${username}     ${password}
    Input Text      ${username_field}   ${username}
    Input Text      ${password_field}   ${password}
    Click Button    ${login_button}

# Verifica que el mensaje de la página contenga el texto recibido
Verificar_Mensaje
    [Arguments]     ${element}      ${texto}    ${timeout}=5s
    Wait Until Element Is Visible   ${element}  timeout=${timeout}
    Element Should Contain          ${element}  ${texto}