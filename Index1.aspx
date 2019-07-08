<%@ Page Title="" Language="C#" MasterPageFile="~/EstiloMaster1.Master" AutoEventWireup="true" CodeBehind="Index1.aspx.cs" Inherits="Casa_de_Cambio.Index1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	 <section>
		<header>
			<div class="Simbolo"></div>
		   <div id="botoes">
			 <a id="PaginaAtual" class="btn" href="Index1.aspx"><i class="fas fa-book-open"></i> SOBRE</a>
			 <a class="btn" href="Index3Contato.aspx"><i class="far fa-envelope-open"></i> CONTATO</a>
		   </div>
		</header>
		<div class="imagemFundo">
			<div class="fraseFlutuante">
			    <div id="ImagemVertical">Entre em contato conosco em</div>
			      <div id="redesSociais1">
				    <a href="https://br.linkedin.com/" target="_blank"><i class="fab fa-linkedin-in"></i></a>
				    <a href="https://github.com/" target="_blank"><i class="fab fa-github-square"></i></a>
			      </div>	
			 </div>
			<div id="ConteudoMeio">
				<div class="caixaTextomeio">
					<p class="txtmeio">Converta suas moedas agora no nosso conversor oficial do nosso site!</p>
					<p class="txtmeio B">Apenas clique abaixo:</p>
				    <div class="caixaBotao">
					  <a class="btnConversor" href="index2Conversor.aspx">CONVERSOR <i class="fas fa-caret-right"></i></a>
				    </div>
				</div>
			</div>
		</div>
		<div class="separador">
			<h1 id="conteudo">Conteúdo da Página</h1>
			<p id="conteudoComent">
				O conteúdo a seguir será a respeito do próprio site, assuntos com membros do grupo e conceitos que usamos,<br> resumindo, sobre o site em si.
			</p>
		</div>
		<div class="ConstrucaoSite fl">
			<h2 class="tituloconstruSite">Como vou saber qual casa de câmbio tem a melhor cotação?
</h2>
			<p class="paragrafoSite">
				Para saber qual casa de câmbio tem a melhor cotação de sua cidade é simples: acesse o MelhorCâmbio.com, selecione a moeda que você deseja comprar e informe a cidade onde a compra será realizada. Em poucos segundos você tem acesso às cotações das principais casas de câmbio de sua cidade.
                </p>
		</div>
		<div class="ImagemdoLado"></div>
		<div class="ImagemdoLado2"></div>
		<div class="ConstrucaoSite2 fl">
		<h2 class="tituloconstruSite">Por que existe uma variação da cotação entre casas de câmbio?</h2>
			<p class="paragrafoSite">
				No Brasil, o câmbio não é fixado pelo governo. O valor divulgado pelo Banco Central é a taxa média das operações realizadas no mercado financeiro (PTAX) e serve apenas como referência, não como taxa obrigatória. Por isso, as taxas de câmbio são livremente negociadas entre clientes e casas de câmbio.
			</p>	
		</div>
		<div class="QuadradoLado"></div>

		<div class="UltimaImagem"></div>
		<div class="ConstrucaoSite4 fl">
			<h2 class="tituloconstruSite">Como funciona o sistema de ofertas do Converta Money?</h2>
			<p class="paragrafoSite">
				Na página onde estão listadas as cotações, há um espaço para fazer uma oferta. Informe o valor que deseja pagar e seus dados de contato. O MelhorCâmbio irá anunciar sua oferta para as casas de câmbio parceiras e se alguma delas aceitar sua oferta, você será avisado por email e terá 2h para finalizar compra.
			</p>
		</div>		
	 </section>
</asp:Content>
