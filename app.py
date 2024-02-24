from flask import Flask, request, render_template, jsonify
from uagents.query import query
from uagents import Model
import json
from chatbot import chatbot_agent
app = Flask(__name__)

class Message(Model):
    message: str

destination = chatbot_agent.address

@app.route('/send_message', methods=['GET', 'POST'])
async def send_message():
    response = ''
    if request.method == 'POST':
        data = request.json
        user = data.get('user')
        res = await query(destination=destination, message=Message(message=user))
        # print(res,res.decode_payload())
        if res is not None:
            response = json.loads(res.decode_payload())
            print(response)
        else:
            response = "No response received from the query"
    
    return render_template("index.html", response=response)

if __name__ == "__main__":
    app.run(debug=True, port=5000)
