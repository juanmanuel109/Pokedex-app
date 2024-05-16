import React from "react";
import styles from "./Home.module.css";

const Home = () => {
    return (
        <div className={styles.homeContainer}>
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
                    <a href="">Inicio</a>
                    <a href="">Salir</a>
                </div>
            </div>
            <div className={styles.container}></div>
        </div>
    );
};

export default Home;
