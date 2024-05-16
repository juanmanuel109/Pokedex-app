import styles from "./Header.module.css";
import { Link } from "react-router-dom";

const Header = () => {
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
                <a href="">Inicio</a>
                <a href="">Salir</a>
            </div>
        </div>
    );
};

export default Header;
