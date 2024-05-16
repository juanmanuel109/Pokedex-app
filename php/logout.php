<?php
session_start();

header('Access-Control-Allow-Origin: http://localhost:3000');
header('Access-Control-Allow-Credentials: true');
header('Content-Type: application/json');

// Cerrar sesión y establecer $_SESSION['auth'] en "no"
$_SESSION['auth'] = "no";

echo json_encode(['message' => 'Sesión cerrada correctamente']);
