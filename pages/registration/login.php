<?php

include("../../database/conection.php");

session_start();
session_destroy();

if (isset($_POST["emailUsuario"]) && isset($_POST["senhaUsuario"])) {

    $emailUsuario = $_POST["emailUsuario"];
    $senhaUsuario = hash('sha256', $_POST["senhaUsuario"]);

    $sql = "SELECT idUsuario, statusCadastro FROM tbusuarios WHERE emailUsuario = '$emailUsuario' AND senhaUsuario = '$senhaUsuario'";
    $result = mysqli_query($conection, $sql);

    //Verifica se o usuário existe
    if (mysqli_num_rows($result) > 0) {

        $dados = mysqli_fetch_assoc($result);

        session_start();
        $_SESSION["idUsuario"] = $dados["idUsuario"];

        header("Location: ../../index.php?menu=home");

        // if ($dados["statusCadastro"] < 5) {
        //     header("Location: ../criarPerfil/criarPerfil-{$dados['statusCadastro']}.php");
        // } else {
        //     header("Location: ../../index.php");
        // }

    } else {
        echo "
        <script src='../../js/vendor/jquery-3.7.1.js'></script>
        <script>
            $(document).ready(function() {
                // Mostra o aviso
                $('.error').show();
            });
        </script>
        ";
    }
}
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | Avesso</title>
    <link rel="shortcut icon" type="image/svg" href="../../assets/img/app-imgs/favicon.ico" />
    <link rel="stylesheet" href="../../../styles/global.css">
    <link rel="stylesheet" href="./registration.css">
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>

<body>
    <div class="card-login">
        <img id="logo" src="../../assets/img/app-imgs/Logo-texto.svg" width="200" alt="Avesso - Logo do app">

        <div class="divider"></div>

        <form action="login.php" method="post">
            <span>Entrar com login e senha</span>

            <div class="area-input">
                <input id="emailUsuario" name="emailUsuario" type="email" placeholder="Email" value="usuario@example.com" required>
                <input id="senhaUsuario" name="senhaUsuario" type="password" placeholder="Senha" value="1234" required>
            </div>

            <div class="error" style="display: none;">
                <span>Email ou senha incorretos!</span>
            </div>

            <input type="submit" value="Entrar">
        </form>

        <div class="or-divider">
            <div class="divider"></div> Ou <div class="divider"></div>
        </div>

        <button>Entrar com Google</button>

        <span>Não possui uma conta?<a href="register.php">Cadastre-se</a></span>
    </div>
</body>

</html>