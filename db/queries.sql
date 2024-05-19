/* 
 Estas consultas tienen código php incrustado, es necesario usarlas dentro de un entorno adecuado
 */
-- ******************************************************************************************************
-- Operaciones de lectura
-- ******************************************************************************************************
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
-- Es necesario resaltar el uso de GROUP_CONCAT
-- Esta función permite concatenar varios registros en uno solo delimitados con una ','
SELECT pok_height,
    pok_weight,
    pok_base_experience,
    GROUP_CONCAT(type_name) AS TYPES
FROM pokemon
    JOIN pokemon_types ON pokemon_types.pok_id = pokemon.pok_id
    JOIN TYPES ON TYPES.type_id = pokemon_types.type_id
WHERE pokemon.pok_id = $pok_id;
-- ******************************************************************************************************
-- Operaciones de escritura
-- ******************************************************************************************************
-- Crear un nuevo Pokémon
INSERT INTO pokemon (
        pok_name,
        pok_height,
        pok_weight,
        pok_base_experience
    )
VALUES (
        '$pok_name',
        '$pok_height',
        '$pok_weight',
        '$pok_base_experience';
-- ******************************************************************************************************
-- Operaciones de actualización
-- ******************************************************************************************************
-- Actualizar datos del Pokémon seleccionado
UPDATE pokemon
SET pok_name = '$pok_name',
    pok_height = '$pok_height',
    pok_weight = '$pok_weight',
    pok_base_experience = '$pok_base_experience'
WHERE pok_id = $pok_id;
-- ******************************************************************************************************
-- Operaciones de eliminación
-- ******************************************************************************************************
-- Eliminar el Pokémon seleccionado
DELETE FROM pokemon
WHERE pok_id = $pok_id;