<?php

include("../../database/conection.php");

// Verifica se o usuário realizou o envio do formulário
if (isset($_POST["nomeCompleto"]) && isset($_POST["emailUsuario"]) && isset($_POST["senhaUsuario"]) && isset($_POST["dataNascUsuario"])) {

    $dataNascUsuario = $_POST["dataNascUsuario"];
    $idade = calcularIdade($dataNascUsuario);

    if ($idade >= 18) {
        $nomeCompleto = $_POST["nomeCompleto"];
        $nomesIndividuais = explode(" ", $nomeCompleto);

        if (count($nomesIndividuais) > 1) {
            $nomeUsuario = $nomesIndividuais[0];
            $sobrenomeUsuario = implode(" ", array_slice($nomesIndividuais, 1));
        } else {
            $nomeUsuario = $nomeCompleto;
            $sobrenomeUsuario = "";
        }

        $emailUsuario = $_POST["emailUsuario"];
        $senhaUsuario = hash('sha256', $_POST["senhaUsuario"]);
        $dataNascUsuario = $_POST["dataNascUsuario"];

        // Procura se o usuário existe no banco de dados
        $sql = "SELECT emailUsuario FROM tbusuarios WHERE emailUsuario = '$emailUsuario'";
        $resultado = mysqli_query($conection, $sql);

        // Verifica se o usuário já possui cadastro
        if (mysqli_num_rows($resultado) > 0) {
            echo "
            <script src='../../js/vendor/jquery-3.7.1.js'></script>
            <script>
                $(document).ready(function() {
                    // Mostra o aviso
                    $('#emailError').show();
                });
            </script>
            ";
        } else {
            // Insere o usuário no banco de dados
            $sql = "INSERT INTO tbusuarios (nomeUsuario, sobrenomeUsuario, emailUsuario, senhaUsuario, dataNascUsuario) VALUES ('$nomeUsuario', '$sobrenomeUsuario', '$emailUsuario', '$senhaUsuario', '$dataNascUsuario')";
            $resultado = mysqli_query($conection, $sql);

            // Cria uma sessão para o usuário
            $sql = "SELECT idUsuario, statusCadastro FROM tbusuarios WHERE emailUsuario = '$emailUsuario'";
            $resultado = mysqli_query($conection, $sql);
            $dados = mysqli_fetch_assoc($resultado);

            session_start();
            $_SESSION["idUsuario"] = $dados["idUsuario"];

            if ($resultado) {
                // Atualiza o status de cadastro para 1
                $sql = "UPDATE tbusuarios SET statusCadastro = 1 WHERE idUsuario = $dados[idUsuario]";
                $resultado = mysqli_query($conection, $sql);
                header("Location: ../../index.php");
            } else {
                echo "Erro ao cadastrar";
            }
        }
    } else {
        echo "
        <script src='../../js/vendor/jquery-3.7.1.js'></script>
        <script>
            $(document).ready(function() {
                // Mostra o aviso
                $('#idadeError').show();
            });
        </script>
        ";
    }
}

function calcularIdade($dataNascUsuario)
{
    $dataNasc = new DateTime($dataNascUsuario);
    $hoje = new DateTime();
    $idade = $hoje->diff($dataNasc);
    return $idade->y;
}

?>

<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro | Avesso</title>
    <link rel="shortcut icon" type="image/svg" href="../../assets/img/app-imgs/favicon.ico" />
    <link rel="stylesheet" href="../../styles/global.css">
    <link rel="stylesheet" href="registration.css">
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>

<body>
    <div class="registration-container">
        <div class="card">
            <img id="logo" src="../../assets/img/app-imgs/Logo.svg" width="200" alt="Avesso - Logo do app">

            <div class="divider"></div>

            <form class="registration-form" action="register.php" method="post">
                <div class="area-input">
                    <span>Cadastrar-se</span>
                    <input
                        class="input"
                        id="emailUsuario"
                        name="emailUsuario"
                        type="email"
                        placeholder="Email"
                        value="usuario@example.com"
                        required>
                    <input
                        class="input"
                        id="senhaUsuario"
                        name="senhaUsuario"
                        type="password"
                        placeholder="Senha"
                        value="1234"
                        required>
                    <input
                        class="input"
                        id="nomeCompleto"
                        name="nomeCompleto"
                        type="text"
                        placeholder="Nome completo"
                        value="Usuário Teste"
                        required>
                    <input
                        class="input"
                        id="dataNascUsuario"
                        name="dataNascUsuario"
                        type="text"
                        placeholder="Data de nascimento"
                        onfocus="this.type='date'"
                        onblur="if (!this.value) this.type='text'"
                        value="2000-01-01"
                        required>
                    <!-- <input
                        class="input"
                        id="localizacaoUsuario"
                        name="localizacaoUsuario"
                        placeholder="Localização"
                        value="Brasília"
                        type="text"> -->
                    <div class="error" id="idadeError" style="display: none;">
                        <span>Você deve ter pelo menos 18 anos para se cadastrar</span>
                    </div>
                    <div class="error" id="emailError" style="display: none;">
                        <span>Usuário ja cadastrado</span>
                    </div>
                </div>

                <label class="termos" for="termos">Ao continuar você concorda com nossos <a class="link" href="terms-of-use.php">Termos e condições</a></label>


                <input class="button" type="submit" value="Continuar">
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

            <span>Já possui uma conta?<a class="link" href="login.php"> Conecte-se</a></span>
        </div>
    </div>
</body>

</html>