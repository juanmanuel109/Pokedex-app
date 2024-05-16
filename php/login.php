<?php
session_start();

$authtemp = "no";
$_SESSION['auth'] = $authtemp;

header('Access-Control-Allow-Origin: http://localhost:3000');
header('Access-Control-Allow-Credentials: true');
header('Content-Type: application/json');

require './dbConnection.php';

if (!$conn) {
    $response = ['error' => 'Connection failed: ' . mysqli_connect_error()];
    http_response_code(500);
    echo json_encode($response);
    exit;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $user = mysqli_real_escape_string($conn, $_POST['username']);
    $pass = mysqli_real_escape_string($conn, $_POST['password']);

    $sql = "SELECT * FROM users WHERE username = '$user'";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        if ($pass === $row['password']) {
            $_SESSION['username'] = $row['username'];
            $authtemp = "si";
            $_SESSION['auth'] = $authtemp;
            $response = ['message' => 'Autenticación exitosa', 'session' => $_SESSION];
            http_response_code(200);
            echo json_encode($response);
        } else {
            $response = ['error' => 'Credenciales inválidas'];
            http_response_code(401);
            echo json_encode($response);
        }
    } else {
        $response = ['error' => 'Usuario no encontrado'];
        http_response_code(404);
        echo json_encode($response);
    }
}

mysqli_close($conn);
