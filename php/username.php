<?php
session_start();

date_default_timezone_set('America/Bogota'); // Establecer la zona horaria a Colombia
$hora_actual = date("Y-m-d-H-i-s"); // Obtener la hora actual
$cookieNombre = "ultimaVisitaALaPaginaDeInicio";
$cookieValor = $hora_actual;
// Establecer una cookie con nombre y valor, guardada durante 1 mes
setcookie($cookieNombre, $cookieValor, time() + (86400 * 30), "/");


header('Access-Control-Allow-Origin: http://localhost:3000');
header('Access-Control-Allow-Credentials: true');
header('Content-Type: application/json');

echo json_encode(['username' => $_SESSION['username']]);
