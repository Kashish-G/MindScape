import React, {useEffect} from 'react'
import FrameComponent8 from '../components/FrameComponent8';
import audio1 from '../components/lofi_1_hour.mp3'

const ZenZone = () => {

  useEffect(() => {
    const audio = new Audio(audio1);
    audio.play();

    return () => {
      audio.pause();
    };
  }, []); 

  return (
    <div className="p-10 bg-cover bg-center h-screen" style={{ backgroundImage: "url('/bg1.jpg')" }}>
      <FrameComponent8 />
      <div className='flex flex-row px-20 gap-[40px] w-[100%]'>
        <div className='width-[100%] bg-light-blue-design border-[1px]'>
            <img src='' className='w-[100%]' />
            <h1>Play Scribble!</h1>
        </div>
        <div className='width-[100%] bg-light-blue-design border-[1px]'>

        </div>
        <div className='width-[100%] bg-light-blue-design border-[1px]'>

        </div>
        
      </div>
    </div>
  )
}

export default ZenZone;
