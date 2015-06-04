import socket
from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    s.connect(('google.com', 0))

    return "Hello from " + s.getsockname()[0] + "!"

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=80)
