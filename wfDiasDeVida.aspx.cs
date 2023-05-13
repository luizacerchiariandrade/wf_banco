using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waConhecendoComponentes
{
    public partial class wfDiasDeVida : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           Calendar2.SelectedDate = DateTime.Now;
            lbResultado.Text = "Calcule";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //dia o mes 0 e ano 0
            int dian = 0, anon = 0, mesn = 0;
            int diaa = 0, anoa = 0, mesa = 0;

            //
            lbResultado.Text = Calendar2.SelectedDate.Date.ToString();
            dian = Calendar1.SelectedDate.Day;
            anon = Calendar1.SelectedDate.Month*30;
            mesn = Calendar1.SelectedDate.Year*365;

            diaa = Calendar2.SelectedDate.Day;
            anoa = Calendar2.SelectedDate.Month*30;
            mesa = Calendar2.SelectedDate.Year*365;

            // cada elemento anoa e etc sao um numero

            // total subtrai 
            int total = (diaa + mesa + anoa) - (dian + mesn + anon);
            
            lbResultado.Text = "Dias de vida: " + total.ToString();
        }
    }
}