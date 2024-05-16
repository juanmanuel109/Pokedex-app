import { BrowserRouter, Routes, Route } from "react-router-dom";
import "./App.css";
import Login from "./routes/Login/Login";
import Home from "./routes/Home/Home";

function App() {
    return (
        <BrowserRouter>
            <Routes>
                <Route path="/login" element={<Login />} />
                <Route path="/" element={<Home />} />
            </Routes>
        </BrowserRouter>
    );
}

export default App;
