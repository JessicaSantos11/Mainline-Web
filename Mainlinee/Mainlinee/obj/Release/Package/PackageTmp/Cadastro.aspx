<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="Mainlinee.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta name="viewport" content="width=divice-width, intial-scale=1"/>
	<title>Cadastre-se | Mainline</title>
	<link rel="icon" href="img/M_transparente.png"/>
	<link rel="stylesheet" type="text/css" href="css/cadastro.css"/>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300" rel="stylesheet" type='text/css'/>
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.js"></script>
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
					<li><a href="Default.aspx">Início</a></li>
                    <li><a href="login2.aspx">Login</a></li>
				</ul>
			</nav>
		</header>

    <form id="form1" runat="server">
        <div class="fundo">
		<div class="ctd">
			<h2>Nome</h2>
            <asp:TextBox CssClass="input" ID="txtnome" runat="server" placeholder="Ex: Alan da Silva" required></asp:TextBox>
			<h2>Telefone celular</h2>
             <asp:TextBox CssClass="input" ID="txttelefone" runat="server" placeholder="Ex: (99) 99999-9999" MaxLength="15" required></asp:TextBox>
             <h2>Nível de usuário</h2>
                <asp:DropDownList CssClass="input" runat="server" ID="isADM" required>
                    <asp:ListItem Value=null Text="-- Selecione seu nível --" />
                    <asp:ListItem Value=1 Text="ADM" />
                    <asp:ListItem Value=0 Text="NOC" />
                </asp:DropDownList>
            <h2>E-mail</h2>
            <asp:TextBox CssClass="input" ID="txtemail" TextMode="Email" runat="server" placeholder="Ex: mainline@gmail.com" required></asp:TextBox>
			<h2>Senha</h2>
            <asp:TextBox CssClass="input" type="password" ID="txtSenha" runat="server" placeholder="Digite uma senha segura" required></asp:TextBox>
            <h2>Confirmar Senha</h2>
            <asp:TextBox CssClass="input" ID="txtconfSenha" TextMode="Password" runat="server" placeholder="Confirme sua senha" required></asp:TextBox>
            <img src="img/olho.png" height="42" width="42" onclick=" mostrarSenha();" style="cursor: pointer;">
        </div>
		<!--<button class="cadastrar"> Cadastrar <i class="fa fa-arrow-circle-right"></i></button>-->
            <asp:Button Text="Cadastrar" CssClass="cadastrar" ID="btn_cadastrar" OnClick="btn_cadastrar_Click" runat="server"  />
	</div>
    </form>
</body>
</html>
 <script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
<script src="js/jquery.maskedinput.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/textBoxEbtn.js"></script>
