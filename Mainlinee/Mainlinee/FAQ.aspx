<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="Mainlinee.FAQ" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
	<meta name="description" content="Empresa especializada em monitoramento de hardware, analytics e suporte."/>
	<meta name="keywords" content="Monitoramento, Hardware, Suporte, Analytics."/>
	<meta name="robots" content="index, follow"/>
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300" rel="stylesheet" type='text/css'/>
	<link rel="icon" href="img/icon.png"/>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/reset.css"/> <!-- CSS reset -->
	<link rel="stylesheet" href="css/style.css"/> <!-- Resource style -->
	<script src="js/modernizr.js"></script> <!-- Modernizr -->
	<title> FAQ | Mainline</title>
</head>
<body>
    

    <form id="form1" runat="server">
        <header>
	    <asp:Button class="btn-voltar" onclick="voltar" runat="server" Text="Voltar"/>
	    <p>Perguntas Frequentes</p>
    </header>
    </form>

    <section class="cd-faq">
	<ul class="cd-faq-categories">
		<li><a class="selected" href="#basics">Conta</a></li>
		<li><a href="#mobile">Monitoramento</a></li>
		<li><a href="#account">Analytics</a></li>
		<li><a href="#payments">Suporte</a></li>
	</ul> <!-- cd-faq-categories -->

	<div class="cd-faq-items">
		<ul id="basics" class="cd-faq-group">
			<li class="cd-faq-title"><h2>Conta</h2></li>
			<li>
				<a class="cd-faq-trigger" href="#0">Esqueci minha senha ou quero trocá-la, como proceder?</a>
				<div class="cd-faq-content">
					<p>Neste caso você deverá entrar em contato com o suporte para recuperarmos ou alterarmos a sua senha.</p>
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">Esqueci o e-mail cadastrado.</a>
				<div class="cd-faq-content">
					<p>Neste caso você deverá entrar em contato com o suporte para recuperarmos ou alterarmos a sua senha.</p>
				</div> <!-- cd-faq-content -->
			</li>
		</ul> <!-- cd-faq-group -->

		<ul id="mobile" class="cd-faq-group">
			<li class="cd-faq-title"><h2>Monitoramento</h2></li>
			<li>
				<a class="cd-faq-trigger" href="#0">Recebi um alerta que meu componente de hardware está no seu limite de uso, o que eu faço?</a>
				<div class="cd-faq-content">
					<p>Entre em contato com o suporte ou se preferir entre em contato com um técnico de 
                        confiança para realizar o procedimento necessário para estabilizar o uso. </p>
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">Não estou recebendo informações de monitoramento.</a>
				<div class="cd-faq-content">
					<p>Entre em contato com o suporte informando o nome da máquina para verificarmos o que está ocorrendo.</p>
				</div> <!-- cd-faq-content -->
			</li>
		</ul> <!-- cd-faq-group -->

		<ul id="account" class="cd-faq-group">
			<li class="cd-faq-title"><h2>Analytics</h2></li>
			<li>
				<a class="cd-faq-trigger" href="#0">Minha dashboard está em branco.</a>
				<div class="cd-faq-content">
					<p>Entre em contato com o suporte para verificarmos o que está ocorrendo.</p>
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">Minha dashboard não está atualizada.</a>
				<div class="cd-faq-content">
					<p>Entre em contato com o suporte para verificarmos o que está ocorrendo.</p>
				</div> <!-- cd-faq-content -->

			</li>
		</ul> <!-- cd-faq-group -->

		<ul id="payments" class="cd-faq-group">
			<li class="cd-faq-title"><h2>Suporte</h2></li>
			<li>
				<a class="cd-faq-trigger" href="#0">Qual o horário de atendimento do suporte?</a>
				<div class="cd-faq-content">
					<p>O horário de atendimento é comercial, das 08:00 as 18:00.</p>
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">Tenho interesse em ter o suporte dedicado, como faço?</a>
				<div class="cd-faq-content">
					<p>Entre em contato através do e-mail para avaliarmos a possibilidade.</p>
				</div> <!-- cd-faq-content -->
			</li>
		</ul> <!-- cd-faq-group -->

		

		
	</div> <!-- cd-faq-items -->
	<a href="#0" class="cd-close-panel">Close</a>
</section> <!-- cd-faq -->
<script src="js/jquery-2.1.1.js"></script>
<script src="js/jquery.mobile.custom.min.js"></script>
<script src="js/main.js"></script> <!-- Resource jQuery -->
</body>
</html>
