import FeatureButton from "./FeatureButton";
import StatsCard from "../Cards/StatsCard/StatsCard";
import TypesCard from "../Cards/TypesCard/TypesCard";

const FeatureButtons = ({ selectedElement }) => {
    return (
        <>
            <FeatureButton
                buttonType={"stats"}
                selectedElement={selectedElement}
                ModalContent={StatsCard} //Replace with the name of the specific feature component (card...)
            />
            <FeatureButton
                buttonType={"types"}
                selectedElement={selectedElement}
                ModalContent={TypesCard} //Replace with the name of the specific feature component (card...)
            />
        </>
    );
};

export default FeatureButtons;
