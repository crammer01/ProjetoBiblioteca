<?php
 require("classes/conexao.php");

?>


<html>
    <head>
        <meta charset="UTF-8">
        <title>Cadastro</title>
        
        <link rel="stylesheet" type="text/css" href="estilo123.css">
        <script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
    </head>
    <body>
        
        <style>
            body{
            margin: 0px;
            border: none;
            }
        </style>
        

        <table border="0" width="100%"  class="mt-4" id="principal">
            <thead>
                <tr >
                    <td align="center" class="cad"> <h2>Cadastro de Livros </h2> </td>
                </tr>
            </thead>
            <tbody>
                <tr >
                    <td> 
                        <div class="background">
                            
                        <form name="for-cadastro" method="POST" enctype="multipart/form-data" action="gravaFormulario.php"  id="frm-cad">
                            <input type="hidden" name="acao" value="cadastrar">
                            <table border="6" width="100%" class="color">
                                <tbody>
                                    <tr>
                                        <td>
                                            <input type="text" name="nomelivro"  class="form-control" placeholder="Nome do Livro">
                                        </td>
                                        <td>
                                            <input type="text" name="autor"  class="form-control" placeholder="Autor Livro">
                                        </td>
                                        <td>
                                            <input type="text" name="Genero"  class="form-control" placeholder="Gênero do Livro">
                                        </td>
                                        
                                        
                                        <td>
                                                <input type="text" name="preco"  class="form-control" placeholder="Valor do Livro">
                                        </td>    
                                        
                                        <td>
                                               <input type="file" name="img"  class="form-control" placeholder="Selecionar imagem">

                                        </td>
                                        
                                        <td> 
                                            <button name="botao" value="cadastrar" type="submit" class="botaocad" id="cadastrar">Cadastrar</button>
                                           <span id="carregamento"></span>
                                            
                                            
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                    </td>
                        
                    </td>

                </tr>
                <tr height="90px">
                    <td>      
                        <div id="registros">
                                 <?php
            include "./buscaRegistros.php";
            ?>
                            
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
