<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <h3>Produtos</h3>
        <table class="table">
            <thead>
                <tr>
                    <th>            </th>
                    <th>            </th>
                    <th>            </th>
                </tr>
            </thead>
            <?php foreach ($produtos as $produto):?>
            <tr>
                <td><?= $produto["nome"]?></td>
                <td><?= $produto["preco"]?></td>
                <td><a href="./produto/ver/<?=$produto["cod"]?>">Ver detalhes</a></td>
                <td><a href="./produto/deletar/<?=$a["id"]?> </a>"
            </tr>
            
         
            <?php endforeach;?>
        </table>
    </body>
</html>