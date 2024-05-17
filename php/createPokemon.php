<?php
header('Access-Control-Allow-Origin: http://localhost:3000');
header('Access-Control-Allow-Credentials: true');
header('Content-Type: application/json');

// Archivo de conexión a la base de datos
require './pokedexDBConnection.php';

// Verificar si la conexión a la base de datos falló
if (!$conn) {
    $response = ['error' => 'Connection failed: ' . mysqli_connect_error()];
    http_response_code(500); // Establecer código de respuesta 500 (Error del servidor)
    echo json_encode($response);
    exit;
}

// Obtener los datos enviados en la solicitud
$pok_name = isset($_POST['pok_name']) ? $_POST['pok_name'] : '';
$pok_height = isset($_POST['pok_height']) ? $_POST['pok_height'] : '';
$pok_weight = isset($_POST['pok_weight']) ? $_POST['pok_weight'] : '';
$pok_base_experience = isset($_POST['pok_base_experience']) ? $_POST['pok_base_experience'] : '';

// Insertar el nuevo Pokémon en la base de datos
$sql = "INSERT
        INTO pokemon (pok_name, pok_height, pok_weight, pok_base_experience) 
        VALUES ('$pok_name', '$pok_height', '$pok_weight', '$pok_base_experience')";

if (mysqli_query($conn, $sql)) {
    $response = ['success' => 'Pokémon agregado correctamente'];
    http_response_code(200); // Establecer código de respuesta 200 (OK)
    echo json_encode($response);
} else {
    $response = ['error' => 'Error: ' . mysqli_error($conn)];
    http_response_code(500); // Establecer código de respuesta 500 (Error del servidor)
    echo json_encode($response);
}

// Cerrar la conexión a la base de datos
mysqli_close($conn);
