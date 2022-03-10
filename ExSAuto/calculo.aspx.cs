using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExSAuto
{
    public partial class calculo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox78_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            float valor, juros;
        
            valor = float.Parse(TextBox78.Text);
            juros = float.Parse(TextBox79.Text) * valor / 100;


            Label1.Text = "Valor Final: " + valor;
            Label2.Text = "Valor do Juro: " + juros;
            
            



        }
    }
}