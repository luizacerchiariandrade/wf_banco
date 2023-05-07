using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waConhecendoComponentes
{
    public partial class ParImparReserva : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void clickLista(object sender, BulletedListEventArgs e)
        {
            pnParOuImpar.Visible = false;
            pnFatorial.Visible = false;
            switch (e.Index)
            {
                case 0:
                    pnParOuImpar.Visible = true;
                    break;
                case 1:
                    pnFatorial.Visible = true;
                    break;
            }

        }

        protected void btnValor1_Click(object sender, EventArgs e)
        {
            string txt = "O numero é par";
            int n = Convert.ToInt32(txtValorPn1.Text);

            if (n % 2 != 0)
            {
                txt = "o valor é impar";
            }
            LResp1.Text = txt;

        }


        protected void btnValor2_Click(object sender, EventArgs e)
        {
            string txt2 = "é fatorial";
            int p = Convert.ToInt32(txtValorPn2.Text);


            if (p % 2 != 0)
            {
                txt2 = "não é fatorial";
            }
            LResp2.Text = txt2;

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            pnParOuImpar.Visible = false;
            pnFatorial.Visible = false;
            if (RadioButtonList1.SelectedIndex == 0)
            {
                pnParOuImpar.Visible = true;
            }
            else if (RadioButtonList1.SelectedIndex == 1)
            {
                pnFatorial.Visible = true;
            }
        }

        protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rdList.SelectedIndex == 0)
            {
                pnParOuImpar.Visible = true;
            } else
            {
                pnFatorial.Visible = true;
            }
        }
    }
}