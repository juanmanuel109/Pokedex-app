import LoginForm from "../../components/Forms/LoginForm/LoginForm";
import styles from "./Login.module.css";

const Login = () => {
    return (
        <div className={styles.login}>
            <LoginForm formTitle={"Ingresar"} />
        </div>
    );
};
export default Login;
