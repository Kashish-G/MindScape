import React, { useEffect,useState } from "react";
import FrameComponent8 from "../components/FrameComponent8";
import audio1 from "../components/lofi_1_hour.mp3";
import MemeGenerator from "./MemeGenerator";
import { useNavigate } from "react-router-dom";

const ZenZone = () => {

  const [meme, setmeme] = useState(false);
  const navigate = useNavigate()
  useEffect(() => {
    const audio = new Audio(audio1);
    audio.play();

    return () => {
      audio.pause();
    };
  }, []);

  return (
    <div
      className="p-10 bg-cover bg-center h-screen relative"
      style={{ backgroundImage: "url('/bg1.jpg')" }}
    >
      <FrameComponent8 />
      <div className="flex flex-row justify-between items-stretch gap-4 px-15 w-full mt-[-126px]">
        <div className="flex-1 h-[200px] w-[300px]">
          <div className="bg-light-blue-design border-[1px] cursor-pointer rounded-[10px] overflow-hidden flex flex-col items-center justify-center gap-2 p-4" onClick={() => window.open("http://localhost:3001/", "_blank")}>
            <img
              src="./game.png"
              className="w-full rounded-[10px]"
              alt="Game"
            />
            <h1 className="text-[25px] text-center">Play Scribble!</h1>
          </div>
        </div>

        <div className="flex-1 h-[200px] w-[300px]">
          <div className="bg-light-blue-design border-[1px] cursor-pointer rounded-[10px] overflow-hidden flex flex-col items-center justify-center gap-2 p-4" onClick={() => window.open("http://localhost:3000/", "_blank")}>
            <img
              src="./game.png"
              className="w-full  rounded-[10px]"
              alt="Playlist"
            />
            <h1 className="text-[25px] text-center">Get your Playlist Now!</h1>
          </div>
        </div>

        <div className="flex-1 h-[200px] w-[300px]">
          <div className="bg-light-blue-design border-[1px] cursor-pointer rounded-[10px] overflow-hidden flex flex-col items-center justify-center gap-2 p-4" onClick={() => window.open('https://works.yangerxiao.com/breathe-relaxer/', "_blank")}>
            <img
              src="./breathe.png"
              className="w-full rounded-[10px]"
              alt="Relax"
            />
            <h1 className="text-[25px] text-center">Let's Relax</h1>
          </div>
        </div>
      </div>
      <div className=" absolute bottom-10 left-15 flex flex-row gap-[30px]">
      <button onClick={() => window.open("http://127.0.0.1:5000", "_blank")} className="px-6 py-3 outline-none border-none bg-light-blue-design  rounded-[20px]">
        Want to play music of your choice?
      </button>
      <button onClick={() =>navigate('/meme')} className=" outline-none border-none bg-light-blue-design px-6 py-3 rounded-[20px]">
        Light Up your Mood ?
        
      </button>
      </div>
    </div>
  );
};

export default ZenZone;
