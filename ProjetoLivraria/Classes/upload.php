<?php
    required"Classes/conexao.php";
        $msg = false;

    if(isset($_FILES['arquivo'])){
        $extensao = strtolower(substr($_FILES['arquivo']['name'], -4));
        $novo_nome = md5(time()) . $extensao;
        $diretorio = "upload/";
        
        move_uploaded_file($_FILES['arquivo']['tmp_name'], $diretorio.$novo_nome);
        
        $sql_code = "INSERT INTO arquivo(codigo, arquivo, data) VALUES (null, '$novo_nome', NOW())";
            
        if($mysqli->query($sql_code)){
            $msg = "Arquivo enviado com sucesso!";
        }else{
            $msg = "Falha ao enviar!";
        }
    }
?>
<?php if ($msg? != "false") echo "<p> $msg </p>";?>
    
<form action="upload.php" method="POST" enctype=""></form>
    arquivo: <input type="file" required name="arquivo">
        <input type="submit" value="Salvar">
