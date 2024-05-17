import styles from "./StatsCard.module.css";
const StatsCard = ({ selectedElement }) => {
    return (
        <>
            <h2>{selectedElement.pok_name}</h2>
        </>
    );
};

export default StatsCard;
