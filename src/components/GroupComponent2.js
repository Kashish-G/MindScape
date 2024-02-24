const GroupComponent2 = ({ sectionTitle }) => {
  return (
    <div className="h-[452px] rounded-3xs bg-light-blue-design flex flex-col items-center justify-start pt-5 px-2.5 pb-2.5 box-border gap-[22px] text-left text-base text-secondary-color font-b3-regular">
      <div className="w-[305px] h-[452px] relative rounded-3xs bg-light-blue-design hidden" />
      <img
        className="w-[265px] flex-1 relative rounded-3xs max-h-full object-cover z-[1]"
        loading="eager"
        alt=""
        src={sectionTitle}
      />
      <div className="self-stretch flex flex-col items-start justify-start py-0 px-2.5 gap-[14px_0px]">
        <div className="rounded-8xs bg-dark-blue-design flex flex-row items-center justify-center py-[5px] pr-[9px] pl-[13px] whitespace-nowrap z-[1]">
          <div className="h-[35px] w-[97px] relative rounded-8xs bg-dark-blue-design hidden" />
          <div className="relative tracking-[0.02em] leading-[155%] font-medium z-[1]">
            Self Care
          </div>
        </div>
        <div className="self-stretch flex flex-col items-start justify-start gap-[10px_0px] text-lg text-dark-blue-design">
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

export default GroupComponent2;
