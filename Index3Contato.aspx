<%@ Page Title="" Language="C#" MasterPageFile="~/EstiloMaster4.Master" AutoEventWireup="true" CodeBehind="Index3Contato.aspx.cs" Inherits="Casa_de_Cambio.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="ImagemContato" style="
    background-image: url(../Imagens/wallpaper_cidade3.jpg);
    height: 844px;
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
">
                    <table>
						<tr>
							<td>
                            <div class="caixatxtTable">
                            <p class="txtTable">Insira comentários ou críticas no formulário abaixo:</p>
                            <p class="txtTable2">Fique a vontade para comentar.</p>
                            <br />
                            </div>
								<input class="dado" type="text" name="placeholder" size="55%" placeholder="  Insira seu nome"></td>
							</tr>
							<tr>
							<td>
								<input class="dado" type="Email" name="placeholder" placeholder="  yan.carlos@gmail.com.br" size="55%"></td>
							</tr>
							<tr>
								<td>
									<textarea class="txtbox" style="resize: none;" name="area" placeholder=" Digite aqui"
									cols="54" rows="13"></textarea>
								</td>
							</tr>
								<tr>
									<td>
                                    <a class="btn1" href="Index3Contato.aspx">Enviar <i class="fas fa-envelope"></i></a>
                                    <!--<p class="txtcopy"> Copyright &copy; 2018</p>
							<input class="btn1" type="button" name="button" value="Enviar"> -->
							</td></tr>
				   </table>
                   </div>
</asp:Content>
