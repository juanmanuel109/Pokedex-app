<?php
// Inicia la sesión
session_start();

$authtemp = "no";
$_SESSION['auth'] = $authtemp;

// Configuración de encabezados para permitir el acceso desde http://localhost:3000 y permitir cookies
header('Access-Control-Allow-Origin: http://localhost:3000');
header('Access-Control-Allow-Credentials: true');
header('Content-Type: application/json');

require './usersDBConnection.php';

// Si no se puede establecer la conexión a la base de datos
if (!$conn) {
    $response = ['error' => 'Connection failed: ' . mysqli_connect_error()];
    http_response_code(500); // Código de estado HTTP 500 (Error interno del servidor)
    echo json_encode($response);
    exit; // Termina la ejecución del script
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Evita los caracteres especiales en las variables del formulario para evitar inyección SQL
    $user = mysqli_real_escape_string($conn, $_POST['username']);
    $pass = mysqli_real_escape_string($conn, $_POST['password']);

    // Consulta para buscar al usuario en la base de datos
    $sql = "SELECT * FROM users WHERE username = '$user'";
    $result = mysqli_query($conn, $sql);

    // Si se encuentra al menos un usuario con el nombre de usuario proporcionado
    if (mysqli_num_rows($result) > 0) {

        // Obtiene la fila del resultado como un array asociativo
        $row = mysqli_fetch_assoc($result);

        if ($pass === $row['password']) {

            // Establece el nombre de usuario en la sesión
            $_SESSION['username'] = $row['username'];
            // Cambia el valor de la variable temporal de autenticación a "si"
            $authtemp = "si";
            // Actualiza el valor de autenticación en la sesión
            $_SESSION['auth'] = $authtemp;

            // Responde con un mensaje de autenticación exitosa y la sesión actual
            $response = ['message' => 'Autenticación exitosa', 'session' => $_SESSION];
            http_response_code(200); // Código de estado HTTP 200 (Solicitud exitosa)
            echo json_encode($response);
        } else {
            // Responde con un error de credenciales inválidas si la contraseña no coincide
            $response = ['error' => 'Credenciales inválidas'];
            http_response_code(401); // Código de estado HTTP 401 (No autorizado)
            echo json_encode($response);
        }
    } else {
        // Responde con un error si el usuario no se encuentra en la base de datos
        $response = ['error' => 'Usuario no encontrado'];
        http_response_code(404); // Código de estado HTTP 404 (No encontrado)
        echo json_encode($response);
    }
}

// Cierra la conexión a la base de datos
mysqli_close($conn);
