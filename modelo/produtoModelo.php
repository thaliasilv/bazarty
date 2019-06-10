<?php

function adicionarProduto($nome, $CodigoProduto, $CategoriaProduto, $CodigoFabricante, $DescriProduto, $QuantidadeProduto, $PreProduto){
    $comando= "INSERT INTO produto (nome, cod, categ,descr, quant, preco)
    Values ('$nome', '$CodigoProduto', '$CategoriaProduto', '$CodigoFabricante', '$DescriProduto', '$QuantidadeProduto', '$PreProduto')";

    $resultado= mysqli_query($cnx=conn(), $comando);
    if (!$resultado){die ('Erro ao cadastrar o produto'. mysqli_error($cnx)); }
return 'Produto cadastrado com sucesso!';

}

function seleciona_todos_os_produtos(){
    $sql = "select * from produto";
    $result = mysqli_query(conn(), $sql);
    $produtos = array();
    while($linha = mysqli_fetch_assoc($result)){
        $produtos[] = $linha;
    }
    return $produtos;
}

function MostrarProdutoPorCodigo($cod){
    $sql = "select * from produto where cod = $cod";
    $result = mysqli_query(conn(), $sql);
    $produtos = mysqli_fetch_assoc($result);
    
    return $produtos;
}

function deletarProduto($id) {
      $comando= "DELETE FROM produto WHERE id=$idProduto";
     $conexao= conn();
     $resultado= mysqli_query($conexao, $conexao);
   
     if($resultado==true){
       echo "Deu certo!";
   }else {
       echo "Deu errado";
   }
}

 ?>
    
}