from app import app

@app.route('/')
def index():
    return '¡Hello, world!'

@app.route('/saludo')
def saludo():
    return '¡Hola desde la ruta de saludo!'

