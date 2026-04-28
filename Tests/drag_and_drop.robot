*** Settings ***
Library     SeleniumLibrary
Resource    ../Variables/global_variables.robot
Resource    ../Keywords/keywords.robot

*** Test Cases ***
Drag_And_Drop
    # Se dirije a la página de pruebas
    Go_To_Website   https://the-internet.herokuapp.com/drag_and_drop
    # Verifica que a y b estén presentes
    Verificar_Existencia        ${a}    2s
    Verificar_Existencia        ${b}    2s
    # Arrastra la caja 'A' a la caja 'B'
    Drag And Drop               ${a}    ${b}
    # Verifica que 'B' esté en la caja a
    Element Should Contain      ${a}    B
    # Verifica que 'A' esté en la caja b
    Element Should Contain      ${b}    A
    # Arrastra la caja 'B' a la caja 'A'
    Drag And Drop               ${b}    ${a}
    # Verifica que 'A' esté en la caja a
    Element Should Contain      ${a}    A
    # Verifica que 'B' esté en la caja b
    Element Should Contain      ${b}    B