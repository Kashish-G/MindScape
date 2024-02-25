import { ChakraProvider, ColorModeScript, extendTheme } from "@chakra-ui/react";
import { useEffect } from "react";
import {
  Routes,
  Route,
  useNavigationType,
  useLocation,
} from "react-router-dom";
import HomeDesktop from "./pages/HomeDesktop";
import Minfulmate from "./pages/Minfulmate";
import Community from "./pages/Community";
import ZenZone from "./pages/ZenZone";
import MemeGenerator from "./pages/MemeGenerator";

function App() {
  const action = useNavigationType();
  const location = useLocation();
  const pathname = location.pathname;

  useEffect(() => {
    if (action !== "POP") {
      window.scrollTo(0, 0);
    }
  }, [action, pathname]);

  useEffect(() => {
    let title = "";
    let metaDescription = "";

    switch (pathname) {
      case "/":
        title = "";
        metaDescription = "";
        break;
    }

    if (title) {
      document.title = title;
    }

    if (metaDescription) {
      const metaDescriptionTag = document.querySelector(
        'head > meta[name="description"]'
      );
      if (metaDescriptionTag) {
        metaDescriptionTag.content = metaDescription;
      }
    }
  }, [pathname]);

  return (
    <ChakraProvider>
      <Routes>
        <Route path="/" element={<HomeDesktop />} />
        <Route path="/mindfulmate" element={<Minfulmate />} />
        <Route path="/community" element={<Community />} />
        <Route path="/zenzone" element={<ZenZone />} />
        <Route path="/meme" element={<MemeGenerator/>} />
      </Routes>
    </ChakraProvider>
  );
}
export default App;
