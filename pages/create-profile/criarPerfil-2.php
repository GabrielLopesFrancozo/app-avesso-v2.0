<?php
include("../../database/conection.php");

session_start();

$idUsuario = $_SESSION["idUsuario"];

if (isset($_POST["bioUsuario"])) {
    $bio = $_POST["bioUsuario"];
    $sql = "UPDATE tbusuarios SET bioUsuario = '$bio', statusCadastro = 3 WHERE idUsuario = $idUsuario";
    mysqli_query($conection, $sql);
}

if (strpos($_SERVER['REQUEST_URI'], 'criarPerfil-2.php') !== false) {
    $sql = "UPDATE tbusuarios SET statusCadastro = 2 WHERE idUsuario = $idUsuario";
    $resultado = mysqli_query($conection, $sql);
}

$sql = "SELECT * FROM tbusuarios WHERE idUsuario = $idUsuario";
$result = mysqli_query($conection, $sql);
$dados = mysqli_fetch_assoc($result);

?>

<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro | Avesso</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>

<body>
    <div class="progresso" style="border: 1px solid black;">
        <p><?php echo $dados["statusCadastro"] ?></p>
    </div>

    <div class="principal" style="width: 100%;">
        <h1>Customizando perfil</h1>

        <div class="previzualizacao">
            <img src="../../img/fotos-usuarios/<?= $dados["fotoPerfilUsuario"] ?>" style="width: 100px; height: 100px; object-fit: cover;" alt="Foto do Usuário">
            <p id="bioUsuario"> <?= $dados["bioUsuario"] ?></p>
        </div>

        <div class="adicionarInfoContainer" style="border: 1px solid black;">
            <p>Adicione uma bio</p>
            <div class="bio" style="display: flex; flex-direction: row; gap: 5px; width: 50%;">
                <form method="post" style="width: 100%;">
                    <input id="bioUsuarioInput" type="text" name="bioUsuario" style="width: 93.5%;" required>
                    <button type="submit"><i class="bi bi-send-fill"></i></button>
                </form>
                <button type="submit"><i class="bi bi-x-lg" onclick="removerBio(<?php echo $dados['idUsuario'] ?>)"></i></button>
            </div>
        </div>
    </div>

    <div class="inferior">
        <a href="criarPerfil-3.php">Próximo</a>
    </div>

    <script>
        function removerBio(idUsuario) {
            // Send AJAX request to delete the hashtag
            fetch('removerHashtag.php', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    },
                    body: 'idUsuario=' + idUsuario
                })
                .then(response => response.text())
                .then(data => {
                    if (data.includes("successfully")) {
                        // Reload or update the hashtag display without reloading the page
                        location.reload();
                    } else {
                        alert("Erro ao remover hashtag.");
                    }
                })
                .catch(error => console.error("Erro:", error));
        }
    </script>

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
</body>

</html>