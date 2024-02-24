import { useMemo } from "react";

const GroupComponent3 = ({
  maskGroup,
  jimCarry,
  orthodontist,
  propBackdropFilter,
  propPadding,
  propBackdropFilter1,
  propWidth,
}) => {
  const frameDivStyle = useMemo(() => {
    return {
      backdropFilter: propBackdropFilter,
      padding: propPadding,
    };
  }, [propBackdropFilter, propPadding]);

  const rectangleDivStyle = useMemo(() => {
    return {
      backdropFilter: propBackdropFilter1,
    };
  }, [propBackdropFilter1]);

  const jimCarryStyle = useMemo(() => {
    return {
      width: propWidth,
    };
  }, [propWidth]);

  return (
    <div className="flex-1 flex flex-col items-center justify-end p-4 box-border relative min-w-[299px] max-w-[305px] min-h-[340px] z-[2] text-left text-5xl text-secondary-color font-b3-regular">
      <img
        className="w-full h-full absolute !m-[0] top-[0px] right-[0px] bottom-[0px] left-[0px] max-w-full overflow-hidden max-h-full object-cover"
        alt=""
        src={maskGroup}
      />
      <div
        className="self-stretch rounded-3xs [background:linear-gradient(96.2deg,_rgba(37,_180,_248,_0.3),_rgba(37,_180,_248,_0))] [backdrop-filter:blur(200px)] flex flex-col items-start justify-start pt-3 px-[25px] pb-5 gap-[4px_0px] z-[1]"
        style={frameDivStyle}
      >
        <div
          className="w-[273px] h-[90px] relative rounded-3xs [background:linear-gradient(96.2deg,_rgba(37,_180,_248,_0.3),_rgba(37,_180,_248,_0))] [backdrop-filter:blur(200px)] hidden"
          style={rectangleDivStyle}
        />
        <h3
          className="m-0 relative text-inherit leading-[120%] capitalize font-medium font-inherit z-[2] mq450:text-lgi mq450:leading-[23px]"
          style={jimCarryStyle}
        >
          {jimCarry}
        </h3>
        <div className="relative text-base tracking-[0.02em] leading-[155%] font-medium z-[2]">
          {orthodontist}
        </div>
      </div>
      <img
        className="w-10 h-10 absolute !m-[0] top-[15px] right-[15px] object-cover z-[1]"
        alt=""
        src="/linkedin@2x.png"
      />
    </div>
  );
};

export default GroupComponent3;
