import GroupComponent1 from "./GroupComponent1";

const HorizontalRule = () => {
  return (
    <div className="w-[1280px] flex flex-row items-start justify-start pt-0 px-0 pb-[30px] box-border shrink-0">
      <div className="flex-1 grid flex-row items-start justify-start gap-[0px_20px] max-w-full grid-cols-[repeat(4,_minmax(229px,_1fr))] mq450:grid-cols-[minmax(229px,_1fr)] mq1050:justify-center mq1050:grid-cols-[repeat(2,_minmax(229px,_396px))]">
        <GroupComponent1 rectangle652="/rectangle-652-4@2x.png" />
        <GroupComponent1 rectangle652="/rectangle-652-5@2x.png" />
        <GroupComponent1 rectangle652="/rectangle-652-6@2x.png" />
        <GroupComponent1 rectangle652="/rectangle-652-7@2x.png" />
      </div>
    </div>
  );
};

export default HorizontalRule;
