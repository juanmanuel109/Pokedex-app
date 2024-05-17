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

// Consultar la base de datos para obtener los datos de la tabla pokemon
$sql = "SELECT pok_id, pok_name, pok_height, pok_weight, pok_base_experience FROM pokemon";
$result = mysqli_query($conn, $sql);

// Verificar si hubo un error en la consulta SQL
if (!$result) {
    $response = ['error' => 'Error en la consulta: ' . mysqli_error($conn)];
    http_response_code(500); // Establecer código de respuesta 500 (Error del servidor)
    echo json_encode($response);
    exit;
}

$data = [];
while ($row = mysqli_fetch_assoc($result)) {
    $data[] = $row;
}

// Devolver los datos en formato JSON con código de respuesta 200 (Éxito)
http_response_code(200);
echo json_encode($data);

// Cerrar la conexión a la base de datos
mysqli_close($conn);
