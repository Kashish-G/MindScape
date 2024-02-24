const GroupComponent = () => {
  return (
    <div className="flex-1 rounded-3xs bg-dark-blue-design flex flex-row items-center justify-start py-[50px] pr-[55px] pl-[45px] box-border gap-[77px] max-w-full text-left text-23xl text-secondary-color font-b2-semibold mq450:pt-8 mq450:pb-8 mq450:box-border mq750:gap-[77px] mq1050:flex-wrap mq1050:gap-[77px] mq1050:pl-[22px] mq1050:pr-[27px] mq1050:box-border">
      <div className="h-[392px] w-[1064px] relative rounded-3xs bg-dark-blue-design hidden max-w-full" />
      <div className="flex-1 flex flex-col items-start justify-start gap-[30px_0px] min-w-[378px] max-w-full mq750:min-w-full">
        <div className="self-stretch flex flex-col items-start justify-start gap-[20px_0px] max-w-full">
          <h1 className="m-0 self-stretch relative text-inherit leading-[125%] capitalize font-semibold font-inherit z-[1] mq450:text-6xl mq450:leading-[31px] mq750:text-15xl mq750:leading-[42px]">
            Mental Health Website that's gonna shake the game rules up.
          </h1>
          <div className="w-[504px] relative text-lg tracking-[0.02em] leading-[155%] font-b3-regular inline-block max-w-full z-[1]">
          Unveiling the Path to Inner Peace and Mental Well-being
          </div>
        </div>
        <button className="cursor-pointer [border:none] py-[15px] pr-[26px] pl-[30px] bg-mid-blue-design rounded-8xs flex flex-row items-center justify-center whitespace-nowrap z-[1] hover:bg-dodgerblue">
          <div className="relative text-base tracking-[0.02em] leading-[155%] font-semibold font-b2-semibold text-secondary-color text-left">
            Learn More
          </div>
        </button>
      </div>
      <img
        className="h-[292px] w-[305px] relative rounded-3xs object-cover z-[1] mq1050:flex-1"
        loading="eager"
        alt=""
        src="/rectangle-655@2x.png"
      />
    </div>
  );
};

export default GroupComponent;
