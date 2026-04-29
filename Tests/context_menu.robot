*** Settings ***
Library     SeleniumLibrary
Resource    ../Variables/global_variables.robot
Resource    ../Keywords/keywords.robot

*** Test Cases ***
Validar_Click_Menu

    #Ir al sitio de pruebas
    Go_To_Website    https://the-internet.herokuapp.com/context_menu
    
    #Verificar que exista la caja en el link
    Verificar_Existencia    ${caja}    5s

    #Click derecho en la caja
    Open Context Menu    ${caja}

    #Verificar que el mensaje de la alerta es igual a You selected a context menu
    #Dar click en aceptar
    Alert Should Be Present    You selected a context menu

    #Verificamos que la alerta desaparecio despues de dar click en aceptar
    Alert Should Not Be Present

    #Cerramos el Navegador
    Close Browser