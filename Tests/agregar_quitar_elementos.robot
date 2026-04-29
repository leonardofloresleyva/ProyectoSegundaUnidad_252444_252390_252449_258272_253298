*** Settings ***
Library     SeleniumLibrary
Resource    ../Variables/global_variables.robot
Resource    ../Keywords/keywords.robot

*** Test Cases ***
Agregar_quitar_elementos
    
    #Ir al sitio de pruebas
    Go_To_Website    https://the-internet.herokuapp.com/add_remove_elements/

    #Se utilizo la funcion FOR para iterar sobre el click en el elemento del boton de agregar
    FOR    ${i}    IN RANGE    20
        Click Element    ${botonAgregar}
    END

    #Se utilizo la funcion para saber si existen los elementos, se establecio un limite de 20
    Page Should Contain Element    ${botonEliminar}    limit=20

    #Se utilizo la funcion FOR para iterar sobre el click en el elemento del boton de eliminar
    FOR    ${i}    IN RANGE    20
        Click Element    ${botonEliminar}
    END
    
    #Esta funcion solo verifica que todos los botones de eliminar hayan desaparecido
    Page Should Not Contain Element    ${botonEliminar}

    #Cerrar el navegador
    Close Browser