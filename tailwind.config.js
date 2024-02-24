/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/**/*.{js,jsx,ts,tsx}"],
  theme: {
    extend: {
      colors: {
        "secondary-color": "#fff",
        "dark-blue-design": "#011632",
        "body-text": "#3c4959",
        "mid-blue-design": "#1376f8",
        dodgerblue: "#2e8fff",
        lightgray: {
          "100": "#cfcfcf",
          "200": "#cecece",
        },
        "light-blue-design": "#e6f6fe",
        darkslategray: "#334a66",
        "sky-blue-design": "#25b4f8",
      },
      spacing: {},
      fontFamily: {
        "b3-regular": "'Open Sans'",
        "b2-semibold": "'General Sans'",
        inherit: "inherit",
      },
      borderRadius: {
        "3xs": "10px",
        "8xs": "5px",
        "base-7": "16.7px",
      },
    },
    fontSize: {
      sm: "14px",
      base: "16px",
      lg: "18px",
      "23xl": "42px",
      "6xl": "25px",
      "15xl": "34px",
      "5xl": "24px",
      lgi: "19px",
      xs: "12px",
      "43xl": "62px",
      inherit: "inherit",
    },
    screens: {
      mq1225: {
        raw: "screen and (max-width: 1225px)",
      },
      mq1050: {
        raw: "screen and (max-width: 1050px)",
      },
      mq750: {
        raw: "screen and (max-width: 750px)",
      },
      mq450: {
        raw: "screen and (max-width: 450px)",
      },
    },
  },
  corePlugins: {
    preflight: false,
  },
};
