<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Mainlinee.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta name="description" content="Empresa especializada em monitoramento de hardware, analytics e suporte."/>
<meta name="keywords" content="Monitoramento, Hardware, Suporte, Analytics."/>
<meta name="robots" content="index, follow"/>
<link rel="stylesheet" type="text/css" href="css/default.css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300" rel="stylesheet" type='text/css'/>
<link rel="icon" href="img/icon.png"/>
        <title>Mainline - Monitoramento de Hardware.</title>
</head>
<body>
    <header class="cabecalho">
			<a href="Default.aspx"><h1 class="logo"> Mainline - Monitoramento de Hardware. </h1></a>
			<!-- criando o botão de menu com icon do site (get started) - "i class="fa fa-bars fa-lg" (fa-lg vai fazer o icon ficar levemente maior) -->
			<button class="btn-menu"> <i class="fa fa-bars fa-lg"></i></button>
			<!-- criando o menu -->
			<nav class="menu">
				<a class="btn-close"><i class="fa fa-times"></i></a> <!-- é o link para fechar o menu. o "x" irá fechar o menu-->
				<ul>
					<li><a href="Login2.aspx">Login</a></li>
					<li><a href="#">Contato</a></li>
				</ul>
			</nav>
		</header>
    <form id="form1" runat="server">
      
		<!-- criação de um BG -->
		<div class="banner">
			<div class="title">
				<h2> Faça uso consciente do seu computador.</h2>
				<h3> Deixe a mainline simplicar para você! </h3>
			</div>
		</div>
		<div class="servicos1"><h1>Nossos serviços</h1></div>
		<!-- serviços-->
		<main class="servicos">
				<!-- serviço 1 -->
				<article class="servico">
					<img src="img/monitoramento3.jpeg" alt="Monitoramento de Hardware" />
					<div class="inner"> 
						<a> Monitoramento de Hardware </a>
						<h4> Lorem ipsum dolor sit amet </h4>
						<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed mauris interdum, auctor tellus non, eleifend eros. In mattis metus eget tortor viverra hendrerit. Cras porttitor lectus diam, 
							id malesuada elit. Nam fringilla, felis pulvinar posuere lobortis ex lacus ullamcorper. </p>
					</div>
				</article>
				<!-- serviço 2 -->
				<article class="servico">
					<img src="img/analytics.jpg" alt="Analytics" />
					<div class="inner"> 
						<a> Analytics </a>
						<h4> Lorem ipsum dolor sit amet </h4>
						<p> Nam fringilla, felis pulvinar posuere lobortis, ex lacus ullamcorper erat, sit amet fringilla urna sapien vel ligula. Phasellus fringilla nulla eu luctus mattis. Suspendisse mattis porta ornare. Nulla congue sed libero id maximus. Duis blandit eros eget neque molestie viverra. Nullam non scelerisque. phasellu.</p>
					</div>
				</article>
				<!-- serviço 3 -->
				<article class="servico">
					<img src="img/suporte.jpg" alt="Suporte" />
					<div class="inner"> 
						<a> Suporte </a>
						<h4> Sites administráveis </h4>
						<p> Praesent scelerisque malesuada tellus non tincidunt. Nunc vehicula efficitur luctus. Sed laoreet ullamcorper sagittis. Aenean facilisis vitae ex in eleifend. Mauris elementum ligula non dui consequat feugiat. In feugiat in dui et congue. Pellentesque porta nulla et volutpat iaculis. </p>
					</div>
				</article>
			</main>

			<div id="sobre">			
				<div class="historia">
					<h1>Como tudo começou...</h1>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed mauris interdum, auctor tellus non, eleifend eros. In mattis metus eget tortor viverra hendrerit. Cras porttitor lectus diam, 
							id malesuada elit. Nam fringilla, felis pulvinar posuere lobortis ex lacus ullamcorper.</p>
					</div>			
				<img class="logot" src="img/mbranco_transparente.png" width="400px" height="400px"/>
					
	
			</div>
		
			<div id="colaboradores">
					
					<div class="eu">
						<img src="img/eu.jpg"/>
						<h1>Jéssica Santos</h1>
						<p> Scrum Master/ Desenvolvimento </p>
						<div class="contatos">
								<a href="https://www.linkedin.com/in/j%C3%A9ssica-santos-44a53a121/"><img src="img/linkedin.png" width="50px" height="50px" /></a>
								<a href="https://github.com/JSantosss"><img src="img/github.png" width="50px" height="50px" /></a>
							</div>
					</div>
					<div class="prince">
						<img src="img/prince.jpg"/>
						<h1>Gustavo Prince</h1>
						<p> Product Owner/ Desenvolvimento</p>
						<div class="contatos">
								<a href="https://www.linkedin.com/in/gustavo-prince-335269144/"><img src="img/linkedin.png" width="50px" height="50px" /></a>
								<a href="#"><img src="img/github.png" width="50px" height="50px" /></a>
							</div>
					</div>
					<div class="wesley">
						<img src="img/wesley.jpg"/>
						<h1>Wesley Marques</h1>
						<p>Desenvolvimento</p>
						<div class="contatos">
								<a href="#"><img src="img/linkedin.png" width="50px" height="50px" /></a>
								<a href="#"><img src="img/github.png" width="50px" height="50px" /></a>
							</div>
					</div>
					<div class="natanael">
						<img src="img/natal.jpg"/>
						<h1>Natanael Weslley</h1>
						<p>Desenvolvimento</p>
						<div class="contatos">
								<a href="https://www.linkedin.com/in/natanael-weslley-0854aa150/"><img src="img/linkedin.png" width="50px" height="50px" /></a>
								<a href="https://github.com/NatalNW/"><img src="img/github.png" width="50px" height="50px" /></a>
							</div>
					</div>
				</div>

	
		<!-- fim da navegação dos serviços -->
		<footer class="rodape">
		<div class="social-icons">
			<a href="#"><i class="fa fa-facebook"></i></a>
			<a href="#"><i class="fa fa-twitter"></i></a>
			<a href="#"><i class="fa fa-instagram"></i></a>
		</div>
		<p class="copyright"> 
			Copyright © Mainline 2018. Todos os direitos reservados. </p>
		</footer>

		<script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
		<script type="text/javascript">
			
            $(document).ready(function () {
                $(".btn-menu").click(function () {
                    $(".menu").show();
                });

                $(".btn-close").click(function () {
                    $(".menu").hide();
                });
            });﻿

	</script>
    </form>
</body>
</html>
