<?php
$dns = "mysql:dbname=,host:localhost";
$user = "root";
$pass = "";

    try{
        $conexao = new PDO($dns,$user,$pass);
    }catch(PDOException $e){
        echo "Conexão com erro: ERRO".$e->getMessage();  
    }
?>