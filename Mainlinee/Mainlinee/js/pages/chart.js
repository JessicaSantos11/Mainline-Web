var cpu;
var ram;
var hd;
var rede;

var BoxCPU;
var BoxRAM;
var Boxsuporte;
var BoxREDE;





$(document).ready(function () {


    BoxCPU = $("#cpu");
    BoxRAM = $("#ram");
    BoxHD = $("#hd");
    BoxREDE = $("#rede");

    cpu = $(".content_cpu");
    ram = $(".content_ram");
    hd = $(".content_hd");
    rede = $(".content_rede");

    cpu.show();
    ram.hide();
    hd.hide();
    rede.hide();

    // CPU
    BoxCPU.click(function () {
        $(".content_cpu").show();
        $(".content_ram").hide();
        $(".content_hd").hide();
        $(".content_rede").hide;
    });

    //COMPUTADOR
    BoxRAM.click(function () {
        $(".content_cpu").hide();
        $(".content_ram").show();
        $(".content_hd").hide();
        $(".content_rede").hide();
    });

    // GRAFICOS
    BoxHD.click(function () {
        $(".content_cpu").hide();
        $(".content_ram").hide();
        $(".content_hd").show();
        $(".content_rede").hide();
    });

    // SUPORTE
    BoxREDE.click(function () {
        $(".content_cpu").hide();
        $(".content_ram").hide();
        $(".content_hd").hide();
        $(".content_rede").show();
    });




});


