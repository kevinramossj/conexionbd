<?php
require_once 'conexion.php';

class Persona {
    private $conexion;

    public function __construct() {
        $this->conexion = Conexion::conectar();
    }

    public function insertar() {
        $sql = "INSERT INTO persona (nombres, apellidos, dni, telefono, correo)
                VALUES ('Juan', 'Pérez', '12345678', '987654321', 'juan@gmail.com')";

        if ($this->conexion->query($sql) === TRUE) {
            echo "Insertado ID: " . $this->conexion->insert_id . "<br><br>";
        } else {
            echo "Error al insertar.<br><br>";
        }
    }

    public function actualizar() {
        $sql = "UPDATE persona SET telefono = '999999999' WHERE id = 1";

        if ($this->conexion->query($sql) === TRUE) {
            echo "Registro actualizado (id = 1)<br><br>";
        } else {
            echo "Error al actualizar.<br><br>";
        }
    }

    public function eliminar() {
        $sql = "DELETE FROM persona WHERE id = 2";

        if ($this->conexion->query($sql) === TRUE) {
            echo "Registro eliminado (id = 2)<br><br>";
        } else {
            echo "Error al eliminar.<br><br>";
        }
    }

    public function mostrar() {
        $sql = "SELECT * FROM persona";
        $resultado = $this->conexion->query($sql);

        if ($resultado->num_rows > 0) {
            while ($fila = $resultado->fetch_assoc()) {
                echo "Nombre: " . $fila['nombres'] . " " . $fila['apellidos'] . "<br>";
                echo "DNI: " . $fila['dni'] . "<br>";
                echo "Teléfono: " . $fila['telefono'] . "<br>";
                echo "Correo: " . $fila['correo'] . "<br>";
                echo "Estado: " . ($fila['estado'] == 1 ? "Activo" : "Inactivo") . "<br>";
                echo "Fecha: " . $fila['fecha_creado'] . "<br><hr>";
            }
        } else {
            echo "No hay registros.";
        }
    }
}
?>
