from flask import Flask
import socket

app = Flask(__name__)

@app.route("/")
def hello():
    return f"Hello from container: {socket.gethostname()}\n"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
