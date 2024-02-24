import React, { useEffect, useState } from "react";
import FrameComponent8 from "../components/FrameComponent8";
import { GiTwirlyFlower } from "react-icons/gi";
import Chatbox from "../components/Chatbox";
import { IoMdSend } from "react-icons/io";
import { FaCircleUser } from "react-icons/fa6";
import axios from 'axios';

const Minfulmate = () => {
  const [messages, setMessages] = useState([]);
  const [prompt, setprompt] = useState("");
  const [count, setcount] = useState(0);

  const members = [
    {
      name: "Tanay Dave",
      text: "Hey, What's up ?",
    },
    {
      name: "Medha Shah",
      text: "Lets Catch Up",
    },
    {
      name: "Sahil Kamath",
      text: "Mhmm",
    },
    {
        name: "Vidit Gala",
        text: "Hey, What's up ?",
      },
  ];

  const [response, setResponse] = useState('');

  const sendMessage = async (userMessage) => {
    try {
      const response = await axios.post('http://127.0.0.1:5000/send_message', {
        user: userMessage.text
      }, {
        headers: {
          'Content-Type': 'application/json'
        }
      });
  
      const responseData = response.data; // Extract the response data
      // Construct the botResponse object
      const botResponse = {
        text: responseData.Answer,
        time: new Date(),
        message_side: 'left',
      };
      if(responseData.Suicidal != 'false'){
        setcount(count+1)
      }
      if(count==2)
      {
      const xx = await axios.get('http://127.0.0.1:5000/whatsapp')
      console.log(xx.data)
      }
      setMessages([...messages, botResponse]);
    } catch (error) {
      console.error('Error sending message:', error);
    }
  };
  
  


  const handleSendMessage = () => {
    const newUserMessage = {
      text: prompt,
      time: new Date(),
      message_side: "right",
    };
    messages.push(newUserMessage);
    sendMessage(newUserMessage);
  };

  return (
    <div className="p-10">
      <FrameComponent8 />
      <div className="flex flex-cols gap-[2%] h-[80vh] mt-[-180px] ">
        <div className="bg-light-blue-design w-[30%] rounded-[10px]  py-5 z-[2]">
          <div className="flex flex-row px-2  py-3 items-start justify-center gap-[15px] bg-secondary-color">
            <div className=" text-lg ">
              <GiTwirlyFlower className=" size-[1.5rem] mt-[3px] " />
            </div>
            <div>
              <p className="m-0 p-0">MindfulMate</p>
              <p className="m-0 p-0">
                If you ever need help , i got your back!
              </p>
            </div>
          </div>
          <div className="px-4  py-3">
            <p className="text-[20px] text-center mb-4">Your Community Members </p>
            <div className="flex flex-col gap-[10px] ">
            {members.map((member) => {
              return (
                <div className="flex flex-row px-4  py-3 items-start justify-start gap-[15px] bg-secondary-color rounded-[10px]">
                  <div className=" text-lg ">
                    <FaCircleUser className=" size-[1.5rem] mt-[3px] " />
                  </div>
                  <div>
                    <p className="m-0 p-0">{member.name}</p>
                    <p className="m-0 p-0">{member.text}</p>
                  </div>
                </div>
              );
            })}
            </div>
            
          </div>
        </div>
        <div className="bg-white z-[2] w-[65%] h-[95%] relative">
          <div style={{ scrollbarWidth: 'none', '-ms-overflow-style': 'none' }} className="h-full overflow-y-scroll scrollbar-width-none pb-10">
            <div className="p-4 flex flex-col gap-[20px]">
              {messages.map((message, index) => (
                <>
                  <div className="avatar ">
                    {message.message_side == "left" && (
                      <GiTwirlyFlower className="size-[1.3rem] m-0 p-0" />
                    )}
                  </div>
                  <div
                    key={index}
                    style={{ width: `auto` }}
                    className={` px-7 py-1.5 flex flex-col  ${
                      message.message_side == "right"
                        ? "items-end"
                        : "items-start mt-[-18px]"
                    } rounded-[20px] bg-light-blue-design `}
                  >
                    <div className={`text_wrapper`}>
                      <div className="text">{message.text}</div>
                      <div className="timestamp">
                        {message.time.toLocaleString("en-IN", {
                          month: "short",
                          day: "numeric",
                          hour: "numeric",
                          minute: "numeric",
                        })}
                      </div>
                    </div>
                  </div>
                </>
              ))}
            </div>
          </div>

          <div className="absolute bg-white bottom-0 w-[100%] py-4 px-3 pr-5 rounded-[10px] border-[0.2px] flex flex-row justify-between items-center">
            <input
              type="text"
              name="message"
              placeholder="How can i help you ?"
              className="w-[95%] px-6 py-1 border-none rounded-[25px] outline-none h-[1.3rem]"
              onChange={(e) => setprompt(e.target.value)}
            />
            <IoMdSend
              className="size-[1.3rem]"
              onClick={() => handleSendMessage()}
            />
          </div>
        </div>
      </div>
    </div>
  );
};

export default Minfulmate;
