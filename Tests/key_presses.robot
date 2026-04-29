*** Settings ***
Library     SeleniumLibrary
Resource    ../Variables/global_variables.robot
Resource    ../Keywords/keywords.robot

*** Test Cases ***
Tecla_ESC
    # Se dirige a la página de pruebas
    Go_To_Website       https://the-internet.herokuapp.com/key_presses
    # Hace clic en el campo de texto y presiona ESC
    Click Element       ${key_input}
    Press Keys          ${key_input}    ESCAPE
    # Verifica que se muestre el mensaje correcto
    Verificar_Mensaje   ${key_result}   You entered: ESCAPE

Tecla_Espacio
    # Se dirige a la página de pruebas
    Go_To_Website       https://the-internet.herokuapp.com/key_presses
    # Hace clic en el campo de texto y presiona Espacio
    Click Element       ${key_input}
    Press Keys          ${key_input}    SPACE
    # Verifica que se muestre el mensaje correcto
    Verificar_Mensaje   ${key_result}   You entered: SPACE