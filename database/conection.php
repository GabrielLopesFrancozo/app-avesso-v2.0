<?php
// Informações do banco de dados
const SERVER = "localhost";
const USER = "root";
const PASSWORD = "";
const BASE = "dbavesso";

// Conecta ao servidor
$conection = mysqli_connect(SERVER,USER,PASSWORD,BASE) 
or die("Erro ao se conectar com o servidor: \n\n" . mysqli_connect_error() );

// Define o caractere padrão
mysqli_set_charset($conection, 'utf8mb4');