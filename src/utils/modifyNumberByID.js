export const modifyNumberByID = (id) => {
    id = parseInt(id, 10);
    if (id < 10) {
        return "00" + String(id);
    } else if (id < 100) {
        return "0" + String(id);
    } else {
        return String(id);
    }
};
