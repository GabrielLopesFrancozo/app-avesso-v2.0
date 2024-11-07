<?php
include("../../db/conexao.php");

if (isset($_POST['idHashtag'])) {
    $idHashtag = $_POST['idHashtag'];

    $sql = "DELETE FROM tbhashtags WHERE idHashtag = $idHashtag";
    if (mysqli_query($conexao, $sql)) {
        echo "Hashtag removed successfully";
    } else {
        echo "Error removing hashtag";
    }
} else {
    echo "Invalid request";
}

if (isset($_POST['idUsuario'])) {
    $idUsuario = $_POST['idUsuario'];

    $sql = "UPDATE tbusuarios SET bioUsuario = '' WHERE idUsuario = $idUsuario";
    if (mysqli_query($conexao, $sql)) {
        echo "Hashtag removed successfully";
    } else {
        echo "Error removing hashtag";
    }
} else {
    echo "Invalid request";
}
?>