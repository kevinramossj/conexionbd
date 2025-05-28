<?php
require_once 'persona.php';

$persona = new Persona();

$persona->insertar();
$persona->actualizar();
$persona->eliminar();
$persona->mostrar();
?>
