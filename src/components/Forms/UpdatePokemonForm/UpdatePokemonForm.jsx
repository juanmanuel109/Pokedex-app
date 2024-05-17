import styles from "./UpdatePokemonForm.module.css";
import { useState } from "react";
import Swal from "sweetalert2";
import { useNavigate } from "react-router";

const UpdatePokemonForm = ({ setOpen, elementToUpdate, formTitle }) => {
    const [values, setValues] = useState({
        ...elementToUpdate,
    });
    //Hook for display error message (validation) just when input is not focused
    const [notFocused, setNotFocused] = useState(false);

    const navigate = useNavigate();

    const handleNotFocused = () => {
        setNotFocused(true); // Set not focused to true when input is not in focus
    };

    const onChange = (e) => {
        /*
         *   Spread the values, that means take all the current values
         *   and add/change only the one we are handling in this onChange function
         */
        setValues({ ...values, [e.target.name]: e.target.value });
    };

    const handleSubmit = async (e) => {
        e.preventDefault();
        setOpen(false);

        try {
            const response = await fetch(
                "http://localhost/pokedex-app/php/updatePokemon.php",
                {
                    method: "POST",
                    headers: {
                        "Content-Type": "application/x-www-form-urlencoded",
                    },
                    body: new URLSearchParams(values).toString(),
                    credentials: "include",
                }
            );
            const result = await response.json();

            if (response.ok) {
                Swal.fire({
                    title: result.success,
                    icon: "success",
                    showConfirmButton: false,
                    timer: 1500,
                }).then(() => {
                    navigate(0);
                });
            } else {
                Swal.fire({
                    title: "Error",
                    text: result.error,
                    icon: "error",
                    confirmButtonText: "OK",
                    confirmButtonColor: "gray",
                }).then(() => {
                    navigate(0);
                });
            }
        } catch (error) {
            Swal.fire({
                icon: "error",
                title: "Error",
                text: "Error en la solicitud",
                confirmButtonColor: "gray",
            }).then(() => {
                navigate(0);
            });
        }
    };

    return (
        <form onSubmit={handleSubmit}>
            <h2 className={styles.formTitle}>{formTitle}</h2>
            <div className={styles.formInput}>
                <label>Nombre</label>
                <input
                    required
                    value={values.pok_name}
                    name="pok_name"
                    type="text"
                    pattern="^[a-z]+$"
                    placeholder="Escriba el nombre del Pokémon"
                    className={styles.inputGeneric}
                    onChange={onChange}
                    onBlur={handleNotFocused}
                    focused={notFocused.toString()}
                />
                <span className={styles.particularErrorMessage}>
                    ¡Por favor, no debe estar vacío y/o no debe contener
                    caracteres especiales, números, mayúsculas y espacios!
                </span>
                <label className={styles.labelGeneric}>Altura</label>
                <input
                    required
                    value={values.pok_height}
                    name="pok_height"
                    type="number"
                    placeholder="Digite la altura del Pokémon en decámetros, por ejemplo, 1 metro es 10 decámetros"
                    className={styles.inputGeneric}
                    onChange={onChange}
                />
                <label className={styles.labelGeneric}>Peso</label>
                <input
                    required
                    value={values.pok_weight}
                    name="pok_weight"
                    type="number"
                    placeholder="Digite el peso del Pokémon en hectogramos, por ejemplo, 1 kilogramo es 10 hectogramos"
                    className={styles.inputGeneric}
                    onChange={onChange}
                />
                <label className={styles.labelGeneric}>Experiencia base</label>
                <input
                    required
                    value={values.pok_base_experience}
                    name="pok_base_experience"
                    type="number"
                    placeholder="Digite los puntos de experiencia base del Pokémon "
                    className={styles.inputGeneric}
                    onChange={onChange}
                />
            </div>
            <div className={styles.buttonContainer}>
                <button type="submit" className={styles.submitButton}>
                    Actualizar
                </button>
            </div>
        </form>
    );
};

export default UpdatePokemonForm;
