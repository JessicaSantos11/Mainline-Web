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
                        labels: ["January", "February", "March", "April", "May", "June", "July"],
                        
                        datasets: [
                            {
                                label: "<%=ativo%>",
                                fill: true,
                                lineTension: 0.3,
                                backgroundColor: "rgba(51, 179, 90, 0.38)",
                                borderColor: brandPrimary,
                                borderCapStyle: 'butt',
                                borderDash: [],
                                borderDashOffset: 0.0,  
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

                  



                var xhttp = new XMLHttpRequest();
                //abre a página getOshi.aspx
                xhttp.open("GET", "getOshi.aspx", true);
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


                



          //  });

            /*
                function addData(chart, label, data) {
                    chart.data.labels.push(label);
                    chart.data.datasets.forEach((dataset) => {
                        dataset.data.push(data);
                    });
                    chart.update();
                }
              */

            


        
        function PegarDados(dados) {
            
            //config.data.datasets.data.push(dados[0]);
            //console.log("teste se ta indo" + dados[0]);

            config.data.datasets.forEach(function (dataset) {
                dataset.data.push(dados[2]);
                console.log("teste se ta indo" + dados[2]);
            });
                        
                    

            window.myLine.update();
        }

   

        
        //essa parte executa a função a cada 10 segundos
        
        setInterval(() => {
            try {
  
               PegarDados(numeros);
              
            } catch (err) { console.log(err); }
        }, 2000);
        
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            testeeeee
            <% String teste =  Request.Params["id"]; %>

            <%=teste %>

            <!-- Side Navbar -->
        <nav class="side-navbar">
          <div class="side-navbar-wrapper">
            <!-- Sidebar Header    -->
            <div class="sidenav-header d-flex align-items-center justify-content-center">
              <!-- User Info-->
              <div class="sidenav-header-inner text-center">
                  <% String nome = Session["nomeUser"].ToString(); %>
                  <h2 id="nomeUser" class="h5"><%=nome %></h2><span>Web Developer</span>
              </div>
              <!-- Small Brand information, appears on minimized sidebar-->
              <div class="sidenav-header-logo"><a href="index.html" class="brand-small text-center"> <strong>B</strong><strong class="text-primary">D</strong></a></div>
            </div>
            <!-- Sidebar Navigation Menus-->
            <div class="main-menu">
              <h5 class="sidenav-heading">Menu</h5>
              <ul id="side-main-menu" class="side-menu list-unstyled">
                <li id="home"><a> <i class="icon-home"></i>Voltar</a></li>
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
                    <li class="nav-item"><a href="login.html" class="nav-link logout"> <span class="d-none d-sm-inline-block">Logout</span><i class="fa fa-sign-out"></i></a></li>
                  </ul>
                </div>
              </div>
            </nav>
          </header>
          <!-- Header Section-->
          <section class="dashboard-header section-padding">
            <div class="container">
                <div id="Home">
                    <div class="card-body">
                        <canvas id="lineChartExample"></canvas>
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
