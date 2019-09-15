<?php

require("classes/conexao.php"); 
require("buscaRegistros.php");
 $sql = "SELECT * FROM livro";
 $sql = $conexao->query($sql);

  if($sql->rowCount() > 0){   
    
    
   foreach ($sql->fetchAll() as $pessoa) {
        
       
?>

<!DOCTYPE html>

<html>
    <head>
        <title>Biblioteca</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="estilo123.css">
        <script type="text/javascript" src="js/jquery.js"></script>
        
        <script type="text/javascript">
          $(function(){
            

           $('.button-preco').mouseover(function(){
                $(this).html('COMPRAR');

             }).mouseout(function(){
               $(this).html('PREÇO');
             });  
          
          });
            
        </script>
    </head>
    <body>
        
        <style>
            body{
            margin: 0px;
            border: none;
            }
        </style>
        
        <div>
            
            <div class="topo"> 
                <img src="img/imagem.png" width="100" height="90" />
                <a href="login.php">
                    <button id="login" class="button" >LOGIN</button>
                </a>
                
            </div>
            <div class="bordertopo"></div>
            <div class="meio">
                
                <div class="container">
                    <div class="foto-container"></div>
                    <br>
                    <a class="texto"> NOME LIVRO </a>
                    <br>
                    <a class="autor"> Autor</a>
                    <button id="preco"class="button-preco">PREÇO</button>
                    <button id="preco"class="button-comprar">COMPRAR</button>
                </div>
                
                <div class="container">
                    <div class="foto-container"></div>
                    <br>
                    <a class="texto"> NOME LIVRO </a>
                    <br>
                     <a class="autor"> Autor</a>
                    <button id="preco"class="button-preco">PREÇO</button>
                    <button id="preco"class="button-comprar">COMPRAR</button>
                </div>
                
                   <div class="container">
                    <div class="foto-container"></div>
                       <br>
                    <a class="texto"> NOME LIVRO </a>
                       <br>
                        <a class="autor"> Autor</a>
                    <button id="preco"class="button-preco">PREÇO</button><button id="preco"class="button-comprar">COMPRAR</button>
                </div>
                
                   <div class="container">
                    <div class="foto-container"></div>
                       <br>
                    <a class="texto"> NOME LIVRO </a>
                       <br>
                        <a class="autor"> Autor</a>
                    <button id="preco"class="button-preco">PREÇO</button><button id="preco"class="button-comprar">COMPRAR</button>
                </div>
                
                   <div class="container">
                    <div class="foto-container"></div>
                       <br>
                    <a class="texto"> NOME LIVRO </a>
                       <br>
                        <a class="autor"> Autor</a>
                    <button id="preco"class="button-preco">PREÇO</button>
                    <button id="preco"class="button-comprar">COMPRAR</button>
                </div>
                
                   <div class="container">
                    <div class="foto-container"></div>
                       <br>
                    <a class="texto"> NOME LIVRO </a>
                       <br>
                       <a> Autor</a>
                    <button id="preco"class="button-preco">PREÇO</button>
                    <button id="preco"class="button-comprar">COMPRAR</button>
                </div>
            </div>
            <div class="rodape"></div>
            <div class="border-rodape"></div>
            
            
        </div>
    </body>
</html>
    <?php 
  } 

} 
?>


