<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login2.aspx.cs" Inherits="Mainlinee.Login2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=divice-width, intial-scale=1"/>
	<title> Login | Mainline </title>
	<link rel="icon" href="img/M_transparente.png"/>
	<link rel="stylesheet" type="text/css" href="css/login2.css"/>
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300" rel="stylesheet" type='text/css'/>	
	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.js"></script>
</head>
<body>
    <header class="cabecalho">
            <a href="Default.aspx"><h1 class="logo"> Mainline - Monitoramento de Hardware. </h1></a>
            <button class="btn-menu"><i class="fa fa-bars fa lg"></i></button>
            <nav class="menu">
                <a class="btn-close"><i class="fa fa-times"></i></a> 
                <ul>
                    <li><a href="Default.aspx">Início</a></li>
                </ul>
            </nav>
        </header>

    <form id="form1" runat="server">
        <div class="login">
            <div class="login-campos">
                <h2>E-mail</h2>
                <asp:TextBox runat="server" CssClass="input" TextMode="Email" placeholder="Ex: mainline@gmail.com" ID="txtEmail" required/>
                <h2>Senha</h2>
                <asp:TextBox runat="server" CssClass="input" TextMode="Password" placeholder="Digite sua senha de cadastro" ID="txtSenha" required/>
                <img src="img/olho.png" height="42" width="42" onclick=" mostrarSenhaL();" style="cursor: pointer;">
            </div>
            <asp:Button Text="Login" CssClass="logar" ID="btnLogar" OnClick="btnLogar_Click" runat="server" />
            <div class="cadastrolink"><h1>Não possui uma conta?</h1><a href="Cadastro.aspx">Cadastre-se</a></div>
        </div>
    </form>
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
</body>
</html>
<script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
<script src="js/jquery.maskedinput.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/textBoxEbtn.js"></script>
