// Función que asigna un color dependiendo del valor de 'type_name'
export const getColorByType = (typeName) => {
    switch (typeName) {
        case "normal":
            return "#A8A77A"; // Color para 'normal'
        case "fighting":
            return "#C22E28"; // Color para 'fighting'
        case "flying":
            return "#A98FF3"; // Color para 'flying'
        case "poison":
            return "#A33EA1"; // Color para 'poison'
        case "ground":
            return "#E2BF65"; // Color para 'ground'
        case "rock":
            return "#B6A136"; // Color para 'rock'
        case "bug":
            return "#A6B91A"; // Color para 'bug'
        case "ghost":
            return "#735797"; // Color para 'ghost'
        case "steel":
            return "#B7B7CE"; // Color para 'steel'
        case "fire":
            return "#EE8130"; // Color para 'fire'
        case "water":
            return "#6390F0"; // Color para 'water'
        case "grass":
            return "#7AC74C"; // Color para 'grass'
        case "electric":
            return "#F7D02C"; // Color para 'electric'
        case "psychic":
            return "#F95587"; // Color para 'psychic'
        case "ice":
            return "#96D9D6"; // Color para 'ice'
        case "dragon":
            return "#6F35FC"; // Color para 'dragon'
        case "dark":
            return "#705746"; // Color para 'dark'
        case "fairy":
            return "#D685AD"; // Color para 'fairy'
        default:
            return "#A8A77A"; // Color por defecto
    }
};
