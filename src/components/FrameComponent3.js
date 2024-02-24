const FrameComponent3 = () => {
  return (
    <section className="w-[1180px] flex flex-row items-start justify-between pt-0 px-5 pb-[25px] box-border gap-[20px] max-w-full shrink-0 text-left text-23xl text-dark-blue-design font-b2-semibold mq1050:flex-wrap">
      <div className="w-[555px] flex flex-col items-start justify-start gap-[40px_0px] min-w-[555px] max-w-full mq750:gap-[40px_0px] mq750:min-w-full mq1050:flex-1">
        <div className="self-stretch flex flex-col items-start justify-start gap-[20px_0px] max-w-full">
          <div className="self-stretch flex flex-row items-start justify-start relative max-w-full">
            <img
              className="h-[243.5px] w-[279.9px] absolute !m-[0] bottom-[-125.5px] left-[105px] overflow-hidden shrink-0 object-contain"
              alt=""
              src="/highlight-underline-3-3@2x.png"
            />
            <h1 className="m-0 flex-1 relative text-inherit leading-[125%] capitalize font-semibold font-inherit inline-block max-w-full z-[1] mq450:text-6xl mq450:leading-[31px] mq750:text-15xl mq750:leading-[42px]">
              Leave your worries at the door and enjoy a healthier, more precise
              smile
            </h1>
          </div>
          <div className="w-[531px] relative text-lg tracking-[0.02em] leading-[155%] font-b3-regular text-body-text inline-block max-w-full z-[1]">
            We use only the best quality materials on the market in order to
            provide the best products to our patients, So don’t worry about
            anything and book yourself.
          </div>
        </div>
        <button className="cursor-pointer [border:none] p-[15px] bg-mid-blue-design w-[227px] rounded-3xs flex flex-row items-center justify-center box-border whitespace-nowrap hover:bg-dodgerblue">
          <div className="relative text-base tracking-[0.02em] leading-[155%] font-semibold font-b2-semibold text-secondary-color text-left">
            Book an appointment
          </div>
        </button>
      </div>
      <img
        className="h-[358px] w-[441px] relative object-contain max-w-full mq1050:flex-1"
        loading="eager"
        alt=""
        src="/group-1000001024@2x.png"
      />
    </section>
  );
};

export default FrameComponent3;
