<?php
header('Access-Control-Allow-Origin: http://localhost:3000');
header('Content-Type: application/json');

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "users";

$conn = mysqli_connect($servername, $username, $password, $dbname);

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
            $_SESSION['username'] = $user;
            $response = ['message' => 'Autenticación exitosa'];
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
