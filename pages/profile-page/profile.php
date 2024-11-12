<h1>Perfil</h1>

<?php

session_start();

echo 
"ID: " . $_SESSION["idUsuario"] . " <br>
Nome: " . $_SESSION["nomeUsuario"] . " <br>
Sobrenome: " . $_SESSION["sobrenomeUsuario"] . " <br>
Email: " . $_SESSION["emailUsuario"] . " <br>
Senha: " . $_SESSION["senhaUsuario"] . " <br>
Data de Nascimento: " . $_SESSION["dataNascUsuario"] . " <br>
Status: " . $_SESSION["statusCadUsuario"] . " <br>";

?>