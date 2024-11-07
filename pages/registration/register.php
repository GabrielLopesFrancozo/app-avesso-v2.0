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
                    $('.registred-user').show();
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
                $('.menor-idade').show();
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
    <div class="card-cadastro">
        <img id="logo" src="../../assets/img/app-imgs/Logo-texto.svg" width="200" alt="Avesso - Logo do app">

        <div class="divider"></div>

        <form action="register.php" method="post">
            <span>Cadastrar-se</span>

            <div class="area-input">
                <input
                    id="emailUsuario"
                    name="emailUsuario"
                    type="email"
                    placeholder="Email"
                    value="usuario@example.com"
                    required>
                <input
                    id="senhaUsuario"
                    name="senhaUsuario"
                    type="password"
                    placeholder="Senha"
                    value="1234"
                    required>
                <input
                    id="nomeCompleto"
                    name="nomeCompleto"
                    type="text"
                    placeholder="Nome completo"
                    value="Usuário Teste"
                    required>
                <input
                    id="dataNascUsuario"
                    name="dataNascUsuario"
                    type="text"
                    placeholder="Data de nascimento"
                    onfocus="this.type='date'"
                    onblur="if (!this.value) this.type='text'"
                    value="2000-01-01"
                    required>
                <input
                    id="localizacaoUsuario"
                    name="localizacaoUsuario"
                    placeholder="Localização"
                    value="Brasília"
                    type="text">
            </div>

            <label id="termos" for="termos">Ao continuar você concorda com nossos <a href="../termos.php">Termos e condições</a></label>

            <div class="menor-idade" style="display: none;">
                <span>Você deve ter pelo menos 18 anos para se cadastrar</span>
            </div>
            <div class="registred-user" style="display: none;">
                <span>Usuário ja cadastrado</span>
            </div>

            <input type="submit" value="Continuar">
        </form>

        <div class="or-divider">
            <div class="divider"></div> Ou <div class="divider"></div>
        </div>

        <button>Entrar com Google</button>

        <span>Já possui uma conta?<a href="login.php">Conecte-se</a></span>
    </div>

</body>

</html>