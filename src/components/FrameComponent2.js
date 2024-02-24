const FrameComponent2 = () => {
  return (
    <section className="w-[1104px] flex flex-col items-center justify-start pt-0 px-5 pb-4 box-border gap-[40px_0px] max-w-full shrink-0 text-center text-23xl text-dark-blue-design font-b2-semibold mq750:gap-[40px_0px]">
      <div className="w-[630px] flex flex-col items-center justify-start pt-0 px-0 pb-[9px] box-border gap-[21px_0px] max-w-full">
        <div className="self-stretch flex flex-row items-start justify-start py-0 pr-px pl-0 box-border relative max-w-full">
          <img
            className="h-[189.5px] w-[228.8px] absolute !m-[0] top-[-46px] left-[126px] overflow-hidden shrink-0 object-contain"
            alt=""
            src="/highlight-underline-3-4@2x.png"
          />
          <h1 className="m-0 flex-1 relative text-inherit leading-[125%] capitalize font-semibold font-inherit inline-block max-w-full z-[1] mq450:text-6xl mq450:leading-[31px] mq750:text-15xl mq750:leading-[42px]">
            We’re welcoming new patients and can’t wait to meet you.
          </h1>
        </div>
        <div className="w-[463px] relative text-lg tracking-[0.02em] leading-[155%] font-b3-regular text-body-text inline-block max-w-full z-[1]">
          We use only the best quality materials on the market in order to
          provide the best products to our patients.
        </div>
      </div>
      <img
        className="self-stretch h-[452px] relative max-w-full overflow-hidden shrink-0 object-cover"
        loading="eager"
        alt=""
        src="/group-1000001015@2x.png"
      />
      <button className="cursor-pointer [border:none] py-[15px] pr-[26px] pl-[30px] bg-mid-blue-design rounded-3xs flex flex-row items-center justify-center whitespace-nowrap hover:bg-dodgerblue">
        <div className="relative text-base tracking-[0.02em] leading-[155%] font-semibold font-b2-semibold text-secondary-color text-left">
          Watch Playlist
        </div>
      </button>
    </section>
  );
};

export default FrameComponent2;
