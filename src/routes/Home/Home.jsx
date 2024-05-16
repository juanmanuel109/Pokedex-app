import React, { useEffect, useState } from "react";
import styles from "./Home.module.css";
import Header from "../../components/Header/Header";
import CatchingPokemonIcon from "@mui/icons-material/CatchingPokemon";

const Home = () => {
    const [username, setUsername] = useState("");

    useEffect(() => {
        const getUsername = async () => {
            try {
                const response = await fetch(
                    "http://localhost/pokedex-app/php/username.php",
                    {
                        credentials: "include", // Importante para poder trabajar sin problema con cookies y sesiones
                    }
                );
                const data = await response.json();
                setUsername(data.username);
            } catch (error) {
                console.error(error);
            }
        };
        getUsername();
    }, []);

    return (
        <div className={styles.homeContainer}>
            <Header />
            <div className={styles.container}>
                <CatchingPokemonIcon
                    sx={{
                        color: "var(--title-color)",
                        fontSize: 64,
                        paddingRight: 5,
                    }}
                />{" "}
                Bienvenido entrenador {username}{" "}
                <CatchingPokemonIcon
                    sx={{
                        color: "var(--title-color)",
                        fontSize: 64,
                        paddingLeft: 5,
                    }}
                />
            </div>
        </div>
    );
};

export default Home;
