<?php

include("../../database/conection.php");

session_start();
session_destroy();

if (isset($_POST["emailUsuario"]) && isset($_POST["senhaUsuario"])) {

    $emailUsuario = $_POST["emailUsuario"];
    $senhaUsuario = hash('sha256', $_POST["senhaUsuario"]);

    $sql = "SELECT idUsuario, statusCadUsuario FROM tbusuarios WHERE emailUsuario = '$emailUsuario' AND senhaUsuario = '$senhaUsuario'";
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
    <div class="registration-container">
        <img id="phone-example" src="../../assets/img/app-imgs/Phone-example.svg" alt="App in a phone example">
        <div class="card">
            <img id="logo" src="../../assets/img/app-imgs/Logo.svg" width="200" alt="Avesso - Logo do app">
            <form class="registration-form" action="login.php" method="post">
                <div class="area-input">
                    <div class="input-group">
                        <input class="input" name="emailUsuario" type="email" placeholder="Email" value="guilherme.aquino.8584@example.com" required>
                    </div>
                    <div class="input-group">
                        <input class="input" name="senhaUsuario" type="password" placeholder="Senha" value="guilhermeaquino8584" required>
                    </div>
                    <div class="error" style="display: none;">
                        <span>Email ou senha incorretos!</span>
                    </div>
                </div>

                <input class="button" type="submit" value="Entrar">
            </form>

            <div class="or-divider">
                <div class="divider"></div> Ou <div class="divider"></div>
            </div>

            <button class="gsi-material-button">
                <div class="gsi-material-button-content-wrapper">
                    <div class="gsi-material-button-icon">
                        <svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 48" xmlns:xlink="http://www.w3.org/1999/xlink" style="display: block;">
                            <path fill="#EA4335" d="M24 9.5c3.54 0 6.71 1.22 9.21 3.6l6.85-6.85C35.9 2.38 30.47 0 24 0 14.62 0 6.51 5.38 2.56 13.22l7.98 6.19C12.43 13.72 17.74 9.5 24 9.5z"></path>
                            <path fill="#4285F4" d="M46.98 24.55c0-1.57-.15-3.09-.38-4.55H24v9.02h12.94c-.58 2.96-2.26 5.48-4.78 7.18l7.73 6c4.51-4.18 7.09-10.36 7.09-17.65z"></path>
                            <path fill="#FBBC05" d="M10.53 28.59c-.48-1.45-.76-2.99-.76-4.59s.27-3.14.76-4.59l-7.98-6.19C.92 16.46 0 20.12 0 24c0 3.88.92 7.54 2.56 10.78l7.97-6.19z"></path>
                            <path fill="#34A853" d="M24 48c6.48 0 11.93-2.13 15.89-5.81l-7.73-6c-2.15 1.45-4.92 2.3-8.16 2.3-6.26 0-11.57-4.22-13.47-9.91l-7.98 6.19C6.51 42.62 14.62 48 24 48z"></path>
                            <path fill="none" d="M0 0h48v48H0z"></path>
                        </svg>
                    </div>
                    <span class="gsi-material-button-contents">Entrar com Google</span>
                </div>
            </button>

            <span>Não possui uma conta?<a class="link" href="register.php"> Cadastre-se</a></span>
        </div>
    </div>
</body>

</html>