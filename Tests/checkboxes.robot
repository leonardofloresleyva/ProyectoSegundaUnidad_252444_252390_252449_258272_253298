*** Settings ***
Library     SeleniumLibrary
Resource    ../Variables/global_variables.robot
Resource    ../Keywords/keywords.robot

*** Test Cases ***
Validar_Checkboxes

    #Ir al sitio de pruebas
    Go_To_Website    https://the-internet.herokuapp.com/checkboxes

    #Seleccionar el Checkbox 1 y validar que fue marcado
    Select Checkbox             ${checkbox1}
    Checkbox Should Be Selected    ${checkbox1}

    #Seleccionar el Checkbox 2 y validar que fue marcado
    Unselect Checkbox           ${checkbox2}
    Select Checkbox             ${checkbox2}
    Checkbox Should Be Selected    ${checkbox2}

    #Cerrar el navegador
    Close Browser