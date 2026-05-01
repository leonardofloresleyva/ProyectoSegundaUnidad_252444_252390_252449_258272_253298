*** Settings ***
Library     SeleniumLibrary
Resource    ../Variables/global_variables.robot
Resource    ../Keywords/keywords.robot

*** Test Cases ***
Validar_Menu_Flotante

    #Ir al sitio de pruebas
    Go_To_Website    https://the-internet.herokuapp.com/floating_menu

    #Desplazarse hasta el fondo de la página
    Scroll Element Into View    ${menu_home}
    Sleep    1s

    #Validar que las opciones del menú son visibles
    Verificar_Existencia    ${menu_home}       5s
    Verificar_Existencia    ${menu_news}       5s
    Verificar_Existencia    ${menu_contact}    5s
    Verificar_Existencia    ${menu_about}      5s

    #Cerrar el navegador
    Close Browser