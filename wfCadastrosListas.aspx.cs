using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waConhecendoComponentes
{
    public partial class wfComponents1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btInserir_Click(object sender, EventArgs e)
        {
            ListItem item = new ListItem(txtSite.Text,txtEndereco.Text);
            dpDownList.Items.Add(item);
            lstboxEndereco.Items.Add(item);
            txtEndereco.Text = "";
            txtSite.Text = "";
        }

        protected void btSelecionar_Click(object sender, EventArgs e)
        {

            dpDownList.Items.Clear();
            foreach (ListItem item in lstboxEndereco.Items)
            {
                if (item.Selected)
                {
                    dpDownList.Items.Add(item);
                }
            }
            /*
            ListItem sitesDoListEndereco;
            for (int i =0; i < lstboxEndereco.Items.Count; i++)
            {
                sitesDoListEndereco = lstboxEndereco.Items[i];
                if (sitesDoListEndereco.Selected)
                {
                    sitesDoListEndereco.Selected = False;
                    dpDownList.Items.Add(sitesDoListEndereco);
                }
            }*/
        }
    }
}