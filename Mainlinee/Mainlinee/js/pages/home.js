var home;
var graficos;
var suporte;
var linhas;

var Boxhome;
var Boxgraficos;
var Boxsuporte;
var Boxlinhas;






$(document).ready(function() {

    
    
    $(".dropdown-item").click(function(){
        //var value= $('#dropselect-demo1').dropselect();
        var a = $(this).val();
        console.log(a);
    
        $.ajax({
          type:"GET",
          data: {id:a},
          url: "Projeto_Main/mainline/teste.php?id="+a,
          success: function(dados){
              console.log(dados);
              $('.alinha_meio').html(dados);
          }
        });
    
    });

    Boxhome=$("#Home");
    Boxgraficos=$("#Analytcs");
    Boxsuporte=$("#Suporte");
    Boxlinhas=$("#Linhas");

    home=$("#home");
    graficos=$("#graficos");
    suporte = $("#suporte");
    linhas = $("#linhas");


    computador = $('.figure');
    graficoHd = $('#lineChartExample');

    Boxhome.show();
    Boxgraficos.hide();
    Boxsuporte.hide();
    Boxlinhas.hide();    

    
    // HOME
    home.click(function() {
      Boxhome.show();
      Boxgraficos.hide();
      Boxsuporte.hide();
      Boxlinhas.hide();
    });

    // LINHAS
    linhas.click(function() {
      Boxhome.hide();
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
      Boxhome.hide();
      Boxgraficos.show();
      Boxsuporte.hide();
      Boxlinhas.hide();
    });

    // SUPORTE
    suporte.click(function() {
      Boxhome.hide();
      Boxgraficos.hide();
      Boxsuporte.show();
      Boxlinhas.hide();
    });




});
