*** Settings ***
Library     SeleniumLibrary
Resource    ../Variables/global_variables.robot
Resource    ../Keywords/keywords.robot

*** Test Cases ***
Elementos_Que_Desaparecen
    # Se dirije al sitio de pruebas
    Go_To_Website   https://the-internet.herokuapp.com/disappearing_elements
    # Verifica la existencia del botón 'Gallery' y retorna TRUE si el botón está presente
    ${element_visible}      Run Keyword And Return Status    Verificar_Existencia   ${gallery}  2s

    # Mientras el botón no esté presente, recarga la página y vuelve a verificar su existencia
    WHILE    not ${element_visible}  limit=50
         Reload Page
         ${element_visible}      Run Keyword And Return Status    Verificar_Existencia   ${gallery}  2s
    END
    # Una vez que el botón está presente, se verifica si la página muestra su contenido
    Page Should Contain    Gallery

    # Mientras el botón está presente, recarga la página y vuelve a verificar su existencia
    WHILE    ${element_visible}  limit=50
         Reload Page
         ${element_visible}      Run Keyword And Return Status    Verificar_Existencia   ${gallery}  2s
    END
    # Una vez que el botón no esté presente, se verifica si la página no muestra su contenido
    Page Should Not Contain    Gallery