import React from "react";
import styles from "./Home.module.css";
import Header from "../../components/Header/Header";

const Home = () => {
    return (
        <div className={styles.homeContainer}>
            <Header />
            <div className={styles.container}></div>
        </div>
    );
};

export default Home;
