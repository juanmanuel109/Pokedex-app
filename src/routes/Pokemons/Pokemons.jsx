import Header from "../../components/Header/Header";
import styles from "./Pokemons.module.css";

const Pokemons = () => {
    return (
        <div className={styles.pokemonsContainer}>
            <Header />
            <div className={styles.container}></div>
        </div>
    );
};

export default Pokemons;
