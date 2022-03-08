<?php

    include_once "conf/default.inc.php";
    require_once "conf/Conexao.php";

    $acaoII = isset($_GET['acaoII']) ? $_GET['acaoII'] : "";
    if ($acaoII == "excluir"){
        $id = isset($_GET['id_camp']) ? $_GET['id_camp'] : 0;
        excluir($id);
    }

    $acaoII = isset($_POST['acaoII']) ? $_POST['acaoII'] : "";
    if ($acaoII == "salvar"){
        $id = isset($_POST['id_camp']) ? $_POST['id_camp'] : "";
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
        $nome_camp = isset($_POST['nome_camp']) ? $_POST['nome_camp'] : "";
        $edicao= isset($_POST['edicao']) ? $_POST['edicao'] : "";
        $stmt = $pdo->prepare('INSERT INTO campeonato (nome_camp, edicao) VALUES(:nome_camp, :edicao)');
        $stmt->bindParam(':nome_camp', $nome_camp, PDO::PARAM_STR);
        $stmt->bindParam(':edicao', $edicao, PDO::PARAM_STR);
        $nome_camp = $dados['nome_camp'];
        $edicao = $dados['edicao'];
        $stmt->execute();
        header("location:camp.php");
        
    }

    function editar($id){
        $nome_camp = isset($_POST['nome_camp']) ? $_POST['nome_camp'] : "";
        $edicao = isset($_POST['edicao']) ? $_POST['edicao'] : "";
        $dados = dadosForm();
        $pdo = Conexao::getInstance();
        $stmt = $pdo->prepare('UPDATE `fute`.`campeonato` SET `nome_camp` = :nome_camp, `edicao` = :edicao WHERE (`id_camp` = :id);');
        $stmt->bindParam(':nome_camp', $nome_camp, PDO::PARAM_STR);
        $stmt->bindParam(':edicao', $edicao, PDO::PARAM_STR);
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
        $nome_camp = $dados['nome_camp'];
        $edicao = $dados['edicao'];
        $id = $dados['id_camp'];
        $stmt->execute();
        header("location:camp.php");
    }

    function excluir($id){
        $pdo = Conexao::getInstance();
        $stmt = $pdo->prepare('DELETE from campeonato WHERE id_camp = :id');
        $idD = $id;
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
        $stmt->execute();
        header("location:camp.php");
        //echo "Excluir".$id;

    }

    // Busca um item pelo código no BD
    function buscarDados($id){
        $pdo = Conexao::getInstance();
        $consulta = $pdo->query("SELECT * FROM campeonato WHERE id_camp = $id");
        $dados = array();
        while ($linha = $consulta->fetch(PDO::FETCH_ASSOC)) {
            $dados['id_camp'] = $linha['id_camp'];
            $dados['nome_camp'] = $linha['nome_camp'];
            $dados['edicao'] = $linha['edicao'];
        }
        //var_dump($dados);
        return $dados;
    }

    // Busca as informações digitadas no form
    function dadosForm(){
        $dados = array();
        $dados['id_camp'] = $_POST['id_camp'];
        $dados['nome_camp'] = $_POST['nome_camp'];
        $dados['edicao'] = $_POST['edicao'];
        return $dados;
    }
?>