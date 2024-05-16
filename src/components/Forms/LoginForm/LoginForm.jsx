import styles from "./LoginForm.module.css";

import { useState } from "react";
import Swal from "sweetalert2";

const LoginForm = () => {
    const [username, setUsername] = useState("");
    const [password, setPassword] = useState("");
    const [sessionData, setSessionData] = useState(null);

    const handleUsernameChange = (e) => {
        setUsername(e.target.value);
    };

    const handlePasswordChange = (e) => {
        setPassword(e.target.value);
    };

    const handleSubmit = async (e) => {
        e.preventDefault();

        try {
            const response = await fetch(
                "http://localhost/pokedex-app/php/server.php",
                {
                    method: "POST",
                    headers: {
                        "Content-Type": "application/x-www-form-urlencoded",
                    },
                    body: new URLSearchParams({
                        username,
                        password,
                    }),
                }
            );

            if (response.ok) {
                const data = await response.json();
                setSessionData(data.session);
                Swal.fire({
                    title: "Autenticación exitosa",
                    text: data.message,
                    icon: "success",
                    showConfirmButton: false,
                    timer: 1500,
                });
            } else {
                const data = await response.json();
                Swal.fire({
                    title: "Error",
                    text: data.error,
                    icon: "error",
                    confirmButtonText: "OK",
                    confirmButtonColor: "grey",
                });
            }
        } catch (error) {
            console.error(error);
            Swal.fire({
                title: "Error",
                text: "Ocurrió un error al enviar la solicitud",
                icon: "error",
                confirmButtonText: "OK",
            });
        }
    };

    return (
        <div className={styles.contenedorLoginForm}>
            <div className={styles.contenedorLogin}>
                <form onSubmit={handleSubmit}>
                    <h1>Iniciar sesión</h1>
                    <div className={styles.contenedorInputs}>
                        <div className={styles.contenedorInputUsuario}>
                            <label htmlFor="username">Usuario:</label>
                            <input
                                className={styles.inputs}
                                type="text"
                                id="username"
                                name="username"
                                value={username}
                                onChange={handleUsernameChange}
                                placeholder="Escriba su nombre de usuario"
                                required
                            />
                        </div>
                        <div className={styles.contenedorInputContrasena}>
                            <label htmlFor="password">Contraseña:</label>
                            <input
                                className={styles.inputs}
                                type="password"
                                id="password"
                                name="password"
                                value={password}
                                onChange={handlePasswordChange}
                                placeholder="Escriba su contraseña"
                                required
                            />
                        </div>
                    </div>
                    <button type="submit">Enviar</button>
                    {sessionData && (
                        <div>
                            <p>Usuario: {sessionData.username}</p>
                        </div>
                    )}
                </form>
            </div>
        </div>
    );
};

export default LoginForm;
