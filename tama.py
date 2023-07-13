from flask import Flask, request, jsonify
import json
from flask import Flask
from flask_cors import CORS

app = Flask(__name__)
CORS(app)



# Create a global list to store the JSON data
data_list = []

@app.route('/api/form', methods=['POST'])
def handle_form():
    # Get the JSON object from the request body
    data = request.get_json()

    # Append the JSON data to the list
    data_list.append(data)

    # Print the updated data list for debugging
    print(data_list)

    # Return a success response with a message
    return jsonify({'message': 'Data received successfully'}), 200

@app.route('/api/list', methods=['GET'])
def get_data_list():
    # Return the stored data list as a response
    return jsonify(data_list), 200

if __name__ == '__main__':
    app.run(port=5000)
