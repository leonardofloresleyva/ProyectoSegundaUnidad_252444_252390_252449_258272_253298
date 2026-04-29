*** Settings ***
Library     SeleniumLibrary
Resource    ../Variables/global_variables.robot
Resource    ../Keywords/keywords.robot

*** Test Cases ***
Gestionar_Checkbox_Dinamico

    [Documentation]    Prueba de eliminar el checkbox
    Go_To_Website    https://the-internet.herokuapp.com/dynamic_controls
    
    # Verifica que el checkbox existe inicialmente
    Verificar_Existencia    ${checkbox}    5s
    
    # Clic en "Remove"
    Click Button    ${btn_remove_add}
    
    # Valida que el checkbox fue removido esperando el mensaje "It's gone!"
    
    Wait Until Element Is Visible    ${dynamic_message}    10s
    Element Should Contain           ${dynamic_message}    It's gone!
    Verificar_No_Existencia          ${checkbox}           5s
    [Teardown]    Close Browser

Gestionar_Input_Dinamico
    [Documentation]    Prueba de habilitar el campo de texto
    Go_To_Website    https://the-internet.herokuapp.com/dynamic_controls
    
    # Verifica que el input está deshabilitado al inicio
    Element Should Be Disabled    ${dynamic_input}
    
    # Clic en "Enable"
    Click Button    ${btn_enable_disable}
    
    # Valida que el input fue habilitado esperando el mensaje "It's enabled!"
    Wait Until Element Is Visible    ${dynamic_message}    10s
    Element Should Contain           ${dynamic_message}    It's enabled!
    Element Should Be Enabled        ${dynamic_input}
    [Teardown]    Close Browser