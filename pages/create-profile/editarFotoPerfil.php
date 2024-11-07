<?php
    include("../../db/conexao.php");
   
    session_start();

    $idUsuario = $_SESSION["idUsuario"];

    $sql = "SELECT * FROM tbusuarios WHERE idUsuario = $idUsuario";
    $result = mysqli_query($conexao, $sql);
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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
</head>

<body>
    <h1>Personalize sua conta</h1>
    <h2><?= $dados["nomeUsuario"] ?></h2>
    <div class="col-12">
        <?php
        if ($dados["fotoPerfilUsuario"] == "" || !file_exists('../../img/fotos-usuarios/' . $dados["fotoPerfilUsuario"])) {
            $nomeFoto = "SemFoto.jpg";
        } else {
            $nomeFoto = $dados["fotoPerfilUsuario"];
        }
        ?>
        <div class="mb-3">
            <img id="foto-usuario" class="img-fluid img-thumbnail" width="200" src="../../img/fotos-usuarios/<?= $nomeFoto ?>" alt="Foto do Usuário">
        </div>

        <div class="mb-3">
            <button class="btn btn-info" id="btn-editar-foto">
                <i class="bi bi-camera-fill"></i> Editar Foto
            </button>
        </div>
        <div id="editar-foto">
            <form id="form-upload-foto" class="mb-3" action="" method="post" enctype="multipart/form-data">
                <input type="hidden" name="idUsuario" value="<?= $idUsuario ?>">
                <label class="form-label" for="arquivo">Selecione um arquivo de imagem da foto</label>
                <div class="input-group">
                    <input class="form-control" type="file" name="arquivo" id="arquivo">
                    <input id="btn-enviar-foto" class="btn btn-secondary" type="submit" value="Enviar">
                </div>

            </form>
            <div id="mensagem" class="mb-3 alert alert-success">

            </div>
            <div id="preloader" class="progress">
                <div id="barra"
                    class="progress-bar bg-danger"
                    role="progressbar"
                    style="width: 0%"
                    aria-valuenow="0"
                    aria-valuemin="0"
                    aria-valuemax="100">0%</div>
            </div>
        </div>

    </div>
    <script src="../../js/jquery.js"></script>
    <script src="../../js/jquery.form.js"></script>
    <script src="../../js/upload.js"></script>
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
    <script src="../../js/validation.js"></script>
</body>

</html>