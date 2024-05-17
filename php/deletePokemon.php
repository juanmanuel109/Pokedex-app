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

// Obtener el ID del Pokemon desde los parámetros de la URL
$pok_id = isset($_GET['id']) ? intval($_GET['id']) : 0;

if ($pok_id <= 0) {
    $response = ['error' => 'Invalid Pokemon ID'];
    http_response_code(400); // Establecer código de respuesta 400 (Solicitud incorrecta)
    echo json_encode($response);
    exit;
}

// Consultar la base de datos para eliminar el Pokémon
$sql = "DELETE FROM pokemon WHERE pok_id = $pok_id";
$result = mysqli_query($conn, $sql);

// Verificar si hubo un error en la consulta SQL
if (!$result) {
    $response = ['error' => 'Error en la consulta: ' . mysqli_error($conn)];
    http_response_code(500); // Establecer código de respuesta 500 (Error del servidor)
    echo json_encode($response);
    exit;
}

if (mysqli_affected_rows($conn) > 0) {
    // Devolver los datos en formato JSON con código de respuesta 200 (Éxito)
    http_response_code(200);
    echo json_encode(['success' => 'Pokemon eliminado correctamente']);
} else {
    $response = ['error' => 'No fueron encontrados datos para el pokemon proporcionado'];
    http_response_code(404); // Establecer código de respuesta 404 (No encontrado)
    echo json_encode($response);
}

// Cerrar la conexión a la base de datos
mysqli_close($conn);
