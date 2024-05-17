import { useState, useEffect } from "react";
import { DataGrid } from "@mui/x-data-grid";
import Swal from "sweetalert2";

export default function Table(props) {
    const { tableBasicColumns } = props;
    const [data, setData] = useState([]);

    useEffect(() => {
        const fetchPokemonData = async () => {
            try {
                const response = await fetch(
                    "http://localhost/pokedex-app/php/pokemons.php",
                    {
                        method: "GET",
                        credentials: "include",
                    }
                );
                const pokemonsData = await response.json();

                if (response.ok) {
                    Swal.fire({
                        title: "Consulta exitosa",
                        icon: "success",
                        showConfirmButton: false,
                        timer: 1500,
                    });
                    // Asignar un id único a cada fila
                    const dataWithIds = pokemonsData.map((row) => ({
                        ...row,
                        id: row.pok_id,
                    }));

                    setData(dataWithIds);
                } else {
                    // Mostrar alerta de error utilizando SweetAlert2
                    await Swal.fire({
                        title: "Error",
                        text: pokemonsData.error,
                        icon: "error",
                        confirmButtonText: "OK",
                        confirmButtonColor: "gray",
                    });
                }
            } catch (error) {
                await Swal.fire({
                    icon: "error",
                    title: "Error",
                    text: "Error en la consulta",
                    confirmButtonColor: "gray",
                });
            }
        };

        fetchPokemonData();
    }, []);

    const columns = [...tableBasicColumns];

    return (
        <div
            style={{
                background: "white",
                margin: 20,
            }}
        >
            <DataGrid
                rows={data}
                columns={columns}
                initialState={{
                    pagination: {
                        paginationModel: { page: 0, pageSize: 5 },
                    },
                }}
                pageSizeOptions={[5]}
            />
        </div>
    );
}
