<?php

session_start();

if (!isset($_SESSION["idUsuario"])) {
    header("Location: ./pages/registration/login.php");
}

?>


<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Avesso 2.0</title>
    <link rel="shortcut icon" type="image/svg" href="./assets/img/app-imgs/favicon.ico" />
    <link rel="stylesheet" href="./styles/global.css">
    <link rel="stylesheet" href="./styles/layouts/navbar.css">
    <link rel="stylesheet" href="./styles/layouts/loading-bar.css">
    <link rel="stylesheet" href="./styles/layouts/tool-bar.css">
    <link rel="stylesheet" href="./styles/layouts/search-input.css">
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>

<body>
    <div id="loading-bar"></div>
    <header>
        <nav class="navbar">
            <img src="./assets/img/app-imgs/Logo-texto.svg" width="150" alt="Avesso">
            <div class="divider"></div>
            <ul class="navbar-nav">
                <li class="nav-item active" id="home">
                    <i class="bi bi-house-door" data-icon="bi bi-house-door" data-icon-filled="bi bi-house-door-fill"></i>
                    <a class="nav-link" href="#" data-menu="home">Principal</a>
                </li>
                <li class="nav-item" id="chat">
                    <i class="bi bi-chat-heart" data-icon="bi bi-chat-heart" data-icon-filled="bi bi-chat-heart-fill"></i>
                    <a class="nav-link" href="#" data-menu="chat">Conversas</a>
                </li>
                <li class="nav-item" id="notifications">
                    <i class="bi bi-bell" data-icon="bi bi-bell" data-icon-filled="bi bi-bell-fill"></i>
                    <a class="nav-link" href="#" data-menu="notifications">Notificações</a>
                </li>
                <li class="nav-item" id="search">
                    <i class="bi bi-search" data-icon="bi bi-search" data-icon-filled="bi bi-search"></i>
                    <a class="nav-link" href="#" data-menu="search">Pesquisar</a>
                </li>
                <li class="nav-item" id="profile">
                    <i class="bi bi-person" data-icon="bi bi-person" data-icon-filled="bi bi-person-circle"></i>
                    <a class="nav-link" href="3" data-menu="profile">Perfil</a>
                </li>
                <div class="nav-bottom">
                    <li class="nav-item" id="settings">
                        <i class="bi bi-gear" data-icon="bi bi-gear" data-icon-filled="bi bi-gear-fill"></i>
                        <a class="nav-link" href="#" data-menu="settings">Configurações</a>
                    </li>
                    <li class="nav-item-logout">
                        <i class="bi bi-arrow-right"></i>
                        <button class="logout-button" onclick="showModal()">Sair</button>
                    </li>
                </div>
            </ul>
        </nav>
    </header>

    <main>
        <!-- Conteúdo dinamicamente carregado -->
    </main>

    <!-- Modal de logout -->
    <link rel="stylesheet" href="./pages/registration/logout/logout.css">
    <?php
    include("./pages/registration/logout/logout.php");
    ?>

    <!-- JQuery Script -->
    <script src="./js/vendor/jquery-3.7.1.js"></script>

    <script src="./js/index.js"></script>
    <script src="./pages/registration/logout/logout.js"></script>
</body>

</html>