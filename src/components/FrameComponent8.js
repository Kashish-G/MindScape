import { useNavigate } from "react-router-dom";

const FrameComponent8 = () => {
  
  const navigate = useNavigate()
  
  return (
    <div className="flex-1 flex flex-row items-start justify-start pt-0 px-0 pb-[186px] box-border max-w-full mq450:pb-[199px] mq450:box-border">
      <header className="flex-1 rounded-3xs bg-light-blue-design flex flex-row items-center justify-between pt-[18px] px-[41px] pb-[17px] box-border gap-[20px] top-[0] z-[99] sticky max-w-full text-left text-base text-dark-blue-design font-b3-regular">
        <div className="h-[90px] w-[1280px] relative rounded-3xs bg-light-blue-design hidden max-w-full" />
        <div className="h-[38px] flex flex-row items-end justify-start py-0 pr-[103px] pl-0 box-border gap-[0px_10px]">
          <div className="flex flex-col items-start justify-start pt-0 px-0 pb-0.5 mb-[-15px]">
            <img
              className="w-[190px] h-[70px] relative z-[1]"
              alt=""
              src="/mindscape.png"
            />
          </div>
        </div>
        <div className="w-[416px] flex flex-row items-start justify-start gap-[0px_40px] max-w-full mq450:gap-[0px_40px] mq750:hidden">
          <div className="relative tracking-[0.02em] leading-[155%] font-medium z-[2] cursor-pointer" onClick={()=>navigate('/')}>
            Home
          </div>
          <div className="relative tracking-[0.02em] leading-[155%] font-medium z-[2] cursor-pointer" onClick={()=>navigate('/mindfulmate')}>
            MindfulMate
          </div>
          <div className="relative tracking-[0.02em] leading-[155%] font-medium z-[2] cursor-pointer" onClick={()=>navigate('/zenzone')}>
          ZenZone
          </div>
          <div className="relative tracking-[0.02em] leading-[155%] font-medium z-[2] cursor-pointer" onClick={()=>navigate('/contact')}>
            Contact
          </div>
        </div>
        <div className="flex flex-row items-start justify-start gap-[0px_20px]">
          <img
            className="h-[55px] w-[55px] relative min-h-[55px] z-[2]"
            loading="eager"
            alt=""
            src="/group-1000001050.svg"
          />
          <button className="cursor-pointer [border:none] py-[15px] pr-[26px] pl-[30px] bg-mid-blue-design rounded-3xs flex flex-row items-center justify-center whitespace-nowrap z-[2] hover:bg-dodgerblue">
            <div className="relative text-base tracking-[0.02em] leading-[155%] font-semibold font-b2-semibold text-secondary-color text-left">
              Need Help?
            </div>
          </button>
        </div>
      </header>
    </div>
  );
};

export default FrameComponent8;
