
<?php

require("classes/Conexao.php");


if(isset($_POST['botao']) && $_POST['botao'] == "cadastrar"){

if(isset($_POST['nome']) && !empty($_POST['email'])){

   //$nome = addslashes($_POST['nome']);
   //$email = addslashes($_POST['email']);
   $dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);

 $sql = "INSERT INTO pessoa SET nome = :nome, email = :email, cpf = :cpf";
 $sql = $conexao->prepare($sql);
 $sql->bindValue(":nome",$dados['nome']);
 $sql->bindValue(":email",$dados['email']);
 $sql->bindValue(":cpf",$dados['cpf']);
 $sql->execute();

 if($conexao->lastInsertId() > 0){
 	//echo "Sucesso, Show show";
   header("Location:index.php");
 }

} //fim do if que teste se existe nome e email

}//fim do if cadastrar

if(isset($_POST['botao']) && $_POST['botao'] == "excluir" ){
   print_r($_POST);
   if(isset($_POST['id'])){

   $id = addslashes($_POST['id']);
   $sql = "DELETE FROM pessoa WHERE id_pessoa  = :id_pessoa";
   $sql = $conexao->prepare($sql);
   $sql->bindValue(":id_pessoa",$id);
   $sql->execute();

   header('location: cadastro.php');
   }

}

if(isset($_POST['botao']) &&  $_POST['botao'] == 'atualizar'){

    $dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);

 $sql = "UPDATE pessoa SET nome = :nome, email = :email, cpf = :cpf WHERE id_pessoa = :id";
 $sql = $conexao->prepare($sql);
 $sql->bindValue(":nome",$dados['nome']);
 $sql->bindValue(":email",$dados['email']);
 $sql->bindValue(":cpf",$dados['cpf']);
 $sql->bindValue(":id",$dados['id']);
 $sql->execute();

 header("location:cadastro.php");

}


?>
