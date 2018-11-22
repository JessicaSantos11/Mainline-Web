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
        function pegarDados() {

            $(document).ready(function () {
                'use strict';

                var brandPrimary = 'rgba(51, 179, 90, 1)';

                var LINECHARTEXMPLE = $('#lineChartExample');

                <% 
                    String ativo = Request.Params["id"];
                        
                %>
                console.log("<%=ativo%>");
                var lineChartExample = new Chart(LINECHARTEXMPLE, {
                <%  Mainlinee.oshiDAO oshi = new Mainlinee.oshiDAO();
        int a = 0;
        int b = 0;
        int c = 0;
        int d = 0;
        int e = 0;
        int f = 0;
        int g = 0;
        int h = 0;
        int i = 0;

        if(oshi.selectHD2(ativo)!=null) {
            a = oshi.selectHD2(ativo)[0].hd;
            b = oshi.selectHD2(ativo)[1].hd;
            c = oshi.selectHD2(ativo)[2].hd;
            d = oshi.selectHD2(ativo)[3].hd;
            e = oshi.selectHD2(ativo)[4].hd;
            f = oshi.selectHD2(ativo)[5].hd;
        }
        else
        {

        }

                    %>
                    type: 'line',
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
                                data: [<%=a%>,<%=b%>,<%=c%>,<%=d%>,<%=e%>,<%=f%>],
                                spanGaps: false
                            }
                        ]
                    }

                    
                });

                chart.data.labels.push(label);
                lineChartExample.<%=a%>.datasets.forEach((dataset) => {
                    dataset.data.push(<%=a%>);
                });
                chart.update();

            });
        }
        //essa parte executa a função a cada 10 segundos
        
        setInterval(() => {
            try {
  
               pegarDados();
              
            } catch (err) { console.log(err); }
        }, 5000);

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            testeeeee
            <% String teste =  Request.Params["id"]; %>

            <%=teste %>

            <div class="card-body">
                <canvas id="lineChartExample"></canvas>
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
