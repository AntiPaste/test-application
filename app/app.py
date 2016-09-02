import socket

from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
	return 'Hello, World, from %s, version 1.1!' % socket.gethostname()
