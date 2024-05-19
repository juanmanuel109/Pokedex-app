/* 
 Operaciones de lectura
 */
-- Leer atributos clave de todos los pokemones
SELECT pok_id,
    pok_name,
    pok_height,
    pok_weight,
    pok_base_experience
FROM pokemon;
--
-- Leer todos los usuarios
SELECT *
FROM users
WHERE username = '$user';
--
-- Leer las estadísticas del Pokémon seleccionado
SELECT pok_height,
    pok_weight,
    pok_base_experience,
    b_hp,
    b_atk,
    b_def
FROM pokemon
    JOIN base_stats ON base_stats.pok_id = pokemon.pok_id
WHERE pokemon.pok_id = $pok_id;
--
-- Leer los tipos del Pokémon seleccionado
SELECT pok_height,
    pok_weight,
    pok_base_experience,
    GROUP_CONCAT(type_name) AS TYPES
FROM pokemon
    JOIN pokemon_types ON pokemon_types.pok_id = pokemon.pok_id
    JOIN TYPES ON TYPES.type_id = pokemon_types.type_id
WHERE pokemon.pok_id = $pok_id;