import Rectangle from "../components/Rectangle";
import FrameComponent8 from "../components/FrameComponent8";
import FrameComponent7 from "../components/FrameComponent7";
import FrameComponent6 from "../components/FrameComponent6";
import FrameComponent5 from "../components/FrameComponent5";
import FrameComponent4 from "../components/FrameComponent4";
import FrameComponent3 from "../components/FrameComponent3";
import FrameComponent2 from "../components/FrameComponent2";
import Subheader from "../components/Subheader";
import FrameComponent1 from "../components/FrameComponent1";
import RectangleShape from "../components/RectangleShape";
import HorizontalRule from "../components/HorizontalRule";
import GroupComponent from "../components/GroupComponent";
import FrameComponent from "../components/FrameComponent";
import BrainCanvas from "../components/Brain";
const HomeDesktop = () => {
  return (
    <div className="w-full relative bg-secondary-color overflow-hidden flex flex-col items-center justify-start pt-10 px-0 pb-[31px] box-border gap-[104px_0px] tracking-[normal] text-left text-23xl text-dark-blue-design font-b2-semibold mq450:gap-[104px_0px] mq750:gap-[104px_0px]">
      <img
        className="self-stretch relative max-w-full overflow-hidden max-h-full hidden z-[0]"
        alt=""
        src="/group-834.svg"
      />
      <section className="w-[1320px] flex flex-row items-start justify-start py-0 px-5 box-border relative max-w-full text-left text-41xl text-dark-blue-design font-b2-semibold">
        <Rectangle />
        <FrameComponent8 />
        <h1 className="!m-[0] w-[687px] absolute bottom-[-10px] left-[20px] text-inherit tracking-[-0.02em] leading-[120%] capitalize font-semibold font-inherit inline-block z-[2] mq450:text-[37px] mq450:leading-[45px] mq750:text-[50px] mq750:leading-[60px]">
          Embrace a journey toward profound Mental Well-being!
        </h1>
        <div className="w-[531px] absolute !m-[0] bottom-[-94px] left-[19px] text-lg tracking-[0.02em] leading-[155%] font-b3-regular text-body-text inline-block z-[1]">
          Relax, we've got your mental well-being covered with the finest care.
        </div>
        <div className="h-[676px] w-[736px] absolute !m-[0] right-[-50px] bottom-[-430px]">
          <div className="absolute top-[5.8px] left-[141.8px] rounded-[50%] box-border w-[593px] h-[593px] border-[0px] border-dashed border-mid-blue-design" />
          <BrainCanvas />
        </div>
      </section>
      <img
        className="w-[266px] h-[9.8px] absolute !m-[0] right-[548px] bottom-[3419.2px]"
        alt=""
        src="/group.svg"
      />
      <FrameComponent7 />
      {/* <FrameComponent6 /> */}
      {/* <FrameComponent5 /> */}
      {/* <FrameComponent4 /> */}
      {/* <FrameComponent3 /> */}
      {/* <FrameComponent2 /> */}
      <section className="self-stretch flex flex-col items-end justify-start pt-0 px-0 pb-7 box-border gap-[100px_0px] max-w-full shrink-0 mq450:gap-[100px_0px] mq750:gap-[100px_0px]">
        <Subheader />
        <FrameComponent1 />
      </section>
     <div className="w-[1320px] overflow-x-auto flex flex-col items-start justify-start pt-0 px-5 pb-[22px] box-border gap-[20px_0px] max-w-full shrink-0">
        {/* {<div className="w-[327px] flex flex-row items-start justify-start pt-0 px-1 pb-[3px] box-border shrink-0">
          <h1 className="m-0 relative text-inherit leading-[-10px] capitalize font-semibold font-inherit z-[1] mq450:text-6xl mq450:leading-[31px] mq750:text-15xl mq750:leading-[42px]">{`News & Articles`}</h1>
        </div>
        <div className="w-[333px] h-2 flex flex-row items-start justify-start py-0 px-[5px] box-border">
          <img
            className="h-[8.2px] flex-1 relative max-w-full overflow-hidden object-contain"
            alt=""
            src="/group-2@2x.png"
          />
        </div>
        <RectangleShape />
        <HorizontalRule />} */}
      </div> 
      <section className="w-[1321px] flex flex-col items-center justify-start py-0 px-5 box-border gap-[100px_0px] max-w-full shrink-0 mq450:gap-[100px_0px] mq750:gap-[100px_0px]">
        <div className="w-[1073px] flex flex-row items-start justify-start py-0 pr-0 pl-[9px] box-border max-w-full">
          <GroupComponent />
        </div>
        <FrameComponent />
      </section>
    </div>
  );
};

export default HomeDesktop;
