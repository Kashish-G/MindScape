import GroupComponent3 from "./GroupComponent3";

const Subheader = () => {
  return (
    <div className="self-stretch flex flex-col items-start justify-start min-h-[753px] max-w-full text-center text-23xl text-dark-blue-design font-b2-semibold">
      <div className="self-stretch bg-light-blue-design flex flex-col items-center justify-start py-[60px] pr-5 pl-[21px] box-border relative gap-[536px_0px] max-w-full mq450:gap-[536px_0px] mq750:pt-[39px] mq750:pb-[39px] mq750:box-border">
        <div className="w-[1440px] h-[753px] relative bg-light-blue-design hidden max-w-full z-[0]" />
        <h1 className="m-0 relative text-inherit leading-[125%] capitalize font-semibold font-inherit inline-block max-w-full z-[3] mq450:text-6xl mq450:leading-[31px] mq750:text-15xl mq750:leading-[42px]">
          Meet our specialists
        </h1>
        <img
          className="w-[216px] h-[6.8px] absolute !m-[0] top-[106px] right-[514px] z-[2]"
          alt=""
          src="/group-1.svg"
        />
        <div className="flex flex-row items-start justify-start gap-[0px_10px]">
          <img
            className="self-stretch w-24 relative max-h-full object-contain min-h-[44px] z-[2]"
            alt=""
            src="/group-336@2x.png"
          />
          <img
            className="self-stretch w-24 relative max-h-full min-h-[44px] z-[2]"
            alt=""
            src="/group-335.svg"
          />
        </div>
      </div>
      <div className="self-stretch flex flex-col items-center justify-start pt-7 pb-[61px] pr-0 pl-20 box-border relative gap-[80px_0px] max-w-full mt-[-648px] text-lg text-body-text font-b3-regular mq450:gap-[80px_0px] mq750:gap-[80px_0px] mq750:pl-10 mq750:pb-10 mq750:box-border">
        <img
          className="w-[2239px] h-[calc(100%_+_0.5px)] absolute !m-[0] top-[0px] right-[-402.4px] bottom-[-0.5px] max-h-full object-contain z-[1]"
          alt=""
          src="/group-1000001021-1@2x.png"
        />
        <div className="w-[558px] flex flex-row items-start justify-start max-w-full">
          <div className="w-[499px] relative tracking-[0.02em] leading-[155%] inline-block shrink-0 max-w-full box-border pr-5 z-[2]">
            We use only the best quality materials on the market in order to
            provide the best products to our patients.
          </div>
        </div>
        <div className="self-stretch flex flex-row items-start justify-start py-0 px-0 box-border max-w-full text-left text-5xl text-secondary-color">
          <div className="w-[1605px] flex flex-row items-start justify-center gap-[0px_20px] max-w-[118%] shrink-0 mq1225:flex-wrap">
            <GroupComponent3
              maskGroup="/mask-group-2@2x.png"
              jimCarry="Jim Carry"
              orthodontist="Neurosurgeon."
            />
            <GroupComponent3
              maskGroup="/mask-group-3@2x.png"
              jimCarry="Wade Warren"
              orthodontist="Psychiatrist."
              propBackdropFilter="blur(200px)"
              propPadding="12px 25px 20px"
              propBackdropFilter1="blur(200px)"
              propWidth="unset"
            />
            <GroupComponent3
              maskGroup="/mask-group-4@2x.png"
              jimCarry="Jenny Wilson"
              orthodontist="Psychologist."
              propBackdropFilter="blur(200px)"
              propPadding="13px 25px 19px"
              propBackdropFilter1="blur(200px)"
              propWidth="unset"
            />
            <GroupComponent3
              maskGroup="/mask-group-5@2x.png"
              jimCarry="Jacob Jones"
              orthodontist="Therapist"
              propBackdropFilter="blur(200px)"
              propPadding="13px 25px 19px"
              propBackdropFilter1="blur(200px)"
              propWidth="unset"
            />
            <GroupComponent3
              maskGroup="/mask-group-2@2x.png"
              jimCarry="Jim Carry"
              orthodontist="Therapist."
              propBackdropFilter="blur(50px)"
              propPadding="6px 25px 26px"
              propBackdropFilter1="blur(50px)"
              propWidth="110px"
            />
          </div>
        </div>
      </div>
    </div>
  );
};

export default Subheader;
