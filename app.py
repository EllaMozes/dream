from flask import Flask, jsonify, request
import requests

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hi there!'

@app.route('/json')
def get_json():
    response = requests.get('https://jsonplaceholder.typicode.com/todos')
    return jsonify(response.json())

@app.route('/json/user/<user_id>', methods=["GET"])
def get_user_tasks(user_id):
    response = requests.get(f'https://jsonplaceholder.typicode.com/users/{user_id}/todos')
    return jsonify(response.json())

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
