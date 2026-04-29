*** Settings ***
Library     SeleniumLibrary
Resource    ../Variables/global_variables.robot
Resource    ../Keywords/keywords.robot

*** Test Cases ***
Login_Exitoso
    # Se dirige a la página de pruebas
    Go_To_Website       https://the-internet.herokuapp.com/login
    # Teclea credenciales válidas y hace clic en Login
    Realizar_Login      tomsmith    SuperSecretPassword!
    # Verifica que el login fue exitoso
    Verificar_Mensaje   ${success_message}  You logged into a secure area!
    # Hace clic en el botón de Logout
    Click Element       ${logout_button}
    # Verifica que el logout fue exitoso
    Verificar_Mensaje   ${success_message}  You logged out of the secure area!

Login_Username_Invalido
    # Se dirige a la página de pruebas
    Go_To_Website       https://the-internet.herokuapp.com/login
    # Teclea username inválido y hace clic en Login
    Realizar_Login      tomsmith1   SuperSecretPassword!
    # Verifica el mensaje de error
    Verificar_Mensaje   ${error_message}    Your username is invalid!

Login_Password_Invalida
    # Se dirige a la página de pruebas
    Go_To_Website       https://the-internet.herokuapp.com/login
    # Teclea password inválida y hace clic en Login
    Realizar_Login      tomsmith    SuperS1ecretPassword!
    # Verifica el mensaje de error
    Verificar_Mensaje   ${error_message}    Your password is invalid!