<?php

function nao_vazio($a) {
    if (strlen(trim($a)) == 0) {
        return "Você deve inserir um valor.";
    }
}

function nao_vazio_e_inteiro($a) {
    $input['campo'] = filter_var($a, FILTER_VALIDATE_INT);
    if ($input['campo'] == FALSE) {
        return 'Informe um valor numérico.';
    }
}

// elementos de um tipo específico:
function tipo_especifico($a) {
    $input['campo'] = filter_input(INPUT_POST, 'campo', FILTER_VALIDATE_INT);
    if ($input['campo'] == FALSE) {
        $errors[] = 'Informe um ano valido.';
    }
}

    function nao_vazio_e_limite($a) {
        if ((strlen(trim($a)) == 0) && (strlen(trim($a)) <= 12 )) {
            return "Você pode inserir o valor até 10 digitos.";
        }
    }
?>