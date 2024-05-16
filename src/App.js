import { BrowserRouter, Routes, Route } from "react-router-dom";
import "./App.css";
import Login from "./routes/Login/Login";
import Home from "./routes/Home/Home";
import ProtectedRoute from "./context/ProtectedRoute";

function App() {
    return (
        <BrowserRouter>
            <Routes>
                <Route path="/login" element={<Login />} />

                <Route
                    path="/"
                    element={
                        <ProtectedRoute>
                            <Home />
                        </ProtectedRoute>
                    }
                />
            </Routes>
        </BrowserRouter>
    );
}

export default App;
