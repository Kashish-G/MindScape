import GroupComponent4 from "./GroupComponent4";

const FrameComponent6 = () => {
  return (
    <section className="w-[1320px] flex flex-row items-start justify-start pt-0 px-5 pb-[17px] box-border max-w-full text-center text-5xl text-dark-blue-design font-b3-regular">
      <div className="flex-1 rounded-3xs bg-light-blue-design shadow-[0px_20px_70px_rgba(230,_246,_254,_0.3)] flex flex-row items-start justify-start py-[50px] pr-9 pl-[35px] box-border gap-[24px] max-w-full mq450:pt-8 mq450:pb-8 mq450:box-border mq1050:flex-wrap">
        <div className="h-[400px] w-[1280px] relative rounded-3xs bg-light-blue-design shadow-[0px_20px_70px_rgba(230,_246,_254,_0.3)] hidden max-w-full" />
        <GroupComponent4
          teeth1="/teeth-1.svg"
          rootCanalTreatment="Root Canal Treatment"
          rootCanalTreatmentEndodon="Root canal treatment (endodontics) is a dental procedure used to treat infection at the centre of a tooth."
        />
        <GroupComponent4
          teeth1="/smile-1.svg"
          rootCanalTreatment="Cosmetic Dentist"
          rootCanalTreatmentEndodon="Cosmetic dentistry is the branch of dentistry that focuses on improving the appearance of your smile."
          propWidth="301px"
        />
        <div className="flex-[0.906] rounded-3xs bg-secondary-color flex flex-col items-center justify-start pt-[18px] pb-[26px] pr-[34px] pl-[35px] box-border gap-[16px] min-w-[290px] max-w-full z-[1] mq450:flex-1">
          <div className="w-[387px] h-[300px] relative rounded-3xs bg-secondary-color hidden max-w-full" />
          <div className="w-[50px] h-[50px] relative rounded-[50%] bg-sky-blue-design [filter:blur(25px)] hidden" />
          <div className="w-[70px] flex flex-row items-center justify-center">
            <div className="h-[70px] flex-1 relative">
              <div className="absolute top-[0px] left-[0px] rounded-[50%] bg-sky-blue-design w-full h-full z-[2]" />
              <img
                className="absolute top-[11px] left-[11px] w-12 h-12 overflow-hidden z-[3]"
                loading="eager"
                alt=""
                src="/implant-1.svg"
              />
            </div>
          </div>
          <h3 className="m-0 relative text-inherit leading-[120%] capitalize font-medium font-inherit z-[1] mq450:text-lgi mq450:leading-[23px]">
            Dental Implants
          </h3>
          <div className="self-stretch relative text-lg tracking-[0.02em] leading-[155%] text-body-text z-[1]">
            A dental implant is an artificial tooth root that’s placed into your
            jaw to hold a prosthetic tooth or bridge.
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
      </div>
    </section>
  );
};

export default FrameComponent6;
