from flask import Flask, request, jsonify
from uagents import Agent, Context, Model
from uagents.setup import fund_agent_if_low
from flask import Flask, request, render_template, jsonify
from uagents.query import query
from uagents import Model
import json

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

destination = "agent1q2jfxtfxnmxyhav7nsktqgrwtuzvaklvnlmtgye6vh7uhqfcnpunuq3rt3f"
@app.route('/send_message', methods=['POST'])
async def send_message():
    if request.method== 'POST':
        data = request.json
        user = data.get('user')
        res = await query(destination=destination, message=Message(message = user))
        # statuses = json.loads(res.decode_payload())
        response = res.decode_payload()
        print(response)
        return render_template("index.html", response = response)



if __name__ == "_main_":
    app.run(debug=True, port=5000)