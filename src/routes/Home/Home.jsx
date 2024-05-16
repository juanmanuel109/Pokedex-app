import React from "react";
import styles from "./Home.module.css";

const Home = () => {
    const pokemons = [
        { id: 1, name: "Bulbasaur", number: "001", image: "bulbasaur.png" },
        { id: 4, name: "Charmander", number: "004", image: "charmander.png" },
    ];

    return (
        <div className={styles.outerContainer}>
            <div className={styles.browserHeader}>
                <div className={styles.circle}></div>
                <div className={styles.circle}></div>
                <div className={styles.circle}></div>
                <h1>Pokedex</h1>
                <button className={styles.addButton}>+ Add New Pokemon</button>
            </div>
            <div className={styles.header}></div>
            <div className={styles.container}>
                <div className={styles.pokemonList}>
                    {pokemons.map((pokemon) => (
                        <div key={pokemon.id} className={styles.pokemonCard}>
                            <img src={pokemon.image} alt={pokemon.name} />
                            <div className={styles.pokemonInfo}>
                                <span className={styles.pokemonNumber}>
                                    {pokemon.number}
                                </span>
                                <span className={styles.pokemonName}>
                                    {pokemon.name}
                                </span>
                            </div>
                        </div>
                    ))}
                </div>
            </div>
            <footer className={styles.footer}>Copyright © 2019</footer>
        </div>
    );
};

export default Home;
