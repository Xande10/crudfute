<!DOCTYPE html>
<?php 
    include_once "conf/default.inc.php";
    require_once "conf/Conexao.php";
    $title = "Lista dos Campeonatos";
    $tipo = isset($_POST['tipo']) ? $_POST['tipo'] : "2";
    $procurar = isset($_POST['procurar']) ? $_POST['procurar'] : "";

?>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title> <?php echo $title; ?> </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
    crossorigin="anonymous">

    <link rel="shortcut icon" href="favicon/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="css/csscelio.css" />   
    <script>
        function excluirRegistro(url){
            if (confirm("Confirma Exclusão?"))
                location.href = url;
        }
    </script>
</head>
<body>
<?php include "menu.php"; ?>

 <br>
<form method="post">
<h3> Procurar por: </h3>
<div class="form-check">
    <input class="form-check-input" type="radio" name="tipo" id="tipo" value="1" <?php if ($tipo
    == 1) { echo "checked"; }?>>  
     <label class="form-check-label" for="flexRadioDefault1">ID
    </label> <br>
    <input class="form-check-input" type="radio" name="tipo" id="tipo" value="2" <?php if ($tipo
    == 2) { echo "checked"; }?>>
    <label class="form-check-label" for="flexRadioDefault1">Nome do Campeonato
    </label>
    </div>

<table class="table table-dark table-striped">
    <tr><td><b>ID</b></td>
        <td><b>Nome do Campeonato</b></td>
        <td><b>Edição do Campeonato</b></td>    
        <td><b>Excluir</b></td>
        <td><b>Editar</b></td>
    </tr>
<br>
    <div class="mb-3">
<label for="exampleFormControlInput1" class="form-label">Inserir</label>
<input class="form-control" type="text" name="procurar" id="procurar" value="<?php echo
$procurar; ?>">
</div>
<div class="dados">
<div class="d-grid gap-2">
   
    <input class="btn btn-dark" type="submit" value="Consultar">
    </div>
</div>
</form>
<br>


<?php
    $sql = "";
    if ($tipo == 1){
        $sql = "SELECT * FROM campeonato WHERE id_camp = '$procurar%' ORDER BY id_camp";
    }else{    
        $sql = "SELECT * FROM campeonato WHERE nome_camp LIKE '$procurar%' ORDER BY nome_camp";
    }
$pdo = Conexao::getInstance();
$consulta = $pdo->query($sql);
while ($linha = $consulta->fetch(PDO::FETCH_ASSOC)) {

?> 

    <tr>
        <td><?php echo $linha['id_camp'];?></td>
        <td><?php echo $linha['nome_camp'];?></td>
        <td><?php echo $linha['edicao'];?></td>
        <td><?php echo " <a href=javascript:excluirRegistro('acaoII.php?acaoII=excluir&id_camp={$linha['id_camp']}')>Excluir</a>"; ?></td>
        <td><?php echo "<a href='tipo3.php?acaoII=editar&id={$linha['id_camp']}')>Editar</a>";?></td>
  
    </td>
    </tr>
    <?php } ?>
</table>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
crossorigin="anonymous"></script>
</body>
</html>