var home;
var graficos;
var suporte;
var linhas;

var Boxhome;
var Boxgraficos;
var Boxsuporte;
var Boxlinhas;






$(document).ready(function() {


    Boxgraficos=$("#Analytcs");
    Boxsuporte=$("#Suporte");
    Boxlinhas=$("#Linhas");

    graficos=$("#graficos");
    suporte = $("#suporte");
    linhas = $("#linhas");


    computador = $('.figure');
    graficoHd = $('#lineChartExample');

    
    Boxgraficos.hide();
    Boxsuporte.hide();
    Boxlinhas.show();    

    // LINHAS
    linhas.click(function() {
      Boxgraficos.hide();
      Boxsuporte.hide();
        Boxlinhas.show();
        graficoHd.hide();
    });

    //COMPUTADOR
    computador.click(function () {
        graficoHd.show();  
    });

    // GRAFICOS
    graficos.click(function() {
      Boxgraficos.show();
      Boxsuporte.hide();
      Boxlinhas.hide();
    });

    // SUPORTE
    suporte.click(function() {
      Boxgraficos.hide();
      Boxsuporte.show();
      Boxlinhas.hide();
    });




});
