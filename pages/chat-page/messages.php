<?php
session_start();
$idDestinatario = $_GET["idUsuarioMatch"];
$idUsuarioLogado = $_SESSION["idUsuario"];

include("../../database/conection.php");

// $sql = "update tbmensagens set msgVisualizada = 1 where idRemetente = {$idDestinatario} and idDestinatario = {$idUsuarioLogado} and msgVisualizada = 0";
// mysqli_query($conection, $sql);

$sql = "select * from tbmensagens
where  (idRemetente = {$idUsuarioLogado} and idDestinatario={$idDestinatario}) or (idRemetente  = {$idDestinatario} and idDestinatario={$idUsuarioLogado})
order by dataMsg asc";
$rs = mysqli_query($conection, $sql);

?>

<link rel="stylesheet" href="chat.css">

<div class="messages">

    <?php

    while ($dados = mysqli_fetch_assoc($rs)) {
        $classBoxMsg = ($idUsuarioLogado == $dados["idRemetente"]) ? "msg-you" : "msg-others";
        $classMsgBox = ($idUsuarioLogado == $dados["idRemetente"]) ? "you" : "others";
    ?>

        <article class="<?= $classBoxMsg ?>">
            <div class="msg-box-<?= $classMsgBox ?>"><?= $dados["conteudoMsg"]; ?></div>
        </article>

        <!-- JQuery Script -->
        <!-- <script src="../../js/vendor/jquery-3.7.1.js"></script>

        <script>
            $lastMsg = $(".msg-box-<?= $classMsgBox ?>").last();
        </script> -->

    <?php
    }
    ?>
</div>