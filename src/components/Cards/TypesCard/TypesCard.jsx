import styles from "./TypesCard.module.css";

const TypesCard = ({ selectedElement }) => {
    return (
        <>
            <h2>{selectedElement.pok_name}</h2>
        </>
    );
};

export default TypesCard;
