<?php

include("../../db/conexao.php");

session_start();
$idUsuario = $_SESSION["idUsuario"];

if (strpos($_SERVER['REQUEST_URI'], 'concluirPerfil.php') !== false) {
    $sql = "UPDATE tbusuarios SET statusCadastro = 5 WHERE idUsuario = $idUsuario";
    $resultado = mysqli_query($conexao, $sql);

    if ($resultado) {
        header("Location: ../../index.php");
    }
}
