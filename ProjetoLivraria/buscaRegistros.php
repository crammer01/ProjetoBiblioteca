<?php

require("classes/Conexao.php"); 

 $sql = "SELECT * FROM livro";
 $sql = $conexao->query($sql);

  if($sql->rowCount() > 0){   
    
    
   foreach ($sql->fetchAll() as $pessoa) {
        
       
    ?>
<html>
<head>
        <meta charset="UTF-8">
        <title>Registro</title>
        
        <link rel="stylesheet" type="text/css" href="estilo123.css">
        <script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
    </head>
</html>    



<form name="for-registros" method="POST" action="gravaFormulario.php" id="registros"enctype="multipart/form-data">
    <table border="1" width="100%"  class="mt-4" id="principal">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Nome do Livro</th>
                <th scope="col">Autor</th>
                <th scope="col">Genero</th>
                <th scope="col">Preço</th>
                <th scope="col">Foto Livro</th>

            </tr>
        </thead>
        <tbody>


                <tr>
                    <td><?php // imprimir o ID?>   <input type="hidden" name="id"  class="form-control" value="<?php echo $pessoa['id_pessoa']?>"></td>
                    <td>
                        <input type="text" name="nome"  class="form-control" value="<?php echo $pessoa['nome'] ?>">
                    </td>
                    <td>
                        <input type="text" name="email"  class="form-control"value="<?php echo $pessoa['email']?>">
                    </td>
                    <td>
                        <input type="text" name="cpf"  class="form-control" value="<?php  echo $pessoa['cpf']?>">
                    </td>
                    <td>
                        <input type="text" name="cpf"  class="form-control" value="<?php  echo $pessoa['cpf']?>">

                    </td>
                    <td>
                       <input type="file" name="cpf"  class="estilo" value="<?php  echo $pessoa['cpf']?>"> 
                        
                    </td>
                    
                    <td> <a href="cadastro.php">
                        <button value="atualizar" class="bt2n2" name="botao" id="atualizar">Atualizar</button>
                        </a>
                        <button   value="excluir" name="botao"  class="btn2">Excluir</button> 
                         <span id="carregamento"></span>
                    </td>
                </tr>
        </tbody>
    </table>
</form>
    <?php 
  } 

} 
?>

