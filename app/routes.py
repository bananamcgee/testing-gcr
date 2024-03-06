from app import app

@app.route('/')
def index():
    return '¡Hola, mundo!'

@app.route('/saludo')
def saludo():
    return '¡Hola desde la ruta de saludo!'

