<?php
$dsn = "mysql:dbname=biblioteca;host=localhost";
$user = "root";
$pass = "";

try{

 $conexao = new PDO($dsn,$user,$pass);

}catch(PDOException $e){
 echo "Conexão com erro: ERRO".$e->getMessage();

}
?>