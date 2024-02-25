from flask import Flask, request, jsonify
from uagents.query import query
from uagents import Model
from chatbot import chatbot_agent
from flask_cors import CORS

app = Flask(__name__)
CORS(app, resources={r"/send_message": {"origins": "http://localhost:3000"}})

class Message(Model):
    message: str

destination = chatbot_agent.address

@app.route('/send_message', methods=['POST'])
async def send_message():
    try:
        data = request.json
        user = data.get('user')
        res = await query(destination=destination, message=Message(message=user))
        if res is not None:
            response = res.decode_payload()
            answer = json.loads(response)
            new = json.loads(answer['message'])
            return new
        else:
            print("No match found.")
    except Exception as e:
        return jsonify({'error': str(e)})

if __name__ == "__main__":
    app.run(debug=True, port=5000)
