import { useNavigate } from "react-router-dom";

const FrameComponent = () => {
  const navigate = useNavigate()
  return (
    <footer className="self-stretch flex flex-col items-start justify-start gap-[51px_0px] max-w-full text-left text-base text-body-text font-b3-regular mq750:gap-[51px_0px]">
      <div className="self-stretch flex flex-row items-center justify-between gap-[20px] max-w-full mq750:flex-wrap">
        <div className="h-9 flex flex-row items-end justify-start gap-[0px_10px]">
          <img
              className="w-[190px] h-[70px] relative z-[1]"
              alt=""
              src="/mindscape.png"
            />
        </div>
        <div className="flex flex-row items-start justify-start gap-[0px_40px] max-w-full mq450:flex-wrap mq450:gap-[0px_40px]  cursor-pointer">
          <div className="relative tracking-[0.02em] leading-[155%] font-medium cursor-pointer" onClick={()=>navigate('/')}>
            Home
          </div>
          <div className="relative tracking-[0.02em] leading-[155%] font-medium cursor-pointer" onClick={()=>navigate('/mindfulmate')}>
            MindfulMate
          </div>
          <div className="relative tracking-[0.02em] leading-[155%] font-medium cursor-pointer" onClick={()=>navigate('/zenzone')}>
            ZenZone
          </div>
          <div className="relative tracking-[0.02em] leading-[155%] font-medium cursor-pointer" onClick={()=>navigate('/contact')}>
            Contact
          </div>
        </div>
      </div>
      <div className="self-stretch h-[62px] flex flex-col items-start justify-start gap-[30px_0px] max-w-full text-sm text-dark-blue-design mq750:h-auto">
        <div className="self-stretch h-0.5 relative box-border border-t-[2px] border-solid border-dark-blue-design" />
        <div className="self-stretch flex flex-row items-end justify-between gap-[20px] max-w-full shrink-0 mq750:flex-wrap">
          <div className="flex flex-col items-start justify-start pt-0 px-0 pb-[3px] box-border max-w-full">
            <div className="relative tracking-[0.02em] leading-[155%] whitespace-pre-wrap">
              All rights reserved ® mindscape.com | Terms and conditions apply!
            </div>
          </div>
          <div className="flex flex-row items-start justify-start gap-[0px_20px]">
            <img
              className="h-8 w-8 relative min-h-[32px]"
              loading="eager"
              alt=""
              src="/facebook.svg"
            />
            <img
              className="h-8 w-8 relative min-h-[32px]"
              loading="eager"
              alt=""
              src="/instagram.svg"
            />
            <img
              className="h-8 w-8 relative min-h-[32px]"
              loading="eager"
              alt=""
              src="/youtube.svg"
            />
            <img
              className="h-8 w-8 relative min-h-[32px]"
              alt=""
              src="/linkedin-5.svg"
            />
            <img
              className="h-8 w-8 relative min-h-[32px]"
              alt=""
              src="/twitter.svg"
            />
          </div>
        </div>
      </div>
    </footer>
  );
};

export default FrameComponent;
