const GroupComponent1 = ({ rectangle652 }) => {
  return (
    <div className="h-[452px] rounded-3xs bg-light-blue-design flex flex-col items-center justify-start pt-5 px-2.5 pb-2.5 box-border gap-[22px] text-left text-lg text-dark-blue-design font-b3-regular">
      <div className="w-[305px] h-[452px] relative rounded-3xs bg-light-blue-design hidden" />
      <img
        className="w-[265px] flex-1 relative rounded-3xs max-h-full object-cover z-[1]"
        alt=""
        src={rectangle652}
      />
      <div className="self-stretch flex flex-col items-start justify-start py-0 px-2.5 gap-[14px_0px]">
        <button className="cursor-pointer [border:none] py-[5px] pr-[9px] pl-[13px] bg-dark-blue-design rounded-8xs flex flex-row items-center justify-center whitespace-nowrap z-[1] hover:bg-darkslategray">
          <div className="h-[35px] w-[97px] relative rounded-8xs bg-dark-blue-design hidden" />
          <div className="relative text-base tracking-[0.02em] leading-[155%] font-medium font-b3-regular text-secondary-color text-left z-[1]">
            Self Care
          </div>
        </button>
        <div className="self-stretch flex flex-col items-start justify-start gap-[10px_0px]">
          <div className="relative tracking-[0.02em] leading-[155%] font-medium z-[1]">
            Care of your Teeth
          </div>
          <div className="self-stretch flex flex-col items-end justify-start gap-[2px_0px] text-body-text">
            <div className="self-stretch relative tracking-[0.02em] leading-[155%] z-[1]">
              Lorem ipsum dolor sit amet consectetur.
            </div>
            <div className="relative text-base tracking-[0.02em] leading-[155%] text-dark-blue-design z-[1]">
              ~Anita Jackson
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default GroupComponent1;
