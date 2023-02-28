from dotenv import load_dotenv

import os
from flask import Flask, jsonify

load_dotenv()

app = Flask(__name__)

message = os.environ.get('MESSAGE', 'Hello, World!')
port = int(os.environ.get('APP_PORT', 8080))

@app.route('/')
def get_message():
    return jsonify({'message': message})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=port)


