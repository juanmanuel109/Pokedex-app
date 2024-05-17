import ActionButton from "./ActionButton";
import UpdatePokemonForm from "../Forms/UpdatePokemonForm/UpdatePokemonForm";
import ModeEditIcon from "@mui/icons-material/ModeEdit";
import DeleteIcon from "@mui/icons-material/Delete";

const ActionButtons = (props) => {
    const { selectedElement, handleDelete } = props;

    return (
        <>
            <ActionButton
                buttonType={"update"}
                updateFormTitle={"Actualizar Pokémon"}
                selectedElement={selectedElement}
                IconComponent={<ModeEditIcon />}
                ModalContent={UpdatePokemonForm} //Replace with the name of the specific action component (form...)
            />
            <ActionButton
                buttonType={"delete"}
                IconComponent={<DeleteIcon />}
                handleClick={handleDelete}
            />
        </>
    );
};

export default ActionButtons;
