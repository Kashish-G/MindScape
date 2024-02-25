# from flask import Flask, request, render_template, jsonify
# from uagents.query import query
# from uagents import Model
# import json
# from chatbot import chatbot_agent
# app = Flask(__name__)

# class Message(Model):
#     message: str

# destination = chatbot_agent.address

# @app.route('/send_message', methods=['GET', 'POST'])
# async def send_message():
#     response = ''
#     if request.method == 'POST':
#         data = request.json
#         user = data.get('user')
#         res = await query(destination=destination, message=Message(message=user))
#         # print(res,res.decode_payload())
#         if res is not None:
#             response = json.loads(res.decode_payload())
#             print(response)
#         else:
#             response = "No response received from the query"
    
#     return render_template("index.html", response=response)

# if __name__ == "__main__":
#     app.run(debug=True, port=5000,host = '0.0.0.0')
from flask import Flask, request, render_template, jsonify
from uagents.query import query
from uagents import Model
import json
from chatbot import chatbot_agent
from flask_cors import CORS

app = Flask(__name__)
#10.200.208.30
CORS(app, resources={r"/send_message": {"origins": "http://0.0.0.0:8000"}})

class Message(Model):
    message: str

destination = chatbot_agent.address

@app.route('/send_message', methods=['GET', 'POST'])
async def send_message():
    if request.method == 'POST':
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
            