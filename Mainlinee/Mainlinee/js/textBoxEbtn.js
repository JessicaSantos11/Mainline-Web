function mostrarSenha() {
    var tipo = [document.getElementById('txtSenha'),
    document.getElementById('txtconfSenha')];
    if (tipo[0].type == 'password' || tipo[1].type == 'password') {
        tipo[0].type = 'text';
        tipo[1].type = 'text';
    } else {
        tipo[0].type = 'password';
        tipo[1].type = 'password'
    }
}
function mostrarSenhaL() {
    var tipo = document.getElementById('txtSenha');
    if (tipo.type == 'password') {
        tipo.type = 'text';
    } else {
        tipo.type = 'password';
    }
}

$(function () {
    $.mask.definitions['~'] = "[+-]";
    $("#txttelefone").mask("(99) 99999-9999");

    $("input").blur(function () {
        $("#info").html("Unmasked value: " + $(this).mask());
    }).dblclick(function () {
        $(this).unmask();
    });
});

$(document).ready(function () {
    $(".btn-menu").click(function () {
        $(".menu").show();
    });
    $(".btn-close").click(function () {
        $(".menu").hide();
    });
});﻿
