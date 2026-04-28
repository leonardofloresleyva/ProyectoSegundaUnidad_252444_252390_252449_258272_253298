*** Variables ***
# Navegador utilizado para realizar las pruebas
${browser}          chrome
# Variable utilizada en el test 'Elementos que desaparecen'
${gallery}          xpath=//div[@id='content']/div/ul/li/a[text() = 'Gallery']
# Variables utilizadas en el test 'Drag And Drop'
${a}                id=column-a
${b}                id=column-b