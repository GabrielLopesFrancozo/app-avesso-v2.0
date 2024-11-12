<?php

include("../../database/conection.php");

$txtMsg = $_POST["txtMsg"];
$idRemetente = $_POST["idRemetente"];
$idDestinatario = $_POST["idDestinatario"];
$sql = "INSERT INTO tbmensagens (idRemetente, idDestinatario, conteudoMsg) 
VALUES ('$idRemetente','$idDestinatario','$txtMsg')";
mysqli_query($conection, $sql) or die(mysqli_error($conection));
