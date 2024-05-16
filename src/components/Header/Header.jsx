import React from "react";
import styles from "./Header.module.css";
import { Link, useNavigate } from "react-router-dom";
import Swal from "sweetalert2";

const Header = () => {
    const navigate = useNavigate();

    const handleLogout = async () => {
        try {
            const response = await fetch(
                "http://localhost/pokedex-app/php/logout.php",
                {
                    method: "POST",
                    credentials: "include",
                }
            );

            if (response.ok) {
                // Redirigir al usuario a la página de inicio después de cerrar sesión
                navigate("/login");

                // Mostrar alerta de sesión cerrada
                await Swal.fire({
                    title: "Sesión cerrada",
                    text: "Has cerrado sesión correctamente",
                    icon: "success",
                    showConfirmButton: false,
                    timer: 1500,
                });
            } else {
                // Mostrar alerta de error al cerrar sesión
                await Swal.fire({
                    title: "Error al cerrar sesión",
                    text: "Ocurrió un error al cerrar sesión",
                    icon: "error",
                    confirmButtonText: "OK",
                });
            }
        } catch (error) {
            console.error("Error al cerrar sesión:", error);
            // Mostrar alerta de error en caso de excepción
            await Swal.fire({
                title: "Error",
                text: "Ocurrió un error al cerrar sesión",
                icon: "error",
                confirmButtonText: "OK",
            });
        }
    };

    return (
        <div className={styles.header}>
            <div className={styles.staticIcons}>
                <div className={styles.staticBigCircle}></div>
                <div className={styles.staticSmallCircles}>
                    <div className={styles.circle}></div>
                    <div className={styles.circle}></div>
                    <div className={styles.circle}></div>
                </div>
            </div>
            <div className={styles.navbar}>
                <Link className={styles.linkElements} to="/">
                    Inicio
                </Link>
                <Link className={styles.linkElements} onClick={handleLogout}>
                    Salir
                </Link>
            </div>
        </div>
    );
};

export default Header;
