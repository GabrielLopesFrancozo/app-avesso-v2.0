<?php

session_start();
date_default_timezone_set('America/Sao_Paulo');

include("../../database/conection.php");

if (isset($_SESSION["idUsuario"])) {
    $idUsuario = $_SESSION["idUsuario"];

    $sql = "SELECT * FROM tbusuarios WHERE idUsuario = $idUsuario";
    $result = mysqli_query($conection, $sql);
    $dados = mysqli_fetch_assoc($result);

    $idUsuarioLogado = $dados["idUsuario"];

    $sql = "SELECT idUsuarioMatch FROM tbmatches WHERE idUsuario = $idUsuario";
    $result = mysqli_query($conection, $sql);
    $dados = mysqli_fetch_assoc($result);

    $idDestinatario = $dados["idUsuarioMatch"];

    // echo $idUsuario . " - " . $idDestinatario;
}

?>

<div class="container">
    <div class="contacts-container">
        <div class="tool-bar">
            <h1>Mensagens</h1>
        </div>
        <div class="search-input-container">
            <input class="search-input" type="text">
        </div>
        <div class="filter-container">
            <button class="chat-filter">Tudo</button>
            <button class="chat-filter">Não lidas</button>
            <button class="chat-filter">Favoritas</button>
        </div>
        <div class="chats-container">
            <?php
            for ($i = 0; $i < 4; $i++) {


            ?>
                <div id="<?= $i ?>" class="chat">
                    <div class="contact-user-profile">

                    </div>
                    <div class="contact-message-conatiner">

                    </div>
                    <div class="contact-message-notification">

                    </div>

                </div>
            <?php } ?>
        </div>
    </div>

    <div class="messages-container">

    </div>

    <!-- <form action="" method="post">
        <input type="hidden" id="idDestinatario" name="idDestinatario" value="<?= $idDestinatario ?>">
        <input type="hidden" id="idRemetente" name="idRemetente" value="<?= $idUsuarioLogado ?>">
        <input type="text" id="txtMsg" name="txtMsg"> <button id="btn-insert-msg" type="submit">Enviar</button>
    </form> -->
</div>

<!-- JQuery Script -->
<script src="../../js/vendor/jquery-3.7.1.js"></script>

<script src="chat.js"></script>