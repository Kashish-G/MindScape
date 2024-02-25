import React, { useEffect, useState } from "react";
import axios from "axios";
import ParticlesBg from "../components/ParticlesBg";
import FrameComponent8 from "../components/FrameComponent8";

const MemeGenerator = () => {
  const [meme, setMeme] = useState([]);

  const generateMeme = async () => {
    try {
        console.log("WWW")
      const response = await axios.get(
        "https://meme-api.com/gimme/wholesomememes"
      );
      const responseData = response.data;
      console.log(responseData)
      setMeme(responseData);
    } catch (error) {
      console.error("Error sending message:", error);
    }
  };

  return (
    <div className="p-10 ">
      <FrameComponent8 />
      <div className="meme-generator mt-[-156px]">
        <div>
          <button className="px-4 py-1 my-4 text-lg bg-light-blue-design border-none outline-none rounded-[10px]" onClick={() => generateMeme()}>
            Generate Meme
          </button>
        </div>
        <div>
            <img src={meme ? meme.url : ""} alt="" className="h-[60vh]"/>
        </div>
      </div>
    </div>
  );
};

export default MemeGenerator;
