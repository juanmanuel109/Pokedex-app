import { buttonStyles } from "../../utils/featureButtonStyles";
import { useState } from "react";
import Box from "@mui/material/Box";
import Modal from "@mui/material/Modal";
import { modalStyle } from "../../utils/modalStyles";

const FeatureButton = (props) => {
    const { buttonType, ModalContent, selectedElement } = props;

    const appliedStyles = buttonStyles[buttonType];
    const [open, setOpen] = useState(false);
    const handleOpen = () => setOpen(true);
    const handleClose = () => setOpen(false);

    return (
        <>
            <button onClick={handleOpen} style={appliedStyles}>
                {buttonType === "stats" ? "Estadísticas" : "Tipos"}
            </button>
            <Modal
                open={open}
                onClose={handleClose}
                aria-labelledby="modal-modal-title"
                aria-describedby="modal-modal-description"
            >
                <Box sx={modalStyle}>
                    <ModalContent
                        selectedElement={selectedElement}
                        setOpen={setOpen}
                    />
                </Box>
            </Modal>
        </>
    );
};

export default FeatureButton;
