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
				</ul>
			</nav>
		</header>
    <form id="form1" runat="server">
      
		<!-- criação de um BG -->
		<div class="banner">
			<div class="title">
				<h2> Fique de olho nos seus dispositivos de hardware em qualquer lugar!</h2>
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
						<p> O monitoramento é necessário para que você possa ser alertado a tempo, isso permitirá que você redistribua a carga entre os componentes antes que os servidores se engarrafem ou caiam. 
                            Nosso software monitora componentes como CPU, HD, memória RAM e rede, e o acesso às informações de monitoramento é compatível com diversos dispositivos</p>
					</div>
				</article>
				<!-- serviço 2 -->
				<article class="servico">
					<img src="img/analytics.jpg" alt="Analytics" />
					<div class="inner"> 
						<a> Analytics </a>
						<p> Você pode não saber, mas a relação entre o tempo gasto em ações práticas e na análise de dados pode ser uma grande questão para o seu negócio. 
                            Fornecemos um painel interativo e integrado com o PowerBI da Microsoft onde você pode ter uma visão geral do histórico do seu monitoramento e traçar estratégias 
                            para melhorar o uso do seu hardware e melhorar os custos para o seu negócio. </p>
					</div>
				</article>
				<!-- serviço 3 -->
				<article class="servico">
					<img src="img/suporte.jpg" alt="Suporte" />
					<div class="inner"> 
						<a> Suporte </a>
						<p> Oferecemos suporte para seus problemas com a aplicação e uso do hardware com analistas capacitados que prestam atendimento rápido e eficaz. 
                            Os chamados podem ser abertos através de e-mails e mensagem em nosso site. 
                            Nosso horário de atendimento inicialmente é em horário comercial, podendo haver alterações de acordo com a necessidade do cliente. </p>
					</div>
				</article>
			</main>

			<div id="sobre">			
				<div class="historia">
					<h1>Como tudo começou...</h1>
						<p> A Mainline é uma empresa de pequeno porte criada em 2018 por quatro estudantes do curso de análise e desenvolvimento de sistemas. 
                            Analisando o mercado, encontramos uma grande oportunidade de unir monitoramento de hardware de qualidade ao ramo de transporte metroviário,
                            prevendo e solucionando problemas que possam impactar o transporte de passageiros. 
                            Você pode conhecer nossa equipe abaixo: </p>
					</div>			
				<img class="logot" src="img/mbranco_transparente.png" width="400px" height="400px"/>
					
	
			</div>
		
			<div id="colaboradores">
					
					<div class="eu">
						<img src="img/eu.jpg"/>
						<h1>Jéssica Santos</h1>
						<p> Scrum Master/ Desenvolvimento </p>
						<div class="contatos">
								<a href="https://www.linkedin.com/in/j%C3%A9ssica-santos-44a53a121/" target="_blank"><img src="img/linkedin.png" width="50px" height="50px" /></a>
								<a href="https://github.com/JSantosss" target="_blank"><img src="img/github.png" width="50px" height="50px" /></a>
							</div>
					</div>
					<div class="prince">
						<img src="img/prince.jpg"/>
						<h1>Gustavo Prince</h1>
						<p> Product Owner/ Desenvolvimento</p>
						<div class="contatos">
								<a href="https://www.linkedin.com/in/gustavo-prince-335269144/" target="_blank"><img src="img/linkedin.png" width="50px" height="50px" /></a>
								<a href="https://github.com/Gprince00" target="_blank"><img src="img/github.png" width="50px" height="50px" /></a>
							</div>
					</div>
					<div class="wesley">
						<img src="img/wesley.jpg"/>
						<h1>Wesley Marques</h1>
						<p>Desenvolvimento</p>
						<div class="contatos">
								<a href="#" target="_blank"><img src="img/linkedin.png" width="50px" height="50px" /></a>
								<a href="https://github.com/wesley49" target="_blank"><img src="img/github.png" width="50px" height="50px" /></a>
							</div>
					</div>
					<div class="natanael">
						<img src="img/natal.jpg"/>
						<h1>Natanael Weslley</h1>
						<p>Desenvolvimento</p>
						<div class="contatos">
								<a href="https://www.linkedin.com/in/natanael-weslley-0854aa150/" target="_blank"><img src="img/linkedin.png" width="50px" height="50px" /></a>
								<a href="https://github.com/NatalNW/" target="_blank"><img src="img/github.png" width="50px" height="50px" /></a>
							</div>
					</div>
				</div>

	
		<!-- fim da navegação dos serviços -->
		<footer class="rodape">
		<div class="social-icons">
			<a href="https://www.facebook.com/mainlinemonitoramento/" target="_blank"><i class="fa fa-facebook" target="_blank"></i></a>
			<a href="https://twitter.com/MainlineMonito1" target="_blank"><i class="fa fa-twitter"></i></a>
			<a href="https://www.instagram.com/mainlinemonitoramento/" target="_blank"><i class="fa fa-instagram"></i></a>
            <a href="mailto:mainline2018@hotmail.com"><i class="fa fa-envelope"></i></a>
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
