<?php

include("../../database/conection.php");

session_start();
date_default_timezone_set('America/Sao_Paulo');

$idUsuario = $_SESSION["idUsuario"];

// Consulta SQL para obter os matches considerando ambos os campos idUsuario1 e idUsuario2
$sql = "
    SELECT 
        CASE 
            WHEN tbmatches.idUsuario1 = $idUsuario THEN tbmatches.idUsuario2 
            ELSE tbmatches.idUsuario1 
        END AS idContato,
        tbusuarios.nomeUsuario,
        tbusuarios.sobrenomeUsuario
    FROM 
        tbmatches
    INNER JOIN 
        tbusuarios ON 
        (tbusuarios.idUsuario = tbmatches.idUsuario1 OR tbusuarios.idUsuario = tbmatches.idUsuario2)
    WHERE 
        (tbmatches.idUsuario1 = $idUsuario OR tbmatches.idUsuario2 = $idUsuario)
        AND tbusuarios.idUsuario != $idUsuario";

$result = mysqli_query($conection, $sql);

?>

<div class="chat-container">
    <div class="contacts-container">
        <div class="page-title">
            <h2>Contatos</h2>
        </div>
        <div class="search-input-container">
            <input class="search-input" type="text" placeholder="Buscar contatos...">
        </div>
        <div class="filter-container">
            <button class="chat-filter"><i class="bi bi-people-fill"></i> Tudo</button>
            <button class="chat-filter"><i class="bi bi-eye-slash"></i> Não lidas</button>
            <button class="chat-filter"><i class="bi bi-bookmarks"></i> Favoritas</button>
        </div>
        <div class="chats-container">
            <?php
            // Reinicia a consulta para evitar problemas no segundo uso do loop
            $result = mysqli_query($conection, $sql);

            while ($row = mysqli_fetch_assoc($result)) {
            ?>
                <div id="<?= $row['idContato'] ?>" class="chat" data-nome="<?= $row['nomeUsuario'] ?>" data-sobrenome="<?= str_replace(" ", "@", $row['sobrenomeUsuario']) ?>">
                    <div class="contact-user-profile">
                        <!-- Aqui você pode adicionar uma imagem de perfil se quiser -->
                    </div>
                    <div class="contact-message-container">
                        <span><?= $row['nomeUsuario'] . " " . $row['sobrenomeUsuario'] ?></span>
                    </div>
                    <div class="contact-message-notification">
                        <label>1</label> <!-- Ajuste a notificação se necessário -->
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>

    <div class="messages-main">
        <div class="top-bar">
            <div class="contact-user-profile"></div>
            <p id="nomeUsuarioMatch"></p>
        </div>
        <div class="messages-container">

            <div class="messages">
                <?php

                ?>
            </div>

        </div>
        <form action="" method="post">
            <div class="send-messages-container">
                <div class="messageBox">
                    <input required="" placeholder="Digite sua mensagem" type="text" id="messageInput" autocomplete="off" />
                    <button id="sendButton" type="submit">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 664 663">
                            <path
                                fill="none"
                                d="M646.293 331.888L17.7538 17.6187L155.245 331.888M646.293 331.888L17.753 646.157L155.245 331.888M646.293 331.888L318.735 330.228L155.245 331.888"></path>
                            <path
                                stroke-linejoin="round"
                                stroke-linecap="round"
                                stroke-width="33.67"
                                stroke="#6c6c6c"
                                d="M646.293 331.888L17.7538 17.6187L155.245 331.888M646.293 331.888L17.753 646.157L155.245 331.888M646.293 331.888L318.735 330.228L155.245 331.888"></path>
                        </svg>
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>

<!-- JQuery Script -->
<script src="../../js/vendor/jquery-3.7.1.js"></script>
<script src="chat.js"></script>