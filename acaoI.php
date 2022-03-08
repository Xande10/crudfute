<?php

    include_once "conf/default.inc.php";
    require_once "conf/Conexao.php";

    $acaoI = isset($_GET['acaoI']) ? $_GET['acaoI'] : "";
    if ($acaoI == "excluir"){
        $id = isset($_GET['id_pais']) ? $_GET['id_pais'] : 0;
        excluir($id);
    }

    $acaoI = isset($_POST['acaoI']) ? $_POST['acaoI'] : "";
    if ($acaoI == "salvar"){
        $id = isset($_POST['id_pais']) ? $_POST['id_pais'] : "";
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
        $confederacao = isset($_POST['confederacao']) ? $_POST['confederacao'] : "";
        $nome = isset($_POST['nome']) ? $_POST['nome'] : "";
        $stmt = $pdo->prepare('INSERT INTO pais (confederacao, nome) VALUES(:confederacao, :nome)');
        $stmt->bindParam(':confederacao', $confederacao, PDO::PARAM_STR);
        $stmt->bindParam(':nome', $nome, PDO::PARAM_STR);
        $confederacao = $dados['confederacao'];
        $nome = $dados['nome'];
        $stmt->execute();
        header("location:pais.php");
        
    }

    function editar($id){
        $confederacao = isset($_POST['confederacao']) ? $_POST['confederacao'] : "";
        $nome = isset($_POST['nome']) ? $_POST['nome'] : "";
        $dados = dadosForm();
        $pdo = Conexao::getInstance();
        $stmt = $pdo->prepare('UPDATE `fute`.`pais` SET `confederacao` = :confederacao, `nome` = :nome WHERE (`id_pais` = :id);');
        $stmt->bindParam(':confederacao', $confederacao, PDO::PARAM_STR);
        $stmt->bindParam(':nome', $nome, PDO::PARAM_STR);
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
        $confederacao = $dados['confederacao'];
        $nome = $dados['nome'];
        $id = $dados['id_pais'];
        $stmt->execute();
        header("location:pais.php");
    }

    function excluir($id){
        $pdo = Conexao::getInstance();
        $stmt = $pdo->prepare('DELETE from pais WHERE id_pais = :id');
        $idD = $id;
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
        $stmt->execute();
        header("location:pais.php");
        
        //echo "Excluir".$id;

    }


    // Busca um item pelo código no BD
    function buscarDados($id){
        $pdo = Conexao::getInstance();
        $consulta = $pdo->query("SELECT * FROM pais WHERE id_pais = $id");
        $dados = array();
        while ($linha = $consulta->fetch(PDO::FETCH_ASSOC)) {
            $dados['id_pais'] = $linha['id_pais'];
            $dados['confederacao'] = $linha['confederacao'];
            $dados['nome'] = $linha['nome'];
        }
        //var_dump($dados);
        return $dados;
    }

    // Busca as informações digitadas no form
    function dadosForm(){
        $dados = array();
        $dados['id_pais'] = $_POST['id_pais'];
        $dados['confederacao'] = $_POST['confederacao'];
        $dados['nome'] = $_POST['nome'];
        return $dados;
    }

?>