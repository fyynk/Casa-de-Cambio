using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

namespace Casa_de_Cambio
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            #region DROPDOWN LIST
            if (!IsPostBack)
            {
                ddwMoeda1.Items.Add(new ListItem("-", "-1"));
                ddwMoeda1.Items.Add(new ListItem("Dolar", "1"));
                ddwMoeda1.Items.Add(new ListItem("Real", "2"));
                ddwMoeda1.Items.Add(new ListItem("Peso Argentino", "3"));

                ddwMoeda2.Items.Add(new ListItem("-", "-1"));
                ddwMoeda2.Items.Add(new ListItem("Dolar", "1"));
                ddwMoeda2.Items.Add(new ListItem("Real", "2"));
                ddwMoeda2.Items.Add(new ListItem("Peso Argentino", "3"));
            }
            #endregion
        }
        #region LABEL MOEDA
        protected void ddwMoeda1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddwMoeda1.SelectedIndex == 1)
            {
                lblValor1.Text = "Dolar($)";
                return;
            }
            if (ddwMoeda1.SelectedIndex == 2)
            {
                lblValor1.Text = "Real(R$)";
                return;
            }
            if (ddwMoeda1.SelectedIndex == 3)
            {
                lblValor1.Text = "Peso Argentino($ARS)";
                return;
            }
          
        }

        protected void ddwMoeda2_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        #endregion

        #region VARIAVEIS
        protected void btnConverter_Click(object sender, EventArgs e)
        {
            double valor1 = 0.0, valor2 = 0.0, valorCotacao = 0.0, valorConvertido = 0.0;
        #endregion

            #region VERIFICAÇÃO DE EXISTENCIA
            txtValor1.Text = txtValor1.Text.Replace("-", "");
            txtValor1.Text = txtValor1.Text.Trim();

            //if(txtValor1.Text == "") // caso o textbox esteja vazio
            //{
            //    lblResultado.Text = "Campo vazio!, por favor digitar valor para conversão.";
            //    txtValor1.Focus();
            //    return;
            //}


            //Modificação do Ivan p/ ser mais expecífico com as boxes ao usuário. 01
            // Usuário não escreve nada
            if (txtValor1.Text == "" && ddwMoeda1.SelectedValue == "-1" && ddwMoeda2.SelectedValue == "-1")
            {
                lblResultado.Text = "Todas as caixas do conversor estão vazias, preencha-as!";
                return;
            }
            //Modificação do Ivan p/ ser mais expecífico com as boxes ao usuário. 02
            // Usuário não põe primeiro valor
            if (ddwMoeda1.SelectedValue == "-1" && ddwMoeda2.SelectedValue == "1" || ddwMoeda1.SelectedValue == "-1" && ddwMoeda2.SelectedValue == "2" || ddwMoeda1.SelectedValue == "-1" && ddwMoeda2.SelectedValue == "3" )
            {
                lblResultado.Text = "Primeiro valor vazio, favor preenchê-lo.";
                return;
            }
            //Modificação do Ivan p/ ser mais expecífico com as boxes ao usuário. 03
            //Usuário não põe o segundo valor
            if (ddwMoeda2.SelectedValue == "-1" && ddwMoeda1.SelectedValue == "1" || ddwMoeda2.SelectedValue == "-1" && ddwMoeda1.SelectedValue == "2" || ddwMoeda2.SelectedValue == "-1" && ddwMoeda1.SelectedValue == "3")
            {
                lblResultado.Text = "Segundo valor vazio, favor preenchê-lo.";
                return;
            }
            //Modificação do Ivan p/ ser mais expecífico com as boxes ao usuário. 04
            //Nenhum valor de cédula é preenchido
            if (ddwMoeda1.SelectedValue == "-1" && ddwMoeda2.SelectedValue == "-1")
            {
                lblResultado.Text = "Caixas das cédulas vázias, favor preenche-las!";
                return;

            }
            //Modificação do Ivan p/ ser mais expecífico com as boxes ao usuário. 05
            // Moedas iguais
            if (ddwMoeda1.SelectedValue == "1" && ddwMoeda2.SelectedValue == "1" || ddwMoeda1.SelectedValue == "2" && ddwMoeda2.SelectedValue == "2" || ddwMoeda1.SelectedValue == "3" && ddwMoeda2.SelectedValue == "3")
            {
                lblResultado.Text = "Mesma cédula nas duas caixas, conversão não será possível!";
                return;
            }

            //Modificação do Ivan p/ ser mais expecífico com as boxes ao usuário. 06
            // VUsuário esquece que precisa converter alguma coisa
            if (txtValor1.Text == "")
            {
                lblResultado.Text = "O campo onde se insere o valor desejado está vazio!";
                txtValor1.Focus();
                return;
            }


            //if (ddwMoeda1.SelectedValue == "-1" || ddwMoeda2.SelectedValue == "-1") // caso algum dos dropdown este com o campo vazio
            //{
            //    lblResultado.Text = "Selecionar alguma moeda para conversão.";
            //    return;
            //}

            try // para ver se é um valor numérico
            {
                valor1 = double.Parse(txtValor1.Text);
            }
            catch 
            {
                lblResultado.Text = "Digite somente carácteres númericos!";
                return;
            }
	
		// caso a lista esteja com a mesma moeda
            if (ddwMoeda1.SelectedValue == "1" && ddwMoeda2.SelectedValue == "1")
            {
                lblResultado.Text = "Moedas estão iguais, troque!!!";
                return;
            }
            else if (ddwMoeda1.SelectedValue == "2" && ddwMoeda2.SelectedValue == "2")
            {
                lblResultado.Text = "Moedas estão iguais, troque!!";
                return;
            }
            else if (ddwMoeda1.SelectedValue == "3" && ddwMoeda2.SelectedValue == "3")
            {
                lblResultado.Text = "Moedas estão iguais, troque!!";
                return;
            }
            #endregion

            #region CONVERSÃO DE MOEDAS
            if (ddwMoeda1.SelectedValue == "1" && ddwMoeda2.SelectedValue == "2") // Conversão de Dolar p/ Real.
            {
                valorCotacao = 3.7549;
                valorConvertido = valor1 * valorCotacao;
                var regiao = new CultureInfo("pt-BR");
                lblResultado.Text = string.Format( regiao, "{0:C}", valorConvertido);
                return;
            }

            if (ddwMoeda1.SelectedValue == "1" && ddwMoeda2.SelectedValue == "3") // conversão de Dolar p/ Peso Argentino
            {
                valorCotacao = 36.73;
                valorConvertido = valor1 * valorCotacao;
                var regiao = new CultureInfo("es-AR");
                lblResultado.Text = string.Format(regiao,"{0:C}", valorConvertido);
                return;
            }
            if (ddwMoeda1.SelectedValue == "2" && ddwMoeda2.SelectedValue == "1") // Real p/ Dolar
            {
                valorCotacao = 0.27;
                valorConvertido = valor1 * valorCotacao;
                var regiao = new CultureInfo("en-US");
                lblResultado.Text = string.Format(regiao, "{0:C}", valorConvertido);
                return;                
            }
            if (ddwMoeda1.SelectedValue == "2" && ddwMoeda2.SelectedValue == "3") // Real p/ Peso Argentino
            {
                valorCotacao = 9.94;
                valorConvertido = valor1 * valorCotacao;
                var regiao = new CultureInfo("en-US");
                lblResultado.Text = string.Format(regiao, "{0:C}", valorConvertido);
                return;
            }

            if (ddwMoeda1.SelectedValue == "3" && ddwMoeda2.SelectedValue == "1") // Peso Argentino p/ Dolar
            {
                valorCotacao = 0.028;
                valorConvertido = valor1 * valorCotacao;
                var regiao = new CultureInfo("en-US");
                lblResultado.Text = string.Format(regiao, "{0:C}", valorConvertido);
                return;
            }

            if (ddwMoeda1.SelectedValue == "3" && ddwMoeda2.SelectedValue == "2") // Peso Argentino p/Real
            {
                valorCotacao = 0.11;
                valorConvertido = valor1 * valorCotacao;
                var regiao = new CultureInfo("pt-BR");
                lblResultado.Text = string.Format(regiao, "{0:C}", valorConvertido);
                return;
            }
        #endregion
        } 
    }
}