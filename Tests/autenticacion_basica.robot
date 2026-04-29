*** Settings ***
Library     SeleniumLibrary
Resource    ../Variables/global_variables.robot
Resource    ../Keywords/keywords.robot

*** Test Cases ***
Autenticacion_Exitosa
    [Documentation]    Log in con credenciales válidas (admin/admin)

    # Se utiliza la keyword especial para pasar credenciales por URL
    Go_To_Authenticated_Website    admin    admin    the-internet.herokuapp.com/basic_auth
   
    # Valida que el mensaje de éxito esté presente
    Verificar_Existencia    ${auth_success_msg}    5s

    Page Should Contain    Congratulations! You must have the proper credentials.
    [Teardown]    Close Browser

Autenticacion_Invalida
    [Documentation]    Log in con credenciales inválidas (admin1/admin1)

    Go_To_Authenticated_Website    admin1    admin1    the-internet.herokuapp.com/basic_auth
    
    # Al ser inválidas, no debería mostrarse el mensaje de éxito
    Page Should Not Contain Element    ${auth_success_msg}
    [Teardown]    Close Browser