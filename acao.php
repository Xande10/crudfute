<?php

    include_once "conf/default.inc.php";
    require_once "conf/Conexao.php";

    $acao = isset($_GET['acao']) ? $_GET['acao'] : "";
    if ($acao == "excluir"){
        $id = isset($_GET['id_tec']) ? $_GET['id_tec'] : 0;
        excluir($id);
    }

    $acao = isset($_POST['acao']) ? $_POST['acao'] : "";
    if ($acao == "salvar"){
        $id = isset($_POST['id_tec']) ? $_POST['id_tec'] : "";
        if ($id == 0)
            inserir($id);
        else
            editar($id);
    }

    // Métodos para cada operação
    function inserir($id){
        $dados = dadosForm();
        //var_dump($dados)
        
        $pdo = Conexao::getInstance();
        $nome_tec = isset($_POST['nome_tec']) ? $_POST['nome_tec'] : "";
        $idade= isset($_POST['idade']) ? $_POST['idade'] : "";
        $stmt = $pdo->prepare('INSERT INTO tecnico (nome_tec, idade) VALUES(:nome_tec, :idade)');
        $stmt->bindParam(':nome_tec', $nome_tec, PDO::PARAM_STR);
        $stmt->bindParam(':idade', $idade, PDO::PARAM_STR);
        $nome_tec = $dados['nome_tec'];
        $idade = $dados['idade'];
        $stmt->execute();
        header("location:tecnico.php");
        
    }

    function editar($id){
        $nome_tec = isset($_POST['nome_tec']) ? $_POST['nome_tec'] : "";
        $idade = isset($_POST['idade']) ? $_POST['idade'] : "";
        $dados = dadosForm();
        $pdo = Conexao::getInstance();
        $stmt = $pdo->prepare('UPDATE `fute`.`tecnico` SET `nome_tec` = :nome_tec, `idade` = :idade WHERE (`id_tec` = :id);');
        $stmt->bindParam(':nome_tec', $nome_tec, PDO::PARAM_STR);
        $stmt->bindParam(':idade', $idade, PDO::PARAM_STR);
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
        $nome_tec = $dados['nome_tec'];
        $idade = $dados['idade'];
        $id = $dados['id_tec'];
        $stmt->execute();
        header("location:tecnico.php");
    }

    function excluir($id){
        $pdo = Conexao::getInstance();
        $stmt = $pdo->prepare('DELETE from tecnico WHERE id_tec = :id');
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
        $id = $id;
        $stmt->execute();
        header("location:tecnico.php");
        
        //echo "Excluir".$id;

    }

    // Busca um item pelo código no BD
    function buscarDados($id){
        $pdo = Conexao::getInstance();
        $consulta = $pdo->query("SELECT * FROM tecnico WHERE id_tec = $id");
        $dados = array();
        while ($linha = $consulta->fetch(PDO::FETCH_ASSOC)) {
            $dados['id_tec'] = $linha['id_tec'];
            $dados['nome_tec'] = $linha['nome_tec'];
            $dados['idade'] = $linha['idade'];
        }
        //var_dump($dados);
        return $dados;
    }

    // Busca as informações digitadas no form
    function dadosForm(){
        $dados = array();
        $dados['id_tec'] = $_POST['id_tec'];
        $dados['nome_tec'] = $_POST['nome_tec'];
        $dados['idade'] = $_POST['idade'];
        return $dados;
    }
?>