from flask import Flask, render_template_string
import socket

app = Flask(__name__)

@app.route("/")
def home():
    hostname = socket.gethostname()

    return f"""
    <html>
    <body>
        <h1>Scalable Web App</h1>
        <h2>Server: {hostname}</h2>
        <p>Running on AWS EC2</p>
    </body>
    </html>
    """

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80)
