import { useEffect, useState } from "react";
import { Navigate } from "react-router-dom";

const ProtectedRoute = ({ children }) => {
    const [isAuthenticated, setIsAuthenticated] = useState(false);
    const [loading, setLoading] = useState(true);

    // Consultar la autenticación a php cuando se renderiza el componente
    useEffect(() => {
        const checkAuthentication = async () => {
            try {
                const response = await fetch(
                    "http://localhost/pokedex-app/php/auth.php",
                    {
                        credentials: "include", // Importante para poder trabajar sin problema con cookies y sesiones
                    }
                );
                const data = await response.json();
                setIsAuthenticated(data.auth);
            } catch (error) {
                console.error(error);
                setIsAuthenticated(false);
            } finally {
                setLoading(false); // Termina el proceso de carga
            }
        };

        checkAuthentication();
    }, []); // Solo se trabaja en el efecto una vez (cuando se monta el componente)

    // Si aún está cargando no renderizar nada aún
    if (loading) {
        return null;
    }

    // Una vez que la carga haya terminado, verifica la autenticación
    if (isAuthenticated) {
        return children;
    }

    // Si no está autenticado, redirige a la página de inicio de sesión
    return <Navigate to="/login" />;
};
export default ProtectedRoute;
