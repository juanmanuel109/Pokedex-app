import Header from "../../components/Header/Header";
import styles from "./Pokemons.module.css";
import Table from "../../components/Table/Table";
import { pokemonTableColumns } from "../../utils/pokemonsTableBasicColumns";
import ActionButtonCreateAndModal from "../../components/ActionButtons/ActionButtonCreateAndModal";
import CatchingPokemonIcon from "@mui/icons-material/CatchingPokemon";

const Pokemons = () => {
    return (
        <div className={styles.pokemonsContainer}>
            <Header />
            <div className={styles.container}>
                <div className={styles.tableContainer}>
                    <div className={styles.titleAndButtonContainer}>
                        <h2>Tabla de pokemones</h2>
                        <ActionButtonCreateAndModal
                            IconForButton={<CatchingPokemonIcon />}
                            textForButton={"Nuevo pokemón"}
                            formTitle={"Crear nuevo pokemón"}
                            ModalContent={Header}
                        />
                    </div>
                    <Table tableBasicColumns={pokemonTableColumns} />
                </div>
            </div>
        </div>
    );
};

export default Pokemons;
