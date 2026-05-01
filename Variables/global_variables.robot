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

#Variables utilizadas en el test 'Autenticación Básica'
${auth_success_msg}    xpath=//p[contains(text(), 'Congratulations')]

#Variables utilizadas en el test 'Controles Dinámicos'
${btn_remove_add}      xpath=//button[text()='Remove' or text()='Add']
${btn_enable_disable}  xpath=//button[text()='Enable' or text()='Disable']
${checkbox}            id=checkbox
${dynamic_input}       xpath=//input[@type='text']
${dynamic_message}     id=message

#Variables utilizadas en el test 'Checkboxes'
${checkbox1}            xpath=//form[@id='checkboxes']/input[1]
${checkbox2}            xpath=//form[@id='checkboxes']/input[2]

#Variables utilizadas en el test 'Menú Flotante'
${menu_home}            xpath=//div[@id='menu']/ul/li/a[text()='Home']
${menu_news}            xpath=//div[@id='menu']/ul/li/a[text()='News']
${menu_contact}         xpath=//div[@id='menu']/ul/li/a[text()='Contact']
${menu_about}           xpath=//div[@id='menu']/ul/li/a[text()='About']