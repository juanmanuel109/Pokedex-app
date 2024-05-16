<?php
session_start();

header('Access-Control-Allow-Origin: http://localhost:3000');
header('Access-Control-Allow-Credentials: true');
header('Content-Type: application/json');

if (isset($_SESSION['auth']) && $_SESSION['auth'] === "si") {
    echo json_encode(['auth' => true]);
} else {
    echo json_encode(['auth' => false]);
}
