from uagents import Agent, Context, Model
from uagents.setup import fund_agent_if_low

class Message(Model):
    message: str

test_agent = Agent(
    name="test",
    seed="test_agent_seed",
    port=8001,
    endpoint=["http://127.0.0.1:8001/submit"],)

RECIPIENT_ADDRESS = "agent1q2jfxtfxnmxyhav7nsktqgrwtuzvaklvnlmtgye6vh7uhqfcnpunuq3rt3f"

# Flag to track whether input has been taken
input_taken = False

@test_agent.on_interval(period=2.0)
async def send_message(ctx: Context):
    global input_taken
    if not input_taken:
        user = input("How may I help you?: ")
        await ctx.send(RECIPIENT_ADDRESS, Message(message=user))
        input_taken = True

@test_agent.on_message(model=Message)
async def message_handler(ctx: Context, sender: str, msg: Message):
    print("check")
    ctx.logger.info(msg.message)

if __name__ == "__main__":
    fund_agent_if_low(test_agent.wallet.address())
    test_agent.run()
