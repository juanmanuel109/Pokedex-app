import styles from "./FeatureButtons.module.css";
import FeatureButton from "./FeatureButton";
import StatsCard from "../Cards/StatsCard/StatsCard";
import TypesCard from "../Cards/TypesCard/TypesCard";
import * as React from "react";

const FeatureButtons = ({ selectedElement }) => {
    return (
        <>
            <FeatureButton
                buttonType={"stats"}
                selectedElement={selectedElement}
                ModalContent={StatsCard} //Replace with the name of the specific action component (form...)
            />
            <FeatureButton
                buttonType={"types"}
                selectedElement={selectedElement}
                ModalContent={TypesCard} //Replace with the name of the specific action component (form...)
            />
        </>
    );
};

export default FeatureButtons;
