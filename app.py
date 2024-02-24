from flask import Flask, request, jsonify
from uagents import Agent, Context, Model
from uagents.setup import fund_agent_if_low

app = Flask(__name__)

class Message(Model):
    message: str

test_agent = Agent(
    name="test",
    seed="test_agent_seed",
    port=8001,
    endpoint=["http://127.0.0.1:8001/submit"],
)

RECIPIENT_ADDRESS = "agent1q2jfxtfxnmxyhav7nsktqgrwtuzvaklvnlmtgye6vh7uhqfcnpunuq3rt3f"

# Flag to track whether input has been taken
input_taken = False

@app.route('/send_message', methods=['POST'])
def send_message():
    global input_taken
    if not input_taken:
        user_message = request.json.get('message')
        test_agent.send(RECIPIENT_ADDRESS, Message(message=user_message))
        input_taken = True
        return jsonify({"status": "Message sent"})
    else:
        return jsonify({"status": "Input already taken"})

@app.route('/receive_message', methods=['POST'])
def receive_message():
    data = request.json
    sender_address = data.get('sender')
    message_content = data.get('message', {}).get('message')
    print("check")
    print(f"Received message from {sender_address}: {message_content}")
    return jsonify({"status": "Message received"})

if __name__ == "__main__":
    fund_agent_if_low(test_agent.wallet.address())
    test_agent.run()

    # Run Flask app
    app.run(port=5000)
