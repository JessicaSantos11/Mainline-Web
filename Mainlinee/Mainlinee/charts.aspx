<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="charts.aspx.cs" Inherits="Mainlinee.charts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>MAINLINE</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">


      <!-- <link rel="stylesheet" href="css/style.red.css"> -->
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" src="css/dropSelect.scss">
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="css/fontastic.css">
    <!-- Google fonts - Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700">
    <!-- jQuery Circle-->
    <link rel="stylesheet" href="css/grasp_mobile_progress_circle-1.0.0.min.css">
    <!-- Custom Scrollbar-->
    <link rel="stylesheet" href="vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.blue.css">
    <link rel="stylesheet" href="css/custom.css">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.ico">

    <script src="js/jquery.min.js"></script>
    <script src="js/pages/home.js"></script>

    <script>
        /*global $, document, LINECHARTEXMPLE*/
        
           // $(document).ready(function () {

                
                var idIten = "MB-1234567890";
                

                'use strict';

                var brandPrimary = 'rgba(51, 179, 90, 1)';

                var LINECHARTEXMPLE = $('#lineChartExample');

                <% 
        String ativo = Request.Params["id"];

                %>
                

                var config = {
                    type: 'line',
                    options: {
                        scales: {
                            yAxes: [{
                                ticks: {
                                    max: 100,
                                    min: 0
                                }
                            }]
                        }
                    },
                    data: {
                        labels: [" ", " ", " ", " ", " ", " ", " "],
                        
                        datasets: [
                            {
                                label: "Mémoria RAM",
                                fill: false,
                                lineTension: 0.8,
                                backgroundColor: "rgba(51, 179, 90, 0.38)",
                                borderColor: brandPrimary,
                                borderCapStyle: 'butt',
                                borderDash: [],
                                borderDashOffset: 5.0,  
                                borderJoinStyle: 'miter',
                                borderWidth: 1,
                                pointBorderColor: brandPrimary,
                                pointBackgroundColor: "#fff",
                                pointBorderWidth: 1,
                                pointHoverRadius: 5,
                                pointHoverBackgroundColor: brandPrimary,
                                pointHoverBorderColor: "rgba(220,220,220,1)",
                                pointHoverBorderWidth: 2,
                                pointRadius: 1,
                                pointHitRadius: 10,
                                data: [],
                                spanGaps: false
                            },
                            {
                                label: "CPU",
                                fill: false,
                                lineTension: 0.8,
                                backgroundColor: "rgba(81, 104, 204,0.4)",
                                borderColor: "rgba(81, 104, 204,1)",
                                borderCapStyle: 'butt',
                                borderDash: [],
                                borderDashOffset: 0.0,
                                borderJoinStyle: 'miter',
                                borderWidth: 1,
                                pointBorderColor: "rgba(75,192,192,1)",
                                pointBackgroundColor: "#fff",
                                pointBorderWidth: 1,
                                pointHoverRadius: 5,
                                pointHoverBackgroundColor: "rgba(75,192,192,1)",
                                pointHoverBorderColor: "rgba(220,220,220,1)",
                                pointHoverBorderWidth: 2,
                                pointRadius: 1,
                                pointHitRadius: 10,
                                data: [],
                                spanGaps: false
                            },
                            {
                                label: "HD",
                                fill: false,
                                lineTension: 0.8,
                                backgroundColor: "rgba(244, 78, 66,0.4)",
                                borderColor: "rgba(244, 78, 66,1)",
                                borderCapStyle: 'butt',
                                borderDash: [],
                                borderDashOffset: 0.0,
                                borderJoinStyle: 'miter',
                                borderWidth: 1,
                                pointBorderColor: "rgba(75,192,192,1)",
                                pointBackgroundColor: "#fff",
                                pointBorderWidth: 1,
                                pointHoverRadius: 5,
                                pointHoverBackgroundColor: "rgba(75,192,192,1)",
                                pointHoverBorderColor: "rgba(220,220,220,1)",
                                pointHoverBorderWidth: 2,
                                pointRadius: 1,
                                pointHitRadius: 10,
                                data: [],
                                spanGaps: false
                            }
                        ]
                    }

                }
                    window.onload = function () {
                        var ctx = document.getElementById('lineChartExample').getContext('2d');
                        window.myLine = new Chart(ctx, config);
                        /*
                        config.data.datasets.forEach(function (dataset) {
                            dataset.data.push(30);
                        });
                        
                        window.myLine.update();
                        */
        };

       
         function attHD() {
            var xhttp = new XMLHttpRequest();
                

                <% 
                String idMaquina = "";
                if (Request.QueryString["id"] != null){
                    idMaquina = Request.Params["id"];

                }%>
                xhttp.open("GET", "getHD.aspx?id=<%=idMaquina%>", true);
                xhttp.onreadystatechange = function () {
                    if (xhttp.readyState === xhttp.DONE && xhttp.status === 200) {
                        //pega os dados da página getOshi.aspx e coloca eles no array numeros
                        HD = xhttp.responseText.split("+");

                        //verifica se o array está vazio
                        if (HD[0] != "") {
                            var div = document.getElementById("total").innerText = HD[0];
                            var div = document.getElementById("disponivel").innerText = HD[1];
                            var div = document.getElementById("usado").innerText = HD[2];
                            
                        }

                    }
                }
                xhttp.send();
        }  

        
        function attCPU() {
            var xhttp = new XMLHttpRequest();
                

                <% 
                if (Request.QueryString["id"] != null){
                    idMaquina = Request.Params["id"];

                }%>
                xhttp.open("GET", "getCPU.aspx?id=<%=idMaquina%>", true);
                xhttp.onreadystatechange = function () {
                    if (xhttp.readyState === xhttp.DONE && xhttp.status === 200) {
                        //pega os dados da página getOshi.aspx e coloca eles no array numeros
                        cpu = xhttp.responseText.split("+");

                        //verifica se o array está vazio
                        if (cpu[0] != "") {

                             
                             document.getElementById("threads").innerText = cpu[0];
                             document.getElementById("processos").innerText = cpu[1];
                            document.getElementById("interrupcoes").innerText = cpu[2];
                            document.getElementById("versao").innerText = cpu[3];
                            document.getElementById("atividade").innerText = cpu[4];
                            console.log("este é o cpu"+cpu[0]);
                            
                        }

                    }
                }
                xhttp.send();
        }  

        function attRAM() {
            var xhttp = new XMLHttpRequest();

                <% 
                if (Request.QueryString["id"] != null){
                    idMaquina = Request.Params["id"];

                }%>
                xhttp.open("GET", "getRAM.aspx?id=<%=idMaquina%>", true);
                xhttp.onreadystatechange = function () {
                    if (xhttp.readyState === xhttp.DONE && xhttp.status === 200) {
                        //pega os dados da página getOshi.aspx e coloca eles no array numeros
                        RAM = xhttp.responseText.split("+");

                        //verifica se o array está vazio
                        if (RAM[0] != "") {
                            var div = document.getElementById("totalRAM").innerText = RAM[0];
                            var div = document.getElementById("disponivelRAM").innerText = RAM[1];
                            var div = document.getElementById("usadoRAM").innerText = RAM[2];
                            
                        }

                    }
                }
                xhttp.send();
        }

        function attRede() {
            var xhttp = new XMLHttpRequest();
                //abre a página getOshi.aspx

                <% 
                
                if (Request.QueryString["id"] != null){
                    idMaquina = Request.Params["id"];

                }%>
                xhttp.open("GET", "getTime.aspx?id=<%=idMaquina%>", true);
                xhttp.onreadystatechange = function () {
                    if (xhttp.readyState === xhttp.DONE && xhttp.status === 200) {
                        //pega os dados da página getOshi.aspx e coloca eles no array numeros
                        rede = xhttp.responseText.split("+");

                        //verifica se o array está vazio
                        if (rede[0] != "") {
                            //seleciona as divs aonde os dados vão aparecer
                            var div = document.getElementById("dominio").innerText = rede[0];
                            var div = document.getElementById("nome_rede").innerText = rede[1];
                            var div = document.getElementById("upload").innerText = rede[2];
                            var div = document.getElementById("download").innerText = rede[2];
                            
                        }

                    }
                }
                xhttp.send();
        }

        function att() {
            var xhttp = new XMLHttpRequest();
                //abre a página getOshi.aspx

                <% 
                
                if (Request.QueryString["id"] != null){
                    idMaquina = Request.Params["id"];

                }%>
                xhttp.open("GET", "getRede.aspx?id=<%=idMaquina%>", true);
                xhttp.onreadystatechange = function () {
                    if (xhttp.readyState === xhttp.DONE && xhttp.status === 200) {
                        //pega os dados da página getOshi.aspx e coloca eles no array numeros
                        numeros = xhttp.responseText.split("+");

                        //verifica se o array está vazio
                        if (numeros[0] != "") {
                            //seleciona as divs aonde os dados vão aparecer
                            console.log(numeros[0]+"a,khhhhhhhh");
                            
                        }

                    }
                }
                xhttp.send();
        }

        function att() {
            var xhttp = new XMLHttpRequest();
                //abre a página getOshi.aspx

                <% 
                
                if (Request.QueryString["id"] != null){
                    idMaquina = Request.Params["id"];

                }%>
                xhttp.open("GET", "getOshi.aspx?id=<%=idMaquina%>", true);
                xhttp.onreadystatechange = function () {
                    if (xhttp.readyState === xhttp.DONE && xhttp.status === 200) {
                        //pega os dados da página getOshi.aspx e coloca eles no array numeros
                        numeros = xhttp.responseText.split("+");

                        //verifica se o array está vazio
                        if (numeros[0] != "") {
                            //seleciona as divs aonde os dados vão aparecer
                            console.log(numeros[0]+"a,khhhhhhhh");
                            
                        }

                    }
                }
                xhttp.send();
        }
                
        var a = 0;
        function PegarDados(dados,a) {           
            //config.data.datasets.data.push(dados[0]);
            //console.log("teste se ta indo" + dados[0]);
            //config.data.labels.push(time);
            config.data.datasets.forEach(function (dataset,index) {
                
                dataset.data.push(dados[index]);
                
                if (a > 6) {
                    dataset.data.shift();
                }
            });


            //config.data.push(' ');    // add the new value to the right
            //config.data.shift(); 

            window.myLine.update();
        }
      
        //essa parte executa a função a cada 5 segundos
        var i = 0;
        setInterval(() => {
            
            try {
                att();
                attHD();
                //attTime();
                attCPU();
                attRAM();
                attRede();
                PegarDados(numeros,i);
                /*
                if (i > 4) {
                    removeData2();
                    console.log("aki"+i);
                }*/
                i++;
                
              
            } catch (err) { console.log(err); }
        }, 2000);
        
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <% String idAtivoTeste =  Request.Params["id"]; %>
            <!-- Side Navbar -->
        <nav class="side-navbar">
          <div class="side-navbar-wrapper">
            <!-- Sidebar Header    -->
            <div class="sidenav-header d-flex align-items-center justify-content-center">
              <!-- User Info-->
              <div class="sidenav-header-inner text-center">
                  <% String nome = Session["nomeUser"].ToString(); %>
                  <h2 id="nomeUser" class="h5"><%=nome %></h2>
              </div>
              <!-- Small Brand information, appears on minimized sidebar-->
              <div class="sidenav-header-logo"><a href="index.html" class="brand-small text-center"> <strong>B</strong><strong class="text-primary">D</strong></a></div>
            </div>
            <!-- Sidebar Navigation Menus-->
            <div class="main-menu">
              <h5 class="sidenav-heading">Menu</h5>
              <ul id="side-main-menu" class="side-menu list-unstyled">
                <li id="home"><a href="dashboard2.aspx"> <img src="img/voltar.png"/>Voltar</a></li>
                <li id="cpu"><a href="#"> <img src="img/voltar.png"/>CPU</a></li>
                <li id="hd"><a href="#"> <img src="img/voltar.png"/>HD</a></li>
                <li id="ram"><a href="#"> <img src="img/voltar.png"/>Mémoria RAM</a></li>
                <li id="rede"><a href="#"> <img src="img/voltar.png"/>REDE</a></li>
              </ul>
            </div>
          </div>
        </nav>
        <div class="page">
          <!-- navbar-->
          <header class="header">
            <nav class="navbar">
              <div class="container-fluid">
                <div class="navbar-holder d-flex align-items-center justify-content-between">
                  <div class="navbar-header"><a id="toggle-btn" href="#" class="menu-btn"><i class="icon-bars"> </i></a><a href="index.html" class="navbar-brand">
                      <div class="brand-text d-none d-md-inline-block"><span>MainLine </span><strong class="text-primary">Dashboard</strong></div></a></div>
                  <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">

                    <!-- Log out-->
                    <li class="nav-item"><a class="nav-link logout"> <span class="d-none d-sm-inline-block"><asp:Button class="btn btn-secondary" runat="server" onclick="logout" Text="Logout" /></span><i class="fa fa-sign-out"></i></a></li>
                  </ul>
                </div>
              </div>
            </nav>
          </header>
          <!-- Header Section-->
          <section class="dashboard-header section-padding">
            <div class="container">
                <div id="Home">

                    <div class="container">
                      <div class="row">
                        <div class="col"></div>
                          <% 
                              Mainlinee.oshiDAO oshi = new Mainlinee.oshiDAO();
                              String nomeSO = oshi.selectAtivoById(idAtivoTeste).SO;
                             
                              
                                  %>
                        <div class="col"><b>Sistema Operacional:</b> <%=nomeSO%></div>
                        
                      </div>
                    </div>

                    <div class="card-body">
                        <canvas id="lineChartExample" style="width:70%;height:300px;"></canvas>
                    </div>
                    <div class="content_cpu">
                        <div class="container">
                          <div class="row">
                            <div class="col"><b>Versão CPU:</b></div>
                            <div class="col"><b>Tempo de Atividade:</b></div>
                            <div class="col"><b>Numero de Threads:</b></div>
                            <div class="col"><b>Numero de Processos:</b></div>
                            <div class="col"><b>Interrupções:</b></div>
                            <div class="w-100"></div>
                            <div class="col" id="versao"></div>
                            <div class="col" id="atividade"></div>
                            <div class="col" id="threads"></div>
                            <div class="col" id="processos"></div>
                            <div class="col" id="interrupcoes"></div>

                          </div>
                        </div>
                    </div>

                    <div class="content_hd">
                        <div class="container">
                          <div class="row">
                            <div class="col"><b>Espaço Total:</b></div>
                            <div class="col"><b>Espaço Disponível:</b></div>
                            <div class="col"><b>Espaço Usado:</b></div>
                            <div class="w-100"></div>
                            <div class="col" id="total"></div>
                            <div class="col" id="disponivel"></div>
                            <div class="col" id="usado"></div>
                          </div>
                        </div>
                    </div>

                    <div class="content_ram">
                        <div class="container">
                          <div class="row">
                            <div class="col"><b>Memória Total:</b></div>
                            <div class="col"><b>Memória Disponível:</b></div>
                            <div class="col"><b>Memória Usada:</b></div>
                            <div class="w-100"></div>
                            <div class="col" id="totalRAM"></div>
                            <div class="col" id="disponivelRAM"></div>
                            <div class="col" id="usadoRAM"></div>
                          </div>
                        </div>
                    </div>

                    <div class="content_rede">
                        <div class="container">
                          <div class="row">
                            <div class="col"><b>Domínio de Rede:</b></div>
                            <div class="col"><b>Nome da Rede:</b></div>
                              <div class="col"><b>Upload:</b></div>
                            <div class="col"><b>Download:</b></div>
                            <div class="w-100"></div>
                            <div class="col" id="dominio">Column</div>
                            <div class="col" id="nome_rede">Column</div>
                            <div class="col" id="upload">Column</div>
                            <div class="col" id="download">Column</div>
                          </div>
                        </div>
                    </div>

                </div>
            </div>
          </section>

          <footer class="main-footer">
            <div class="container-fluid">
              <div class="row">
                <div class="col-sm-6">
                  <p>MAINLINE &copy;</p>
                </div>
              </div>
            </div>
          </footer>
        </div>

            
        </div>
    </form>

    <!-- JavaScript files-->
    <script src="js/pages/chart.js"></script>
    <script src="js/bootstrap-dropselect.min.js"></script>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper.js/umd/popper.min.js"> </script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="js/grasp_mobile_progress_circle-1.0.0.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <!-- <script src="vendor/chart.js/Chart.min.js"></script> -->
    <script src="vendor/jquery-validation/jquery.validate.min.js"></script>
    <script src="vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- Main File-->
    <script src="js/front.js"></script>

    <!-- DATA TABLE -->
    <script src="js/dataTable.min.js"></script>
    <link rel="stylesheet" href="css/dataTable.min.css">
    <script src="js/dataTables.select.min.js"></script>
    <!-- <script src="js/dataTables.buttons.min.js"></script> -->

    <!-- JavaScript files-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper.js/umd/popper.min.js"> </script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="js/grasp_mobile_progress_circle-1.0.0.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/jquery-validation/jquery.validate.min.js"></script>
    <script src="vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/charts-custom.js"></script>
</body>
</html>
