<?php
$conexion = new mysqli("localhost", "root", "", "conexion");

if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}

// INSERTAR
$sql = "INSERT INTO persona (nombres, apellidos, dni, telefono, correo)
        VALUES ('Juan', 'Pérez', '12345678', '987654321', 'juan@gmail.com')";
if ($conexion->query($sql) === TRUE) {
    $id = $conexion->insert_id;
    echo "Insertado ID: " . $id . "<br><br>";
} else {
    echo "Error al insertar.<br><br>";
}

// UPDATE
$sql = "UPDATE persona SET telefono = '999999999' WHERE id = 1";
if ($conexion->query($sql) === TRUE) {
    echo "Registro actualizado (id = 1)<br><br>";
} else {
    echo "Error al actualizar.<br><br>";
}

// DELETE
$sql = "DELETE FROM persona WHERE id = 2";
if ($conexion->query($sql) === TRUE) {
    echo "Registro eliminado (id = 2)<br><br>";
} else {
    echo "Error al eliminar.<br><br>";
}

// MOSTRAR TODOS LOS REGISTROS
$sql = "SELECT * FROM persona";
$resultado = $conexion->query($sql);

if ($resultado->num_rows > 0) {
    while ($fila = $resultado->fetch_assoc()) {
        echo "Nombre: " . $fila['nombres'] . " " . $fila['apellidos'] . "<br>";
        echo "DNI: " . $fila['dni'] . "<br>";
        echo "Teléfono: " . $fila['telefono'] . "<br>";
        echo "Correo: " . $fila['correo'] . "<br>";
        echo "Estado: " . ($fila['estado'] == 1 ? "Activo" : "Inactivo") . "<br>";
        echo "Fecha: " . $fila['fecha_creado'] . "<br>";
        echo "<hr>";
    }
} else {
    echo "No hay registros.";
}

$conexion->close();
?>
