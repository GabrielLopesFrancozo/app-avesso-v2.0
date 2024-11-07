<?php

include("../../database/conection.php");

session_start();

$idUsuario = $_SESSION["idUsuario"];

$sql = "SELECT * FROM tbusuarios WHERE idUsuario != $idUsuario ORDER BY RAND() LIMIT 1";
$resultado = mysqli_query($conection, $sql);
$dados = mysqli_fetch_assoc($resultado);

if ($dados) {
    $randomId = $dados['idUsuario'];
} else {
    echo "Nenhum outro ID foi encontrado na tabela.";
}


?>
<link rel="stylesheet" href="./home.css">

<div class="filters-container">
    <button>Espiar</button>
    <button>Filtros</button>
    <p class="filters">#All</p>
</div>
<img src="<?= '../../assets/img/users/user-profile/' . $randomId . '.png'?>" width="400" alt="Foto usu">
<div class="bio">
    <h3><?= $dados['nomeUsuario'] ?></h3>
    <p><?= $dados['bioUsuario'] ?></p>
</div>

<form action="" method="post">
    <button type="submit">Detona</button>
    <a href="index.php?menu=chat&id=<?= $randomId ?>">Apaixona</a>
</form>

<!-- JQuery Script -->
<script src="../../js/jquery.js"></script>

<script src="home.js"></script>