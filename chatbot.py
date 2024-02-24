"""
At the command line, only need to run once to install the package via pip:

$ pip install google-generativeai
"""

from uagents.query import query
from uagents import Agent, Context, Model
from uagents.setup import fund_agent_if_low
# import requests

class Message(Model):
    message: str

class Messages(Model):
    messages: list[Message]

import google.generativeai as genai

chatbot_agent = Agent(
    name="chatbot",
    seed="chatbot_seed",
    port=8000,
    endpoint=["http://127.0.0.1:8000/submit"],)
# print(chatbot_agent.address)

genai.configure(api_key="AIzaSyAICt3N6_7M5k1rabLvPESlCixWHyzsq6o")

# Set up the model
generation_config = {
    "temperature": 0.9,
    "top_p": 1,
    "top_k": 1,
    "max_output_tokens": 2048,
}

safety_settings = [
    {"category": "HARM_CATEGORY_HARASSMENT", "threshold": "BLOCK_MEDIUM_AND_ABOVE"},
    {"category": "HARM_CATEGORY_HATE_SPEECH", "threshold": "BLOCK_MEDIUM_AND_ABOVE"},
    {
        "category": "HARM_CATEGORY_SEXUALLY_EXPLICIT",
        "threshold": "BLOCK_MEDIUM_AND_ABOVE",
    },
    {
        "category": "HARM_CATEGORY_DANGEROUS_CONTENT",
        "threshold": "BLOCK_MEDIUM_AND_ABOVE",
    },
]

model = genai.GenerativeModel(
    model_name="gemini-pro",
    generation_config=generation_config,
    safety_settings=safety_settings,
)
print(chatbot_agent.address)
# input_text = input("Enter the text: ")
# in flask:
# await query(destination='agent1q2jfxtfxnmxyhav7nsktqgrwtuzvaklvnlmtgye6vh7uhqfcnpunuq3rt3f',message=Message(product=product,quantity=quantity))

@chatbot_agent.on_query(model=Message, replies=Message)
async def get_status_handler(ctx: Context, sender: str, msg: Message):
    input_string = msg.message
    
    # await ctx.send('agent1q2grgx3lfpgx00m60njdmxmxq37f85vp6lwtpget9g06cwytft5tsuq7gu5', Message(message="hello there sigmar"))

# def llm_model(ctx: Context, sender: str, msg: Message, input_string):

    classification_prompt = [
        f"""
          Given a raw text input to a language model select the model prompt best suited for the input, depending on what the user seems to need: 'friend' or 'mental_health_assistant'
          You may also revise the original input if you think that revising it will ultimately lead to a better response from the language model, 
          give output as either 'friend' or 'mental_health_assistant' based on this user input
          given user input: {input_string}
          """
    ]

    response = model.generate_content(classification_prompt)

    if "mental_health_assistant" in response.text:
        mentalassistant=[f"""
        Role:Your role is that of  AI assistant for mental health.\
        The user will ask a question for help regarding mental health or as an answer to a question based on chat history.\
        Your goal is to help users using cognitive behavioral therapy by giving a understanding,empathetic,engaging and discursive response\
        . You should be knowledgeable about all aspects of this technique\
        and be able to provide clear and concise answers to users’ questions.\
        Some sample interaction styles must be:\n

        User: "I've been feeling really overwhelmed lately. It's like everything is just too much to handle, and I don't know what to do."
        Empathetic Chatbot: "I'm really sorry to hear that you're feeling this way. It's completely normal to feel overwhelmed at times, and you're not alone in experiencing this. If you'd like,
        I'm here to listen and offer support. \
        Can you tell me more about what's been on your mind recently, or is there a specific situation that's been causing you distress?"
        User: "I've been feeling so lonely lately, and it's really getting to me."

        Empathetic Chatbot: "I'm really sorry to hear that you're feeling lonely. Loneliness can be tough to deal with, but you're not alone in experiencing it. If you're comfortable, could you share more about what's been contributing to your loneliness or if there's anything specific you'd like to talk about?"

        User: "I just can't seem to shake this feeling of sadness. It's been going on for weeks."

        Empathetic Chatbot: "I'm here for you, and I'm really sorry to hear that you've been feeling this way for so long. It's important to acknowledge your feelings. If you're comfortable, could you tell me more about what's been on your mind or if there have been any recent changes in your life that might be affecting your mood?"

        User: "I messed up at work, and I feel like such a failure."

        Empathetic Chatbot: "I'm sorry to hear that you're going through this. Remember, making mistakes is a part of being human, and it doesn't define your worth. Can you share more about what happened or how you're feeling about it? Sometimes talking it out can help you process and find a way forward."

        User: "I can't sleep at night, and I'm constantly worried about the future."

        Empathetic Chatbot: "I'm here to listen. It sounds like you're experiencing a lot of stress and anxiety. These feelings can be really tough to deal with. Would you like to talk about what's been keeping you up at night, or are there specific worries that you'd like to address together?"

        User: "I'm feeling so lost in life, like I don't know my purpose anymore."

        Empathetic Chatbot: "I'm here to support you. Feeling lost is something many people go through at some point. It can be an opportunity for self-discovery. If you're comfortable, could you share more about what you're going through or what aspects of your life you're struggling with right now?"

        Remember to maintain a non-judgmental and compassionate tone while providing the answer
        Response must be in a JSON formatted dictionary with the following keys \
        "Answer", "Suicidal".\
        with each key having the following definition:\
        answer - has the response to the users question as a mental health specialist \
        suicidal - if the person is showing suicidal tendencies (true/false)\
        
        ### Question: {input_string}
        ### Response: 
        """.strip()]

        response = model.generate_content(mentalassistant)
        # response=requests.post('http://127.0.0.1:5000/llm_input',data=response.text)
        print("Agent: ",response.text)
        # await ctx.send("agent1q2grgx3lfpgx00m60njdmxmxq37f85vp6lwtpget9g06cwytft5tsuq7gu5", Message(message = response.text))  # goes to input agent
        await ctx.send(sender, Message(message=response.text))
        processed_result = (
            f"success"
        )
        # return str(processed_result)

    elif "friend" in response.text:
        friend = [
            f""" Your role is that of a therapist for mental health .\
        you must speak eloquently and positively to the user in a conversational manner.
        The response of the chatbot should be happy,must make the client feel that the llm is his friend.\
        The responses should be conversational and chatty.The tone must make the user get the impression\
        that he can confide in u and talk freely.
        Use the given question of the user and chat history to give conversational responses
        The answers should be empathetic,engaging and discursive
        
        ###Question: {input_string}
        Response must be in a JSON formatted dictionary with the following keys \
        "Answer", "Suicidal"\
        with each key having the following definition:\
        answer - has the response to the users question as a mental health specialist \
        suicidal - if the person is showing suicidal tendencies (true/false)
        ###Response:
        """.strip()]

        response = model.generate_content(friend)
        print("Agent: ", response.text)
        # response=requests.post('http://127.0.0.1:5000/llm_input',data=response.text)
        print(response)
        await ctx.send(sender, Message(message=response.text))  # goes back
        processed_result = (
            f"success"
        )
        # return str(response.text)

    # else:
    #     return "Invalid response"


if __name__ == "__main__":
    fund_agent_if_low(chatbot_agent.wallet.address())
    chatbot_agent.run()