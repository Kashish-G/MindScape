import GroupComponent2 from "./GroupComponent2";
import GroupComponent1 from "./GroupComponent1";

const RectangleShape = () => {
  return (
    <div className="w-[1280px] flex flex-col items-end justify-start pt-0 px-0 pb-2.5 box-border gap-[71px_0px] shrink-0 text-left text-lg text-body-text font-b3-regular">
      <div className="self-stretch flex flex-row items-end justify-between gap-[20px] max-w-full">
        <div className="w-[455px] relative tracking-[0.02em] leading-[155%] inline-block shrink-0 max-w-full">
          We use only the best quality materials on the market in order to
          provide the best products to our patients.
        </div>
        <button className="cursor-pointer [border:none] py-[15px] pr-9 pl-10 bg-mid-blue-design rounded-3xs flex flex-row items-center justify-center whitespace-nowrap hover:bg-dodgerblue">
          <div className="relative text-base tracking-[0.02em] leading-[155%] font-semibold font-b2-semibold text-secondary-color text-left">
            View All
          </div>
        </button>
      </div>
      {/* <div className="self-stretch grid flex-row items-start justify-start gap-[0px_20px] grid-cols-[repeat(4,_minmax(229px,_1fr))] text-base text-secondary-color mq450:grid-cols-[minmax(229px,_1fr)] mq1050:justify-center mq1050:grid-cols-[repeat(2,_minmax(229px,_396px))]">
        <GroupComponent2 sectionTitle="/rectangle-652@2x.png" />
        <GroupComponent1 rectangle652="/rectangle-652-1@2x.png" />
        <GroupComponent2 sectionTitle="/rectangle-652-2@2x.png" />
        <GroupComponent2 sectionTitle="/rectangle-652-3@2x.png" />
      </div> */}
    </div>
  );
};

export default RectangleShape;
