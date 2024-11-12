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

<!-- Bootstrap Icons -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<link rel="stylesheet" href="./home.css">
<div class="tela">
    <div class="filters-container">
        <button class="espiar"><i class="bi bi-eye"></i>Espiar</button>
        <button class="filter"><i class="bi bi-filter"></i>Filtros</button>
        <p class="hashtags">#All</p>
    </div>
    <div class="divider"></div>
    <div class="content">
        <div class="content-image">
            <img src="<?= './assets/img/users/user-profile/26.png' ?>" class="img" alt="Foto usuario">
            <div class="blur-container">
                <form method="post" class="options-container">
                    <button id="Detona" type="submit"><i class="bi bi-x-lg"></i></button>
                    <button id="Cantada"><i class="bi bi-chat-square-heart-fill"></i></button>
                    <button id="Apaixona"><i class="bi bi-suit-heart-fill"></i></button>
                </form>
            </div>
        </div>
        <div class="info">
            <div class="bio">
                <h3 class="nome"><?= $dados['nomeUsuario'] ?></h3>
                <h4>Brazil</h4>
                <p class="bio-user"><?= $dados['bioUsuario'] ?></p>
            </div>
            <div class="divider"></div>
            <div class="hashtags-container">
                <label>#Viagens #Amigos #Festas</label>
            </div>
            <div class="perguntas">
                <h3 class="pergunta">Maior(es) sonho(s)</h3>
                <p>Conhecer a Noruega. Eu realmente AMO o frio e acho as montanhas nevadas norueguesas a coisa mais linda do mundo!</p>
            </div>
        </div>
        <!-- JQuery Script -->
        <script src="../../js/jquery.js"></script>

        <script src="home.js"></script>
    </div>