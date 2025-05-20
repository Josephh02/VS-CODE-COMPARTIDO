from flask import Flask, render_template, request, redirect, url_for
import mysql.connector

app = Flask(__name__)







# Parámetros de conexión a la base de datos
db_config = {
    "host": "localhost",
    "user": "JOSEPH",
    "password": "otravez,yo1002",
    "database": "formulario"
}







# Insertar nuevo usuario
def insertar_usuario(nombre, email, contrasena):
    conn = mysql.connector.connect(**db_config)
    cursor = conn.cursor()
    cursor.execute(
        'INSERT INTO usuarios (nombre, email, contrasena) VALUES (%s, %s, %s)',
        (nombre, email, contrasena)
    )
    conn.commit()
    conn.close()








# Obtener usuarios
def obtener_usuarios():
    conn = mysql.connector.connect(**db_config)
    cursor = conn.cursor()
    cursor.execute('SELECT id, nombre, email FROM usuarios')
    usuarios = cursor.fetchall()
    conn.close()
    return usuarios







# Página de inicio con formulario
@app.route('/')
def formulario():
    return render_template('formulario.html')








# Procesar formulario 
@app.route('/procesar_formulario', methods=['POST'])
def procesar_formulario():
    nombre = request.form['nombre']
    email = request.form['email']
    contrasena = request.form['contrasena']
    insertar_usuario(nombre, email, contrasena)
    return redirect(url_for('exito'))





# Página de éxito
@app.route('/exito')
def exito():
    return render_template('exito.html')





# Mostrar usuarios registrados
@app.route('/usuarios')
def mostrar_usuarios():
    usuarios = obtener_usuarios()
    return render_template('index.html', usuarios=usuarios)






# Ejecutar la aplicación
if __name__ == '__main__':
    app.run(debug=True)
