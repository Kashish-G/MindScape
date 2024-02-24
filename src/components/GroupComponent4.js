import { useMemo } from "react";

const GroupComponent4 = ({
  teeth1,
  rootCanalTreatment,
  rootCanalTreatmentEndodon,
  propWidth,
}) => {
  const rootCanalTreatmentStyle = useMemo(() => {
    return {
      width: propWidth,
    };
  }, [propWidth]);

  return (
    <div className="flex-1 rounded-3xs bg-secondary-color flex flex-col items-center justify-start pt-[18px] px-[18px] pb-[26px] box-border gap-[16px] min-w-[290px] max-w-full z-[1] text-center text-5xl text-dark-blue-design font-b3-regular">
      <div className="w-[387px] h-[300px] relative rounded-3xs bg-secondary-color hidden max-w-full" />
      <button className="cursor-pointer [border:none] p-0 bg-[transparent] w-[70px] flex flex-row items-center justify-center">
        <div className="h-[70px] flex-1 relative">
          <div className="absolute top-[0px] left-[0px] rounded-[50%] bg-sky-blue-design w-full h-full z-[2]" />
          <div className="absolute top-[11px] left-[11.5px] flex flex-row items-start justify-start">
            <div className="h-full w-full absolute !m-[0] top-[calc(50%_-_25px)] left-[calc(50%_-_25px)] rounded-[50%] bg-sky-blue-design [filter:blur(25px)] z-[1]" />
            <img
              className="h-12 w-12 relative overflow-hidden shrink-0 z-[3]"
              alt=""
              src={teeth1}
            />
          </div>
        </div>
      </button>
      <div className="flex flex-row items-start justify-start py-0 pr-0 pl-0.5">
        <h3 className="m-0 relative text-inherit leading-[120%] capitalize font-medium font-inherit z-[1] mq450:text-lgi mq450:leading-[23px]">
          {rootCanalTreatment}
        </h3>
      </div>
      <div
        className="w-[317px] relative text-lg tracking-[0.02em] leading-[155%] text-body-text inline-block z-[1]"
        style={rootCanalTreatmentStyle}
      >
        {rootCanalTreatmentEndodon}
      </div>
      <div className="flex flex-row items-end justify-start gap-[0px_11px] text-left text-base">
        <div className="relative [text-decoration:underline] tracking-[0.02em] leading-[155%] font-medium whitespace-nowrap z-[1]">
          Learn More
        </div>
        <img
          className="h-6 w-6 relative rounded-3xs object-cover z-[1]"
          alt=""
          src="/iconlylightoutlinearrow--right-circle@2x.png"
        />
      </div>
    </div>
  );
};

export default GroupComponent4;
