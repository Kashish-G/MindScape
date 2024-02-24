const Rectangle = () => {
  return (
    <div className="h-[533px] w-[533px] !m-[0] absolute bottom-[-227px] left-[153px] flex flex-row items-end justify-start py-[68px] px-[116px] box-border gap-[0px_15px] text-left text-sm text-mid-blue-design font-b2-semibold">
      {/* <img
        className="h-full w-full absolute !m-[0] top-[0px] right-[0px] bottom-[0px] left-[0px] max-w-full overflow-hidden max-h-full"
        alt=""
        src="/highlight-underline-3.svg"
      /> */}
      <div className="w-14 rounded-3xs bg-secondary-color box-border flex flex-row items-center justify-center py-[5px] px-1 z-[1] border-[1px] border-solid border-mid-blue-design">
        <div className="h-14 w-14 relative rounded-3xs bg-secondary-color box-border hidden border-[1px] border-solid border-mid-blue-design" />
        <button className="cursor-pointer [border:none] pt-[11px] pb-2.5 pr-2.5 pl-[11px] bg-[transparent] rounded-3xs [background:linear-gradient(180deg,_#e6f6fe,_rgba(230,_246,_254,_0))] flex flex-row items-center justify-center z-[2]">
          <div className="h-[45px] w-[45px] relative rounded-3xs [background:linear-gradient(180deg,_#e6f6fe,_rgba(230,_246,_254,_0))] hidden" />
          <img
            className="h-6 w-6 relative object-cover z-[3]"
            alt=""
            src="/iconlyboldcalling@2x.png"
          />
        </button>
      </div>
      <div className="flex flex-col items-start justify-start gap-[3px_0px]">
        <div className="relative tracking-[0.02em] leading-[155%] font-semibold z-[1]">
          Mental Health 24H Emergency
        </div>
        <div className="relative tracking-[0.02em] leading-[155%] font-medium font-b3-regular text-dark-blue-design z-[1]">
          0900-78601
        </div>
      </div>
    </div>
  );
};

export default Rectangle;
