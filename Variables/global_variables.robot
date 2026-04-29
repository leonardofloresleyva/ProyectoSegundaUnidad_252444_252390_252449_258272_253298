*** Variables ***
# Navegador utilizado para realizar las pruebas
${browser}          chrome
# Variable utilizada en el test 'Elementos que desaparecen'
${gallery}          xpath=//div[@id='content']/div/ul/li/a[text() = 'Gallery']
# Variables utilizadas en el test 'Drag And Drop'
${a}                id=column-a
${b}                id=column-b

# Variables utilizadas en el test 'Autenticación con Formulario'
${username_field}       id=username
${password_field}       id=password
${login_button}         css=button[type='submit']
${logout_button}        css=a[href='/logout']
${success_message}      css=.flash.success
${error_message}        css=.flash.error

# Variables utilizadas en el test 'Teclas Presionadas'
${key_input}            id=target
${key_result}           id=result

# Variables utilizadas en el test 'Context Menu'
${caja}               id=hot-spot

#Variables utilizadas en el test 'Agregar y quitar elementos'
${botonAgregar}            xpath=//button[text()='Add Element']
${botonEliminar}           xpath=//button[text()='Delete']