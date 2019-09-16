<?php
    require("classes/conexao.php");
    require("classes/conexao1.php");

//$idL = $_POST['ID'];

if(isset($_POST['botao']) && $_POST['botao'] == "cadastrar"){
//cadastrar

if(isset($_FILES['arquivo'])){
        $extensao = strtolower(substr($_FILES['arquivo']['name'], -4)); //pega a extensao do arquivo
            $novo_nome = md5(time()) . $extensao; //define o nome do arquivo
                $diretorio = "../upload/";    
}
    
$nomeL = $_POST['nomeLivro'];
$autorL = $_POST['autor'];
$generoL = $_POST['Genero'];
$precoL = $_POST['preco'];

if($nomeL != "" && $novo_nome != ""){
    move_uploaded_file($_FILES['arquivo']['tmp_name'], $diretorio.$novo_nome); //efetua o upload
    
    $sql = "INSERT INTO livro(Titulo, Autor, Genero, Preco, arquivo, data)VALUES('$nomeL', '$autorL', '$generoL', '$precoL', '$novo_nome', NOW())";
    $sql = $conexao->prepare($sql);
    $sql->execute();
    header('location: cadastro.php');
}else{
    echo "Nao foi possivel realizar o cadastro";
}
}//fim do cadastrar

if(isset($_POST['botao']) && $_POST['botao'] == "excluir" ){
   print_r($_POST);
   if(isset($_POST['ID'])){

   $id = addslashes($_POST['ID']);
   $sql = "DELETE FROM livro WHERE ID  = :id_livro";
   $sql = $conexao->prepare($sql);
   $sql->bindValue(":id_livro",$id);
   $sql->execute();

   header('location: cadastro.php');
   }

}//fim do excluir

/*if(isset($_POST['botao']) &&  $_POST['botao'] == 'atualizar'){
    $dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);
 $id = addslashes($_POST['ID']);
 $sql = "UPDATE livro SET Titulo = :titulo, Autor = :autor, Genero = :genero, Preco = :preco WHERE ID = :ID";    
    
 $sql = $conexao->prepare($sql);
 $sql->bindValue(":ID",$id);   
 $sql->bindValue(":titulo",$dado['Titulo']);
 $sql->bindValue(":autor",$dado['Autor']);
 $sql->bindValue(":genero",$dado['Genero']);
 $sql->bindValue(":preco",$dado['Preco']);
 $sql->execute();

 header("location:cadastro.php");
}
*/

if(isset($_POST['botao']) &&  $_POST['botao'] == 'atualizar'){

$nomeL = $_POST['nomeLivro'];
$autorL = $_POST['autor'];
$generoL = $_POST['Genero'];
$precoL = $_POST['preco'];
    print_r($_POST);
    
    $id = addslashes($_POST['ID']);
    $sql = "UPDATE livro SET Titulo = '$nomeL', Autor = '$autorL', Genero = '$generoL', Preco = '$precoL' WHERE ID = id_livro ";
    
    $sql = $conexao->prepare($sql);
    $sql->bindValue(":id_livro",$id);
    $sql->execute();
    
    print_r($id);
    
}
?>