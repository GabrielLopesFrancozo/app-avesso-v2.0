<?php
const SERVER = "localhost";
const USER = "root";
const PASSWORD = "";
const BASE = "dbavesso";

$conection = mysqli_connect(SERVER,USER,PASSWORD,BASE) 
or die("Erro ao Conectar no servidor: " . mysqli_connect_error() );

/* Define o caracter padrão */
mysqli_set_charset($conection, 'utf8mb4');
?>