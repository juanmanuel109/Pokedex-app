import { useState, useEffect } from "react";
import Swal from "sweetalert2";
import styles from "./TypesCard.module.css";

const TypesCard = ({ setOpen, selectedElement }) => {
    const [types, setTypes] = useState(null);

    useEffect(() => {
        const fetchPokemonTypes = async () => {
            try {
                const response = await fetch(
                    `http://localhost/pokedex-app/php/pokemonTypes.php?id=${selectedElement.id}`,
                    {
                        method: "GET",
                        credentials: "include",
                    }
                );
                const data = await response.json();

                if (response.ok) {
                    setTypes(data.types);
                } else {
                    setOpen(false);
                    await Swal.fire({
                        title: "Error",
                        text: data.error,
                        icon: "error",
                        confirmButtonText: "OK",
                        confirmButtonColor: "gray",
                    });
                }
            } catch (error) {
                setOpen(false);
                await Swal.fire({
                    icon: "error",
                    title: "Error",
                    text: "Error en la consulta",
                    confirmButtonColor: "gray",
                });
            }
        };

        fetchPokemonTypes();
    }, [selectedElement]);

    return (
        <div className={styles.typesCard}>
            {types ? (
                <>
                    <h2>Tipos de {selectedElement.pok_name}</h2>
                    <ul>
                        {types.map((type, index) => (
                            <li key={index}>{type}</li>
                        ))}
                    </ul>
                </>
            ) : (
                <p>Espere por favor</p>
            )}
        </div>
    );
};

export default TypesCard;
