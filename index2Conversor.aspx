<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index2Conversor.aspx.cs" Inherits="Casa_de_Cambio.index" %>

<!DOCTYPE html>

<html>
<head runat="server">
<meta charset="utf-8">
	<html lang="pt-BR"> 
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Enriqueta' rel='stylesheet'>
    <link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link href="css/EstiloMaster2.css" type="text/css" rel="Stylesheet">
    <script src="http://threejs.org/examples/js/libs/stats.min.js"></script>
    <title>Casa de Cambio - Conversão de Moedas</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="imagemtal"></div>
        <header>
			<div class="Simbolo"></div>
		   <div id="botoes">
			 <a class="btn" href="index1.aspx"><i class="fas fa-book-open"></i> SOBRE</a>
			 <a class="btn" href="Index3Contato.aspx"><i class="far fa-envelope-open"></i> CONTATO</a>
              <a id="PaginaAtual" class="btn" href="index2Conversor.aspx"><i class="far fa-money-bill-alt"></i> CONVERSOR</a>
		   </div>
		</header>
       <div class="Conversor"> 

    <div class="areaCedula">
                           <div class="caixatxtTable">
                            <p class="txtTable">Conversão automática de Moedas</p>
                            <p class="txtTable2">Converta valores baseados nas moedas a seguir:</p>
                            <br />
                           </div>
        <td><asp:DropDownList ID="ddwMoeda1" runat="server" 
            onselectedindexchanged="ddwMoeda1_SelectedIndexChanged" 
            AutoPostBack="True">
        </asp:DropDownList></td>
        <td><asp:Label ID="lblCedula" runat="server" Text="Converter Para"></asp:Label></td>
        <td><asp:DropDownList ID="ddwMoeda2" runat="server" AutoPostBack="True" 
            onselectedindexchanged="ddwMoeda2_SelectedIndexChanged">
        </asp:DropDownList>
        </td>
        <br /><br />
            <asp:Label ID="lblValor1" runat="server" Text="Dolares(USD)"></asp:Label>
            <asp:TextBox ID="txtValor1" runat="server"></asp:TextBox>
            <asp:Button ID="btnConverter" runat="server" Text="Converter" 
            onclick="btnConverter_Click" /><br />
        <asp:Label ID="lblResultado" runat="server" Text=""></asp:Label>
    </div>
    </div>

    	 <footer>
	 	<p id="paragrafoFooter">Ivan Guimarães RM:32503<br>Yan Kairalla RM:32578<br> João Pedro RM:33395
	 		<br>  2018&copy;
	 	</p>
	 </footer>
    </form>
</body>
</html>
